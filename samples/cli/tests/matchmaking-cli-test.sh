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
matchmaking-create-channel-handler '{"deployment": "EAxcVpFrttufHIRd", "description": "H9UzVRiXbqlAw7r6", "find_match_timeout_seconds": 100, "game_mode": "7eHpzSn3ZPUdc0qh", "joinable": false, "max_delay_ms": 100, "region_expansion_range_ms": 26, "region_expansion_rate_ms": 29, "region_latency_initial_range_ms": 51, "region_latency_max_ms": 31, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 56, "min": 72, "name": "m8SAMTwE6I56IaRD"}, {"max": 56, "min": 2, "name": "XxyaNoMR6hkspInr"}, {"max": 54, "min": 12, "name": "ip6lyzSxwElFHHdg"}], [{"max": 38, "min": 31, "name": "21Jub74CUkNmKJfh"}, {"max": 18, "min": 31, "name": "kY1aXlFcDtgOjchI"}, {"max": 42, "min": 69, "name": "a5tWEIC32ogW7olv"}], [{"max": 3, "min": 94, "name": "zsCTCrbCbPOyNQkT"}, {"max": 82, "min": 80, "name": "vyE3cwyALczNIicX"}, {"max": 25, "min": 0, "name": "WBZqxYG3aREAu2D6"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 17}, "max_number": 84, "min_number": 89, "player_max_number": 16, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 57, "name": "7oFgx4c8OumKtPDK"}, {"max": 74, "min": 62, "name": "DXn7Z4U68su8Xfql"}, {"max": 34, "min": 63, "name": "NiTvB6SdAdIhUDrw"}], [{"max": 29, "min": 39, "name": "Z5MecdKi5r6QEa1y"}, {"max": 38, "min": 9, "name": "LEzth6mXhzkzWkFe"}, {"max": 7, "min": 90, "name": "dSpHt0P7MIIR7Cky"}], [{"max": 66, "min": 40, "name": "6C7duuyZ0GhDogqr"}, {"max": 16, "min": 51, "name": "BRd8lDR6qVNPRZYd"}, {"max": 65, "min": 90, "name": "LIAjGGJddVCvu9vx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 22}, "duration": 76, "max_number": 75, "min_number": 66, "player_max_number": 79, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 91, "min": 70, "name": "0lyuI9a2I9u6Vpbs"}, {"max": 47, "min": 21, "name": "5w8hqUI06UpOXGSL"}, {"max": 25, "min": 96, "name": "CVuHOPlLlkvR8sKg"}], [{"max": 28, "min": 47, "name": "uRkgghGoYupD391C"}, {"max": 49, "min": 33, "name": "D6SCwGrncqmLtjQH"}, {"max": 54, "min": 25, "name": "f8TgoNm03VLisV6z"}], [{"max": 46, "min": 97, "name": "Puo3td6TC6I3lMjG"}, {"max": 91, "min": 39, "name": "WN2laRlxfcjHfYak"}, {"max": 95, "min": 3, "name": "CTqGkE7wcWfDslpJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 40}, "duration": 55, "max_number": 77, "min_number": 85, "player_max_number": 88, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 18, "min": 50, "name": "ZMdjxcBZufQxGiHP"}, {"max": 24, "min": 86, "name": "lG4cYEzfTD1ZBm3M"}, {"max": 33, "min": 84, "name": "HcUmLZZbSqb8RwNm"}], [{"max": 27, "min": 59, "name": "9HrNQy4uZAAiE0mi"}, {"max": 39, "min": 91, "name": "9RGCCHYzUOcEdscK"}, {"max": 69, "min": 13, "name": "PEqgA8yu7Vk6Jt4Y"}], [{"max": 25, "min": 16, "name": "os9Jcdos4fYcTVU6"}, {"max": 90, "min": 25, "name": "Bt0zYoMcHyCUEXlA"}, {"max": 44, "min": 77, "name": "xJMdalwSyliWMNW5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 33}, "duration": 39, "max_number": 79, "min_number": 23, "player_max_number": 56, "player_min_number": 98}], "batch_size": 68, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 16, "flex_flat_step_range": 72, "flex_immunity_count": 58, "flex_range_max": 61, "flex_rate_ms": 92, "flex_step_max": 70, "force_authority_match": false, "initial_step_range": 60, "mmr_max": 3, "mmr_mean": 86, "mmr_min": 99, "mmr_std_dev": 86, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "lNmqRBaAkLnvxkT1", "criteria": "X68cmDc3fxU8MyKr", "duration": 88, "reference": 0.8452748898931911}, {"attribute": "v52Dlym6puQ23xoJ", "criteria": "8aeCnaLpUKp44YUD", "duration": 20, "reference": 0.24185924236642597}, {"attribute": "WvXa3bMrXsDr6kIL", "criteria": "sSSyDdmykmoPYgc2", "duration": 76, "reference": 0.01667587390248748}], "match_options": {"options": [{"name": "N9oCMNqq98SjTvhZ", "type": "NkSQ70D0H6BXksUC"}, {"name": "9b6i5lZC9xv32e8c", "type": "5csSovoqsZNBdte9"}, {"name": "NDUPVJf6c2Z0QZxf", "type": "gPubTDIHrvqAThuw"}]}, "matching_rule": [{"attribute": "jRHpKKTlmVr9XuoJ", "criteria": "bRFQSKVPHbn4Xxtu", "reference": 0.9639977895854788}, {"attribute": "LQRENjEEztx1WsYS", "criteria": "iZqan0nSBJroav91", "reference": 0.5171230937144093}, {"attribute": "XlvPG6bFYReVHQip", "criteria": "cCx9Zw5D2L7vIYhG", "reference": 0.5235086363368513}], "rebalance_enable": false, "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 87, "ticket_queue": "none"}, {"search_result": "none", "threshold": 68, "ticket_queue": "random"}, {"search_result": "random", "threshold": 81, "ticket_queue": "distance"}], "sub_game_modes": {"e4mhgo5QB65lSAiY": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 31, "name": "NjkfZrQvGgbLdLsF"}, {"max": 51, "min": 74, "name": "HkBMr1yrOMlNFSrU"}, {"max": 63, "min": 18, "name": "f7Gc26SaiGVkydwY"}], [{"max": 99, "min": 5, "name": "QG26yUZNmTBcvrbY"}, {"max": 59, "min": 60, "name": "wZtxFHyPLtI8ilby"}, {"max": 60, "min": 5, "name": "PUIj88cekdqCt81P"}], [{"max": 68, "min": 21, "name": "dNzDmeIP6rOvDz9K"}, {"max": 83, "min": 25, "name": "sb392k6YmJFfRByj"}, {"max": 24, "min": 56, "name": "a9LJE8HoRS1X2PFA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 22}, "max_number": 47, "min_number": 59, "player_max_number": 51, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 68, "min": 57, "name": "PxB1UskYs4Yw20DO"}, {"max": 34, "min": 92, "name": "OBSC2DKHRuPMMWH8"}, {"max": 25, "min": 4, "name": "qRRbceJ5i0EeDxOg"}], [{"max": 55, "min": 8, "name": "nhhqElIaDml48wdN"}, {"max": 65, "min": 93, "name": "LTm5T50x9WT0GfH2"}, {"max": 36, "min": 41, "name": "tOa4EXsXzOXQAk4m"}], [{"max": 33, "min": 40, "name": "rxzTtuLl4XlbGL8Q"}, {"max": 84, "min": 60, "name": "xtjzm8y2wNhmwoYZ"}, {"max": 50, "min": 59, "name": "I4EFZKBcYrCEAE7W"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 25}, "duration": 15, "max_number": 48, "min_number": 46, "player_max_number": 70, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 34, "min": 77, "name": "31A806DJgas4b6z3"}, {"max": 77, "min": 42, "name": "NUj7fdgLA84Z8YYk"}, {"max": 58, "min": 88, "name": "pnduEEQlULdJz4mn"}], [{"max": 88, "min": 30, "name": "BkMNxvvKgAT8mJrY"}, {"max": 33, "min": 70, "name": "6hRkloqxM3gpwxcf"}, {"max": 79, "min": 18, "name": "y9XzjjI5YbsKoADk"}], [{"max": 52, "min": 37, "name": "JEN2VHzih3bit0VW"}, {"max": 28, "min": 16, "name": "3CO39PXDNxtXgeO3"}, {"max": 64, "min": 83, "name": "gkXhjDzaQY3snn2Z"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 55}, "duration": 61, "max_number": 4, "min_number": 79, "player_max_number": 65, "player_min_number": 80}, {"combination": {"alliances": [[{"max": 8, "min": 54, "name": "P43e5dC9XIBudfZg"}, {"max": 35, "min": 1, "name": "bHDIDm4hMzF4Txod"}, {"max": 8, "min": 39, "name": "nSrUTvfqU0bfoMm5"}], [{"max": 5, "min": 20, "name": "TtFWbotQyXJRcQWs"}, {"max": 25, "min": 44, "name": "qPNs92epxk0i8Vxs"}, {"max": 82, "min": 57, "name": "ereSvf9699mCEHTh"}], [{"max": 95, "min": 88, "name": "JkETAsSp7gh4TeUT"}, {"max": 20, "min": 3, "name": "OkAYfJB8AT9t4Tv2"}, {"max": 73, "min": 91, "name": "Y2QD3oD5fLCr3OOl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 47}, "duration": 58, "max_number": 68, "min_number": 64, "player_max_number": 67, "player_min_number": 3}], "name": "uYnGzpipNDigNJma"}, "1MbqqZtfNWql4nmw": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 21, "name": "ft4gqkNNlWkD9eOz"}, {"max": 17, "min": 49, "name": "RFOn0jJLHC9LxhvN"}, {"max": 82, "min": 94, "name": "ww3HICQLfl7MUBG7"}], [{"max": 34, "min": 25, "name": "tPu64yAtURKLRkb7"}, {"max": 84, "min": 69, "name": "TF6oQAXVG7tnsZg5"}, {"max": 86, "min": 16, "name": "gXjvyGJPN4eXbJE5"}], [{"max": 97, "min": 75, "name": "s2GcyomQoIXimBJe"}, {"max": 16, "min": 89, "name": "yxlNsjUgxBkF6wFP"}, {"max": 29, "min": 91, "name": "JeQediogEhhM2rIi"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 75}, "max_number": 68, "min_number": 43, "player_max_number": 96, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 86, "name": "rDzZSKscfOcYu3dp"}, {"max": 59, "min": 22, "name": "ROYqUiGKXVFCmpo6"}, {"max": 38, "min": 0, "name": "PwVOEDSJsEK5QpNh"}], [{"max": 24, "min": 25, "name": "I2iS5EpGhhvXYck0"}, {"max": 41, "min": 32, "name": "QM0NBMA9ORxpzwLR"}, {"max": 2, "min": 54, "name": "u1bNCtX7W40V6Do5"}], [{"max": 37, "min": 67, "name": "YadCCFrHHC3DpZxk"}, {"max": 37, "min": 35, "name": "QDXuNFviMarv8mnf"}, {"max": 69, "min": 89, "name": "K8CCmE2lPnsbD3SG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 25}, "duration": 23, "max_number": 47, "min_number": 79, "player_max_number": 42, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 96, "min": 0, "name": "ccE536ugBp3HBvep"}, {"max": 28, "min": 41, "name": "DCjgyJlXe36mgWjL"}, {"max": 11, "min": 64, "name": "09xbnGezKsDwG2om"}], [{"max": 83, "min": 89, "name": "5tVg8JqU0jZpjvsu"}, {"max": 13, "min": 10, "name": "AOS7u8RiWyerCSa8"}, {"max": 91, "min": 56, "name": "RgwsAj1ik1jglaDX"}], [{"max": 93, "min": 12, "name": "vKCWwNTAhd2wrS0u"}, {"max": 84, "min": 40, "name": "djhdinpng5BLy8wb"}, {"max": 15, "min": 31, "name": "MssAHjapIkY9Rf4w"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 65}, "duration": 81, "max_number": 87, "min_number": 89, "player_max_number": 2, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 27, "min": 6, "name": "bCtmKy8M9zVrjfGX"}, {"max": 28, "min": 38, "name": "qAQUoY1GjlIIk0iK"}, {"max": 29, "min": 59, "name": "TTS1j02o7JjTXAQN"}], [{"max": 34, "min": 6, "name": "ccLjMXJRk0eaKQDO"}, {"max": 74, "min": 48, "name": "vrTefglSs6g4iY9u"}, {"max": 44, "min": 0, "name": "aCNYIWekp18lOC3m"}], [{"max": 81, "min": 78, "name": "qF7Bl0LcghVHfPEs"}, {"max": 32, "min": 57, "name": "xwhRON0bc1eMbEIj"}, {"max": 29, "min": 64, "name": "wLqc3ecjXJbZDKKo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 60}, "duration": 31, "max_number": 50, "min_number": 6, "player_max_number": 26, "player_min_number": 39}], "name": "pai0rYaT5hOPjaf3"}, "H0tYighU0VUfcYHJ": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 63, "name": "BfAKSiPW3VgsZXiR"}, {"max": 93, "min": 59, "name": "ej52WKi6tArAURt9"}, {"max": 32, "min": 64, "name": "lCSVq8PdH6hJPUAc"}], [{"max": 61, "min": 90, "name": "uAXI66bQ71w0deoV"}, {"max": 88, "min": 77, "name": "i6BqPg4xr0lCancU"}, {"max": 51, "min": 66, "name": "vSZIPkhSgORcz5S5"}], [{"max": 56, "min": 50, "name": "vmgBLxh4ijFnE3Ta"}, {"max": 26, "min": 79, "name": "9qSZ7PC6f6QkmZXE"}, {"max": 24, "min": 7, "name": "W9YfRSse6AAz3S4c"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 87}, "max_number": 57, "min_number": 75, "player_max_number": 89, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 24, "name": "PYuG6XqP6oo7G73z"}, {"max": 6, "min": 9, "name": "xTgOfnwIdlNa29fD"}, {"max": 77, "min": 15, "name": "h741IslKHzGlLKWU"}], [{"max": 40, "min": 68, "name": "DQs61OQAoxyyQpRW"}, {"max": 59, "min": 80, "name": "iiPDGQhNPEwiJCf2"}, {"max": 40, "min": 73, "name": "nkY6Mca5afj12K2I"}], [{"max": 51, "min": 22, "name": "rBvvWm4udE0OXudX"}, {"max": 13, "min": 22, "name": "Nne8kJATwlc6esUp"}, {"max": 98, "min": 91, "name": "6xnZ5Jrzzjrcaug6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 97}, "duration": 75, "max_number": 67, "min_number": 28, "player_max_number": 0, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 21, "min": 100, "name": "noed9DHhLOqQGhCU"}, {"max": 35, "min": 21, "name": "iTrjyEgarAdNJOIG"}, {"max": 97, "min": 38, "name": "I6tRbRcrEveMdAdi"}], [{"max": 85, "min": 94, "name": "KDUVSC00PYeDcagg"}, {"max": 18, "min": 70, "name": "nxnFIna3yddcbsPh"}, {"max": 8, "min": 84, "name": "TH26IUJNvYuGRUvp"}], [{"max": 1, "min": 69, "name": "A3PrIfapq5AAeMe4"}, {"max": 76, "min": 26, "name": "3mDWORBVXTIIJM9X"}, {"max": 38, "min": 1, "name": "YIIZxiXNMR9BgaWc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 39}, "duration": 96, "max_number": 66, "min_number": 56, "player_max_number": 27, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 25, "min": 50, "name": "yo5JJTUVmb8GEXFT"}, {"max": 24, "min": 54, "name": "EMEsFzYqwgK1Np5n"}, {"max": 30, "min": 7, "name": "dqpLm7FhJBNXzAFd"}], [{"max": 84, "min": 81, "name": "Khqf6kiTdSGv2LFj"}, {"max": 54, "min": 47, "name": "KY7CbgsWqFWZX7kP"}, {"max": 56, "min": 84, "name": "om8F9GLLTG8phc3n"}], [{"max": 65, "min": 16, "name": "MbAG9YI89hmguB8F"}, {"max": 83, "min": 93, "name": "WGRaoQomSJC4DdrK"}, {"max": 64, "min": 39, "name": "7SUQPLG59e0k5ZtX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 74}, "duration": 46, "max_number": 98, "min_number": 85, "player_max_number": 8, "player_min_number": 32}], "name": "MK6MbGIVIu8vvwLc"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "random", "threshold": 41}, {"selection": "oldest", "threshold": 30}, {"selection": "newest", "threshold": 93}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 39, "social_matchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-get-match-pool-metric 'ZrQzP4zvtdxdbZUp' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'd6FJtHJ1pyVwyKQL' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "Y6FEO65Rb3z7CYLM", "players": [{"results": [{"attribute": "8IlsHqffnrfsGlfP", "value": 0.012031591177371403}, {"attribute": "ZKBwa3Ddb60ufPpz", "value": 0.3694170939030531}, {"attribute": "j1QGIFmlVf4jvaps", "value": 0.07083368406806057}], "user_id": "E9LN9bvhOrHflIOd"}, {"results": [{"attribute": "6X3viLvtEk4mTIpU", "value": 0.4325177690887003}, {"attribute": "9gxo8SV38nEhoXmM", "value": 0.8821265287585471}, {"attribute": "W7l6jHMA2rG3nako", "value": 0.2538246409580327}], "user_id": "Aywelu01nryEJ0Nq"}, {"results": [{"attribute": "oTow0qiOiC4j0ikt", "value": 0.20864724455417716}, {"attribute": "0ZPLkLOsp0LZ5njN", "value": 0.9701707300846726}, {"attribute": "6Hl8kUXzt6bSc6bW", "value": 0.35298129201965833}], "user_id": "gpVyW9dD1kOmvrAe"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "jcq2LgkQuaS7RBx3"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "vim02jBOxrZDyvpc", "client_version": "LYOWA8NjxOnaEok4", "deployment": "nOOCzfsflhjbngJO", "error_code": 95, "error_message": "H8paOJtxqMPpcVfR", "game_mode": "wNj547fH0XrKEDpE", "is_mock": "Y8VnocGAjci0V3tB", "joinable": false, "match_id": "xFJ3sWCqQpQ2FbKP", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 64, "party_attributes": {"LDljhZ2jxLRX3z46": {}, "OCaGBeMfPlNos4yB": {}, "RjrERHEonAZR8GmE": {}}, "party_id": "u0q1p6QCyY6vSkVF", "party_members": [{"extra_attributes": {"WdsbYuVEGVxYheR3": {}, "j5mNZ6vwv7K8Asvt": {}, "1j1Rx59hesNWy2Nv": {}}, "user_id": "Z85DDKDAF8KDsBZO"}, {"extra_attributes": {"uYQJ03BAHZ7c53q7": {}, "akMpcmnnx6RVBrop": {}, "9v7aZK3h65hbN15z": {}}, "user_id": "fQSfQrtfF3TQN0Oc"}, {"extra_attributes": {"NDLr36vzohZyjMQA": {}, "g5mPYhrLTyU8Ohgf": {}, "Y9JQYGF4bYXEcENx": {}}, "user_id": "9xZlAchob44lONDD"}], "ticket_created_at": 45, "ticket_id": "FUjfIGaffoflEIBy"}, {"first_ticket_created_at": 38, "party_attributes": {"qeKN0meGelYF5wWa": {}, "DhukU4khGG4vZFTY": {}, "nPkmSu4PWam1jxR7": {}}, "party_id": "SETWjteoc8fgvZDD", "party_members": [{"extra_attributes": {"hoO05oKqymxLD1Lc": {}, "vw6T6mZEiwxxElpM": {}, "YSWIeVzm7z9noowm": {}}, "user_id": "lTIKVowi0RY2VN4Z"}, {"extra_attributes": {"ONJREdUQ3z9F1BxN": {}, "Ngnke4akncw7wu9T": {}, "mXfJWBPrx9Ns8eLz": {}}, "user_id": "YEvwSWTaLQjctvrK"}, {"extra_attributes": {"2jhsYpKPlXn77AtY": {}, "oFzLAATPY8P8P3cf": {}, "oivvQxevecWw7Rry": {}}, "user_id": "0KK5rgAGO0dW8rX2"}], "ticket_created_at": 80, "ticket_id": "vq6iohU1cg4W1IS3"}, {"first_ticket_created_at": 96, "party_attributes": {"2sJxlZcCTpTdRtCH": {}, "vuk6B6XTmSLyn50s": {}, "igBVZxiKdV57GvRy": {}}, "party_id": "d9UuL02Le8HSCsls", "party_members": [{"extra_attributes": {"Dd4M1F5qRIblS7Nz": {}, "81GRazPAANjfBold": {}, "FOyqA2clJ5gEOaCg": {}}, "user_id": "M6Yn6RugbNEIpGBF"}, {"extra_attributes": {"UjOn5mM7k8nbLzvt": {}, "CIW5ynMKquUicAeI": {}, "VXtoWAXhMlW4tLqX": {}}, "user_id": "7OICf5oD1e6oI9Fm"}, {"extra_attributes": {"Yel0kOw72o8Zkgk0": {}, "jS6rDWUwfhKvrf2A": {}, "aH4yCWrHSppnIZkN": {}}, "user_id": "nTn3rzH5NvAtcvNe"}], "ticket_created_at": 7, "ticket_id": "PSE1XXPzySa0sZoF"}]}, {"matching_parties": [{"first_ticket_created_at": 91, "party_attributes": {"PWlQMVDXEHeiGTnw": {}, "yEw6hIWDZrpP7rz3": {}, "ISW510kHr4isTKWj": {}}, "party_id": "mv67nuHCXWfwnwGi", "party_members": [{"extra_attributes": {"oVwVzmmBVVFfpqx1": {}, "AeLtzcPJ3jtDYBo4": {}, "FUTH7CGfKSyxgRR1": {}}, "user_id": "DiCqSMzpqIFGLkDs"}, {"extra_attributes": {"7ACC1RgBfoNrHlFi": {}, "2qJLgmBLE35YhyiD": {}, "V90SeI5yppBHoytV": {}}, "user_id": "znCgNyx9fbT63ShE"}, {"extra_attributes": {"h8PbGikLjgjcj34u": {}, "ulU6FYBZsWFbr3RS": {}, "P0W9nBhvhf8Q0DtJ": {}}, "user_id": "McYQdN66bswAgt65"}], "ticket_created_at": 53, "ticket_id": "4N1LQZmB61JMdtwC"}, {"first_ticket_created_at": 97, "party_attributes": {"LcNlZkqTZrKgXNwv": {}, "m4e5GX6H742Oixht": {}, "AoKiVm6URT95XhnU": {}}, "party_id": "cvWB28MpusuhhDJ5", "party_members": [{"extra_attributes": {"slzgiWZEtyd56Lfx": {}, "nbY97jjYgXchCbkX": {}, "X26uEdCfQaMAQuTK": {}}, "user_id": "fC0I2kNjCMDtDMre"}, {"extra_attributes": {"ntgn3DhqciwIeShF": {}, "9RKb9vvxuJlhXbWh": {}, "bwPwToC6knjVwVnz": {}}, "user_id": "aqSfJiQFC2gXoda0"}, {"extra_attributes": {"kg16yUSpSOAjHJWw": {}, "fCjYwWkLob9gKLqs": {}, "2nEZhpByfHZinxNf": {}}, "user_id": "gPAwkMBsznlBUqnL"}], "ticket_created_at": 94, "ticket_id": "lX2FtAz0vJjFIYWO"}, {"first_ticket_created_at": 1, "party_attributes": {"yrRvXfZ6rvgvEY3H": {}, "ht1SwqTsKKKo37NH": {}, "DOQe91Ps3ztUIV0d": {}}, "party_id": "S6hIH9c4Vfkyrwpu", "party_members": [{"extra_attributes": {"XxbaERbfgPmi0eHk": {}, "t1mr9EOIFg0dnWIY": {}, "N2NVL70Iw157g00j": {}}, "user_id": "r9b8MuYmmeKTmBNv"}, {"extra_attributes": {"GYxEQdf3ewoGGoY7": {}, "xmFNAmjDDCvs78mc": {}, "MdiS76YApGJ9ufwL": {}}, "user_id": "YkqIgLuZS6hsQryi"}, {"extra_attributes": {"EtOAbpeUNf26UqkC": {}, "fgCUYBn2xaOBdPF0": {}, "JmX8qwU1cTuHHPB5": {}}, "user_id": "S3DvPRCzBrVUxmDO"}], "ticket_created_at": 19, "ticket_id": "BeGs9yxahld1pO0G"}]}, {"matching_parties": [{"first_ticket_created_at": 50, "party_attributes": {"m4fZWuk6pQxDQpKq": {}, "xLGeMvr9TsvcMQ7d": {}, "BsaIecRxIsZvD6rm": {}}, "party_id": "zVr5XT1Nxw0v1dMQ", "party_members": [{"extra_attributes": {"9Rrbk6C2cVWf6ttv": {}, "bU1PO6ApCD2VXidT": {}, "7w0Oc15N8WXBPp17": {}}, "user_id": "PAewqSm5x3B4t7WQ"}, {"extra_attributes": {"np8jXZedgt5cyNe2": {}, "7HLtwtVOaxgP6Jbc": {}, "t8puMybYGxD9IPmm": {}}, "user_id": "sLmu3kaPj0O4zd8T"}, {"extra_attributes": {"b7cUNGPTBxiFFCrn": {}, "7djjs69FTFVGUVhv": {}, "KhJCmeisql14mUHV": {}}, "user_id": "bMPimNhcZsU3VAdM"}], "ticket_created_at": 60, "ticket_id": "3GUS2amU7syGlElX"}, {"first_ticket_created_at": 7, "party_attributes": {"KwjqPBiWXade41s3": {}, "rH34mB2yPlRpWjmH": {}, "ZAAvKTH8MuqIg0Cz": {}}, "party_id": "kguwuJCW7EEFB67A", "party_members": [{"extra_attributes": {"ODbi9BzupBsFpYc7": {}, "7GtRUcCFeY5g4XgB": {}, "sbfzqxBPNe8ae1Il": {}}, "user_id": "4aAtEbu4IjGdqthR"}, {"extra_attributes": {"xTjQ7gkZEY8rG0q0": {}, "Q2Qd2JzRbkF2I03d": {}, "IjvBbA6bfbYaJCJj": {}}, "user_id": "fk2TUvn95FhO7VW3"}, {"extra_attributes": {"mbDVMDu87t0ldWf7": {}, "iSGIiKFtWtn4Yr2s": {}, "vKM6pqLGZ0TBujEL": {}}, "user_id": "AUK6mQ5iZgbwwm5i"}], "ticket_created_at": 67, "ticket_id": "pUnZmvhidwCkZwqj"}, {"first_ticket_created_at": 77, "party_attributes": {"aj4hCmTC34jxW4pI": {}, "DwdqXpmRmut9H9Xy": {}, "WI8bp8fQxRuX91uY": {}}, "party_id": "mtrHJbEGTUj7YjER", "party_members": [{"extra_attributes": {"L1rEQG02zccA8wvL": {}, "sWUNd6lPKvqDejvq": {}, "klTSvDwuOrP9lzpi": {}}, "user_id": "X0VuFpZum7izxe7N"}, {"extra_attributes": {"PzjOa8E7wY76PxLv": {}, "9HBEUe89AwEw1HO4": {}, "FnKtx4XLKAmlDr19": {}}, "user_id": "uJ3nq6VerzVCcI8y"}, {"extra_attributes": {"3Cz0YqCKUh5RD9vN": {}, "Ap4jinFpnQ5xF9ww": {}, "bvMZyeDeRnVfPUa6": {}}, "user_id": "xVVBcq3wZpFIYeAg"}], "ticket_created_at": 38, "ticket_id": "9HcLJXJ7mpVI6eTY"}]}], "namespace": "AjdPlCiQQC35cj4K", "party_attributes": {"yOVgvnWbfRJtsB7c": {}, "UQZ2QUAxJrINPXpp": {}, "PNO3AfmXcgwC3IN6": {}}, "party_id": "tvKgLB9QmJIOq9dP", "queued_at": 38, "region": "WKt4sUmanYxM0UHZ", "server_name": "VNYzGMNIpWoSLkUr", "status": "fuf4U3WeYeA9t2EN", "ticket_id": "KKWrFtHIi1CMgKAO", "ticket_ids": ["G5iDcCR5PbCvDLil", "8wj9cKM3Ar6MF35h", "CER4nGmWGgTJfHlJ"], "updated_at": "1976-05-15T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "4tHGa4XfZcd9CVnG"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'qMX9FieeEssWEUl0' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 2, "userID": "uuoVdn9yVoSlKNch", "weight": 0.6716499390250769}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'HNL4X3LLaGPGdqLE' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "8SohhhuiTnJarYYk", "description": "HBDdSzBXdxapwhd5", "findMatchTimeoutSeconds": 70, "joinable": false, "max_delay_ms": 86, "region_expansion_range_ms": 93, "region_expansion_rate_ms": 56, "region_latency_initial_range_ms": 87, "region_latency_max_ms": 62, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 42, "min": 38, "name": "xLvPuWYvE3fsNy9Z"}, {"max": 25, "min": 83, "name": "pZ9X3fUSR1l9xLPB"}, {"max": 38, "min": 25, "name": "nlUnqxT1WsRNMZcA"}], [{"max": 15, "min": 78, "name": "hzC7MNa8vVe4MHX6"}, {"max": 53, "min": 74, "name": "gMep90AyyUJyAK5P"}, {"max": 90, "min": 9, "name": "MRMwdvl0hv6g62Gx"}], [{"max": 57, "min": 62, "name": "W2tQF5tkTjgJaMYv"}, {"max": 80, "min": 21, "name": "QOsDa4bkcgepqtxj"}, {"max": 3, "min": 6, "name": "rztee7QLTGAak7Ka"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 85}, "maxNumber": 46, "minNumber": 61, "playerMaxNumber": 26, "playerMinNumber": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 18, "min": 12, "name": "D2xnik42miteR5eQ"}, {"max": 54, "min": 18, "name": "e1rzmmgqBPRmd6mO"}, {"max": 12, "min": 30, "name": "OJpZm9yEYWNGMy2p"}], [{"max": 14, "min": 51, "name": "SGSUOK68eqGJtWf1"}, {"max": 57, "min": 3, "name": "nNbn0zaf7CaOSlHX"}, {"max": 36, "min": 96, "name": "KNqX9LM2IwEsdOGB"}], [{"max": 57, "min": 93, "name": "wnzDX8v3xgC1Ge9P"}, {"max": 6, "min": 10, "name": "bTTAJ2Gp1r0sVZ6L"}, {"max": 73, "min": 98, "name": "AOddIL2l3hPjNDKv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 82}, "duration": 34, "max_number": 48, "min_number": 18, "player_max_number": 42, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 81, "min": 83, "name": "fS79En3wYowBdkaZ"}, {"max": 45, "min": 51, "name": "PL9e4P01vxP8xj1L"}, {"max": 50, "min": 63, "name": "BtiQ272Uo9UBJWod"}], [{"max": 31, "min": 19, "name": "dwsX1jorcyR0x3Yi"}, {"max": 69, "min": 43, "name": "F8ITGPRQBCgIs1Q2"}, {"max": 23, "min": 23, "name": "zxl0yF5m77TTh4gU"}], [{"max": 29, "min": 58, "name": "j8u2WRcLiEtzVlnk"}, {"max": 11, "min": 23, "name": "nGanMazb8jvRWenU"}, {"max": 89, "min": 26, "name": "H48aJuALEcSqcE15"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 88}, "duration": 61, "max_number": 37, "min_number": 20, "player_max_number": 37, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 41, "min": 37, "name": "HdGmxncCEr0Kcgeq"}, {"max": 52, "min": 34, "name": "GbruNB72HHMkjzyB"}, {"max": 56, "min": 4, "name": "4UFKiaoV0VOem2yq"}], [{"max": 86, "min": 31, "name": "sMFxKybPkbuS6x9c"}, {"max": 78, "min": 72, "name": "ft5jGcMICPUYnfG6"}, {"max": 18, "min": 99, "name": "l9U4jReteIMgzISo"}], [{"max": 26, "min": 75, "name": "CsodJrhQW41q2Osp"}, {"max": 59, "min": 26, "name": "bt3Uta5I0uGcL1ko"}, {"max": 51, "min": 14, "name": "HjCH5olYLETRpABA"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 62}, "duration": 79, "max_number": 67, "min_number": 5, "player_max_number": 43, "player_min_number": 56}], "batch_size": 73, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 79, "flex_flat_step_range": 52, "flex_immunity_count": 91, "flex_range_max": 14, "flex_rate_ms": 61, "flex_step_max": 96, "force_authority_match": true, "initial_step_range": 18, "mmr_max": 83, "mmr_mean": 15, "mmr_min": 48, "mmr_std_dev": 74, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "DByhnoluO6ti0QP2", "criteria": "ssiJ66OzOj84O6tg", "duration": 30, "reference": 0.765514009558649}, {"attribute": "K3YVeOWs9mfVQh3j", "criteria": "LBtn9pxpE7BYtzB0", "duration": 56, "reference": 0.3876545348035543}, {"attribute": "wHbHig6IKWVZ77Ke", "criteria": "RWdECaFGzfZ2hxcJ", "duration": 64, "reference": 0.2845338301073488}], "match_options": {"options": [{"name": "3vk3IfAKEbqcNXSG", "type": "CCvNowNmdpcJgF88"}, {"name": "ySNq4Mj7mulP4tQ6", "type": "R1OqKVOTniBgLsNh"}, {"name": "dgQ0JWZjNRSzOTqc", "type": "VNX3ahvxw9gwwhTn"}]}, "matchingRules": [{"attribute": "jN6wKZGW4y3f0R9s", "criteria": "2kndhhZhwAiLsZs4", "reference": 0.25027997167835747}, {"attribute": "mLDIQch4IjDq9aT3", "criteria": "qZyI0rYsWucAkXsV", "reference": 0.5760743370630406}, {"attribute": "bXi7eRZa7WwIc895", "criteria": "ImqK6tVsaUq3stUh", "reference": 0.9198053899684495}], "sort_ticket": {"search_result": "random", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "random", "threshold": 18, "ticket_queue": "oldestTicketAge"}, {"search_result": "largestPartySize", "threshold": 97, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 37, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 5}, {"selection": "oldest", "threshold": 91}, {"selection": "newest", "threshold": 81}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 31, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' 'eaWytPfds1BYx0Ea' --login_with_auth "Bearer foo"
matchmaking-clean-all-mocks 'URydf8ZyyZeHAWGg' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-matches 'JUbUJRMbkcTglbU8' --login_with_auth "Bearer foo"
matchmaking-get-mock-matches-by-timestamp '{"timestamp_after": 69}' 'FyOjApNHBVfNOURc' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-tickets 'jY3YYT9oTynmfIuB' --login_with_auth "Bearer foo"
matchmaking-create-mock-tickets '{"attribute_name": "WgJTNFfM8M0IW4oe", "count": 74, "mmrMax": 0.09819263576356507, "mmrMean": 0.8151094176704622, "mmrMin": 0.6724825530411845, "mmrStdDev": 0.3441715080374992}' 'fn2Qt9iyq3Nyk8nc' --login_with_auth "Bearer foo"
matchmaking-bulk-create-mock-tickets '[{"first_ticket_created_at": 42, "party_attributes": {"LKiFQoLDvumfqrgS": {}, "fnx2h61X9dN1MGRX": {}, "BJ6mVV7JS9qjNLwv": {}}, "party_id": "I8JdiY3RRiLilmOG", "party_members": [{"extra_attributes": {"F6dLLIeIVIjMcdlb": {}, "dRXTGIrdNL5gJPqT": {}, "AjgqaTHf1ANTJ9Yk": {}}, "user_id": "997XkGOdC6ItxDT8"}, {"extra_attributes": {"p4n4XCFkD1AJLCws": {}, "zbZxuHSgDOK8bjoF": {}, "7bL2635KbtZTGJpq": {}}, "user_id": "gl2IzNXGTuQPIDpo"}, {"extra_attributes": {"r7t1aJLNNz6QIVC9": {}, "Mfuc8VOsnmnlVljd": {}, "WYmELe74p38vumnx": {}}, "user_id": "AnYBTxaTIz0jcgDI"}], "ticket_created_at": 8, "ticket_id": "Pkz96vd80msqIm5b"}, {"first_ticket_created_at": 41, "party_attributes": {"lNUBDShHD32vvL28": {}, "FPwTiXfLcxDC9Ynd": {}, "02mECIQhfIhHtADU": {}}, "party_id": "Q9zimQTQT95pFJUA", "party_members": [{"extra_attributes": {"JsyAfeKOufV4f15N": {}, "ohXu6opxQGRt6Pql": {}, "kL0diRhLC10ih2EQ": {}}, "user_id": "fY3XCv4hdOa6FdZh"}, {"extra_attributes": {"NMd1onFjGRbxtABP": {}, "XDmgNEJBhgGq5GID": {}, "hNC66szbCCf73IFb": {}}, "user_id": "RkPSSITz4TjCrJHX"}, {"extra_attributes": {"GXku2YVuOzhxHmnr": {}, "rV9ZGWrZ05sxe6A6": {}, "RpmKDebNkylbynkg": {}}, "user_id": "T9vayLLiizac7Ge6"}], "ticket_created_at": 52, "ticket_id": "iMlOuksQJCiRFiZW"}, {"first_ticket_created_at": 45, "party_attributes": {"WVco2LTo5ijlvDF8": {}, "qBWCQ9dLWYyS8zdh": {}, "MeBXH8x6HdVfZVDA": {}}, "party_id": "iU6iJOF7JKZFNk2N", "party_members": [{"extra_attributes": {"Ky59X8iOg2sVBiCo": {}, "eC5weXJl7PeiMH8z": {}, "8dVej8N2yv6VTnOK": {}}, "user_id": "7xAvM7tuL81lsR7x"}, {"extra_attributes": {"xSVp3Gd2TK0HzYvi": {}, "TgYmx82JVBRLPZ6I": {}, "z8tne5dbguBF6Gsv": {}}, "user_id": "vdl8jHz9x7XZIjU4"}, {"extra_attributes": {"IK9lOLaZaMphKCqT": {}, "q3EVheJjoEEXBLIx": {}, "GnNuhoJM3WWPvvCi": {}}, "user_id": "Cf33ViEdqQpoGkUW"}], "ticket_created_at": 82, "ticket_id": "LNfHRD3V15QaGGL4"}]' '6LuxJF3sbeqWBdQu' --login_with_auth "Bearer foo"
matchmaking-get-mock-tickets-by-timestamp '{"timestamp_after": 100}' 's5kgSZZNUHbIT9sz' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel 'ApmWJO5vzzXZj08a' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel '6K1XRVfriSpPFnZB' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["JZkDnEiyfa2LrnpZ", "xNnLRH36bqS2oFY7", "6PU1AziBOHEAj1cT"], "party_id": "3u6Zc2FbrTFznTgD", "user_id": "IwZIRWf6T3by2kYS"}' 'CdnFKLc0xcTjqjdc' 'EfU61OJYMnW49rWy' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'np1ck1vT90C6o86c' 'SRL9cgbUmulhe98o' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'aFKlQicdrxVhrtwS' 'd9QWVMYz7TU1Tsxs' 'ChSclSkb5aBi9K9z' --login_with_auth "Bearer foo"
matchmaking-get-stat-data 'yv6gFZXI5nXJ7hLi' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel '6HweweRmyo91dIn7' --login_with_auth "Bearer foo"
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
    '{"deployment": "QqXBDXJcrqKmXDwo", "description": "EV6tCdrxw1KOPhuv", "find_match_timeout_seconds": 69, "game_mode": "0KbNN7Ycl2JfmQpl", "joinable": true, "max_delay_ms": 45, "region_expansion_range_ms": 66, "region_expansion_rate_ms": 92, "region_latency_initial_range_ms": 19, "region_latency_max_ms": 30, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 97, "min": 1, "name": "Q4aebjfgGu472oWJ"}, {"max": 23, "min": 10, "name": "iydCOInVolsr6CHm"}, {"max": 19, "min": 1, "name": "763vLwtYEJTSiXjc"}], [{"max": 40, "min": 9, "name": "ZPkv90lyKSTWLxSF"}, {"max": 93, "min": 48, "name": "LpupEi5DbkVs3qFT"}, {"max": 17, "min": 86, "name": "1t530Wj1WfzIvc3V"}], [{"max": 24, "min": 90, "name": "lKKmVOaTS6xBbNrS"}, {"max": 96, "min": 11, "name": "AW2ak7ISDrBVg6Nu"}, {"max": 60, "min": 48, "name": "ZvPb1kuUfNfUDe4g"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 58, "role_flexing_second": 85}, "max_number": 95, "min_number": 69, "player_max_number": 30, "player_min_number": 62}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 62, "min": 0, "name": "xnKfV3869IN4V1Od"}, {"max": 14, "min": 67, "name": "H4GVU7Exlkmc4xYi"}, {"max": 77, "min": 30, "name": "jLyZrXr9Bhtzn8jA"}], [{"max": 6, "min": 96, "name": "Tn6xBhrciryLm67r"}, {"max": 22, "min": 58, "name": "adH5Y41SLjCPrFa0"}, {"max": 77, "min": 23, "name": "x3QcFo9gxOgvDc7x"}], [{"max": 79, "min": 86, "name": "rRKvw8ISP2WKmCRR"}, {"max": 87, "min": 56, "name": "qxnWR5sheLgsAF4c"}, {"max": 39, "min": 76, "name": "v5guycGiq9j2EyIk"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 10, "role_flexing_second": 56}, "duration": 77, "max_number": 98, "min_number": 61, "player_max_number": 58, "player_min_number": 32}, {"combination": {"alliances": [[{"max": 13, "min": 52, "name": "HnMOn8nc3gUZ8ZFy"}, {"max": 49, "min": 8, "name": "Er0KBXuJBqK4QtEy"}, {"max": 7, "min": 42, "name": "PWLPBYiR3UbJc1ZY"}], [{"max": 0, "min": 85, "name": "px7C477etqgfOJDU"}, {"max": 94, "min": 63, "name": "0uKAPrARya2IMlNi"}, {"max": 81, "min": 32, "name": "LWHAbCZixe2cQ6O3"}], [{"max": 68, "min": 22, "name": "kc0HjUcnkpU9oVzl"}, {"max": 27, "min": 21, "name": "MzSYoc4ZjiMY4H34"}, {"max": 57, "min": 43, "name": "6wVd8ipcKDwQeUWt"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 59}, "duration": 67, "max_number": 84, "min_number": 96, "player_max_number": 68, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 85, "min": 18, "name": "3FaepA3b3YJ9nJM6"}, {"max": 44, "min": 41, "name": "FPNP56l1AT6OLKmZ"}, {"max": 14, "min": 33, "name": "CZxxPPdPwOtEuWBS"}], [{"max": 83, "min": 71, "name": "2jJepUnEEgja2mIE"}, {"max": 33, "min": 22, "name": "5E5HleLoog4me2NB"}, {"max": 65, "min": 41, "name": "p62xlXvVcJerTPW0"}], [{"max": 56, "min": 86, "name": "qe9RDQMBSYAFLqp8"}, {"max": 84, "min": 61, "name": "F5hCcoukWpnbz4ys"}, {"max": 43, "min": 20, "name": "rIPRtvhQIyLarjaL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 65}, "duration": 93, "max_number": 60, "min_number": 51, "player_max_number": 37, "player_min_number": 53}], "batch_size": 84, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 50, "flex_flat_step_range": 22, "flex_immunity_count": 86, "flex_range_max": 90, "flex_rate_ms": 0, "flex_step_max": 42, "force_authority_match": false, "initial_step_range": 66, "mmr_max": 46, "mmr_mean": 75, "mmr_min": 40, "mmr_std_dev": 15, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexing_rule": [{"attribute": "GcA0h4G1LZ1HaX5U", "criteria": "BMbsF44VTsLDRzdq", "duration": 5, "reference": 0.8111665473591073}, {"attribute": "BF2g7TVtzYEHUodh", "criteria": "3iUfBthbepUCTWiZ", "duration": 69, "reference": 0.33487750601767485}, {"attribute": "qh7GAi4FEIu44u83", "criteria": "ZLRxYlYqlpq03BGd", "duration": 72, "reference": 0.605070502797791}], "match_options": {"options": [{"name": "0uzElixc023dIvDi", "type": "A0tQWlHwBcTtztx3"}, {"name": "VAl6tXFbnATCzUOI", "type": "zVcy9k3ie64Vnwa0"}, {"name": "ClGQJultJe32AiwK", "type": "adEoIVmprwPsa9YD"}]}, "matching_rule": [{"attribute": "92CX0rITajpwHITG", "criteria": "eHTnqRbzBB9ZFgJb", "reference": 0.6884230890494868}, {"attribute": "3Fj1umx4ItzkMJ7c", "criteria": "udf4r916GPrhn2et", "reference": 0.7724562038711369}, {"attribute": "IQvRkQJAtDUH9tx6", "criteria": "0AehGz1ermJYXsYg", "reference": 0.6003746313014168}], "rebalance_enable": false, "sort_ticket": {"search_result": "distance", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "random", "threshold": 11, "ticket_queue": "largestPartySize"}, {"search_result": "largestPartySize", "threshold": 54, "ticket_queue": "random"}, {"search_result": "none", "threshold": 95, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"lmU1unGKM0tgfeWy": {"alliance": {"combination": {"alliances": [[{"max": 0, "min": 25, "name": "bbwMI4gGmvK9gW59"}, {"max": 73, "min": 64, "name": "HzgNZUKsI5y0mR3z"}, {"max": 79, "min": 60, "name": "yTsftKqnsIJctAdx"}], [{"max": 49, "min": 84, "name": "ZVKHA9DkaSOWgtg8"}, {"max": 51, "min": 75, "name": "w8lHEbVDwBAqanOl"}, {"max": 38, "min": 6, "name": "PAiNjULsx4SnKNXL"}], [{"max": 78, "min": 20, "name": "UaDSwwQlnNRZJHBS"}, {"max": 57, "min": 13, "name": "4fZWEFIZs28Ff1kZ"}, {"max": 32, "min": 89, "name": "1Zktx3N7WNMYIfcD"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 3}, "max_number": 42, "min_number": 98, "player_max_number": 40, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 28, "min": 5, "name": "K34oA1keYXJvtggD"}, {"max": 6, "min": 98, "name": "XjbdjMBahFZZGMTc"}, {"max": 33, "min": 15, "name": "nWrIprOv0BJ9Sgl7"}], [{"max": 68, "min": 26, "name": "1sdH2RIJz1eI7Q5p"}, {"max": 41, "min": 80, "name": "9PutLf6IrvZoBGQb"}, {"max": 83, "min": 37, "name": "4S3rURGWUzPAE6Sd"}], [{"max": 97, "min": 10, "name": "4D5jftRl9rZmtQUv"}, {"max": 35, "min": 5, "name": "o8TWwXWsz9TVmdMK"}, {"max": 62, "min": 12, "name": "ohKzuMYDUTLBeCid"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 67}, "duration": 51, "max_number": 13, "min_number": 9, "player_max_number": 47, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 27, "min": 56, "name": "cXejmeZtzT0qj0lt"}, {"max": 38, "min": 25, "name": "qfiZrthVvyX0OCKD"}, {"max": 73, "min": 84, "name": "E3RMUddwSSgxCu8z"}], [{"max": 36, "min": 67, "name": "u1DhGAYOHR5BWa9V"}, {"max": 51, "min": 40, "name": "IkaQEl1iUProNB6h"}, {"max": 71, "min": 92, "name": "6IpGcToWgFvdRhG9"}], [{"max": 81, "min": 43, "name": "wV3zDuqVlVTypcYP"}, {"max": 74, "min": 13, "name": "8IxrSZuxWl0Je4fJ"}, {"max": 70, "min": 88, "name": "yFAm3DQht4JwnPS2"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 73}, "duration": 25, "max_number": 33, "min_number": 45, "player_max_number": 8, "player_min_number": 43}, {"combination": {"alliances": [[{"max": 35, "min": 17, "name": "obWMZGVL5KLTxahW"}, {"max": 23, "min": 16, "name": "S6XdBaKSLCgOOPXM"}, {"max": 91, "min": 36, "name": "TUh2dJ90yqHDNacl"}], [{"max": 50, "min": 64, "name": "XlbQ52FTHTCj6SEA"}, {"max": 51, "min": 3, "name": "T7TOpyiuvvQUm29I"}, {"max": 1, "min": 98, "name": "cq4XRLaA643nTMtX"}], [{"max": 90, "min": 49, "name": "Ayejnny0Ju13b6o5"}, {"max": 41, "min": 44, "name": "B2XM6IHy7EEvHyLm"}, {"max": 4, "min": 96, "name": "vrZZOdwe1x8RjU6B"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 73}, "duration": 10, "max_number": 71, "min_number": 63, "player_max_number": 67, "player_min_number": 17}], "name": "2sUBBq2SimQQoLbe"}, "5YOJvxGRxUzrTwag": {"alliance": {"combination": {"alliances": [[{"max": 70, "min": 34, "name": "7BMT1IZKTdNFVBQ1"}, {"max": 4, "min": 51, "name": "rBXAupATO8uXsqVp"}, {"max": 7, "min": 17, "name": "eqqsBVyONV0JRtoz"}], [{"max": 72, "min": 100, "name": "0jpliCFQ6WgJpGPi"}, {"max": 12, "min": 57, "name": "dc5VyC4qvWjVac1c"}, {"max": 87, "min": 82, "name": "vSxgTNIUzxDgBlIb"}], [{"max": 41, "min": 22, "name": "zm7DzJ20NFRJIhFX"}, {"max": 90, "min": 67, "name": "2dYprPmbpuptECGd"}, {"max": 5, "min": 96, "name": "dXC2Sesc6y68whNB"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 67}, "max_number": 17, "min_number": 58, "player_max_number": 33, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 11, "min": 61, "name": "W6rqGOQny4ij4ysY"}, {"max": 85, "min": 81, "name": "onb59gQffkNOmubx"}, {"max": 62, "min": 90, "name": "Jr2qEAuJbpZSrcbc"}], [{"max": 77, "min": 100, "name": "jwyKRxhkLe5zohg9"}, {"max": 39, "min": 25, "name": "utRQt28b6o3K0COF"}, {"max": 57, "min": 41, "name": "ExYMBb3ckvoaJYdM"}], [{"max": 34, "min": 74, "name": "Gegcg3eRvBZXN3cj"}, {"max": 72, "min": 53, "name": "mFWRJnj8xN7HDPTU"}, {"max": 62, "min": 48, "name": "DPN1Kb4UTPWDXTSb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 78}, "duration": 91, "max_number": 64, "min_number": 93, "player_max_number": 81, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 49, "min": 82, "name": "poOLl13j84P0Kqir"}, {"max": 72, "min": 54, "name": "PkMFtsnFfz8Ew0X8"}, {"max": 11, "min": 57, "name": "gmPGaHP5SVPvRLiD"}], [{"max": 17, "min": 37, "name": "mNHb6Lx8eq8SGNwE"}, {"max": 87, "min": 83, "name": "eRj17xGhaBKoUfiH"}, {"max": 19, "min": 67, "name": "UMRf2VJetWsokvx3"}], [{"max": 56, "min": 0, "name": "HuTEczr9KjQ3ttz8"}, {"max": 79, "min": 97, "name": "TBt1xk9IyssSA8nP"}, {"max": 80, "min": 85, "name": "StqPtQmQN6eKAGiZ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 11}, "duration": 36, "max_number": 40, "min_number": 37, "player_max_number": 93, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 56, "min": 89, "name": "PZ64j0HUONscofwY"}, {"max": 77, "min": 35, "name": "QcDvkaEIIPoJT83z"}, {"max": 62, "min": 7, "name": "GXmVBZLyrH9J7Boy"}], [{"max": 38, "min": 26, "name": "q9GA5DydC2D8UT6K"}, {"max": 82, "min": 39, "name": "c4VPDUR9ayazqXRq"}, {"max": 9, "min": 48, "name": "gIUicYXXzxsBFrUs"}], [{"max": 90, "min": 55, "name": "2txs4qrNARATn6KX"}, {"max": 83, "min": 94, "name": "utlYBbLhL8KXx25F"}, {"max": 11, "min": 88, "name": "y5RUzvMfTkPy0fGv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 47}, "duration": 77, "max_number": 100, "min_number": 76, "player_max_number": 98, "player_min_number": 38}], "name": "RK6UKk5ozrXA4HZH"}, "Nyq9odanhR1Zrm3t": {"alliance": {"combination": {"alliances": [[{"max": 14, "min": 1, "name": "UvV87yfkycLSVdle"}, {"max": 91, "min": 11, "name": "aAylsmLYe2phYOgT"}, {"max": 66, "min": 22, "name": "IKlJt3EP9kKwkENQ"}], [{"max": 79, "min": 97, "name": "ki8jvc3P8Gwjg3IO"}, {"max": 69, "min": 18, "name": "0SDHgYKqxJiFJdrm"}, {"max": 19, "min": 51, "name": "5vhzgsJwex7wq8ZP"}], [{"max": 22, "min": 79, "name": "XNaUNgdY2vfJuje5"}, {"max": 4, "min": 65, "name": "PnmGjTvYa5Pqx1K7"}, {"max": 33, "min": 16, "name": "cAoijBPAp6EPb988"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 80}, "max_number": 35, "min_number": 88, "player_max_number": 61, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 76, "min": 38, "name": "VpULjjiw3NeVG4DJ"}, {"max": 18, "min": 93, "name": "9DaMrc0WFgKjE945"}, {"max": 47, "min": 58, "name": "qUxKDc84OMIzvTSc"}], [{"max": 7, "min": 98, "name": "bKBsAyJMz4ILNDvh"}, {"max": 56, "min": 27, "name": "4Eoes9a6XaJeRbzT"}, {"max": 86, "min": 95, "name": "wD3jxF7vxRUY0ilr"}], [{"max": 81, "min": 32, "name": "oFT98SgtJd4Z5f8n"}, {"max": 11, "min": 1, "name": "dzOJDGCTHIOFjeXb"}, {"max": 38, "min": 92, "name": "d7r1SQw80JfMpPrS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 49}, "duration": 81, "max_number": 32, "min_number": 90, "player_max_number": 100, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 95, "min": 27, "name": "sq5lQo2jy29EJigq"}, {"max": 15, "min": 99, "name": "yVhURx1yPeczRpdk"}, {"max": 30, "min": 68, "name": "ZcXQpoTOxe8y1jor"}], [{"max": 81, "min": 12, "name": "sg9ZKYCKoISyXtHz"}, {"max": 30, "min": 60, "name": "WGdYohxMp3uOQIyb"}, {"max": 34, "min": 53, "name": "WfG9BJ6FVKlbYHtb"}], [{"max": 85, "min": 95, "name": "taxvagSlpGgVTF6V"}, {"max": 9, "min": 9, "name": "DAPOGBwweyFfXEOE"}, {"max": 54, "min": 69, "name": "Etbag82KgBgyCd5v"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 11}, "duration": 6, "max_number": 52, "min_number": 75, "player_max_number": 9, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 89, "min": 45, "name": "4DtNp129hzBw3xLU"}, {"max": 5, "min": 14, "name": "CEt0DzmkJq1sml5b"}, {"max": 71, "min": 39, "name": "u5KJ0ynxGBlacDCd"}], [{"max": 66, "min": 75, "name": "e8ATUqVxcSthrpnM"}, {"max": 96, "min": 87, "name": "BsnUfuQIcSbUt5UG"}, {"max": 21, "min": 54, "name": "InFGpuUsdtq4dOwN"}], [{"max": 62, "min": 35, "name": "SzCEW9dUVhZjLftC"}, {"max": 97, "min": 37, "name": "i9kIpqgrzpUkNOBW"}, {"max": 50, "min": 59, "name": "dXV0Fi02aFr8CDap"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 82}, "duration": 82, "max_number": 23, "min_number": 94, "player_max_number": 77, "player_min_number": 22}], "name": "qXQgvwD3PsKDJiWx"}}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "random", "threshold": 46}, {"selection": "newest", "threshold": 41}, {"selection": "random", "threshold": 36}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 60, "social_matchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
