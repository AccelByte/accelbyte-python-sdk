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
matchmaking-create-channel-handler '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "twYCA9kPI6LZrkq6", "description": "Dc09nIW0Oaiw9B0D", "find_match_timeout_seconds": 9, "game_mode": "ktQG0h5JAav5kRa6", "joinable": false, "max_delay_ms": 29, "region_expansion_range_ms": 51, "region_expansion_rate_ms": 31, "region_latency_initial_range_ms": 56, "region_latency_max_ms": 72, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 24, "min": 68, "name": "8SAMTwE6I56IaRDB"}, {"max": 2, "min": 49, "name": "gorQeFbQ1g7qbPng"}, {"max": 95, "min": 31, "name": "NB1vRodwpzS6DaDp"}], [{"max": 44, "min": 73, "name": "N7ZQVqGj6oDLjWjk"}, {"max": 21, "min": 69, "name": "aXlFcDtgOjchIua5"}, {"max": 40, "min": 4, "name": "WEIC32ogW7olvbTg"}], [{"max": 36, "min": 58, "name": "hRTcPiSuL0Sly6XM"}, {"max": 50, "min": 83, "name": "E3cwyALczNIicXm7"}, {"max": 0, "min": 100, "name": "gSrjJW2OQNOs1PXh"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 17}, "max_number": 84, "min_number": 89, "player_max_number": 16, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 57, "name": "7oFgx4c8OumKtPDK"}, {"max": 74, "min": 62, "name": "DXn7Z4U68su8Xfql"}, {"max": 34, "min": 63, "name": "NiTvB6SdAdIhUDrw"}], [{"max": 29, "min": 39, "name": "Z5MecdKi5r6QEa1y"}, {"max": 38, "min": 9, "name": "LEzth6mXhzkzWkFe"}, {"max": 7, "min": 90, "name": "dSpHt0P7MIIR7Cky"}], [{"max": 66, "min": 40, "name": "6C7duuyZ0GhDogqr"}, {"max": 16, "min": 51, "name": "BRd8lDR6qVNPRZYd"}, {"max": 65, "min": 90, "name": "LIAjGGJddVCvu9vx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 22}, "duration": 76, "max_number": 75, "min_number": 66, "player_max_number": 79, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 91, "min": 70, "name": "0lyuI9a2I9u6Vpbs"}, {"max": 47, "min": 21, "name": "5w8hqUI06UpOXGSL"}, {"max": 25, "min": 96, "name": "CVuHOPlLlkvR8sKg"}], [{"max": 28, "min": 47, "name": "uRkgghGoYupD391C"}, {"max": 49, "min": 33, "name": "D6SCwGrncqmLtjQH"}, {"max": 54, "min": 25, "name": "f8TgoNm03VLisV6z"}], [{"max": 46, "min": 97, "name": "Puo3td6TC6I3lMjG"}, {"max": 91, "min": 39, "name": "WN2laRlxfcjHfYak"}, {"max": 95, "min": 3, "name": "CTqGkE7wcWfDslpJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 40}, "duration": 55, "max_number": 77, "min_number": 85, "player_max_number": 88, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 18, "min": 50, "name": "ZMdjxcBZufQxGiHP"}, {"max": 24, "min": 86, "name": "lG4cYEzfTD1ZBm3M"}, {"max": 33, "min": 84, "name": "HcUmLZZbSqb8RwNm"}], [{"max": 27, "min": 59, "name": "9HrNQy4uZAAiE0mi"}, {"max": 39, "min": 91, "name": "9RGCCHYzUOcEdscK"}, {"max": 69, "min": 13, "name": "PEqgA8yu7Vk6Jt4Y"}], [{"max": 25, "min": 16, "name": "os9Jcdos4fYcTVU6"}, {"max": 90, "min": 25, "name": "Bt0zYoMcHyCUEXlA"}, {"max": 44, "min": 77, "name": "xJMdalwSyliWMNW5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 33}, "duration": 39, "max_number": 79, "min_number": 23, "player_max_number": 56, "player_min_number": 98}], "batch_size": 68, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 16, "flex_flat_step_range": 72, "flex_immunity_count": 58, "flex_range_max": 61, "flex_rate_ms": 92, "flex_step_max": 70, "force_authority_match": false, "initial_step_range": 60, "mmr_max": 3, "mmr_mean": 86, "mmr_min": 99, "mmr_std_dev": 86, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "lNmqRBaAkLnvxkT1", "criteria": "X68cmDc3fxU8MyKr", "duration": 88, "reference": 0.8452748898931911}, {"attribute": "v52Dlym6puQ23xoJ", "criteria": "8aeCnaLpUKp44YUD", "duration": 20, "reference": 0.24185924236642597}, {"attribute": "WvXa3bMrXsDr6kIL", "criteria": "sSSyDdmykmoPYgc2", "duration": 76, "reference": 0.01667587390248748}], "match_options": {"options": [{"name": "N9oCMNqq98SjTvhZ", "type": "NkSQ70D0H6BXksUC"}, {"name": "9b6i5lZC9xv32e8c", "type": "5csSovoqsZNBdte9"}, {"name": "NDUPVJf6c2Z0QZxf", "type": "gPubTDIHrvqAThuw"}]}, "matching_rule": [{"attribute": "jRHpKKTlmVr9XuoJ", "criteria": "bRFQSKVPHbn4Xxtu", "reference": 0.9639977895854788}, {"attribute": "LQRENjEEztx1WsYS", "criteria": "iZqan0nSBJroav91", "reference": 0.5171230937144093}, {"attribute": "XlvPG6bFYReVHQip", "criteria": "cCx9Zw5D2L7vIYhG", "reference": 0.5235086363368513}], "rebalance_enable": false, "sort_ticket": {"search_result": "oldestTicketAge", "ticket_queue": "random"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 87, "ticket_queue": "none"}, {"search_result": "none", "threshold": 68, "ticket_queue": "random"}, {"search_result": "random", "threshold": 81, "ticket_queue": "distance"}], "sub_game_modes": {"e4mhgo5QB65lSAiY": {"alliance": {"combination": {"alliances": [[{"max": 27, "min": 31, "name": "NjkfZrQvGgbLdLsF"}, {"max": 51, "min": 74, "name": "HkBMr1yrOMlNFSrU"}, {"max": 63, "min": 18, "name": "f7Gc26SaiGVkydwY"}], [{"max": 99, "min": 5, "name": "QG26yUZNmTBcvrbY"}, {"max": 59, "min": 60, "name": "wZtxFHyPLtI8ilby"}, {"max": 60, "min": 5, "name": "PUIj88cekdqCt81P"}], [{"max": 68, "min": 21, "name": "dNzDmeIP6rOvDz9K"}, {"max": 83, "min": 25, "name": "sb392k6YmJFfRByj"}, {"max": 24, "min": 56, "name": "a9LJE8HoRS1X2PFA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 22}, "max_number": 47, "min_number": 59, "player_max_number": 51, "player_min_number": 26}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 68, "min": 57, "name": "PxB1UskYs4Yw20DO"}, {"max": 34, "min": 92, "name": "OBSC2DKHRuPMMWH8"}, {"max": 25, "min": 4, "name": "qRRbceJ5i0EeDxOg"}], [{"max": 55, "min": 8, "name": "nhhqElIaDml48wdN"}, {"max": 65, "min": 93, "name": "LTm5T50x9WT0GfH2"}, {"max": 36, "min": 41, "name": "tOa4EXsXzOXQAk4m"}], [{"max": 33, "min": 40, "name": "rxzTtuLl4XlbGL8Q"}, {"max": 84, "min": 60, "name": "xtjzm8y2wNhmwoYZ"}, {"max": 50, "min": 59, "name": "I4EFZKBcYrCEAE7W"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 25}, "duration": 15, "max_number": 48, "min_number": 46, "player_max_number": 70, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 34, "min": 77, "name": "31A806DJgas4b6z3"}, {"max": 77, "min": 42, "name": "NUj7fdgLA84Z8YYk"}, {"max": 58, "min": 88, "name": "pnduEEQlULdJz4mn"}], [{"max": 88, "min": 30, "name": "BkMNxvvKgAT8mJrY"}, {"max": 33, "min": 70, "name": "6hRkloqxM3gpwxcf"}, {"max": 79, "min": 18, "name": "y9XzjjI5YbsKoADk"}], [{"max": 52, "min": 37, "name": "JEN2VHzih3bit0VW"}, {"max": 28, "min": 16, "name": "3CO39PXDNxtXgeO3"}, {"max": 64, "min": 83, "name": "gkXhjDzaQY3snn2Z"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 85, "role_flexing_second": 55}, "duration": 61, "max_number": 4, "min_number": 79, "player_max_number": 65, "player_min_number": 80}, {"combination": {"alliances": [[{"max": 8, "min": 54, "name": "P43e5dC9XIBudfZg"}, {"max": 35, "min": 1, "name": "bHDIDm4hMzF4Txod"}, {"max": 8, "min": 39, "name": "nSrUTvfqU0bfoMm5"}], [{"max": 5, "min": 20, "name": "TtFWbotQyXJRcQWs"}, {"max": 25, "min": 44, "name": "qPNs92epxk0i8Vxs"}, {"max": 82, "min": 57, "name": "ereSvf9699mCEHTh"}], [{"max": 95, "min": 88, "name": "JkETAsSp7gh4TeUT"}, {"max": 20, "min": 3, "name": "OkAYfJB8AT9t4Tv2"}, {"max": 73, "min": 91, "name": "Y2QD3oD5fLCr3OOl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 47}, "duration": 58, "max_number": 68, "min_number": 64, "player_max_number": 67, "player_min_number": 3}], "name": "uYnGzpipNDigNJma"}, "1MbqqZtfNWql4nmw": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 21, "name": "ft4gqkNNlWkD9eOz"}, {"max": 17, "min": 49, "name": "RFOn0jJLHC9LxhvN"}, {"max": 82, "min": 94, "name": "ww3HICQLfl7MUBG7"}], [{"max": 34, "min": 25, "name": "tPu64yAtURKLRkb7"}, {"max": 84, "min": 69, "name": "TF6oQAXVG7tnsZg5"}, {"max": 86, "min": 16, "name": "gXjvyGJPN4eXbJE5"}], [{"max": 97, "min": 75, "name": "s2GcyomQoIXimBJe"}, {"max": 16, "min": 89, "name": "yxlNsjUgxBkF6wFP"}, {"max": 29, "min": 91, "name": "JeQediogEhhM2rIi"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 75}, "max_number": 68, "min_number": 43, "player_max_number": 96, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 86, "name": "rDzZSKscfOcYu3dp"}, {"max": 59, "min": 22, "name": "ROYqUiGKXVFCmpo6"}, {"max": 38, "min": 0, "name": "PwVOEDSJsEK5QpNh"}], [{"max": 24, "min": 25, "name": "I2iS5EpGhhvXYck0"}, {"max": 41, "min": 32, "name": "QM0NBMA9ORxpzwLR"}, {"max": 2, "min": 54, "name": "u1bNCtX7W40V6Do5"}], [{"max": 37, "min": 67, "name": "YadCCFrHHC3DpZxk"}, {"max": 37, "min": 35, "name": "QDXuNFviMarv8mnf"}, {"max": 69, "min": 89, "name": "K8CCmE2lPnsbD3SG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 25}, "duration": 23, "max_number": 47, "min_number": 79, "player_max_number": 42, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 96, "min": 0, "name": "ccE536ugBp3HBvep"}, {"max": 28, "min": 41, "name": "DCjgyJlXe36mgWjL"}, {"max": 11, "min": 64, "name": "09xbnGezKsDwG2om"}], [{"max": 83, "min": 89, "name": "5tVg8JqU0jZpjvsu"}, {"max": 13, "min": 10, "name": "AOS7u8RiWyerCSa8"}, {"max": 91, "min": 56, "name": "RgwsAj1ik1jglaDX"}], [{"max": 93, "min": 12, "name": "vKCWwNTAhd2wrS0u"}, {"max": 84, "min": 40, "name": "djhdinpng5BLy8wb"}, {"max": 15, "min": 31, "name": "MssAHjapIkY9Rf4w"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 65}, "duration": 81, "max_number": 87, "min_number": 89, "player_max_number": 2, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 27, "min": 6, "name": "bCtmKy8M9zVrjfGX"}, {"max": 28, "min": 38, "name": "qAQUoY1GjlIIk0iK"}, {"max": 29, "min": 59, "name": "TTS1j02o7JjTXAQN"}], [{"max": 34, "min": 6, "name": "ccLjMXJRk0eaKQDO"}, {"max": 74, "min": 48, "name": "vrTefglSs6g4iY9u"}, {"max": 44, "min": 0, "name": "aCNYIWekp18lOC3m"}], [{"max": 81, "min": 78, "name": "qF7Bl0LcghVHfPEs"}, {"max": 32, "min": 57, "name": "xwhRON0bc1eMbEIj"}, {"max": 29, "min": 64, "name": "wLqc3ecjXJbZDKKo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 60}, "duration": 31, "max_number": 50, "min_number": 6, "player_max_number": 26, "player_min_number": 39}], "name": "pai0rYaT5hOPjaf3"}, "H0tYighU0VUfcYHJ": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 63, "name": "BfAKSiPW3VgsZXiR"}, {"max": 93, "min": 59, "name": "ej52WKi6tArAURt9"}, {"max": 32, "min": 64, "name": "lCSVq8PdH6hJPUAc"}], [{"max": 61, "min": 90, "name": "uAXI66bQ71w0deoV"}, {"max": 88, "min": 77, "name": "i6BqPg4xr0lCancU"}, {"max": 51, "min": 66, "name": "vSZIPkhSgORcz5S5"}], [{"max": 56, "min": 50, "name": "vmgBLxh4ijFnE3Ta"}, {"max": 26, "min": 79, "name": "9qSZ7PC6f6QkmZXE"}, {"max": 24, "min": 7, "name": "W9YfRSse6AAz3S4c"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 87}, "max_number": 57, "min_number": 75, "player_max_number": 89, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 24, "name": "PYuG6XqP6oo7G73z"}, {"max": 6, "min": 9, "name": "xTgOfnwIdlNa29fD"}, {"max": 77, "min": 15, "name": "h741IslKHzGlLKWU"}], [{"max": 40, "min": 68, "name": "DQs61OQAoxyyQpRW"}, {"max": 59, "min": 80, "name": "iiPDGQhNPEwiJCf2"}, {"max": 40, "min": 73, "name": "nkY6Mca5afj12K2I"}], [{"max": 51, "min": 22, "name": "rBvvWm4udE0OXudX"}, {"max": 13, "min": 22, "name": "Nne8kJATwlc6esUp"}, {"max": 98, "min": 91, "name": "6xnZ5Jrzzjrcaug6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 97}, "duration": 75, "max_number": 67, "min_number": 28, "player_max_number": 0, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 21, "min": 100, "name": "noed9DHhLOqQGhCU"}, {"max": 35, "min": 21, "name": "iTrjyEgarAdNJOIG"}, {"max": 97, "min": 38, "name": "I6tRbRcrEveMdAdi"}], [{"max": 85, "min": 94, "name": "KDUVSC00PYeDcagg"}, {"max": 18, "min": 70, "name": "nxnFIna3yddcbsPh"}, {"max": 8, "min": 84, "name": "TH26IUJNvYuGRUvp"}], [{"max": 1, "min": 69, "name": "A3PrIfapq5AAeMe4"}, {"max": 76, "min": 26, "name": "3mDWORBVXTIIJM9X"}, {"max": 38, "min": 1, "name": "YIIZxiXNMR9BgaWc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 39}, "duration": 96, "max_number": 66, "min_number": 56, "player_max_number": 27, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 25, "min": 50, "name": "yo5JJTUVmb8GEXFT"}, {"max": 24, "min": 54, "name": "EMEsFzYqwgK1Np5n"}, {"max": 30, "min": 7, "name": "dqpLm7FhJBNXzAFd"}], [{"max": 84, "min": 81, "name": "Khqf6kiTdSGv2LFj"}, {"max": 54, "min": 47, "name": "KY7CbgsWqFWZX7kP"}, {"max": 56, "min": 84, "name": "om8F9GLLTG8phc3n"}], [{"max": 65, "min": 16, "name": "MbAG9YI89hmguB8F"}, {"max": 83, "min": 93, "name": "WGRaoQomSJC4DdrK"}, {"max": 64, "min": 39, "name": "7SUQPLG59e0k5ZtX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 74}, "duration": 46, "max_number": 98, "min_number": 85, "player_max_number": 8, "player_min_number": 32}], "name": "MK6MbGIVIu8vvwLc"}}, "ticket_flexing_selection": "pivot", "ticket_flexing_selections": [{"selection": "random", "threshold": 41}, {"selection": "oldest", "threshold": 30}, {"selection": "newest", "threshold": 93}], "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 39, "social_matchmaking": false, "sub_gamemode_selection": "random", "ticket_observability_enable": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-get-match-pool-metric 'rQzP4zvtdxdbZUpd' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler '6FJtHJ1pyVwyKQLY' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "6FEO65Rb3z7CYLM8", "players": [{"results": [{"attribute": "IlsHqffnrfsGlfPa", "value": 0.833825142019673}, {"attribute": "KBwa3Ddb60ufPpzw", "value": 0.1480328759912779}, {"attribute": "1QGIFmlVf4jvapse", "value": 0.49876013250941786}], "user_id": "9LN9bvhOrHflIOd6"}, {"results": [{"attribute": "X3viLvtEk4mTIpUA", "value": 0.9849798872218339}, {"attribute": "gxo8SV38nEhoXmM2", "value": 0.7877075516628383}, {"attribute": "7l6jHMA2rG3nakop", "value": 0.43467633965292096}], "user_id": "ywelu01nryEJ0Nqo"}, {"results": [{"attribute": "Tow0qiOiC4j0iktm", "value": 0.8491578603681991}, {"attribute": "ZPLkLOsp0LZ5njN8", "value": 0.949860147176814}, {"attribute": "Hl8kUXzt6bSc6bWv", "value": 0.10634055433237155}], "user_id": "pVyW9dD1kOmvrAej"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "cq2LgkQuaS7RBx3v"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "im02jBOxrZDyvpcL", "client_version": "YOWA8NjxOnaEok4n", "deployment": "OOCzfsflhjbngJOU", "error_code": 27, "error_message": "8paOJtxqMPpcVfRw", "game_mode": "Nj547fH0XrKEDpEY", "is_mock": "8VnocGAjci0V3tBf", "joinable": false, "match_id": "J3sWCqQpQ2FbKPFM", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 50, "party_attributes": {"ljhZ2jxLRX3z46OC": {}, "aGBeMfPlNos4yBRj": {}, "rERHEonAZR8GmEu0": {}}, "party_id": "q1p6QCyY6vSkVFWd", "party_members": [{"extra_attributes": {"sbYuVEGVxYheR3j5": {}, "mNZ6vwv7K8Asvt1j": {}, "1Rx59hesNWy2NvZ8": {}}, "user_id": "5DDKDAF8KDsBZOuY"}, {"extra_attributes": {"QJ03BAHZ7c53q7ak": {}, "Mpcmnnx6RVBrop9v": {}, "7aZK3h65hbN15zfQ": {}}, "user_id": "SfQrtfF3TQN0OcND"}, {"extra_attributes": {"Lr36vzohZyjMQAg5": {}, "mPYhrLTyU8OhgfY9": {}, "JQYGF4bYXEcENx9x": {}}, "user_id": "ZlAchob44lONDDwM"}], "ticket_created_at": 44, "ticket_id": "jfIGaffoflEIByYq"}, {"first_ticket_created_at": 8, "party_attributes": {"6xG2mXEQdbzIVy8a": {}, "lncV7vWgSHdfo07U": {}, "ctPErqxyMyOK06Mq": {}}, "party_id": "QBErxgjVBycvU4Pb", "party_members": [{"extra_attributes": {"mRDcrg0DjQjBECXv": {}, "ea7H1m2lJFRZ3Zpr": {}, "Z60zMjhTHeh94TSe": {}}, "user_id": "nE5hCFkIf5weqZ18"}, {"extra_attributes": {"MH57l2Zsrh90ETtY": {}, "mGukz3MnlrjcHp6B": {}, "8Vj7rXFgDnDkdZ9b": {}}, "user_id": "pjb1tdA3QhjCMW64"}, {"extra_attributes": {"f4XhIjSoTB2NMKte": {}, "zapPr2QEPx3zTxBG": {}, "tEJIYppuUSsKoHw2": {}}, "user_id": "hyd12uSE7BEv3aev"}], "ticket_created_at": 33, "ticket_id": "UGKSZ4GcLkt4pK32"}, {"first_ticket_created_at": 37, "party_attributes": {"1BpWoJBaqdg2FHcu": {}, "nsS1lnaO2m9vqjhb": {}, "eK2qN8g6x2PyYDo5": {}}, "party_id": "R3hLiD5sf5y1JsxJ", "party_members": [{"extra_attributes": {"NGmyt0SQDUDoWBZV": {}, "GLlkUetzCAWc9x1a": {}, "MjgGim51T107XIZR": {}}, "user_id": "Z7tZdIs0xf4czdt7"}, {"extra_attributes": {"zqmSKxOEQlVcx6Gq": {}, "sBq8vdhWVnuYLgpZ": {}, "ehK0G2nmyuViB9kR": {}}, "user_id": "TcSQdTnNYGeAfYFG"}, {"extra_attributes": {"3wSkHKufBdS3ZOok": {}, "ZB4cXnAXyuGz6Llx": {}, "Hv8SwyagYvDJ3w3U": {}}, "user_id": "NgIGj2jZtEYT8sIP"}], "ticket_created_at": 92, "ticket_id": "S1fUfKmihDbmu8eP"}]}, {"matching_parties": [{"first_ticket_created_at": 99, "party_attributes": {"xCOWMpyh9pMsQgb6": {}, "4ELbzDMwyo4nIRys": {}, "QdbufXjYnSoIFeou": {}}, "party_id": "C2m38kXrDZWlGVE9", "party_members": [{"extra_attributes": {"sJ4NpUtKp6M9I6nE": {}, "wnZhsjwJeGwaPSDM": {}, "Zz95OYKiqaZD63xe": {}}, "user_id": "5rruJVfLGea0Ztlz"}, {"extra_attributes": {"UcuHAXz0UV31MfuG": {}, "aXsAuGsZaSHevO0T": {}, "QNEI3kfabxJWWSI1": {}}, "user_id": "ECUo1NPpeFhUztXD"}, {"extra_attributes": {"gB7n4C97uAPP8PAT": {}, "LpUpxeJlsBJT6Hh3": {}, "OMjAjq2mK8lbSEEe": {}}, "user_id": "lxnb5QxWG2HFnZlA"}], "ticket_created_at": 80, "ticket_id": "HKWW4fI1IQcoBQEL"}, {"first_ticket_created_at": 5, "party_attributes": {"rYQue84dwmbwFEnA": {}, "ZaWsQJtRYoagRJK5": {}, "PX9UcOvhPyE11TRT": {}}, "party_id": "2SKseoe8VLie0LBa", "party_members": [{"extra_attributes": {"36KNzjf005CXNGeh": {}, "Q2aTjTDfKFDXC7eG": {}, "L5YhJDWh9YWqc0qg": {}}, "user_id": "V6d9yOfIMLds2DbP"}, {"extra_attributes": {"caoMdtRLTmSvTkQQ": {}, "gB7exYvmHMxr5hPC": {}, "JJztJBg0tTJg46Ie": {}}, "user_id": "wOXE2AkCh3QIZsUf"}, {"extra_attributes": {"8lGFXcmwTERHclOd": {}, "xIwqejxe18rNdb8O": {}, "tq6j1mqUav7k05HA": {}}, "user_id": "QltnSojV4jT65ycl"}], "ticket_created_at": 54, "ticket_id": "2FtAz0vJjFIYWOaN"}, {"first_ticket_created_at": 8, "party_attributes": {"RvXfZ6rvgvEY3Hht": {}, "1SwqTsKKKo37NHDO": {}, "Qe91Ps3ztUIV0dS6": {}}, "party_id": "hIH9c4VfkyrwpuXx", "party_members": [{"extra_attributes": {"baERbfgPmi0eHkt1": {}, "mr9EOIFg0dnWIYN2": {}, "NVL70Iw157g00jr9": {}}, "user_id": "b8MuYmmeKTmBNvGY"}, {"extra_attributes": {"xEQdf3ewoGGoY7xm": {}, "FNAmjDDCvs78mcMd": {}, "iS76YApGJ9ufwLYk": {}}, "user_id": "qIgLuZS6hsQryiEt"}, {"extra_attributes": {"OAbpeUNf26UqkCfg": {}, "CUYBn2xaOBdPF0Jm": {}, "X8qwU1cTuHHPB5S3": {}}, "user_id": "DvPRCzBrVUxmDOj3"}], "ticket_created_at": 5, "ticket_id": "Gs9yxahld1pO0Gyf"}]}, {"matching_parties": [{"first_ticket_created_at": 10, "party_attributes": {"PO3COyMvczgEpzZ3": {}, "FbtxfhcRC7IVYa6i": {}, "Z5uFRYNn3SHiWxF0": {}}, "party_id": "YbuU5ar5qTLWUCy0", "party_members": [{"extra_attributes": {"Afgc050XIZRW491e": {}, "94mQjVOOBnIWhunE": {}, "lqZUodp3IhtCSHy1": {}}, "user_id": "ei1fIrPvfHnRN06E"}, {"extra_attributes": {"jRwEQlNapJRfk4f9": {}, "Zcw1pEHAyNFxcVTK": {}, "uAQTGh5BxjWOozGo": {}}, "user_id": "DtsUuYo5p8ED5QZA"}, {"extra_attributes": {"ufwNa8lzfjv9oYMX": {}, "MjlVHY1AHwF3vGoa": {}, "v7MK0PcLnEkcokKw": {}}, "user_id": "cQ0baDT9OyJ2h23G"}], "ticket_created_at": 95, "ticket_id": "4qlkiFAamqvZI2Kw"}, {"first_ticket_created_at": 20, "party_attributes": {"OrVSnLocLVVYamQc": {}, "4wcG5nDBLJoJHbiQ": {}, "5duE5p4cfs2E41cK": {}}, "party_id": "8QTwiIAvxSvNDlmM", "party_members": [{"extra_attributes": {"5nQFMGzs7fzjgyc4": {}, "4mEh9tRk8knYSV30": {}, "lnroQehMDli6t9un": {}}, "user_id": "QLYXxm09wpGAbpEm"}, {"extra_attributes": {"DY9vLh3u6EDsUmrV": {}, "6kH4OotKwG3UC6XC": {}, "nnZxF8CmQr17W65b": {}}, "user_id": "r34rBBN9tU6TDm5G"}, {"extra_attributes": {"loFSKWM1eym5ydC6": {}, "p25xCWTqUOYZENJ1": {}, "QHZQxPRXH7uxBJEE": {}}, "user_id": "CQE1li3Bg7Jxc9pU"}], "ticket_created_at": 27, "ticket_id": "tcknrgidKupvXO6a"}, {"first_ticket_created_at": 18, "party_attributes": {"TiCO1NDBvQvRPnAz": {}, "4VzW0CpoBCbyJsF5": {}, "IjF1c0W338HS6CBg": {}}, "party_id": "VRyihYNZ84CVhziX", "party_members": [{"extra_attributes": {"V8HwSmvcvcDKF19y": {}, "VRafCjOuSYht83Ad": {}, "vBaagTiRJ8daGTVX": {}}, "user_id": "3Bb7jlz5IfHgKjI9"}, {"extra_attributes": {"mwJSrN8jkIykR2zb": {}, "aI6PD7fEscShnGUG": {}, "UtV9GJ279GDbLNwj": {}}, "user_id": "m3FK0nnX2poMfZ1h"}, {"extra_attributes": {"DHtbh4HtMlFgvh2D": {}, "p2SoiIPp1yvfAHS0": {}, "VgLu11A3HTovFi4t": {}}, "user_id": "PAGfleyCA6jEtcqs"}], "ticket_created_at": 27, "ticket_id": "HcLJXJ7mpVI6eTYA"}]}], "namespace": "jdPlCiQQC35cj4Ky", "party_attributes": {"OVgvnWbfRJtsB7cU": {}, "QZ2QUAxJrINPXppP": {}, "NO3AfmXcgwC3IN6t": {}}, "party_id": "vKgLB9QmJIOq9dP5", "queued_at": 38, "region": "WKt4sUmanYxM0UHZ", "server_name": "VNYzGMNIpWoSLkUr", "status": "fuf4U3WeYeA9t2EN", "ticket_id": "KKWrFtHIi1CMgKAO", "ticket_ids": ["G5iDcCR5PbCvDLil", "8wj9cKM3Ar6MF35h", "CER4nGmWGgTJfHlJ"], "updated_at": "1976-05-15T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "4tHGa4XfZcd9CVnG"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'qMX9FieeEssWEUl0' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 2, "userID": "uuoVdn9yVoSlKNch", "weight": 0.6716499390250769}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'HNL4X3LLaGPGdqLE' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"blocked_player_option": "blockedPlayerCanMatchOnDifferentTeam", "deployment": "SohhhuiTnJarYYkH", "description": "BDdSzBXdxapwhd5I", "findMatchTimeoutSeconds": 86, "joinable": true, "max_delay_ms": 87, "region_expansion_range_ms": 62, "region_expansion_rate_ms": 42, "region_latency_initial_range_ms": 38, "region_latency_max_ms": 47, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 42, "min": 77, "name": "fmfxKYB4LM6H6QXm"}, {"max": 32, "min": 14, "name": "Z9X3fUSR1l9xLPBs"}, {"max": 25, "min": 26, "name": "AUrD9L1IiD6MlcEP"}], [{"max": 15, "min": 78, "name": "hzC7MNa8vVe4MHX6"}, {"max": 53, "min": 74, "name": "gMep90AyyUJyAK5P"}, {"max": 90, "min": 9, "name": "MRMwdvl0hv6g62Gx"}], [{"max": 57, "min": 62, "name": "W2tQF5tkTjgJaMYv"}, {"max": 80, "min": 21, "name": "QOsDa4bkcgepqtxj"}, {"max": 3, "min": 6, "name": "rztee7QLTGAak7Ka"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 85}, "maxNumber": 46, "minNumber": 61, "playerMaxNumber": 26, "playerMinNumber": 76}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 18, "min": 12, "name": "D2xnik42miteR5eQ"}, {"max": 54, "min": 18, "name": "e1rzmmgqBPRmd6mO"}, {"max": 12, "min": 30, "name": "OJpZm9yEYWNGMy2p"}], [{"max": 14, "min": 51, "name": "SGSUOK68eqGJtWf1"}, {"max": 57, "min": 3, "name": "nNbn0zaf7CaOSlHX"}, {"max": 36, "min": 96, "name": "KNqX9LM2IwEsdOGB"}], [{"max": 57, "min": 93, "name": "wnzDX8v3xgC1Ge9P"}, {"max": 6, "min": 10, "name": "bTTAJ2Gp1r0sVZ6L"}, {"max": 73, "min": 98, "name": "AOddIL2l3hPjNDKv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 64, "role_flexing_second": 82}, "duration": 34, "max_number": 48, "min_number": 18, "player_max_number": 42, "player_min_number": 36}, {"combination": {"alliances": [[{"max": 81, "min": 83, "name": "fS79En3wYowBdkaZ"}, {"max": 45, "min": 51, "name": "PL9e4P01vxP8xj1L"}, {"max": 50, "min": 63, "name": "BtiQ272Uo9UBJWod"}], [{"max": 31, "min": 19, "name": "dwsX1jorcyR0x3Yi"}, {"max": 69, "min": 43, "name": "F8ITGPRQBCgIs1Q2"}, {"max": 23, "min": 23, "name": "zxl0yF5m77TTh4gU"}], [{"max": 29, "min": 58, "name": "j8u2WRcLiEtzVlnk"}, {"max": 11, "min": 23, "name": "nGanMazb8jvRWenU"}, {"max": 89, "min": 26, "name": "H48aJuALEcSqcE15"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 88}, "duration": 61, "max_number": 37, "min_number": 20, "player_max_number": 37, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 41, "min": 37, "name": "HdGmxncCEr0Kcgeq"}, {"max": 52, "min": 34, "name": "GbruNB72HHMkjzyB"}, {"max": 56, "min": 4, "name": "4UFKiaoV0VOem2yq"}], [{"max": 86, "min": 31, "name": "sMFxKybPkbuS6x9c"}, {"max": 78, "min": 72, "name": "ft5jGcMICPUYnfG6"}, {"max": 18, "min": 99, "name": "l9U4jReteIMgzISo"}], [{"max": 26, "min": 75, "name": "CsodJrhQW41q2Osp"}, {"max": 59, "min": 26, "name": "bt3Uta5I0uGcL1ko"}, {"max": 51, "min": 14, "name": "HjCH5olYLETRpABA"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 62}, "duration": 79, "max_number": 67, "min_number": 5, "player_max_number": 43, "player_min_number": 56}], "batch_size": 73, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 79, "flex_flat_step_range": 52, "flex_immunity_count": 91, "flex_range_max": 14, "flex_rate_ms": 61, "flex_step_max": 96, "force_authority_match": true, "initial_step_range": 18, "mmr_max": 83, "mmr_mean": 15, "mmr_min": 48, "mmr_std_dev": 74, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "DByhnoluO6ti0QP2", "criteria": "ssiJ66OzOj84O6tg", "duration": 30, "reference": 0.765514009558649}, {"attribute": "K3YVeOWs9mfVQh3j", "criteria": "LBtn9pxpE7BYtzB0", "duration": 56, "reference": 0.3876545348035543}, {"attribute": "wHbHig6IKWVZ77Ke", "criteria": "RWdECaFGzfZ2hxcJ", "duration": 64, "reference": 0.2845338301073488}], "match_options": {"options": [{"name": "3vk3IfAKEbqcNXSG", "type": "CCvNowNmdpcJgF88"}, {"name": "ySNq4Mj7mulP4tQ6", "type": "R1OqKVOTniBgLsNh"}, {"name": "dgQ0JWZjNRSzOTqc", "type": "VNX3ahvxw9gwwhTn"}]}, "matchingRules": [{"attribute": "jN6wKZGW4y3f0R9s", "criteria": "2kndhhZhwAiLsZs4", "reference": 0.25027997167835747}, {"attribute": "mLDIQch4IjDq9aT3", "criteria": "qZyI0rYsWucAkXsV", "reference": 0.5760743370630406}, {"attribute": "bXi7eRZa7WwIc895", "criteria": "ImqK6tVsaUq3stUh", "reference": 0.9198053899684495}], "sort_ticket": {"search_result": "random", "ticket_queue": "none"}, "sort_tickets": [{"search_result": "random", "threshold": 18, "ticket_queue": "oldestTicketAge"}, {"search_result": "largestPartySize", "threshold": 97, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 37, "ticket_queue": "oldestTicketAge"}], "sub_game_modes": {}, "ticket_flexing_selection": "oldest", "ticket_flexing_selections": [{"selection": "newest", "threshold": 5}, {"selection": "oldest", "threshold": 91}, {"selection": "newest", "threshold": 81}], "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 31, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' 'mfOL0QQpxsuD8PGq' --login_with_auth "Bearer foo"
matchmaking-clean-all-mocks 'ku59eFJrOXyDYz9v' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-matches 'MUOPG0iHDT8QbF7g' --login_with_auth "Bearer foo"
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
    '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "x21pdX2QSPAd9sxo", "description": "LnWGP1PafIjLX8ce", "find_match_timeout_seconds": 41, "game_mode": "KbNN7Ycl2JfmQplv", "joinable": false, "max_delay_ms": 30, "region_expansion_range_ms": 97, "region_expansion_rate_ms": 1, "region_latency_initial_range_ms": 88, "region_latency_max_ms": 67, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 21, "min": 0, "name": "4ktF5wnJDg9Q3WXi"}, {"max": 51, "min": 24, "name": "dCOInVolsr6CHmj7"}, {"max": 10, "min": 37, "name": "vLwtYEJTSiXjcY5Z"}], [{"max": 85, "min": 29, "name": "kv90lyKSTWLxSFZ0"}, {"max": 76, "min": 18, "name": "pupEi5DbkVs3qFTi"}, {"max": 11, "min": 39, "name": "KofwXOIZZQAJza84"}], [{"max": 23, "min": 76, "name": "rA3XUGud4tVjmxEf"}, {"max": 100, "min": 43, "name": "ak7ISDrBVg6NuDZv"}, {"max": 85, "min": 26, "name": "b1kuUfNfUDe4g7q6"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 0}, "max_number": 48, "min_number": 33, "player_max_number": 28, "player_min_number": 3}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 75, "min": 51, "name": "fV3869IN4V1OdhH4"}, {"max": 66, "min": 98, "name": "JXDpA1tIC45C0oaG"}, {"max": 30, "min": 43, "name": "rXr9Bhtzn8jAdTn6"}], [{"max": 48, "min": 60, "name": "BhrciryLm67rkadH"}, {"max": 28, "min": 22, "name": "41SLjCPrFa05Xl5T"}, {"max": 86, "min": 5, "name": "C5GODS44bmm7jPdK"}], [{"max": 77, "min": 43, "name": "ddfdsUqjXVzW1Qqx"}, {"max": 27, "min": 0, "name": "WR5sheLgsAF4ctv5"}, {"max": 13, "min": 88, "name": "uycGiq9j2EyIknfL"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 13}, "duration": 52, "max_number": 69, "min_number": 13, "player_max_number": 27, "player_min_number": 83}, {"combination": {"alliances": [[{"max": 79, "min": 74, "name": "On8nc3gUZ8ZFyyEr"}, {"max": 89, "min": 75, "name": "yt4udIv22M18uux9"}, {"max": 47, "min": 84, "name": "BomQFPFWy5cwNPI6"}], [{"max": 1, "min": 58, "name": "Fo0MVwDZCIXFNEL3"}, {"max": 42, "min": 53, "name": "WVRz3V7YbJM3bNLW"}, {"max": 69, "min": 33, "name": "AbCZixe2cQ6O30lp"}], [{"max": 52, "min": 5, "name": "HjUcnkpU9oVzl2kB"}, {"max": 42, "min": 90, "name": "LFXIeCEKZUTz3GvC"}, {"max": 53, "min": 98, "name": "Z5j24acYHbrryHB6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 52, "role_flexing_second": 64}, "duration": 79, "max_number": 1, "min_number": 82, "player_max_number": 8, "player_min_number": 31}, {"combination": {"alliances": [[{"max": 55, "min": 54, "name": "fmOS5mQNyRPZFPNP"}, {"max": 45, "min": 24, "name": "5K5MU2qmbeqaVemI"}, {"max": 81, "min": 6, "name": "dClpF7OvlBIEgjse"}], [{"max": 27, "min": 21, "name": "EEgja2mIE2kLTnJw"}, {"max": 4, "min": 78, "name": "5XmkCuL5W4tKt6G3"}, {"max": 20, "min": 44, "name": "9LYdG7xVPqBqe9RD"}], [{"max": 87, "min": 79, "name": "ArAxnKBfBfDlrQQu"}, {"max": 55, "min": 42, "name": "c10DjjwMv4vrIPRt"}, {"max": 43, "min": 14, "name": "u2HEG0qfKegvFTD1"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 84, "role_flexing_second": 56}, "duration": 50, "max_number": 22, "min_number": 86, "player_max_number": 90, "player_min_number": 0}], "batch_size": 42, "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 66, "flex_flat_step_range": 46, "flex_immunity_count": 75, "flex_range_max": 40, "flex_rate_ms": 15, "flex_step_max": 1, "force_authority_match": false, "initial_step_range": 77, "mmr_max": 99, "mmr_mean": 24, "mmr_min": 66, "mmr_std_dev": 73, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "JMSnJIIgsAVmaGYx", "criteria": "UX1B9oVuzG2CnYX2", "duration": 2, "reference": 0.4510332287948483}, {"attribute": "F2g7TVtzYEHUodh3", "criteria": "iUfBthbepUCTWiZ1", "duration": 42, "reference": 0.01599865600901118}, {"attribute": "ILQruAuYyJLYGqMv", "criteria": "824ouSgkpK70uJmU", "duration": 77, "reference": 0.16533715168503538}], "match_options": {"options": [{"name": "4oEogFVGR71rJOBy", "type": "6lsj1AKGBjnHmaAu"}, {"name": "4YK87DYAWWcbcbGW", "type": "mKgE8CZ4AELr5lra"}, {"name": "a5v5P5Cj8hgFsqHC", "type": "9h5JPiMEtgKuiGTY"}]}, "matching_rule": [{"attribute": "gwWv5XldL6rOVGcR", "criteria": "An51rVAQSxp4qTB5", "reference": 0.9149638033809999}, {"attribute": "mKA3V9DKlCeZ7mLY", "criteria": "sHooOIaxIpb1cIOJ", "reference": 0.6630888100644369}, {"attribute": "S3lJ80YJ41U4ooQ9", "criteria": "80ywmg1pWpWit1QC", "reference": 0.962113849458574}], "rebalance_enable": false, "sort_ticket": {"search_result": "distance", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "random", "threshold": 11, "ticket_queue": "largestPartySize"}, {"search_result": "largestPartySize", "threshold": 54, "ticket_queue": "random"}, {"search_result": "none", "threshold": 95, "ticket_queue": "largestPartySize"}], "sub_game_modes": {"lmU1unGKM0tgfeWy": {"alliance": {"combination": {"alliances": [[{"max": 0, "min": 25, "name": "bbwMI4gGmvK9gW59"}, {"max": 73, "min": 64, "name": "HzgNZUKsI5y0mR3z"}, {"max": 79, "min": 60, "name": "yTsftKqnsIJctAdx"}], [{"max": 49, "min": 84, "name": "ZVKHA9DkaSOWgtg8"}, {"max": 51, "min": 75, "name": "w8lHEbVDwBAqanOl"}, {"max": 38, "min": 6, "name": "PAiNjULsx4SnKNXL"}], [{"max": 78, "min": 20, "name": "UaDSwwQlnNRZJHBS"}, {"max": 57, "min": 13, "name": "4fZWEFIZs28Ff1kZ"}, {"max": 32, "min": 89, "name": "1Zktx3N7WNMYIfcD"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 77, "role_flexing_second": 3}, "max_number": 42, "min_number": 98, "player_max_number": 40, "player_min_number": 31}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 28, "min": 5, "name": "K34oA1keYXJvtggD"}, {"max": 6, "min": 98, "name": "XjbdjMBahFZZGMTc"}, {"max": 33, "min": 15, "name": "nWrIprOv0BJ9Sgl7"}], [{"max": 68, "min": 26, "name": "1sdH2RIJz1eI7Q5p"}, {"max": 41, "min": 80, "name": "9PutLf6IrvZoBGQb"}, {"max": 83, "min": 37, "name": "4S3rURGWUzPAE6Sd"}], [{"max": 97, "min": 10, "name": "4D5jftRl9rZmtQUv"}, {"max": 35, "min": 5, "name": "o8TWwXWsz9TVmdMK"}, {"max": 62, "min": 12, "name": "ohKzuMYDUTLBeCid"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 42, "role_flexing_second": 67}, "duration": 51, "max_number": 13, "min_number": 9, "player_max_number": 47, "player_min_number": 47}, {"combination": {"alliances": [[{"max": 27, "min": 56, "name": "cXejmeZtzT0qj0lt"}, {"max": 38, "min": 25, "name": "qfiZrthVvyX0OCKD"}, {"max": 73, "min": 84, "name": "E3RMUddwSSgxCu8z"}], [{"max": 36, "min": 67, "name": "u1DhGAYOHR5BWa9V"}, {"max": 51, "min": 40, "name": "IkaQEl1iUProNB6h"}, {"max": 71, "min": 92, "name": "6IpGcToWgFvdRhG9"}], [{"max": 81, "min": 43, "name": "wV3zDuqVlVTypcYP"}, {"max": 74, "min": 13, "name": "8IxrSZuxWl0Je4fJ"}, {"max": 70, "min": 88, "name": "yFAm3DQht4JwnPS2"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 65, "role_flexing_second": 73}, "duration": 25, "max_number": 33, "min_number": 45, "player_max_number": 8, "player_min_number": 43}, {"combination": {"alliances": [[{"max": 35, "min": 17, "name": "obWMZGVL5KLTxahW"}, {"max": 23, "min": 16, "name": "S6XdBaKSLCgOOPXM"}, {"max": 91, "min": 36, "name": "TUh2dJ90yqHDNacl"}], [{"max": 50, "min": 64, "name": "XlbQ52FTHTCj6SEA"}, {"max": 51, "min": 3, "name": "T7TOpyiuvvQUm29I"}, {"max": 1, "min": 98, "name": "cq4XRLaA643nTMtX"}], [{"max": 90, "min": 49, "name": "Ayejnny0Ju13b6o5"}, {"max": 41, "min": 44, "name": "B2XM6IHy7EEvHyLm"}, {"max": 4, "min": 96, "name": "vrZZOdwe1x8RjU6B"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 33, "role_flexing_second": 73}, "duration": 10, "max_number": 71, "min_number": 63, "player_max_number": 67, "player_min_number": 17}], "name": "2sUBBq2SimQQoLbe"}, "5YOJvxGRxUzrTwag": {"alliance": {"combination": {"alliances": [[{"max": 70, "min": 34, "name": "7BMT1IZKTdNFVBQ1"}, {"max": 4, "min": 51, "name": "rBXAupATO8uXsqVp"}, {"max": 7, "min": 17, "name": "eqqsBVyONV0JRtoz"}], [{"max": 72, "min": 100, "name": "0jpliCFQ6WgJpGPi"}, {"max": 12, "min": 57, "name": "dc5VyC4qvWjVac1c"}, {"max": 87, "min": 82, "name": "vSxgTNIUzxDgBlIb"}], [{"max": 41, "min": 22, "name": "zm7DzJ20NFRJIhFX"}, {"max": 90, "min": 67, "name": "2dYprPmbpuptECGd"}, {"max": 5, "min": 96, "name": "dXC2Sesc6y68whNB"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 7, "role_flexing_second": 67}, "max_number": 17, "min_number": 58, "player_max_number": 33, "player_min_number": 14}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 11, "min": 61, "name": "W6rqGOQny4ij4ysY"}, {"max": 85, "min": 81, "name": "onb59gQffkNOmubx"}, {"max": 62, "min": 90, "name": "Jr2qEAuJbpZSrcbc"}], [{"max": 77, "min": 100, "name": "jwyKRxhkLe5zohg9"}, {"max": 39, "min": 25, "name": "utRQt28b6o3K0COF"}, {"max": 57, "min": 41, "name": "ExYMBb3ckvoaJYdM"}], [{"max": 34, "min": 74, "name": "Gegcg3eRvBZXN3cj"}, {"max": 72, "min": 53, "name": "mFWRJnj8xN7HDPTU"}, {"max": 62, "min": 48, "name": "DPN1Kb4UTPWDXTSb"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 45, "role_flexing_second": 78}, "duration": 91, "max_number": 64, "min_number": 93, "player_max_number": 81, "player_min_number": 37}, {"combination": {"alliances": [[{"max": 49, "min": 82, "name": "poOLl13j84P0Kqir"}, {"max": 72, "min": 54, "name": "PkMFtsnFfz8Ew0X8"}, {"max": 11, "min": 57, "name": "gmPGaHP5SVPvRLiD"}], [{"max": 17, "min": 37, "name": "mNHb6Lx8eq8SGNwE"}, {"max": 87, "min": 83, "name": "eRj17xGhaBKoUfiH"}, {"max": 19, "min": 67, "name": "UMRf2VJetWsokvx3"}], [{"max": 56, "min": 0, "name": "HuTEczr9KjQ3ttz8"}, {"max": 79, "min": 97, "name": "TBt1xk9IyssSA8nP"}, {"max": 80, "min": 85, "name": "StqPtQmQN6eKAGiZ"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 37, "role_flexing_second": 11}, "duration": 36, "max_number": 40, "min_number": 37, "player_max_number": 93, "player_min_number": 97}, {"combination": {"alliances": [[{"max": 56, "min": 89, "name": "PZ64j0HUONscofwY"}, {"max": 77, "min": 35, "name": "QcDvkaEIIPoJT83z"}, {"max": 62, "min": 7, "name": "GXmVBZLyrH9J7Boy"}], [{"max": 38, "min": 26, "name": "q9GA5DydC2D8UT6K"}, {"max": 82, "min": 39, "name": "c4VPDUR9ayazqXRq"}, {"max": 9, "min": 48, "name": "gIUicYXXzxsBFrUs"}], [{"max": 90, "min": 55, "name": "2txs4qrNARATn6KX"}, {"max": 83, "min": 94, "name": "utlYBbLhL8KXx25F"}, {"max": 11, "min": 88, "name": "y5RUzvMfTkPy0fGv"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 10, "role_flexing_second": 47}, "duration": 77, "max_number": 100, "min_number": 76, "player_max_number": 98, "player_min_number": 38}], "name": "RK6UKk5ozrXA4HZH"}, "Nyq9odanhR1Zrm3t": {"alliance": {"combination": {"alliances": [[{"max": 14, "min": 1, "name": "UvV87yfkycLSVdle"}, {"max": 91, "min": 11, "name": "aAylsmLYe2phYOgT"}, {"max": 66, "min": 22, "name": "IKlJt3EP9kKwkENQ"}], [{"max": 79, "min": 97, "name": "ki8jvc3P8Gwjg3IO"}, {"max": 69, "min": 18, "name": "0SDHgYKqxJiFJdrm"}, {"max": 19, "min": 51, "name": "5vhzgsJwex7wq8ZP"}], [{"max": 22, "min": 79, "name": "XNaUNgdY2vfJuje5"}, {"max": 4, "min": 65, "name": "PnmGjTvYa5Pqx1K7"}, {"max": 33, "min": 16, "name": "cAoijBPAp6EPb988"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 48, "role_flexing_second": 80}, "max_number": 35, "min_number": 88, "player_max_number": 61, "player_min_number": 40}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 76, "min": 38, "name": "VpULjjiw3NeVG4DJ"}, {"max": 18, "min": 93, "name": "9DaMrc0WFgKjE945"}, {"max": 47, "min": 58, "name": "qUxKDc84OMIzvTSc"}], [{"max": 7, "min": 98, "name": "bKBsAyJMz4ILNDvh"}, {"max": 56, "min": 27, "name": "4Eoes9a6XaJeRbzT"}, {"max": 86, "min": 95, "name": "wD3jxF7vxRUY0ilr"}], [{"max": 81, "min": 32, "name": "oFT98SgtJd4Z5f8n"}, {"max": 11, "min": 1, "name": "dzOJDGCTHIOFjeXb"}, {"max": 38, "min": 92, "name": "d7r1SQw80JfMpPrS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 68, "role_flexing_second": 49}, "duration": 81, "max_number": 32, "min_number": 90, "player_max_number": 100, "player_min_number": 95}, {"combination": {"alliances": [[{"max": 95, "min": 27, "name": "sq5lQo2jy29EJigq"}, {"max": 15, "min": 99, "name": "yVhURx1yPeczRpdk"}, {"max": 30, "min": 68, "name": "ZcXQpoTOxe8y1jor"}], [{"max": 81, "min": 12, "name": "sg9ZKYCKoISyXtHz"}, {"max": 30, "min": 60, "name": "WGdYohxMp3uOQIyb"}, {"max": 34, "min": 53, "name": "WfG9BJ6FVKlbYHtb"}], [{"max": 85, "min": 95, "name": "taxvagSlpGgVTF6V"}, {"max": 9, "min": 9, "name": "DAPOGBwweyFfXEOE"}, {"max": 54, "min": 69, "name": "Etbag82KgBgyCd5v"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 60, "role_flexing_second": 11}, "duration": 6, "max_number": 52, "min_number": 75, "player_max_number": 9, "player_min_number": 42}, {"combination": {"alliances": [[{"max": 89, "min": 45, "name": "4DtNp129hzBw3xLU"}, {"max": 5, "min": 14, "name": "CEt0DzmkJq1sml5b"}, {"max": 71, "min": 39, "name": "u5KJ0ynxGBlacDCd"}], [{"max": 66, "min": 75, "name": "e8ATUqVxcSthrpnM"}, {"max": 96, "min": 87, "name": "BsnUfuQIcSbUt5UG"}, {"max": 21, "min": 54, "name": "InFGpuUsdtq4dOwN"}], [{"max": 62, "min": 35, "name": "SzCEW9dUVhZjLftC"}, {"max": 97, "min": 37, "name": "i9kIpqgrzpUkNOBW"}, {"max": 50, "min": 59, "name": "dXV0Fi02aFr8CDap"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 35, "role_flexing_second": 82}, "duration": 82, "max_number": 23, "min_number": 94, "player_max_number": 77, "player_min_number": 22}], "name": "qXQgvwD3PsKDJiWx"}}, "ticket_flexing_selection": "newest", "ticket_flexing_selections": [{"selection": "random", "threshold": 46}, {"selection": "newest", "threshold": 41}, {"selection": "random", "threshold": 36}], "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 60, "social_matchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
