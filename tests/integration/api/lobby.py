import asyncio
from pathlib import Path

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

    # end of file
