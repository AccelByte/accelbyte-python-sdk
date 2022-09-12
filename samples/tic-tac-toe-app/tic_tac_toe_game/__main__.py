import asyncio
import os

from typing import List, Optional

import requests
import yaml

from aioconsole import ainput

import accelbyte_py_sdk
import accelbyte_py_sdk.core
import accelbyte_py_sdk.services.auth as auth_service

from accelbyte_py_sdk.core import get_access_token, get_base_url

CTX: dict = {}


async def main():
    init()
    await login()

    base_url, _ = get_base_url()
    access_token, _ = get_access_token()

    async def on_message(message: str):
        print(message)

    ws_client = accelbyte_py_sdk.core.WebsocketsWSClient(
        uri=base_url,
        access_token=access_token,
    )

    ws_client.listeners.append(on_message)

    await ws_client.connect()
    await asyncio.sleep(1)

    await start()


def init():
    tictactoe_url = os.environ.get("TICTACTOE_URL")
    if tictactoe_url is None or tictactoe_url == "" or tictactoe_url.isspace():
        raise EnvironmentError("'TICTACTOE_URL' required.")

    CTX["tictactoe_url"] = tictactoe_url

    accelbyte_py_sdk.initialize()


async def choose_action(actions: List[str], strict: bool = False) -> Optional[int]:
    while True:
        actions_len = len(actions)
        options_str = "\n".join(f"- {i}: {a}" for i, a in enumerate(actions))
        prompt = f"Pick an action:\n{options_str}\n> "
        s = input(prompt)
        try:
            i = int(s)
            if not (0 <= i < actions_len):
                i = None
        except ValueError:
            i = None

        if i is not None:
            break
        if not strict:
            break

    return i


async def login():
    username = input("username: ")
    password = input("password: ")

    _, error = auth_service.login_user(username, password)
    if error:
        print(error)
        await login()
        return

    print("Login successful.")

    await start()


async def start():
    actions = [
        ("Get Stats", get_stats),
        ("Find Match", find_match),
        ("Make Move", make_move),
        ("Delete All Matches", delete_all_matches),
        ("Quit", quit_app),
    ]
    actions_index = await choose_action(list(a[0] for a in actions), strict=True)
    action = actions[actions_index][1]

    await action()


async def get_stats():
    access_token, error = get_access_token()
    if error:
        print("You need to login first.")
        await start()
        return

    response = requests.get(
        url=f"{CTX['tictactoe_url']}/matches",
        headers={
            "Authorization": f"Bearer {access_token}",
        },
    )
    if not response.ok:
        print(yaml.safe_dump(response.json()))
        await start()
        return

    print(yaml.safe_dump(response.json()))

    await start()


async def find_match():
    access_token, error = get_access_token()
    if error:
        print("You need to login first.")
        await start()
        return

    response = requests.post(
        url=f"{CTX['tictactoe_url']}/match",
        headers={
            "Authorization": f"Bearer {access_token}",
        },
    )
    if not response.ok:
        print("Unable to find match.")
        await start()
        return

    resp_json = response.json()
    game_id = resp_json["id"]

    CTX["game_id"] = game_id

    print(yaml.safe_dump(resp_json))

    await start()


async def make_move():
    access_token, error = get_access_token()
    if error:
        print("You need to login first.")
        await start()
        return

    if not (game_id := CTX.get("game_id", None)):
        game_id = input("game_id: ")
        CTX["game_id"] = game_id

    while True:
        cell_str = input("Pick cell (0 to 8): ")
        cell_idx = None
        try:
            cell_idx = int(cell_str)
        except ValueError:
            pass

        if 0 <= cell_idx <= 8:
            break

    response = requests.post(
        url=f"{CTX['tictactoe_url']}/move",
        json={
            "index": cell_idx,
        },
        headers={
            "Authorization": f"Bearer {access_token}",
        },
        params={
            "game_id": game_id,
        },
    )
    if not response.ok:
        print(yaml.safe_dump(response.json()))
        await start()
        return

    print(yaml.safe_dump(response.json()))

    await start()


async def delete_all_matches():
    access_token, error = get_access_token()
    if error:
        print("You need to login first.")
        await start()
        return

    response = requests.delete(
        url=f"{CTX['tictactoe_url']}/matches",
        headers={
            "Authorization": f"Bearer {access_token}",
        },
    )
    if not response.ok:
        print(yaml.safe_dump(response.json()))
        await start()
        return

    print(yaml.safe_dump(response.json()))

    await start()


async def quit_app():
    pass


if __name__ == "__main__":
    loop = asyncio.get_event_loop()
    loop.run_until_complete(main())
