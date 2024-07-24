import asyncio
import logging
import shlex
from typing import Any, IO, List, Optional

import click

from accelbyte_py_sdk.core import get_base_url
from accelbyte_py_sdk.core import WebsocketsWSClient


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

    raw_response: Optional[str] = None

    async def on_message_(msg: str):
        nonlocal raw_response
        raw_response = msg

    ws_client = WebsocketsWSClient(
        uri=base_url,
        uri_prefix=uri_prefix,
    )
    ws_client.listeners.append(on_message_)

    try:
        await ws_client.connect()

        await asyncio.sleep(1.0)  # wait for connectNotif to be sent

        error_count = 0
        for message in messages:
            error = None
            elapsed = 0.0
            sleep = 0.03
            raw_request = message.replace("\\n", "\n")
            raw_response = None
            await ws_client.send(raw_request)
            while elapsed < timeout and raw_response is None:
                await asyncio.sleep(sleep)
                elapsed += sleep
            if elapsed >= timeout:
                error = "TimeoutError"
            elif raw_response is None:
                error = "NoResponseError"
            if raw_request != raw_response:
                flat_request = "\\n".join(raw_request.splitlines(keepends=False))
                flat_response = "\\n".join(raw_response.splitlines(keepends=False))
                error = f"'{flat_request}' != '{flat_response}'"
            if error is not None:
                error_count += 1
                writer.write_error(error)
                if not continue_on_error:
                    break
            else:
                writer.write_log(
                    raw_response.splitlines(keepends=False)[0].removeprefix("type: ")
                )
            await asyncio.sleep(0.1)  # add extra delay between messages
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
