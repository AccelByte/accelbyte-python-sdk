import asyncio
from typing import Optional

import click
from aioconsole import ainput

from accelbyte_py_sdk import initialize
from accelbyte_py_sdk.core import get_base_url
from accelbyte_py_sdk.core import WebsocketsWSClient

from .iam import commands as iam_commands
from .achievement import commands as achievement_commands
from .basic import commands as basic_commands
from .cloudsave import commands as cloudsave_commands
from .dslogmanager import commands as dslogmanager_commands
from .dsmc import commands as dsmc_commands
from .eventlog import commands as eventlog_commands
from .gametelemetry import commands as gametelemetry_commands
from .gdpr import commands as gdpr_commands
from .group import commands as group_commands
from .leaderboard import commands as leaderboard_commands
from .legal import commands as legal_commands
from .lobby import commands as lobby_commands
from .matchmaking import commands as matchmaking_commands
from .platform import commands as platform_commands
from .qosm import commands as qosm_commands
from .seasonpass import commands as seasonpass_commands
from .sessionbrowser import commands as sessionbrowser_commands
from .social import commands as social_commands
from .ugc import commands as ugc_commands


@click.group()
def entry_point():
    initialize()


async def one_shot_websocket_async(
        raw_text: str,
        mode: Optional[str] = None,
        timeout: Optional[float] = None,
        uri_prefix: Optional[str] = None,
):
    mode = mode or "echo"
    sleep_interval = 0.03
    timeout = timeout or 10.0
    uri_prefix = uri_prefix or "ws://"

    base_url, error = get_base_url()
    if error:
        exit(1)

    elapsed: float = 0.0
    raw_request: str = raw_text.replace("\\n", "\n")
    raw_response: Optional[str] = None

    async def on_message(msg: str):
        nonlocal raw_response
        raw_response = msg
        click.echo(f"[RECV]: {msg}")

    ws_client = WebsocketsWSClient(
        uri=base_url,
        uri_prefix=uri_prefix
    )
    ws_client.listeners.append(on_message)

    click.echo(f"[INFO]: connecting to {ws_client.uri}")
    await ws_client.connect()
    click.echo("[INFO]: connected")

    await ws_client.send(raw_request)
    click.echo(f"[SEND]: {raw_request}")

    while elapsed < timeout and raw_response is None:
        await asyncio.sleep(sleep_interval)
        elapsed += sleep_interval

    click.echo("[INFO]: disconnecting")
    await ws_client.disconnect()
    click.echo("[INFO]: disconnected")

    if elapsed >= timeout:
        raise TimeoutError
    elif raw_response is None:
        raise Exception("NoResponse")

    if mode == "echo":
        if raw_request != raw_response:
            flat_request = "\\n".join(raw_request.splitlines(keepends=False))
            flat_response = "\\n".join(raw_response.splitlines(keepends=False))
            raise Exception(f"'{flat_request}' != '{flat_response}'")
    else:
        raise NotImplementedError


@click.command()
@click.argument("raw_text", type=str)
@click.option("--mode", type=click.Choice(["echo"], case_sensitive=False))
@click.option("--timeout", type=float)
@click.option("--uri_prefix", type=str)
def one_shot_websocket(
        raw_text: str,
        mode: Optional[str] = None,
        timeout: Optional[float] = None,
        uri_prefix: Optional[str] = None,
):
    asyncio.run(
        one_shot_websocket_async(
            raw_text=raw_text,
            mode=mode,
            timeout=timeout,
            uri_prefix=uri_prefix,
        )
    )


@click.command()
@click.option("--compare_with_last_message/--no_compare_with_last_message", default=False)
@click.option("--exit_on_error/--no_exit_on_error", default=bool)
@click.option("--uri_prefix", type=str)
def enter_websocket_mode(
        compare_with_last_message: bool,
        exit_on_error: bool,
        uri_prefix: Optional[str] = None
):
    asyncio.run(websocket_mode(
        compare_with_last_message=compare_with_last_message,
        exit_on_error=exit_on_error,
        uri_prefix=uri_prefix
    ))


