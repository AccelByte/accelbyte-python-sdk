import json
import os
import uuid

from abc import ABC, abstractmethod
from typing import Any, List, Optional, Tuple

import accelbyte_py_sdk
import accelbyte_py_sdk.core
import accelbyte_py_sdk.services.auth as auth_service
import accelbyte_py_sdk.api.iam.models as iam_models
import accelbyte_py_sdk.api.lobby as lobby_service
import accelbyte_py_sdk.api.lobby.models as lobby_models

from accelbyte_py_sdk.core import StrEnum

BASE_URL_KEY: str = "AB_BASE_URL"
CLIENT_ID_KEY: str = "AB_CLIENT_ID"
CLIENT_SECRET_KEY: str = "AB_CLIENT_SECRET"
REDIS_HOST_KEY: str = "REDIS_HOST"
REDIS_PORT_KEY: str = "REDIS_PORT"


def lambda_handler(event, context):
    """Tic Tac Toe Lambda function

    Parameters
    ----------
    event: dict, required
        API Gateway Lambda Proxy Input Format

        Event doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html#api-gateway-simple-proxy-for-lambda-input-format

    context: object, required
        Lambda Context runtime methods and attributes

        Context doc: https://docs.aws.amazon.com/lambda/latest/dg/python-context-object.html

    Returns
    ------
    API Gateway Lambda Proxy Output Format: dict

        Return doc: https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-lambda-proxy-integrations.html
    """
    # 01. Create Redis Client.
    redis_client = create_redis_client(
        os.environ[REDIS_HOST_KEY], os.environ[REDIS_PORT_KEY]
    )
    log_done(
        f"create redis client ({redact(f'{os.environ[REDIS_HOST_KEY]}:{os.environ[REDIS_PORT_KEY]}')})"
    )

    # 02. Extract the Bearer Auth Token from the Authorization header.
    authorization = str(event.get("headers", {}).get("Authorization"))
    bearer_auth_token, error = extract_bearer_auth_token(authorization)
    if error:
        return error
    log_done("extract player bearer auth token")

    # 03. Convert Bearer Auth Token into an OAuth Token object.
    web_token, error = convert_bearer_auth_token_to_web_token(bearer_auth_token)
    if error:
        return error
    oauth_token = iam_models.OauthmodelTokenResponseV3.create_from_dict(
        web_token, include_empty=True
    )
    log_done("convert player bearer auth token")

    # 04. Create Config Repository.
    config_repo = accelbyte_py_sdk.core.MyConfigRepository(
        base_url=os.environ[BASE_URL_KEY].removesuffix("/iam"),
        client_id=os.environ[CLIENT_ID_KEY],
        client_secret=os.environ[CLIENT_SECRET_KEY],
    )

    # 05. Create and initialize the AccelByte Python SDK (Player).
    player_token_repo = accelbyte_py_sdk.core.InMemoryTokenRepository()
    player_sdk = accelbyte_py_sdk.AccelByteSDK()
    player_sdk.initialize(
        options={
            "config": config_repo,
            "token": player_token_repo,
        }
    )

    # 06. Store extracted and converted OAuth token object.
    player_token_repo.store_token(oauth_token)
    if issued_at := web_token.get("issued_at"):
        player_token_repo._token_issued_time = issued_at
    log_done("store player AccelByte token")

    # 07. Create and initialize the AccelByte Python SDK (Client).
    client_token_repo = accelbyte_py_sdk.core.InMemoryTokenRepository()
    client_sdk = accelbyte_py_sdk.AccelByteSDK()
    client_sdk.initialize(
        options={
            "config": config_repo,
            "token": client_token_repo,
        }
    )

    # 08. Login client.
    client_token, error = auth_service.login_client(sdk=client_sdk)
    if error:
        return create_response(401, error)
    log_done("grant client AccelByte token")

    # 09. Extract User Information from player AccelByte token.
    user_id = oauth_token.user_id
    user_namespace = oauth_token.namespace

    # 10. Route request.
    http_method = event.get("httpMethod")
    if http_method is None:
        return create_response(status_code=500, body="Unable to determine HTTP method.")

    proxy_path_param = event.get("pathParameters", {}).get("proxy")
    if proxy_path_param is None:
        return create_response(
            status_code=400, body="Failed to get path parameter: proxy"
        )

    query_params = event.get("queryStringParameters", {}) or {}

    body = event.get("body")

    extras = event.get("extras", {}) or {}
    override_user_id = extras.get("override_user_id")
    if override_user_id is not None:
        user_id = override_user_id

    http_method = http_method.casefold()
    proxy_path_param = proxy_path_param.casefold()

    if proxy_path_param == "match" and http_method == "post":
        return create_match(player_sdk, redis_client, user_id, user_namespace)
    if proxy_path_param == "matches" and http_method == "delete":
        return delete_matches(redis_client)
    elif proxy_path_param == "matches" and http_method == "get":
        return get_matches(redis_client, user_id)
    elif proxy_path_param == "move" and http_method == "post":
        game_id = query_params.get("game_id")
        if game_id is None:
            return create_response(
                status_code=400, body=f"Missing 'game_id' query parameter."
            )
        if isinstance(body, str):
            body = json.loads(body)
        return make_move(
            player_sdk, redis_client, user_id, user_namespace, game_id, body
        )
    else:
        return create_response(
            status_code=500,
            body=f"Invalid route: {http_method.upper()} Proxy('{proxy_path_param}')",
        )