$PYTHON -m $MODULE 'matchmaking-get-match-pool-metric' \
    'owPgIGuetxFMqXCQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'MAqQ2ZRGzNtrThFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "9XU8mosluiHZJ7O8", "players": [{"results": [{"attribute": "sAQ32wj9uaDzsr9x", "value": 0.816740812323496}, {"attribute": "iWRuuzQJiLc1eI9w", "value": 0.8918745314214258}, {"attribute": "JEhxPGbEk7s7gw07", "value": 0.5110864484948101}], "user_id": "lounC3vJKBC7Swgo"}, {"results": [{"attribute": "ViPeIB4Ehy0Y5aSJ", "value": 0.7663001001139416}, {"attribute": "DginxAM77eY9C14F", "value": 0.02741947678817791}, {"attribute": "fiI2NPvl1kCY5bEo", "value": 0.16619270256919383}], "user_id": "xXxkWZbjf7GZxaos"}, {"results": [{"attribute": "sQmjo69wohJFyTNk", "value": 0.9280790176713387}, {"attribute": "FGUPhR4LEZvz3EjF", "value": 0.7004522744152711}, {"attribute": "7996Ug5m4axDV5uT", "value": 0.042252412466504574}], "user_id": "YsoahUrELQ1btjJO"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "qQMgZWAU6E92nHJz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "vw7tnYtGfv0EJyjB", "client_version": "u4EzwRjD7jmQJeFP", "deployment": "ghqamSc5y0X48eT7", "error_code": 79, "error_message": "B8HZUtVVaJCiLgKO", "game_mode": "wrSfWhT5B4Wedopz", "is_mock": "wSluBtRFPKThyGnb", "joinable": false, "match_id": "Eey0MkZwS6TYwNN3", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 96, "party_attributes": {"qfch4SqIV6LQPHla": {}, "eYl4csFq65cU66yJ": {}, "aj4ovoKWE4EW0sw8": {}}, "party_id": "v5peiuxoBJATauyD", "party_members": [{"extra_attributes": {"3XCXVMiyEvMf9yil": {}, "UEujk6oqYo1HQYTF": {}, "zwdOMdupwD4O3uNb": {}}, "user_id": "cIDcIyvZbOy1T4hf"}, {"extra_attributes": {"wkuVykH4RpfmjIXF": {}, "GZ5PKdbabJIkNnt9": {}, "P1Tkm08luh4dpPRM": {}}, "user_id": "DbUXBWTbpAogG2wl"}, {"extra_attributes": {"ZkLhuU5FI8NijFI0": {}, "GKwJ3vfXlsAMy2Zp": {}, "2UAGxHnmSxvkG9UR": {}}, "user_id": "5q9neoW6JBcGp9Rx"}], "ticket_created_at": 90, "ticket_id": "QaVjZF7Ax6115Kg9"}, {"first_ticket_created_at": 95, "party_attributes": {"9S7ivHEoLbUMM47f": {}, "1UreUpxEkXIbE1ET": {}, "zRJZKMavu4Ul2Iai": {}}, "party_id": "eEbPSE7TGkeHsYsW", "party_members": [{"extra_attributes": {"9oGBN1pYMBwbPZTl": {}, "MlUvFEiGprcNSQ9k": {}, "EeXBZ6FVrBzyhyho": {}}, "user_id": "S6a9oe0JaXFpff28"}, {"extra_attributes": {"uYbe4Cf2HEHvVevh": {}, "ISjbtBJUK5fE3Ouf": {}, "PSX3PdOU2V9yw94o": {}}, "user_id": "a8UJ34TIedV3HyoX"}, {"extra_attributes": {"4VnO2LpBU08wfnlH": {}, "BXFIqFUmgUSMM5au": {}, "8GJT0mkVPI6zUtf3": {}}, "user_id": "QaJPGrTNcXXTUIgg"}], "ticket_created_at": 29, "ticket_id": "IaKiHfoeorY7A1ot"}, {"first_ticket_created_at": 66, "party_attributes": {"H7r1ta3m7jK5pxe8": {}, "2pgFiAS6piIzmc8r": {}, "KrKEPGSAcong6eNE": {}}, "party_id": "RUf8kjci1Ctccv9G", "party_members": [{"extra_attributes": {"v4tOcbnuCqf0lm6W": {}, "BkIzjoSV31tvmMB6": {}, "jzrpRGESmooHiCV4": {}}, "user_id": "GUOnXpapXQGRakUb"}, {"extra_attributes": {"cG7PcR4eiU3Idi55": {}, "jNrGNT2VHTKuIT5F": {}, "wwHj0Ur5F2PWGTTD": {}}, "user_id": "81xhNP4t6kYBUjyX"}, {"extra_attributes": {"An3bWQF6QcAiJpXI": {}, "rgroixptZhckUTGk": {}, "cBOE4qMcH1Kyi8ZF": {}}, "user_id": "vGcV8DY0XOkDstxZ"}], "ticket_created_at": 6, "ticket_id": "YS4Kj7Yi2VvoQNW8"}]}, {"matching_parties": [{"first_ticket_created_at": 2, "party_attributes": {"c481dYdvGxJAMDRA": {}, "1LF7jdWlekFwO94V": {}, "BCV9qJhWva2FPBuj": {}}, "party_id": "X0geYCpGJM4sqsPN", "party_members": [{"extra_attributes": {"JMiZXXOFwmGWAvNF": {}, "0Z0GkwxUNYyNwGiK": {}, "rknH0Y5mrQgLC6D2": {}}, "user_id": "qsFiQHglUQMZi5Wj"}, {"extra_attributes": {"MZfOadpgegCUjTdi": {}, "1Ehr8OtqpNJ9R8Tu": {}, "Ny4ejmVA3vMCsGyP": {}}, "user_id": "d12B8QNUz0hFFNbH"}, {"extra_attributes": {"6j2W4roZM2UKAXEE": {}, "sL5D0oiFchQnVeq3": {}, "g2AB2WIRUQmauIY5": {}}, "user_id": "HXCZ0W4XmWP0HzSd"}], "ticket_created_at": 16, "ticket_id": "uBAldDSUS7Haa6un"}, {"first_ticket_created_at": 33, "party_attributes": {"bumu2QHLyZNuysyM": {}, "4OfCzdQCXMAWnf87": {}, "YPNOe9Eevf1fhMg1": {}}, "party_id": "E2k7QLFrVgtX7y0f", "party_members": [{"extra_attributes": {"POieDCow2zXyFFVp": {}, "M87yqEwEacQMTlqN": {}, "4LKkxJ5v3SBafnKN": {}}, "user_id": "iMPbFkFGA85W3HJk"}, {"extra_attributes": {"qgS2B37wwoPYOHiI": {}, "sxmsLBPBJuNLnWRr": {}, "tW870qD88ZcduZSe": {}}, "user_id": "7W20UZcDaiq0nEZ7"}, {"extra_attributes": {"PyhqFJkDClOsKmfs": {}, "gJdmzsDPsWh1k0cQ": {}, "08NG6dX2TZkil67k": {}}, "user_id": "RngoUa83ECh1gqPe"}], "ticket_created_at": 91, "ticket_id": "rOMZMgWkFN7Tpkx6"}, {"first_ticket_created_at": 66, "party_attributes": {"N2XTrFibRAhzzEWz": {}, "WlTY70qdgJRvpZrS": {}, "pWX3KEe2BjV00ReC": {}}, "party_id": "XFffjJJxlgjzIhpg", "party_members": [{"extra_attributes": {"OoIOD74V21HWDAfv": {}, "Xwdxbyp4HAPbBbNP": {}, "StVBUpKgOssFkz0F": {}}, "user_id": "36piDYXeHZ7FHls3"}, {"extra_attributes": {"nyvconqbHQqKLQKe": {}, "3xmj6s0GqsWncp5L": {}, "rqbiKudv9z75SzoC": {}}, "user_id": "V8ZMi2o1nR482D6g"}, {"extra_attributes": {"NClk9c87hosaPFC5": {}, "zBW3ZgVZCj9ObVGT": {}, "0Scwl4kNmCi15XTJ": {}}, "user_id": "TgCNNH7RtG5Xmo9Q"}], "ticket_created_at": 1, "ticket_id": "Wb07N17fkxZSc6Vb"}]}, {"matching_parties": [{"first_ticket_created_at": 63, "party_attributes": {"DNoMcOmbfJrCJQIj": {}, "1haAosKglqaCXE9y": {}, "tpIO8btO3OwNEGSW": {}}, "party_id": "5TaW4to7QCY2NGGv", "party_members": [{"extra_attributes": {"i9kg3rMIzNmhJTNQ": {}, "jKlwjfJ3TJ2xVpge": {}, "70WsLfgbZieRvJI5": {}}, "user_id": "sT9DH3DfLCv8q4Th"}, {"extra_attributes": {"mq09bBgPAYxrBE9j": {}, "lnTgtgW33wDwD9RK": {}, "vQX4yFQFdrRoM6Fo": {}}, "user_id": "qCYw7AlxO6qdFpc7"}, {"extra_attributes": {"1sSck3ggZWJlSlCQ": {}, "MDji329PfVrvMEPt": {}, "psSNcpK1QkB2Sy8W": {}}, "user_id": "w79LVeVskqeUB7RS"}], "ticket_created_at": 1, "ticket_id": "F9bqMj4ro5B19VE8"}, {"first_ticket_created_at": 6, "party_attributes": {"8c7OydVw0zCqoMZv": {}, "pIOO97DmQ5ZOzx6i": {}, "CJTu60IifzMhkk5P": {}}, "party_id": "xsjqbCKpMv2Yky9D", "party_members": [{"extra_attributes": {"YkD2sIllFtBtXJKG": {}, "3rqBmILhtWm8RQvR": {}, "UbUDSiefGEdLucrt": {}}, "user_id": "O2gCQD057DrDlgC2"}, {"extra_attributes": {"nzS9SiGUjVAw4v3q": {}, "6JRHcn7KaoCEkRdo": {}, "6qHYIZWnXqQ1oHFJ": {}}, "user_id": "9Q0vqsL9SomqWsGA"}, {"extra_attributes": {"76yxi0QzZWfmP2sx": {}, "0KO5bEJaPnAFjsod": {}, "yJQVVBrShGbIIuqK": {}}, "user_id": "8C403HgoXCR6XOMX"}], "ticket_created_at": 46, "ticket_id": "CQGPCxwEdkyuT3Mg"}, {"first_ticket_created_at": 51, "party_attributes": {"FclpDl5HsuracO5M": {}, "njnxD1OXkxShFVQT": {}, "RekLfjmy8zosRCRg": {}}, "party_id": "VwbrQKmb01yA7U7d", "party_members": [{"extra_attributes": {"GMjupZkZQY8CNyT4": {}, "k3DIbfT22G5NpE13": {}, "0YWSgxpKWtdtdtVW": {}}, "user_id": "9anENmxb9e7vXZV3"}, {"extra_attributes": {"ig8Jg5VByeI3ycMc": {}, "YYBixKJXCISQdwec": {}, "1m8BusV9tUh74KVo": {}}, "user_id": "6Xqjz2xUKLNWSmYy"}, {"extra_attributes": {"VvyelIJ8QgaLMqi8": {}, "36ULa7cfZl4VuY6r": {}, "sZyo6CBRRnoOikIx": {}}, "user_id": "XKKIR6kPmswm5TCA"}], "ticket_created_at": 96, "ticket_id": "bx7J3gNLIlTk3Bpc"}]}], "namespace": "lrk4hIRn0znIKzAE", "party_attributes": {"AHQpBOgHEP5l94s7": {}, "CbIJ7eHnVWOboMky": {}, "B7FTexsOZ0b2p3b6": {}}, "party_id": "3KrcwIcXMhGy83Xi", "queued_at": 40, "region": "9alq3hK1G4kKooSN", "server_name": "NUZuiynZ64IwncZP", "status": "k82GF3eTC0vzZUDj", "ticket_id": "9dzGgGVxo9OHgfHu", "ticket_ids": ["myfuBNisecYbcOpR", "45VDlvSc0Mr7ImwC", "wGqOf0bNs97KvKyj"], "updated_at": "1999-06-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "MqS7Dcmtfh50eObb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'rmgjhWK0x0ZidAJ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 58, "userID": "q6tEeUmU96FLEak0", "weight": 0.20683512645348834}' \
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
    'JqjRYldcTpdeCD9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "PRi4bAQL7VE2wL8Y", "description": "4JFVUdzA8bvXlDhG", "findMatchTimeoutSeconds": 55, "joinable": true, "max_delay_ms": 29, "region_expansion_range_ms": 10, "region_expansion_rate_ms": 35, "region_latency_initial_range_ms": 61, "region_latency_max_ms": 3, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 91, "min": 76, "name": "rSHrkoqv2mM6soMa"}, {"max": 94, "min": 61, "name": "vQq2a9YdFNtRVSO0"}, {"max": 19, "min": 59, "name": "s0hG9xmSnzd7zgUx"}], [{"max": 54, "min": 30, "name": "5JZ5z6gujpFzlPsp"}, {"max": 87, "min": 24, "name": "D9IRIpDDubntPCFx"}, {"max": 10, "min": 11, "name": "eoW2NdSWzOXjO1NQ"}], [{"max": 95, "min": 48, "name": "qWHBW78XREZCiTNA"}, {"max": 47, "min": 34, "name": "NCKKXu1bqI2M5PmX"}, {"max": 12, "min": 75, "name": "6sZ6rjnkH4ExObpp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 100}, "maxNumber": 79, "minNumber": 28, "playerMaxNumber": 12, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 25, "min": 26, "name": "GFy0eUoOBd90h9ED"}, {"max": 33, "min": 11, "name": "STOfoNewWjwMWDKE"}, {"max": 40, "min": 8, "name": "6JhbJ0fwTDaq6b5R"}], [{"max": 32, "min": 80, "name": "MwhWPtndriXU9loO"}, {"max": 47, "min": 63, "name": "pmEuwDVc12r0DVUG"}, {"max": 13, "min": 92, "name": "GHkapTCafFMdvYiC"}], [{"max": 57, "min": 56, "name": "uzUUwyI6Vtd4v9k4"}, {"max": 11, "min": 6, "name": "v3kMiuQ3DhsKLxjt"}, {"max": 9, "min": 38, "name": "py56eW1kmb15QeIQ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 78}, "duration": 33, "max_number": 51, "min_number": 73, "player_max_number": 52, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 61, "min": 30, "name": "SvELgBe6dboSdhkB"}, {"max": 52, "min": 20, "name": "AzPkt1efGJeJaxyH"}, {"max": 68, "min": 42, "name": "xDb06ZFy3uglSp2U"}], [{"max": 49, "min": 3, "name": "vF2uLXWilRD7HD6L"}, {"max": 59, "min": 78, "name": "gdFxRGj00RT6Lvcn"}, {"max": 66, "min": 14, "name": "MJbJIYLssMvy9gkf"}], [{"max": 94, "min": 15, "name": "MRrXVRcAVRDX6gmD"}, {"max": 10, "min": 8, "name": "NfPGYYSTunMgt3C8"}, {"max": 15, "min": 46, "name": "EguCqlMHiQN3HWJw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 71}, "duration": 94, "max_number": 66, "min_number": 39, "player_max_number": 12, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 78, "min": 86, "name": "jTU226l07jPlcYaq"}, {"max": 34, "min": 79, "name": "ohglzO8AEl6A9sh2"}, {"max": 49, "min": 91, "name": "2ur2ccp7R7OqPqIj"}], [{"max": 90, "min": 50, "name": "4i0N9ytb3c8pVZ8G"}, {"max": 23, "min": 10, "name": "U8962e6gtn5pUARJ"}, {"max": 79, "min": 29, "name": "1T8QwMNOAzXmyHEV"}], [{"max": 13, "min": 13, "name": "jooiDnc1NUb51lEg"}, {"max": 95, "min": 38, "name": "wQ9tkWaMOH47CAT7"}, {"max": 5, "min": 58, "name": "BP0918JaEBQBP766"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 56}, "duration": 29, "max_number": 89, "min_number": 87, "player_max_number": 14, "player_min_number": 6}], "batch_size": 18, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 6, "flex_flat_step_range": 84, "flex_immunity_count": 67, "flex_range_max": 67, "flex_rate_ms": 38, "flex_step_max": 75, "force_authority_match": true, "initial_step_range": 87, "mmr_max": 47, "mmr_mean": 39, "mmr_min": 95, "mmr_std_dev": 73, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "wF7RnP1oK3c4RVfj", "criteria": "B0zi3XrYZUiN24ol", "duration": 68, "reference": 0.26207888249409017}, {"attribute": "qbalgizL97ycJV5Y", "criteria": "qE2myQzl7X9fHr6W", "duration": 44, "reference": 0.04321114300104678}, {"attribute": "6VSfE9nbE2PMv12Z", "criteria": "SRJkujxbCu1HFaj6", "duration": 97, "reference": 0.20440286674759467}], "match_options": {"options": [{"name": "vsEzLPnnGsnfmBer", "type": "p84qjwzWpCF1vyam"}, {"name": "jsEzwtLPxK1os4qR", "type": "8LaQzEb39sZTdFfC"}, {"name": "8x5aHLsXHlm1RJTT", "type": "y9JrNz1K5M1qgFdd"}]}, "matchingRules": [{"attribute": "YvifGHawNx6yhniE", "criteria": "HLbEQKc0aUvrKXDI", "reference": 0.14670193182352365}, {"attribute": "YC4df9qswSlpCI8D", "criteria": "hjlxUyrs3OSesE5p", "reference": 0.8517951237356307}, {"attribute": "DwUj2HKUvPYUcQBx", "criteria": "MSdOOsn2Nd8Jpa19", "reference": 0.5172466175873631}], "sort_ticket": {"search_result": "random", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 71, "ticket_queue": "random"}, {"search_result": "distance", "threshold": 7, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 61, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "newest", "threshold": 49}, {"selection": "random", "threshold": 47}, {"selection": "pivot", "threshold": 30}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 26, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    '2SrEdN2tmGuX6r0g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
$PYTHON -m $MODULE 'matchmaking-clean-all-mocks' \
    'BVUUeKKlPKtE6gnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
$PYTHON -m $MODULE 'matchmaking-get-all-mock-matches' \
    'xmkmCWbs5qugklBU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-matches-by-timestamp' \
    '{"timestamp_after": 92}' \
    'ZmzCWGI1cIQcPWAS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
$PYTHON -m $MODULE 'matchmaking-get-all-mock-tickets' \
    'hIhieSKUf3zKbyQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
$PYTHON -m $MODULE 'matchmaking-create-mock-tickets' \
    '{"attribute_name": "2vQTYX1xsth28NZZ", "count": 13, "mmrMax": 0.7427228860248918, "mmrMean": 0.18790067580436054, "mmrMin": 0.328743550101665, "mmrStdDev": 0.10274162173927481}' \
    'IAknXcSaVYcAYp7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
$PYTHON -m $MODULE 'matchmaking-bulk-create-mock-tickets' \
    '[{"first_ticket_created_at": 91, "party_attributes": {"9JrK6Or2xx7rLwrP": {}, "oWiywnxuDLLuIaSx": {}, "oloIH1gBCWVFrvls": {}}, "party_id": "0ZwosKhDlLfTKxpV", "party_members": [{"extra_attributes": {"OXvGSrdkqddI3ezq": {}, "u6FB0sL2xt6fX9j7": {}, "rhZCAlDlVKBsLZiB": {}}, "user_id": "RXszE7CL1cQCSoqH"}, {"extra_attributes": {"vH7g63cOx6yrIw37": {}, "pKOLrF5i3gr3Cc4M": {}, "2O7NrTQO7KLdZDGw": {}}, "user_id": "qx7T3l1ut2oyolli"}, {"extra_attributes": {"YsTJUmpscwLcUml3": {}, "KuoMKh7tprnacA34": {}, "xmIOjFLgKR4LjEWh": {}}, "user_id": "OScvtQ92iD02YMvE"}], "ticket_created_at": 95, "ticket_id": "PjpSAlZwFGpea5Ob"}, {"first_ticket_created_at": 55, "party_attributes": {"bYCRexPekTsQxMTf": {}, "aSot7aohFYy4VxwH": {}, "IJ9gzxqAw4vBGQAe": {}}, "party_id": "h0VTiTP4PSrXUS6j", "party_members": [{"extra_attributes": {"YI9lsQFD43Df5qUZ": {}, "OFzpFd6b5Jc5TETH": {}, "cup8GG0VCMTFJ6sv": {}}, "user_id": "Tyo9RHget5hzB52B"}, {"extra_attributes": {"DFopxUwkMuSqQnKz": {}, "DgDAtqE3kuybwTQF": {}, "YEJjIYwqfSRy8GgV": {}}, "user_id": "k77fd1GS5YkyhAiA"}, {"extra_attributes": {"ItnWUmD225fp1egs": {}, "x3ErheNwqd5pricl": {}, "NNqLyrlzrJ4QHbfn": {}}, "user_id": "AdtkujxHff7n1yaN"}], "ticket_created_at": 58, "ticket_id": "JKpqmgvUTr8XAtpO"}, {"first_ticket_created_at": 33, "party_attributes": {"CbOn46W2B2uPQLrt": {}, "2t6bVpCgKvPXSDuf": {}, "mKh783cV54JsVBRB": {}}, "party_id": "0rY0xfWddACyHSmo", "party_members": [{"extra_attributes": {"4KX9TPO3K1k5ZM8b": {}, "tmGsgXNXbpqxh76A": {}, "f5JSwjw2fE2g6jXV": {}}, "user_id": "7oai2oDm9FaP0HJ9"}, {"extra_attributes": {"8tE4UyoQg0b0sGOk": {}, "zxVt15LKmkQ7YBhs": {}, "OuJ0ypkkt2G4eFh2": {}}, "user_id": "YNsdoxpLTBM9Q8t8"}, {"extra_attributes": {"29Ido1JyveSRiBq2": {}, "3kyH9jQbHWkcVk0X": {}, "28GS54vl7gIKBc7O": {}}, "user_id": "YTylFRAJKySnC0cf"}], "ticket_created_at": 84, "ticket_id": "b85nmpdN26BY5YI0"}]' \
    'jeO2zMDSy4kyqyKg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-tickets-by-timestamp' \
    '{"timestamp_after": 37}' \
    'zswAGpXqQxctuVaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'PJGAHEZmuQrZ8GaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    '4OZ2nDodm4TNs8mA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["j6IKSYFdJwgZsRPO", "zwuDSdGl1A2vaNeD", "iSqTfmAVg50kOdJa"], "party_id": "gEmTuaxlxgywkbdO", "user_id": "syxX1tfW488oYUT4"}' \
    'jyCVJ0V8obTlGVTh' \
    'z4bm41oIcV33yjPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'ibDjfF7JkjCVpZKM' \
    'xkFkBtXMU6KRIm5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'BoIi99ctgFXasxp5' \
    'h780ktjQw2yXzaQW' \
    'aF2PqUfbpMpRl6xR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
$PYTHON -m $MODULE 'matchmaking-get-stat-data' \
    'yV19cborUHeCpqnZ' \
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
    '5NW623WWn2ZJY3Qv' \
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
