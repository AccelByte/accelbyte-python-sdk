import asyncio

from ._integration_test_case import IntegrationTestCase
from ._integration_test_case import AsyncIntegrationTestCase


class LobbyTestCase(IntegrationTestCase):
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


class AsyncLobbyTestCase(AsyncIntegrationTestCase):
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


# endregion test:free_form_notification
