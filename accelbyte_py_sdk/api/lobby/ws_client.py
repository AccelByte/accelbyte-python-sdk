# Copyright (c) 2024 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
import asyncio
from typing import Optional

from ...core import WSClient, WSClientProtocol, WebSocketMessageParserException
from ...core import TokenRepositoryObserver

from .wss_models import ConnectNotif, RefreshTokenRequest


class LobbyWSClient(WSClient):
    LOBBY_SESSION_ID_DATA_KEY: str = "lobby_session_id"
    LOBBY_SESSION_ID_HEADER_KEY: str = "X-Ab-LobbySessionID"

    def __init__(self, **kwargs) -> None:
        super().__init__(**kwargs)

    async def connect(self, *, reconnecting: bool = False, **kwargs) -> bool:
        url_suffix = kwargs.pop("url_suffix", "/lobby/")
        extra_headers = kwargs.pop("extra_headers", {})

        if reconnecting and self.has_data(self.LOBBY_SESSION_ID_DATA_KEY):
            if lobby_session_id := self.get_data(self.LOBBY_SESSION_ID_DATA_KEY):
                extra_headers[self.LOBBY_SESSION_ID_HEADER_KEY] = lobby_session_id

        if not extra_headers:
            extra_headers = None

        return await super().connect(
            reconnecting=reconnecting,
            url_suffix=url_suffix,
            extra_headers=extra_headers,
            **kwargs,
        )

    async def on_message(self, message: str, **kwargs) -> None:
        if message.startswith("type: connectNotif"):
            try:
                connect_notif = ConnectNotif.create_from_wsm(message, is_strict=False)
                if connect_notif.lobby_session_id:
                    self.set_data(
                        self.LOBBY_SESSION_ID_DATA_KEY, connect_notif.lobby_session_id
                    )
            except WebSocketMessageParserException as error:
                pass  # explicitly ignore

        await super().on_message(message=message, **kwargs)

    def on_access_token_changed(self, access_token: Optional[str]) -> None:
        if not access_token:
            return

        refresh_token_request = RefreshTokenRequest()
        refresh_token_request.token = access_token

        asyncio.ensure_future(self.send(message=refresh_token_request.to_wsm()))


assert isinstance(LobbyWSClient, WSClientProtocol)
assert isinstance(LobbyWSClient, TokenRepositoryObserver)


__all__ = [
    "LobbyWSClient",
]
