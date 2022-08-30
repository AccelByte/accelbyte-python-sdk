import json
import os

from argparse import ArgumentParser

import accelbyte_py_sdk
import accelbyte_py_sdk.core
import accelbyte_py_sdk.services.auth as auth_service

from .app import lambda_handler
from .app import BASE_URL_KEY, CLIENT_ID_KEY, CLIENT_SECRET_KEY


def parse_args():
    parser = ArgumentParser()

    parser.add_argument(
        "-x",
        "--proxy",
        default="match",
        type=str,
        required=False,
        help="sets the proxy",
    )

    parser.add_argument(
        "-m",
        "--method",
        default="post",
        type=str,
        required=False,
        help="sets the method",
    )

    parser.add_argument("-b", "--body", type=str, required=False, help="sets the body")

    parser.add_argument(
        "-g", "--game_id", type=str, required=False, help="sets the game identifier"
    )

    parser.add_argument(
        "-i",
        "--user_id",
        type=str,
        required=False,
        help="sets the override user identifier",
    )

    parser.add_argument(
        "-t", "--token", type=str, required=False, help="sets the token"
    )

    parser.add_argument(
        "-u", "--username", type=str, required=False, help="sets the username"
    )
    parser.add_argument(
        "-p", "--password", type=str, required=False, help="sets the password"
    )

    return vars(parser.parse_args())


def main(**kwargs):
    token = kwargs.get("token")
    if token is None:
        username = kwargs["username"]
        password = kwargs["password"]

        temp_config_repo = accelbyte_py_sdk.core.MyConfigRepository(
            base_url=os.environ[BASE_URL_KEY],
            client_id=os.environ[CLIENT_ID_KEY],
            client_secret=os.environ[CLIENT_SECRET_KEY],
        )
        temp_token_repo = accelbyte_py_sdk.core.InMemoryTokenRepository()
        temp_sdk = accelbyte_py_sdk.AccelByteSDK()
        temp_sdk.initialize(
            options={
                "config": temp_config_repo,
                "token": temp_token_repo,
            }
        )

        token, error = auth_service.login_user(username, password, sdk=temp_sdk)
        if error:
            print(str(error))
            exit(1)

        token = token.access_token

        print(token)
        exit(0)

    proxy = kwargs.get("proxy")
    method = kwargs.get("method")
    body = kwargs.get("body")
    if body is not None:
        body = json.loads(body)
    game_id = kwargs.get("game_id")
    override_user_id = kwargs.get("user_id")
    event = {
        "body": body,
        "headers": {"Authorization": f"Bearer {token}"},
        "pathParameters": {"proxy": proxy},
        "queryStringParameters": {"game_id": game_id},
        "httpMethod": method,
        "extras": {"override_user_id": override_user_id},
    }
    context = None

    result = lambda_handler(event, context)

    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main(**parse_args())