$PYTHON -m $MODULE 'matchmaking-get-match-pool-metric' \
    '2S54phbdyGDt47f9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'GWRlE9hqz6rjDNo4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "rhjxUdMM83WekqfW", "players": [{"results": [{"attribute": "v04vvn9bk5qr8qs2", "value": 0.19493404133539216}, {"attribute": "qtnGAqXUjNypF6MM", "value": 0.2684483868705817}, {"attribute": "WpdEJsPoaIbYz8cK", "value": 0.9285624338781291}], "user_id": "jlpJdre5ur6yvWJD"}, {"results": [{"attribute": "dvM7T7PX2vamIRZH", "value": 0.4034657886071181}, {"attribute": "sIYOCUoiCXNjrdQL", "value": 0.8774579769428152}, {"attribute": "jdx1eIba1sB0HsJ0", "value": 0.9490169613202175}], "user_id": "DzfbzRYt4OVUyumB"}, {"results": [{"attribute": "eIqdQGZC5kM03HHi", "value": 0.15631893655610896}, {"attribute": "sQRj7N8IAjmsonjj", "value": 0.8444502276113897}, {"attribute": "ZR50BQ1U6aFD3O2k", "value": 0.8037731261350113}], "user_id": "QSc58zgZVl4gIF7v"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "3qbZu9M3OxqVAT4H"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "1lRZ9Z1JBrHRzEOt", "client_version": "IxzPqb6n73m0jiaD", "deployment": "H86d9rsKgzCsMulp", "error_code": 57, "error_message": "luexk87b9Z5BTsEA", "game_mode": "3EdmW8saabP4xRow", "is_mock": "fNojzPXI2v0prR3O", "joinable": true, "match_id": "mPDKFS6u9FHuv1M3", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 34, "party_attributes": {"Yhic03qGEg5fNzBV": {}, "rjo3g8CfRwtyl1He": {}, "T7VEPgG40QyXzsOz": {}}, "party_id": "gck078IghoQBp2mW", "party_members": [{"extra_attributes": {"AOYksczxBS0OBCa2": {}, "vWadLmQtYKmEMzic": {}, "buL2S3RiW8dLTCBf": {}}, "user_id": "GUdVEdvdQL7sVwcZ"}, {"extra_attributes": {"2PofaJoSqtrEOqxH": {}, "46fRTSZoDdT0fefo": {}, "74eg3Nt2c0r4GqF0": {}}, "user_id": "NHglOVuNZ9LzNeJn"}, {"extra_attributes": {"Burh54CWbYb0Peby": {}, "t8b4DGscjwrizsFU": {}, "gYwbaLvqvQ2NbmDI": {}}, "user_id": "TuymTBjn3d2sFzMS"}], "ticket_created_at": 90, "ticket_id": "QaVjZF7Ax6115Kg9"}, {"first_ticket_created_at": 95, "party_attributes": {"9S7ivHEoLbUMM47f": {}, "1UreUpxEkXIbE1ET": {}, "zRJZKMavu4Ul2Iai": {}}, "party_id": "eEbPSE7TGkeHsYsW", "party_members": [{"extra_attributes": {"9oGBN1pYMBwbPZTl": {}, "MlUvFEiGprcNSQ9k": {}, "EeXBZ6FVrBzyhyho": {}}, "user_id": "S6a9oe0JaXFpff28"}, {"extra_attributes": {"uYbe4Cf2HEHvVevh": {}, "ISjbtBJUK5fE3Ouf": {}, "PSX3PdOU2V9yw94o": {}}, "user_id": "a8UJ34TIedV3HyoX"}, {"extra_attributes": {"4VnO2LpBU08wfnlH": {}, "BXFIqFUmgUSMM5au": {}, "8GJT0mkVPI6zUtf3": {}}, "user_id": "QaJPGrTNcXXTUIgg"}], "ticket_created_at": 29, "ticket_id": "IaKiHfoeorY7A1ot"}, {"first_ticket_created_at": 66, "party_attributes": {"H7r1ta3m7jK5pxe8": {}, "2pgFiAS6piIzmc8r": {}, "KrKEPGSAcong6eNE": {}}, "party_id": "RUf8kjci1Ctccv9G", "party_members": [{"extra_attributes": {"v4tOcbnuCqf0lm6W": {}, "BkIzjoSV31tvmMB6": {}, "jzrpRGESmooHiCV4": {}}, "user_id": "GUOnXpapXQGRakUb"}, {"extra_attributes": {"cG7PcR4eiU3Idi55": {}, "jNrGNT2VHTKuIT5F": {}, "wwHj0Ur5F2PWGTTD": {}}, "user_id": "81xhNP4t6kYBUjyX"}, {"extra_attributes": {"An3bWQF6QcAiJpXI": {}, "rgroixptZhckUTGk": {}, "cBOE4qMcH1Kyi8ZF": {}}, "user_id": "vGcV8DY0XOkDstxZ"}], "ticket_created_at": 6, "ticket_id": "YS4Kj7Yi2VvoQNW8"}]}, {"matching_parties": [{"first_ticket_created_at": 2, "party_attributes": {"c481dYdvGxJAMDRA": {}, "1LF7jdWlekFwO94V": {}, "BCV9qJhWva2FPBuj": {}}, "party_id": "X0geYCpGJM4sqsPN", "party_members": [{"extra_attributes": {"JMiZXXOFwmGWAvNF": {}, "0Z0GkwxUNYyNwGiK": {}, "rknH0Y5mrQgLC6D2": {}}, "user_id": "qsFiQHglUQMZi5Wj"}, {"extra_attributes": {"MZfOadpgegCUjTdi": {}, "1Ehr8OtqpNJ9R8Tu": {}, "Ny4ejmVA3vMCsGyP": {}}, "user_id": "d12B8QNUz0hFFNbH"}, {"extra_attributes": {"6j2W4roZM2UKAXEE": {}, "sL5D0oiFchQnVeq3": {}, "g2AB2WIRUQmauIY5": {}}, "user_id": "HXCZ0W4XmWP0HzSd"}], "ticket_created_at": 16, "ticket_id": "uBAldDSUS7Haa6un"}, {"first_ticket_created_at": 33, "party_attributes": {"bumu2QHLyZNuysyM": {}, "4OfCzdQCXMAWnf87": {}, "YPNOe9Eevf1fhMg1": {}}, "party_id": "E2k7QLFrVgtX7y0f", "party_members": [{"extra_attributes": {"POieDCow2zXyFFVp": {}, "M87yqEwEacQMTlqN": {}, "4LKkxJ5v3SBafnKN": {}}, "user_id": "iMPbFkFGA85W3HJk"}, {"extra_attributes": {"qgS2B37wwoPYOHiI": {}, "sxmsLBPBJuNLnWRr": {}, "tW870qD88ZcduZSe": {}}, "user_id": "7W20UZcDaiq0nEZ7"}, {"extra_attributes": {"PyhqFJkDClOsKmfs": {}, "gJdmzsDPsWh1k0cQ": {}, "08NG6dX2TZkil67k": {}}, "user_id": "RngoUa83ECh1gqPe"}], "ticket_created_at": 91, "ticket_id": "rOMZMgWkFN7Tpkx6"}, {"first_ticket_created_at": 66, "party_attributes": {"N2XTrFibRAhzzEWz": {}, "WlTY70qdgJRvpZrS": {}, "pWX3KEe2BjV00ReC": {}}, "party_id": "XFffjJJxlgjzIhpg", "party_members": [{"extra_attributes": {"OoIOD74V21HWDAfv": {}, "Xwdxbyp4HAPbBbNP": {}, "StVBUpKgOssFkz0F": {}}, "user_id": "36piDYXeHZ7FHls3"}, {"extra_attributes": {"nyvconqbHQqKLQKe": {}, "3xmj6s0GqsWncp5L": {}, "rqbiKudv9z75SzoC": {}}, "user_id": "V8ZMi2o1nR482D6g"}, {"extra_attributes": {"NClk9c87hosaPFC5": {}, "zBW3ZgVZCj9ObVGT": {}, "0Scwl4kNmCi15XTJ": {}}, "user_id": "TgCNNH7RtG5Xmo9Q"}], "ticket_created_at": 1, "ticket_id": "Wb07N17fkxZSc6Vb"}]}, {"matching_parties": [{"first_ticket_created_at": 63, "party_attributes": {"DNoMcOmbfJrCJQIj": {}, "1haAosKglqaCXE9y": {}, "tpIO8btO3OwNEGSW": {}}, "party_id": "5TaW4to7QCY2NGGv", "party_members": [{"extra_attributes": {"i9kg3rMIzNmhJTNQ": {}, "jKlwjfJ3TJ2xVpge": {}, "70WsLfgbZieRvJI5": {}}, "user_id": "sT9DH3DfLCv8q4Th"}, {"extra_attributes": {"mq09bBgPAYxrBE9j": {}, "lnTgtgW33wDwD9RK": {}, "vQX4yFQFdrRoM6Fo": {}}, "user_id": "qCYw7AlxO6qdFpc7"}, {"extra_attributes": {"1sSck3ggZWJlSlCQ": {}, "MDji329PfVrvMEPt": {}, "psSNcpK1QkB2Sy8W": {}}, "user_id": "w79LVeVskqeUB7RS"}], "ticket_created_at": 1, "ticket_id": "F9bqMj4ro5B19VE8"}, {"first_ticket_created_at": 6, "party_attributes": {"8c7OydVw0zCqoMZv": {}, "pIOO97DmQ5ZOzx6i": {}, "CJTu60IifzMhkk5P": {}}, "party_id": "xsjqbCKpMv2Yky9D", "party_members": [{"extra_attributes": {"YkD2sIllFtBtXJKG": {}, "3rqBmILhtWm8RQvR": {}, "UbUDSiefGEdLucrt": {}}, "user_id": "O2gCQD057DrDlgC2"}, {"extra_attributes": {"nzS9SiGUjVAw4v3q": {}, "6JRHcn7KaoCEkRdo": {}, "6qHYIZWnXqQ1oHFJ": {}}, "user_id": "9Q0vqsL9SomqWsGA"}, {"extra_attributes": {"76yxi0QzZWfmP2sx": {}, "0KO5bEJaPnAFjsod": {}, "yJQVVBrShGbIIuqK": {}}, "user_id": "8C403HgoXCR6XOMX"}], "ticket_created_at": 46, "ticket_id": "CQGPCxwEdkyuT3Mg"}, {"first_ticket_created_at": 51, "party_attributes": {"FclpDl5HsuracO5M": {}, "njnxD1OXkxShFVQT": {}, "RekLfjmy8zosRCRg": {}}, "party_id": "VwbrQKmb01yA7U7d", "party_members": [{"extra_attributes": {"GMjupZkZQY8CNyT4": {}, "k3DIbfT22G5NpE13": {}, "0YWSgxpKWtdtdtVW": {}}, "user_id": "9anENmxb9e7vXZV3"}, {"extra_attributes": {"ig8Jg5VByeI3ycMc": {}, "YYBixKJXCISQdwec": {}, "1m8BusV9tUh74KVo": {}}, "user_id": "6Xqjz2xUKLNWSmYy"}, {"extra_attributes": {"VvyelIJ8QgaLMqi8": {}, "36ULa7cfZl4VuY6r": {}, "sZyo6CBRRnoOikIx": {}}, "user_id": "XKKIR6kPmswm5TCA"}], "ticket_created_at": 96, "ticket_id": "bx7J3gNLIlTk3Bpc"}]}], "namespace": "lrk4hIRn0znIKzAE", "party_attributes": {"AHQpBOgHEP5l94s7": {}, "CbIJ7eHnVWOboMky": {}, "B7FTexsOZ0b2p3b6": {}}, "party_id": "3KrcwIcXMhGy83Xi", "queued_at": 40, "region": "9alq3hK1G4kKooSN", "server_name": "NUZuiynZ64IwncZP", "status": "k82GF3eTC0vzZUDj", "ticket_id": "9dzGgGVxo9OHgfHu", "ticket_ids": ["myfuBNisecYbcOpR", "45VDlvSc0Mr7ImwC", "wGqOf0bNs97KvKyj"], "updated_at": "1999-06-28T00:00:00Z"}' \
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
    '{"blocked_player_option": "blockedPlayerCannotMatch", "deployment": "ncmR6Z7rb21A2E9p", "description": "X0BWCMqPsRk5htdM", "findMatchTimeoutSeconds": 55, "joinable": true, "max_delay_ms": 29, "region_expansion_range_ms": 10, "region_expansion_rate_ms": 35, "region_latency_initial_range_ms": 61, "region_latency_max_ms": 3, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 91, "min": 76, "name": "rSHrkoqv2mM6soMa"}, {"max": 94, "min": 61, "name": "vQq2a9YdFNtRVSO0"}, {"max": 19, "min": 59, "name": "s0hG9xmSnzd7zgUx"}], [{"max": 54, "min": 30, "name": "5JZ5z6gujpFzlPsp"}, {"max": 87, "min": 24, "name": "D9IRIpDDubntPCFx"}, {"max": 10, "min": 11, "name": "eoW2NdSWzOXjO1NQ"}], [{"max": 95, "min": 48, "name": "qWHBW78XREZCiTNA"}, {"max": 47, "min": 34, "name": "NCKKXu1bqI2M5PmX"}, {"max": 12, "min": 75, "name": "6sZ6rjnkH4ExObpp"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 58, "role_flexing_second": 100}, "maxNumber": 79, "minNumber": 28, "playerMaxNumber": 12, "playerMinNumber": 61}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 25, "min": 26, "name": "GFy0eUoOBd90h9ED"}, {"max": 33, "min": 11, "name": "STOfoNewWjwMWDKE"}, {"max": 40, "min": 8, "name": "6JhbJ0fwTDaq6b5R"}], [{"max": 32, "min": 80, "name": "MwhWPtndriXU9loO"}, {"max": 47, "min": 63, "name": "pmEuwDVc12r0DVUG"}, {"max": 13, "min": 92, "name": "GHkapTCafFMdvYiC"}], [{"max": 57, "min": 56, "name": "uzUUwyI6Vtd4v9k4"}, {"max": 11, "min": 6, "name": "v3kMiuQ3DhsKLxjt"}, {"max": 9, "min": 38, "name": "py56eW1kmb15QeIQ"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 96, "role_flexing_second": 78}, "duration": 33, "max_number": 51, "min_number": 73, "player_max_number": 52, "player_min_number": 20}, {"combination": {"alliances": [[{"max": 61, "min": 30, "name": "SvELgBe6dboSdhkB"}, {"max": 52, "min": 20, "name": "AzPkt1efGJeJaxyH"}, {"max": 68, "min": 42, "name": "xDb06ZFy3uglSp2U"}], [{"max": 49, "min": 3, "name": "vF2uLXWilRD7HD6L"}, {"max": 59, "min": 78, "name": "gdFxRGj00RT6Lvcn"}, {"max": 66, "min": 14, "name": "MJbJIYLssMvy9gkf"}], [{"max": 94, "min": 15, "name": "MRrXVRcAVRDX6gmD"}, {"max": 10, "min": 8, "name": "NfPGYYSTunMgt3C8"}, {"max": 15, "min": 46, "name": "EguCqlMHiQN3HWJw"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 83, "role_flexing_second": 71}, "duration": 94, "max_number": 66, "min_number": 39, "player_max_number": 12, "player_min_number": 18}, {"combination": {"alliances": [[{"max": 78, "min": 86, "name": "jTU226l07jPlcYaq"}, {"max": 34, "min": 79, "name": "ohglzO8AEl6A9sh2"}, {"max": 49, "min": 91, "name": "2ur2ccp7R7OqPqIj"}], [{"max": 90, "min": 50, "name": "4i0N9ytb3c8pVZ8G"}, {"max": 23, "min": 10, "name": "U8962e6gtn5pUARJ"}, {"max": 79, "min": 29, "name": "1T8QwMNOAzXmyHEV"}], [{"max": 13, "min": 13, "name": "jooiDnc1NUb51lEg"}, {"max": 95, "min": 38, "name": "wQ9tkWaMOH47CAT7"}, {"max": 5, "min": 58, "name": "BP0918JaEBQBP766"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 57, "role_flexing_second": 56}, "duration": 29, "max_number": 89, "min_number": 87, "player_max_number": 14, "player_min_number": 6}], "batch_size": 18, "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 6, "flex_flat_step_range": 84, "flex_immunity_count": 67, "flex_range_max": 67, "flex_rate_ms": 38, "flex_step_max": 75, "force_authority_match": true, "initial_step_range": 87, "mmr_max": 47, "mmr_mean": 39, "mmr_min": 95, "mmr_std_dev": 73, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "wF7RnP1oK3c4RVfj", "criteria": "B0zi3XrYZUiN24ol", "duration": 68, "reference": 0.26207888249409017}, {"attribute": "qbalgizL97ycJV5Y", "criteria": "qE2myQzl7X9fHr6W", "duration": 44, "reference": 0.04321114300104678}, {"attribute": "6VSfE9nbE2PMv12Z", "criteria": "SRJkujxbCu1HFaj6", "duration": 97, "reference": 0.20440286674759467}], "match_options": {"options": [{"name": "vsEzLPnnGsnfmBer", "type": "p84qjwzWpCF1vyam"}, {"name": "jsEzwtLPxK1os4qR", "type": "8LaQzEb39sZTdFfC"}, {"name": "8x5aHLsXHlm1RJTT", "type": "y9JrNz1K5M1qgFdd"}]}, "matchingRules": [{"attribute": "YvifGHawNx6yhniE", "criteria": "HLbEQKc0aUvrKXDI", "reference": 0.14670193182352365}, {"attribute": "YC4df9qswSlpCI8D", "criteria": "hjlxUyrs3OSesE5p", "reference": 0.8517951237356307}, {"attribute": "DwUj2HKUvPYUcQBx", "criteria": "MSdOOsn2Nd8Jpa19", "reference": 0.5172466175873631}], "sort_ticket": {"search_result": "random", "ticket_queue": "oldestTicketAge"}, "sort_tickets": [{"search_result": "oldestTicketAge", "threshold": 71, "ticket_queue": "random"}, {"search_result": "distance", "threshold": 7, "ticket_queue": "random"}, {"search_result": "oldestTicketAge", "threshold": 61, "ticket_queue": "distance"}], "sub_game_modes": {}, "ticket_flexing_selection": "random", "ticket_flexing_selections": [{"selection": "newest", "threshold": 49}, {"selection": "random", "threshold": 47}, {"selection": "pivot", "threshold": 30}], "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 26, "socialMatchmaking": true, "sub_gamemode_selection": "ticketOrder", "ticket_observability_enable": true, "use_sub_gamemode": true}' \
    '9aulsL6NOV5agpS6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
