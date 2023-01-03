from pathlib import Path

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.core import generate_id
from accelbyte_py_sdk.api.achievement.models import ModelsAchievementRequest


class EventLog(IntegrationTestCase):

    # region test:get_event_specific_user_v2_handler

    def test_get_event_specific_user_v2_handler(self):
        from accelbyte_py_sdk.api.eventlog import get_event_specific_user_v2_handler

        # arrange
        result, error = self.generate_user()
        if error:
            self.skipTest(reason="failed to generate user ID")

        username, password, user_id = result

        # act
        result, error = get_event_specific_user_v2_handler(
            user_id=user_id,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_event_specific_user_v2_handler

    # region test:query_event_stream_handler

    def test_query_event_stream_handler(self):
        from accelbyte_py_sdk.core import get_client_id
        from accelbyte_py_sdk.api.eventlog import query_event_stream_handler
        from accelbyte_py_sdk.api.eventlog.models import ModelsGenericQueryPayload

        # arrange
        client_id, error = get_client_id()
        if error:
            self.fail(msg=error)

        # act
        _, error = query_event_stream_handler(
            body=ModelsGenericQueryPayload.create_from_dict(
                {
                    "clientId": client_id,
                }
            )
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:query_event_stream_handler

    # end of file
