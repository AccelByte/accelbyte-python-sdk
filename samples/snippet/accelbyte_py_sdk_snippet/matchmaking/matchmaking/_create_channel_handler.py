import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import create_channel_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelRequest
from accelbyte_py_sdk.api.matchmaking.models import ModelsCreateChannelResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

"""
body:
Definition: ModelsChannelRequest
blocked_player_option: str
deployment: str
description: str
find_match_timeout_seconds: int
game_mode: str
joinable: bool
max_delay_ms: int
region_expansion_range_ms: int
region_expansion_rate_ms: int
region_latency_initial_range_ms: int
region_latency_max_ms: int
rule_set: ModelsRuleSet
Definition: ModelsRuleSet
    alliance: ModelsAllianceRule
    Definition: ModelsAllianceRule
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
    flexing_rule: List[ModelsFlexingRule]
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
    matching_rule: List[ModelsMatchingRule]
    Definition: List[ModelsMatchingRule]
        attribute: str
        criteria: str
        reference: float
    rebalance_enable: bool
    sort_ticket: ModelsSortTicket
    Definition: ModelsSortTicket
        search_result: str
        ticket_queue: str
    sort_tickets: List[ModelsSortTicketRule]
    Definition: List[ModelsSortTicketRule]
        search_result: str
        threshold: int
        ticket_queue: str
    sub_game_modes: Dict[str, ModelsSubGameMode]
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

Example: '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "M928OECO7vSTRPY5", "description": "YRr2Cd9Pk3raDrY5", "find_match_timeout_seconds": 32, "game_mode": "VZ5o4fovmAi9Hbth", "joinable": true, "max_delay_ms": 23, "region_expansion_range_ms": 99, "region_expansion_rate_ms": 80, "region_latency_initial_range_ms": 14, "region_latency_max_ms": 93, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 67, "min": 67, "name": "9TJdBWg5cQwN5yM0"}, {"max": 43, "min": 4, "name": "BHJzEXDHwxuX6yqS"}, {"max": 17, "min": 39, "name": "xKEfCbmiooeNrZkR"}], [{"max": 83, "min": 6, "name": "xUeEIryhLVsW2UOa"}, {"max": 44, "min": 14, "name": "qau0tbEpxf5f15dD"}, {"max": 64, "min": 75, "name": "gwJSsP3ykUfGIH8U"}], [{"max": 78, "min": 24, "name": "gMoj7MsXuOacSFn7"}, {"max": 9, "min": 2, "name": "GNTgzdowgvahDtJv"}, {"max": 50, "min": 15, "name": "jd7F8QHDntcTKGAf"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 21}, "max_number": 37, "min_number": 4, "player_max_number": 29, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 57, "name": "x5Gd49uwtl2G760b"}, {"max": 72, "min": 2, "name": "Yik8GKliVOdcT1A5"}, {"max": 49, "min": 22, "name": "FxBPbj4aD4XgsyYP"}], [{"max": 37, "min": 82, "name": "3LXXYV7MbWbpuLzR"}, {"max": 39, "min": 79, "name": "nmvHwRFRL30FNlEi"}, {"max": 77, "min": 84, "name": "VQq9rvawaJDXDsb5"}], [{"max": 50, "min": 62, "name": "GCrL3YSpo8nmarBQ"}, {"max": 44, "min": 85, "name": "0CaQyNzY2XkAIXMZ"}, {"max": 35, "min": 70, "name": "i2zSa1l8Inma53Yq"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 2}, "duration": 90, "max_number": 17, "min_number": 1, "player_max_number": 83, "player_min_number": 9}, {"combination": {"alliances": [[{"max": 21, "min": 22, "name": "P1rjshqUZhIt4sTI"}, {"max": 100, "min": 7, "name": "AL945xistmCKYjyO"}, {"max": 44, "min": 3, "name": "QDMvvfL0IvCfSCiD"}], [{"max": 55, "min": 73, "name": "cctp6TYDiH1ZpkYe"}, {"max": 77, "min": 64, "name": "ruWqMLJeZlBrBobd"}, {"max": 43, "min": 100, "name": "ei1WdYTRnCWhFfDU"}], [{"max": 79, "min": 51, "name": "l1B9vmOfwO0NO8Q7"}, {"max": 26, "min": 48, "name": "ePC8rXWt7Ln86cIl"}, {"max": 72, "min": 85, "name": "I3Q4X8xXgM45rOS1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 91}, "duration": 35, "max_number": 25, "min_number": 97, "player_max_number": 35, "player_min_number": 26}, {"combination": {"alliances": [[{"max": 72, "min": 39, "name": "ZSeC5TaWVa9IdkNK"}, {"max": 88, "min": 81, "name": "vEp4LOl2tmkHkD8U"}, {"max": 6, "min": 27, "name": "l4msB35lmkQR2icN"}], [{"max": 71, "min": 33, "name": "S8DYJjlyw4YJABJ0"}, {"max": 50, "min": 88, "name": "WHbexeUC7aSDboLT"}, {"max": 79, "min": 80, "name": "XW0xJrZzUxGlYoyg"}], [{"max": 97, "min": 84, "name": "CHWtU0EftZZsDDPU"}, {"max": 7, "min": 41, "name": "UQ7jMOvuoMjCn2q9"}, {"max": 68, "min": 3, "name": "vva2hcKjYnE5eKJW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 31, "role_flexing_second": 49}, "duration": 57, "max_number": 34, "min_number": 25, "player_max_number": 45, "player_min_number": 36}], "batch_size": 15, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 93, "flex_flat_step_range": 41, "flex_immunity_count": 71, "flex_range_max": 7, "flex_rate_ms": 71, "flex_step_max": 39, "force_authority_match": false, "initial_step_range": 99, "mmr_max": 78, "mmr_mean": 85, "mmr_min": 15, "mmr_std_dev": 71, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "ZJboeK9SBiFb8NAw", "criteria": "ko5COARj7akNTpgP", "duration": 93, "reference": 0.9765042385895021}, {"attribute": "V1UoLd4gEB5lBAb5", "criteria": "AV6yJzdLDgK8wN7l", "duration": 80, "reference": 0.8609917773012986}, {"attribute": "YJKg4FGU0IV3wBbH", "criteria": "QYYULvblMBiIEpYM", "duration": 87, "reference": 0.07072295492194525}], "match_options": {"options": [{"name": "qvU2GZepv99jTZkr", "type": "TRAufHVOjHIUwjov"}, {"name": "7yCzdeIrDcYWEFMP", "type": "QtoW4yTfC1ojbqRA"}, {"name": "FJ9r6Q03sziFvvMm", "type": "Q9HKTwdpUSCcNBHi"}]}, "matching_rule": [{"attribute": "KOK6SXTYpF1qC1nJ", "criteria": "chtUtOV0eAXS7MzA", "reference": 0.9268099113913938}, {"attribute": "w4RdKS06oEKWP1TO", "criteria": "Rjl5iTcGg1ZPgNSf", "reference": 0.7433358471996709}, {"attribute": "zzmlUzwYPSnYrtnl", "criteria": "YQNlpIx3Uxk4zZVB", "reference": 0.15614722634286993}], "rebalance_enable": false, "sort_ticket": {"search_result": "largestPartySize", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "none", "threshold": 67, "ticket_queue": "oldestTicketAge"}, {"search_result": "random", "threshold": 96, "ticket_queue": "largestPartySize"}, {"search_result": "random", "threshold": 40, "ticket_queue": "none"}], "sub_game_modes": {"GNRSDAAE5akyIXIc": {"alliance": {"combination": {"alliances": [[{"max": 78, "min": 86, "name": "VCJdRq70SEaYPf9R"}, {"max": 57, "min": 84, "name": "5M0JP3FThqqbqVNk"}, {"max": 74, "min": 76, "name": "oy8J5r7BdvWb7wTC"}], [{"max": 40, "min": 81, "name": "2x8rPuhtGPh1vFMU"}, {"max": 41, "min": 31, "name": "9QFsE0zjAsyqysTg"}, {"max": 16, "min": 2, "name": "UIAOrblNLfsxRc6W"}], [{"max": 88, "min": 38, "name": "c2e6sgohVeRLneaO"}, {"max": 26, "min": 4, "name": "5qpZtLer9t88eYnN"}, {"max": 45, "min": 71, "name": "DrS7NyVtdbzEa9cn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 52}, "max_number": 29, "min_number": 40, "player_max_number": 23, "player_min_number": 12}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 78, "min": 41, "name": "DKcYPwJr46SUqwL7"}, {"max": 21, "min": 6, "name": "fm26RwoREnZC5pco"}, {"max": 11, "min": 76, "name": "zpU2MJPbJ2CCdO2r"}], [{"max": 68, "min": 48, "name": "1UAr9aCEcUE6GYvr"}, {"max": 32, "min": 81, "name": "9Pg8MwFqSuuSKtwF"}, {"max": 27, "min": 1, "name": "hNDZmACWnelhjK03"}], [{"max": 62, "min": 78, "name": "kwf9rEVefrrUbeGV"}, {"max": 45, "min": 5, "name": "b0cIeiUbfuoxHk1a"}, {"max": 1, "min": 76, "name": "F8UhD1CoTYMk69oi"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 85}, "duration": 98, "max_number": 23, "min_number": 35, "player_max_number": 40, "player_min_number": 70}, {"combination": {"alliances": [[{"max": 51, "min": 74, "name": "NN5Gfdec42JARZBM"}, {"max": 59, "min": 59, "name": "qKQwRd9y3vQyxd21"}, {"max": 45, "min": 45, "name": "MbRaWJZszM3pKyEU"}], [{"max": 43, "min": 12, "name": "VbZAj7wLQ0lNRnYN"}, {"max": 86, "min": 66, "name": "5bwX8H7f2MA61PGq"}, {"max": 28, "min": 13, "name": "bHB3E7K9coKUUQz4"}], [{"max": 63, "min": 26, "name": "YuTiA0NeJzzvI4Za"}, {"max": 17, "min": 41, "name": "MlxEcwtGzIpKf9Ts"}, {"max": 2, "min": 66, "name": "VWBuB4pfTKNFOGAK"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 12}, "duration": 49, "max_number": 47, "min_number": 29, "player_max_number": 70, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 72, "min": 26, "name": "Cx54aGiyU51ijZnl"}, {"max": 46, "min": 36, "name": "LyehU0cmzwdX2bq0"}, {"max": 26, "min": 59, "name": "5oQropcbeQ1uFG4W"}], [{"max": 22, "min": 18, "name": "SO56CAXdWivhBuOo"}, {"max": 77, "min": 50, "name": "19JrqyxIMUnfwTnO"}, {"max": 25, "min": 65, "name": "qpt676rcKj5eM6H5"}], [{"max": 14, "min": 8, "name": "WseKvLqzpinpgPVN"}, {"max": 84, "min": 53, "name": "CL5uQGaqnZtksLn7"}, {"max": 38, "min": 60, "name": "Nl8PIjOSote3mNNq"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 76}, "duration": 42, "max_number": 13, "min_number": 51, "player_max_number": 56, "player_min_number": 91}], "name": "7SBJRxwT7BxVkMFt"}, "oTEXMJWs8xd6hlKY": {"alliance": {"combination": {"alliances": [[{"max": 92, "min": 97, "name": "5ukjzYyuYXdL8E4C"}, {"max": 81, "min": 15, "name": "elyXTMQH2tXqKNGY"}, {"max": 91, "min": 25, "name": "kvd17qfNoOEQC08z"}], [{"max": 65, "min": 59, "name": "U4DA4hYwHVxOpmbU"}, {"max": 21, "min": 16, "name": "1Q2OKF6xOTY8c9Os"}, {"max": 57, "min": 30, "name": "l9AuQTfWb5B7loy7"}], [{"max": 41, "min": 40, "name": "pfmQKKiILHtpep2K"}, {"max": 95, "min": 70, "name": "oFK722HLpEjnSkaA"}, {"max": 45, "min": 53, "name": "nbhsUgQWcXlY5f29"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 26}, "max_number": 51, "min_number": 57, "player_max_number": 91, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 63, "name": "SZEujhJgKjqM4RLf"}, {"max": 57, "min": 26, "name": "sAqHT5dNgwtEH3mJ"}, {"max": 18, "min": 95, "name": "FbS69NrRdf8ma9jj"}], [{"max": 59, "min": 5, "name": "tGS7v81uPzq5HB3R"}, {"max": 18, "min": 70, "name": "kbkwYBj7WufIo5dF"}, {"max": 13, "min": 69, "name": "usT1EBuQJt1n0uZH"}], [{"max": 27, "min": 47, "name": "vLzJsKJuztE7ODXU"}, {"max": 58, "min": 58, "name": "mJ4ghzDEfklMw4EC"}, {"max": 8, "min": 29, "name": "et3GVSGZUSju1Etu"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 98}, "duration": 28, "max_number": 0, "min_number": 93, "player_max_number": 54, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 54, "min": 72, "name": "6OTgQ0pxXdYTbEvt"}, {"max": 36, "min": 47, "name": "cEbSf7KnMxh2nbjE"}, {"max": 48, "min": 91, "name": "VLJs7pzp7LDMYTmz"}], [{"max": 88, "min": 78, "name": "IvSeA74nURE8KbmE"}, {"max": 20, "min": 43, "name": "efcZMaEvYemOqoWv"}, {"max": 53, "min": 12, "name": "BNaNOVMfzAIKCdk8"}], [{"max": 75, "min": 79, "name": "RiObf97f2OUN94sm"}, {"max": 7, "min": 96, "name": "NByk5twHkNBKkMSA"}, {"max": 82, "min": 97, "name": "NEmlbIycdsRKcnss"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 8}, "duration": 48, "max_number": 56, "min_number": 23, "player_max_number": 71, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 28, "min": 70, "name": "hg9MkrXpu6pA7aLb"}, {"max": 18, "min": 30, "name": "To17LpyY1t5JQw7C"}, {"max": 52, "min": 67, "name": "1qvqoxMKWTjUwHO5"}], [{"max": 7, "min": 9, "name": "vJ4Tbpjd7zqZVkgL"}, {"max": 81, "min": 21, "name": "6kMTOd8jT5uXnqbm"}, {"max": 34, "min": 67, "name": "Qz7pNNBVhJ66JkS6"}], [{"max": 56, "min": 86, "name": "SMvaUvFIbasKdsmG"}, {"max": 16, "min": 9, "name": "HLdRPlVvuJezB3iy"}, {"max": 51, "min": 26, "name": "TwxKUrbO7YJ4nD0q"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 76}, "duration": 68, "max_number": 35, "min_number": 90, "player_max_number": 0, "player_min_number": 26}], "name": "ds2ndmytw13lIAjM"}, "qFtjtPeBrzmA3smU": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 9, "name": "tAW6PK3Kix4UFLFU"}, {"max": 98, "min": 41, "name": "BtcVxSP8IyQOt5mF"}, {"max": 9, "min": 33, "name": "vavYZ2TGIbruESby"}], [{"max": 34, "min": 65, "name": "yMnSe2J9w5azMNvL"}, {"max": 86, "min": 6, "name": "TNcskP39iWEuOuMj"}, {"max": 21, "min": 62, "name": "LClQhwFmVCX2i6IS"}], [{"max": 29, "min": 67, "name": "5E56wgujd3YiNWIu"}, {"max": 2, "min": 77, "name": "hy6Kv8mE7rnVaaBt"}, {"max": 11, "min": 43, "name": "fajqjSMhyOxyfNv4"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 44}, "max_number": 39, "min_number": 83, "player_max_number": 62, "player_min_number": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 81, "min": 7, "name": "9JnbvfAuP6m13reX"}, {"max": 57, "min": 39, "name": "HqwRG1MgmpVRvaCI"}, {"max": 68, "min": 92, "name": "L9blShYnfyQGfGje"}], [{"max": 81, "min": 11, "name": "LIS3PPF3YeUDQN8f"}, {"max": 44, "min": 17, "name": "MvcpbIind94HMhV2"}, {"max": 13, "min": 21, "name": "IcjrAktizDUZ6Ne6"}], [{"max": 96, "min": 14, "name": "EnOKxSgQWiiIMce2"}, {"max": 58, "min": 74, "name": "daY6F5UKGGv16Lm2"}, {"max": 21, "min": 100, "name": "qy2JgB8YZhMfRWDy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 86}, "duration": 57, "max_number": 80, "min_number": 3, "player_max_number": 57, "player_min_number": 49}, {"combination": {"alliances": [[{"max": 29, "min": 52, "name": "uLfSJkhsSRAXA5SW"}, {"max": 9, "min": 48, "name": "lP90wMO6bBHP9mxT"}, {"max": 46, "min": 30, "name": "TnVcKxlqtY2vCOFl"}], [{"max": 63, "min": 4, "name": "EeL7pPqJbgKGSFZj"}, {"max": 98, "min": 17, "name": "HiDx99AAj3atTIwT"}, {"max": 80, "min": 79, "name": "LZCo2QE8tBLIaBET"}], [{"max": 34, "min": 49, "name": "AB0TOSAI20H7pxPX"}, {"max": 65, "min": 10, "name": "iFnyqCiQtMOzFgoO"}, {"max": 19, "min": 59, "name": "N819z9rVfcuZNYEn"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 27, "role_flexing_second": 39}, "duration": 43, "max_number": 88, "min_number": 49, "player_max_number": 76, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 87, "min": 73, "name": "8zB5K6v7mobx21Va"}, {"max": 99, "min": 6, "name": "OqAra0rYtKjZtfvM"}, {"max": 47, "min": 6, "name": "r7uLNmlMs0YsVGL1"}], [{"max": 59, "min": 97, "name": "UqD6HQ5RVbC3Hvei"}, {"max": 42, "min": 91, "name": "j2RVPknTGcToKkr6"}, {"max": 34, "min": 84, "name": "tPucdtE3HHXElJ0R"}], [{"max": 58, "min": 65, "name": "jdlbdXZWGh99h6OC"}, {"max": 47, "min": 19, "name": "JEqf4R0D2TgOqhQU"}, {"max": 43, "min": 61, "name": "HOvi2oRpUjJzmsVh"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 3}, "duration": 36, "max_number": 51, "min_number": 59, "player_max_number": 85, "player_min_number": 0}], "name": "dlI2t66M8O7aj1dd"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "oldest", "threshold": 32}, {"selection": "pivot", "threshold": 88}, {"selection": "newest", "threshold": 52}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 68, "social_matchmaking": false, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
