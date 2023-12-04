from pathlib import Path

from tests.integration.test_case import IntegrationTestCase

from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelRequest


class MatchmakingTestCase(IntegrationTestCase):
    exported_filename: str = "exported"
    criteria: str = "distance"
    duration: int = 300
    game_mode: str = "gamemode"
    max_number: int = 2
    min_number: int = 2
    channel_dict = {
        "deployment": "",
        "description": "DESCRIPTION",
        "find_match_timeout_seconds": duration,
        "game_mode": game_mode,
        "max_delay_ms": duration,
        "rule_set": {
            "alliance": {
                "combination": {
                    "alliances": [],
                    "has_combination": False,
                    "role_flexing_enable": False,
                    "role_flexing_player": 0,
                    "role_flexing_second": 0,
                },
                "max_number": max_number,
                "min_number": min_number,
                "player_max_number": max_number,
                "player_min_number": min_number,
            },
            "flexing_rule": [],
            "match_options": {},
            "matching_rule": [],
            "rebalance_enable": False,
        },
        "session_queue_timeout_seconds": duration,
    }
    models_channel_request = ModelsChannelRequest.create_from_dict(channel_dict)

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        _, _ = delete_channel_handler(channel=self.models_channel_request.game_mode)

        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        super().tearDown()

    # region test:create_channel_handler

    def test_create_channel_handler(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        # arrange
        _, _ = delete_channel_handler(channel=self.models_channel_request.game_mode)

        # act
        _, error = create_channel_handler(body=self.models_channel_request)

        # assert
        self.assertIsNone(error, error)

    # endregion test:create_channel_handler

    # region test:delete_channel_handler

    def test_delete_channel_handler(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(
            msg=f"Failed to set up channel handler. {str(error)}",
            condition=error is not None,
        )

        # act
        _, error = delete_channel_handler(channel=self.models_channel_request.game_mode)

        # assert
        self.assertIsNone(error, error)

    # endregion test:delete_channel_handler

    # region test:get_single_matchmaking_channel

    def test_get_single_matchmaking_channel(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import get_single_matchmaking_channel

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(
            msg=f"Failed to set up channel handler. {str(error)}",
            condition=error is not None,
        )

        # act
        _, error = get_single_matchmaking_channel(
            channel_name=self.models_channel_request.game_mode
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_single_matchmaking_channel

    # region test:update_matchmaking_channel

    def test_update_matchmaking_channel(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import update_matchmaking_channel
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateAllianceRule
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateChannelRequest
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateRuleset

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(
            msg=f"Failed to set up channel handler. {str(error)}",
            condition=error is not None,
        )

        # act
        body = ModelsUpdateChannelRequest.create_from_dict(self.channel_dict)
        body.description = "KETARANGAN"
        _, error = update_matchmaking_channel(
            body=body,
            channel_name=self.game_mode,
        )

        # assert
        self.assertIsNone(error, error)

    # endregion test:update_matchmaking_channel

    # region test:get_all_party_in_all_channel

    def test_get_all_party_in_all_channel(self):
        from accelbyte_py_sdk.api.matchmaking import get_all_party_in_all_channel

        # arrange

        # act
        result, error = get_all_party_in_all_channel()

        # assert
        self.assertIsNone(error, error)

    # endregion test:get_all_party_in_all_channel

    # region test:export_channels

    def test_export_channels(self):
        from accelbyte_py_sdk.api.matchmaking import export_channels

        # arrange
        exported_file_path = Path(self.exported_filename)
        exported_file_path.unlink(missing_ok=True)

        # act
        result, error = export_channels()

        if result is not None:
            exported_file_path.write_bytes(result)

        # assert
        self.assertIsNone(error, error)
        self.assertTrue(exported_file_path.exists())
        self.assertGreater(exported_file_path.stat().st_size, 0)

    # endregion test:export_channels

    # end of file
