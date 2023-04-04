import sys

import httpx
import requests.exceptions

import accelbyte_py_sdk
from accelbyte_py_sdk.core import (
    HttpxHttpClient,
    RequestsHttpClient,
    DotEnvFileConfigRepository,
    InMemoryTokenRepository,
)
import accelbyte_py_sdk.services.auth as auth_service
import accelbyte_py_sdk.api.iam as iam_service


def exit_with_error(error):
    print(error, file=sys.stderr)
    exit(1)


def main():
    timeout = 0.0001
    set_requests_timeout(timeout)
    # set_httpx_timeout(timeout)


def set_requests_timeout(timeout: float):
    # Initialize the SDK
    accelbyte_py_sdk.initialize(
        options={
            "config": DotEnvFileConfigRepository(".env"),
            "token": InMemoryTokenRepository(),
            "http": RequestsHttpClient(),
        }
    )

    # Login using client credentials
    token, error = auth_service.login_client()
    if error:
        exit_with_error("login failed")

    # Call an AccelByte Gaming Services API e.g. GetCountryLocationV3 with a timeout value
    try:
        response, error = iam_service.get_country_location_v3(timeout=timeout)
        if error:
            exit_with_error(f"response rrror: {error}")
        print(response.country_name)
    except requests.exceptions.Timeout as e:
        exit_with_error(f"timeout error: {e}")


def set_httpx_timeout(timeout: float):
    http_client = HttpxHttpClient()

    # Initialize the SDK
    accelbyte_py_sdk.initialize(
        options={
            "config": DotEnvFileConfigRepository(".env", set_env_var=True),
            "token": InMemoryTokenRepository(),
            "http": http_client,
        }
    )

    # Login using client credentials
    token, error = auth_service.login_client()
    if error:
        exit_with_error("login failed")

    # Call an AccelByte Gaming Services API e.g. GetCountryLocationV3 with a timeout value
    try:
        response, error = iam_service.get_country_location_v3(timeout=timeout)
        if error:
            exit_with_error(f"response rrror: {error}")
        print(response.country_name)
    except httpx.TimeoutException as e:
        exit_with_error(f"timeout error: {e}")


if __name__ == "__main__":
    main()