def create_match(sdk, redis_client, user_id, user_namespace):
    from redis.exceptions import ConnectionError as RedisConnectionError

    match_prefix: str = "match:"

    try:
        for match_key in redis_client.scan_iter(match=f"{match_prefix}*"):
            match_value_str = redis_client.get(match_key)
            match_value_dict = json.loads(match_value_str)
            game = TicTacToe(**match_value_dict)

            # skip all games that's already finished
            if game.status == GameStatusEnum.FINISHED:
                continue

            # exit if there is already an existing pending/ongoing user's match
            if user_id in game.player_ids:
                return create_response(
                    status_code=400,
                    body={
                        "message": f"You already have an existing Match({game.id}).",
                        **match_value_dict,
                    },
                )

            # skip all games that's already ongoing
            if game.status == GameStatusEnum.ONGOING:
                continue

            # skip all games that already has 2 players, for redundancy
            if len(game.player_ids) == 2:
                continue

            # update match information
            game.player_ids.append(user_id)
            game.status = GameStatusEnum.ONGOING
            match_value_dict = game.to_dict()
            match_value_str = json.dumps(match_value_dict)
            redis_client.set(name=match_key, value=match_value_str)

            message = f"Found Match({game.id})."

            _, send_notif_1_err = send_free_form_notif(
                sdk=sdk,
                user_id=game.player_ids[0],
                user_namespace=user_namespace,
                message=message,
            )
            if send_notif_1_err:
                return send_notif_1_err

            _, send_notif_2_err = send_free_form_notif(
                sdk=sdk,
                user_id=game.player_ids[1],
                user_namespace=user_namespace,
                message=message,
            )
            if send_notif_2_err:
                return send_notif_2_err

            return create_response(
                status_code=200,
                body={
                    "message": message,
                    **match_value_dict,
                },
            )
        else:
            game = TicTacToe(player_ids=[user_id])

            match_key = f"{match_prefix}{game.id}"
            match_value_dict = game.to_dict()
            match_value_str = json.dumps(match_value_dict)

            redis_client.set(name=match_key, value=match_value_str)

            return create_response(
                status_code=200,
                body={
                    "message": f"No match found, created Match({game.id}).",
                    **match_value_dict,
                },
            )
    except RedisConnectionError:
        return create_response(
            status_code=500, body="Failed to connect to Redis server."
        )


