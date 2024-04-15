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

Example: '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "1RuBYoznrF75ctcM", "description": "KxoFt122pBxEOngL", "find_match_timeout_seconds": 80, "game_mode": "I1YffVatUa8V9Jct", "joinable": true, "max_delay_ms": 79, "region_expansion_range_ms": 96, "region_expansion_rate_ms": 2, "region_latency_initial_range_ms": 76, "region_latency_max_ms": 26, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 39, "min": 36, "name": "YAdALUo1aCdbrrQ9"}, {"max": 66, "min": 31, "name": "a326biSuzMNeOc9l"}, {"max": 81, "min": 76, "name": "o1wDv2BonKafBT9I"}], [{"max": 70, "min": 82, "name": "8gc5ImloqLIbgbyh"}, {"max": 69, "min": 82, "name": "9WF6PCINKaiLDLGL"}, {"max": 0, "min": 54, "name": "Ljt22iJN7o2pJPtH"}], [{"max": 22, "min": 55, "name": "hBUAe6TF0OOqoGG7"}, {"max": 58, "min": 44, "name": "F4uZ5JOmBvww6DPC"}, {"max": 85, "min": 22, "name": "rwydIFonFlG2sK8l"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 49, "role_flexing_second": 45}, "max_number": 3, "min_number": 38, "player_max_number": 23, "player_min_number": 8}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 20, "name": "CLy2t5XAzlgoaiqT"}, {"max": 7, "min": 70, "name": "BQbpg8gcw9dkMKfr"}, {"max": 14, "min": 47, "name": "W5pRMOwMvy0iBlE4"}], [{"max": 44, "min": 37, "name": "55GP13oBWZdy45zE"}, {"max": 45, "min": 67, "name": "Ua0kgrgFdKjOyb4A"}, {"max": 25, "min": 31, "name": "ggZvO5ca4RMNKX2b"}], [{"max": 53, "min": 49, "name": "dJ1BERQqbeAQtUMf"}, {"max": 52, "min": 90, "name": "77BYaOqDQT4xI7GN"}, {"max": 60, "min": 89, "name": "jZY4USMz95IuKiVU"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 94}, "duration": 42, "max_number": 25, "min_number": 64, "player_max_number": 10, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 67, "min": 96, "name": "oJ480taOF5tBv3pA"}, {"max": 47, "min": 36, "name": "P4ZC1TDqBlM9SZoP"}, {"max": 81, "min": 98, "name": "plhJRtZsFMMmzvHZ"}], [{"max": 98, "min": 2, "name": "kNHHGHPJS03ANGOv"}, {"max": 68, "min": 8, "name": "3qdH4ZRrramLTLbn"}, {"max": 33, "min": 69, "name": "QZtIbXZPhLsLDX9s"}], [{"max": 88, "min": 3, "name": "ZmGzxTACCVOQhh0y"}, {"max": 67, "min": 4, "name": "7Dt3ctem8yzBXxRt"}, {"max": 44, "min": 81, "name": "zTtbKY4ZZ2597wAI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 14}, "duration": 77, "max_number": 91, "min_number": 0, "player_max_number": 3, "player_min_number": 7}, {"combination": {"alliances": [[{"max": 1, "min": 48, "name": "FHifdxVf0S0X8dN3"}, {"max": 32, "min": 96, "name": "JnJBRBYpvy8gH0AP"}, {"max": 99, "min": 52, "name": "RqrwJTlRq2OSWzct"}], [{"max": 52, "min": 92, "name": "cUeir5plUFtFFCAJ"}, {"max": 15, "min": 56, "name": "M9jNvbjQnJnPzM9Y"}, {"max": 35, "min": 94, "name": "ixbituDEbrCeiNR4"}], [{"max": 87, "min": 56, "name": "0phHfQYJLVlIsFkS"}, {"max": 44, "min": 75, "name": "p73yzerN9DgCTcdV"}, {"max": 8, "min": 38, "name": "JkBnow9YIgNZ9QLl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 24}, "duration": 98, "max_number": 30, "min_number": 46, "player_max_number": 12, "player_min_number": 3}], "batch_size": 22, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 95, "flex_flat_step_range": 61, "flex_immunity_count": 62, "flex_range_max": 57, "flex_rate_ms": 74, "flex_step_max": 72, "force_authority_match": true, "initial_step_range": 87, "mmr_max": 55, "mmr_mean": 87, "mmr_min": 68, "mmr_std_dev": 36, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "8H6uBNQiBCkVy8pq", "criteria": "yZcX5VLqZ5AZJapj", "duration": 58, "reference": 0.7456154157542625}, {"attribute": "qUm0N5eZXMYZ3jEN", "criteria": "x062lTW6JBI4OTt1", "duration": 59, "reference": 0.4761683202516561}, {"attribute": "84vx0DED6R9DoW1j", "criteria": "JaRfSfF18GAtY2xK", "duration": 40, "reference": 0.005708133116130387}], "match_options": {"options": [{"name": "rthweBXyP2eYJRub", "type": "Hdt883cwtqYDdRml"}, {"name": "abYf4SrIeCdHxMPx", "type": "953vKopkAtjYQ2Au"}, {"name": "bTEdfA7GfJecPm12", "type": "PECLHUSV2HtWNhSi"}]}, "matching_rule": [{"attribute": "E8It9BaqfLiVqL5S", "criteria": "0aKQc1i0y3M3WERR", "reference": 0.4652359599155198}, {"attribute": "M6q2WMPyQGt6oamF", "criteria": "XVChMExPHb4Jpi3B", "reference": 0.864832741932015}, {"attribute": "yIjRMYxmteI9ahfJ", "criteria": "mIyhpwEWc2ILE2Zd", "reference": 0.05267780598594951}], "rebalance_enable": true, "sort_ticket": {"search_result": "xoTob8ueaXkzTjpw", "ticket_queue": "pRC07BXzVMWgCENu"}, "sort_tickets": [{"search_result": "40KyFVnlqmaA5Jpw", "threshold": 46, "ticket_queue": "GSSHMHahWQSwNCCG"}, {"search_result": "nw0UDHkFIFVZsRFD", "threshold": 10, "ticket_queue": "W6q7K29ub0pIPvqs"}, {"search_result": "YHzGPlhVH27Xw7uT", "threshold": 31, "ticket_queue": "Qpj1rXpUqX4BqDbT"}], "sub_game_modes": {"FG8jxjP7DgMZbPXV": {"alliance": {"combination": {"alliances": [[{"max": 32, "min": 13, "name": "FyOw1BK6lniH2vgs"}, {"max": 21, "min": 84, "name": "kiXYVo4XZeYuDcy5"}, {"max": 66, "min": 68, "name": "0TXL5WjNwK6I8gOa"}], [{"max": 17, "min": 3, "name": "HSjpEmNoudrO9O8P"}, {"max": 59, "min": 46, "name": "L85wR52Oy2sRfdXU"}, {"max": 25, "min": 64, "name": "qCBgC9CtyVX5a4Vk"}], [{"max": 65, "min": 77, "name": "hULyYVftWoK7g7RN"}, {"max": 47, "min": 97, "name": "deuXqWbODiZkx7cl"}, {"max": 55, "min": 44, "name": "8uecVm3Zi3dKPitG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 86, "role_flexing_second": 30}, "max_number": 65, "min_number": 37, "player_max_number": 69, "player_min_number": 74}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 79, "min": 56, "name": "8jjKTabh8OIHLlSM"}, {"max": 51, "min": 73, "name": "umCvBOI2jdMxQLX2"}, {"max": 75, "min": 93, "name": "iu0F15dWSXBZsXcA"}], [{"max": 53, "min": 14, "name": "ODslu07q9JCiLd4n"}, {"max": 5, "min": 24, "name": "M8ZskZ5zRxgzV3sD"}, {"max": 31, "min": 30, "name": "mkfVmZwRbuCuEQQX"}], [{"max": 98, "min": 65, "name": "xFGuDpukSRBDQBNN"}, {"max": 37, "min": 41, "name": "hzgqh7lwRRCHQwhQ"}, {"max": 76, "min": 16, "name": "1qnWCFuyOT44C010"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 47}, "duration": 3, "max_number": 19, "min_number": 11, "player_max_number": 34, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 37, "min": 18, "name": "Eo4wUIpfmXTxqPWV"}, {"max": 75, "min": 94, "name": "eGjd54iQDLRFcflY"}, {"max": 36, "min": 74, "name": "atAPWvqOfFWyOydX"}], [{"max": 45, "min": 86, "name": "5qkQlrb6hXRwtDp2"}, {"max": 51, "min": 52, "name": "8tq3mlP2hln0dycn"}, {"max": 62, "min": 56, "name": "1pnONtQljjx5OtpR"}], [{"max": 70, "min": 89, "name": "M6pMqduzxkdy77uq"}, {"max": 63, "min": 35, "name": "UfFt5txDueB8pb7U"}, {"max": 45, "min": 0, "name": "VrALCvlwbFogHbcy"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 87, "role_flexing_second": 28}, "duration": 42, "max_number": 89, "min_number": 3, "player_max_number": 24, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 7, "min": 35, "name": "l1D5hGRCg9eltX5z"}, {"max": 100, "min": 35, "name": "o1t6RHRxhzgwtHLR"}, {"max": 45, "min": 3, "name": "DM5AeLM291e6liOq"}], [{"max": 30, "min": 44, "name": "Gas1BhHmRAeMw5Lu"}, {"max": 90, "min": 72, "name": "yZkJ7hXFnGCM13Wt"}, {"max": 77, "min": 58, "name": "F4PqFvR4mJYjlzQ3"}], [{"max": 99, "min": 5, "name": "wAsLBfF6A5HStn55"}, {"max": 9, "min": 57, "name": "2qcTV8nogqa2KaXB"}, {"max": 72, "min": 73, "name": "D3K3axLgMeNA8XHg"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 89}, "duration": 82, "max_number": 48, "min_number": 50, "player_max_number": 52, "player_min_number": 34}], "name": "N5jccfd5z7fo3clY"}, "J17OYh6Oze1LFUAI": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 38, "name": "3hwVOP4KMnUaXVnK"}, {"max": 50, "min": 84, "name": "iRs08v8tR1RnSiwE"}, {"max": 21, "min": 92, "name": "1wbzc0btZtj2G8kc"}], [{"max": 26, "min": 6, "name": "nieNUyFmfmvCa0rK"}, {"max": 79, "min": 85, "name": "Er6eb3BzlpeH4L5u"}, {"max": 80, "min": 96, "name": "V3Z71ZqzdsB9Oi5I"}], [{"max": 73, "min": 7, "name": "gqNx6T7NNft2TzM1"}, {"max": 94, "min": 68, "name": "9wqHcXW7plKMz8Sr"}, {"max": 6, "min": 65, "name": "t1GNQASFwx0H1XpA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 68}, "max_number": 3, "min_number": 19, "player_max_number": 2, "player_min_number": 46}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 16, "min": 4, "name": "TV1DhpHGVB4OM93D"}, {"max": 24, "min": 44, "name": "wpGqR9O6GjRceaNL"}, {"max": 61, "min": 92, "name": "OR8FjAK0M0lGdHn5"}], [{"max": 7, "min": 39, "name": "RcBJYZLZuVjarI9I"}, {"max": 23, "min": 59, "name": "7GGpYgWrFnKUyDbW"}, {"max": 78, "min": 49, "name": "TRGQfvK6Wjc4G1wX"}], [{"max": 43, "min": 28, "name": "dnCTjXTZ4BpI451J"}, {"max": 54, "min": 90, "name": "3wqdFOki1n6RUciW"}, {"max": 53, "min": 49, "name": "URbGcSyZXJuAEdzR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 38}, "duration": 40, "max_number": 36, "min_number": 40, "player_max_number": 85, "player_min_number": 78}, {"combination": {"alliances": [[{"max": 33, "min": 82, "name": "yJ8C0ZVaMmaIAIiq"}, {"max": 17, "min": 51, "name": "K1RDaBJW3vhmRAWj"}, {"max": 91, "min": 74, "name": "jWx6mFhRMcTSTuzX"}], [{"max": 0, "min": 73, "name": "tPqkDQlh0OISpFDM"}, {"max": 62, "min": 46, "name": "9oJ2IXUtypYDTSZX"}, {"max": 57, "min": 75, "name": "ScpgrxdlQoAAJ3wY"}], [{"max": 60, "min": 48, "name": "HzdN4dzyeeNJJBTv"}, {"max": 3, "min": 38, "name": "9L4F3Rjam58AglbE"}, {"max": 39, "min": 26, "name": "IUlnWwiG5q2T4XRq"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 14}, "duration": 43, "max_number": 94, "min_number": 98, "player_max_number": 0, "player_min_number": 26}, {"combination": {"alliances": [[{"max": 54, "min": 61, "name": "LSUGdh89YkKdxQ2o"}, {"max": 76, "min": 11, "name": "vd5uLdR0o8NXN9vz"}, {"max": 14, "min": 22, "name": "8kXaYAgxZm0u6iiG"}], [{"max": 6, "min": 28, "name": "wTXGOUxFlCYNK2A3"}, {"max": 85, "min": 82, "name": "D63sW9JfEKQwVITc"}, {"max": 61, "min": 12, "name": "6tyMk8gzPaPzPKWE"}], [{"max": 16, "min": 97, "name": "NaFXbuiJCqA9pYYz"}, {"max": 52, "min": 39, "name": "PwImCbUAjJJqMjoB"}, {"max": 66, "min": 54, "name": "lifLxwrhs0Y31vqd"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 39, "role_flexing_second": 21}, "duration": 1, "max_number": 70, "min_number": 55, "player_max_number": 78, "player_min_number": 16}], "name": "uzbrvucbY9bMUVd3"}, "wU1P21hxaHLmb0hk": {"alliance": {"combination": {"alliances": [[{"max": 95, "min": 63, "name": "8Fzd9HjtBmHoi88X"}, {"max": 100, "min": 9, "name": "5BylDyCK62JA28pG"}, {"max": 26, "min": 47, "name": "poOCHB2PuiUiszrk"}], [{"max": 36, "min": 97, "name": "CU126OoTyC1ezilL"}, {"max": 55, "min": 58, "name": "wkRRny282iP5I30Q"}, {"max": 94, "min": 15, "name": "ZgTFBUf8mMFUPofz"}], [{"max": 78, "min": 13, "name": "Zd8qDnsRW43OrKNd"}, {"max": 89, "min": 32, "name": "dlyTKrAamnsTg7NW"}, {"max": 100, "min": 70, "name": "8J99IS7Vz8wIp2m0"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 98, "role_flexing_second": 16}, "max_number": 59, "min_number": 62, "player_max_number": 65, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 49, "min": 66, "name": "7ODP9wuV7Wn2Ba5N"}, {"max": 73, "min": 85, "name": "mDpmnE4wXXcYBgO2"}, {"max": 97, "min": 89, "name": "NGAgSK0oZd6k83ja"}], [{"max": 2, "min": 80, "name": "gibSIUX8eiXg2C4A"}, {"max": 63, "min": 64, "name": "DB315if6GWtNAR2V"}, {"max": 72, "min": 9, "name": "DhytHj6x5FaY39Bk"}], [{"max": 87, "min": 60, "name": "KyEQA3mvAF12Ub9t"}, {"max": 30, "min": 53, "name": "7Hebdni8uN78TmRT"}, {"max": 39, "min": 3, "name": "TJxjPnzlucSKpk7A"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 12}, "duration": 96, "max_number": 58, "min_number": 69, "player_max_number": 95, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 42, "min": 83, "name": "qKTzXmniN5Fmx2if"}, {"max": 58, "min": 15, "name": "2rVmnGkzlvHmxIRD"}, {"max": 87, "min": 31, "name": "2jRygKobohWEQVzM"}], [{"max": 36, "min": 47, "name": "fGzghl5kOJ2bGPHN"}, {"max": 55, "min": 97, "name": "m9pce1WK1jH1UmR8"}, {"max": 54, "min": 50, "name": "snr0phZXG7FhhSgs"}], [{"max": 56, "min": 3, "name": "jptmkGu7gaOtaohv"}, {"max": 62, "min": 0, "name": "ex71CFpjQS3lQcxn"}, {"max": 79, "min": 97, "name": "vofvoTBrF0paMlvl"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 57}, "duration": 52, "max_number": 39, "min_number": 86, "player_max_number": 6, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 9, "min": 26, "name": "6zEXez2UJVQ3GRyF"}, {"max": 69, "min": 35, "name": "y1H8HHeFrmn70dtm"}, {"max": 76, "min": 14, "name": "bkVdYKiL22qTkPbR"}], [{"max": 62, "min": 42, "name": "JBaM3grEeQovW3zV"}, {"max": 12, "min": 71, "name": "XwKkLUvwq3CwKXaW"}, {"max": 34, "min": 43, "name": "owgq2uiMahBGnV4j"}], [{"max": 21, "min": 58, "name": "EXop2dbfXAoblJvU"}, {"max": 66, "min": 61, "name": "xM1zkYaur5IBJdN2"}, {"max": 43, "min": 43, "name": "LYlQ7A0w3VKWDJgw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 79, "role_flexing_second": 23}, "duration": 31, "max_number": 82, "min_number": 77, "player_max_number": 93, "player_min_number": 53}], "name": "1kw0l2qfotPwknwf"}}, "ticket_flexing_selection": "WXhF3mcyazSj3gV3", "ticket_flexing_selections": [{"selection": "3YeYEEieE8Zk38xw", "threshold": 56}, {"selection": "rg39NntxVbUiULyF", "threshold": 83}, {"selection": "av45zsG6075QVHzu", "threshold": 12}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 61, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
