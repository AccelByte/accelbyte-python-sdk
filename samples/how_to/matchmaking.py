# Prerequisites:
# 1. Initialize the SDK
# 2. Login as either a Client or a User


def example_create_matchmaking():
    from accelbyte_py_sdk.api.matchmaking import create_channel_handler
    from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceFlexingRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelRequest
    from accelbyte_py_sdk.api.matchmaking.models import ModelsFlexingRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchOption
    from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchOptionRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsMatchingRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsRuleSet
    from accelbyte_py_sdk.api.matchmaking.models import ModelsSubGameMode

    result, error = create_channel_handler(
        body=ModelsChannelRequest.create(
            deployment="<deployment>",
            description="<description>",
            find_match_timeout_seconds=300,
            game_mode="<game-mode>",
            max_delay_ms=300,
            rule_set=ModelsRuleSet.create(
                alliance=ModelsAllianceRule.create(
                    max_number=2,
                    min_number=2,
                    player_max_number=2,
                    player_min_number=2
                ),
                alliance_flexing_rule=[
                    ModelsAllianceFlexingRule.create(
                        duration=300,
                        max_number=2,
                        min_number=2,
                        player_max_number=2,
                        player_min_number=2
                    )
                ],
                flexing_rule=[
                    ModelsFlexingRule.create(
                        attribute="<attribute>",
                        criteria="<criteria>",
                        duration=300,
                        reference=10
                    )
                ],
                match_options=ModelsMatchOptionRule.create(
                    options=[
                        ModelsMatchOption.create(
                            name="<name>",
                            type_="<type>"
                        )
                    ]
                ),
                matching_rule=[
                    ModelsMatchingRule.create(
                        attribute="<attribute>",
                        criteria="<criteria>",
                        reference=10
                    )
                ],
                sub_game_modes={
                    "<game_mode>": ModelsSubGameMode.create(
                        alliance=ModelsAllianceRule.create(
                            max_number=2,
                            min_number=2,
                            player_max_number=2,
                            player_min_number=2
                        ),
                        alliance_flexing_rule=[
                            ModelsAllianceFlexingRule.create(
                                duration=300,
                                max_number=2,
                                min_number=2,
                                player_max_number=2,
                                player_min_number=2
                            )
                        ],
                        name="<game_mode>"
                    )
                }
            ),
            session_queue_timeout_seconds=10000
        )
    )
    if error:
        print(error)


def example_delete_matchmaking():
    from accelbyte_py_sdk.api.matchmaking import delete_channel_handler

    result, error = delete_channel_handler(
        channel="<channel>"
    )
    if error:
        print(error)


def example_get_matchmaking():
    from accelbyte_py_sdk.api.matchmaking import get_single_matchmaking_channel

    result, error = get_single_matchmaking_channel(
        channel_name="<channel_name>"
    )
    if error:
        print(error)


def example_update_matchmaking():
    from accelbyte_py_sdk.api.matchmaking import update_matchmaking_channel
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateChannelRequest
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateAllianceRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsAllianceFlexingRule
    from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateRuleset

    result, error = update_matchmaking_channel(
        body=ModelsUpdateChannelRequest.create(
            deployment="<deployment>",
            description="<description>",
            find_match_timeout_seconds=300,
            joinable=False,
            max_delay_ms=300,
            rule_set=ModelsUpdateRuleset.create(
                alliance=ModelsUpdateAllianceRule.create(
                    max_number=2
                ),
                alliance_flexing_rule=[
                    ModelsAllianceFlexingRule.create(
                        duration=300,
                        max_number=2,
                        min_number=2,
                        player_max_number=2,
                        player_min_number=2
                    )
                ]
            ),
            session_queue_timeout_seconds=10000,
            social_matchmaking=False,
            use_sub_gamemode=False
        ),
        channel_name="<channel_name>"
    )
    if error:
        print(error)
