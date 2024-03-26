#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

EXIT_CODE=0
PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

touch "tmp.dat"

if [ "$BATCH" = true ] ; then

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
matchmaking-get-healthcheck-info --login_with_auth "Bearer foo"
matchmaking-handler-v3-healthz --login_with_auth "Bearer foo"
matchmaking-get-all-channels-handler --login_with_auth "Bearer foo"
matchmaking-create-channel-handler '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "twYCA9kPI6LZrkq6", "description": "Dc09nIW0Oaiw9B0D", "find_match_timeout_seconds": 9, "game_mode": "ktQG0h5JAav5kRa6", "joinable": false, "max_delay_ms": 29, "region_expansion_range_ms": 51, "region_expansion_rate_ms": 31, "region_latency_initial_range_ms": 56, "region_latency_max_ms": 72, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 24, "min": 68, "name": "8SAMTwE6I56IaRDB"}, {"max": 2, "min": 49, "name": "gorQeFbQ1g7qbPng"}, {"max": 95, "min": 31, "name": "NB1vRodwpzS6DaDp"}], [{"max": 44, "min": 73, "name": "N7ZQVqGj6oDLjWjk"}, {"max": 21, "min": 69, "name": "aXlFcDtgOjchIua5"}, {"max": 40, "min": 4, "name": "WEIC32ogW7olvbTg"}], [{"max": 36, "min": 58, "name": "hRTcPiSuL0Sly6XM"}, {"max": 50, "min": 83, "name": "E3cwyALczNIicXm7"}, {"max": 0, "min": 100, "name": "gSrjJW2OQNOs1PXh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 17}, "max_number": 84, "min_number": 89, "player_max_number": 16, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 57, "name": "7oFgx4c8OumKtPDK"}, {"max": 74, "min": 62, "name": "DXn7Z4U68su8Xfql"}, {"max": 34, "min": 63, "name": "NiTvB6SdAdIhUDrw"}], [{"max": 29, "min": 39, "name": "Z5MecdKi5r6QEa1y"}, {"max": 38, "min": 9, "name": "LEzth6mXhzkzWkFe"}, {"max": 7, "min": 90, "name": "dSpHt0P7MIIR7Cky"}], [{"max": 66, "min": 40, "name": "6C7duuyZ0GhDogqr"}, {"max": 16, "min": 51, "name": "BRd8lDR6qVNPRZYd"}, {"max": 65, "min": 90, "name": "LIAjGGJddVCvu9vx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 22}, "duration": 76, "max_number": 75, "min_number": 66, "player_max_number": 79, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 91, "min": 70, "name": "0lyuI9a2I9u6Vpbs"}, {"max": 47, "min": 21, "name": "5w8hqUI06UpOXGSL"}, {"max": 25, "min": 96, "name": "CVuHOPlLlkvR8sKg"}], [{"max": 28, "min": 47, "name": "uRkgghGoYupD391C"}, {"max": 49, "min": 33, "name": "D6SCwGrncqmLtjQH"}, {"max": 54, "min": 25, "name": "f8TgoNm03VLisV6z"}], [{"max": 46, "min": 97, "name": "Puo3td6TC6I3lMjG"}, {"max": 91, "min": 39, "name": "WN2laRlxfcjHfYak"}, {"max": 95, "min": 3, "name": "CTqGkE7wcWfDslpJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 40}, "duration": 55, "max_number": 77, "min_number": 85, "player_max_number": 88, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 18, "min": 50, "name": "ZMdjxcBZufQxGiHP"}, {"max": 24, "min": 86, "name": "lG4cYEzfTD1ZBm3M"}, {"max": 33, "min": 84, "name": "HcUmLZZbSqb8RwNm"}], [{"max": 27, "min": 59, "name": "9HrNQy4uZAAiE0mi"}, {"max": 39, "min": 91, "name": "9RGCCHYzUOcEdscK"}, {"max": 69, "min": 13, "name": "PEqgA8yu7Vk6Jt4Y"}], [{"max": 25, "min": 16, "name": "os9Jcdos4fYcTVU6"}, {"max": 90, "min": 25, "name": "Bt0zYoMcHyCUEXlA"}, {"max": 44, "min": 77, "name": "xJMdalwSyliWMNW5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 33}, "duration": 39, "max_number": 79, "min_number": 23, "player_max_number": 56, "player_min_number": 98}], "batch_size": 68, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 16, "flex_flat_step_range": 72, "flex_immunity_count": 58, "flex_range_max": 61, "flex_rate_ms": 92, "flex_step_max": 70, "force_authority_match": false, "initial_step_range": 60, "mmr_max": 3, "mmr_mean": 86, "mmr_min": 99, "mmr_std_dev": 86, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "lNmqRBaAkLnvxkT1", "criteria": "X68cmDc3fxU8MyKr", "duration": 88, "reference": 0.8452748898931911}, {"attribute": "v52Dlym6puQ23xoJ", "criteria": "8aeCnaLpUKp44YUD", "duration": 20, "reference": 0.24185924236642597}, {"attribute": "WvXa3bMrXsDr6kIL", "criteria": "sSSyDdmykmoPYgc2", "duration": 76, "reference": 0.01667587390248748}], "match_options": {"options": [{"name": "N9oCMNqq98SjTvhZ", "type": "NkSQ70D0H6BXksUC"}, {"name": "9b6i5lZC9xv32e8c", "type": "5csSovoqsZNBdte9"}, {"name": "NDUPVJf6c2Z0QZxf", "type": "gPubTDIHrvqAThuw"}]}, "matching_rule": [{"attribute": "jRHpKKTlmVr9XuoJ", "criteria": "bRFQSKVPHbn4Xxtu", "reference": 0.9639977895854788}, {"attribute": "LQRENjEEztx1WsYS", "criteria": "iZqan0nSBJroav91", "reference": 0.5171230937144093}, {"attribute": "XlvPG6bFYReVHQip", "criteria": "cCx9Zw5D2L7vIYhG", "reference": 0.5235086363368513}], "rebalance_enable": false, "sort_ticket": {"search_result": "yEW4ZJJ42d3PBddN", "ticket_queue": "8S48l9lyNApflxqM"}, "sort_tickets": [{"search_result": "rj3oZk03QXcKMDYD", "threshold": 60, "ticket_queue": "1yrOMlNFSrUEirnj"}, {"search_result": "X9fDmIbeZxzfTcyi", "threshold": 41, "ticket_queue": "6yUZNmTBcvrbYCwZ"}, {"search_result": "txFHyPLtI8ilbyDP", "threshold": 95, "ticket_queue": "gGLXpUL4pp2ncYAH"}], "sub_game_modes": {"dNzDmeIP6rOvDz9K": {"alliance": {"combination": {"alliances": [[{"max": 83, "min": 25, "name": "sb392k6YmJFfRByj"}, {"max": 24, "min": 56, "name": "a9LJE8HoRS1X2PFA"}, {"max": 54, "min": 27, "name": "MwzHPxB1UskYs4Yw"}], [{"max": 50, "min": 60, "name": "aZSWMiVi10sG6vxk"}, {"max": 10, "min": 69, "name": "UcmqRRbceJ5i0EeD"}, {"max": 48, "min": 89, "name": "OgBnhhqElIaDml48"}], [{"max": 47, "min": 68, "name": "dNFLTm5T50x9WT0G"}, {"max": 11, "min": 56, "name": "H2rtOa4EXsXzOXQA"}, {"max": 22, "min": 13, "name": "4mqrxzTtuLl4XlbG"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 84, "role_flexing_second": 60}, "max_number": 47, "min_number": 1, "player_max_number": 40, "player_min_number": 27}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 19, "min": 7, "name": "zm8y2wNhmwoYZyI4"}, {"max": 63, "min": 68, "name": "FZKBcYrCEAE7WIsf"}, {"max": 25, "min": 15, "name": "x40NLRc6m8heKnWh"}], [{"max": 51, "min": 4, "name": "fe2NubeoKFeIaFQC"}, {"max": 29, "min": 60, "name": "Yk6QEgJjBbEDoNf3"}, {"max": 27, "min": 25, "name": "hEoRCAcf80zfFyab"}], [{"max": 36, "min": 55, "name": "Yq6hRkloqxM3gpwx"}, {"max": 4, "min": 74, "name": "fMy9XzjjI5YbsKoA"}, {"max": 61, "min": 77, "name": "kzJEN2VHzih3bit0"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 28, "role_flexing_second": 16}, "duration": 27, "max_number": 59, "min_number": 10, "player_max_number": 83, "player_min_number": 41}, {"combination": {"alliances": [[{"max": 94, "min": 85, "name": "RwTqUXlTDBzOuYsa"}, {"max": 60, "min": 54, "name": "zaQY3snn2ZkP7cFd"}, {"max": 86, "min": 65, "name": "3e5dC9XIBudfZgrb"}], [{"max": 70, "min": 47, "name": "DIDm4hMzF4Txoden"}, {"max": 91, "min": 35, "name": "etOO847g8OudOfjn"}, {"max": 59, "min": 65, "name": "uHZ3c46IjGa23YvY"}], [{"max": 25, "min": 81, "name": "mDg7VYPXIuvUYTZB"}, {"max": 89, "min": 35, "name": "ujIUE1Tq5jyAZvkR"}, {"max": 59, "min": 22, "name": "MNFIurjh2imdb4rb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 53, "role_flexing_second": 20}, "duration": 10, "max_number": 73, "min_number": 47, "player_max_number": 56, "player_min_number": 38}, {"combination": {"alliances": [[{"max": 97, "min": 53, "name": "C0gL97ZVJSPqJiwv"}, {"max": 34, "min": 11, "name": "lYB1RSKs6gQxC3Gb"}, {"max": 91, "min": 28, "name": "0o4zGYY7KQI1AeFg"}], [{"max": 85, "min": 34, "name": "qaOkvo1aolB4lkKB"}, {"max": 14, "min": 62, "name": "qkNNlWkD9eOziYRF"}, {"max": 83, "min": 22, "name": "n0jJLHC9LxhvNXTw"}], [{"max": 67, "min": 55, "name": "HICQLfl7MUBG7qtP"}, {"max": 42, "min": 61, "name": "64yAtURKLRkb738H"}, {"max": 67, "min": 64, "name": "S6rDgMdIIlhS1fSi"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 67}, "duration": 25, "max_number": 73, "min_number": 85, "player_max_number": 94, "player_min_number": 80}], "name": "a1PsKc50Kv6ecnEe"}, "vcAx2K2zkRenmPZn": {"alliance": {"combination": {"alliances": [[{"max": 67, "min": 13, "name": "Bt4P7WnbdSJtjX7Z"}, {"max": 37, "min": 13, "name": "hZyZl5x4bRXBHUTr"}, {"max": 61, "min": 33, "name": "zZSKscfOcYu3dpCR"}], [{"max": 83, "min": 100, "name": "YqUiGKXVFCmpo6sP"}, {"max": 47, "min": 39, "name": "VOEDSJsEK5QpNhlI"}, {"max": 17, "min": 91, "name": "p6iIaTIKUkmkk9QM"}], [{"max": 95, "min": 80, "name": "Ynb76tFkEORV3bu1"}, {"max": 2, "min": 9, "name": "NCtX7W40V6Do5sYa"}, {"max": 6, "min": 5, "name": "CCFrHHC3DpZxkrQD"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 81}, "max_number": 66, "min_number": 64, "player_max_number": 44, "player_min_number": 95}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 16, "min": 4, "name": "Marv8mnfHK8CCmE2"}, {"max": 23, "min": 16, "name": "PnsbD3SGEdlwuUcc"}, {"max": 63, "min": 25, "name": "536ugBp3HBvepnDC"}], [{"max": 19, "min": 80, "name": "gyJlXe36mgWjLfFm"}, {"max": 39, "min": 49, "name": "eue9nzJ6fH24T805"}, {"max": 40, "min": 26, "name": "Vg8JqU0jZpjvsugA"}], [{"max": 83, "min": 31, "name": "S7u8RiWyerCSa8SR"}, {"max": 13, "min": 46, "name": "jdrrIxsB0NRsB1fP"}, {"max": 33, "min": 59, "name": "qRRulpqpymDkQhtr"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 46, "role_flexing_second": 17}, "duration": 89, "max_number": 28, "min_number": 97, "player_max_number": 31, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 27, "min": 47, "name": "g5BLy8wbhMssAHja"}, {"max": 32, "min": 14, "name": "IkY9Rf4wP57dBZNR"}, {"max": 74, "min": 27, "name": "YbCtmKy8M9zVrjfG"}], [{"max": 2, "min": 28, "name": "slt71B1SmZp2JZp5"}, {"max": 29, "min": 59, "name": "TTS1j02o7JjTXAQN"}, {"max": 34, "min": 6, "name": "ccLjMXJRk0eaKQDO"}], [{"max": 74, "min": 48, "name": "vrTefglSs6g4iY9u"}, {"max": 44, "min": 0, "name": "aCNYIWekp18lOC3m"}, {"max": 81, "min": 78, "name": "qF7Bl0LcghVHfPEs"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 47}, "duration": 58, "max_number": 16, "min_number": 11, "player_max_number": 89, "player_min_number": 89}, {"combination": {"alliances": [[{"max": 84, "min": 80, "name": "ncDlwi3v3MFFJ1Ke"}, {"max": 38, "min": 10, "name": "KoELCpobBEG8X645"}, {"max": 47, "min": 60, "name": "pdXpai0rYaT5hOPj"}], [{"max": 1, "min": 11, "name": "ues1Hhhkg1yLVbLF"}, {"max": 53, "min": 74, "name": "HEP8cM4NTwr0KHaA"}, {"max": 38, "min": 89, "name": "mTej52WKi6tArAUR"}], [{"max": 41, "min": 100, "name": "9plCSVq8PdH6hJPU"}, {"max": 55, "min": 42, "name": "c0RVwXgAgntLMCua"}, {"max": 30, "min": 56, "name": "V9Lx5RDA1l2Xcrci"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 51, "role_flexing_second": 66}, "duration": 45, "max_number": 58, "min_number": 91, "player_max_number": 68, "player_min_number": 37}], "name": "IPkhSgORcz5S5Bvm"}, "gBLxh4ijFnE3Tam6": {"alliance": {"combination": {"alliances": [[{"max": 33, "min": 81, "name": "SZ7PC6f6QkmZXElW"}, {"max": 77, "min": 11, "name": "uWJu3pDMUAeeZ97S"}, {"max": 57, "min": 75, "name": "ROPYuG6XqP6oo7G7"}], [{"max": 8, "min": 53, "name": "Beeoip68J1nsv4W2"}, {"max": 83, "min": 61, "name": "JhtafxMSJlHeb34s"}, {"max": 95, "min": 76, "name": "tDQs61OQAoxyyQpR"}], [{"max": 100, "min": 39, "name": "CiiPDGQhNPEwiJCf"}, {"max": 40, "min": 73, "name": "nkY6Mca5afj12K2I"}, {"max": 51, "min": 22, "name": "rBvvWm4udE0OXudX"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 81}, "max_number": 28, "min_number": 57, "player_max_number": 8, "player_min_number": 72}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 20, "min": 83, "name": "JATwlc6esUp6Sw1I"}, {"max": 73, "min": 20, "name": "rzzjrcaug6CWVG8S"}, {"max": 100, "min": 27, "name": "P3glU6muswVJnNnN"}], [{"max": 21, "min": 18, "name": "Aa7j0riFc5HTHQIo"}, {"max": 97, "min": 38, "name": "I6tRbRcrEveMdAdi"}, {"max": 85, "min": 94, "name": "KDUVSC00PYeDcagg"}], [{"max": 18, "min": 70, "name": "nxnFIna3yddcbsPh"}, {"max": 8, "min": 84, "name": "TH26IUJNvYuGRUvp"}, {"max": 1, "min": 69, "name": "A3PrIfapq5AAeMe4"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 12}, "duration": 61, "max_number": 100, "min_number": 99, "player_max_number": 13, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 95, "min": 90, "name": "4pCAKxeE70CaunQN"}, {"max": 48, "min": 17, "name": "ot371W9G4AvQkqsG"}, {"max": 27, "min": 14, "name": "myo5JJTUVmb8GEXF"}], [{"max": 93, "min": 31, "name": "lEMEsFzYqwgK1Np5"}, {"max": 28, "min": 94, "name": "odqpLm7FhJBNXzAF"}, {"max": 7, "min": 84, "name": "XNbjvqhnUVLWu8ol"}], [{"max": 75, "min": 19, "name": "dxL6ozRmDD0jJvlf"}, {"max": 98, "min": 84, "name": "5OemPYdYT7DROCjt"}, {"max": 43, "min": 27, "name": "zFMbAG9YI89hmguB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 30, "role_flexing_second": 30}, "duration": 88, "max_number": 3, "min_number": 29, "player_max_number": 26, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 92, "min": 71, "name": "JC4DdrKF7SUQPLG5"}, {"max": 35, "min": 9, "name": "G0rH0zcswwVeMK6M"}, {"max": 3, "min": 100, "name": "GIVIu8vvwLc7KY3u"}], [{"max": 98, "min": 100, "name": "oJXTIMtpgkieDyF9"}, {"max": 45, "min": 24, "name": "tdxdbZUpd6FJtHJ1"}, {"max": 31, "min": 50, "name": "KTK9tmmOnYnOpas6"}], [{"max": 13, "min": 52, "name": "hP1y4Zi7s7QBlk44"}, {"max": 37, "min": 66, "name": "4B1GZgKg4uKxaCgc"}, {"max": 66, "min": 11, "name": "LuC3brWdTYCfHkIy"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 1, "role_flexing_second": 20}, "duration": 32, "max_number": 37, "min_number": 60, "player_max_number": 9, "player_min_number": 18}], "name": "E9LN9bvhOrHflIOd"}}, "ticket_flexing_selection": "6X3viLvtEk4mTIpU", "ticket_flexing_selections": [{"selection": "A9gxo8SV38nEhoXm", "threshold": 78}, {"selection": "CE48L5oLF6M4lNa4", "threshold": 73}, {"selection": "opAywelu01nryEJ0", "threshold": 80}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 33, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-get-match-pool-metric 'w0qiOiC4j0iktm0Z' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'PLkLOsp0LZ5njN86' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "Hl8kUXzt6bSc6bWv", "players": [{"results": [{"attribute": "gpVyW9dD1kOmvrAe", "value": 0.1572555645246526}, {"attribute": "cq2LgkQuaS7RBx3v", "value": 0.13759618931287587}, {"attribute": "m02jBOxrZDyvpcLY", "value": 0.6518823088343955}], "user_id": "WA8NjxOnaEok4nOO"}, {"results": [{"attribute": "CzfsflhjbngJOUn1", "value": 0.9790376201648259}, {"attribute": "G5MlfDTk8aG40Nln", "value": 0.04156447878215774}, {"attribute": "ceIZSwgAIkgzh4pT", "value": 0.7478386688742953}], "user_id": "0Am4DZhl0bQxFJ3s"}, {"results": [{"attribute": "WCqQpQ2FbKPFMycM", "value": 0.7167464556310568}, {"attribute": "Q4qfAacR0LgB5BUX", "value": 0.3411643179087347}, {"attribute": "jcu2s6w3VifnKqmT", "value": 0.7252814116557456}], "user_id": "oGH1XEfY6QAYn6WQ"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "5UBEU1QAOHfZiGhx"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "OdcuDXSxSc3aZPV8", "client_version": "7pna08gxefTYKhux", "deployment": "aEc7M4P7UckSC6eP", "error_code": 8, "error_message": "F8KDsBZOuYQJ03BA", "game_mode": "HZ7c53q7akMpcmnn", "is_mock": "x6RVBrop9v7aZK3h", "joinable": false, "match_id": "hbN15zfQSfQrtfF3", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 93, "party_attributes": {"SVu0LQ40kepEaC4d": {}, "fiOMZfEhHr39pysF": {}, "O3Zvc1BZG99Lyvfv": {}}, "party_id": "HEsJKQQewVLMUoAn", "party_members": [{"extra_attributes": {"aRcYp7FUjfIGaffo": {}, "flEIByYqeKN0meGe": {}, "lYF5wWaDhukU4khG": {}}, "user_id": "G4vZFTYnPkmSu4PW"}, {"extra_attributes": {"am1jxR7SETWjteoc": {}, "8fgvZDDhoO05oKqy": {}, "mxLD1Lcvw6T6mZEi": {}}, "user_id": "wxxElpMYSWIeVzm7"}, {"extra_attributes": {"z9noowmlTIKVowi0": {}, "RY2VN4ZONJREdUQ3": {}, "z9F1BxNNgnke4akn": {}}, "user_id": "cw7wu9TmXfJWBPrx"}], "ticket_created_at": 60, "ticket_id": "Ns8eLzYEvwSWTaLQ"}, {"first_ticket_created_at": 18, "party_attributes": {"hjCMW64f4XhIjSoT": {}, "B2NMKtezapPr2QEP": {}, "x3zTxBGtEJIYppuU": {}}, "party_id": "SsKoHw2hyd12uSE7", "party_members": [{"extra_attributes": {"BEv3aevq6iohU1cg": {}, "4W1IS3Uv1BpWoJBa": {}, "qdg2FHcunsS1lnaO": {}}, "user_id": "2m9vqjhbeK2qN8g6"}, {"extra_attributes": {"x2PyYDo5R3hLiD5s": {}, "f5y1JsxJNGmyt0SQ": {}, "DUDoWBZVGLlkUetz": {}}, "user_id": "CAWc9x1aMjgGim51"}, {"extra_attributes": {"T107XIZRZ7tZdIs0": {}, "xf4czdt7zqmSKxOE": {}, "QlVcx6GqsBq8vdhW": {}}, "user_id": "VnuYLgpZehK0G2nm"}], "ticket_created_at": 49, "ticket_id": "W4tLqX7OICf5oD1e"}, {"first_ticket_created_at": 67, "party_attributes": {"oI9FmYel0kOw72o8": {}, "Zkgk0jS6rDWUwfhK": {}, "vrf2AaH4yCWrHSpp": {}}, "party_id": "nIZkNnTn3rzH5NvA", "party_members": [{"extra_attributes": {"tcvNedgS1fUfKmih": {}, "Dbmu8ePWlQMVDXEH": {}, "eiGTnwyEw6hIWDZr": {}}, "user_id": "pP7rz3ISW510kHr4"}, {"extra_attributes": {"isTKWjmv67nuHCXW": {}, "fwnwGioVwVzmmBVV": {}, "Ffpqx1AeLtzcPJ3j": {}}, "user_id": "tDYBo4FUTH7CGfKS"}, {"extra_attributes": {"yxgRR1DiCqSMzpqI": {}, "FGLkDs7ACC1RgBfo": {}, "NrHlFi2qJLgmBLE3": {}}, "user_id": "5YhyiDV90SeI5ypp"}], "ticket_created_at": 55, "ticket_id": "xJWWSI1ECUo1NPpe"}]}, {"matching_parties": [{"first_ticket_created_at": 64, "party_attributes": {"63ShEh8PbGikLjgj": {}, "cj34uulU6FYBZsWF": {}, "br3RSP0W9nBhvhf8": {}}, "party_id": "Q0DtJMcYQdN66bsw", "party_members": [{"extra_attributes": {"Agt65X4N1LQZmB61": {}, "JMdtwCVUrYQue84d": {}, "wmbwFEnAZaWsQJtR": {}}, "user_id": "YoagRJK5PX9UcOvh"}, {"extra_attributes": {"PyE11TRT2SKseoe8": {}, "VLie0LBa36KNzjf0": {}, "05CXNGehQ2aTjTDf": {}}, "user_id": "KFDXC7eGL5YhJDWh"}, {"extra_attributes": {"9YWqc0qgV6d9yOfI": {}, "MLds2DbPcaoMdtRL": {}, "TmSvTkQQgB7exYvm": {}}, "user_id": "HMxr5hPCJJztJBg0"}], "ticket_created_at": 39, "ticket_id": "jVwVnzaqSfJiQFC2"}, {"first_ticket_created_at": 13, "party_attributes": {"3QIZsUf8lGFXcmwT": {}, "ERHclOdxIwqejxe1": {}, "8rNdb8Otq6j1mqUa": {}}, "party_id": "v7k05HAQltnSojV4", "party_members": [{"extra_attributes": {"jT65yclX2FtAz0vJ": {}, "jFIYWOaNdsimmkW2": {}, "miH3xRHAKy4QxZka": {}}, "user_id": "XZ7vmiEd0JPxVyQp"}, {"extra_attributes": {"shaDwNqTbbFMXAMf": {}, "VXe0GZeMgsRsmH1E": {}, "QrYmkPKTPOlhTtSi": {}}, "user_id": "ZNCxuogFteTHJe4B"}, {"extra_attributes": {"hSSQkQD6WmOt6D7u": {}, "fFVTOhvQpfbBke8a": {}, "Edd36xj6wySoltDx": {}}, "user_id": "sbzxrlaKEfkoYjY2"}], "ticket_created_at": 30, "ticket_id": "J9ufwLYkqIgLuZS6"}, {"first_ticket_created_at": 14, "party_attributes": {"umrIz4NhGztZpr4U": {}, "4fwQIiLXgmRasvjO": {}, "4lj8m3XEwP2b4gd3": {}}, "party_id": "xOeii8Jnmssep2xD", "party_members": [{"extra_attributes": {"2NY0kABeGs9yxahl": {}, "d1pO0Gyf5PO3COyM": {}, "vczgEpzZ3Fbtxfhc": {}}, "user_id": "RC7IVYa6iZ5uFRYN"}, {"extra_attributes": {"n3SHiWxF0YbuU5ar": {}, "5qTLWUCy0Afgc050": {}, "XIZRW491e94mQjVO": {}}, "user_id": "OBnIWhunElqZUodp"}, {"extra_attributes": {"3IhtCSHy1ei1fIrP": {}, "vfHnRN06EjRwEQlN": {}, "apJRfk4f9Zcw1pEH": {}}, "user_id": "AyNFxcVTKuAQTGh5"}], "ticket_created_at": 56, "ticket_id": "D9IPmmsLmu3kaPj0"}]}, {"matching_parties": [{"first_ticket_created_at": 84, "party_attributes": {"p8ED5QZAufwNa8lz": {}, "fjv9oYMXMjlVHY1A": {}, "HwF3vGoav7MK0PcL": {}}, "party_id": "nEkcokKwcQ0baDT9", "party_members": [{"extra_attributes": {"OyJ2h23GUS2amU7s": {}, "yGlElXdEAOrVSnLo": {}, "cLVVYamQc4wcG5nD": {}}, "user_id": "BLJoJHbiQ5duE5p4"}, {"extra_attributes": {"cfs2E41cK8QTwiIA": {}, "vxSvNDlmM5nQFMGz": {}, "s7fzjgyc44mEh9tR": {}}, "user_id": "k8knYSV30lnroQeh"}, {"extra_attributes": {"MDli6t9unQLYXxm0": {}, "9wpGAbpEmDY9vLh3": {}, "u6EDsUmrV6kH4Oot": {}}, "user_id": "KwG3UC6XCnnZxF8C"}], "ticket_created_at": 26, "ticket_id": "YaJCJjfk2TUvn95F"}, {"first_ticket_created_at": 14, "party_attributes": {"tU6TDm5GloFSKWM1": {}, "eym5ydC6p25xCWTq": {}, "UOYZENJ1QHZQxPRX": {}}, "party_id": "H7uxBJEECQE1li3B", "party_members": [{"extra_attributes": {"g7Jxc9pUnZmvhidw": {}, "CkZwqjYLfTiCO1ND": {}, "BvQvRPnAz4VzW0Cp": {}}, "user_id": "oBCbyJsF5IjF1c0W"}, {"extra_attributes": {"338HS6CBgVRyihYN": {}, "Z84CVhziXV8HwSmv": {}, "cvcDKF19yVRafCjO": {}}, "user_id": "uSYht83AdvBaagTi"}, {"extra_attributes": {"RJ8daGTVX3Bb7jlz": {}, "5IfHgKjI9mwJSrN8": {}, "jkIykR2zbaI6PD7f": {}}, "user_id": "EscShnGUGUtV9GJ2"}], "ticket_created_at": 54, "ticket_id": "9GDbLNwjm3FK0nnX"}, {"first_ticket_created_at": 98, "party_attributes": {"poMfZ1hDHtbh4HtM": {}, "lFgvh2Dp2SoiIPp1": {}, "yvfAHS0VgLu11A3H": {}}, "party_id": "TovFi4tPAGfleyCA", "party_members": [{"extra_attributes": {"6jEtcqsnzoVILjkw": {}, "W61duF87aUyrdt4X": {}, "SpWBAetsanzqP8ox": {}}, "user_id": "frtbECD1CYPwaiBA"}, {"extra_attributes": {"xfYL8Avt70ZUT2fS": {}, "k3LL0calqxEewuGS": {}, "469k2hG0WKt4sUma": {}}, "user_id": "nYxM0UHZVNYzGMNI"}, {"extra_attributes": {"pWoSLkUrfuf4U3We": {}, "YeA9t2ENKKWrFtHI": {}, "i1CMgKAOG5iDcCR5": {}}, "user_id": "PbCvDLil8wj9cKM3"}], "ticket_created_at": 55, "ticket_id": "JsbGpO6JgehDJxEN"}]}], "namespace": "7JlZc8LMq1o2jZWu", "party_attributes": {"4yA3r0u4q1bTHXIj": {}, "fJKyFlM0u1uuoVdn": {}, "9yVoSlKNchPHNL4X": {}}, "party_id": "3LLaGPGdqLE8Sohh", "queued_at": 14, "region": "HFwinkBNi4gvqgl6", "server_name": "TZ9TGVPmv34h6T7E", "status": "sufmfxKYB4LM6H6Q", "ticket_id": "XmpZ9X3fUSR1l9xL", "ticket_ids": ["PBsmAUrD9L1IiD6M", "lcEPhMDFzjHZ3sIh", "zOx2CXKlvIomU3pI"], "updated_at": "1983-10-19T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "M9n8D2eLMe3lt9qf"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'x2UDcgVE7L9FK6e0' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 78, "userID": "jgJaMYvNQOsDa4bk", "weight": 0.03374636574569834}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'gepqtxjbrztee7QL' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "p6ccIBnWyPw8mj7g", "description": "yQ7XdIszGRj46COP", "findMatchTimeoutSeconds": 18, "joinable": false, "max_delay_ms": 31, "region_expansion_range_ms": 68, "region_expansion_rate_ms": 36, "region_latency_initial_range_ms": 52, "region_latency_max_ms": 79, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 25, "min": 100, "name": "mgqBPRmd6mO4oI8K"}, {"max": 61, "min": 24, "name": "qebm83raNBJ5y7ax"}, {"max": 63, "min": 84, "name": "kvI4oxZEDxGiBnNb"}], [{"max": 27, "min": 35, "name": "0zaf7CaOSlHXrUSA"}, {"max": 37, "min": 80, "name": "LM2IwEsdOGBXBwnz"}, {"max": 61, "min": 9, "name": "X8v3xgC1Ge9PdbTT"}], [{"max": 54, "min": 17, "name": "J2Gp1r0sVZ6LJAOd"}, {"max": 6, "min": 52, "name": "IL2l3hPjNDKv2LWf"}, {"max": 82, "min": 34, "name": "xuNOmUSWw18T1IxV"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 48}, "maxNumber": 7, "minNumber": 45, "playerMaxNumber": 51, "playerMinNumber": 85}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 77, "min": 16, "name": "9e4P01vxP8xj1LyE"}, {"max": 16, "min": 40, "name": "rURERnEMzpImW6sj"}, {"max": 53, "min": 47, "name": "HyCK5tNanGBrkzUv"}], [{"max": 5, "min": 21, "name": "ITGPRQBCgIs1Q2lz"}, {"max": 49, "min": 52, "name": "l0yF5m77TTh4gUoj"}, {"max": 45, "min": 41, "name": "chW6zL9SkbLlrNXn"}], [{"max": 67, "min": 26, "name": "anMazb8jvRWenURH"}, {"max": 16, "min": 89, "name": "aJuALEcSqcE15u6D"}, {"max": 88, "min": 61, "name": "ssuHdGmxncCEr0Kc"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 9, "role_flexing_second": 34}, "duration": 33, "max_number": 16, "min_number": 52, "player_max_number": 34, "player_min_number": 67}, {"combination": {"alliances": [[{"max": 82, "min": 3, "name": "kNeATj7eGjodd7Cc"}, {"max": 73, "min": 96, "name": "UrI6MAugK5kypNrp"}, {"max": 79, "min": 27, "name": "FxKybPkbuS6x9cLJ"}], [{"max": 40, "min": 54, "name": "5jGcMICPUYnfG6jl"}, {"max": 100, "min": 95, "name": "uAfDqLMR919IZPKO"}, {"max": 76, "min": 30, "name": "iAVQXXOmqFHLbyXm"}], [{"max": 13, "min": 39, "name": "CNiXH8uenbC5Cphg"}, {"max": 79, "min": 19, "name": "weexsIAP5vHLjBJ9"}, {"max": 17, "min": 34, "name": "EGvJ4UMS93yOxNIn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 5}, "duration": 50, "max_number": 44, "min_number": 15, "player_max_number": 86, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 96, "min": 30, "name": "5kG8bXGFmPAnOkDi"}, {"max": 73, "min": 82, "name": "q4xQye7HqnVK3YVe"}, {"max": 84, "min": 53, "name": "Ws9mfVQh3jLBtn9p"}], [{"max": 48, "min": 32, "name": "59anrNSleywHbHig"}, {"max": 32, "min": 71, "name": "IFvORxTi79DpSjb3"}, {"max": 53, "min": 41, "name": "fZ2hxcJ2Fnemn7M2"}], [{"max": 75, "min": 91, "name": "EbqcNXSGCCvNowNm"}, {"max": 8, "min": 32, "name": "nXOErQPS4VsRoYIK"}, {"max": 24, "min": 85, "name": "yg9ADCGiXaLs2xjH"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 37, "role_flexing_second": 28}, "duration": 80, "max_number": 83, "min_number": 14, "player_max_number": 60, "player_min_number": 8}], "batch_size": 12, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 72, "flex_flat_step_range": 54, "flex_immunity_count": 100, "flex_range_max": 90, "flex_rate_ms": 68, "flex_step_max": 19, "force_authority_match": true, "initial_step_range": 82, "mmr_max": 26, "mmr_mean": 90, "mmr_min": 15, "mmr_std_dev": 92, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "cVNX3ahvxw9gwwhT", "criteria": "njN6wKZGW4y3f0R9", "duration": 38, "reference": 0.43891293463645675}, {"attribute": "WCaVVmM45mfIZsWh", "criteria": "kS476dGGJwJ00UH1", "duration": 34, "reference": 0.964475809316162}, {"attribute": "MJ6zU7JLMQyMWzYQ", "criteria": "CAaPJgoxGJoJaSzU", "duration": 40, "reference": 0.20707049082163875}], "match_options": {"options": [{"name": "qK6tVsaUq3stUh5J", "type": "5Z9GiBiSAylX5cS0"}, {"name": "IeHpWCugmfOL0QQp", "type": "xsuD8PGqku59eFJr"}, {"name": "OXyDYz9vMUOPG0iH", "type": "DT8QbF7gHPTPQbvL"}]}, "matchingRules": [{"attribute": "t2NRqJGIKzLyH1y7", "criteria": "2L13Ornyx34luLdv", "reference": 0.31123280503094364}, {"attribute": "sTKXMjiw6gYPvfn2", "criteria": "Qt9iyq3Nyk8ncu2Z", "reference": 0.8873396702863648}, {"attribute": "eDHH9WaVO4iKhDcJ", "criteria": "7TCcNIsQ3PuppUxD", "reference": 0.7188867461842252}], "sort_ticket": {"search_result": "K8aOTGMudcxlCV4c", "ticket_queue": "NbJGQ57lPdinpjS2"}, "sort_tickets": [{"search_result": "DRfGt9GlyZVQ4X67", "threshold": 40, "ticket_queue": "IrdNL5gJPqTAjgqa"}, {"search_result": "THf1ANTJ9Yk997Xk", "threshold": 67, "ticket_queue": "IuLryiEXqvUWDjU1"}, {"search_result": "G0EVjVZw1ToLuPak", "threshold": 87, "ticket_queue": "SgDOK8bjoF7bL263"}], "sub_game_modes": {}, "ticket_flexing_selection": "5KbtZTGJpqgl2IzN", "ticket_flexing_selections": [{"selection": "XGTuQPIDpor7t1aJ", "threshold": 77}, {"selection": "h4US8o4jfMANPpmZ", "threshold": 60}, {"selection": "snmnlVljdWYmELe7", "threshold": 58}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 6, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": true, "use_sub_gamemode": false}' '2B4vEgj3HOmhcWm4' --login_with_auth "Bearer foo"
matchmaking-clean-all-mocks '28XejRF94NIY9nMr' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-matches 'BZo0lNUBDShHD32v' --login_with_auth "Bearer foo"
matchmaking-get-mock-matches-by-timestamp '{"timestamp_after": 43}' 'hjnnjKMEmtbiWsAQ' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-tickets 'HbMrKYi0Zxs5SWCq' --login_with_auth "Bearer foo"
matchmaking-create-mock-tickets '{"attribute_name": "ZXHLLa31oQf7BULn", "count": 73, "mmrMax": 0.483624866272505, "mmrMean": 0.1289724738989253, "mmrMin": 0.3308628318796947, "mmrStdDev": 0.3210961691542883}' 'DM6BqguqD5xxGxBW' --login_with_auth "Bearer foo"
matchmaking-bulk-create-mock-tickets '[{"first_ticket_created_at": 41, "party_attributes": {"Xu6opxQGRt6PqlkL": {}, "0diRhLC10ih2EQfY": {}, "3XCv4hdOa6FdZhNM": {}}, "party_id": "d1onFjGRbxtABPXD", "party_members": [{"extra_attributes": {"mgNEJBhgGq5GIDhN": {}, "C66szbCCf73IFbRk": {}, "PSSITz4TjCrJHXGX": {}}, "user_id": "ku2YVuOzhxHmnrrV"}, {"extra_attributes": {"9ZGWrZ05sxe6A6Rp": {}, "mKDebNkylbynkgT9": {}, "vayLLiizac7Ge6zK": {}}, "user_id": "Jdlt7rjF5RaJwvkW"}, {"extra_attributes": {"Vco2LTo5ijlvDF8q": {}, "BWCQ9dLWYyS8zdhM": {}, "eBXH8x6HdVfZVDAi": {}}, "user_id": "U6iJOF7JKZFNk2NK"}], "ticket_created_at": 50, "ticket_id": "1lX8DD4MYXlrJ81l"}, {"first_ticket_created_at": 68, "party_attributes": {"5weXJl7PeiMH8z8d": {}, "Vej8N2yv6VTnOK7x": {}, "AvM7tuL81lsR7xxS": {}}, "party_id": "Vp3Gd2TK0HzYviTg", "party_members": [{"extra_attributes": {"Ymx82JVBRLPZ6Iz8": {}, "tne5dbguBF6Gsvvd": {}, "l8jHz9x7XZIjU4IK": {}}, "user_id": "9lOLaZaMphKCqTq3"}, {"extra_attributes": {"EVheJjoEEXBLIxGn": {}, "NuhoJM3WWPvvCiCf": {}, "33ViEdqQpoGkUWNi": {}}, "user_id": "zk5UcPAGv6c1ESC6"}, {"extra_attributes": {"hZYTYZbzf5aANNNs": {}, "5kgSZZNUHbIT9szA": {}, "pmWJO5vzzXZj08a6": {}}, "user_id": "K1XRVfriSpPFnZBJ"}], "ticket_created_at": 74, "ticket_id": "kDnEiyfa2LrnpZxN"}, {"first_ticket_created_at": 28, "party_attributes": {"Tt9TsH7A0TuU2aL4": {}, "bPkk11sys6GdkDco": {}, "s5uVJ0BJfZ0jvA54": {}}, "party_id": "CSqZFDsO1skRjOU1", "party_members": [{"extra_attributes": {"SMfQVQa6blj9Rdd8": {}, "5bdYUumPKVSZCg3X": {}, "Tc9vQe0dHJfF6KIu": {}}, "user_id": "vnRCa9JktyBdxkZK"}, {"extra_attributes": {"rEWFw9GYxjiiOQAD": {}, "77ci0vfWVZoRRMPi": {}, "57HyKKz5nyI6ulKN": {}}, "user_id": "KoXa0dgx1JgjC56p"}, {"extra_attributes": {"da3YhtQxpCYME6x2": {}, "1pdX2QSPAd9sxoLn": {}, "WGP1PafIjLX8ce0K": {}}, "user_id": "bNN7Ycl2JfmQplvG"}], "ticket_created_at": 19, "ticket_id": "oaGk4ktF5wnJDg9Q"}]' '3WXiydCOInVolsr6' --login_with_auth "Bearer foo"
matchmaking-get-mock-tickets-by-timestamp '{"timestamp_after": 59}' 'U6jaGfsD1cfswmeF' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'pvtDtetoQVFL8LNW' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel '11vtpaTxi7k489jR' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["Cn48bvkCPfKofwXO", "IZZQAJza84lKKmVO", "aTS6xBbNrSUAW2ak"], "party_id": "7ISDrBVg6NuDZvPb", "user_id": "1kuUfNfUDe4g7q6P"}' 'HEaqbzHvDDl1jiLw' '3XMGBA6JXDpA1tIC' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel '45C0oaGouFu4hXON' 'gUwJnUpryDeRcpUv' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'lrw2MwC1uuokpaIj' 'L0Vxe5n9Lx3QcFo9' 'gxOgvDc7xMrRKvw8' --login_with_auth "Bearer foo"
matchmaking-get-stat-data 'ISP2WKmCRRXBxlal' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'CHtWlKxLpS8fLWoQ' --login_with_auth "Bearer foo"
matchmaking-version-check-handler --login_with_auth "Bearer foo"
exit()
END