def delete_matches(redis_client):
    from redis.exceptions import ConnectionError as RedisConnectionError

    try:
        redis_client.flushall()
        return create_response(
            status_code=200, body="Successfully deleted all matches."
        )
    except RedisConnectionError:
        return create_response(
            status_code=500, body="Failed to connect to Redis server."
        )


def get_matches(redis_client, user_id):
    from redis.exceptions import ConnectionError as RedisConnectionError

    match_prefix: str = "match:"

    try:
        matches = []
        for match_key in redis_client.scan_iter(match=f"{match_prefix}*"):
            match_value_str = redis_client.get(match_key)
            match_value_dict = json.loads(match_value_str)
            game = TicTacToe(**match_value_dict)

            if user_id not in game.player_ids:
                continue

            matches.append(match_value_dict)

        return create_response(
            status_code=200,
            body={
                "message": f"Found {len(matches)} matche(s).",
                "matches": matches,
            },
        )
    except RedisConnectionError:
        return create_response(
            status_code=500, body="Failed to connect to Redis server."
        )


def make_move(sdk, redis_client, user_id, user_namespace, game_id, move_body):
    from redis.exceptions import ConnectionError as RedisConnectionError

    match_prefix: str = "match:"
    match_key = f"{match_prefix}{game_id}"

    try:
        match_value_str = redis_client.get(match_key)
        if match_value_str is None:
            return create_response(
                status_code=400, body=f"Failed to find Match({game_id})."
            )

        match_value_dict = json.loads(match_value_str)
        game = TicTacToe(**match_value_dict)

        # update match information
        error = game.apply_move(
            Move(
                player_id=user_id,
                data=move_body,
            )
        )
        if error:
            return create_response(
                status_code=500,
                body={
                    "message": str(error),
                    **match_value_dict,
                },
            )

        match_value_dict = game.to_dict()
        match_value_str = json.dumps(match_value_dict)
        redis_client.set(name=match_key, value=match_value_str)

        if game.status == GameStatusEnum.FINISHED:
            message = f"Game ended."

            _, send_notif_1_err = send_free_form_notif(
                sdk=sdk,
                user_id=game.player_ids[0],
                user_namespace=user_namespace,
                message=message,
            )
            if send_notif_1_err:
                return send_notif_1_err

            _, send_notif_2_err = send_free_form_notif(
                sdk=sdk,
                user_id=game.player_ids[1],
                user_namespace=user_namespace,
                message=message,
            )
            if send_notif_2_err:
                return send_notif_2_err

        return create_response(status_code=200, body=str(game))
    except RedisConnectionError:
        return create_response(
            status_code=500, body="Failed to connect to Redis server."
        )


def send_free_form_notif(sdk, user_id, user_namespace, message):
    _, error = lobby_service.free_form_notification_by_user_id(
        body=lobby_models.ModelFreeFormNotificationRequest.create(
            message=message, topic="NOTIF"
        ),
        user_id=user_id,
        namespace=user_namespace,
        sdk=sdk,
    )
    if error:
        return None, create_response(
            status_code=500, body="Failed to send notif to user."
        )

    return None, None


# region classes


class GameStatusEnum(StrEnum):
    WAITING = "WAITING"
    ONGOING = "ONGOING"
    FINISHED = "FINISHED"


class GameError(Exception):
    def __str__(self):
        s = super().__str__()
        if not s.isspace() and s != "":
            s = f":{s}"
        return f"{self.__class__.__name__}{s}"


class GameNotYetReadyError(GameError):
    pass


class GameAlreadyFinishedError(GameError):
    pass


class MoveError(GameError):
    pass


class MoveInvalidDataError(MoveError):
    pass


class MoveInvalidNotYourTurnError(MoveError):
    pass


class MoveInvalidPlayerNotRegisteredError(MoveError):
    pass


class Move:
    def __init__(self, /, **kwargs):
        self.player_id: str = kwargs.get("player_id")
        self.data: Any = kwargs.get("data")


