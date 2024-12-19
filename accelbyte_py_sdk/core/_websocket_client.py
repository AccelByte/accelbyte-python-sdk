# Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

import asyncio
import math
from copy import deepcopy
from enum import Enum, auto
from typing import Any, Dict, List, Optional, Union
from typing import Protocol, runtime_checkable

import websockets
import websockets.exceptions

from ._http_utils import create_basic_authentication


def empty_queue(queue: asyncio.Queue) -> None:
    while not queue.empty():
        queue.get_nowait()
        queue.task_done()


def make_url(url: str, **kwargs) -> str:
    scheme, base = url.split("://", maxsplit=1)

    if scheme.lower() not in ("ws", "wss"):
        scheme = kwargs.get("scheme", None)
        if scheme is None:
            scheme = kwargs.get("uri_prefix", None)  # backwards compatibility
        if scheme is None:
            scheme = "wss"

    scheme = scheme.removesuffix("://")

    suffix = kwargs.get("url_suffix", "")
    if not suffix:
        suffix = kwargs.get("uri_suffix", "")  # backwards compatibility

    return f"{scheme}://{base}{suffix}"


def make_headers(**kwargs) -> Optional[Dict[str, str]]:
    headers = {}

    if (
        (extra_headers := kwargs.get("extra_headers", {}))
        and isinstance(extra_headers, dict)
        and extra_headers
    ):
        headers.update(extra_headers)

    if (access_token := kwargs.get("access_token", None)) and isinstance(
        access_token, str
    ):
        headers["Authorization"] = f"Bearer {access_token}"
    elif (username := kwargs.get("username", None)) and isinstance(username, str):
        password = kwargs.get("password", "")
        headers["Authorization"] = create_basic_authentication(
            username=username, password=password
        )

    return headers if headers else None


class WSClientState(Enum):
    UNINITIALIZED = auto()
    CONNECTING = auto()
    CONNECTED = auto()
    DISCONNECTING = auto()
    DISCONNECTED = auto()


@runtime_checkable
class WSClientListenerC(Protocol):
    async def __call__(self, message: str, **kwargs) -> None:
        ...


@runtime_checkable
class WSClientListenerM(Protocol):
    async def on_message(self, message: str, **kwargs) -> None:
        ...


WSClientListener = Union[WSClientListenerC, WSClientListenerM]


@runtime_checkable
class WSClientProtocol(Protocol):
    # noinspection PyPropertyDefinition
    @property
    def state(self) -> WSClientState:
        ...

    async def connect(self, *, reconnecting: bool = False, **kwargs) -> bool:
        ...

    async def disconnect(self, *, code: int = 1000, reason: str = "", **kwargs) -> None:
        ...

    async def send(self, message: str, **kwargs) -> None:
        ...

    async def on_connect(self, *, reconnecting: bool = False, **kwargs) -> None:
        ...

    async def on_disconnect(
        self, *, code: int = 1000, reason: str = "", **kwargs
    ) -> None:
        ...

    async def on_message(self, message: str, **kwargs) -> None:
        ...