EXIT_CODE=$?

else

eval_tap() {
  if [ $1 -eq 0 ]; then
    echo "ok $2 - $3"
  else
    EXIT_CODE=1
    echo "not ok $2 - $3"
    sed 's/^/# /g' $4
  fi
  rm -f $4
}

echo "TAP version 13"
echo "1..39"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'matchmaking-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 HandlerV3Healthz
$PYTHON -m $MODULE 'matchmaking-handler-v3-healthz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'HandlerV3Healthz' test.out

#- 4 GetAllChannelsHandler
$PYTHON -m $MODULE 'matchmaking-get-all-channels-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetAllChannelsHandler' test.out

#- 5 CreateChannelHandler
$PYTHON -m $MODULE 'matchmaking-create-channel-handler' \
    '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "nuJhatQPxR7dvBVC", "description": "5zgOKLTDmHe8c1eJ", "find_match_timeout_seconds": 51, "game_mode": "sde7Ryt4udIv22M1", "joinable": true, "max_delay_ms": 42, "region_expansion_range_ms": 7, "region_expansion_rate_ms": 42, "region_latency_initial_range_ms": 85, "region_latency_max_ms": 49, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 100, "min": 76, "name": "xBomQFPFWy5cwNPI"}, {"max": 1, "min": 58, "name": "Fo0MVwDZCIXFNEL3"}, {"max": 42, "min": 53, "name": "WVRz3V7YbJM3bNLW"}], [{"max": 69, "min": 33, "name": "AbCZixe2cQ6O30lp"}, {"max": 52, "min": 5, "name": "HjUcnkpU9oVzl2kB"}, {"max": 42, "min": 90, "name": "LFXIeCEKZUTz3GvC"}], [{"max": 53, "min": 98, "name": "Z5j24acYHbrryHB6"}, {"max": 67, "min": 84, "name": "UH6jzMO3AfmOS5mQ"}, {"max": 81, "min": 72, "name": "yRPZFPNP56l1AT6O"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 4}, "max_number": 8, "min_number": 14, "player_max_number": 33, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 1, "min": 97, "name": "xxPPdPwOtEuWBSO2"}, {"max": 19, "min": 14, "name": "JepUnEEgja2mIE2k"}, {"max": 76, "min": 63, "name": "TnJwc5XmkCuL5W4t"}], [{"max": 74, "min": 39, "name": "2xlXvVcJerTPW02P"}, {"max": 99, "min": 8, "name": "sHiKYArAxnKBfBfD"}, {"max": 24, "min": 35, "name": "hCcoukWpnbz4ys7j"}], [{"max": 71, "min": 24, "name": "PRtvhQIyLarjaLOK"}, {"max": 26, "min": 65, "name": "X51yAB8Pa3uNGKha"}, {"max": 77, "min": 99, "name": "lJzJMSnJIIgsAVma"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 2, "role_flexing_second": 96}, "duration": 37, "max_number": 65, "min_number": 57, "player_max_number": 98, "player_min_number": 28}, {"combination": {"alliances": [[{"max": 94, "min": 97, "name": "sLDRzdq22cbnyK3g"}, {"max": 14, "min": 97, "name": "FDh2kaZP7pnnVfxP"}, {"max": 45, "min": 3, "name": "c259HF9ejHaILQru"}], [{"max": 55, "min": 42, "name": "FEIu44u83ZLRxYlY"}, {"max": 34, "min": 22, "name": "lpq03BGdIk4oEogF"}, {"max": 98, "min": 5, "name": "GR71rJOBy6lsj1AK"}], [{"max": 66, "min": 55, "name": "BjnHmaAu4YK87DYA"}, {"max": 99, "min": 55, "name": "WcbcbGWmKgE8CZ4A"}, {"max": 62, "min": 77, "name": "Vnwa0ClGQJultJe3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 16, "role_flexing_second": 34}, "duration": 46, "max_number": 69, "min_number": 75, "player_max_number": 59, "player_min_number": 0}, {"combination": {"alliances": [[{"max": 6, "min": 14, "name": "EoIVmprwPsa9YD92"}, {"max": 59, "min": 100, "name": "X0rITajpwHITGeHT"}, {"max": 28, "min": 34, "name": "rVAQSxp4qTB54mKA"}], [{"max": 41, "min": 97, "name": "mx4ItzkMJ7cudf4r"}, {"max": 70, "min": 1, "name": "6GPrhn2etVIQvRkQ"}, {"max": 72, "min": 53, "name": "J41U4ooQ980ywmg1"}], [{"max": 31, "min": 35, "name": "WpWit1QC7FKe0fnH"}, {"max": 95, "min": 20, "name": "lmU1unGKM0tgfeWy"}, {"max": 0, "min": 25, "name": "bbwMI4gGmvK9gW59"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 57, "role_flexing_second": 12}, "duration": 80, "max_number": 81, "min_number": 37, "player_max_number": 65, "player_min_number": 96}], "batch_size": 75, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 38, "flex_flat_step_range": 70, "flex_immunity_count": 93, "flex_range_max": 53, "flex_rate_ms": 50, "flex_step_max": 43, "force_authority_match": false, "initial_step_range": 57, "mmr_max": 89, "mmr_mean": 46, "mmr_min": 57, "mmr_std_dev": 53, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "12ae6r3hHwya4Npd", "criteria": "Ozg3hr6ucHf7dbh2", "duration": 17, "reference": 0.40124319189342694}, {"attribute": "w8lHEbVDwBAqanOl", "criteria": "scRIWw82k5K5VTkd", "duration": 41, "reference": 0.6051343681193155}, {"attribute": "MUaDSwwQlnNRZJHB", "criteria": "SB4fZWEFIZs28Ff1", "duration": 21, "reference": 0.9812444585222545}], "match_options": {"options": [{"name": "YRvae4f4lhBPbarb", "type": "WEm8bVtZcfVCPdQh"}, {"name": "im9QKUAFTVYelIlG", "type": "Jg9wdc8bihhWjfZp"}, {"name": "fcFBUsnnDJlmD1iE", "type": "okbUiYzCQh2iNTwt"}]}, "matching_rule": [{"attribute": "nohddMzMTQ9P7sYL", "criteria": "DWAJOA75K4BYJ2fk", "reference": 0.26290444980072636}, {"attribute": "YJoF2FI3vyyqRzc2", "criteria": "0O7FdsJP1G9tyBTf", "reference": 0.4914816999565311}, {"attribute": "RXdvgD1Qf7Ot2DkU", "criteria": "t3yexZBRvxYnEBhX", "reference": 0.30770892535823124}], "rebalance_enable": true, "sort_ticket": {"search_result": "qj0ltsqfiZrthVvy", "ticket_queue": "X0OCKDJE3RMUddwS"}, "sort_tickets": [{"search_result": "SgxCu8zru1DhGAYO", "threshold": 69, "ticket_queue": "lMQl9RLrthbfp0Vg"}, {"search_result": "weLlT2sY3SsTnDQY", "threshold": 100, "ticket_queue": "kKU2u06Q4veujxty"}, {"search_result": "QENvJrBCqeg67d4R", "threshold": 43, "ticket_queue": "OqO4U0bitNQLzwRo"}], "sub_game_modes": {"WnR0AbkCPY70Fmvv": {"alliance": {"combination": {"alliances": [[{"max": 17, "min": 30, "name": "VIBbcujF8Vk5qb8N"}, {"max": 16, "min": 91, "name": "WWwaxyMchkt8l5IP"}, {"max": 91, "min": 36, "name": "TUh2dJ90yqHDNacl"}], [{"max": 50, "min": 64, "name": "XlbQ52FTHTCj6SEA"}, {"max": 51, "min": 3, "name": "T7TOpyiuvvQUm29I"}, {"max": 1, "min": 98, "name": "cq4XRLaA643nTMtX"}], [{"max": 90, "min": 49, "name": "Ayejnny0Ju13b6o5"}, {"max": 41, "min": 44, "name": "B2XM6IHy7EEvHyLm"}, {"max": 4, "min": 96, "name": "vrZZOdwe1x8RjU6B"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 73}, "max_number": 10, "min_number": 71, "player_max_number": 63, "player_min_number": 67}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 67, "name": "sUBBq2SimQQoLbe5"}, {"max": 14, "min": 82, "name": "3V1o2x0hL5DuBDqM"}, {"max": 51, "min": 78, "name": "IAzWze94MEdJFAy2"}], [{"max": 73, "min": 94, "name": "AupATO8uXsqVpdiW"}, {"max": 29, "min": 34, "name": "8SjDAM0Riw8wLYW3"}, {"max": 27, "min": 30, "name": "4F3LD1EDwBXw5uBY"}], [{"max": 8, "min": 87, "name": "VyC4qvWjVac1cQvS"}, {"max": 49, "min": 50, "name": "gTNIUzxDgBlIbuzm"}, {"max": 61, "min": 16, "name": "zJ20NFRJIhFXR2dY"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 33}, "duration": 85, "max_number": 25, "min_number": 8, "player_max_number": 3, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 31, "min": 82, "name": "uptECGd5cdXC2Ses"}, {"max": 5, "min": 32, "name": "6y68whNBYl9iCqfW"}, {"max": 16, "min": 36, "name": "2Ni6AnWn3NdEPhNH"}], [{"max": 91, "min": 2, "name": "H7eKDfRcngEpTnRU"}, {"max": 87, "min": 36, "name": "qEAuJbpZSrcbc4LW"}, {"max": 11, "min": 47, "name": "KaY5c1tP5TDuI5f6"}], [{"max": 25, "min": 41, "name": "4KC07CnsZe32hqEc"}, {"max": 57, "min": 41, "name": "ExYMBb3ckvoaJYdM"}, {"max": 34, "min": 74, "name": "Gegcg3eRvBZXN3cj"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 97, "role_flexing_second": 64}, "duration": 35, "max_number": 99, "min_number": 39, "player_max_number": 89, "player_min_number": 57}, {"combination": {"alliances": [[{"max": 73, "min": 87, "name": "nj8xN7HDPTUEDPN1"}, {"max": 75, "min": 69, "name": "b4UTPWDXTSb55g8L"}, {"max": 91, "min": 64, "name": "Ts7Nf95lGlPrf6ob"}], [{"max": 70, "min": 34, "name": "dnI6Ag7eUYcYJ4Qz"}, {"max": 46, "min": 59, "name": "0X8fBuBSKLSQ4GvL"}, {"max": 39, "min": 89, "name": "z50D3rpBfBovqLwX"}], [{"max": 56, "min": 92, "name": "uT30EYeRj17xGhaB"}, {"max": 74, "min": 56, "name": "oUfiHjGmCyPsKCJT"}, {"max": 45, "min": 38, "name": "1ic9gvagF2cSuzts"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 39}, "duration": 52, "max_number": 12, "min_number": 79, "player_max_number": 97, "player_min_number": 92}], "name": "7nmDk29mcjSuz9vb"}, "NStqPtQmQN6eKAGi": {"alliance": {"combination": {"alliances": [[{"max": 99, "min": 64, "name": "osrsVBPZ64j0HUON"}, {"max": 37, "min": 23, "name": "cofwYLQcDvkaEIIP"}, {"max": 29, "min": 73, "name": "k3JwkdaxR7GJpYmu"}], [{"max": 73, "min": 57, "name": "7BoysmaORLkP5hc2"}, {"max": 64, "min": 15, "name": "UT6KOc4VPDUR9aya"}, {"max": 52, "min": 17, "name": "qXRqegIUicYXXzxs"}], [{"max": 57, "min": 64, "name": "HtlER2txs4qrNARA"}, {"max": 93, "min": 29, "name": "n6KXOutlYBbLhL8K"}, {"max": 81, "min": 47, "name": "pqWb51y5RUzvMfTk"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 73, "role_flexing_second": 57}, "max_number": 10, "min_number": 72, "player_max_number": 66, "player_min_number": 44}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 77, "min": 94, "name": "GYcwWVRK6UKk5ozr"}, {"max": 53, "min": 84, "name": "4HZHNyq9odanhR1Z"}, {"max": 35, "min": 68, "name": "m3thUvV87yfkycLS"}], [{"max": 98, "min": 8, "name": "8TgfNu0rqXUOyToL"}, {"max": 86, "min": 84, "name": "IREGIKlJt3EP9kKw"}, {"max": 21, "min": 61, "name": "ENQ8VOHGwbADMfuO"}], [{"max": 26, "min": 12, "name": "h0lciRhVZ2DeoODX"}, {"max": 79, "min": 73, "name": "zLSrzoiBnYi5UWs3"}, {"max": 40, "min": 33, "name": "YlYeMoCimJySocRv"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 59, "role_flexing_second": 8}, "duration": 83, "max_number": 37, "min_number": 4, "player_max_number": 65, "player_min_number": 85}, {"combination": {"alliances": [[{"max": 27, "min": 75, "name": "mGjTvYa5Pqx1K7qc"}, {"max": 54, "min": 18, "name": "oijBPAp6EPb988Nz"}, {"max": 48, "min": 80, "name": "rDKVpULjjiw3NeVG"}], [{"max": 61, "min": 3, "name": "Ji9DaMrc0WFgKjE9"}, {"max": 90, "min": 42, "name": "x2CPVYYG9WvoGmAm"}, {"max": 44, "min": 92, "name": "aVV5YfxnUNcwjr7g"}], [{"max": 90, "min": 45, "name": "GhnfuF4WZiQVICVp"}, {"max": 100, "min": 52, "name": "d3UM08gMXhdf3juX"}, {"max": 100, "min": 23, "name": "4JprIb3CJCAtvSG8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 1}, "duration": 11, "max_number": 1, "min_number": 7, "player_max_number": 75, "player_min_number": 53}, {"combination": {"alliances": [[{"max": 34, "min": 82, "name": "dZFLbZEHxsDxeR6d"}, {"max": 89, "min": 37, "name": "43kIDzxBwqRJTzrH"}, {"max": 81, "min": 32, "name": "ZWUsq5lQo2jy29EJ"}], [{"max": 16, "min": 4, "name": "gqYhyVhURx1yPecz"}, {"max": 90, "min": 32, "name": "zQuoZcXQpoTOxe8y"}, {"max": 66, "min": 18, "name": "fhzfCTxxrsRRLee3"}], [{"max": 94, "min": 39, "name": "cJ7DQIi45aCDHN9m"}, {"max": 98, "min": 71, "name": "ug2zkVf6KgpKOcn3"}, {"max": 40, "min": 68, "name": "MD9UT67bOwugFDa6"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 9, "role_flexing_second": 9}, "duration": 61, "max_number": 15, "min_number": 55, "player_max_number": 74, "player_min_number": 86}], "name": "qwCh86XmRkCEcfHD"}, "Cdl59Wp9A3tXGve6": {"alliance": {"combination": {"alliances": [[{"max": 60, "min": 11, "name": "dK6uvg8f2cIoByk9"}, {"max": 11, "min": 47, "name": "xLUcCEt0DzmkJq1s"}, {"max": 25, "min": 38, "name": "l5bYt76BNsi4giR9"}], [{"max": 5, "min": 61, "name": "4WpKKdzxoufCNlFo"}, {"max": 83, "min": 31, "name": "cWQQy4bjmQeEweoB"}, {"max": 68, "min": 94, "name": "UGkInFGpuUsdtq4d"}], [{"max": 82, "min": 62, "name": "wNESzCEW9dUVhZjL"}, {"max": 11, "min": 40, "name": "4jVi9kIpqgrzpUkN"}, {"max": 84, "min": 61, "name": "BWydXV0Fi02aFr8C"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 32}, "max_number": 19, "min_number": 89, "player_max_number": 46, "player_min_number": 35}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 82, "name": "5ULqXQgvwD3PsKDJ"}, {"max": 18, "min": 99, "name": "JOe2Ntz7EFvowPgI"}, {"max": 66, "min": 15, "name": "uetxFMqXCQMAqQ2Z"}], [{"max": 89, "min": 16, "name": "GzNtrThFa9XU8mos"}, {"max": 24, "min": 79, "name": "uiHZJ7O8sAQ32wj9"}, {"max": 41, "min": 22, "name": "aDzsr9xYiWRuuzQJ"}], [{"max": 17, "min": 19, "name": "Lc1eI9w3JEhxPGbE"}, {"max": 20, "min": 1, "name": "7s7gw07FlounC3vJ"}, {"max": 74, "min": 41, "name": "BC7SwgoViPeIB4Eh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 1, "role_flexing_second": 24}, "duration": 71, "max_number": 1, "min_number": 90, "player_max_number": 91, "player_min_number": 72}, {"combination": {"alliances": [[{"max": 68, "min": 98, "name": "zsIYOCUoiCXNjrdQ"}, {"max": 77, "min": 3, "name": "2jdx1eIba1sB0HsJ"}, {"max": 21, "min": 48, "name": "DzfbzRYt4OVUyumB"}], [{"max": 8, "min": 87, "name": "IqdQGZC5kM03HHij"}, {"max": 37, "min": 67, "name": "QRj7N8IAjmsonjj0"}, {"max": 90, "min": 96, "name": "BQ1U6aFD3O2kXQSc"}], [{"max": 15, "min": 96, "name": "zgZVl4gIF7v3qbZu"}, {"max": 54, "min": 79, "name": "U6E92nHJzvw7tnYt"}, {"max": 66, "min": 72, "name": "fv0EJyjBu4EzwRjD"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 26, "role_flexing_second": 87}, "duration": 72, "max_number": 20, "min_number": 10, "player_max_number": 16, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 0, "min": 85, "name": "DH86d9rsKgzCsMul"}, {"max": 33, "min": 79, "name": "B8HZUtVVaJCiLgKO"}, {"max": 46, "min": 37, "name": "EdmW8saabP4xRowf"}], [{"max": 80, "min": 24, "name": "ojzPXI2v0prR3OEe"}, {"max": 51, "min": 61, "name": "0MkZwS6TYwNN3UYh"}, {"max": 18, "min": 15, "name": "c03qGEg5fNzBVrjo"}], [{"max": 4, "min": 14, "name": "sFq65cU66yJaj4ov"}, {"max": 30, "min": 12, "name": "KWE4EW0sw8v5peiu"}, {"max": 48, "min": 70, "name": "oBJATauyD3XCXVMi"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 56}, "duration": 43, "max_number": 92, "min_number": 79, "player_max_number": 11, "player_min_number": 83}], "name": "9yilUEujk6oqYo1H"}}, "ticket_flexing_selection": "QYTFzwdOMdupwD4O", "ticket_flexing_selections": [{"selection": "3uNbcIDcIyvZbOy1", "threshold": 93}, {"selection": "VwcZ2PofaJoSqtrE", "threshold": 83}, {"selection": "IXFGZ5PKdbabJIkN", "threshold": 27}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 40, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