class Game(ABC):
    def __init__(self, /, **kwargs):
        self.id: str = kwargs.get("id", str(uuid.uuid4()))
        self.status: GameStatusEnum = kwargs.get("status", GameStatusEnum.WAITING)
        self.player_turn_index: int = kwargs.get("player_turn_index", 0)
        self.player_ids: List[str] = kwargs.get("player_ids", [])
        self.winner_id: Optional[str] = kwargs.get("winner_id", None)

    def apply_move(self, move: Move) -> Optional[GameError]:
        if self.status == GameStatusEnum.WAITING and not self.is_ready():
            return GameNotYetReadyError()

        if self.status == GameStatusEnum.FINISHED:
            return GameAlreadyFinishedError()

        error = self.check_move_validity(move=move)
        if error:
            return error

        self._apply_move(move=move)

        if self.check_win_conditions():
            return None

        self.next()

        return None

    def check_win_conditions(self) -> bool:
        return self._check_win_conditions()

    def check_move_validity(self, move: Move) -> Optional[MoveError]:
        player_index = self.get_player_index(move.player_id)
        if player_index is None:
            return MoveInvalidPlayerNotRegisteredError()

        if player_index != self.player_turn_index:
            return MoveInvalidNotYourTurnError()

        error = self._check_move_validity(move=move)
        if error:
            return error

        return None

    def get_player_index(self, player_id: str) -> Optional[int]:
        try:
            return self.player_ids.index(player_id)
        except ValueError:
            return None

    def next(self):
        self.player_turn_index += 1
        if self.player_turn_index == len(self.player_ids):
            self.player_turn_index = 0

    @abstractmethod
    def is_ready(self) -> bool:
        return True

    @abstractmethod
    def to_dict(self) -> dict:
        return {}

    @abstractmethod
    def _apply_move(self, move: Move) -> None:
        return

    @abstractmethod
    def _check_move_validity(self, move: Move) -> Optional[MoveError]:
        return None

    @abstractmethod
    def _check_win_conditions(self) -> bool:
        return False


