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

Example: '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "RYPyV57M9tbchV3e", "description": "vz6c7BkOCpNo2wP9", "findMatchTimeoutSeconds": 19, "joinable": false, "max_delay_ms": 77, "region_expansion_range_ms": 67, "region_expansion_rate_ms": 91, "region_latency_initial_range_ms": 52, "region_latency_max_ms": 85, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 34, "min": 79, "name": "S457mU84e4flCyfB"}, {"max": 94, "min": 74, "name": "uoADRVFQzI5fYNDD"}, {"max": 95, "min": 15, "name": "sAANz7ff37n0fK56"}], [{"max": 88, "min": 59, "name": "zqY2O29Y1NsACNOa"}, {"max": 70, "min": 15, "name": "qq3oWv03b9yvFNhA"}, {"max": 64, "min": 63, "name": "g3mjHC8tzF6cPfNg"}], [{"max": 54, "min": 3, "name": "coJprjNQS5Y1KoOx"}, {"max": 73, "min": 47, "name": "WhRwgmiVTDHQZyUn"}, {"max": 15, "min": 10, "name": "Qc141zZamQCm7T0j"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 9}, "maxNumber": 3, "minNumber": 4, "playerMaxNumber": 14, "playerMinNumber": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 31, "min": 5, "name": "CW24z9o7HG4jAlcO"}, {"max": 13, "min": 59, "name": "6LucNWRkhDj2RasL"}, {"max": 1, "min": 23, "name": "fCCFUksgHNNbhd6u"}], [{"max": 59, "min": 100, "name": "qk3OsOingI2AYBrH"}, {"max": 80, "min": 88, "name": "fjlj5TYYwcwI1bvY"}, {"max": 70, "min": 30, "name": "A73JXsPxbvN8npGq"}], [{"max": 77, "min": 5, "name": "9jb1sXdwT64IuNXe"}, {"max": 54, "min": 43, "name": "2PZbwk9BnuJ08CGv"}, {"max": 51, "min": 21, "name": "cFKua6Y3jrVIWehq"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 24, "role_flexing_second": 37}, "duration": 32, "max_number": 28, "min_number": 86, "player_max_number": 72, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 85, "min": 44, "name": "l0S5AgPduIHUMzUd"}, {"max": 40, "min": 13, "name": "fDndelSnqu0TUSdj"}, {"max": 21, "min": 35, "name": "QwBz9knY2BdCwr5X"}], [{"max": 79, "min": 14, "name": "RxuRBHCPs6xlZ0gs"}, {"max": 40, "min": 45, "name": "A7spZggKE3A0RQz6"}, {"max": 24, "min": 84, "name": "hEeW1TsKUT66Lqeg"}], [{"max": 42, "min": 76, "name": "tmnH7f5ebznUt6Bs"}, {"max": 77, "min": 81, "name": "YhTaOKkv9supIiuw"}, {"max": 51, "min": 100, "name": "UfNI7lvZOxdOGApS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 94, "role_flexing_second": 4}, "duration": 63, "max_number": 76, "min_number": 0, "player_max_number": 70, "player_min_number": 0}, {"combination": {"alliances": [[{"max": 35, "min": 25, "name": "rhzWSEvi5C2voL45"}, {"max": 44, "min": 88, "name": "DuAzaBBIF8YHHmqz"}, {"max": 14, "min": 21, "name": "2QKtaRjfhIBgzghw"}], [{"max": 43, "min": 9, "name": "j0cdXV7WKrqKAIRz"}, {"max": 71, "min": 18, "name": "xXOe9wmX3V0elpKj"}, {"max": 89, "min": 49, "name": "Sjfy3vBte2xTD1M0"}], [{"max": 65, "min": 24, "name": "svjpg7ucKySO94dr"}, {"max": 86, "min": 16, "name": "oFkCBoKTtekggUMh"}, {"max": 19, "min": 28, "name": "flYULYhso59t0qP9"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 23, "role_flexing_second": 5}, "duration": 9, "max_number": 17, "min_number": 56, "player_max_number": 19, "player_min_number": 25}], "batch_size": 98, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 53, "flex_flat_step_range": 37, "flex_immunity_count": 75, "flex_range_max": 70, "flex_rate_ms": 89, "flex_step_max": 45, "force_authority_match": true, "initial_step_range": 72, "mmr_max": 48, "mmr_mean": 63, "mmr_min": 55, "mmr_std_dev": 77, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "3BfHo1lCL35bEGTg", "criteria": "eMpOdXLSfGSHtzZa", "duration": 36, "reference": 0.8392557198988977}, {"attribute": "AaOtPclqJ1HOo5Lr", "criteria": "xrIX95zOJD0oFiTS", "duration": 26, "reference": 0.818689051964326}, {"attribute": "chPra2zN5hniOPTw", "criteria": "P0MMu9DDmoBezNgb", "duration": 74, "reference": 0.8345253551687175}], "match_options": {"options": [{"name": "025eecmPiEzssNsl", "type": "5TpJTbQBNKhHRFUy"}, {"name": "TLdKOEVoT6XMxW9G", "type": "fu8FzGiPJZxOXqk0"}, {"name": "12AJd6htUM3tr7Ti", "type": "tSD7M5M8Kz1V5hmr"}]}, "matchingRules": [{"attribute": "6JPIgfrJ8PvGgbsT", "criteria": "i60eGP2D8mNhxlLw", "reference": 0.37788842458486227}, {"attribute": "Uih56MCnvIVSJ6Eu", "criteria": "RhAPSd1wObp0MhaG", "reference": 0.8465775982258018}, {"attribute": "gPJaBPXCBhiS2dMT", "criteria": "QRzkIW7tf1uW2wn3", "reference": 0.8599059750791372}], "sort_ticket": {"search_result": "distance", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "none", "threshold": 1, "ticket_queue": "oldestTicketAge"}, {"search_result": "oldestTicketAge", "threshold": 10, "ticket_queue": "oldestTicketAge"}, {"search_result": "largestPartySize", "threshold": 59, "ticket_queue": "largestPartySize"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 44}, {"selection": "newest", "threshold": 100}, {"selection": "pivot", "threshold": 46}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 93, "socialMatchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
