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


class WebsocketsWSClient(WSClient):

    def __init__(self, **kwargs):
        # pylint: disable=no-member
        # NOTE(elmer): websockets uses __all__ to import
        super().__init__(**kwargs)
        self.connection: Optional[websockets.WebSocketClientProtocol] = None

    def __del__(self):
        if self.connection is not None:
            # noinspection PyBroadException
            # pylint: disable=broad-except
            try:
                loop = asyncio.get_event_loop()
                if loop.is_running():
                    loop.create_task(self.connection.close())
                else:
                    loop.run_until_complete(self.connection.close())
            except Exception:
                pass

    async def connect(self):
        if self.connection is None:
            try:
                # pylint: disable=no-member
                # NOTE(elmer): websockets uses __all__ to import
                self.connection = await websockets.connect(self.uri, logger=_LOGGER)
                asyncio.create_task(self._receive())
            except ConnectionRefusedError:
                raise
            except OSError:
                pass

    async def disconnect(self):
        if self.connection is not None:
            await self.connection.close()
            self.connection = None

    async def send(self, data, is_binary: bool = False):
        if self.connection is not None:
            await self.connection.send(data)

    async def _receive(self):
        if self.connection is not None:
            async for message in self.connection:
                self.on_message(message)

    @classmethod
    def create_from_host_port(cls, host: str, port: int):
        return cls(host=host, port=port)

    @classmethod
    def create_from_uri(cls, uri: str):
        return cls(uri=uri)


class Websockets2WSClient:

    def __init__(
            self,
            uri: str,
            username: Optional[str] = None, password: Optional[str] = None,
            access_token: Optional[str] = None,
    ) -> None:
        # pylint: disable=no-member

        if not uri:
            raise ValueError
        if access_token:
            authorization = f"Bearer {access_token}"
        elif username and password:
            authorization = create_basic_authentication(username, password)
        else:
            raise ValueError("Either 'access_token' or ('username', 'password') tuple is required.")

        self._uri: str = uri
        self._headers: Dict[str, str] = {"Authorization": authorization}

        self._connection: Optional[websockets.WebSocketClientProtocol] = None
        self._is_closed: bool = False
        self._message_queue: asyncio.Queue = asyncio.Queue()
        self.__process_messages_task: Optional[asyncio.futures.Future[None]] = None
        self.__receive_messages_task: Optional[asyncio.futures.Future[None]] = None

        self.listeners: List[Callable[[str], Awaitable[None]]] = []

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
            asyncio.ensure_future(
                self._broadcast_message(message)
            )

    async def _receive_messages(self) -> None:
        while not self._is_closed:
            message = await self._connection.recv()
            if message is not None:
                if isinstance(message, bytes):
                    message = message.decode("utf-8")
                await self._message_queue.put(message)