class TicTacToe(Game):

    BLANK_SYMBOL: str = "_"
    P1_SYMBOL: str = "X"
    P2_SYMBOL: str = "O"
    GRID_SIZE: int = 3

    def __init__(self, /, **kwargs):
        super().__init__(**kwargs)

        self.board_state = kwargs.get(
            "board_state",
            [
                [TicTacToe.BLANK_SYMBOL for _ in range(TicTacToe.GRID_SIZE)]
                for _ in range(TicTacToe.GRID_SIZE)
            ],
        )

    def __str__(self):
        return f"{self.game_state_str()}\n\n{self.board_state_str()}"

    def is_ready(self):
        return len(self.player_ids) == 2

    def to_dict(self) -> dict:
        return {
            "id": self.id,
            "status": str(self.status),
            "player_turn_index": self.player_turn_index,
            "player_ids": self.player_ids,
            "board_state": self.board_state,
            "summary": str(self),
        }

    def _apply_move(self, move: Move):
        if self.status == GameStatusEnum.WAITING:
            self.status = GameStatusEnum.ONGOING

        player_index = self.get_player_index(move.player_id)
        if player_index is None:
            raise MoveInvalidPlayerNotRegisteredError()

        i = move.data.get("index")
        y, x = TicTacToe.convert_contiguous_cartesian_index(i)
        symbol = TicTacToe.get_player_symbol_from_index(player_index)

        self.board_state[y][x] = symbol

    def _check_move_validity(self, move: Move) -> Optional[MoveError]:
        if move.data is None or not isinstance(move.data, dict):
            return MoveInvalidDataError("data missing")

        if "index" not in move.data:
            return MoveInvalidDataError("'index' missing")

        i = move.data["index"]
        y, x = TicTacToe.convert_contiguous_cartesian_index(i)
        if not (0 <= x <= TicTacToe.GRID_SIZE):
            return MoveInvalidDataError("already occupied")
        if not (0 <= y <= TicTacToe.GRID_SIZE):
            return MoveInvalidDataError("out of range")

        if self.board_state[y][x] != TicTacToe.BLANK_SYMBOL:
            return MoveInvalidDataError("already occupied")

        return None

    def _check_win_conditions(self) -> bool:
        def __set_tied() -> None:
            self.status = GameStatusEnum.FINISHED
            self.winner_id = None

        def __set_winner(__player_index: int) -> None:
            self.status = GameStatusEnum.FINISHED
            self.winner_id = self.player_ids[__player_index]

        player_winner_index = TicTacToe.check_horizontals(self.board_state)
        if player_winner_index is not None:
            __set_winner(player_winner_index)
            return True

        player_winner_index = TicTacToe.check_horizontals(
            TicTacToe.transpose_board_state(self.board_state)
        )
        if player_winner_index is not None:
            __set_winner(player_winner_index)
            return True

        player_winner_index = TicTacToe.check_diagonals(self.board_state)
        if player_winner_index is not None:
            __set_winner(player_winner_index)
            return True

        if TicTacToe.check_fill(self.board_state):
            __set_tied()
            return True

        return False

    def board_state_str(self) -> str:
        s = ""
        prefix, suffix = "[", "]"
        rows = len(self.board_state)
        for r, y in enumerate(self.board_state):
            for c, x in enumerate(y):
                s += f"{prefix}{x}{suffix}"
            if r < rows - 1:
                s += "\n"
        return s

    def game_state_str(self) -> str:
        if self.status == GameStatusEnum.WAITING:
            s = "Waiting for players..."
        elif (
            self.status == GameStatusEnum.ONGOING
            or self.status == GameStatusEnum.FINISHED
        ):
            p_fmt = "Player({id})"
            p1 = p_fmt.format(id=self.player_ids[0])
            p2 = p_fmt.format(id=self.player_ids[1])
            l1 = f"{p1} vs {p2} ({self.status})"
            l2 = (
                f"{('^' if self.player_turn_index == 0 else ' ') * len(p1)}    "
                f"{('^' if self.player_turn_index == 1 else ' ') * len(p2)}"
            )
            s = f"{l1}\n{l2}"
        else:
            raise NotImplementedError()

        return s

    @staticmethod
    def convert_contiguous_cartesian_index(i) -> Tuple[int, int]:
        y = i // TicTacToe.GRID_SIZE
        x = i - (y * TicTacToe.GRID_SIZE)
        return y, x

    @staticmethod
    def convert_cartesian_contiguous_index(y, x) -> int:
        i = (y * 3) + x
        return i

    @staticmethod
    def get_player_index_from_symbol(player_symbol: str) -> Optional[int]:
        if player_symbol == TicTacToe.P1_SYMBOL:
            return 0
        elif player_symbol == TicTacToe.P2_SYMBOL:
            return 1
        else:
            return None

    @staticmethod
    def get_player_symbol_from_index(player_index: int) -> str:
        if player_index == 0:
            return TicTacToe.P1_SYMBOL
        elif player_index == 1:
            return TicTacToe.P2_SYMBOL
        else:
            return TicTacToe.BLANK_SYMBOL

    @staticmethod
    def transpose_board_state(board_state: List[List[str]]) -> List[List[str]]:
        return [
            [board_state[0][0], board_state[1][0], board_state[2][0]],
            [board_state[0][1], board_state[1][1], board_state[2][1]],
            [board_state[0][2], board_state[1][2], board_state[2][2]],
        ]

    @staticmethod
    def check_horizontals(board_state: List[List[str]]) -> Optional[int]:
        p1_symbol = TicTacToe.get_player_symbol_from_index(0)
        p2_symbol = TicTacToe.get_player_symbol_from_index(1)
        for y in board_state:
            if all(x == p1_symbol for x in y):
                return 0
            if all(x == p2_symbol for x in y):
                return 1
        return None

    @staticmethod
    def check_diagonals(board_state: List[List[str]]) -> Optional[int]:
        p1_symbol = TicTacToe.get_player_symbol_from_index(0)
        p2_symbol = TicTacToe.get_player_symbol_from_index(1)
        blank_symbol = TicTacToe.get_player_symbol_from_index(-1)

        if (  # [?][_][_]
            board_state[0][0] != blank_symbol
            and board_state[0][0]  # [_][?][_]
            == board_state[1][1]
            == board_state[2][2]  # [_][_][?]
        ):
            player_symbol = board_state[0][0]
            player_index = TicTacToe.get_player_index_from_symbol(player_symbol)
        elif (  # [_][_][?]
            board_state[2][0] != blank_symbol
            and board_state[2][0]  # [_][?][_]
            == board_state[1][1]
            == board_state[0][2]  # [?][_][_]
        ):
            player_symbol = board_state[2][0]
            player_index = TicTacToe.get_player_index_from_symbol(player_symbol)
        else:
            player_index = None

        return player_index

    @staticmethod
    def check_fill(board_state: List[List[str]]) -> bool:
        blank_symbol = TicTacToe.get_player_symbol_from_index(-1)
        for y in board_state:
            for x in y:
                if x != blank_symbol:
                    return False
        return True


