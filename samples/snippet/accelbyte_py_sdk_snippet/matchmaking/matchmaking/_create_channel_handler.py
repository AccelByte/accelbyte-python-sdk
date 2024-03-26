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

Example: '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "SIZLnQP58TTvmTpd", "description": "btn4HfQxGGr5POP6", "find_match_timeout_seconds": 9, "game_mode": "6fk9m5k87Lxu3gZZ", "joinable": true, "max_delay_ms": 28, "region_expansion_range_ms": 32, "region_expansion_rate_ms": 14, "region_latency_initial_range_ms": 27, "region_latency_max_ms": 20, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 34, "min": 75, "name": "FOX4MsKqtXRlR7Em"}, {"max": 54, "min": 8, "name": "mf5Zar3QGGDxtXeR"}, {"max": 0, "min": 50, "name": "8wfZVvTZ1zJmCzTD"}], [{"max": 90, "min": 64, "name": "AeZ7Ml5f77qRduWA"}, {"max": 57, "min": 68, "name": "5y9f4sohlgm2ssXz"}, {"max": 49, "min": 77, "name": "cjub5qQpy9g9wFlg"}], [{"max": 42, "min": 81, "name": "HWKewZNsPyYkd2v4"}, {"max": 92, "min": 67, "name": "Lhzf3ZCgrk4775oe"}, {"max": 48, "min": 81, "name": "QdG1U5vJhvZIuI52"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 72, "role_flexing_second": 83}, "max_number": 88, "min_number": 78, "player_max_number": 40, "player_min_number": 29}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 20, "min": 65, "name": "cklfpxplWix7CmTU"}, {"max": 100, "min": 75, "name": "8dVpg3Jpx7A5SQ0w"}, {"max": 34, "min": 53, "name": "oC4KOtmRlNLBHYwl"}], [{"max": 58, "min": 12, "name": "pDMIWH76UiaCzzci"}, {"max": 94, "min": 18, "name": "xoPnMtbDYqSWcslw"}, {"max": 51, "min": 40, "name": "ny3XcT76yqjI4L8L"}], [{"max": 23, "min": 74, "name": "ZZUYyR6eRc3ImzHx"}, {"max": 53, "min": 30, "name": "M9hawh7rRI3DE1a8"}, {"max": 36, "min": 90, "name": "bGgYgPTbT1JwoGMp"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 27}, "duration": 8, "max_number": 52, "min_number": 71, "player_max_number": 21, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 32, "min": 28, "name": "n0kv4fhValcwFMtO"}, {"max": 79, "min": 97, "name": "jaDkDxzQuc7jcTCO"}, {"max": 60, "min": 65, "name": "odSOUsHzz5vmn5Sj"}], [{"max": 27, "min": 19, "name": "1Ppt01dUdCbcZTvJ"}, {"max": 52, "min": 59, "name": "LcYExWooL1nStDAu"}, {"max": 49, "min": 34, "name": "3fgygKJ4mS66erwr"}], [{"max": 20, "min": 9, "name": "ex6TqWeplYv7RyOs"}, {"max": 85, "min": 72, "name": "zUU45TUZjUX7zhIt"}, {"max": 74, "min": 69, "name": "Xu3922bTfdCbeHeu"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 24}, "duration": 23, "max_number": 95, "min_number": 55, "player_max_number": 63, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 90, "min": 58, "name": "6JFwudXTv7SRUAZf"}, {"max": 96, "min": 33, "name": "185jJnbHW0ydMEuu"}, {"max": 3, "min": 21, "name": "z7eR3WVt58IIGtii"}], [{"max": 33, "min": 43, "name": "WquExZ0k6967CTPp"}, {"max": 80, "min": 72, "name": "l9Ok9dEaeJzOhA26"}, {"max": 5, "min": 30, "name": "9yMvd4U5j6uZfmxK"}], [{"max": 92, "min": 97, "name": "HOyu28FNjOIEkWZU"}, {"max": 81, "min": 82, "name": "JGBjabLR4btkYzxm"}, {"max": 36, "min": 79, "name": "AI3pnsGBQagdcWI7"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 32}, "duration": 7, "max_number": 29, "min_number": 45, "player_max_number": 65, "player_min_number": 39}], "batch_size": 34, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 76, "flex_flat_step_range": 74, "flex_immunity_count": 86, "flex_range_max": 98, "flex_rate_ms": 16, "flex_step_max": 57, "force_authority_match": false, "initial_step_range": 71, "mmr_max": 23, "mmr_mean": 22, "mmr_min": 1, "mmr_std_dev": 41, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "eNdyfbWIP6uwmFCp", "criteria": "ZRStkpFPl4SqVgWV", "duration": 52, "reference": 0.1759050903479471}, {"attribute": "hAvZ8fdFJBSuSK9R", "criteria": "zng4jkFHxfa9M5l4", "duration": 59, "reference": 0.3483982547520409}, {"attribute": "gj13itjupfji6BVJ", "criteria": "UIljo91kxKK0GEQ0", "duration": 72, "reference": 0.6683698162332758}], "match_options": {"options": [{"name": "Y1T3RRl2hnb9Pen8", "type": "eF9l72WF5eae7pPh"}, {"name": "27L23KmHzvxWpWqn", "type": "522CDasCMPjbGsHc"}, {"name": "NVgAWJVCI8ZVDN8e", "type": "4kwjnLQTgy664YDP"}]}, "matching_rule": [{"attribute": "JQVvrd1PcTNGS0Jo", "criteria": "jgHJWUJZyijAMvnx", "reference": 0.7123113341972886}, {"attribute": "6jc5AKO6pLBWEWaT", "criteria": "RvRHVD2ZmbUPsE0a", "reference": 0.4717000516245041}, {"attribute": "aUAWKauN6fwEnyey", "criteria": "zY8dwjKeqgFn3RzU", "reference": 0.5463887931401435}], "rebalance_enable": false, "sort_ticket": {"search_result": "sqwQCzScwylwLCWx", "ticket_queue": "laPWxj3UiNjIeYjV"}, "sort_tickets": [{"search_result": "7BbGLRBKiUFnNqOj", "threshold": 76, "ticket_queue": "ARZhKjATovJ29ZnG"}, {"search_result": "O4573S90JjOP6dj7", "threshold": 71, "ticket_queue": "0yavrA5PmrxN4yY3"}, {"search_result": "TQ3qumZYE0tOg9rU", "threshold": 87, "ticket_queue": "XRX9IRWX0JUIO6iy"}], "sub_game_modes": {"y5WLstgyRqz3O92s": {"alliance": {"combination": {"alliances": [[{"max": 42, "min": 39, "name": "6n2YNrqtTa1Yc1Hu"}, {"max": 2, "min": 37, "name": "g01kluzSm7Zdi0ol"}, {"max": 73, "min": 62, "name": "EVw98AQcDk3Gh9BA"}], [{"max": 53, "min": 96, "name": "8YcAzw51a8AjVLXz"}, {"max": 92, "min": 20, "name": "Mh22rPjS6kUXhre1"}, {"max": 63, "min": 51, "name": "qvVVOLqblKq3xnSY"}], [{"max": 38, "min": 61, "name": "sqB0qZIsybOC1hqj"}, {"max": 78, "min": 9, "name": "S0IQQstQvJkRvJD6"}, {"max": 50, "min": 59, "name": "wezSnoKW8gHzWfNG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 25}, "max_number": 87, "min_number": 62, "player_max_number": 92, "player_min_number": 19}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 44, "min": 15, "name": "Xls3QniwHqgMjGuC"}, {"max": 60, "min": 38, "name": "RfrRqLpMA7Y1Q3Xa"}, {"max": 61, "min": 13, "name": "ddJrdYRFBd8RfkBZ"}], [{"max": 21, "min": 32, "name": "cdkITKslxJpn3Ral"}, {"max": 97, "min": 21, "name": "xH1lUobJsuvl6Az6"}, {"max": 58, "min": 7, "name": "2sw7f4TBwIPAGztm"}], [{"max": 20, "min": 2, "name": "zvciaPevlPPjih2o"}, {"max": 54, "min": 85, "name": "DVhBKYO2uAIXWZax"}, {"max": 45, "min": 19, "name": "lSy3cIdcRbLZwaW8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 75, "role_flexing_second": 48}, "duration": 8, "max_number": 45, "min_number": 23, "player_max_number": 75, "player_min_number": 2}, {"combination": {"alliances": [[{"max": 81, "min": 43, "name": "dM31qdmBgNZ8iT8G"}, {"max": 14, "min": 94, "name": "piEpCefdiFflDEhZ"}, {"max": 57, "min": 100, "name": "yFom2fw07zMKdh8X"}], [{"max": 1, "min": 60, "name": "6DsO9nARtvN0JABR"}, {"max": 88, "min": 31, "name": "rp4qDNxg1OZrMsir"}, {"max": 90, "min": 27, "name": "OshXQ0DngoMQTEUf"}], [{"max": 98, "min": 92, "name": "c4uEpaN7qxrD4Sa7"}, {"max": 78, "min": 43, "name": "GflwKFZXBBAfmXzD"}, {"max": 37, "min": 63, "name": "XjXpvImZ4dqpMoi6"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 18}, "duration": 77, "max_number": 22, "min_number": 11, "player_max_number": 11, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 83, "min": 43, "name": "0ZJ1whMyk2nMEYvo"}, {"max": 59, "min": 69, "name": "oEiWOGTmjm6T3oC4"}, {"max": 38, "min": 44, "name": "Smh53AYuZHtD53pD"}], [{"max": 60, "min": 16, "name": "rftfWNXNBaPZYiLe"}, {"max": 44, "min": 2, "name": "u6uxfu8g1CxGPGUt"}, {"max": 52, "min": 16, "name": "GwzxvEJC6iijKWUi"}], [{"max": 2, "min": 98, "name": "0C7kbENZJpOECwTS"}, {"max": 76, "min": 6, "name": "E7MOXf2JgEnkBnzv"}, {"max": 76, "min": 60, "name": "uaIuGxNdiodwX1Wl"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 24}, "duration": 40, "max_number": 88, "min_number": 94, "player_max_number": 44, "player_min_number": 88}], "name": "1M7WRVGRSp1PGyPt"}, "Ha6JaTouZ6utYwaj": {"alliance": {"combination": {"alliances": [[{"max": 90, "min": 33, "name": "qdegzeYltV5UyKPi"}, {"max": 83, "min": 97, "name": "cEjY4HrSj8BR1Rnj"}, {"max": 26, "min": 77, "name": "0O7X58j9x6dVjISG"}], [{"max": 46, "min": 58, "name": "0sFO0081VxejSfI9"}, {"max": 32, "min": 89, "name": "5cXqU4XRLDpxjaGv"}, {"max": 8, "min": 4, "name": "NmZcnAemYgc59Ycl"}], [{"max": 51, "min": 28, "name": "WJCAQNsjLHKDojlG"}, {"max": 8, "min": 77, "name": "n5TNjGMt0FeFJFGL"}, {"max": 50, "min": 93, "name": "kJKyN44qNSNurrQk"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 39}, "max_number": 56, "min_number": 53, "player_max_number": 49, "player_min_number": 44}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 54, "min": 56, "name": "v2jwxrfKRQFECmQM"}, {"max": 34, "min": 33, "name": "uzCcHXML44ts4H7O"}, {"max": 47, "min": 49, "name": "AwCuv1XtxbBHhaB1"}], [{"max": 6, "min": 71, "name": "nkwaaX8CPLlAtWIs"}, {"max": 12, "min": 41, "name": "SczkjqR11jzLaKp0"}, {"max": 86, "min": 8, "name": "BMXanV5STIAPKa9c"}], [{"max": 89, "min": 46, "name": "GFW9GStrP00KyYYF"}, {"max": 2, "min": 59, "name": "eVG1lYz9nSxFHzsr"}, {"max": 83, "min": 58, "name": "nRgkAXBCWtIBZrF5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 61}, "duration": 37, "max_number": 40, "min_number": 45, "player_max_number": 71, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 39, "min": 14, "name": "3D7HRqrb2PciRyDu"}, {"max": 21, "min": 55, "name": "X59j1k44OMv8B7Jk"}, {"max": 97, "min": 75, "name": "pODoa27ETnWeNuti"}], [{"max": 4, "min": 53, "name": "cE9N3CD2LmTyk4p9"}, {"max": 25, "min": 99, "name": "it5J9XIir5eh9B5o"}, {"max": 63, "min": 49, "name": "LFiIH2cJWbg3ZROq"}], [{"max": 7, "min": 53, "name": "cQyiYsOwtpv6ZxAE"}, {"max": 51, "min": 17, "name": "mAD4GWQOlpF8fNZw"}, {"max": 24, "min": 59, "name": "oKjiaBNT86pAq7RR"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 30}, "duration": 57, "max_number": 54, "min_number": 38, "player_max_number": 3, "player_min_number": 8}, {"combination": {"alliances": [[{"max": 36, "min": 82, "name": "XDW7iv7Kv21BNqRi"}, {"max": 43, "min": 43, "name": "8CP9jGIRqyD4oCZQ"}, {"max": 73, "min": 73, "name": "z30GL7DqK4FSQgaD"}], [{"max": 15, "min": 66, "name": "BVZCDpd8Tk1CGnAD"}, {"max": 19, "min": 24, "name": "YFdzqAEpB3rPIHrr"}, {"max": 15, "min": 80, "name": "RsQYSo9HOAIQPbj9"}], [{"max": 58, "min": 71, "name": "36W5UecC2x972ilF"}, {"max": 65, "min": 63, "name": "y0Iy87redktBU5yN"}, {"max": 79, "min": 85, "name": "LC0kJnq0hAUEG299"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 69, "role_flexing_second": 64}, "duration": 67, "max_number": 5, "min_number": 15, "player_max_number": 31, "player_min_number": 65}], "name": "njVbs4Ikx5F3VdS8"}, "5l8sJtjraxwjBUA8": {"alliance": {"combination": {"alliances": [[{"max": 84, "min": 42, "name": "ZPfBDVdaFtJAs6ag"}, {"max": 42, "min": 59, "name": "pGIJq5nv9duSksOG"}, {"max": 93, "min": 25, "name": "LtjvIEpQNlJ8ecOt"}], [{"max": 48, "min": 51, "name": "kAAXdxaQIUud6nLO"}, {"max": 52, "min": 14, "name": "nKrfwlIHrCbJANTD"}, {"max": 97, "min": 71, "name": "mXXQrI35uoViq18N"}], [{"max": 60, "min": 97, "name": "9zM24j6GF9iXEic9"}, {"max": 66, "min": 9, "name": "oVbQumYa6c6aSOVV"}, {"max": 36, "min": 96, "name": "1e08nUsim8X2j1aN"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 9}, "max_number": 35, "min_number": 35, "player_max_number": 32, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 97, "min": 95, "name": "WL6eRvUsTXk0hS2q"}, {"max": 80, "min": 98, "name": "OwqCZmCmvONEKqju"}, {"max": 76, "min": 44, "name": "TGAaxnOHNyV5YyR4"}], [{"max": 75, "min": 68, "name": "Z0bBjTeMny2Ntlpn"}, {"max": 98, "min": 64, "name": "NhIkInWAqo1O55qe"}, {"max": 89, "min": 24, "name": "ARTgT8WuT2t4kRpR"}], [{"max": 62, "min": 59, "name": "FgKeGoz4r8pny4ru"}, {"max": 90, "min": 31, "name": "njnZt7OuPZqKfYbs"}, {"max": 7, "min": 74, "name": "nvWrBW12UZnmG4IT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 74}, "duration": 66, "max_number": 19, "min_number": 14, "player_max_number": 27, "player_min_number": 12}, {"combination": {"alliances": [[{"max": 78, "min": 21, "name": "a4wYU1dQe4hnylGu"}, {"max": 13, "min": 33, "name": "d81gFAltZvVdZz7P"}, {"max": 56, "min": 47, "name": "6ggnCXOyVHSa1bxr"}], [{"max": 75, "min": 79, "name": "OTpLSdX3csBpiKwn"}, {"max": 25, "min": 15, "name": "3LBxTZ9nkHI0VKBc"}, {"max": 61, "min": 15, "name": "vOHxY0t8HWxK2t0V"}], [{"max": 93, "min": 10, "name": "LLoRg56FvZVXLbTP"}, {"max": 10, "min": 78, "name": "rXP2w6jgbFfusQoF"}, {"max": 38, "min": 3, "name": "dJkOon8MkRX1vyRx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 38}, "duration": 41, "max_number": 80, "min_number": 76, "player_max_number": 42, "player_min_number": 59}, {"combination": {"alliances": [[{"max": 45, "min": 11, "name": "hSweiWtMlIVpDFzW"}, {"max": 57, "min": 57, "name": "Hj4t5PnLRik0R4TV"}, {"max": 9, "min": 84, "name": "QIEZYJLsmWYlDxTT"}], [{"max": 66, "min": 57, "name": "qIUJOxucHdvi9VZg"}, {"max": 93, "min": 86, "name": "op6uU9Y3HS9LKXUK"}, {"max": 60, "min": 60, "name": "ZaP0N9tTukWuBS7x"}], [{"max": 74, "min": 56, "name": "j9S0AWWWERl8IIBm"}, {"max": 28, "min": 37, "name": "QiyxqiSCMQXhPGex"}, {"max": 84, "min": 64, "name": "e2ReOF52HhDvUMVZ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 19, "role_flexing_second": 100}, "duration": 61, "max_number": 83, "min_number": 37, "player_max_number": 83, "player_min_number": 53}], "name": "7KDrCHoihmkGduUl"}}, "ticket_flexing_selection": "1SMmw3H4jUJ63DFZ", "ticket_flexing_selections": [{"selection": "sobcfnZwZhPUzTEC", "threshold": 7}, {"selection": "QzQ7ENQApB5RvL3G", "threshold": 20}, {"selection": "emBUfoRGj5wK0Qyx", "threshold": 23}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 43, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
