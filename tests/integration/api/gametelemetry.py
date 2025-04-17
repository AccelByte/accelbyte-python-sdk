from tests.integration.test_case import IntegrationTestCase


class GametelemetryTestCase(IntegrationTestCase):

    # region test:save_events_v1

    def test_save_events_v1(self):
        # DOC-REDACT(start): this tag will remove this section from the common use cases markdown file
        if self.using_ags_starter:
            self.skipTest(reason="Test not applicable to AGS Starter.")
        # DOC-REDACT(end)

        from accelbyte_py_sdk.api.gametelemetry import (
            protected_save_events_game_telemetry_v1_protected_events_post,
        )
        from accelbyte_py_sdk.api.gametelemetry.models import TelemetryBody

        # arrange

        # act
        result, error = protected_save_events_game_telemetry_v1_protected_events_post(
            body=[
                TelemetryBody.create(
                    event_name="pythonevent",
                    event_namespace="test",
                    payload={"foo": "bar"},
                )
            ]
        )

        # assert
        self.assertIsNone(error)

    # endregion test:save_events_v1
