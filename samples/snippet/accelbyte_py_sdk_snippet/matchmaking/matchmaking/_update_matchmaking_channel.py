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

Example: '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "BLTFAe2HC0VmcE4Z", "description": "aQ2qJSBwwAkxlddO", "findMatchTimeoutSeconds": 60, "joinable": true, "max_delay_ms": 49, "region_expansion_range_ms": 40, "region_expansion_rate_ms": 74, "region_latency_initial_range_ms": 84, "region_latency_max_ms": 40, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 73, "min": 84, "name": "wyaWec9uRdHNMETR"}, {"max": 35, "min": 28, "name": "3MzxXOpCR2i0AyVS"}, {"max": 84, "min": 89, "name": "StIGphIfcptphj8S"}], [{"max": 27, "min": 10, "name": "1FOCplldlgH97ca5"}, {"max": 6, "min": 83, "name": "SwMSFWIOhevnxLhD"}, {"max": 12, "min": 37, "name": "VhYdcqEmIJ7lorfB"}], [{"max": 50, "min": 45, "name": "mEuqMRmpyO0QsokA"}, {"max": 45, "min": 44, "name": "MPY1vEVZNhobOc14"}, {"max": 13, "min": 4, "name": "KzhtxM4JL7DBm9PY"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 35}, "maxNumber": 46, "minNumber": 89, "playerMaxNumber": 20, "playerMinNumber": 94}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 41, "min": 26, "name": "NErJiObni40YT6b6"}, {"max": 10, "min": 55, "name": "FqG4oenTKCSTtjuf"}, {"max": 78, "min": 12, "name": "b3pPdPs8ihaZngVe"}], [{"max": 95, "min": 5, "name": "zR04HiAFsGCFMPlY"}, {"max": 68, "min": 93, "name": "cO9PkC3DlAQLiA9T"}, {"max": 80, "min": 3, "name": "hNDd48Ie0mt6QTRP"}], [{"max": 55, "min": 87, "name": "P89lL2eT9vBoXIJz"}, {"max": 37, "min": 5, "name": "Fj5ByWjYDSkLNBMH"}, {"max": 39, "min": 42, "name": "2rl5FPu0ZhBBep2c"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 54, "role_flexing_second": 67}, "duration": 3, "max_number": 21, "min_number": 30, "player_max_number": 27, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 98, "min": 52, "name": "gb25KhZruNxOwMIR"}, {"max": 40, "min": 46, "name": "ZsexWw7tqlWokTRf"}, {"max": 34, "min": 9, "name": "t9DHKjwJWZ62tek3"}], [{"max": 47, "min": 61, "name": "kzHGPdi58EXDQPq8"}, {"max": 99, "min": 60, "name": "477EsB6jpxFg9MLW"}, {"max": 81, "min": 89, "name": "kKiGIJZfYmOG2fwp"}], [{"max": 37, "min": 85, "name": "kNWlNiGCsFiG3lRS"}, {"max": 6, "min": 10, "name": "QJT2jUY9zzOePMII"}, {"max": 64, "min": 95, "name": "QVlXDmPftAfTWLQK"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 35}, "duration": 43, "max_number": 17, "min_number": 22, "player_max_number": 59, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 86, "min": 87, "name": "ljY2RbEwoeP6bCPD"}, {"max": 60, "min": 19, "name": "EG6wXIRComYcBLPg"}, {"max": 16, "min": 57, "name": "TfxW9AExgY1z1jN7"}], [{"max": 91, "min": 50, "name": "cnzpBBiRYmbYCocV"}, {"max": 80, "min": 73, "name": "07oaUzeTc0vBSnkv"}, {"max": 37, "min": 99, "name": "aUBmgYQwGdXyM4Ns"}], [{"max": 74, "min": 44, "name": "0M60LtlDI5SCInbu"}, {"max": 32, "min": 17, "name": "sezS5nafeiAMbCjN"}, {"max": 86, "min": 94, "name": "iQkFhHAIxmivjGl9"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 54}, "duration": 70, "max_number": 81, "min_number": 30, "player_max_number": 51, "player_min_number": 19}], "batch_size": 74, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 75, "flex_flat_step_range": 86, "flex_immunity_count": 76, "flex_range_max": 62, "flex_rate_ms": 81, "flex_step_max": 32, "force_authority_match": false, "initial_step_range": 52, "mmr_max": 12, "mmr_mean": 57, "mmr_min": 97, "mmr_std_dev": 24, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "Rb2cB8sfsplF15He", "criteria": "xSe9WntGF777vgna", "duration": 59, "reference": 0.06429114369250877}, {"attribute": "Kh8dT4zpAOMf6zwk", "criteria": "RD7FwxMyC2gN2lT9", "duration": 0, "reference": 0.3822046752095376}, {"attribute": "4Cu1Y7RZMhTQ093R", "criteria": "MOlCEuyJb5pcVepF", "duration": 86, "reference": 0.20754329893289625}], "match_options": {"options": [{"name": "D3xyJkOaXbSFwuPj", "type": "0WRNhTvb5UwKXX7X"}, {"name": "PPfmSy8SE8DgAsZ4", "type": "3dRqLtJnGKox7W58"}, {"name": "syBeNsOzWt4BqQQn", "type": "3e7qLoGQd1a3UN3W"}]}, "matchingRules": [{"attribute": "uFUcjNNsJ10DurF5", "criteria": "TNUGOIQXxq7Qq7ZB", "reference": 0.7256986841404667}, {"attribute": "bREVksJd8abpkw7V", "criteria": "WvoFNJzW9qiWx6DT", "reference": 0.5369301810684131}, {"attribute": "LfXSSFqLn3gfK63z", "criteria": "AKcn0AXFLFw1DDJz", "reference": 0.1784577550557077}], "sort_ticket": {"search_result": "To5eOEpX9Q7uZst4", "ticket_queue": "9V7ZhMaRTpXZl9J1"}, "sort_tickets": [{"search_result": "EmA5KeuRsYyzDbgq", "threshold": 5, "ticket_queue": "8dvb1M3qPYWHlNFY"}, {"search_result": "AJC3zOrRKY7lTcAa", "threshold": 14, "ticket_queue": "6d31AMTtk5KU8h0u"}, {"search_result": "AWapVcsLlFunSljC", "threshold": 62, "ticket_queue": "1Ca3XOmksYwEz4rV"}], "sub_game_modes": {}, "ticket_flexing_selection": "iI1VnAkeMoFkU9iH", "ticket_flexing_selections": [{"selection": "AMvx9jOp3u5sVPI9", "threshold": 55}, {"selection": "IPNbxw2Sml1tQDHm", "threshold": 95}, {"selection": "pqHp3ZJkkzC7qY0l", "threshold": 77}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 22, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": true}'
"""

result, error = update_matchmaking_channel(
    body=body,
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