class WSClient:
    RECONNECT_ATTEMPTS_DATA_KEY: str = "reconnect_attempts"

    def __init__(
        self,
        **kwargs,
    ) -> None:
        self._state: WSClientState = WSClientState.UNINITIALIZED
        self._data: Dict[str, Any] = {}
        self._connection = None
        self._send_queue: Optional[asyncio.Queue] = None
        self._recv_queue: Optional[asyncio.Queue] = None
        self._recv_queue: Optional[asyncio.Queue] = None
        self._send_future: Optional[asyncio.Task] = None
        self._recv_future: Optional[asyncio.Task] = None
        self._mesg_future: Optional[asyncio.Task] = None
        self._init_kwargs: Dict[str, Any] = kwargs

        self._conn_event: asyncio.Event = asyncio.Event()
        self._conn_future: asyncio.Task = asyncio.ensure_future(self._conn_task())

        self.listeners: List[WSClientListener] = []

    @property
    def state(self) -> WSClientState:
        return self._state

    async def connect(self, *, reconnecting: bool = False, **kwargs) -> bool:
        if self._state not in (WSClientState.UNINITIALIZED, WSClientState.DISCONNECTED):
            return False

        connect_kwargs: Dict[str, Any] = deepcopy(self._init_kwargs)
        connect_kwargs.update(kwargs)

        url: str = connect_kwargs.pop("url", "")
        if not url:
            url = connect_kwargs.pop("uri", "")  # backwards compatibility
        if not url:
            raise ValueError("Missing or invalid 'url' (or 'uri') keyword argument.")

        url = self._make_url(url, **connect_kwargs)
        headers = self._make_headers(**connect_kwargs)

        self._state = WSClientState.CONNECTING
        self._connection = await self._create_connection(
            url=url, headers=headers, **connect_kwargs
        )
        self._setup()
        self._state = WSClientState.CONNECTED

        await self.on_connect(reconnecting=reconnecting, **kwargs)

        return True

    async def disconnect(self, *, code: int = 1000, reason: str = "", **kwargs) -> None:
        if self._state != WSClientState.CONNECTED:
            return

        self._state = WSClientState.DISCONNECTING
        self._tear_down()
        await self._close_connection(code=code, reason=reason)
        self._connection = None
        self._state = WSClientState.DISCONNECTED

        await self.on_disconnect(code=code, reason=reason)

    async def send(self, message: str, **kwargs) -> None:
        await self._send_queue.put(message)

    async def on_connect(self, *, reconnecting: bool = False, **kwargs) -> None:
        self.set_data(self.RECONNECT_ATTEMPTS_DATA_KEY, 0)

    async def on_disconnect(
        self, *, code: int = 1000, reason: str = "", **kwargs
    ) -> None:
        if self.should_reconnect(code=code, reason=reason):
            self._set_reconnect_conn_event_data(
                code=code, reason=reason, number_of_attempts=0
            )
            self._conn_event.set()
        else:
            self.clear_data()

    async def on_message(self, message: str, **kwargs) -> None:
        for listener in self.listeners:
            if isinstance(listener, WSClientListenerC):
                await listener(message, **kwargs)
            elif isinstance(listener, WSClientListenerM):
                await listener.on_message(message, **kwargs)
            else:
                raise TypeError(listener)

    # noinspection PyMethodMayBeStatic
    def should_reconnect(
        self, code: int, reason: str = "", number_of_attempts: int = 0
    ) -> bool:
        return 1001 <= code <= 2999

    # noinspection PyMethodMayBeStatic
    def reconnect_delay(self, number_of_attempts: int) -> float:
        interval: float = 1.0
        backoff_rate: float = 2.0
        return interval * math.pow(backoff_rate, number_of_attempts)

    def get_data(self, key: str) -> Any:
        return self._data.get(key)

    def has_data(self, key: str) -> bool:
        return key in self._data

    def set_data(self, key: str, value: Any) -> None:
        self._data[key] = value

    def set_data_default(self, key: str, default: Any) -> Any:
        return self._data.setdefault(key, default)

    def clear_data(self) -> None:
        self._data.clear()

    def _setup(self) -> None:
        self._send_queue = asyncio.Queue()
        self._recv_queue = asyncio.Queue()
        self._send_future = asyncio.ensure_future(self._send_task())
        self._recv_future = asyncio.ensure_future(self._recv_task())
        self._mesg_future = asyncio.ensure_future(self._mesg_task())

    def _tear_down(self) -> None:
        self._mesg_future.cancel()
        self._recv_future.cancel()
        self._send_future.cancel()
        empty_queue(self._recv_queue)
        empty_queue(self._send_queue)
        self._mesg_future = None
        self._recv_future = None
        self._send_future = None
        self._recv_queue = None
        self._send_queue = None

    # noinspection PyMethodMayBeStatic
    def _make_url(self, url: str, **kwargs) -> str:
        return make_url(url=url, **kwargs)

    # noinspection PyMethodMayBeStatic
    def _make_headers(self, **kwargs) -> Dict[str, str]:
        return make_headers(**kwargs)

    # noinspection PyMethodMayBeStatic
    async def _create_connection(
        self, url: str, headers: Optional[Dict[str, str]], **kwargs
    ) -> Any:
        if headers and "additional_headers" in kwargs:
            additional_headers = kwargs.pop("additional_headers")
            if additional_headers:
                headers.update(additional_headers)
        if headers and "extra_headers" in kwargs:
            extra_headers = kwargs.pop("extra_headers")
            if extra_headers:
                headers.update(extra_headers)

        for key in list(kwargs.keys()):
            if key not in (
                # WebSocket
                "origin",
                "extensions",
                "subprotocols",
                # # additional_headers,
                "user_agent_header",
                "compression",
                "process_exception",
                # Timeouts
                "open_timeout",
                "ping_interval",
                "ping_timeout",
                "close_timeout",
                # Limits
                "max_size",
                "max_queue",
                "write_limit",
                # Logging
                "logger",
                # Escape hatch for advanced customization
                "create_connection",
            ):
                _ = kwargs.pop(key)

        # pylint: disable=no-member
        return await websockets.connect(uri=url, additional_headers=headers, **kwargs)

    async def _close_connection(
        self, code: int = 1000, reason: str = "", **kwargs
    ) -> None:
        await self._connection.close(code=code, reason=reason)

    async def _conn_task(self) -> None:
        while True:
            await self._conn_event.wait()
            self._conn_event.clear()

            data = getattr(self._conn_event, "data", None)
            if not data:
                continue

            type = data.get("type", "")
            code = data.get("code", 1000)
            reason = data.get("reason", "")
            number_of_attempts = data.get("number_of_attempts", 0)
            self._clear_conn_event_data()

            if type == "disconnect":
                await self.disconnect(code=code, reason=reason)
            elif type == "reconnect":
                delay = self.reconnect_delay(number_of_attempts=number_of_attempts)
                await asyncio.sleep(delay=delay)
                did_reconnect = await self.connect(reconnecting=True)
                if not did_reconnect:
                    if self.should_reconnect(
                        code=code,
                        reason=reason,
                        number_of_attempts=number_of_attempts + 1,
                    ):
                        self._set_reconnect_conn_event_data(
                            code=code,
                            reason=reason,
                            number_of_attempts=number_of_attempts + 1,
                        )
                        self._conn_event.set()
                    else:
                        self.clear_data()
            else:
                raise ValueError(f"unknown event type: {type}")

    async def _send_task(self) -> None:
        while True:
            if self._connection is not None and self._send_queue is not None:
                message = await self._send_queue.get()
                try:
                    await self._connection.send(message)
                except websockets.exceptions.ConnectionClosed as closed:
                    self._set_disconnect_conn_event_data_from_exception(closed=closed)
                    self._conn_event.set()

            await asyncio.sleep(0.01)

    async def _recv_task(self) -> None:
        while True:
            if self._connection is not None and self._recv_queue is not None:
                try:
                    message = await self._connection.recv()
                    if isinstance(message, bytes):
                        message = message.decode(encoding="utf-8")
                    await self._recv_queue.put(message)
                except websockets.exceptions.ConnectionClosed as closed:
                    self._set_disconnect_conn_event_data_from_exception(closed=closed)
                    self._conn_event.set()

            await asyncio.sleep(0.01)

    async def _mesg_task(self) -> None:
        while True:
            if self._recv_queue is not None:
                message = await self._recv_queue.get()
                await self.on_message(message=message)

            await asyncio.sleep(0.01)

    def _set_disconnect_conn_event_data(self, code: int, reason: str = "") -> None:
        setattr(
            self._conn_event,
            "data",
            {
                "type": "disconnect",
                "code": code,
                "reason": reason,
            },
        )

    def _set_disconnect_conn_event_data_from_exception(
        self, closed: websockets.exceptions.ConnectionClosed
    ) -> None:
        if closed.sent is not None:
            source = closed.sent
        elif closed.rcvd is not None:
            source = closed.rcvd
        else:
            source = closed
        self._set_disconnect_conn_event_data(code=source.code, reason=source.reason)

    def _set_reconnect_conn_event_data(
        self, code: int, reason: str = "", number_of_attempts: int = 0
    ) -> None:
        setattr(
            self._conn_event,
            "data",
            {
                "type": "reconnect",
                "code": code,
                "reason": reason,
                "number_of_attempts": number_of_attempts,
            },
        )

    def _clear_conn_event_data(self) -> None:
        setattr(self._conn_event, "data", None)


assert isinstance(WSClient, WSClientProtocol)


__all__ = [
    "WSClient",
    "WSClientListener",
    "WSClientListenerC",
    "WSClientListenerM",
    "WSClientProtocol",
    "WSClientState",
]
