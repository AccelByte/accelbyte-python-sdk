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

Example: '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "sZhXm7QyodQpYqop", "description": "ficjvi1Xa7DsBNuD", "find_match_timeout_seconds": 1, "game_mode": "WQBKjGcINhQWylXH", "joinable": false, "max_delay_ms": 25, "region_expansion_range_ms": 61, "region_expansion_rate_ms": 36, "region_latency_initial_range_ms": 86, "region_latency_max_ms": 4, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 11, "min": 66, "name": "EUCyY8RmOP2ONNiN"}, {"max": 5, "min": 39, "name": "ohSEJ6nEb84Q2C7n"}, {"max": 24, "min": 43, "name": "a20mJUIgWzDe9mAL"}], [{"max": 25, "min": 41, "name": "J7PXl6EkXkMrYtAx"}, {"max": 0, "min": 94, "name": "6hUDSqFdaoPvzPph"}, {"max": 74, "min": 64, "name": "EqCdccqFdsezRGW6"}], [{"max": 8, "min": 75, "name": "QPxKBKvvd6RkpOzr"}, {"max": 45, "min": 20, "name": "5CBz6oBHZtIo4mSw"}, {"max": 91, "min": 58, "name": "lE0y26sfr5oSs9nm"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 7, "role_flexing_second": 62}, "max_number": 49, "min_number": 67, "player_max_number": 27, "player_min_number": 87}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 30, "min": 100, "name": "0xN3pPbFJRSeIXne"}, {"max": 88, "min": 87, "name": "9EEue7JRLXA5BPJ3"}, {"max": 55, "min": 24, "name": "F3D8ZcY7z3k8f9Mr"}], [{"max": 62, "min": 44, "name": "ujkEWeQ2rw4GexVX"}, {"max": 94, "min": 45, "name": "SPGg6SuCYUkdfMqH"}, {"max": 8, "min": 72, "name": "hZrzMDCNXEzyfO23"}], [{"max": 95, "min": 6, "name": "tJfObYEtYFF9n7fF"}, {"max": 94, "min": 39, "name": "phbddMHafgFZSDoP"}, {"max": 61, "min": 72, "name": "zthjb0u2zXJAIRQI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 21}, "duration": 88, "max_number": 9, "min_number": 51, "player_max_number": 49, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 67, "min": 44, "name": "qfHotKotwp9GQAus"}, {"max": 84, "min": 61, "name": "1b9w2LrhBYUrD0vi"}, {"max": 44, "min": 56, "name": "TKLpawwwy7S8DH45"}], [{"max": 31, "min": 10, "name": "lDsq6bZpuMFTFQVu"}, {"max": 44, "min": 28, "name": "HFtEpqNNAVZMCNcC"}, {"max": 89, "min": 23, "name": "fEeHYLbWEKhxHCNZ"}], [{"max": 36, "min": 38, "name": "4KkOrJW6aQ4iDV4x"}, {"max": 18, "min": 83, "name": "5lj2JwTMU5Xhci96"}, {"max": 88, "min": 98, "name": "cPEuU4uA8BkwqdV1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 59, "role_flexing_second": 9}, "duration": 77, "max_number": 78, "min_number": 93, "player_max_number": 12, "player_min_number": 3}, {"combination": {"alliances": [[{"max": 53, "min": 39, "name": "yYyE6W9r37ZEe16H"}, {"max": 11, "min": 29, "name": "BueIl7rL0xGOrELP"}, {"max": 68, "min": 16, "name": "r6DpDiJDG081W4OE"}], [{"max": 95, "min": 52, "name": "LHN1adUfFwjz7pul"}, {"max": 42, "min": 10, "name": "aT56MlmEqtBI3jIg"}, {"max": 56, "min": 84, "name": "1MDL63jtjI3OcRBg"}], [{"max": 74, "min": 16, "name": "i7lZ4yhcSpWVboUn"}, {"max": 52, "min": 4, "name": "qlhhhmQZG4pAYzVr"}, {"max": 89, "min": 69, "name": "3V1KvDqsgiHbAquB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 47}, "duration": 82, "max_number": 80, "min_number": 31, "player_max_number": 66, "player_min_number": 28}], "batch_size": 76, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 37, "flex_flat_step_range": 67, "flex_immunity_count": 79, "flex_range_max": 99, "flex_rate_ms": 36, "flex_step_max": 94, "force_authority_match": false, "initial_step_range": 56, "mmr_max": 65, "mmr_mean": 24, "mmr_min": 15, "mmr_std_dev": 59, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "ihoBKOXMmoYCIN5l", "criteria": "LOzMZAGnug3LJfUl", "duration": 60, "reference": 0.3836780249474432}, {"attribute": "6AlbVWGvhnL5dsuM", "criteria": "vw9vqZXEhjHnp2i1", "duration": 48, "reference": 0.09817672025626112}, {"attribute": "3QGeXiuVnI81oYbf", "criteria": "J7mu2Uobxniluebf", "duration": 4, "reference": 0.30153509553170255}], "match_options": {"options": [{"name": "24dhCSOyucKpbw6z", "type": "eTidz4A0xbCM4yDY"}, {"name": "96GP87QkWE8xyUxK", "type": "GOfLVZZc3Rb3pn8z"}, {"name": "RR7b5UedwVPiAqv0", "type": "QIKSABPqhT9EHk5C"}]}, "matching_rule": [{"attribute": "amQTOiZNVZXsn6Q1", "criteria": "ky4s1iM7a9sUJynn", "reference": 0.4892451858935467}, {"attribute": "hSuPZANEb7q2R0qg", "criteria": "jBmKtakov3PABNmq", "reference": 0.0371569451038154}, {"attribute": "Z10seF4unED82ggc", "criteria": "5m2kdt5ZtXIee7wJ", "reference": 0.39787285162837904}], "rebalance_enable": false, "sort_ticket": {"search_result": "distance", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "distance", "threshold": 40, "ticket_queue": "oldestTicketAge"}, {"search_result": "random", "threshold": 33, "ticket_queue": "oldestTicketAge"}, {"search_result": "largestPartySize", "threshold": 19, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {"Dar9sIMvAZJCMdQ9": {"alliance": {"combination": {"alliances": [[{"max": 57, "min": 84, "name": "K0VGcXgN6qi8bYvw"}, {"max": 13, "min": 45, "name": "sIbQr6OsCD83uxCF"}, {"max": 55, "min": 23, "name": "4gKOFF2rHtZaMUxI"}], [{"max": 78, "min": 76, "name": "SoXLKKNEXerjN79e"}, {"max": 93, "min": 77, "name": "IiPzK6eyu3CKT3EO"}, {"max": 44, "min": 35, "name": "R6sVzweVlWxx8Ce9"}], [{"max": 84, "min": 38, "name": "68fgBeMaRidythfm"}, {"max": 34, "min": 83, "name": "VSl81xyxDdq6cPjt"}, {"max": 77, "min": 73, "name": "ysAZHLaNFN8Kcl7N"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 90, "role_flexing_second": 12}, "max_number": 9, "min_number": 53, "player_max_number": 72, "player_min_number": 33}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 72, "min": 2, "name": "lswx9xKOrdjmYg7y"}, {"max": 49, "min": 36, "name": "x3dctEVAFfaLos8h"}, {"max": 16, "min": 47, "name": "vLrO0JkoK7LO1A9X"}], [{"max": 79, "min": 65, "name": "6L0Pbh5GALNzi1cq"}, {"max": 43, "min": 83, "name": "ZcR4UKyVa4EL9qFn"}, {"max": 32, "min": 73, "name": "V7x2u2ch2qr1bUaG"}], [{"max": 27, "min": 77, "name": "mJF60dGyWU41jFvl"}, {"max": 87, "min": 94, "name": "mTfgKDUfAnEmmCZR"}, {"max": 51, "min": 93, "name": "ZbuZDqA9E6cdIPa1"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 54}, "duration": 27, "max_number": 93, "min_number": 99, "player_max_number": 2, "player_min_number": 11}, {"combination": {"alliances": [[{"max": 82, "min": 13, "name": "cadnq0RYj0punupO"}, {"max": 90, "min": 81, "name": "iq2kg3zlZVOKv49B"}, {"max": 99, "min": 94, "name": "karhzFS1fqsRQjk0"}], [{"max": 60, "min": 1, "name": "opFmJLs5DqW8F73t"}, {"max": 55, "min": 15, "name": "0AAJLlb1mqtmeikF"}, {"max": 37, "min": 50, "name": "r6nsIEActmGzXPv5"}], [{"max": 99, "min": 5, "name": "QNdZvSxPJgMw6RqO"}, {"max": 0, "min": 89, "name": "Xap05xGnbH3sLfTJ"}, {"max": 2, "min": 87, "name": "cH9mY3V7pe0wtkBC"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 41}, "duration": 84, "max_number": 22, "min_number": 85, "player_max_number": 44, "player_min_number": 19}, {"combination": {"alliances": [[{"max": 51, "min": 86, "name": "1Q3XijVLVBtBzW5W"}, {"max": 3, "min": 92, "name": "AAXmX9fYKPmdPsz7"}, {"max": 77, "min": 50, "name": "0UQi0CCHms8cNvb2"}], [{"max": 62, "min": 26, "name": "ygS9BPMDz9sZawYN"}, {"max": 13, "min": 37, "name": "NrZ3JGm5MIxqVLIU"}, {"max": 31, "min": 85, "name": "KKEL1fYaRkKSa03j"}], [{"max": 70, "min": 75, "name": "GcgV8zMWcmmtBHk9"}, {"max": 33, "min": 41, "name": "sydjVMcitk1YTEd9"}, {"max": 19, "min": 85, "name": "e5Brk4moo75NgRgI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 94, "role_flexing_second": 40}, "duration": 84, "max_number": 79, "min_number": 44, "player_max_number": 24, "player_min_number": 42}], "name": "T7z7dNhLOAAnwOmq"}, "pIKJIDgAGO5qSG4K": {"alliance": {"combination": {"alliances": [[{"max": 33, "min": 74, "name": "PjWB0GAeplD39SLK"}, {"max": 100, "min": 26, "name": "HG9qctXb7aR5GqsL"}, {"max": 44, "min": 83, "name": "zK0UtL8HFJe8Czwg"}], [{"max": 36, "min": 93, "name": "YuLsOXfnsRRcTGeH"}, {"max": 44, "min": 48, "name": "JP5OEpuW9ybZTkAy"}, {"max": 87, "min": 32, "name": "Y2X6eoQ5RlQSwCEY"}], [{"max": 42, "min": 87, "name": "rcXKirCS893wHvNW"}, {"max": 60, "min": 98, "name": "w5bpme7l9XdgAS6j"}, {"max": 68, "min": 66, "name": "yx2WISArtQCB9iI1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 0}, "max_number": 85, "min_number": 88, "player_max_number": 88, "player_min_number": 10}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 86, "name": "aXwGaL4NXVaTokw0"}, {"max": 42, "min": 75, "name": "bXqiaj9Oo6iagCqn"}, {"max": 55, "min": 52, "name": "Gyb3B4s4RKpv66Zz"}], [{"max": 73, "min": 52, "name": "jcNZDz6YiLlJqQwX"}, {"max": 55, "min": 2, "name": "OvBtSCdEezfDQUUs"}, {"max": 97, "min": 34, "name": "Tavp7vx3LtgTo2Va"}], [{"max": 35, "min": 30, "name": "yE7pUCYuW9dP2kqG"}, {"max": 61, "min": 17, "name": "hnHX3mBernMYiM3j"}, {"max": 97, "min": 87, "name": "QYRTGf1H1Z0vARrS"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 21, "role_flexing_second": 69}, "duration": 7, "max_number": 34, "min_number": 12, "player_max_number": 6, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 57, "min": 4, "name": "4RaEa4d1mvQXvGeR"}, {"max": 88, "min": 93, "name": "rCcS9wLqP8ZZ0S9Q"}, {"max": 70, "min": 91, "name": "UyxP4HbADJT9VrNh"}], [{"max": 63, "min": 55, "name": "9q5bzY5VFC5Iwblu"}, {"max": 29, "min": 73, "name": "i74qDmIl5jnA98Yb"}, {"max": 80, "min": 10, "name": "QWfgCnbAbuZ3hiVZ"}], [{"max": 1, "min": 36, "name": "S2pWNBYMLKtErWAL"}, {"max": 41, "min": 21, "name": "3CDHIt9RucdIawRw"}, {"max": 78, "min": 32, "name": "vQt1Q4KgV9flXfM1"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 92}, "duration": 58, "max_number": 7, "min_number": 88, "player_max_number": 46, "player_min_number": 73}, {"combination": {"alliances": [[{"max": 61, "min": 10, "name": "nYMrnjHzzFoLezc5"}, {"max": 60, "min": 58, "name": "OIupo2I7onuleEEh"}, {"max": 47, "min": 63, "name": "QkbkWWiBE4nEv0oF"}], [{"max": 50, "min": 27, "name": "TPZfdTgqrZbI9sIm"}, {"max": 61, "min": 11, "name": "XJEIX7hGXd6RyV2k"}, {"max": 51, "min": 56, "name": "OQcIqhpp6SyhUzPe"}], [{"max": 85, "min": 28, "name": "NoaQRyY68H8UwEwA"}, {"max": 87, "min": 64, "name": "2I47BmkosavoYPIX"}, {"max": 42, "min": 30, "name": "AfBrYPaijWaFNWlT"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 47}, "duration": 92, "max_number": 94, "min_number": 14, "player_max_number": 52, "player_min_number": 40}], "name": "03TWdopDjZBCkoPR"}, "vrFDkijS25558ls2": {"alliance": {"combination": {"alliances": [[{"max": 20, "min": 61, "name": "lJHIyVDmsb3EJ2wh"}, {"max": 35, "min": 39, "name": "fazZFBZI1QCSVrHU"}, {"max": 74, "min": 32, "name": "dYp0RfPGY40vMFr3"}], [{"max": 60, "min": 59, "name": "qr5OtUyGEftQW5Pg"}, {"max": 52, "min": 43, "name": "Ub9SW44RKZo99zDX"}, {"max": 95, "min": 19, "name": "GN9SXayp8aNI2hwT"}], [{"max": 61, "min": 10, "name": "SYOyPVhhhHb0V6ea"}, {"max": 30, "min": 97, "name": "1WAqjHR0XjyuLwOY"}, {"max": 41, "min": 15, "name": "1xyHJnDWvHr7T54a"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 26}, "max_number": 12, "min_number": 56, "player_max_number": 95, "player_min_number": 50}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 38, "min": 61, "name": "jlunKAmNvBXoybTX"}, {"max": 50, "min": 68, "name": "CcAibtNnQou16EHB"}, {"max": 50, "min": 7, "name": "l4vVKpppr3UBdm2e"}], [{"max": 56, "min": 39, "name": "qR6vIDnDeQf9Hx0j"}, {"max": 37, "min": 44, "name": "BtuKziaC5ENg5eoT"}, {"max": 72, "min": 83, "name": "Nq69p0q9VETpf5JM"}], [{"max": 100, "min": 11, "name": "onLpht5K64QErQ7E"}, {"max": 34, "min": 0, "name": "3v1deld7liMDr1r4"}, {"max": 82, "min": 58, "name": "0gK0D93lDQEA5crS"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 59}, "duration": 36, "max_number": 37, "min_number": 22, "player_max_number": 14, "player_min_number": 96}, {"combination": {"alliances": [[{"max": 62, "min": 33, "name": "J5jRZ1Skfgijqsdj"}, {"max": 27, "min": 24, "name": "FWbABi6vK5uWwlmx"}, {"max": 29, "min": 5, "name": "QTOrFxRVIswef69D"}], [{"max": 80, "min": 10, "name": "e3ktXYOSdt3VVliF"}, {"max": 92, "min": 84, "name": "WYkNaXzMh3NGHjFW"}, {"max": 43, "min": 0, "name": "Psn82bUHIkDURet6"}], [{"max": 74, "min": 86, "name": "0XueiqQHHCMReulw"}, {"max": 20, "min": 70, "name": "zEgv4dVcbpyWVb0H"}, {"max": 1, "min": 25, "name": "RGLwcEDMca5bli52"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 15}, "duration": 88, "max_number": 90, "min_number": 44, "player_max_number": 37, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 2, "min": 92, "name": "TzCf9Q0IPKoyEiZN"}, {"max": 1, "min": 4, "name": "Ap42bvvRyaMPwIfh"}, {"max": 40, "min": 34, "name": "KPcbCY9P3LJeQFfk"}], [{"max": 39, "min": 66, "name": "92HhN6aMqFRKaMOi"}, {"max": 94, "min": 95, "name": "U84h47VMdU1U2ELu"}, {"max": 18, "min": 67, "name": "xZtHfnCbHWD3HloU"}], [{"max": 17, "min": 94, "name": "kTrxt7PUszWkiiZc"}, {"max": 35, "min": 90, "name": "iKdCsKE1fYEmjbMw"}, {"max": 75, "min": 29, "name": "ronROU713kpBuQ2e"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 0, "role_flexing_second": 58}, "duration": 14, "max_number": 3, "min_number": 89, "player_max_number": 30, "player_min_number": 1}], "name": "5HNVz6wpu20mNW1d"}}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "pivot", "threshold": 39}, {"selection": "newest", "threshold": 60}, {"selection": "random", "threshold": 21}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 25, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}'
"""

result, error = create_channel_handler(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