async def websocket_mode(
        compare_with_last_message: Optional[bool] = None,
        exit_on_error: Optional[bool] = None,
        uri_prefix: Optional[str] = None
):
    compare_with_last_message = compare_with_last_message or False
    exit_on_error = exit_on_error or False
    uri_prefix = uri_prefix or "ws://"

    websocket_mode.compare_with_last_message = compare_with_last_message
    websocket_mode.exit_on_error = exit_on_error

    base_url, error = get_base_url()
    if error:
        exit(1)

    ws_client = WebsocketsWSClient(uri=base_url, uri_prefix=uri_prefix)
    ws_client.listeners.append(websocket_listener)

    click.echo(f"[INFO]: connecting to {ws_client.uri}")
    await ws_client.connect()
    click.echo("[INFO]: connected")

    while True:
        await wait_for_response()
        if websocket_mode.should_quit:
            break
        inp, src = await read_line_from_stdin()
        if inp:
            if inp == ":q":
                break
            if inp is not None:
                await ws_client.send(inp)
                websocket_mode.is_waiting_for_response = True
                websocket_mode.last_message = inp
                click.echo(f"[SEND]: {inp}")

    click.echo("[INFO]: disconnecting")
    await ws_client.disconnect()
    click.echo("[INFO]: disconnected")

    if websocket_mode.error is not None:
        raise Exception(f"WebSocket Mode Error: {str(websocket_mode.error)}")

websocket_mode.compare_with_last_message = False
websocket_mode.error = None
websocket_mode.exit_on_error = False
websocket_mode.is_waiting_for_response = False
websocket_mode.last_message = None
websocket_mode.should_quit = False


async def read_line_from_stdin():
    result = await ainput()
    result = str(result)
    result = result.replace("\\n", "\n")
    return result, "stdin"


async def wait_for_response():
    sleep_duration = 0.016
    while websocket_mode.is_waiting_for_response:
        await asyncio.sleep(sleep_duration)


async def websocket_listener(message: str):
    websocket_mode.is_waiting_for_response = False
    if websocket_mode.compare_with_last_message and websocket_mode.last_message != message:
        flattened_message = "\\n".join(message.splitlines(keepends=False))
        error = f"'{websocket_mode.last_message}' != '{flattened_message}'"
        click.echo(f"[ERRO]: {error}")
        if websocket_mode.exit_on_error:
            websocket_mode.error = error
            websocket_mode.should_quit = True
        return
    click.echo(f"[RECV]: {message}")


def add_commands(grp, cmds, prefix: str = None):
    for cmd in cmds:
        grp.add_command(cmd, name=f"{f'{prefix}-' if prefix is not None else ''}{cmd.name}")


add_commands(entry_point, iam_commands, prefix="iam")
add_commands(entry_point, achievement_commands, prefix="achievement")
add_commands(entry_point, basic_commands, prefix="basic")
add_commands(entry_point, dslogmanager_commands, prefix="dslogmanager")
add_commands(entry_point, cloudsave_commands, prefix="cloudsave")
add_commands(entry_point, dsmc_commands, prefix="dsmc")
add_commands(entry_point, eventlog_commands, prefix="eventlog")
add_commands(entry_point, gametelemetry_commands, prefix="gametelemetry")
add_commands(entry_point, gdpr_commands, prefix="gdpr")
add_commands(entry_point, group_commands, prefix="group")
add_commands(entry_point, leaderboard_commands, prefix="leaderboard")
add_commands(entry_point, legal_commands, prefix="legal")
add_commands(entry_point, lobby_commands, prefix="lobby")
add_commands(entry_point, matchmaking_commands, prefix="matchmaking")
add_commands(entry_point, platform_commands, prefix="platform")
add_commands(entry_point, qosm_commands, prefix="qosm")
add_commands(entry_point, seasonpass_commands, prefix="seasonpass")
add_commands(entry_point, sessionbrowser_commands, prefix="sessionbrowser")
add_commands(entry_point, social_commands, prefix="social")
add_commands(entry_point, ugc_commands, prefix="ugc")

entry_point.add_command(enter_websocket_mode)
entry_point.add_command(one_shot_websocket)


if __name__ == "__main__":
    entry_point()
