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

Example: '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "i4ujr8aaccmYb0I5", "description": "CkZZTQohbN7Gj95o", "findMatchTimeoutSeconds": 61, "joinable": false, "max_delay_ms": 38, "region_expansion_range_ms": 24, "region_expansion_rate_ms": 84, "region_latency_initial_range_ms": 99, "region_latency_max_ms": 2, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 55, "min": 85, "name": "ft7uAu9xPVZgYLDm"}, {"max": 0, "min": 7, "name": "A8IPvjKkKjk8xtuY"}, {"max": 67, "min": 9, "name": "8h08IV5Ti22FQtfJ"}], [{"max": 64, "min": 65, "name": "yHWFzkRMxwmhOvqJ"}, {"max": 89, "min": 87, "name": "2Y34hXqJgsN1Gz06"}, {"max": 28, "min": 45, "name": "rzXEtLr4u8TfImJ7"}], [{"max": 69, "min": 61, "name": "EKWYIfqVIpjRDdER"}, {"max": 59, "min": 90, "name": "P2CE34gWCBUJv5lm"}, {"max": 29, "min": 88, "name": "xpItW1jZXSyV5QTb"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 64}, "maxNumber": 61, "minNumber": 19, "playerMaxNumber": 63, "playerMinNumber": 38}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 14, "min": 33, "name": "orbLoNv82AWJqWPR"}, {"max": 58, "min": 59, "name": "0GjiuYKozXOJW1UW"}, {"max": 29, "min": 47, "name": "CZgyyS3xUPgf3zY8"}], [{"max": 88, "min": 21, "name": "YDukoXXOPGn5Pbs3"}, {"max": 100, "min": 56, "name": "2pYvDjIq4veV7QzN"}, {"max": 6, "min": 93, "name": "WqHhCtQBPmAvu0nD"}], [{"max": 7, "min": 21, "name": "PqxhLZNiYPVogjNq"}, {"max": 18, "min": 15, "name": "txxQeSAg8sIM1LPr"}, {"max": 33, "min": 87, "name": "czVHa7UAkT9Uudfb"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 5}, "duration": 56, "max_number": 90, "min_number": 81, "player_max_number": 12, "player_min_number": 75}, {"combination": {"alliances": [[{"max": 5, "min": 51, "name": "1V46PKS2DJfY2H2T"}, {"max": 83, "min": 48, "name": "RWm1h5lsgbGdUbcr"}, {"max": 17, "min": 65, "name": "Mc9zDsYFk8EVzXvq"}], [{"max": 5, "min": 24, "name": "kSMoMYhlP4RugtY4"}, {"max": 9, "min": 6, "name": "ho9tAFqCblDBdyOy"}, {"max": 67, "min": 89, "name": "Vzuco4zo5hFXrpvk"}], [{"max": 62, "min": 58, "name": "zZvfKZ83c1Xl0BNB"}, {"max": 83, "min": 85, "name": "9QXpWlXFSLRyIWdO"}, {"max": 14, "min": 61, "name": "i7TFRsGEJYQrelgo"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 88}, "duration": 11, "max_number": 73, "min_number": 52, "player_max_number": 47, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 72, "min": 76, "name": "wowghw4Oha9W1bzu"}, {"max": 1, "min": 82, "name": "D4WdK5Q9tD0yA6ys"}, {"max": 24, "min": 2, "name": "Y41fN6y8rUa5VSFB"}], [{"max": 9, "min": 37, "name": "xPcYgeb6R9XZw2NV"}, {"max": 58, "min": 35, "name": "anjGpp7YPJ6AWVVq"}, {"max": 98, "min": 67, "name": "qr0medgLY34Lo6eL"}], [{"max": 9, "min": 45, "name": "y8WOkurBGTbCwjh4"}, {"max": 46, "min": 82, "name": "SyeIvDym8vHm5ZOH"}, {"max": 90, "min": 85, "name": "ugf1wGoi2OSSgTJK"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 40}, "duration": 98, "max_number": 61, "min_number": 77, "player_max_number": 82, "player_min_number": 24}], "batch_size": 57, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 73, "flex_flat_step_range": 5, "flex_immunity_count": 11, "flex_range_max": 90, "flex_rate_ms": 3, "flex_step_max": 25, "force_authority_match": true, "initial_step_range": 15, "mmr_max": 90, "mmr_mean": 34, "mmr_min": 73, "mmr_std_dev": 39, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "fhWdy3JewA8NNqm4", "criteria": "wPICY3BcVk4eD14x", "duration": 100, "reference": 0.07066335802628221}, {"attribute": "kmLQRaHDCkWSCm0q", "criteria": "8SWQVj4XUDJwtT58", "duration": 16, "reference": 0.9950297132519905}, {"attribute": "8BA6W3y0kQtgHoG4", "criteria": "0WwKaNHXb0ZKpm0x", "duration": 34, "reference": 0.45173965730899335}], "match_options": {"options": [{"name": "2eSCjF6IEifcNqwH", "type": "NyN0x8RhNV6C81yr"}, {"name": "UC0wRiTktNNbfFyr", "type": "23YCgKRRa11IhsQf"}, {"name": "Re53QLEUkk7Pg32x", "type": "UdmcbH6oFdFuk8FN"}]}, "matchingRules": [{"attribute": "BtzytTd5mq1NG08g", "criteria": "9eduZExu8pw3qrta", "reference": 0.9610598136101365}, {"attribute": "W1pBxHXAPRuv3wKO", "criteria": "SnsHPMZbBagPkV1N", "reference": 0.06522615468398907}, {"attribute": "eP3H7mLjxGLBntVn", "criteria": "ZsA3n2FT6KwCaYZr", "reference": 0.7360358537067792}], "sort_ticket": {"search_result": "h9nOvH3HBGyQ7RVt", "ticket_queue": "16t5Qi4xTz6Ic7MZ"}, "sort_tickets": [{"search_result": "fqjRd3U0GsEEmfVs", "threshold": 29, "ticket_queue": "pxxpasqm3DCg4Ak2"}, {"search_result": "wF0itRJQfWLWCJ3g", "threshold": 25, "ticket_queue": "DYAXI2dLvfC7P9dL"}, {"search_result": "G9eoi6cP76Nt8Bf4", "threshold": 45, "ticket_queue": "hof0EKmQ6kKsXpIy"}], "sub_game_modes": {}, "ticket_flexing_selection": "N4calcrJxqHm5MBn", "ticket_flexing_selections": [{"selection": "l2Xv62uxT8o1TyTO", "threshold": 44}, {"selection": "l8xrGXJn3MKl3KiM", "threshold": 82}, {"selection": "SCm2WSaklnDMpMTV", "threshold": 29}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 16, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
