import json
import os
import time
from argparse import ArgumentParser
from uuid import uuid4

import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.services.auth import login_client, login_user

# region constants

ENVIRONMENT_KEYS = [
    "GAME_BASE_URL", "GAME_CLIENT_ID", "GAME_CLIENT_SECRET", "GAME_NAMESPACE", "GAME_MODE",
    "IAM_BASE_URL", "IAM_CLIENT_ID", "IAM_CLIENT_SECRET",
    "DSMC_DEPLOYMENT",
    "SESSION_BROWSER_GAME_VERSION", "SESSION_BROWSER_MAP_NAME", "SESSION_BROWSER_MODE", "SESSION_BROWSER_PASSWORD", "SESSION_BROWSER_TYPE", "SESSION_BROWSER_USERNAME",
    "REDIS_HOST", "REDIS_PORT",
]

CHANNEL_LIST_KEY = "matchmaking:channelList"
FIND_OTHER_USER_CHECK_INTERVAL = 1.0
FIND_OTHER_USER_MAX_DURATION = 100.0
MATCHMAKING_REQUEST_QUEUE = "matchmaking:requestQueue"
MATCHMAKING_NOTIFICATION_TOPIC = "NOTIF"

# endregion constants


# region globals

IAM_REPO = None, None
GAME_REPO = None, None

# endregion globals


# region classes

class ActiveMatchmakingRequestsSummary:

    def __init__(self, matchmaking_requests):
        self.matchmaking_requests = matchmaking_requests

    @property
    def unique_user_ids(self):
        return set(i["user_id"] for i in self.matchmaking_requests)

    def get_other_user_ids(self, user_id: str):
        return set(i for i in self.unique_user_ids if i != user_id)

    def get_other_matchmaking_request(self, user_id: str):
        return next((i for i in self.matchmaking_requests if i["user_id"] != user_id), None)


class Environment(object):

    def __init__(self, keys):
        for key in keys:
            if key not in os.environ:
                raise EnvironmentError
            setattr(self, key.lower(), os.environ[key])

# endregion classes