$PYTHON -m $MODULE 'matchmaking-get-match-pool-metric' \
    'g3Nt2c0r4GqF0NHg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'lOVuNZ9LzNeJnBur' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "h54CWbYb0Pebyt8b", "players": [{"results": [{"attribute": "4DGscjwrizsFUgYw", "value": 0.02831008571615745}, {"attribute": "aLvqvQ2NbmDITuym", "value": 0.7319530936759885}, {"attribute": "Bjn3d2sFzMS3QaVj", "value": 0.8327553704356924}], "user_id": "F7Ax6115Kg9U8vrQ"}, {"results": [{"attribute": "JXQxoIbVi2CLEk27", "value": 0.9599445183052537}, {"attribute": "Ivjj1A647XQ3koaA", "value": 0.08107172702480281}, {"attribute": "ZIim0sFPm1YN27bo", "value": 0.1466996948161975}], "user_id": "DVaZLpx4kEWYkO6K"}, {"results": [{"attribute": "rKUMhJrASBh61hmW", "value": 0.5903272349206939}, {"attribute": "SSrF35anDGvur19V", "value": 0.8685851130106912}, {"attribute": "8oIrUKXttgAI2QdW", "value": 0.568856362298427}], "user_id": "FLmoPEgd8EMspOs8"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "nkic9gj5vyUMAAmI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "HYbsxG5N066FXb88", "client_version": "SbLOa21DiSFsm0XX", "deployment": "QJWszvTQEuALzDNp", "error_code": 47, "error_message": "SZ58aDllwzTRHak1", "game_mode": "MXxj7Esrg7900nml", "is_mock": "5BidsK9dCEzhVnOv", "joinable": false, "match_id": "bVIaKiHfoeorY7A1", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 29, "party_attributes": {"R6H7r1ta3m7jK5px": {}, "e82pgFiAS6piIzmc": {}, "8rKrKEPGSAcong6e": {}}, "party_id": "NERUf8kjci1Ctccv", "party_members": [{"extra_attributes": {"9Gv4tOcbnuCqf0lm": {}, "6WBkIzjoSV31tvmM": {}, "B6jzrpRGESmooHiC": {}}, "user_id": "V4GUOnXpapXQGRak"}, {"extra_attributes": {"UbcG7PcR4eiU3Idi": {}, "55jNrGNT2VHTKuIT": {}, "5FwwHj0Ur5F2PWGT": {}}, "user_id": "TD81xhNP4t6kYBUj"}, {"extra_attributes": {"yXAn3bWQF6QcAiJp": {}, "XIrgroixptZhckUT": {}, "GkcBOE4qMcH1Kyi8": {}}, "user_id": "ZFvGcV8DY0XOkDst"}], "ticket_created_at": 47, "ticket_id": "0wYS4Kj7Yi2VvoQN"}, {"first_ticket_created_at": 100, "party_attributes": {"Lqb9lGAJUg21Lt7J": {}, "wgwMUSuC3Bajy3Bc": {}, "EMCtQs2FcEcvVAyI": {}}, "party_id": "d6Cp85HVDsZBQgOn", "party_members": [{"extra_attributes": {"XuXsGThYZrmm0wrF": {}, "MnPpWgrQD4hEk0OL": {}, "jYsnignE7KcMF7fu": {}}, "user_id": "DbzRRYMNXWUsp1tO"}, {"extra_attributes": {"ibJY9aL9ie6vvMbi": {}, "NURrlm88QlKyuoya": {}, "4JgakZyUV7t73VnS": {}}, "user_id": "Fbuxd4KYZ0jk0UZd"}, {"extra_attributes": {"htnKu9oTc8pVkiyG": {}, "sj5JdXzRxfNEjUMT": {}, "s8WIObJBTsvsw76u": {}}, "user_id": "ISRX0bKVoWtoUW1P"}], "ticket_created_at": 91, "ticket_id": "ocuBAldDSUS7Haa6"}, {"first_ticket_created_at": 43, "party_attributes": {"OQbumu2QHLyZNuys": {}, "yM4OfCzdQCXMAWnf": {}, "87YPNOe9Eevf1fhM": {}}, "party_id": "g1E2k7QLFrVgtX7y", "party_members": [{"extra_attributes": {"0fPOieDCow2zXyFF": {}, "VpM87yqEwEacQMTl": {}, "qN4LKkxJ5v3SBafn": {}}, "user_id": "KNiMPbFkFGA85W3H"}, {"extra_attributes": {"JkqgS2B37wwoPYOH": {}, "iIsxmsLBPBJuNLnW": {}, "RrtW870qD88ZcduZ": {}}, "user_id": "Se7W20UZcDaiq0nE"}, {"extra_attributes": {"Z7PyhqFJkDClOsKm": {}, "fsgJdmzsDPsWh1k0": {}, "cQ08NG6dX2TZkil6": {}}, "user_id": "7kRngoUa83ECh1gq"}], "ticket_created_at": 84, "ticket_id": "FbrOMZMgWkFN7Tpk"}]}, {"matching_parties": [{"first_ticket_created_at": 47, "party_attributes": {"3GN2XTrFibRAhzzE": {}, "WzWlTY70qdgJRvpZ": {}, "rSpWX3KEe2BjV00R": {}}, "party_id": "eCXFffjJJxlgjzIh", "party_members": [{"extra_attributes": {"pgOoIOD74V21HWDA": {}, "fvXwdxbyp4HAPbBb": {}, "NPStVBUpKgOssFkz": {}}, "user_id": "0F36piDYXeHZ7FHl"}, {"extra_attributes": {"s3nyvconqbHQqKLQ": {}, "Ke3xmj6s0GqsWncp": {}, "5LrqbiKudv9z75Sz": {}}, "user_id": "oCV8ZMi2o1nR482D"}, {"extra_attributes": {"6gNClk9c87hosaPF": {}, "C5zBW3ZgVZCj9ObV": {}, "GT0Scwl4kNmCi15X": {}}, "user_id": "TJTgCNNH7RtG5Xmo"}], "ticket_created_at": 72, "ticket_id": "Q0Wb07N17fkxZSc6"}, {"first_ticket_created_at": 98, "party_attributes": {"9WDNoMcOmbfJrCJQ": {}, "Ij1haAosKglqaCXE": {}, "9ytpIO8btO3OwNEG": {}}, "party_id": "SW5TaW4to7QCY2NG", "party_members": [{"extra_attributes": {"Gvi9kg3rMIzNmhJT": {}, "NQjKlwjfJ3TJ2xVp": {}, "ge70WsLfgbZieRvJ": {}}, "user_id": "I5sT9DH3DfLCv8q4"}, {"extra_attributes": {"Thmq09bBgPAYxrBE": {}, "9jlnTgtgW33wDwD9": {}, "RKvQX4yFQFdrRoM6": {}}, "user_id": "FoqCYw7AlxO6qdFp"}, {"extra_attributes": {"c71sSck3ggZWJlSl": {}, "CQMDji329PfVrvME": {}, "PtpsSNcpK1QkB2Sy": {}}, "user_id": "8Ww79LVeVskqeUB7"}], "ticket_created_at": 89, "ticket_id": "dRF9bqMj4ro5B19V"}, {"first_ticket_created_at": 62, "party_attributes": {"thdbVApebRA09rW8": {}, "i8krFWJhe03coRFo": {}, "k5d3AyGrZO8GuoXN": {}}, "party_id": "SoVEBG7VbBPUWipz", "party_members": [{"extra_attributes": {"9C05YabFX4FCK5uc": {}, "TFsAFzaO3yJpA3KM": {}, "xBlrRytER1qdTelF": {}}, "user_id": "AadM9y66Drf4SSGG"}, {"extra_attributes": {"t3MiBKohow3kKoaP": {}, "1K4CDuH1mMIfOCDy": {}, "VAHrHncR5dShqiBU": {}}, "user_id": "I9esSsXegSEhrPpK"}, {"extra_attributes": {"2q8kxR4BuEksS2A9": {}, "VOA8H9VeHv0L2Acm": {}, "960EYQEuGJVl8xs1": {}}, "user_id": "WId9WlalqshF9Rh2"}], "ticket_created_at": 29, "ticket_id": "MXwKdfqk8T4QHK30"}]}, {"matching_parties": [{"first_ticket_created_at": 63, "party_attributes": {"MgzReRq0112ISArR": {}, "OIodcmM6v2AEozWW": {}, "aYvBLE46bpuJip8J": {}}, "party_id": "yxJ39vrtuWWrqTZb", "party_members": [{"extra_attributes": {"SqBSKp8AmgwhYzk3": {}, "3J34fiTxK63OHpnU": {}, "CGBVfpctNFUsUQ6Z": {}}, "user_id": "XQcb2o1J5euLAbBg"}, {"extra_attributes": {"ejqc0apxqZ209ByS": {}, "n8aUaGlAyvIslt7N": {}, "1qcxKs4nlf1MfqUZ": {}}, "user_id": "XkjHvcUOTlxNf09p"}, {"extra_attributes": {"efgFIiJssShBKsQj": {}, "XvfQgQDt6ce8NDME": {}, "rA82FrR1GSogkewI": {}}, "user_id": "zTOqKkcjRh3l2gAJ"}], "ticket_created_at": 84, "ticket_id": "CAU1cKApdJDnE73G"}, {"first_ticket_created_at": 76, "party_attributes": {"pclrk4hIRn0znIKz": {}, "AEAHQpBOgHEP5l94": {}, "s7CbIJ7eHnVWOboM": {}}, "party_id": "kyB7FTexsOZ0b2p3", "party_members": [{"extra_attributes": {"b63KrcwIcXMhGy83": {}, "Xit6boOLGCcg16Dq": {}, "wdQPQ9HkSSV8e1Mg": {}}, "user_id": "TTLS2FgarY903ING"}, {"extra_attributes": {"IyEfRBEj7qms9AGQ": {}, "ExPhgr9gGfC0Gjvp": {}, "gJfuBs1Vpqn47GVg": {}}, "user_id": "hTH2wToOnq9U5lyW"}, {"extra_attributes": {"89Xwt3wmRTrDCjhn": {}, "KvsHezWTqgYPixtH": {}, "k6lWq6tEeUmU96FL": {}}, "user_id": "Eak0mJqjRYldcTpd"}], "ticket_created_at": 8, "ticket_id": "rv2vancmR6Z7rb21"}, {"first_ticket_created_at": 54, "party_attributes": {"wL8Y4JFVUdzA8bvX": {}, "lDhG7BrorbKIKuOX": {}, "JPm5ztrr09CDA8Ij": {}}, "party_id": "5bGKSuopWQbaCvdP", "party_members": [{"extra_attributes": {"Sq8Z27GpvHCDx55J": {}, "Z5z6gujpFzlPspQD": {}, "9IRIpDDubntPCFxf": {}}, "user_id": "eoW2NdSWzOXjO1NQ"}, {"extra_attributes": {"UqWHBW78XREZCiTN": {}, "Axq26gZrPqCsSDsp": {}, "vgM16sZ6rjnkH4Ex": {}}, "user_id": "ObppC6CMYDm5ge65"}, {"extra_attributes": {"9UDEOF6gp5Ufmjti": {}, "VbqJnZcrqrPye7fC": {}, "wi7Il2wIFlHm9N6o": {}}, "user_id": "wMHMtJy1Oqn59tEG"}], "ticket_created_at": 26, "ticket_id": "EuwDVc12r0DVUGgG"}]}], "namespace": "HkapTCafFMdvYiCB", "party_attributes": {"uzUUwyI6Vtd4v9k4": {}, "fv3kMiuQ3DhsKLxj": {}, "t5srPFxBgpFtDBmT": {}}, "party_id": "LH9kP9U53z6joBAh", "queued_at": 55, "region": "gBe6dboSdhkBzAzP", "server_name": "kt1efGJeJaxyHYut", "status": "gXucx85vHA009FAb", "ticket_id": "21jxeWXk80y9uxgV", "ticket_ids": ["LGgK8aVSCN6oCETQ", "8gIDRdD2wwMXwKVX", "GPhEJsc7rZpxaPHc"], "updated_at": "1977-05-26T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "DfNfPGYYSTunMgt3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'C8hEguCqlMHiQN3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 99, "userID": "GRufOUGfMjTU226l", "weight": 0.8423692693978156}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdatePlayTimeWeight' test.out

