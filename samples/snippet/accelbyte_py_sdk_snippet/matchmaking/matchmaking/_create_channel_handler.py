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

Example: '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "NU3eJBoOx8XjPnjL", "description": "jKlv5QC4goopeWHT", "find_match_timeout_seconds": 73, "game_mode": "Whd8XEv8fXK4SocP", "joinable": true, "max_delay_ms": 61, "region_expansion_range_ms": 74, "region_expansion_rate_ms": 85, "region_latency_initial_range_ms": 41, "region_latency_max_ms": 29, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 49, "name": "ELSmlBlqBLbH63wB"}, {"max": 74, "min": 79, "name": "Ri1wyVODNP5pCqco"}, {"max": 43, "min": 81, "name": "rlfQ1HeMzhWCri9Y"}], [{"max": 43, "min": 99, "name": "aHeQAEvms9LC8YZw"}, {"max": 34, "min": 32, "name": "cCGs7ezUbV6JTfig"}, {"max": 96, "min": 76, "name": "k32LScsntaL1cKOw"}], [{"max": 85, "min": 85, "name": "GnAfyXmzRCOoN7cH"}, {"max": 53, "min": 25, "name": "1Tl7yCE32kN10GeG"}, {"max": 100, "min": 1, "name": "Rg4yMqjjTM1Swx9S"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 10}, "max_number": 51, "min_number": 14, "player_max_number": 43, "player_min_number": 45}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 45, "min": 47, "name": "uduIpcDXABKpicMO"}, {"max": 85, "min": 100, "name": "d7LaJNhkJe2kRW1m"}, {"max": 46, "min": 80, "name": "dq4PPGm0KhnVCEQq"}], [{"max": 68, "min": 37, "name": "mBrLmSGo4968NLX1"}, {"max": 46, "min": 13, "name": "Y11o2rqqMMAVVsFo"}, {"max": 87, "min": 63, "name": "LFVA1eRZ3AklR7DD"}], [{"max": 17, "min": 11, "name": "DhBz3h7vGMqyViFc"}, {"max": 83, "min": 54, "name": "YslygdJdxE8VOYWm"}, {"max": 74, "min": 42, "name": "LWXoRNUchGjkZXM1"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 83}, "duration": 78, "max_number": 66, "min_number": 84, "player_max_number": 34, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 53, "min": 6, "name": "USDqbReOnsDqlPCA"}, {"max": 40, "min": 58, "name": "RdfWTJCnb3jasfra"}, {"max": 52, "min": 74, "name": "hv3CyFxconEEXefy"}], [{"max": 99, "min": 47, "name": "KQt7kssMuLFl65Lj"}, {"max": 43, "min": 36, "name": "JTd0oxTw4DlOuQsY"}, {"max": 6, "min": 4, "name": "fMknksENYK4jkAWK"}], [{"max": 24, "min": 63, "name": "WHjcOj2qEK0x1LXV"}, {"max": 63, "min": 74, "name": "yNCC1JUmySfGNWCF"}, {"max": 99, "min": 74, "name": "B5DQerJJhVKlRFFZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 43}, "duration": 50, "max_number": 2, "min_number": 38, "player_max_number": 50, "player_min_number": 75}, {"combination": {"alliances": [[{"max": 66, "min": 51, "name": "EN5zRngDoiO8zns6"}, {"max": 83, "min": 65, "name": "vUbsliqhgmOjTHcE"}, {"max": 39, "min": 40, "name": "O6zdD2mxce5J3wUO"}], [{"max": 50, "min": 99, "name": "McihW3PnXNKHlG5v"}, {"max": 40, "min": 39, "name": "EoOvRet6ZE3r1AzK"}, {"max": 95, "min": 7, "name": "j0o6l3B7R1vQR5z5"}], [{"max": 94, "min": 10, "name": "2fAlgDV74Rpo9uMo"}, {"max": 0, "min": 59, "name": "rEOmfp6PXt9fU9tZ"}, {"max": 88, "min": 73, "name": "mdTuvKfjNv1Zvp7p"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 83}, "duration": 84, "max_number": 18, "min_number": 69, "player_max_number": 49, "player_min_number": 53}], "batch_size": 79, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 83, "flex_flat_step_range": 64, "flex_immunity_count": 19, "flex_range_max": 54, "flex_rate_ms": 46, "flex_step_max": 73, "force_authority_match": false, "initial_step_range": 81, "mmr_max": 66, "mmr_mean": 46, "mmr_min": 80, "mmr_std_dev": 88, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "hKI3eanUaoIgX1A2", "criteria": "LMyho8NwJokvZ13n", "duration": 54, "reference": 0.8725000820161839}, {"attribute": "E3Hog97ChIohSnaV", "criteria": "QGfKnYqHJUsNhg8q", "duration": 2, "reference": 0.5622445388527547}, {"attribute": "26B9wtjPykr7x1s6", "criteria": "QGNqYYb9eJVXv6rT", "duration": 12, "reference": 0.7097727565669566}], "match_options": {"options": [{"name": "3Uoa54cArp5MghQt", "type": "han3RqsWQtysJ17G"}, {"name": "9IhLhqzum9cly0g9", "type": "mD0pK58YvjePDy3a"}, {"name": "fqnYWtWkv5yoOVFL", "type": "tKJIiyAGVm54azkE"}]}, "matching_rule": [{"attribute": "JWHkk7Lg5qbXXtya", "criteria": "502jzwkPHNEOYNjJ", "reference": 0.6729712243094477}, {"attribute": "jpegpE6N4UkXoutL", "criteria": "8aL9eCLbGNMoHKiq", "reference": 0.6560257135049685}, {"attribute": "jILWBj7foBMCCjBy", "criteria": "PYiAvRxnhJe32tfW", "reference": 0.7378378668091915}], "rebalance_enable": true, "sort_ticket": {"search_result": "cvwVwVVuxECmGYGu", "ticket_queue": "SBIylg6ralp9LiMa"}, "sort_tickets": [{"search_result": "iaHEuSxMPJpPceqI", "threshold": 5, "ticket_queue": "1sQo6iM5T052soYR"}, {"search_result": "bJaHgQyJC9VVezM7", "threshold": 42, "ticket_queue": "g1grmFf1giMhMcSx"}, {"search_result": "XvMuWI62fCDIY44z", "threshold": 100, "ticket_queue": "NDaivviAedNyMjNI"}], "sub_game_modes": {"c01YqJOIeH8Q0SCf": {"alliance": {"combination": {"alliances": [[{"max": 30, "min": 85, "name": "LnONiY3L8nxbWgDN"}, {"max": 93, "min": 80, "name": "s6YQfSJShEgiWPF0"}, {"max": 34, "min": 78, "name": "7raygYrOTnqlF6eg"}], [{"max": 82, "min": 12, "name": "KZfyBKJnK1Nz6Pda"}, {"max": 67, "min": 47, "name": "2T3izSeRRCor7KwZ"}, {"max": 42, "min": 17, "name": "BwnhEEzsmSjF3xet"}], [{"max": 47, "min": 60, "name": "beBFP7JvIJ4B1dGv"}, {"max": 82, "min": 53, "name": "3MbBXyHm2KawamnO"}, {"max": 67, "min": 89, "name": "GD5tpb25nH4i7Uvu"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 76, "role_flexing_second": 33}, "max_number": 5, "min_number": 43, "player_max_number": 74, "player_min_number": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 61, "min": 75, "name": "zxd9ncIcWleDtAJ1"}, {"max": 78, "min": 76, "name": "pDvtM28fAGxuD3F8"}, {"max": 24, "min": 98, "name": "wIOQaw1b7O4zwvGu"}], [{"max": 24, "min": 83, "name": "F6c7MYXLDeATblFk"}, {"max": 68, "min": 6, "name": "sAydySf9tNvsM8yp"}, {"max": 41, "min": 1, "name": "RUh4jyjcXJ9wLeGG"}], [{"max": 15, "min": 6, "name": "sEteeMPzArlMAjrh"}, {"max": 52, "min": 34, "name": "IAsu8jvlBcjaViUP"}, {"max": 58, "min": 62, "name": "ZZBcCvyFa2mTYHTN"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 66, "role_flexing_second": 56}, "duration": 61, "max_number": 85, "min_number": 96, "player_max_number": 17, "player_min_number": 61}, {"combination": {"alliances": [[{"max": 65, "min": 35, "name": "kffc6QMBL9ROWgUk"}, {"max": 57, "min": 61, "name": "Yb2K1soPbYo0NBqn"}, {"max": 99, "min": 80, "name": "USwCfmTegXEnVQQC"}], [{"max": 56, "min": 67, "name": "t5e6TtBBlkuSqVL7"}, {"max": 15, "min": 41, "name": "VZ1w9bX9iX7LIoNQ"}, {"max": 55, "min": 21, "name": "XFsaLKTlzO31eCIH"}], [{"max": 99, "min": 85, "name": "s4BLqJH93I7QAhgL"}, {"max": 62, "min": 30, "name": "u8AU4f8dtUAVqneS"}, {"max": 95, "min": 75, "name": "hQLF1yYp2bvxAjzT"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 37}, "duration": 78, "max_number": 29, "min_number": 54, "player_max_number": 48, "player_min_number": 79}, {"combination": {"alliances": [[{"max": 2, "min": 73, "name": "OEK302RtlV1CVpZa"}, {"max": 37, "min": 66, "name": "MbsBKDfdwnuJDo3f"}, {"max": 37, "min": 75, "name": "w3zj2hqN63C5UhEb"}], [{"max": 78, "min": 57, "name": "FQEneYX2iOI0Vstv"}, {"max": 57, "min": 34, "name": "We6kVElYLx1rfJ6t"}, {"max": 16, "min": 68, "name": "F0hn15ZcKCtQ2LJ0"}], [{"max": 48, "min": 83, "name": "HIn6ZCgJkH7hBJKq"}, {"max": 58, "min": 97, "name": "1PvUi4uQRrSOCad1"}, {"max": 54, "min": 63, "name": "AcKr6WnfeN2nVskp"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 36}, "duration": 0, "max_number": 78, "min_number": 33, "player_max_number": 71, "player_min_number": 69}], "name": "8KgWEaZAqMR55X6P"}, "5F9MdDZf3FJwuV0f": {"alliance": {"combination": {"alliances": [[{"max": 88, "min": 67, "name": "TMGwmKs2uIKx0kpb"}, {"max": 82, "min": 26, "name": "0dKP0z2hcsIrzAY1"}, {"max": 45, "min": 86, "name": "XrYHgDv7Bij0DiTS"}], [{"max": 58, "min": 2, "name": "XkkjDOUGR3ZoSzq8"}, {"max": 76, "min": 48, "name": "6fN2ye7lqO8l4VTE"}, {"max": 6, "min": 91, "name": "gI8pdeKdvNWuRZKb"}], [{"max": 31, "min": 61, "name": "5PAm4OeT74zP2zQT"}, {"max": 74, "min": 45, "name": "paPg74BEKMRAeA2d"}, {"max": 25, "min": 65, "name": "dwdlvqIS1ILknTVh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 49}, "max_number": 22, "min_number": 33, "player_max_number": 24, "player_min_number": 98}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 0, "min": 58, "name": "Bym2jNqhKgQ191ei"}, {"max": 71, "min": 0, "name": "jTyEWxABQnRx9Qo9"}, {"max": 20, "min": 67, "name": "ZinKMLPvO9CfUUI5"}], [{"max": 22, "min": 61, "name": "fvxSxHVxxOPWbmXC"}, {"max": 57, "min": 18, "name": "9UB28ChVVqXmrXrT"}, {"max": 10, "min": 61, "name": "wn3kHLIPVqcZS4eo"}], [{"max": 100, "min": 6, "name": "1vOsP4x7v58SW6BB"}, {"max": 3, "min": 38, "name": "hLPvIkKq8KNVqWRL"}, {"max": 94, "min": 54, "name": "mOXRrCxRwtR8vvX7"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 87, "role_flexing_second": 94}, "duration": 88, "max_number": 46, "min_number": 99, "player_max_number": 85, "player_min_number": 50}, {"combination": {"alliances": [[{"max": 10, "min": 92, "name": "282aGZSO12NeEvLB"}, {"max": 1, "min": 58, "name": "oeyw8MnRRnNPu9il"}, {"max": 55, "min": 68, "name": "Jkf8nAY0bqRvj2a2"}], [{"max": 52, "min": 1, "name": "N4lZXT8JIqtB52vT"}, {"max": 20, "min": 49, "name": "f6OtI8rDar1AWQ9l"}, {"max": 91, "min": 48, "name": "bgFvjSgETgQZ7RTE"}], [{"max": 53, "min": 70, "name": "Sso78TG0ek2D64cf"}, {"max": 60, "min": 75, "name": "G1TROW1sIvLnYuqX"}, {"max": 41, "min": 95, "name": "9HwCI2DAbxQORmCr"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 96, "role_flexing_second": 0}, "duration": 96, "max_number": 31, "min_number": 51, "player_max_number": 81, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 87, "min": 58, "name": "qK3I4YhBleWwG1X6"}, {"max": 85, "min": 29, "name": "WW75m96UTFyocaab"}, {"max": 55, "min": 98, "name": "q4AncRW62PlfmWeB"}], [{"max": 11, "min": 7, "name": "RDPjD6YfZaDZBxYh"}, {"max": 30, "min": 84, "name": "NpETUhHvLgTsloVV"}, {"max": 71, "min": 52, "name": "otZI6ihp0AqUhcas"}], [{"max": 22, "min": 40, "name": "Tp4yxFIXJOf0mvjj"}, {"max": 27, "min": 74, "name": "whHIRKAp5eCMM8Pa"}, {"max": 16, "min": 6, "name": "rCw8AlE6MmVKfxJa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 25, "role_flexing_second": 18}, "duration": 44, "max_number": 49, "min_number": 68, "player_max_number": 37, "player_min_number": 51}], "name": "Tco3jjzyceaTSSWk"}, "TEGo6YYqcrO63U4m": {"alliance": {"combination": {"alliances": [[{"max": 85, "min": 56, "name": "VWAV5bGEhay3tcQn"}, {"max": 50, "min": 99, "name": "vbsyu3I2xovLa3xq"}, {"max": 4, "min": 32, "name": "Xqje8pDZuM783wja"}], [{"max": 54, "min": 53, "name": "zgYkZ0Oj9TrlZThs"}, {"max": 8, "min": 95, "name": "FaguJe0tDnd4iaGI"}, {"max": 52, "min": 14, "name": "VjpzcpUth4AJPVme"}], [{"max": 66, "min": 50, "name": "EKAqIl7p2KzdFvLP"}, {"max": 67, "min": 84, "name": "H2rjL7Iakh5KN7Vs"}, {"max": 27, "min": 77, "name": "EMDtpuYdg71Fyh95"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 6, "role_flexing_second": 41}, "max_number": 44, "min_number": 78, "player_max_number": 8, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 73, "min": 74, "name": "CYtwuBEc7bbwsv9r"}, {"max": 48, "min": 34, "name": "lOB9ak9K9Q4VoDL9"}, {"max": 33, "min": 23, "name": "iYuXHo1AzfpziwgT"}], [{"max": 48, "min": 63, "name": "o1sucGdmK6irDvK4"}, {"max": 13, "min": 12, "name": "uw0wwLEuDbdHCpoP"}, {"max": 91, "min": 35, "name": "puthbadUH9YSysoh"}], [{"max": 30, "min": 92, "name": "OeIzt09mAveLHtrk"}, {"max": 82, "min": 9, "name": "4NtuSi7VzBVcCOgq"}, {"max": 76, "min": 97, "name": "uLi1mQYWrlEDFZLr"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 99, "role_flexing_second": 100}, "duration": 60, "max_number": 62, "min_number": 52, "player_max_number": 17, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 44, "min": 25, "name": "qZO73Efuwoq6bU3H"}, {"max": 75, "min": 86, "name": "iFl29BoT1hXguQum"}, {"max": 11, "min": 81, "name": "dFW2KKpKdvO9WBhI"}], [{"max": 5, "min": 14, "name": "u22BfjKOdwAq64cc"}, {"max": 20, "min": 25, "name": "po4aaCzZtLXI2D6i"}, {"max": 70, "min": 2, "name": "PueGFBnz2EuBHN9g"}], [{"max": 57, "min": 0, "name": "qQFRHntH2u6rTsPu"}, {"max": 50, "min": 84, "name": "7GDYB9DOiey4zf3J"}, {"max": 95, "min": 98, "name": "vzKUw4ZgvCTmO4bN"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 55, "role_flexing_second": 35}, "duration": 58, "max_number": 64, "min_number": 90, "player_max_number": 28, "player_min_number": 29}, {"combination": {"alliances": [[{"max": 17, "min": 22, "name": "XTnYoBGm4qZ7yJvl"}, {"max": 70, "min": 94, "name": "Gz7hu1lubJSAXuwn"}, {"max": 95, "min": 16, "name": "BFOahEaDjTXMjmJY"}], [{"max": 58, "min": 20, "name": "SEsfBYC0tbKZSwIp"}, {"max": 5, "min": 30, "name": "5emutDIUbwsa2w2l"}, {"max": 26, "min": 51, "name": "wTpC9pdosGJSZPNp"}], [{"max": 85, "min": 2, "name": "TbC3OKKwnG4wOqbn"}, {"max": 71, "min": 54, "name": "41S7jfhTyRuGNakZ"}, {"max": 71, "min": 73, "name": "48OEJ3v6LafDLoSR"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 91}, "duration": 79, "max_number": 5, "min_number": 46, "player_max_number": 78, "player_min_number": 15}], "name": "u0Q5btdIOGlG8Jwb"}}, "ticket_flexing_selection": "1kTCnBhJ62BMJFYO", "ticket_flexing_selections": [{"selection": "v1eRgLVx3wpAbZS0", "threshold": 68}, {"selection": "JgoclDE4rCPzAebq", "threshold": 41}, {"selection": "Dnz7rJTQN4ceglQV", "threshold": 84}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 63, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
