# Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

import json
import logging
from argparse import ArgumentParser
from typing import Any, Dict

import accelbyte_py_sdk as ab
import accelbyte_py_sdk.services.auth as auth_service
from dotenv import load_dotenv

from .custom_operation import GoogleCustomSearch


def parse_args() -> Dict[str, Any]:
    parser = ArgumentParser(prog="Google Custom Search V1")
    parser.add_argument(
        "-q",
        "--query",
        type=str,
        required=True,
        help="Query",
    )
    parser.add_argument(
        "--id",
        type=str,
        required=True,
        help="The Programmable Search Engine ID to use for this request.",
    )
    parser.add_argument(
        "--key",
        type=str,
        required=True,
        help="An API key is a unique string that lets you access an API.",
    )
    parser.add_argument(
        "--limit", default=10, type=int, help="Number of search results to return."
    )
    parser.add_argument(
        "--safe",
        default="active",
        choices=["active", "off"],
        help="Search safety level. Acceptable values are: {active,off}",
    )
    return vars(parser.parse_args())


# noinspection PyShadowingBuiltins
def main(
    query: str,
    id: str,
    key: str,
    limit: int,
    safe: str,
) -> None:
    load_dotenv()

    options = {
        "config": ab.core.EnvironmentConfigRepository(),
        "repo": ab.core.InMemoryTokenRepository(),
        "log_files": {
            "http": {
                "capacity": 1,
                "filename": "http.log",
                "level": logging.DEBUG,
            }
        },
    }
    sdk = ab.AccelByteSDK()
    sdk.initialize(options=options)

    auth_service.login_client(sdk=sdk)

    operation = GoogleCustomSearch()
    operation.query = query

    operation.id_ = id
    operation.key = key
    operation.limit = limit
    operation.safe = safe

    result, error = sdk.run_request(
        operation=operation,
        # (optional) override base URL from the config repo
        base_url="https://www.googleapis.com",
    )
    if error:
        exit(1)

    print(json.dumps(result.to_dict(), indent=2))


if __name__ == "__main__":
    main(**parse_args())
