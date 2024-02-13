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

Example: '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "I0OsP2s7TvMXDl2F", "description": "mT70O11eWUdVxpSN", "find_match_timeout_seconds": 36, "game_mode": "JIpt9sBMDEamLEL9", "joinable": false, "max_delay_ms": 86, "region_expansion_range_ms": 28, "region_expansion_rate_ms": 37, "region_latency_initial_range_ms": 42, "region_latency_max_ms": 60, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 8, "min": 60, "name": "kOvXzdePUfDGBW0f"}, {"max": 8, "min": 52, "name": "LWnd7Zzf9HdU1JUe"}, {"max": 99, "min": 84, "name": "xbVOsbWKOM5oGAGs"}], [{"max": 27, "min": 61, "name": "q6dJVhEPEhJGQXzz"}, {"max": 1, "min": 34, "name": "fHMjpsY2hiu3BoHr"}, {"max": 28, "min": 44, "name": "6VtNjMe4uGlGTroZ"}], [{"max": 83, "min": 66, "name": "5Ug5MGklNeapHI0q"}, {"max": 74, "min": 79, "name": "JvzTiDDW5OnFtiKP"}, {"max": 37, "min": 98, "name": "iYx7bSSCWVDGBKP5"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 2}, "max_number": 62, "min_number": 54, "player_max_number": 81, "player_min_number": 75}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 10, "min": 77, "name": "BrSynZxllLHADuCz"}, {"max": 11, "min": 82, "name": "bppanxDWw1Mi9Zpc"}, {"max": 24, "min": 100, "name": "FyWF1xXXocD03gsw"}], [{"max": 44, "min": 83, "name": "vUtFUNADZOl6srdN"}, {"max": 48, "min": 35, "name": "h8YW9t7mMUTAs0ip"}, {"max": 6, "min": 43, "name": "VvcDKJF3Myr2Kjjf"}], [{"max": 8, "min": 58, "name": "m12K3rh1YkhjvyYy"}, {"max": 12, "min": 84, "name": "voaBcutAxu5bl5Y5"}, {"max": 7, "min": 13, "name": "rxQNoebalTOq7aJm"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 22, "role_flexing_second": 73}, "duration": 43, "max_number": 36, "min_number": 22, "player_max_number": 18, "player_min_number": 87}, {"combination": {"alliances": [[{"max": 16, "min": 13, "name": "yfHG27CITXxKOWaL"}, {"max": 83, "min": 65, "name": "Rm6X93F6k8pCFNEq"}, {"max": 94, "min": 1, "name": "xvog2Eq2BXq8UXw7"}], [{"max": 6, "min": 8, "name": "OZq1lXFbFl1JujWI"}, {"max": 88, "min": 4, "name": "B6IePNXm9N8rhQnV"}, {"max": 39, "min": 99, "name": "me565gUNe30BtIOL"}], [{"max": 35, "min": 42, "name": "sQ6ABxn7qM6dyxMX"}, {"max": 56, "min": 70, "name": "HZr0j8cpLtqtI8rz"}, {"max": 99, "min": 85, "name": "YjA0CxjyuYkKecRJ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 74, "role_flexing_second": 9}, "duration": 90, "max_number": 44, "min_number": 2, "player_max_number": 5, "player_min_number": 88}, {"combination": {"alliances": [[{"max": 66, "min": 93, "name": "3etc2FLBZMxPyVoA"}, {"max": 24, "min": 68, "name": "XuLjEPfmAG6VJ7iR"}, {"max": 13, "min": 30, "name": "Z3nZ78IfaLmtXqQG"}], [{"max": 100, "min": 83, "name": "SjBDDUn6ZX8ZpyEA"}, {"max": 34, "min": 75, "name": "aSFqUPHCzetiVKxQ"}, {"max": 81, "min": 24, "name": "gVIPNG5Jnjuk1xub"}], [{"max": 43, "min": 82, "name": "YnebLNj7KhgxEMCc"}, {"max": 84, "min": 33, "name": "POZVFbS0mWRQT9MN"}, {"max": 92, "min": 25, "name": "u526bn0yHK5LLntm"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 65, "role_flexing_second": 94}, "duration": 95, "max_number": 74, "min_number": 41, "player_max_number": 75, "player_min_number": 48}], "batch_size": 2, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 28, "flex_flat_step_range": 40, "flex_immunity_count": 71, "flex_range_max": 70, "flex_rate_ms": 77, "flex_step_max": 6, "force_authority_match": false, "initial_step_range": 78, "mmr_max": 74, "mmr_mean": 1, "mmr_min": 23, "mmr_std_dev": 60, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "OmdTyYhwq3NFdeh6", "criteria": "7GVEPcN5fHO51nMS", "duration": 50, "reference": 0.60432842164088}, {"attribute": "uqSM6HbITM4yogmj", "criteria": "7bavWMhanPWov7TP", "duration": 95, "reference": 0.9350083984320943}, {"attribute": "Xv05ZxistSGt9ePJ", "criteria": "UJDFVEyJerDHzu16", "duration": 68, "reference": 0.23059212187731892}], "match_options": {"options": [{"name": "PgDQJKrFyekoWMlo", "type": "o5qgh4ZTMPbqq8bV"}, {"name": "FVGMrgsc3P4pIyCm", "type": "iasvs2ZWFK678cGL"}, {"name": "xOEpt3vggBTCfnEt", "type": "tQCNh0XQUXLNoOox"}]}, "matching_rule": [{"attribute": "FMkVZttJ8Aq170bf", "criteria": "Bp0nyraz84i68XM0", "reference": 0.6975347541948087}, {"attribute": "uBalp3kSjLGjgrqK", "criteria": "lIIbPfw2JQ0Iy42d", "reference": 0.6764538342050826}, {"attribute": "6tNAac3trv33NZgM", "criteria": "wYGbwiPRxFjIKmJv", "reference": 0.9056845288685991}], "rebalance_enable": true, "sort_ticket": {"search_result": "random", "ticket_queue": "largestPartySize"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 75, "ticket_queue": "largestPartySize"}, {"search_result": "random", "threshold": 57, "ticket_queue": "largestPartySize"}, {"search_result": "oldestTicketAge", "threshold": 51, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"zRmcvPlUtu9fryk4": {"alliance": {"combination": {"alliances": [[{"max": 74, "min": 38, "name": "d8e1AtOG6yBe4J6j"}, {"max": 41, "min": 79, "name": "jmDaovGrrCqcBG0P"}, {"max": 32, "min": 66, "name": "2Vq0mdTuHM0ugu8u"}], [{"max": 78, "min": 65, "name": "U8R6XlLdhHyPgHDW"}, {"max": 37, "min": 1, "name": "v9E35un7DBzgRp2d"}, {"max": 31, "min": 14, "name": "0zuCsDb6TubakdQs"}], [{"max": 51, "min": 48, "name": "67jbTFHVJkAMHDUi"}, {"max": 17, "min": 65, "name": "awzvmvKYVf4bWTGQ"}, {"max": 39, "min": 59, "name": "joRXqMVaZImow1A7"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 4}, "max_number": 35, "min_number": 92, "player_max_number": 71, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 3, "min": 1, "name": "fWO8c62cKhmqlJYk"}, {"max": 45, "min": 71, "name": "jeHCbkqhbVRrKs6E"}, {"max": 56, "min": 87, "name": "q299qHfHV7RhY5JR"}], [{"max": 62, "min": 55, "name": "pgRKjMoytlILzuDZ"}, {"max": 85, "min": 18, "name": "AiVhLsqHyWJE3MxV"}, {"max": 30, "min": 67, "name": "QVNyVuTsJJNQcLgu"}], [{"max": 28, "min": 45, "name": "wWSFuSSeQuoRmwZn"}, {"max": 53, "min": 33, "name": "3lnj3DNqqihf8ifg"}, {"max": 16, "min": 74, "name": "w13uqEy51SpSoHZP"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 73, "role_flexing_second": 39}, "duration": 61, "max_number": 16, "min_number": 34, "player_max_number": 19, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 89, "min": 46, "name": "HsRa7jCVsXh0eaqg"}, {"max": 95, "min": 2, "name": "DW3mNvpePHhSUDk8"}, {"max": 63, "min": 68, "name": "KF1BRYOOXQncESe1"}], [{"max": 80, "min": 31, "name": "YV3fHuqH4EhyRj3L"}, {"max": 95, "min": 14, "name": "BtIlYNHWXGFVvS2V"}, {"max": 56, "min": 30, "name": "HIvXjmUN8W0K2pxJ"}], [{"max": 100, "min": 14, "name": "QS4wQbb2tYlKkFGW"}, {"max": 96, "min": 67, "name": "EswsBEiPP6BgUHwZ"}, {"max": 25, "min": 65, "name": "71EOV0cSBfymdVgy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 3, "role_flexing_second": 46}, "duration": 63, "max_number": 29, "min_number": 9, "player_max_number": 98, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 97, "min": 76, "name": "iPqWDoCSOi0rWPo4"}, {"max": 33, "min": 94, "name": "ESKAvQ3VoxNQC7OC"}, {"max": 68, "min": 3, "name": "OxiCNx3SbI66TCsZ"}], [{"max": 29, "min": 84, "name": "pjZjZcVDY7EG9MPR"}, {"max": 84, "min": 53, "name": "4Qctw9qvtkTLJDsH"}, {"max": 40, "min": 41, "name": "N0ySOjkpHtj1UacJ"}], [{"max": 74, "min": 82, "name": "Zm0zcULScB2s4KtV"}, {"max": 63, "min": 34, "name": "2CtZ7lwHoSPL1lDm"}, {"max": 50, "min": 82, "name": "KFlh4jlfUMLAh4Fy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 47, "role_flexing_second": 8}, "duration": 34, "max_number": 82, "min_number": 93, "player_max_number": 70, "player_min_number": 77}], "name": "07TVbAxMIkyYeps0"}, "x16rwgluoZiTIy0w": {"alliance": {"combination": {"alliances": [[{"max": 49, "min": 25, "name": "RLP8DyCrAfythWoC"}, {"max": 45, "min": 39, "name": "r8wqRAM9khNZjSZw"}, {"max": 83, "min": 0, "name": "FDzg2GnR1ygn85eU"}], [{"max": 79, "min": 96, "name": "VekkKgsYyhgH0pqo"}, {"max": 30, "min": 39, "name": "tEEYOCYyZRLb9DW0"}, {"max": 44, "min": 76, "name": "c5J20vExaSMRImIz"}], [{"max": 74, "min": 46, "name": "jemWFePhJrRmIXbU"}, {"max": 44, "min": 18, "name": "UAezz1UHgkYdRjwG"}, {"max": 57, "min": 6, "name": "TDm9owRd8nMoxTmx"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 45}, "max_number": 16, "min_number": 15, "player_max_number": 84, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 23, "min": 90, "name": "byuCKH05P3QsQ7Kz"}, {"max": 86, "min": 34, "name": "yP2IUZzYNihxcgli"}, {"max": 70, "min": 94, "name": "8xZerhMsVojQEoMV"}], [{"max": 48, "min": 47, "name": "X22AMgUkzd5Kub9r"}, {"max": 79, "min": 41, "name": "2sbhs5t8a8PoyZS4"}, {"max": 49, "min": 3, "name": "T0ToyME1zq6XaAeK"}], [{"max": 100, "min": 92, "name": "flIsIXHd2FCt3oeC"}, {"max": 14, "min": 35, "name": "swV9gFvmIBfGt0UF"}, {"max": 75, "min": 91, "name": "TPHqjdQAhGzGdoJL"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 89, "role_flexing_second": 67}, "duration": 8, "max_number": 62, "min_number": 17, "player_max_number": 57, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 62, "min": 69, "name": "3yY5b13dXxdXVKpP"}, {"max": 63, "min": 19, "name": "aMNjrtQdBPV4WXSO"}, {"max": 3, "min": 4, "name": "cu2yQsGV4bAgISyk"}], [{"max": 40, "min": 93, "name": "I0bsz0gAe2W3rmHe"}, {"max": 22, "min": 46, "name": "lVrvoqZTsIF3g05x"}, {"max": 80, "min": 11, "name": "MlsRSNkQ3sZB5nyH"}], [{"max": 29, "min": 90, "name": "qZAPinqoGUF7ITuG"}, {"max": 68, "min": 25, "name": "TZZpKicqYvao6wNx"}, {"max": 24, "min": 16, "name": "2adu4VTrqZV5EWHj"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 20, "role_flexing_second": 92}, "duration": 66, "max_number": 8, "min_number": 53, "player_max_number": 21, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 88, "min": 40, "name": "CDQEON6Q8GxXfmGX"}, {"max": 51, "min": 35, "name": "ojb0Z1QQFA6NZfnN"}, {"max": 15, "min": 100, "name": "MrUWrc8dIG9QeaGy"}], [{"max": 25, "min": 29, "name": "68stjAg9toulrydF"}, {"max": 100, "min": 96, "name": "LUwa4sfIEEEcdEa1"}, {"max": 45, "min": 11, "name": "zAaQwKeBWtCVsq0i"}], [{"max": 12, "min": 44, "name": "yWDmtL40rEaVdJSp"}, {"max": 88, "min": 32, "name": "Pu4K5IoHOCPV5fth"}, {"max": 65, "min": 85, "name": "HsWBA6vLQmEQzIeD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 8}, "duration": 1, "max_number": 39, "min_number": 78, "player_max_number": 98, "player_min_number": 19}], "name": "HojTrzWkRkitaTRD"}, "b2MhJAyLFwWKTnRK": {"alliance": {"combination": {"alliances": [[{"max": 31, "min": 9, "name": "SF02mo2fwPCrrBdx"}, {"max": 96, "min": 7, "name": "eGcfp5fP8Su8FxtL"}, {"max": 19, "min": 82, "name": "BnYL19ubQVBDkVkE"}], [{"max": 89, "min": 35, "name": "HDra23v3s61M1zCK"}, {"max": 8, "min": 60, "name": "gCWofpI3YZ7fUSrI"}, {"max": 18, "min": 71, "name": "PYnZdB8IVMqzCskJ"}], [{"max": 37, "min": 48, "name": "YEPDx1fvkQ5ZFU5l"}, {"max": 34, "min": 58, "name": "PsQkbdbl5gKvawBT"}, {"max": 100, "min": 74, "name": "TdBnyFZuWomsW5BU"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 69, "role_flexing_second": 50}, "max_number": 21, "min_number": 77, "player_max_number": 72, "player_min_number": 88}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 86, "min": 35, "name": "Jqnsg9WMz45tcZNx"}, {"max": 21, "min": 35, "name": "HNWeb5PKncNOY3jU"}, {"max": 67, "min": 32, "name": "Ijlx0NgPCwnSAWL5"}], [{"max": 90, "min": 46, "name": "jo4pUmeZieQxkm5z"}, {"max": 51, "min": 24, "name": "THKGGYNxAXJNHRiY"}, {"max": 54, "min": 38, "name": "998zjNHKHiKPk54c"}], [{"max": 39, "min": 60, "name": "0X0VUWi3XCB6RqOR"}, {"max": 92, "min": 76, "name": "cdVvz1hlK14aD97O"}, {"max": 82, "min": 50, "name": "0O0PWHoZMLgd9NF0"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 11, "role_flexing_second": 69}, "duration": 29, "max_number": 1, "min_number": 100, "player_max_number": 23, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 28, "min": 69, "name": "d6lBWTV4IB9mmyJs"}, {"max": 33, "min": 95, "name": "2ZH3V2guMajTU0ny"}, {"max": 75, "min": 35, "name": "pOy6PRgI52rRQxO1"}], [{"max": 14, "min": 48, "name": "djWGggJOeFL4liUC"}, {"max": 98, "min": 77, "name": "fATiwNAOHkbWrExj"}, {"max": 45, "min": 28, "name": "5mLngWNeCNsN6bFT"}], [{"max": 62, "min": 64, "name": "olZo7VbNuQ69JcDw"}, {"max": 36, "min": 72, "name": "E4kdIL3kObnIyUjn"}, {"max": 35, "min": 51, "name": "X82dnQ8Z7HyhHikQ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 49}, "duration": 38, "max_number": 69, "min_number": 87, "player_max_number": 55, "player_min_number": 51}, {"combination": {"alliances": [[{"max": 37, "min": 1, "name": "BC08SYfP8626WrO6"}, {"max": 94, "min": 51, "name": "DiXqoUBXOpPzpGmC"}, {"max": 42, "min": 65, "name": "olZG47T8pAlJirvX"}], [{"max": 84, "min": 44, "name": "ksjS0wk2IrGKefEc"}, {"max": 83, "min": 58, "name": "sWFUNByH5gaZSp9z"}, {"max": 27, "min": 34, "name": "Cbujt96Qx3aD6LPi"}], [{"max": 71, "min": 3, "name": "A7OeljWHdFQ8djQD"}, {"max": 54, "min": 10, "name": "bLPxSLfwyEhujm9Z"}, {"max": 81, "min": 80, "name": "AEsveqkUE9sGsUNS"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 44}, "duration": 40, "max_number": 81, "min_number": 49, "player_max_number": 2, "player_min_number": 20}], "name": "SNfCgIHMX4vg79EF"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "random", "threshold": 91}, {"selection": "pivot", "threshold": 6}, {"selection": "oldest", "threshold": 35}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 3, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": true}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
