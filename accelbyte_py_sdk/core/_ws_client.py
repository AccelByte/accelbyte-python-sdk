# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from abc import ABC, abstractmethod

import asyncio
import logging
from typing import Awaitable, Callable, Dict, List, Optional, Union

import websockets

from ._utils import create_basic_authentication

_LOGGER = logging.getLogger("accelbyte_py_sdk.ws")


class WSClient(ABC):
    def __init__(self, **kwargs):
        if "host" in kwargs and "port" in kwargs:
            self.host = kwargs.get("host")
            self.port = kwargs.get("port")
            self.uri = f"{self.host}:{self.port}"
        elif "uri" in kwargs:
            self.uri = kwargs.get("uri")

    @abstractmethod
    async def connect(self):
        pass

    @abstractmethod
    async def disconnect(self):
        pass

    @abstractmethod
    async def send(self, data, is_binary: bool = False):
        pass

    # noinspection PyMethodMayBeStatic
    def on_message(self, data: Union[bytes, str], is_binary: bool = False):
        # pylint: disable=no-self-use
        _LOGGER.debug(data)


class WebsocketsWSClient:
    def __init__(
        self,
        uri: str,
        username: Optional[str] = None,
        password: Optional[str] = None,
        access_token: Optional[str] = None,
        uri_prefix: Optional[str] = None,
        uri_suffix: Optional[str] = None,
    ) -> None:
        # pylint: disable=no-member

        if not uri:
            raise ValueError
        scheme, uri = uri.split("://")
        uri_prefix = uri_prefix or "wss://"
        uri_suffix = uri_suffix or "/lobby/"
        uri = f"{uri_prefix}{uri}{uri_suffix}"
        if access_token:
            authorization = f"Bearer {access_token}"
        elif username and password:
            authorization = create_basic_authentication(username, password)
        else:
            authorization = None

        self._uri: str = uri
        self._headers: Optional[Dict[str, str]] = (
            {"Authorization": authorization} if authorization is not None else None
        )

        self._connection: Optional[websockets.WebSocketClientProtocol] = None
        self._is_closed: bool = False
        self._message_queue: asyncio.Queue = asyncio.Queue()
        self.__process_messages_task: Optional[asyncio.futures.Future[None]] = None
        self.__receive_messages_task: Optional[asyncio.futures.Future[None]] = None

        self.listeners: List[Callable[[str], Awaitable[None]]] = []

    @property
    def uri(self) -> str:
        return self._uri

    async def connect(self) -> None:
        # pylint: disable=no-member

        old_connection = None if self._connection is None else self._connection

        self._connection = await websockets.connect(
            uri=self._uri,
            extra_headers=self._headers,
            logger=_LOGGER,
        )

        self._is_closed = False

        self._message_queue = asyncio.Queue()

        if self.__process_messages_task is None:
            self.__process_messages_task = asyncio.ensure_future(
                self._process_messages()
            )

        if self.__receive_messages_task is None:
            self.__receive_messages_task = asyncio.ensure_future(
                self._receive_messages()
            )

        if old_connection is not None:
            await old_connection.close()

    async def disconnect(self) -> None:
        self._is_closed = True
        await self._close()
        if self.__process_messages_task is not None:
            self.__process_messages_task.cancel()
            self.__process_messages_task = None
        if self.__receive_messages_task is not None:
            self.__receive_messages_task.cancel()
            self.__receive_messages_task = None

    async def send(self, message: str) -> None:
        await self._connection.send(message)

    async def _broadcast_message(self, message: str) -> None:
        for listener in self.listeners:
            await listener(message)

    async def _close(self) -> None:
        if self._connection is not None:
            await self._connection.close()

    async def _process_messages(self):
        while not self._is_closed:
            message = await self._message_queue.get()
            asyncio.ensure_future(self._broadcast_message(message))

    async def _receive_messages(self) -> None:
        while not self._is_closed:
            message = await self._connection.recv()
            if message is not None:
                if isinstance(message, bytes):
                    message = message.decode("utf-8")
                await self._message_queue.put(message)
