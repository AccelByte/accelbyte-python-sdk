from abc import ABC, abstractmethod

import asyncio
import logging
from typing import Callable, Optional, Type, Union

from autobahn.asyncio.websocket import WebSocketClientFactory
from autobahn.asyncio.websocket import WebSocketClientProtocol
from autobahn.websocket.protocol import WebSocketProtocol

import websockets

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


class AutobahnWSClientProtocol(WebSocketClientProtocol):

    def __init__(self):
        super().__init__()
        self.on_message_callback: Optional[Callable[[Union[bytes, str], bool], None]] = None

    def onConnect(self, response):
        _LOGGER.debug(f"Server connected: {response.peer}")

    def onConnecting(self, transport_details):
        _LOGGER.debug(f"Connecting transport details: {transport_details}")
        return None

    def onOpen(self):
        _LOGGER.debug("Connection open.")

    def onClose(self, wasClean, code, reason):
        _LOGGER.debug(f"Connection closed: [{code}] {reason}")

    def onMessage(self, payload, isBinary):
        if self.on_message_callback:
            # pylint: disable=not-callable
            self.on_message_callback(payload, isBinary)


class AutobahnWSClient(WSClient):

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        if "protocol" not in kwargs:
            raise ValueError
        client_protocol = kwargs.get("protocol")
        if not issubclass(client_protocol, WebSocketClientProtocol):
            raise ValueError
        self.client_protocol = client_protocol
        self.transport = None
        self.protocol = None

    async def connect(self):
        if self.protocol is None:
            factory = WebSocketClientFactory()
            factory.protocol = self.client_protocol
            loop = asyncio.get_event_loop()
            connection = await loop.create_connection(factory, self.host, self.port)
            self.transport, self.protocol = connection
            self.protocol.on_message_callback = self._on_message
            await self._sleep_until_state_open()

    async def disconnect(self):
        if self.protocol is not None:
            self.protocol.sendClose(code=WebSocketProtocol.CLOSE_STATUS_CODE_NORMAL)

    async def send(self, data, is_binary: bool = False):
        if self.protocol is not None:
            self._send(data, is_binary)

    def _on_message(self, data: Union[bytes, str], is_binary: bool = False):
        data = data if is_binary else data.decode("utf-8")
        self.on_message(data, is_binary)

    def _send(self, data, is_binary: bool = False):
        data = data if is_binary else data.encode("utf-8")
        self.protocol.sendMessage(payload=data, isBinary=is_binary)

    async def _sleep_until_state_open(self, timeout: float = 3.0, check_interval: float = 0.003):
        elapsed = 0.0
        while elapsed < timeout and self.protocol.state != WebSocketProtocol.STATE_OPEN:
            await asyncio.sleep(check_interval)
            elapsed += check_interval
        if self.protocol.state != WebSocketProtocol.STATE_OPEN:
            raise asyncio.TimeoutError

    @classmethod
    def create(cls, protocol: Type[WebSocketClientProtocol], host: str, port: int):
        return cls(protocol=protocol, host=host, port=port)


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
