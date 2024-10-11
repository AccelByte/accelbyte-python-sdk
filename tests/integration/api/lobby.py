import asyncio
from pathlib import Path
from typing import List, Optional

from accelbyte_py_sdk import AccelByteSDK

from tests.integration.test_case import IntegrationTestCase
from tests.integration.test_case import AsyncIntegrationTestCase


class LobbyTestCase(IntegrationTestCase):
    exported_filename: str = "export_config"

    def tearDown(self) -> None:
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:free_form_notification

    def test_free_form_notification(self):
        from accelbyte_py_sdk.api.lobby import free_form_notification
        from accelbyte_py_sdk.api.lobby.models import ModelFreeFormNotificationRequest

        # arrange

        # act
        _, error = free_form_notification(
            body=ModelFreeFormNotificationRequest.create(
                message="MESSAGE", topic="TOPIC"
            )
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:free_form_notification

    # region test:admin_export_config_v1

    def test_admin_export_config_v1(self):
        from accelbyte_py_sdk.api.lobby import admin_export_config_v1

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = admin_export_config_v1()

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:admin_export_config_v1


class AsyncLobbyTestCase(AsyncIntegrationTestCase):
    sdks: List[AccelByteSDK] = []
    user_id: Optional[str] = None

    async def asyncTearDown(self) -> None:
        if self.user_id:
            self.delete_user(user_id=self.user_id)
            self.user_id = None

        for sdk in self.sdks:
            sdk.reset()
        self.sdks = []

        await super().asyncTearDown()

    # region test:send_and_receive_notifications

    async def test_send_and_receive_notifications(self):
        from accelbyte_py_sdk.api.lobby.wss_models import PartyCreateRequest
        from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm

        # arrange

        # act
        party_create_request = PartyCreateRequest()
        party_create_request_wsm = party_create_request.to_wsm()
        await self.ws_client.send(party_create_request_wsm)

        elapsed = 0.0
        interval = 0.016
        timeout = 10.0
        wsm = None
        wsm_type = None
        while True:
            await asyncio.sleep(interval)
            elapsed += interval
            if not self.messages.empty():
                message = self.messages.get_nowait()
                if message is not None:
                    wsm, error = parse_wsm(message)
                    self.assertIsNone(error, error)
                    wsm_type = wsm.get_type()
                    if wsm_type == "partyCreateResponse":
                        break
            if elapsed > timeout:
                break

        # assert
        self.assertIsNotNone(wsm)
        self.assertIsNotNone(wsm_type)
        self.assertEqual("partyCreateResponse", wsm_type)

    # endregion test:send_and_receive_notifications

    # region test:refresh_token_request

    async def test_refresh_token_request(self):
        from accelbyte_py_sdk.core import SDK, get_token_repository
        from accelbyte_py_sdk.services.auth import refresh_login_async
        from accelbyte_py_sdk.api.lobby.wss_models import parse_wsm

        # arrange
        generate_user_result, error = self.generate_user()
        if error:
            self.skipTest(reason=f"unable to create user: {error}")

        username, password, user_id = generate_user_result
        self.user_id = user_id

        user_sdk, error = self.create_user_sdk(
            username=username,
            password=password,
            existing_sdk=SDK,
        )
        if error:
            self.skipTest(reason=f"unable to create user sdk: {error}")
        else:
            self.sdks.append(user_sdk)

        token_repo = user_sdk.get_token_repository()

        token_repo.register_observer(self.ws_client)

        old_access_token = token_repo.get_access_token()
        refresh_token = token_repo.get_refresh_token()
        self.assertTrue(old_access_token)
        self.assertTrue(refresh_token)

        # act
        result, error = await refresh_login_async(refresh_token, sdk=user_sdk)
        if error:
            self.fail(error)

        await asyncio.sleep(1)

        new_access_token = token_repo.get_access_token()

        elapsed = 0.0
        interval = 0.016
        timeout = 60.0
        wsm = None
        wsm_type = None
        while True:
            await asyncio.sleep(interval)
            elapsed += interval
            if not self.messages.empty():
                message = self.messages.get_nowait()
                if message is not None:
                    wsm, error = parse_wsm(message)
                    self.assertIsNone(error, error)
                    wsm_type = wsm.get_type()
                    if wsm_type == "refreshTokenResponse":
                        break
            if elapsed > timeout:
                self.skipTest(
                    reason=f"did not get 'refreshTokenResponse' message within {timeout} seconds"
                )
                break

        # assert
        self.assertTrue(new_access_token)
        self.assertNotEqual(old_access_token, new_access_token)
        self.assertIsNotNone(wsm)
        self.assertIsNotNone(wsm_type)
        self.assertEqual("refreshTokenResponse", wsm_type)

        # clean up
        token_repo.unregister_observer(self.ws_client)

    # endregion test:refresh_token_request

    # end of file