# endregion classes


# region log


def log(message, tag=None):
    if tag is None:
        print(message)
    else:
        print(f"[{tag}]: {message}")


def log_done(message):
    log(message, "done")


def log_wait(message):
    log(message, "wait")


def log_warn(message):
    log(message, "warn")


def redact(text, start=2, end=3, mid=3):
    char = "*"
    text_len = len(text)
    if start + mid + end >= text_len:
        start = text_len
        mid = text_len
        end = text_len
    if start == text_len or end == text_len:
        return char * text_len
    result = []
    for i, c in enumerate(text):
        if i < start:
            result.append(c)
        elif i < start + mid:
            result.append(char)
        elif i >= (text_len - end):
            result.append(c)
    return "".join(result)


# endregion log


# region redis


def create_redis_client(host, port, db=0, retries=10, retry_backoff=0.2):
    from redis import Redis
    from redis.retry import Retry

    client = Redis(
        host=host, port=port, db=db, retry=Retry(backoff=retry_backoff, retries=retries)
    )

    return client


# endregion redis


# region utils


def create_response(status_code, body):
    from accelbyte_py_sdk.core import HttpResponse

    if isinstance(body, Exception):
        body = {"error": str(body)}
    elif isinstance(body, HttpResponse):
        body = {"message": str(body)}
    elif isinstance(body, str):
        body = {"message": body}
    elif hasattr(body, "__dict__"):
        body = body.__dict__
    if not isinstance(body, dict):
        raise NotImplementedError
    return {"statusCode": status_code, "body": json.dumps(body)}


def convert_bearer_auth_token_to_web_token(bearer_auth_token):
    from accelbyte_py_sdk.services.auth import (
        convert_bearer_auth_token_to_oauth_token_dict,
    )

    web_token = convert_bearer_auth_token_to_oauth_token_dict(
        bearer_auth_token=bearer_auth_token
    )
    if web_token is None:
        return None, create_response(
            status_code=400,
            body="Failed to convert Bearer Auth Token to JSON Web Token.",
        )

    return web_token, None


def extract_bearer_auth_token(authorization):
    if authorization is None:
        return None, create_response(
            status_code=403, body="Authorization header is missing."
        )
    if not authorization.startswith("Bearer "):
        return None, create_response(
            status_code=400,
            body=f"Invalid Authorization. Expecting Bearer Auth Token. {authorization}",
        )
    bearer_auth_token = authorization.removeprefix("Bearer ")
    return bearer_auth_token, None


# endregion utils
