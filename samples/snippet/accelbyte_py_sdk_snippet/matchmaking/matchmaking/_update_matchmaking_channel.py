import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import update_matchmaking_channel
from accelbyte_py_sdk.api.matchmaking.models import ModelsUpdateChannelRequest
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

"""
body:
Definition: ModelsUpdateChannelRequest
blocked_player_option: str
deployment: str
description: str
find_match_timeout_seconds: int
joinable: bool
max_delay_ms: int
region_expansion_range_ms: int
region_expansion_rate_ms: int
region_latency_initial_range_ms: int
region_latency_max_ms: int
rule_set: ModelsUpdateRuleset
Definition: ModelsUpdateRuleset
    alliance: ModelsUpdateAllianceRule
    Definition: ModelsUpdateAllianceRule
        combination: ModelsCombination
        Definition: ModelsCombination
            alliances: List[List[ModelsRole]]
            has_combination: bool
            role_flexing_enable: bool
            role_flexing_player: int
            role_flexing_second: int
        max_number: int
        min_number: int
        player_max_number: int
        player_min_number: int
    alliance_flexing_rule: List[ModelsAllianceFlexingRule]
    Definition: List[ModelsAllianceFlexingRule]
        combination: ModelsCombination
        Definition: ModelsCombination
            alliances: List[List[ModelsRole]]
            has_combination: bool
            role_flexing_enable: bool
            role_flexing_player: int
            role_flexing_second: int
        duration: int
        max_number: int
        min_number: int
        player_max_number: int
        player_min_number: int
    batch_size: int
    bucket_mmr_rule: ModelsBucketMMRRule
    Definition: ModelsBucketMMRRule
        disable_authority: bool
        flex_authority_count: int
        flex_flat_step_range: int
        flex_immunity_count: int
        flex_range_max: int
        flex_rate_ms: int
        flex_step_max: int
        force_authority_match: bool
        initial_step_range: int
        mmr_max: int
        mmr_mean: int
        mmr_min: int
        mmr_std_dev: int
        override_mmr_data: bool
        use_bucket_mmr: bool
        use_flat_flex_step: bool
    flexing_rules: List[ModelsFlexingRule]
    Definition: List[ModelsFlexingRule]
        attribute: str
        criteria: str
        duration: int
        reference: float
    match_options: ModelsMatchOptionRule
    Definition: ModelsMatchOptionRule
        options: List[ModelsMatchOption]
        Definition: List[ModelsMatchOption]
            name: str
            type_: str
    matching_rules: List[ModelsMatchingRule]
    Definition: List[ModelsMatchingRule]
        attribute: str
        criteria: str
        reference: float
    sort_ticket: ModelsSortTicket
    Definition: ModelsSortTicket
        search_result: str
        ticket_queue: str
    sort_tickets: List[ModelsSortTicketRule]
    Definition: List[ModelsSortTicketRule]
        search_result: str
        threshold: int
        ticket_queue: str
    sub_game_modes: ModelsUpdateRulesetSubGameModes
    Definition: ModelsUpdateRulesetSubGameModes
    ticket_flexing_selection: str
    ticket_flexing_selections: List[ModelsSelectionRule]
    Definition: List[ModelsSelectionRule]
        selection: str
        threshold: int
    use_newest_ticket_for_flexing: bool
session_queue_timeout_seconds: int
social_matchmaking: bool
sub_gamemode_selection: str
ticket_observability_enable: bool
use_sub_gamemode: bool

Example: '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "O9MFE5tOwDexvXbV", "description": "6fpNEKCRrjW6LN1M", "findMatchTimeoutSeconds": 52, "joinable": false, "max_delay_ms": 84, "region_expansion_range_ms": 23, "region_expansion_rate_ms": 89, "region_latency_initial_range_ms": 71, "region_latency_max_ms": 66, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 90, "min": 36, "name": "9xx0wpnE8ktnXtSS"}, {"max": 66, "min": 9, "name": "VFgpGvmiAUsgrU6r"}, {"max": 10, "min": 48, "name": "Tq38GDx1NTWEXgdZ"}], [{"max": 12, "min": 53, "name": "v3Z9mb8dUPjJVe51"}, {"max": 48, "min": 66, "name": "QPCpMaCdL1bykmbu"}, {"max": 100, "min": 0, "name": "wbRP8ECGWA6GSApm"}], [{"max": 65, "min": 4, "name": "O5wblUKGMUNuWofo"}, {"max": 43, "min": 67, "name": "HDef9908QcS1QDW8"}, {"max": 67, "min": 76, "name": "U4Fh5XRgysbCvnQO"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 3}, "maxNumber": 99, "minNumber": 59, "playerMaxNumber": 8, "playerMinNumber": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 48, "min": 51, "name": "bUzc1sCpi9aLWEoO"}, {"max": 24, "min": 94, "name": "VvsEjXmdOazNlFPZ"}, {"max": 93, "min": 25, "name": "O2gWYHVqU5OBJrCV"}], [{"max": 48, "min": 80, "name": "yJpbNnshoUDKEnmX"}, {"max": 80, "min": 1, "name": "J4myPeFwElJ0lGgc"}, {"max": 69, "min": 98, "name": "UJj2unsUI2MuCeaU"}], [{"max": 15, "min": 87, "name": "7WTveemUC5bdkmYg"}, {"max": 31, "min": 10, "name": "cR4WkZTUDMQDVqfx"}, {"max": 52, "min": 99, "name": "lyekT1c37Vi3hVs4"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 50}, "duration": 21, "max_number": 22, "min_number": 1, "player_max_number": 10, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 14, "min": 10, "name": "BlUDJP4w8rN3pgmY"}, {"max": 19, "min": 66, "name": "xGAXvhP17b1VJctb"}, {"max": 26, "min": 24, "name": "2CXKO3pN0xeK2zMn"}], [{"max": 27, "min": 35, "name": "zHK4HY46JE7XQabS"}, {"max": 50, "min": 85, "name": "9tzE3hgbGQlkGrEQ"}, {"max": 45, "min": 46, "name": "dwQgChRufW0IvswQ"}], [{"max": 23, "min": 42, "name": "A5SlQC9GdbQYChgY"}, {"max": 9, "min": 61, "name": "gTgRpAPYUFBHWdb4"}, {"max": 32, "min": 86, "name": "LzHfPsBBqf3TvcM0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 100}, "duration": 36, "max_number": 34, "min_number": 63, "player_max_number": 41, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 76, "min": 68, "name": "OzAxRnGy9xVItY0g"}, {"max": 72, "min": 67, "name": "RhtCJDPoZmT0uVFO"}, {"max": 53, "min": 94, "name": "6Wt0mTjJy7BoXoQZ"}], [{"max": 26, "min": 68, "name": "YcTulGm4I7FtK6mv"}, {"max": 36, "min": 81, "name": "JjAJTElgjkY8TDwE"}, {"max": 66, "min": 70, "name": "d1mjfhXxWt7dx3n5"}], [{"max": 49, "min": 65, "name": "oGHrTlchFkV8MaGv"}, {"max": 100, "min": 65, "name": "RZ8FRgz3zZVuVOrL"}, {"max": 30, "min": 46, "name": "3cJvQkQ0cgctSdnz"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 46}, "duration": 49, "max_number": 6, "min_number": 70, "player_max_number": 90, "player_min_number": 85}], "batch_size": 34, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 73, "flex_flat_step_range": 79, "flex_immunity_count": 79, "flex_range_max": 97, "flex_rate_ms": 14, "flex_step_max": 17, "force_authority_match": false, "initial_step_range": 19, "mmr_max": 28, "mmr_mean": 97, "mmr_min": 32, "mmr_std_dev": 40, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "9JlI7hU8xOnD27te", "criteria": "8EjSsAt5WQYOwLA1", "duration": 88, "reference": 0.397258768311186}, {"attribute": "4M8QTLHpTdkoj630", "criteria": "5AWDlnyEoIElmMvx", "duration": 50, "reference": 0.9607409416944014}, {"attribute": "aRIXtEIvHyy9bjEF", "criteria": "tPnyFn2udrnoOZ3t", "duration": 56, "reference": 0.685424229540645}], "match_options": {"options": [{"name": "DfsUnrSZVKaRVDb0", "type": "S3LhSt0cWduspBfH"}, {"name": "fgx02jY9I1rcHIcN", "type": "D8T1YoQprjvwjhHa"}, {"name": "KUpyqnGA7gN7tM5y", "type": "0xx7T9wKZMnHqug8"}]}, "matchingRules": [{"attribute": "DaUm50Y2xTuIOnk4", "criteria": "35V4oaRtc7gWJVhb", "reference": 0.9558198499942935}, {"attribute": "BdCqqIqhAuJAXE7Q", "criteria": "32KYOWfZBf2jAeb8", "reference": 0.5595642583382825}, {"attribute": "jfCCSMrycsOpNDgx", "criteria": "NJd2iuRJbtgGJ7Sp", "reference": 0.6881243479468337}], "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "random", "threshold": 63, "ticket_queue": "largestPartySize"}, {"search_result": "none", "threshold": 45, "ticket_queue": "distance"}, {"search_result": "distance", "threshold": 39, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 54}, {"selection": "pivot", "threshold": 81}, {"selection": "newest", "threshold": 95}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 52, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": true}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
