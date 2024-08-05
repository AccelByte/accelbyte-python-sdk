import asyncio
import logging
import shlex
from typing import Any, IO, List, Optional

import click

from accelbyte_py_sdk.core import get_base_url
from accelbyte_py_sdk.api.lobby.ws_client import LobbyWSClient


class SessionWriter:
    def __init__(self):
        self.writes = []

    def write_log(self, log: str) -> str:
        log = f"success: {log}"
        self.writes.append(log)
        return log

    def write_error(self, error: str) -> str:
        error = f"error: {error}"
        self.writes.append(error)
        return error

    def write_warning(self, warning: str) -> str:
        warning = f"warning: {warning}"
        self.writes.append(warning)
        return warning

    def flush(self) -> str:
        return "\n".join(self.writes)


class TapSessionWriter(SessionWriter):
    def __init__(self):
        super().__init__()
        self.count = 0

    def write_log(self, log: str) -> str:
        self.count += 1
        log = f"ok {self.count} - {log}"
        self.writes.append(log)
        return log

    def write_error(self, error: str) -> str:
        self.count += 1
        error = f"not ok {self.count} - {error}"
        self.writes.append(error)
        return error

    def write_warning(self, warning: str) -> str:
        self.count += 1
        warning = f"ok {self.count} - # SKIP {warning}"
        self.writes.append(warning)
        return warning

    def flush(self) -> str:
        return f"TAP version 13\n1..{self.count}\n" + "\n".join(self.writes)


async def _start_batched_ws_session_async(
    messages: List[str],
    continue_on_error: bool,
    timeout: float,
    mode: str,
    uri_prefix: str,
    writer: str,
):
    writer = TapSessionWriter() if writer == "tap" else SessionWriter()

    if mode != "echo":
        writer.write_error("ModeNotSupportedError")
        print(writer.flush())
        exit(1)

    base_url, error = get_base_url()
    if error:
        writer.write_error("BaseUrlNotFoundError")
        print(writer.flush())
        exit(1)

    received_messages: List[str] = []

    async def on_message_(msg: str):
        received_messages.append(msg)

    ws_client = LobbyWSClient(
        uri=base_url,
        uri_prefix=uri_prefix,
    )
    ws_client.listeners.append(on_message_)

    try:
        await ws_client.connect()

        coros = [ws_client.send(message.replace("\\n", "\n")) for message in messages]

        await asyncio.gather(*coros)

        await asyncio.sleep(1.0)  # wait for all message echoes

        missing = []

        for message in messages:
            sent_message = message.replace("\\n", "\n")
            message_type = sent_message.splitlines(keepends=False)[0].removeprefix(
                "type: "
            )
            if sent_message in received_messages:
                writer.write_log(message_type)
            else:
                writer.write_error(f"{message_type} - did not receive echo")
                missing.append(message)

        error_count = len(missing)
    finally:
        await ws_client.disconnect()
        print(writer.flush())

    exit(0 if error_count == 0 else 1)


def _start_batched_ws_session(
    continue_on_error: bool = False,
    mode: str = "echo",
    timeout: float = 10.0,
    uri_prefix: str = "ws://",
    writer: str = "default",
):
    messages: List[str] = []

    while True:
        message = input()

        if message == "send()":
            break
        elif message.strip() == "":
            continue

        message = message.strip("'")

        messages.append(message)

    asyncio.run(
        _start_batched_ws_session_async(
            messages=messages,
            continue_on_error=continue_on_error,
            mode=mode,
            timeout=timeout,
            uri_prefix=uri_prefix,
            writer=writer,
        )
    )


start_batched_ws_session = click.command("start-batched-ws-session")(
    click.option("--continue_on_error", is_flag=True)(
        click.option(
            "--mode", type=click.Choice(["echo"], case_sensitive=False), default="echo"
        )(
            click.option("--timeout", type=float, default=10.0)(
                click.option("--uri_prefix", type=str, default="ws://")(
                    click.option(
                        "--writer",
                        type=click.Choice(["default", "tap"], case_sensitive=False),
                        default="default",
                    )(_start_batched_ws_session)
                )
            )
        )
    )
)


def __intercept(ctx, attr: str):
    def __intercept_impl(message: Optional[Any] = None, *args, **kwargs):
        setattr(ctx, "attr", message)

    return __intercept_impl


def _one_shot_websocket(
    raw_text: str,
    mode: str = "echo",
    timeout: float = 10.0,
    uri_prefix: str = "ws://",
    writer: str = "default",
):
    asyncio.run(
        _start_batched_ws_session_async(
            messages=[raw_text],
            continue_on_error=False,
            mode=mode,
            timeout=timeout,
            uri_prefix=uri_prefix,
            writer=writer,
        )
    )


one_shot_websocket = click.command("one-shot-websocket")(
    click.argument("raw_text", type=str)(
        click.option(
            "--mode", type=click.Choice(["echo"], case_sensitive=False), default="echo"
        )(
            click.option("--timeout", type=float, default=10.0)(
                click.option("--uri_prefix", type=str, default="ws://")(
                    click.option(
                        "--writer",
                        type=click.Choice(["default", "tap"], case_sensitive=False),
                        default="default",
                    )(_one_shot_websocket)
                )
            )
        )
    )
)
