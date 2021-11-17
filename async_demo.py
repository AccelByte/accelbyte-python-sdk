import asyncio

import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_access_token, get_http_client
from accelbyte_py_sdk.core import get_env_config, get_env_user_credentials, set_env_config, set_env_user_credentials
from accelbyte_py_sdk.services.auth import login_client_async, login_user_async, logout_async


async def main():
    def print_error_and_exit(err):
        print(err)
        exit(1)

    # (1.a) Initialize the SDK.
    accelbyte_py_sdk.initialize(
        options={
            "http": "HttpxHttpClient"
        }
    )

    # (1.b) Verify that the HTTP client is async compatible.
    http_client = get_http_client()
    assert http_client.is_async_compatible()

    # (2) Verify that we don't have any access tokens stored.
    _, error = get_access_token()
    assert error is not None

    # (3.a) Login.
    username, password = get_env_user_credentials()
    _, error = await login_user_async(username, password)

    # (3.b) Verify that we have successfully logged in.
    if error:
        print_error_and_exit(error)

    # (4) Get and print the stored access token.
    print(get_access_token())

    # (5.a) Logout.
    _, error = await logout_async()
    if error:
        print_error_and_exit(error)

    # (5.b) Verify that we don't have any access tokens stored.
    _, error = get_access_token()
    assert error is not None


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())

