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

Example: '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "rbEie2kqLCQrZn97", "description": "tn4m65T1C2zhq3yf", "findMatchTimeoutSeconds": 40, "joinable": false, "max_delay_ms": 12, "region_expansion_range_ms": 49, "region_expansion_rate_ms": 7, "region_latency_initial_range_ms": 41, "region_latency_max_ms": 78, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 12, "min": 46, "name": "UufWBboSjypUUdjZ"}, {"max": 21, "min": 16, "name": "8qNXKRxmZWcTywdj"}, {"max": 76, "min": 29, "name": "j9MbX5QuWdQpT2bw"}], [{"max": 98, "min": 13, "name": "pqblLxXn3KSVwuKV"}, {"max": 90, "min": 25, "name": "gzy4oN4F7gODxOdy"}, {"max": 29, "min": 45, "name": "OZBiJBXEAZtw7A7w"}], [{"max": 36, "min": 66, "name": "AOUOeisCmFbJkyBb"}, {"max": 41, "min": 49, "name": "9WI2DOyKbz3123Ub"}, {"max": 37, "min": 3, "name": "lPOP4XZXq5TrbxJ7"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 96}, "maxNumber": 34, "minNumber": 43, "playerMaxNumber": 25, "playerMinNumber": 16}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 4, "min": 2, "name": "il5ttm9ITGeECic8"}, {"max": 100, "min": 84, "name": "Gx9KnJ7cxzdgrm6Y"}, {"max": 84, "min": 62, "name": "SwZhLbnQbwIup9If"}], [{"max": 77, "min": 94, "name": "hDYnp3cM12TSnLzC"}, {"max": 16, "min": 66, "name": "XTyP7TnqAHd7A8B0"}, {"max": 41, "min": 77, "name": "6vjVFZ0AMT6IaegD"}], [{"max": 77, "min": 57, "name": "Z7xDaGfyh6sEujyJ"}, {"max": 68, "min": 5, "name": "rnlTd1d164N6dDjV"}, {"max": 26, "min": 100, "name": "Wz5RLRQqEWDjO6eF"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 65}, "duration": 11, "max_number": 52, "min_number": 61, "player_max_number": 52, "player_min_number": 58}, {"combination": {"alliances": [[{"max": 94, "min": 80, "name": "xmTPdfL91q8xExMg"}, {"max": 72, "min": 31, "name": "UhgxMZfCe7NQaDwS"}, {"max": 53, "min": 5, "name": "lKvr4M3CK4zj2Zd7"}], [{"max": 77, "min": 95, "name": "riWLQgSTFuBaEqtM"}, {"max": 5, "min": 38, "name": "DZ3GY4BrlOPqTI9F"}, {"max": 16, "min": 89, "name": "m57eInC56DGrSv7O"}], [{"max": 14, "min": 28, "name": "tk6mWAFm2bHWnv9g"}, {"max": 61, "min": 8, "name": "LdZwkBCJOU7455v2"}, {"max": 96, "min": 58, "name": "vKrwRHC8o1CPAjfV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 50, "role_flexing_second": 31}, "duration": 25, "max_number": 7, "min_number": 47, "player_max_number": 98, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 99, "min": 15, "name": "cTSJUtiZsVWKwuff"}, {"max": 84, "min": 65, "name": "Cz2yQ82FGF3Q8ysD"}, {"max": 53, "min": 31, "name": "xnQs9hxwt4cgvVDP"}], [{"max": 13, "min": 31, "name": "LEElISb9UOLlbIKJ"}, {"max": 88, "min": 77, "name": "dHtETYPP6XHOqhkb"}, {"max": 83, "min": 65, "name": "IDC6ftSbFw7dmGFH"}], [{"max": 46, "min": 89, "name": "UXDz0G9cnXuFg5MH"}, {"max": 55, "min": 62, "name": "wSBVpUpBfrn7SSma"}, {"max": 87, "min": 76, "name": "ZSFHfqvNZE3kOrUB"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 19}, "duration": 17, "max_number": 35, "min_number": 1, "player_max_number": 92, "player_min_number": 77}], "batch_size": 70, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 26, "flex_flat_step_range": 32, "flex_immunity_count": 84, "flex_range_max": 78, "flex_rate_ms": 24, "flex_step_max": 28, "force_authority_match": true, "initial_step_range": 0, "mmr_max": 61, "mmr_mean": 65, "mmr_min": 70, "mmr_std_dev": 23, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "gk76gTPOPu4YfxKL", "criteria": "5WUDBmS6ddTnVCrO", "duration": 47, "reference": 0.7684209967938391}, {"attribute": "TdqNyVSHWhTcTM1w", "criteria": "CS29kf5XZL6azlsY", "duration": 29, "reference": 0.31458248428666924}, {"attribute": "M6PTWKSkP6B9ehmf", "criteria": "Uw9ALe4N2HFW856K", "duration": 64, "reference": 0.3808991800481384}], "match_options": {"options": [{"name": "5vO3WJoviHTEK4OQ", "type": "86pvzPGNf6FroUhT"}, {"name": "iny0vtdw8EOuWZWD", "type": "g9Bn0zGM3l5XDoFt"}, {"name": "nDDutv328oLfUvIG", "type": "OEfiC4Qe7LaOg06o"}]}, "matchingRules": [{"attribute": "oAYTCSsQ8q88KGyl", "criteria": "qkBFon7SZDZ6THQy", "reference": 0.42625576150770106}, {"attribute": "WopZCfAXW4e3JwLm", "criteria": "vQ2lqipgMxO7Fiwz", "reference": 0.8355972406555403}, {"attribute": "KwhQzmD6UlA5qnru", "criteria": "PhDK2eZSxjz3CoU5", "reference": 0.33710647103126035}], "sort_ticket": {"search_result": "xnEfaJUJ5Usqb4bY", "ticket_queue": "tJbYPdWRXwnON5BX"}, "sort_tickets": [{"search_result": "wQhf3pmlDuz9JHUu", "threshold": 46, "ticket_queue": "TtuR4TJRbXzCMfWe"}, {"search_result": "YxrM3j08PpK0pTnl", "threshold": 18, "ticket_queue": "4VtnMJ6LbPOopJMd"}, {"search_result": "iXIyLlyfzTlzDdG1", "threshold": 91, "ticket_queue": "FGQJTML30gilgze1"}], "sub_game_modes": {}, "ticket_flexing_selection": "skPC3FUkj7TOUG0A", "ticket_flexing_selections": [{"selection": "1V7uL4EAKloU224K", "threshold": 21}, {"selection": "Ap1EnDWo70Y7XNGb", "threshold": 87}, {"selection": "uhI9oDpCLOBXLc1z", "threshold": 50}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 39, "socialMatchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": false}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