def lambda_handler(event, context):
    """Title Matchmaking Lambda function

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
    from accelbyte_py_sdk.core import MyConfigRepository, MyTokenRepository

    # 01. Load Environment Variables.
    env = Environment(keys=ENVIRONMENT_KEYS)
    log_done("load environment variables")

    # 02. Extract the Bearer Auth Token from the Authorization header.
    authorization = str(event.get("headers").get("Authorization"))
    bearer_auth_token, error = extract_bearer_auth_token(authorization)
    if error:
        return error
    log_done("extract Bearer Auth Token")

    # 03. Convert Bearer Auth Token into an OAuth Token object.
    oauth_token, error = convert_bearer_auth_token_to_oauth_token(bearer_auth_token)
    if error:
        return error
    log_done("convert Bearer Auth Token")

    # 04. Create Redis Client.
    redis_client = create_redis_client(env.redis_host, env.redis_port)
    log_done(f"create redis client ({redact(f'{env.redis_host}:{env.redis_port}')})")

    # 05. Create IAM Client.
    iam_client = create_iam_client(env.iam_base_url, env.iam_client_id, env.iam_client_secret)
    log_done("create IAM client")

    # 06. Validate IAM Client locally.
    error = validate_iam_client_locally(iam_client)
    if error:
        return error
    log_done("validate IAM Client locally")

    # 07. Grant IAM Client an Access Token.
    error = grant_iam_client_access_token(iam_client)
    if error:
        return error
    log_done("grant IAM Client an Access Token")

    # 08. Validate Access Token.
    error = validate_access_token(iam_client, bearer_auth_token)
    if error:
        return error
    log_done("validate Access Token")

    # 09. Validate permissions.
    error = validate_permissions(iam_client, bearer_auth_token, oauth_token)
    if error:
        return error
    log_done("validate permissions")

    # 10. Parse and validate claims.
    claims, error = validate_claims(iam_client, bearer_auth_token)
    if error:
        return error
    log_done("parse and validate claims")

    user_id = claims.Sub
    namespace = claims.Namespace

    # 11. Initialize the AccelByte Python SDK.
    accelbyte_py_sdk.initialize()

    # 11.a. Create IAM ConfigRepository and TokenRepository
    iam_config_repo = MyConfigRepository(env.iam_base_url, env.iam_client_id, env.iam_client_secret)
    iam_token_repo = MyTokenRepository(oauth_token)
    iam_token_repo.store_token(oauth_token)

    # 11.b. Create Game ConfigRepository and TokenRepository
    game_config_repo = MyConfigRepository(env.game_base_url, env.game_client_id, env.game_client_secret, env.game_namespace)
    game_token_repo = MyTokenRepository(None)

    # 11.c. Store the 2 different pairs of repositories
    global IAM_REPO, GAME_REPO
    IAM_REPO = iam_config_repo, iam_token_repo
    GAME_REPO = game_config_repo, game_token_repo

    # 12. Grant Game Client Access Token
    switch_repo("game")
    _, error = login_client()
    if error:
        return create_response(400, error)
    log_done("grant Game Client Access Token")

    # 13. Create matchmaking request
    error = create_matchmaking_request(redis_client, namespace, env.game_mode, user_id)
    if error:
        return error
    log_done("create matchmaking request")

    # 14. Send search for match notification to user
    error = send_notif_match_searching(namespace, user_id)
    if error:
        return error
    log_done(f"send free form notification (match searching) to  player ({user_id})")

    # 15. Wait for another user.
    elapsed_time = 0.0
    active_matchmaking_requests_summary = None
    other_matchmaking_request = None
    while elapsed_time < FIND_OTHER_USER_MAX_DURATION:
        active_matchmaking_requests_summary, error = get_active_matchmaking_requests_summary(
            redis_client,
            namespace,
            env.game_mode
        )
        if error:
            return error
        other_matchmaking_request = active_matchmaking_requests_summary.get_other_matchmaking_request(user_id)
        if other_matchmaking_request:
            break
        time.sleep(FIND_OTHER_USER_CHECK_INTERVAL)
        elapsed_time += FIND_OTHER_USER_CHECK_INTERVAL
        log_wait(f"waiting for other players.. {elapsed_time:.2f}/{FIND_OTHER_USER_MAX_DURATION:.2f}s")
    if not other_matchmaking_request:
        return create_response(408, "Timed out! Not enough players.")
    log_done(f"find other user ({other_matchmaking_request['user_id']})")

    party_id = other_matchmaking_request["party_id"]
    user_ids = list(active_matchmaking_requests_summary.unique_user_ids)
    other_user_ids = list(active_matchmaking_requests_summary.get_other_user_ids(user_id))

    # 16. Create session
    sb_session, error = create_session(
        env.game_namespace,
        env.session_browser_game_version,
        env.session_browser_map_name,
        env.session_browser_mode,
        env.session_browser_password,
        env.session_browser_type,
        env.session_browser_username
    )
    if error:
        return error
    log_done(f"create session on session browser")

    sb_session_id = sb_session.session_id

    # 17. Register session on DSMC
    _, error = register_session_on_dsmc(
        sb_session_id,
        env.dsmc_deployment,
        env.game_mode,
        env.game_namespace,
        party_id=party_id,
        user_ids=user_ids
    )
    if error:
        return error
    log_done(f"create session on dsmc")

    # 17.a. Wait for DSMC to register the session
    time.sleep(5.0)

    # 18. Claim server
    _, error = claim_server(
        env.game_namespace,
        sb_session_id
    )
    if error:
        return error
    log_done(f"claim server from dsmc")

    # 19. Get server from DSMC
    dsmc_session, error = get_session_from_dsmc(
        env.game_namespace,
        sb_session_id
    )
    if error:
        return error
    log_done(f"get server from dsmc")

    server = dsmc_session.session.server
    server_ip = server.ip
    server_port = server.port

    # 20. Add players to server in Session Browser
    for idx, uid in enumerate(user_ids):
        _, error = add_player_to_sb_sesion(env.game_namespace, sb_session_id, uid)
        if error:
            return error
        log_done(f"add player ({uid}) to session [{(idx + 1):02d}/{len(user_ids):02d}]")

    # 21. Get session update from Session Browser
    sb_session, error = get_session_from_session_browser(
        env.game_namespace,
        sb_session_id
    )

    # 22. Check if session is joinable
    if not sb_session.joinable:
        return create_response(400, "Unable to join the session.")

    # 23. Send notification to all users
    for idx, uid in enumerate(user_ids):
        error = send_notif_match_found(namespace, server_ip, server_port, uid)
        if error:
            log_warn(f"failed to send free form notification (match found) to player ({uid}) [{(idx + 1):02d}/{len(user_ids):02d}]")
        else:
            log_done(f"send free form notification (match found) to  player ({uid}) [{(idx + 1):02d}/{len(user_ids):02d}]")

    response = {
        "message": f"successfully matchmade "
                   f"server:(ip:{server_ip}|port:{server_port})|"
                   f"session:(id:{sb_session_id})|"
                   f"users:({user_id},{other_user_ids})",
        "server": {
            "ip": server_ip,
            "port": server_port,
        },
        "session": {
            "id": sb_session_id
        },
        "users": [
            user_id,
            other_user_ids
        ]
    }

    return {
        "statusCode": 200,
        "body": json.dumps(response),
    }


def main(args):
    if "token" in args and args["token"]:
        token = args["token"]
    else:
        username = args["username"]
        password = args["password"]
        accelbyte_py_sdk.initialize(
            options={
                "config": "MyConfigRepository",
                "config_params": (
                    [],
                    {
                        "base_url": os.environ["IAM_BASE_URL"],
                        "client_id": os.environ["IAM_CLIENT_ID"],
                        "client_secret": os.environ["IAM_CLIENT_SECRET"]
                    }
                )
            }
        )

        _, error = login_user(username, password)

        if error:
            print(str(error))
            exit(1)

        token, error = get_access_token()

        if error:
            print(str(error))
            exit(1)

        accelbyte_py_sdk.reset()

    context = None
    event = {
        "headers":
            {
                "Authorization": f"Bearer {token}"
            }
    }

    result = lambda_handler(event, context)

    print(json.dumps(result, indent=2))


# region iam

def create_iam_client(base_url, client_id, client_secret):
    from iam_python_sdk import Config, NewDefaultClient

    # NOTE: automatically add '/iam' when not present
    if not base_url.endswith("/iam"):
        base_url += "/iam"

    config = Config(
        BaseURL=base_url,
        ClientID=client_id,
        ClientSecret=client_secret
    )

    client = NewDefaultClient(
        config=config
    )

    return client


def grant_iam_client_access_token(iam_client):
    from iam_python_sdk.errors import ClientTokenGrantError

    try:
        iam_client.ClientTokenGrant()
        return None
    except ClientTokenGrantError as e:
        error = f"Unable to validate the IAM Client locally: {str(e)}"
        return create_response(status_code=500, body=error)


def validate_access_token(iam_client, access_token):
    from iam_python_sdk.errors import ValidateAccessTokenError

    try:
        is_access_token_valid = iam_client.ValidateAccessToken(access_token)
        if not is_access_token_valid:
            return create_response(400, "Invalid IAM Client Access Token.")
        return None
    except ValidateAccessTokenError as e:
        error = f"Invalid IAM Client Access Token: {str(e)}"
        return create_response(status_code=500, body=error)


def validate_claims(iam_client, access_token):
    from iam_python_sdk.errors import NoLocalValidationError
    from iam_python_sdk.errors import TokenRevokedError
    from iam_python_sdk.errors import UserRevokedError
    from iam_python_sdk.errors import ValidateAndParseClaimsError

    try:
        claims = iam_client.ValidateAndParseClaims(access_token)
        if claims is None:
            error_message = f"Invalid claims."
            return None, create_response(400, error_message)
        return claims, None
    except NoLocalValidationError as e:
        error_message = f"IAM client not validated locally: {str(e)}"
        return None, create_response(500, error_message)
    except (TokenRevokedError, UserRevokedError, ValidateAndParseClaimsError) as e:
        error_message = f"Invalid claims: {str(e)}"
        return None, create_response(400, error_message)


def validate_iam_client_locally(iam_client):
    from iam_python_sdk.errors import StartLocalValidationError

    try:
        iam_client.StartLocalValidation()
        return None
    except StartLocalValidationError as e:
        error = f"Unable to validate the IAM Client locally: {str(e)}"
        return create_response(status_code=500, body=error)


def validate_permissions(iam_client, access_token, oauth_token):
    from iam_python_sdk.errors import NilClaimError
    from iam_python_sdk.errors import ValidatePermissionError
    from iam_python_sdk.models import JWTClaims
    from iam_python_sdk.models import NamespaceRole
    from iam_python_sdk.models import Permission

    def convert_namespace_role(r):
        result = NamespaceRole()
        result.Roleid = r.role_id
        result.Namespace = r.namespace
        return result

    def convert_permission(p):
        result = Permission()
        result.Resource = p.resource
        result.Action = p.action
        result.Schedaction = p.sched_action
        result.Schedcron = ""
        result.Schedrange = []
        return result

    def convert_claims(t):
        result = JWTClaims()
        result.Namespace = t.namespace
        result.DisplayName = t.display_name
        result.Roles = t.roles
        result.AcceptedPolicyVersion = None
        result.NamespaceRoles = [convert_namespace_role(i) for i in t.namespace_roles]
        result.Permissions = [convert_permission(i) for i in t.permissions]
        result.Bans = None
        result.Jflgs = 0
        result.Scope = ""
        result.Country = ""
        result.ClientId = iam_client.config.ClientID,
        result.IsComply = False
        return result

    def create_permission(resource, action):
        result = Permission()
        result.Resource = resource
        result.Action = action
        return result

    claims = convert_claims(oauth_token)
    required_permission = create_permission("NAMESPACE:{namespace}:MATCHMAKING", 1)
    permission_resources = {"{namespace}": claims.Namespace}

    try:
        is_permission_valid = iam_client.ValidatePermission(
            claims=claims,
            requiredPermission=required_permission,
            permissionResources=permission_resources
        )
        if not is_permission_valid:
            return create_response(400, "Invalid permissions.")
        return None
    except (NilClaimError, ValidatePermissionError) as e:
        error_message = f"Invalid permissions: {str(e)}"
        return create_response(400, error_message)

# endregion iam


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

# endregion log


# region matchmaking

def add_player_to_sb_sesion(
        game_namespace: str,
        session_id: str,
        user_id: str
):
    from accelbyte_py_sdk.api.sessionbrowser import add_player_to_session
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsAddPlayerRequest

    switch_repo("iam")
    result, error = add_player_to_session(
        body=ModelsAddPlayerRequest.create(
            as_spectator=False,
            user_id=user_id
        ),
        session_id=session_id,
        namespace=game_namespace
    )
    if error:
        return None, create_response(400, error)

    return result, None


def claim_server(
        game_namespace,
        session_id
):
    from accelbyte_py_sdk.api.dsmc import claim_server
    from accelbyte_py_sdk.api.dsmc.models import ModelsClaimSessionRequest

    switch_repo("game")
    _, error = claim_server(
        body=ModelsClaimSessionRequest.create(session_id=session_id),
        namespace=game_namespace
    )
    if error:
        return None, create_response(400, error)

    return None, None


def create_matchmaking_request(
        redis_client,
        namespace,
        game_mode,
        user_id,
        party_count=1,
        party_member_count=1
):
    from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceRule, ModelsChannel, ModelsMatchOptionRule, ModelsRuleSet

    ruleset = ModelsRuleSet.create(
        alliance=ModelsAllianceRule.create(
            max_number=2,
            min_number=2,
            player_max_number=1,
            player_min_number=1
        ),
        alliance_flexing_rule=[],
        flexing_rule=[],
        match_options=ModelsMatchOptionRule.create(options=[]),
        matching_rule=[],
        sub_game_modes={}
    )

    channel = ModelsChannel.create(
        deployment="",
        description="",
        find_match_timeout_seconds=3600,
        game_mode=game_mode,
        joinable=False,
        max_delay_ms=0,
        namespace=namespace,
        ruleset=ruleset,
        session_queue_timeout_seconds=0,
        slug=f"{namespace}:{game_mode}",
        social_matchmaking=False,
        updated_at="",
        use_sub_gamemode=False
    )

    error = save_channel(redis_client, channel)
    if error:
        return error

    parties = [
        {
            "channel": f"{namespace}:{game_mode}",
            "client_version": "",
            "party_id": create_uuid(),
            "party_members": [{"user_id": user_id} for _ in range(party_member_count)],
            "priority": 0,
            "server_name": "",
            "user_id": user_id
        }
        for _ in range(party_count)
    ]

    parties_str = [json.dumps(party) for party in parties]

    matchmaking_request_key = get_matchmaking_requests_key(namespace, game_mode)
    error = save_matchmaking_requests(redis_client, matchmaking_request_key, parties_str)
    if error:
        return error

    return None


def create_session(
        game_namespace,
        game_version,
        map_name,
        mode,
        password,
        session_type,
        username,
        max_internal_player=2
):
    from accelbyte_py_sdk.api.sessionbrowser import create_session
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsCreateSessionRequest
    from accelbyte_py_sdk.api.sessionbrowser.models import ModelsGameSessionSetting

    switch_repo("iam")
    result, error = create_session(
        body=ModelsCreateSessionRequest.create(
            game_session_setting=ModelsGameSessionSetting.create(
                allow_join_in_progress=True,
                current_internal_player=0,
                current_player=0,
                map_name=map_name,
                max_internal_player=max_internal_player,
                max_player=0,
                mode=mode,
                num_bot=0,
                password=password,
                settings={}
            ),
            game_version=game_version,
            namespace=game_namespace,
            session_type=session_type,
            username=username
        ),
        namespace=game_namespace
    )
    if error:
        return None, create_response(400, error)

    return result, None


def get_active_matchmaking_requests_summary(
        redis_client,
        namespace,
        game_mode,
        start=0,
        end=50
):
    matchmaking_requests_str, error = load_matchmaking_requests(
        redis_client,
        get_matchmaking_requests_key(namespace, game_mode)
    )
    if error:
        return None, error
    result = ActiveMatchmakingRequestsSummary([
        json.loads(matchmaking_request_str)
        for matchmaking_request_str in matchmaking_requests_str
    ])
    return result, None


def get_session_from_dsmc(
        game_namespace: str,
        session_id: str
):
    from accelbyte_py_sdk.api.dsmc import get_session

    switch_repo("game")
    result, error = get_session(session_id=session_id, namespace=game_namespace)
    if error:
        return None, create_response(400, error)

    return result, None


def get_session_from_session_browser(
        game_namespace: str,
        session_id: str
):
    from accelbyte_py_sdk.api.sessionbrowser import get_session

    switch_repo("game")
    result, error = get_session(session_id=session_id, namespace=game_namespace)
    if error:
        return None, create_response(400, error)

    return result, None


def register_session_on_dsmc(
        session_id,
        deployment,
        game_mode,
        game_namespace,
        party_id,
        user_ids
):
    from accelbyte_py_sdk.api.dsmc import create_session
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchingAlly
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchMember
    from accelbyte_py_sdk.api.dsmc.models import ModelsRequestMatchParty
    from accelbyte_py_sdk.api.dsmc.models import ModelsCreateSessionRequest

    switch_repo("game")
    result, error = create_session(
        body=ModelsCreateSessionRequest.create(
            client_version="",
            configuration="",
            deployment=deployment,
            game_mode=game_mode,
            matching_allies=[
                ModelsRequestMatchingAlly.create(
                    matching_parties=[
                        ModelsRequestMatchParty.create(
                            party_attributes={},
                            party_id=party_id,
                            party_members=[
                                ModelsRequestMatchMember.create(user_id=user_id)
                                for user_id in user_ids
                            ]
                        )
                    ]
                )
            ],
            namespace=game_namespace,
            pod_name="",
            region="",
            session_id=session_id
        ),
        namespace=game_namespace
    )
    if error:
        return None, create_response(400, error)

    return result, None


def send_notif_match_found(
        namespace: str,
        ip: str,
        port: int,
        user_id: str
):
    from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest
    from accelbyte_py_sdk.api.lobby import free_form_notification_by_user_id

    switch_repo("iam")
    _, error = free_form_notification_by_user_id(
        body=ModelFreeFormNotificationRequest.create(
            message=f"found {ip} {port}",
            topic=MATCHMAKING_NOTIFICATION_TOPIC
        ),
        user_id=user_id,
        namespace=namespace
    )
    if error:
        return create_response(400, error)
    return None


def send_notif_match_searching(
        namespace: str,
        user_id: str
):
    from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest
    from accelbyte_py_sdk.api.lobby import free_form_notification_by_user_id

    switch_repo("iam")
    _, error = free_form_notification_by_user_id(
        body=ModelFreeFormNotificationRequest.create(
            message="searching",
            topic=MATCHMAKING_NOTIFICATION_TOPIC
        ),
        user_id=user_id,
        namespace=namespace
    )
    if error:
        return create_response(400, error)
    return None


# endregion matchmaking


# region redis

def create_redis_client(host, port, db=0, retries=10, retry_backoff=0.2):
    from redis import Redis
    from redis.retry import Retry

    client = Redis(
        host=host,
        port=port,
        db=db,
        retry=Retry(
            backoff=retry_backoff,
            retries=retries
        )
    )

    return client


def load_matchmaking_requests(redis_client, key: str, start=0, end=50):
    from redis.exceptions import ConnectionError as RedisConnectionError

    try:
        result = redis_client.lrange(key, start, end)
        return result, None
    except RedisConnectionError:
        return None, create_response(status_code=500, body="Failed to connect to Redis server.")


def save_channel(redis_client, channel):
    from redis.exceptions import ConnectionError as RedisConnectionError

    try:
        redis_client.sadd(CHANNEL_LIST_KEY, channel.slug)
        return None
    except RedisConnectionError:
        return create_response(status_code=500, body="Failed to connect to Redis server.")


def save_matchmaking_requests(redis_client, key, matchmaking_requests):
    from redis.exceptions import ConnectionError as RedisConnectionError

    try:
        redis_client.lpush(key, *matchmaking_requests)
        return None
    except RedisConnectionError:
        return create_response(status_code=500, body="Failed to connect to Redis server.")


# endregion redis


# region repositories

def switch_repo(repo):
    from accelbyte_py_sdk.core import set_config_repository, set_token_repository

    def switch_config_repo(r):
        if r == "iam":
            config_repo = IAM_REPO[0]
        elif r == "game":
            config_repo = GAME_REPO[0]
        else:
            config_repo = None
        if config_repo is None:
            raise NotImplementedError
        set_config_repository(config_repo)

    def switch_token_repo(r):
        if r == "iam":
            token_repo = IAM_REPO[1]
        elif r == "game":
            token_repo = GAME_REPO[1]
        else:
            token_repo = None
        if token_repo is None:
            raise NotImplementedError
        set_token_repository(token_repo)

    if IAM_REPO is None:
        raise ValueError
    if GAME_REPO is None:
        raise ValueError

    if isinstance(repo, tuple):
        config, token = repo
        switch_config_repo(config)
        switch_token_repo(token)
        log_done(f"switch to {config} config & {token} & token")
    elif isinstance(repo, str):
        switch_config_repo(repo)
        switch_token_repo(repo)
        log_done(f"switch to {repo} config & token")
    else:
        raise NotImplementedError

# endregion repositories


# region response

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
    return {
        "statusCode": status_code,
        "body": json.dumps(body)
    }

# endregion response


# region token

def convert_bearer_auth_token_to_oauth_token(bearer_auth_token):
    import jwt
    from accelbyte_py_sdk.api.iam.models import OauthmodelTokenResponseV3

    # NOTE: the permission keys in the JSON web token permission is different from the keys defined in the schema
    def patch_web_token(wt):
        permissions = wt.get("permissions")
        if permissions:
            for permission in permissions:
                if "Action" in permission:
                    permission["action"] = permission["Action"]
                    del permission["Action"]
                if "Resource" in permission:
                    permission["resource"] = permission["Resource"]
                    del permission["Resource"]

    try:
        web_token = jwt.decode(bearer_auth_token, options={"verify_signature": False})
        patch_web_token(web_token)
        oauth_token = OauthmodelTokenResponseV3.create_from_dict(web_token, include_empty=True)
        oauth_token.access_token = bearer_auth_token
        return oauth_token, None
    except ValueError as e:
        return None, create_response(status_code=400, body=e)


def extract_bearer_auth_token(authorization):
    if authorization is None:
        return None, create_response(status_code=403, body="Authorization header is missing.")
    if not authorization.startswith("Bearer "):
        return None, create_response(status_code=400, body=f"Invalid Authorization. Expecting Bearer Auth Token. {authorization}")
    bearer_auth_token = authorization.removeprefix("Bearer ")
    return bearer_auth_token, None

# endregion token


# region utils

def create_uuid():
    return str(uuid4()).replace("-", "")


def get_matchmaking_requests_key(namespace: str, game_mode: str):
    return f"{MATCHMAKING_REQUEST_QUEUE}:{namespace}:{game_mode}"


def parse_args():
    parser = ArgumentParser()

    parser.add_argument("-t", "--token", type=str, required=False, help="sets the token")

    parser.add_argument("-u", "--username", type=str, required=False, help="sets the username")
    parser.add_argument("-p", "--password", type=str, required=False, help="sets the password")

    return vars(parser.parse_args())


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

# endregion utils


if __name__ == "__main__":
    main(parse_args())
