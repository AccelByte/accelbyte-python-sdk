from ._integration_test_case import IntegrationTestCase


class GametelemetryTestCase(IntegrationTestCase):

    steam_id: str = "76561199259217491"

    def test_get_playtime_v1(self):
        from accelbyte_py_sdk.api.gametelemetry import (
            protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get,
        )

        # arrange

        # act
        (
            result,
            error,
        ) = protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
            steam_id=self.steam_id
        )

        # assert
        self.assertIsNone(error)

        if not isinstance(result, int):
            self.skipTest(reason="Playtime not of type int.")

    def test_save_events_v1(self):
        from datetime import datetime
        from accelbyte_py_sdk.api.gametelemetry import (
            protected_save_events_game_telemetry_v1_protected_events_post,
        )
        from accelbyte_py_sdk.api.gametelemetry.models import TelemetryBody

        # arrange

        # act
        result, error = protected_save_events_game_telemetry_v1_protected_events_post(
            body=[
                TelemetryBody.create(
                    event_id="pythonsdk",
                    event_name="pythonevent",
                    event_namespace="test",
                    event_timestamp=datetime.utcnow().isoformat(),
                    payload={"foo": "bar"},
                )
            ]
        )

        # assert
        self.assertIsNone(error)

    def test_update_playtime_v1(self):
        from accelbyte_py_sdk.api.gametelemetry import (
            protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put,
        )
        from accelbyte_py_sdk.core import HttpResponse

        # act
        (
            result,
            error,
        ) = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
            playtime="4",
            steam_id=self.steam_id,
        )

        # assert
        if (
            error is not None
            and isinstance(error, HttpResponse)
            and "user not found" in str(error.content).lower()
        ):
            self.skipTest(reason="User was not found.")
        else:
            self.assertIsNone(error, error)