#- 14 GetAllPartyInAllChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-all-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllPartyInAllChannel' test.out

#- 15 BulkGetSessions
$PYTHON -m $MODULE 'matchmaking-bulk-get-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkGetSessions' test.out

#- 16 ExportChannels
$PYTHON -m $MODULE 'matchmaking-export-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'ExportChannels' test.out

#- 17 ImportChannels
$PYTHON -m $MODULE 'matchmaking-import-channels' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'ImportChannels' test.out

#- 18 GetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-get-single-matchmaking-channel' \
    '7jPlcYaqYM7YfBmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"blocked_player_option": "blockedPlayerCanMatch", "deployment": "AEl6A9sh2x2ur2cc", "description": "p7R7OqPqIjS4i0N9", "findMatchTimeoutSeconds": 50, "joinable": true, "max_delay_ms": 2, "region_expansion_range_ms": 93, "region_expansion_rate_ms": 67, "region_latency_initial_range_ms": 6, "region_latency_max_ms": 16, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 32, "min": 95, "name": "VZ8GlU8962e6gtn5"}, {"max": 31, "min": 23, "name": "UARJM1T8QwMNOAzX"}, {"max": 25, "min": 3, "name": "yHEV4g9P6a280S5R"}], [{"max": 82, "min": 57, "name": "1lEgUwQ9tkWaMOH4"}, {"max": 59, "min": 58, "name": "iwLxCFLDixZwVtt3"}, {"max": 89, "min": 85, "name": "VTl0tR00oQgcHdGG"}], [{"max": 75, "min": 57, "name": "3x76U1EIcklttmrp"}, {"max": 14, "min": 75, "name": "F5szl0sMY8es36r1"}, {"max": 65, "min": 95, "name": "gR70eNLHkVrEFd8x"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 100, "role_flexing_second": 49}, "maxNumber": 74, "minNumber": 6, "playerMaxNumber": 41, "playerMinNumber": 73}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 59, "min": 97, "name": "AIfNBSHgpFNw9K9p"}, {"max": 26, "min": 53, "name": "WvBxmBvNj3ktaDf9"}, {"max": 57, "min": 91, "name": "HGgxakPt7IYzaZUT"}], [{"max": 26, "min": 47, "name": "vsEzLPnnGsnfmBer"}, {"max": 31, "min": 2, "name": "4qjwzWpCF1vyamjs"}, {"max": 62, "min": 12, "name": "zwtLPxK1os4qR8La"}], [{"max": 88, "min": 74, "name": "zEb39sZTdFfC8x5a"}, {"max": 69, "min": 14, "name": "LsXHlm1RJTTy9JrN"}, {"max": 53, "min": 22, "name": "K5M1qgFddYvifGHa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 81, "role_flexing_second": 48}, "duration": 4, "max_number": 3, "min_number": 50, "player_max_number": 41, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 59, "min": 27, "name": "RM69XKkLwioRaKnW"}, {"max": 16, "min": 60, "name": "lh80BhYe2fJDS6T7"}, {"max": 86, "min": 60, "name": "4ulonMFjmYqE1wJh"}], [{"max": 10, "min": 29, "name": "DwUj2HKUvPYUcQBx"}, {"max": 78, "min": 91, "name": "5Co0vdCk8so6JSaZ"}, {"max": 54, "min": 61, "name": "IadKDEZywonA2SrE"}], [{"max": 7, "min": 41, "name": "N2tmGuX6r0gBVUUe"}, {"max": 75, "min": 20, "name": "KlPKtE6gnYxmkmCW"}, {"max": 2, "min": 0, "name": "s5qugklBUS6uwWrC"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 71, "role_flexing_second": 88}, "duration": 72, "max_number": 4, "min_number": 35, "player_max_number": 85, "player_min_number": 13}, {"combination": {"alliances": [[{"max": 100, "min": 55, "name": "tLAJWpcyNkUvqn6e"}, {"max": 22, "min": 36, "name": "2vQTYX1xsth28NZZ"}, {"max": 13, "min": 95, "name": "sXycuQNGIDeHlf6I"}], [{"max": 4, "min": 32, "name": "X1K9JrK6Or2xx7rL"}, {"max": 47, "min": 37, "name": "rPoWiywnxuDLLuIa"}, {"max": 92, "min": 95, "name": "xoloIH1gBCWVFrvl"}], [{"max": 38, "min": 57, "name": "0ZwosKhDlLfTKxpV"}, {"max": 83, "min": 63, "name": "XvGSrdkqddI3ezqu"}, {"max": 4, "min": 64, "name": "Dseh4tJdoGcwMBme"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 54}, "duration": 98, "max_number": 23, "min_number": 96, "player_max_number": 61, "player_min_number": 0}], "batch_size": 23, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 55, "flex_flat_step_range": 38, "flex_immunity_count": 19, "flex_range_max": 77, "flex_rate_ms": 35, "flex_step_max": 97, "force_authority_match": false, "initial_step_range": 56, "mmr_max": 31, "mmr_mean": 89, "mmr_min": 55, "mmr_std_dev": 37, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "cHrV0MbJGr4drgkD", "criteria": "uWS05m0pGzazM2BU", "duration": 64, "reference": 0.2204105625429419}, {"attribute": "zUEWTiKMJAf6Agbi", "criteria": "EDMfCckWogE5gcfF", "duration": 41, "reference": 0.4347073086296629}, {"attribute": "MGZ2FBS93Mg6TKwd", "criteria": "RMraDLrwh3d0ykRG", "duration": 20, "reference": 0.28400085194444746}], "match_options": {"options": [{"name": "nacA34xmIOjFLgKR", "type": "4LjEWhOScvtQ92iD"}, {"name": "02YMvEUNfoL7JCcM", "type": "o7GxxXdbYCRexPek"}, {"name": "TsQxMTfaSot7aohF", "type": "Yy4VxwHIJ9gzxqAw"}]}, "matchingRules": [{"attribute": "4vBGQAeh0VTiTP4P", "criteria": "SrXUS6jYI9lsQFD4", "reference": 0.8928443281507624}, {"attribute": "Df5qUZOFzpFd6b5J", "criteria": "c5TETHcup8GG0VCM", "reference": 0.7356262085112126}, {"attribute": "FJ6svTyo9RHget5h", "criteria": "zB52BDFopxUwkMuS", "reference": 0.2712197605918857}], "sort_ticket": {"search_result": "QnKzDgDAtqE3kuyb", "ticket_queue": "wTQFYEJjIYwqfSRy"}, "sort_tickets": [{"search_result": "8GgVk77fd1GS5Yky", "threshold": 14, "ticket_queue": "KsWCPccAFn5CEPoH"}, {"search_result": "6opK5DSO8JyX4IE1", "threshold": 53, "ticket_queue": "iclNNqLyrlzrJ4QH"}, {"search_result": "bfnAdtkujxHff7n1", "threshold": 51, "ticket_queue": "ncJJKpqmgvUTr8XA"}], "sub_game_modes": {}, "ticket_flexing_selection": "tpOqUQxzqJZiWi3K", "ticket_flexing_selections": [{"selection": "QffT5Tn61A1xW6ok", "threshold": 71}, {"selection": "DufmKh783cV54JsV", "threshold": 56}, {"selection": "o5oHzqY3DgykA8zB", "threshold": 74}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 30, "socialMatchmaking": true, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    '1k5ZM8btmGsgXNXb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
