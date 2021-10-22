from abc import ABC, abstractmethod

import asyncio
import logging
from typing import Optional, Union

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
