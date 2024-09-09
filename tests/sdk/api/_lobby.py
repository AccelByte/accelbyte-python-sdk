import asyncio
from typing import List, Optional
from unittest import IsolatedAsyncioTestCase

import requests

from accelbyte_py_sdk import initialize
from accelbyte_py_sdk import is_initialized
from accelbyte_py_sdk import reset
from accelbyte_py_sdk.core import InMemoryTokenRepository, WSClientState

from accelbyte_py_sdk.api.lobby.ws_client import LobbyWSClient
from accelbyte_py_sdk.api.lobby.wss_models import ConnectNotif, RefreshTokenRequest


class AsyncMockLobbyServerWebSocketTestCase(IsolatedAsyncioTestCase):
    reachable: bool = True
    base_url: str = "http://localhost:8000"
    ready_endpoint: str = f"{base_url}/ready"

    @classmethod
    def setUpClass(cls) -> None:
        import requests

        cls.reachable = True

        # noinspection PyBroadException
        # pylint: disable=broad-except
        try:
            response = requests.get(cls.ready_endpoint)
            if not response.ok:
                cls.reachable = False
        except Exception as error:
            cls.reachable = False

        if is_initialized():
            reset()

    async def asyncSetUp(self) -> None:
        if not self.reachable:
            self.skipTest(reason=f"'{self.base_url}' unreachable.")

        if is_initialized():
            reset()

        self.token_repo = InMemoryTokenRepository()

        initialize(
            options={
                "config_params": (
                    [self.base_url, "admin", "admin"],
                    {"namespace": "test"},
                ),
                "token": self.token_repo,
            }
        )

        self.messages: List[str] = []

        self.ws_client = LobbyWSClient(
            url=self.base_url, username="admin", password="admin", scheme="ws://"
        )
        self.ws_client.listeners.append(self.on_message)

        self.token_repo.register_observer(self.ws_client)

        await self.ws_client.connect()

    async def asyncTearDown(self) -> None:
        self.messages = []

        await self.ws_client.disconnect()

        if is_initialized():
            reset()

    async def on_message(self, message: str, **kwargs) -> None:
        self.messages.append(message)

    async def wait_for_message_type(
        self, message_type: str, timeout: float
    ) -> Optional[str]:
        elapsed: float = 0.0
        interval: float = 0.25
        while elapsed < timeout:
            for message in self.messages:
                if message.startswith(f"type: {message_type}"):
                    return message
            await asyncio.sleep(interval)
            elapsed += interval
        return None

    def force_close(self, code: int = 1000, reason: str = ""):
        params = {"errorCode": code}
        if reason:
            params["errorMessage"] = reason
        response = requests.post(
            f"{self.base_url}/ws/lobby/force-close",
            params=params,
        )
        self.assertTrue(response.ok)

    async def test_lobby_reconnect_with_session_id(self):
        connect_notif_message = await self.wait_for_message_type(
            message_type="connectNotif", timeout=5.0
        )
        if not connect_notif_message:
            self.fail(msg="did not receive connectNotif")
        self.messages = []

        connect_notif = ConnectNotif.create_from_wsm(
            connect_notif_message, is_strict=False
        )
        original_lobby_session_id = connect_notif.lobby_session_id
        self.assertTrue(bool(original_lobby_session_id))

        self.assertTrue(
            self.ws_client.has_data(self.ws_client.LOBBY_SESSION_ID_DATA_KEY)
        )
        self.assertEqual(
            original_lobby_session_id,
            self.ws_client.get_data(self.ws_client.LOBBY_SESSION_ID_DATA_KEY),
        )

        self.force_close(code=1001)

        await asyncio.sleep(2.0)

        self.assertEqual(self.ws_client.state, WSClientState.CONNECTED)

        connect_notif_message = await self.wait_for_message_type(
            message_type="connectNotif", timeout=5.0
        )
        if not connect_notif_message:
            self.fail(msg="did not receive connectNotif")
        self.messages = []

        connect_notif = ConnectNotif.create_from_wsm(
            connect_notif_message, is_strict=False
        )
        new_lobby_session_id = connect_notif.lobby_session_id
        self.assertTrue(bool(new_lobby_session_id))

        self.assertEqual(original_lobby_session_id, new_lobby_session_id)

    async def test_lobby_no_reconnect(self):
        connect_notif_message = await self.wait_for_message_type(
            message_type="connectNotif", timeout=5.0
        )
        if not connect_notif_message:
            self.fail(msg="did not receive connectNotif")
        self.messages = []

        connect_notif = ConnectNotif.create_from_wsm(
            connect_notif_message, is_strict=False
        )
        original_lobby_session_id = connect_notif.lobby_session_id
        self.assertTrue(bool(original_lobby_session_id))

        self.assertTrue(
            self.ws_client.has_data(self.ws_client.LOBBY_SESSION_ID_DATA_KEY)
        )
        self.assertEqual(
            original_lobby_session_id,
            self.ws_client.get_data(self.ws_client.LOBBY_SESSION_ID_DATA_KEY),
        )

        self.force_close(code=4000)

        await asyncio.sleep(2.0)

        self.assertEqual(self.ws_client.state, WSClientState.DISCONNECTED)

        await asyncio.sleep(2.0)

        self.assertEqual(self.ws_client.state, WSClientState.DISCONNECTED)

        self.assertFalse(
            self.ws_client.has_data(self.ws_client.LOBBY_SESSION_ID_DATA_KEY)
        )

        self.ws_client = LobbyWSClient(
            url=self.base_url, username="admin", password="admin", scheme="ws://"
        )
        self.ws_client.listeners.append(self.on_message)
        await self.ws_client.connect()

        connect_notif_message = await self.wait_for_message_type(
            message_type="connectNotif", timeout=5.0
        )
        if not connect_notif_message:
            self.fail(msg="did not receive connectNotif")
        self.messages = []

        connect_notif = ConnectNotif.create_from_wsm(
            connect_notif_message, is_strict=False
        )
        new_lobby_session_id = connect_notif.lobby_session_id
        self.assertTrue(bool(new_lobby_session_id))

        self.assertNotEqual(original_lobby_session_id, new_lobby_session_id)

    async def test_refresh_token_request(self):
        connect_notif_message = await self.wait_for_message_type(
            message_type="connectNotif", timeout=5.0
        )
        if not connect_notif_message:
            self.fail(msg="did not receive connectNotif")
        self.messages = []

        access_token = "bar"
        self.token_repo.store_token(token={"access_token": access_token})

        refresh_token_request_message = await self.wait_for_message_type(
            message_type="refreshTokenRequest",
            timeout=5.0,
        )
        if not refresh_token_request_message:
            self.fail(msg="did not receive refreshTokenRequest")
        self.messages = []

        refresh_token_request = RefreshTokenRequest.create_from_wsm(
            refresh_token_request_message, is_strict=False
        )
        self.assertEqual(access_token, refresh_token_request.token)

    # noinspection PyUnresolvedReferences
    def _setupAsyncioLoop(self):
        assert self._asyncioTestLoop is None, "asyncio test loop already initialized"
        loop = asyncio.new_event_loop()
        asyncio.set_event_loop(loop)
        loop.set_debug(False)  # overrode to disable this log
        self._asyncioTestLoop = loop
        fut = loop.create_future()
        self._asyncioCallsTask = loop.create_task(self._asyncioLoopRunner(fut))
        loop.run_until_complete(fut)