$PYTHON -m $MODULE 'matchmaking-clean-all-mocks' \
    'pqxh76Af5JSwjw2f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
$PYTHON -m $MODULE 'matchmaking-get-all-mock-matches' \
    'E2g6jXV7oai2oDm9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-matches-by-timestamp' \
    '{"timestamp_after": 64}' \
    'gEt39uJQpgEtchTe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
$PYTHON -m $MODULE 'matchmaking-get-all-mock-tickets' \
    '3nt7t9ztprSfW9Ou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
$PYTHON -m $MODULE 'matchmaking-create-mock-tickets' \
    '{"attribute_name": "tADrNGBWSJ1zQKxV", "count": 26, "mmrMax": 0.518234913759304, "mmrMean": 0.913832774222122, "mmrMin": 0.06587935988551952, "mmrStdDev": 0.5129894939318062}' \
    'h2YNsdoxpLTBM9Q8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
$PYTHON -m $MODULE 'matchmaking-bulk-create-mock-tickets' \
    '[{"first_ticket_created_at": 40, "party_attributes": {"DQher3usApPdJPn9": {}, "eIdhIBvTTupABJ4R": {}, "wH3EdKmYtbqQHNfI": {}}, "party_id": "ZwrMxf3EnzZVnkLT", "party_members": [{"extra_attributes": {"0Lb85nmpdN26BY5Y": {}, "I0jeO2zMDSy4kyqy": {}, "KgrtEPdXXlt8geCd": {}}, "user_id": "iXu3iNvn7vLZ7h6a"}, {"extra_attributes": {"lhJNGZF07lsPP5Of": {}, "HbXzWnVO2U4uyzZo": {}, "1rj0ZrLQjk4VoYfI": {}}, "user_id": "ksth24cZBpdDFfvz"}, {"extra_attributes": {"eU5iqhx6zv7EURTN": {}, "IoG1DBdoKH6sREmm": {}, "fwUZLZZS7snx0Q2G": {}}, "user_id": "d8m7Y3wiNloJfey3"}], "ticket_created_at": 69, "ticket_id": "PxibDjfF7JkjCVpZ"}, {"first_ticket_created_at": 76, "party_attributes": {"55SyienCODZ0mnOp": {}, "PTVxEgBFzG8tlkxW": {}, "KCU1XN4gl7yHvEqp": {}}, "party_id": "JSrDXVwCkhOQ161T", "party_members": [{"extra_attributes": {"FjROYJm75VIuCOCk": {}, "t2W1DfI8QtgODk9K": {}, "6DcMnyCPn1FylWda": {}}, "user_id": "NV1VaZTkbbuWiiA4"}, {"extra_attributes": {"UTDgS2SVEo5M80LL": {}, "bku9GYH4ijqOVM50": {}, "tCqkZfsSxAbDJ7sH": {}}, "user_id": "CLup8pmEosOXglQw"}, {"extra_attributes": {"wdeLVpmXqRwVjc3W": {}, "2ANmE3VVsQ1fm9EU": {}, "diaRjuLsKZoqnpKw": {}}, "user_id": "hpZVdw5UMa8ymxtE"}], "ticket_created_at": 65, "ticket_id": "t8umj5XhKnw7MHDw"}, {"first_ticket_created_at": 65, "party_attributes": {"VynioJcAPwVHUGcs": {}, "1ACMvoY4jWH9dFmO": {}, "HW0j9suukPE4JwQO": {}}, "party_id": "NQ2vCbMn0Oia336u", "party_members": [{"extra_attributes": {"iiMTAductvUfVwLa": {}, "htRedh1SiZlOpIQ8": {}, "GL7jBF1R5OexAPzC": {}}, "user_id": "G6ZKQClGc1636nbf"}, {"extra_attributes": {"M3J9G40Y62bCo941": {}, "ALznQuHVskfCjUK8": {}, "GeX4Q0B2Cj0oOmBm": {}}, "user_id": "Xu1KiTTiz7yrIvQj"}, {"extra_attributes": {"2isN7bRwcr16lW5Y": {}, "wgZpjlMMtPWg8217": {}, "m7qNkQiKp2oac8QT": {}}, "user_id": "NEuBbeuQqm9wM7mg"}], "ticket_created_at": 94, "ticket_id": "Ls9gNpNon6DKW9A6"}]' \
    'AmnQTNFidImWONTv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-tickets-by-timestamp' \
    '{"timestamp_after": 58}' \
    'nGqhJOvykBcDpzD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'zh6dtPK4fVHLMvrC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'sH3RYxH2Up9VthPj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["FrK7Hip0eONFDgUP", "ShG8wwFKY9AMpcwJ", "d4SrigIxAhbFMZfx"], "party_id": "aznlDQbzTiFrQB1y", "user_id": "UonirH4URx3NkKQB"}' \
    'YrlUaMiFEWUT8cAF' \
    'O5zEw8GENEJYPKxx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'Ow7xNQ98IEbc9YIT' \
    'N98j4P2AGeidXRRn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'IAJfKVjOn6rtILNJ' \
    'Vv2DLLUyBt5hDs45' \
    'siG30Lv9iGa5mkZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
$PYTHON -m $MODULE 'matchmaking-get-stat-data' \
    'nRXVcg6AByNpBo2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetStatData' test.out

#- 33 SearchSessions
eval_tap 0 33 'SearchSessions # SKIP deprecated' test.out

#- 34 GetSessionHistoryDetailed
eval_tap 0 34 'GetSessionHistoryDetailed # SKIP deprecated' test.out

#- 35 PublicGetMessages
$PYTHON -m $MODULE 'matchmaking-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGetMessages' test.out

#- 36 PublicGetAllMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-all-matchmaking-channel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetAllMatchmakingChannel' test.out

#- 37 PublicGetSingleMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-public-get-single-matchmaking-channel' \
    'YkwLdmR97u9MVUii' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetSingleMatchmakingChannel' test.out

#- 38 SearchSessionsV2
eval_tap 0 38 'SearchSessionsV2 # SKIP deprecated' test.out

#- 39 VersionCheckHandler
$PYTHON -m $MODULE 'matchmaking-version-check-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'VersionCheckHandler' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
