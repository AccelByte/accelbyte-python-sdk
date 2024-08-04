# Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import json
from argparse import ArgumentParser
from os import environ
from sys import stderr
from typing import Optional

from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.core import MyConfigRepository, InMemoryTokenRepository
import accelbyte_py_sdk.services.auth as auth_service


def parse_args() -> dict:
    parser = ArgumentParser(
        prog="python -m accelbyte_py_sdk",
    )

    subparsers = parser.add_subparsers(
        dest="command",
        required=True,
        help="command to use",
    )

    info = subparsers.add_parser(name="info")

    login = subparsers.add_parser(name="login")
    login.add_argument(
        "type",
        choices=(
            "client",
            "user",
        ),
    )
    login.add_argument(
        "-b", "--base-url", default=environ.get("AB_BASE_URL", None), dest="base_url"
    )
    login.add_argument("-n", "--namespace", default=environ.get("AB_NAMESPACE", None))
    login.add_argument(
        "-c", "--client-id", default=environ.get("AB_CLIENT_ID", None), dest="client_id"
    )
    login.add_argument(
        "-s",
        "--client-secret",
        default=environ.get("AB_CLIENT_SECRET", None),
        dest="client_secret",
    )
    login.add_argument("-u", "--username", default=environ.get("AB_USERNAME", None))
    login.add_argument("-p", "--password", default=environ.get("AB_PASSWORD", None))
    return vars(parser.parse_args())


def main(command: str, **kwargs) -> None:
    command = command.casefold()
    if command == "info":
        return info_command(**kwargs)
    elif command == "login":
        return login_command(**kwargs)
    else:
        exit(f"invalid command: {command}")


def info_command(**kwargs) -> None:
    from accelbyte_py_sdk import __product__, __version__

    print(f"{__product__} ({__version__})")


def login_command(
    type: str,
    base_url: Optional[str] = None,
    namespace: Optional[str] = None,
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    username: Optional[str] = None,
    password: Optional[str] = None,
    **kwargs,
) -> None:
    if not base_url:
        exit(
            f"[erro] base url not set, have you using -b/--base-url or setting AB_BASE_URL?"
        )
    if namespace is None:
        print(
            "[warn] namespace not set, "
            "did you forget using -n/--namespace or setting AB_NAMESPACE? "
            "- defaulting to 'accelbyte'",
            file=stderr,
        )
        namespace = "accelbyte"
    if not client_id:
        exit(
            f"[erro] client id not set, have you using -c/--client-id or setting AB_CLIENT_ID?"
        )
    if client_secret is None:
        print(
            "[warn] client secret not set, "
            "did you forget using -s/--client-secret or setting AB_CLIENT_SECRET?",
            file=stderr,
        )
        client_secret = ""

    config_repo = MyConfigRepository(base_url, client_id, client_secret, namespace)
    token_repo = InMemoryTokenRepository()
    sdk = AccelByteSDK()
    sdk.initialize(options={"config": config_repo, "token": token_repo})

    if type == "client":
        token, error = auth_service.login_client(client_id, client_secret, sdk=sdk)
        if error:
            exit(f"[erro] {error}")

    elif type == "user":
        if not username:
            exit(
                f"[erro] username not set, have you using -u/--username or setting AB_USERNAME?"
            )
        if not password:
            exit(
                f"[erro] password not set, have you using -p/--password or setting AB_PASSWORD?"
            )

        token, error = auth_service.login_user(username, password, sdk=sdk)
        if error:
            exit(f"[erro] {error}")
    else:
        raise ValueError(type)

    print(json.dumps(token.to_dict(), indent=2))


if __name__ == "__main__":
    main(**parse_args())


__all__ = []