$PYTHON -m $MODULE 'matchmaking-clean-all-mocks' \
    'A5mkufBpWVxIK9D2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
$PYTHON -m $MODULE 'matchmaking-get-all-mock-matches' \
    'bTcgaKoccaSwWcZm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-matches-by-timestamp' \
    '{"timestamp_after": 53}' \
    'wWrCQt86Jrg8tLAJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
$PYTHON -m $MODULE 'matchmaking-get-all-mock-tickets' \
    'WpcyNkUvqn6eXr6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
$PYTHON -m $MODULE 'matchmaking-create-mock-tickets' \
    '{"attribute_name": "NbKJ05Orya6LSSUl", "count": 42, "mmrMax": 0.3892996467854203, "mmrMean": 0.04088088534752543, "mmrMin": 0.32443175782685785, "mmrStdDev": 0.6930160981775253}' \
    'NGIDeHlf6IcX1K9J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
$PYTHON -m $MODULE 'matchmaking-bulk-create-mock-tickets' \
    '[{"first_ticket_created_at": 37, "party_attributes": {"vsfMUOpWv46sXvpO": {}, "jrpRo4mYrCeQUnYo": {}, "ID2UqO0iAXA9dB4i": {}}, "party_id": "b8HDOJ8TNiP8KgEA", "party_members": [{"extra_attributes": {"j3dbRTI0i6dO3zkb": {}, "Dseh4tJdoGcwMBme": {}, "gqVUaWMJBjrV0p9A": {}}, "user_id": "7tcHrV0MbJGr4drg"}, {"extra_attributes": {"kDuWS05m0pGzazM2": {}, "BUXnzUEWTiKMJAf6": {}, "AgbiEDMfCckWogE5": {}}, "user_id": "gcfF8AMGZ2FBS93M"}, {"extra_attributes": {"g6TKwdRMraDLrwh3": {}, "d0ykRGkgqUNIbJMJ": {}, "9ABbKVWO2YEDiqkw": {}}, "user_id": "Kbpdk7wlDngNiPPj"}], "ticket_created_at": 31, "ticket_id": "oL7JCcMo7GxxXdbY"}, {"first_ticket_created_at": 59, "party_attributes": {"9Km4ClIQmkIdLCvN": {}, "hZ6P8aqZ2yfrC1V7": {}, "ZpJZPHCMqvcYmeDL": {}}, "party_id": "YEzs2SQUdKr6vgqk", "party_members": [{"extra_attributes": {"jycqclNlBORlC8Zk": {}, "jsxYtgxplHTPLzyn": {}, "jFZgF3erw7UsyHq4": {}}, "user_id": "bBb0n1JhPUS8BRPG"}, {"extra_attributes": {"V9n769zLJdKMexeJ": {}, "c7NvgTSgKjCxZjKf": {}, "8NA4cGUaDfy9XnH2": {}}, "user_id": "r0EKrk5VlnKsWCPc"}, {"extra_attributes": {"cAFn5CEPoH6opK5D": {}, "SO8JyX4IE1z3rDwZ": {}, "1HKsOpyq8agQuz86": {}}, "user_id": "nc6jLF9DIW2ncJJK"}], "ticket_created_at": 32, "ticket_id": "gFhS0URBhl0L5FCb"}, {"first_ticket_created_at": 83, "party_attributes": {"xzqJZiWi3KQffT5T": {}, "n61A1xW6okIqmd87": {}, "ir9op4YfGTno5oHz": {}}, "party_id": "qY3DgykA8zBJX0rk", "party_members": [{"extra_attributes": {"OHUkY5aSlqhYoSXb": {}, "n6l5xAzc1nc3eFm9": {}, "50dtVAo7w4e3v5mh": {}}, "user_id": "6Rum5pbgEt39uJQp"}, {"extra_attributes": {"gEtchTe3nt7t9ztp": {}, "rSfW9OutADrNGBWS": {}, "J1zQKxVmRTawjiZP": {}}, "user_id": "MoZZcyGEHxAKDQhe"}, {"extra_attributes": {"r3usApPdJPn9eIdh": {}, "IBvTTupABJ4RwH3E": {}, "dKmYtbqQHNfIZwrM": {}}, "user_id": "xf3EnzZVnkLT0Lb8"}], "ticket_created_at": 28, "ticket_id": "2zSBbs4PAV72u8Ax"}]' \
    'E2IQeoxYV4UcYzsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-tickets-by-timestamp' \
    '{"timestamp_after": 55}' \
    'dXXlt8geCdiXu3iN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'vn7vLZ7h6alhJNGZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'F07lsPP5OfHbXzWn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["VO2U4uyzZo1rj0Zr", "LQjk4VoYfIksth24", "cZBpdDFfvzeU5iqh"], "party_id": "x6zv7EURTNIoG1DB", "user_id": "doKH6sREmmfwUZLZ"}' \
    'ZS7snx0Q2Gd8m7Y3' \
    'wiNloJfey3HXL6Sj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'ljNPTXA3qbg55Syi' \
    'enCODZ0mnOpPTVxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'gBFzG8tlkxWKCU1X' \
    'N4gl7yHvEqpJSrDX' \
    'VwCkhOQ161TFjROY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
$PYTHON -m $MODULE 'matchmaking-get-stat-data' \
    'Jm75VIuCOCkt2W1D' \
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
    'fI8QtgODk9K6DcMn' \
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
