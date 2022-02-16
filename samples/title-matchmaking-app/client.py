import asyncio
import os
import requests as rq

try:
    from aioconsole import ainput
except ImportError:
    import pip
    pip.main(["install", "--user", "aioconsole"])
    from aioconsole import ainput

import accelbyte_py_sdk
from accelbyte_py_sdk.core import MyConfigRepository
from accelbyte_py_sdk.core import WebsocketsWSClient
from accelbyte_py_sdk.core import get_access_token
from accelbyte_py_sdk.core import get_env_config
from accelbyte_py_sdk.services.auth import login_user
from accelbyte_py_sdk.api.lobby.wss_models import MessageNotif


async def main():
    CREATE_TITLE_MATCHMAKING_URL = os.environ.get("CREATE_TITLE_MATCHMAKING_URL", "http://127.0.0.1:3000")

    username = input("Input username: ")
    password = input("Input password: ")

    base_url, client_id, client_secret, namespace = get_env_config()
    options = {
        "config": MyConfigRepository(
            base_url=base_url,
            client_id=client_id,
            client_secret=client_secret,
            namespace=namespace
        )
    }

    accelbyte_py_sdk.initialize(options=options)
    print("[done]: initialize SDK")

    _, error = login_user(username=username, password=password)
    process_error(error=error)

    access_token, error = get_access_token()
    process_error(error=error)

    print(f"[done]: logged in user ({username})")

    def print_wsm(message: str, tag: str, indent="| ", prefix="\n", suffix="\n"):
        message = "\n".join([f"{indent}{line}" for line in message.rstrip().splitlines(keepends=False)])
        print(f"[{tag}]:{prefix}{message}{suffix}")

    async def on_message(message: str):
        print_wsm(message, "recv")

    ws_client = WebsocketsWSClient(
        uri=base_url,
        username=username,
        password=password,
        access_token=access_token
    )

    ws_client.listeners.append(on_message)

    await ws_client.connect()
    print("[done]: connect to websocket")

    await asyncio.sleep(1)

    message_notif = MessageNotif().to_wsm()
    await ws_client.send("\n".join([i.removeprefix("id: ") for i in message_notif.splitlines(keepends=False)]))
    print_wsm(message_notif, "sent")

    r = rq.post(
        url=CREATE_TITLE_MATCHMAKING_URL,
        headers={
            "Authorization": f"Bearer {access_token}"
        }
    )
    print(f"[done]: sent matchmaking request")

    while True:
        inp = await ainput()
        if inp:
            if inp == "q":
                break

    await ws_client.disconnect()


def process_error(error):
    if error is not None:
        print(f"[erro]: {str(error)}")
        exit(1)


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
