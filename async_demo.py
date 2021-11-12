import asyncio
from os import environ

import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.services.auth import login_async, logout_async


async def main():
    accelbyte_py_sdk.initialize(
        options={
            "http": "HttpxHttpClient"
        }
    )

    _, error = get_access_token()
    assert error is not None

    username = environ["AB_USERNAME"]
    password = environ["AB_PASSWORD"]

    _, error = await login_async(username, password)
    assert error is None
    print(get_access_token())

    _, error = await logout_async()
    assert error is None

    _, error = get_access_token()
    assert error is not None


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())

