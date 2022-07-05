import asyncio
import logging
import os

try:
    from aioconsole import ainput
except ImportError:
    import pip

    pip.main(["install", "--user", "aioconsole"])
    from aioconsole import ainput

import accelbyte_py_sdk
from accelbyte_py_sdk.core import get_access_token, get_base_url
from accelbyte_py_sdk.core import WebsocketsWSClient
from accelbyte_py_sdk.services.auth import login
from accelbyte_py_sdk.api.lobby.wss_models import *

_LOGGER = logging.getLogger("accelbyte_py_sdk.ws")
_LOGGER.setLevel(logging.DEBUG)
_LOGGER.addHandler(logging.StreamHandler())


async def main() -> None:
    accelbyte_py_sdk.initialize()

    username = os.environ["AB_USERNAME"]
    password = os.environ["AB_PASSWORD"]

    _, error = login(username, password)
    if error:
        exit(1)

    access_token, error = get_access_token()
    if error:
        exit(1)

    base_url, error = get_base_url()
    if error:
        exit(1)

    client = WebsocketsWSClient(
        uri=base_url,
        access_token=access_token,
    )
    client.listeners.append(listener)

    await client.connect()

    while True:
        inp = await ainput()
        if inp:
            if inp == "q":
                break
            if inp == "create":
                inp = PartyCreateRequest().to_wsm()
            elif inp == "leave":
                inp = PartyLeaveRequest().to_wsm()
            elif inp == "mm.start":
                inp = StartMatchmakingRequest().to_wsm()
            elif inp == "mm.cancel":
                inp = CancelMatchmakingRequest().to_wsm()
            await client.send(inp)
            print(f"{'=' * 10}\nSent:\n{inp}")

    await client.disconnect()


async def listener(message: str) -> None:
    print(f"{'=' * 10}\nReceived:\n{message}")


if __name__ == "__main__":
    asyncio.run(main())
