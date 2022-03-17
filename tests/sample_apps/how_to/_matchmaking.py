from typing import List

from ._integration_test_case import IntegrationTestCase

from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceRule
from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceFlexingRule
from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsFlexingRule
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchingRule
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchOption
from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchOptionRule
from accelbyte_py_sdk.api.matchmaking.models import ModelsRuleSet
from accelbyte_py_sdk.api.matchmaking.models import ModelsSubGameMode


class MatchmakingTestCase(IntegrationTestCase):

    criteria: str = "distance"
    duration: int = 300
    game_mode: str = "gamemode"
    max_number: int = 2
    min_number: int = 2
    models_alliance_rule: ModelsAllianceRule = ModelsAllianceRule.create(
        max_number=max_number,
        min_number=min_number,
        player_max_number=max_number,
        player_min_number=min_number
    )
    models_alliance_flexing_rules: List[ModelsAllianceFlexingRule] = [
        ModelsAllianceFlexingRule.create(
            duration=duration,
            max_number=max_number,
            min_number=min_number,
            player_max_number=max_number,
            player_min_number=min_number
        )
    ]
    models_flexing_rules: List[ModelsFlexingRule] = [
        ModelsFlexingRule.create(
            attribute="<attribute>",
            criteria=criteria,
            duration=duration,
            reference=10
        )
    ]
    models_match_options: List[ModelsMatchOption] = [
        ModelsMatchOption.create(
            name="<name>",
            type_="<type>"
        )
    ]
    models_matching_rules: List[ModelsMatchingRule] = [
        ModelsMatchingRule.create(
            attribute="<attribute>",
            criteria=criteria,
            reference=10
        )
    ]
    models_channel_request = ModelsChannelRequest.create(
        deployment="default",
        description="DESCRIPTION",
        find_match_timeout_seconds=duration,
        game_mode=game_mode,
        max_delay_ms=duration,
        rule_set=ModelsRuleSet.create(
            alliance=models_alliance_rule,
            alliance_flexing_rule=models_alliance_flexing_rules,
            flexing_rule=models_flexing_rules,
            match_options=ModelsMatchOptionRule.create(options=models_match_options),
            matching_rule=models_matching_rules,
            sub_game_modes={
                game_mode: ModelsSubGameMode.create(
                    alliance=models_alliance_rule,
                    alliance_flexing_rule=models_alliance_flexing_rules,
                    name=game_mode
                )
            }
        ),
        session_queue_timeout_seconds=duration,
        joinable=True,
        social_matchmaking=True,
        use_sub_gamemode=False
    )

    def tearDown(self) -> None:
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        _, _ = delete_channel_handler(channel=self.models_channel_request.game_mode)
        super().tearDown()

    def test_create_channel_handler(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        # arrange
        _, _ = delete_channel_handler(channel=self.models_channel_request.game_mode)

        # act
        _, error = create_channel_handler(body=self.models_channel_request)

        # assert
        self.assertIsNone(error, error)

    def test_delete_channel_handler(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(msg=f"Failed to set up channel handler. {str(error)}", condition=error is not None)

        # act
        _, error = delete_channel_handler(channel=self.models_channel_request.game_mode)

        # assert
        self.assertIsNone(error, error)

    def test_get_single_matchmaking_channel(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import get_single_matchmaking_channel

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(msg=f"Failed to set up channel handler. {str(error)}", condition=error is not None)

        # act
        _, error = get_single_matchmaking_channel(channel_name=self.models_channel_request.game_mode)

        # assert
        self.assertIsNone(error, error)

    def test_update_matchmaking_channel(self):
        from accelbyte_py_sdk.api.matchmaking import create_channel_handler
        from accelbyte_py_sdk.api.matchmaking import update_matchmaking_channel
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateAllianceRule
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateChannelRequest
        from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateRuleset

        # arrange
        _, error = create_channel_handler(body=self.models_channel_request)
        self.log_warning(msg=f"Failed to set up channel handler. {str(error)}", condition=error is not None)

        # act
        _, error = update_matchmaking_channel(
            body=ModelsUpdateChannelRequest.create(
                deployment=self.models_channel_request.deployment,
                description="KETERANGAN",
                find_match_timeout_seconds=self.models_channel_request.find_match_timeout_seconds,
                joinable=self.models_channel_request.joinable,
                max_delay_ms=self.models_channel_request.max_delay_ms,
                rule_set=ModelsUpdateRuleset.create(
                    alliance=ModelsUpdateAllianceRule.create(
                        max_number=self.models_alliance_rule.max_number,
                        min_number=self.models_alliance_rule.min_number,
                        player_max_number=self.models_alliance_rule.player_max_number,
                        player_min_number=self.models_alliance_rule.player_min_number
                    ),
                    alliance_flexing_rule=self.models_alliance_flexing_rules
                ),
                session_queue_timeout_seconds=self.models_channel_request.session_queue_timeout_seconds,
                social_matchmaking=self.models_channel_request.social_matchmaking,
                use_sub_gamemode=self.models_channel_request.use_sub_gamemode
            ),
            channel_name=self.game_mode
        )

        # assert
        self.assertIsNone(error, error)
