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

Example: '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "3oWh8bfYBQNQWH6E", "description": "YnXFzy6S8hTh8n0p", "findMatchTimeoutSeconds": 8, "joinable": false, "max_delay_ms": 77, "region_expansion_range_ms": 7, "region_expansion_rate_ms": 79, "region_latency_initial_range_ms": 35, "region_latency_max_ms": 98, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 86, "min": 29, "name": "F7BDB14g9zduD1jf"}, {"max": 51, "min": 0, "name": "AcPLsOlfAZjyhu46"}, {"max": 14, "min": 95, "name": "UEmqEQEpHMhKAUUZ"}], [{"max": 4, "min": 12, "name": "pcqBrbYNDtQ28Pkr"}, {"max": 77, "min": 12, "name": "KgeWSxg4BmI6Qy9C"}, {"max": 94, "min": 8, "name": "Yk7EI2v8cBQImvlO"}], [{"max": 24, "min": 44, "name": "2B3dUGhOiCgJFpwR"}, {"max": 45, "min": 43, "name": "mAXChAM5w8NJuZKp"}, {"max": 43, "min": 59, "name": "CVcmAKENmUom1WGC"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 30}, "maxNumber": 50, "minNumber": 54, "playerMaxNumber": 58, "playerMinNumber": 100}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 0, "min": 7, "name": "xwUFRWHYZliWu0J6"}, {"max": 65, "min": 88, "name": "9x2FoXUUwkrT8Yff"}, {"max": 57, "min": 54, "name": "3y4phYbF4ZpWjW3a"}], [{"max": 18, "min": 64, "name": "q19JpiUH0BsptVpn"}, {"max": 1, "min": 13, "name": "oYNtKbdFtbv2czQk"}, {"max": 4, "min": 25, "name": "MB5QPLM0BxyfVCt4"}], [{"max": 19, "min": 47, "name": "CemgDPaE34WIYSma"}, {"max": 97, "min": 35, "name": "0DMzjpJMrQQwA6I2"}, {"max": 50, "min": 30, "name": "A5UCBmKn1rLp73Dy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 67}, "duration": 27, "max_number": 77, "min_number": 27, "player_max_number": 27, "player_min_number": 0}, {"combination": {"alliances": [[{"max": 25, "min": 87, "name": "ZdewMq9XSxwbfkun"}, {"max": 29, "min": 68, "name": "7KNNncPRW8sZL6CS"}, {"max": 38, "min": 77, "name": "9x0ABzEnTBsWpUQe"}], [{"max": 15, "min": 39, "name": "BhuzFBRaI5TzBmuN"}, {"max": 2, "min": 92, "name": "uCCgC1Nc6OHCkd05"}, {"max": 56, "min": 94, "name": "HZA0mBY2Z86xf5Ok"}], [{"max": 16, "min": 34, "name": "VZLkEUWRGolcHbO1"}, {"max": 98, "min": 78, "name": "W3tu3S1TKLooOVhS"}, {"max": 39, "min": 26, "name": "FUyBW7uYMKBZRtAB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 6}, "duration": 28, "max_number": 49, "min_number": 74, "player_max_number": 21, "player_min_number": 39}, {"combination": {"alliances": [[{"max": 40, "min": 26, "name": "Bouj4ez6FbDzFHmx"}, {"max": 53, "min": 20, "name": "xKxb5n1a5FWMhp2q"}, {"max": 38, "min": 31, "name": "seCWmTCZl4NXWC3d"}], [{"max": 16, "min": 66, "name": "b5mEntkbZ5ZLiS9m"}, {"max": 32, "min": 31, "name": "lhQI7L7EafdE4vTe"}, {"max": 63, "min": 26, "name": "SI9d5Uf9vhCpKkn1"}], [{"max": 73, "min": 22, "name": "35Ubd2Us3wPb1Vyg"}, {"max": 35, "min": 76, "name": "MDtVqH9pOjEDuzYn"}, {"max": 18, "min": 8, "name": "wJiqTsRd8kGLxaan"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 38}, "duration": 38, "max_number": 39, "min_number": 24, "player_max_number": 25, "player_min_number": 98}], "batch_size": 11, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 68, "flex_flat_step_range": 63, "flex_immunity_count": 40, "flex_range_max": 98, "flex_rate_ms": 12, "flex_step_max": 81, "force_authority_match": false, "initial_step_range": 37, "mmr_max": 23, "mmr_mean": 15, "mmr_min": 69, "mmr_std_dev": 13, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "W3uSt7Jyz8liVomR", "criteria": "y6mYq2OgDqFOnMBu", "duration": 59, "reference": 0.4712635356651814}, {"attribute": "VgZ8BONQI8Y1k6AF", "criteria": "Or25raOHRx28KgDm", "duration": 90, "reference": 0.6268942728157081}, {"attribute": "ZylFS6Bz6OXyW4oW", "criteria": "FzyhdXtwB4lySUt1", "duration": 60, "reference": 0.050370318772759104}], "match_options": {"options": [{"name": "kqlihBlxNKepY6wI", "type": "U0ZGJit9Sb3PFJAk"}, {"name": "EzDOyAX4ghyVdLQg", "type": "A0tPIVlfOTxFWUMe"}, {"name": "Vwr67Hcxy3nSvTC4", "type": "oACcleJCGgjUCz4Q"}]}, "matchingRules": [{"attribute": "t3JLUTLciOzCdOXz", "criteria": "GxcTt8cL236gpQO4", "reference": 0.14343194728272024}, {"attribute": "m3EOIGfRQzYfWoRs", "criteria": "GD33CcAcrh8oBCA9", "reference": 0.7010856474890483}, {"attribute": "oJIjUZREq2l72MdT", "criteria": "khPka1EswxO6ShS3", "reference": 0.09818730955757837}], "sort_ticket": {"search_result": "random", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 9, "ticket_queue": "none"}, {"search_result": "oldestTicketAge", "threshold": 64, "ticket_queue": "distance"}, {"search_result": "random", "threshold": 95, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "newest", "threshold": 50}, {"selection": "newest", "threshold": 35}, {"selection": "random", "threshold": 71}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 25, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
