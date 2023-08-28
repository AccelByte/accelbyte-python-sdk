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
matchmaking-create-channel-handler '{"deployment": "EAxcVpFrttufHIRd", "description": "H9UzVRiXbqlAw7r6", "find_match_timeout_seconds": 100, "game_mode": "7eHpzSn3ZPUdc0qh", "joinable": false, "max_delay_ms": 100, "region_expansion_range_ms": 26, "region_expansion_rate_ms": 29, "region_latency_initial_range_ms": 51, "region_latency_max_ms": 31, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 56, "min": 72, "name": "m8SAMTwE6I56IaRD"}, {"max": 56, "min": 2, "name": "XxyaNoMR6hkspInr"}, {"max": 54, "min": 12, "name": "ip6lyzSxwElFHHdg"}], [{"max": 38, "min": 31, "name": "21Jub74CUkNmKJfh"}, {"max": 18, "min": 31, "name": "kY1aXlFcDtgOjchI"}, {"max": 42, "min": 69, "name": "a5tWEIC32ogW7olv"}], [{"max": 3, "min": 94, "name": "zsCTCrbCbPOyNQkT"}, {"max": 82, "min": 80, "name": "vyE3cwyALczNIicX"}, {"max": 25, "min": 0, "name": "WBZqxYG3aREAu2D6"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 17}, "max_number": 84, "min_number": 89, "player_max_number": 16, "player_min_number": 24}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 57, "name": "7oFgx4c8OumKtPDK"}, {"max": 74, "min": 62, "name": "DXn7Z4U68su8Xfql"}, {"max": 34, "min": 63, "name": "NiTvB6SdAdIhUDrw"}], [{"max": 29, "min": 39, "name": "Z5MecdKi5r6QEa1y"}, {"max": 38, "min": 9, "name": "LEzth6mXhzkzWkFe"}, {"max": 7, "min": 90, "name": "dSpHt0P7MIIR7Cky"}], [{"max": 66, "min": 40, "name": "6C7duuyZ0GhDogqr"}, {"max": 16, "min": 51, "name": "BRd8lDR6qVNPRZYd"}, {"max": 65, "min": 90, "name": "LIAjGGJddVCvu9vx"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 22}, "duration": 76, "max_number": 75, "min_number": 66, "player_max_number": 79, "player_min_number": 27}, {"combination": {"alliances": [[{"max": 91, "min": 70, "name": "0lyuI9a2I9u6Vpbs"}, {"max": 47, "min": 21, "name": "5w8hqUI06UpOXGSL"}, {"max": 25, "min": 96, "name": "CVuHOPlLlkvR8sKg"}], [{"max": 28, "min": 47, "name": "uRkgghGoYupD391C"}, {"max": 49, "min": 33, "name": "D6SCwGrncqmLtjQH"}, {"max": 54, "min": 25, "name": "f8TgoNm03VLisV6z"}], [{"max": 46, "min": 97, "name": "Puo3td6TC6I3lMjG"}, {"max": 91, "min": 39, "name": "WN2laRlxfcjHfYak"}, {"max": 95, "min": 3, "name": "CTqGkE7wcWfDslpJ"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 40}, "duration": 55, "max_number": 77, "min_number": 85, "player_max_number": 88, "player_min_number": 52}, {"combination": {"alliances": [[{"max": 18, "min": 50, "name": "ZMdjxcBZufQxGiHP"}, {"max": 24, "min": 86, "name": "lG4cYEzfTD1ZBm3M"}, {"max": 33, "min": 84, "name": "HcUmLZZbSqb8RwNm"}], [{"max": 27, "min": 59, "name": "9HrNQy4uZAAiE0mi"}, {"max": 39, "min": 91, "name": "9RGCCHYzUOcEdscK"}, {"max": 69, "min": 13, "name": "PEqgA8yu7Vk6Jt4Y"}], [{"max": 25, "min": 16, "name": "os9Jcdos4fYcTVU6"}, {"max": 90, "min": 25, "name": "Bt0zYoMcHyCUEXlA"}, {"max": 44, "min": 77, "name": "xJMdalwSyliWMNW5"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 41, "role_flexing_second": 33}, "duration": 39, "max_number": 79, "min_number": 23, "player_max_number": 56, "player_min_number": 98}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 16, "flex_flat_step_range": 72, "flex_immunity_count": 58, "flex_range_max": 61, "flex_rate_ms": 92, "flex_step_max": 70, "force_authority_match": false, "initial_step_range": 60, "mmr_max": 3, "mmr_mean": 86, "mmr_min": 99, "mmr_std_dev": 86, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "lNmqRBaAkLnvxkT1", "criteria": "X68cmDc3fxU8MyKr", "duration": 88, "reference": 0.8452748898931911}, {"attribute": "v52Dlym6puQ23xoJ", "criteria": "8aeCnaLpUKp44YUD", "duration": 20, "reference": 0.24185924236642597}, {"attribute": "WvXa3bMrXsDr6kIL", "criteria": "sSSyDdmykmoPYgc2", "duration": 76, "reference": 0.01667587390248748}], "match_options": {"options": [{"name": "N9oCMNqq98SjTvhZ", "type": "NkSQ70D0H6BXksUC"}, {"name": "9b6i5lZC9xv32e8c", "type": "5csSovoqsZNBdte9"}, {"name": "NDUPVJf6c2Z0QZxf", "type": "gPubTDIHrvqAThuw"}]}, "matching_rule": [{"attribute": "jRHpKKTlmVr9XuoJ", "criteria": "bRFQSKVPHbn4Xxtu", "reference": 0.9639977895854788}, {"attribute": "LQRENjEEztx1WsYS", "criteria": "iZqan0nSBJroav91", "reference": 0.5171230937144093}, {"attribute": "XlvPG6bFYReVHQip", "criteria": "cCx9Zw5D2L7vIYhG", "reference": 0.5235086363368513}], "rebalance_enable": false, "sub_game_modes": {"yEW4ZJJ42d3PBddN": {"alliance": {"combination": {"alliances": [[{"max": 87, "min": 91, "name": "B65lSAiYnNjkfZrQ"}, {"max": 44, "min": 66, "name": "oZk03QXcKMDYDDxH"}, {"max": 92, "min": 83, "name": "ZjtqXyJ58f7Gc26S"}], [{"max": 0, "min": 26, "name": "iGVkydwYWQG26yUZ"}, {"max": 81, "min": 25, "name": "hsfpFDcSDG8aMVGL"}, {"max": 18, "min": 77, "name": "BNrDjqoxcwgGLXpU"}], [{"max": 76, "min": 22, "name": "4pp2ncYAHdNzDmeI"}, {"max": 85, "min": 13, "name": "rOvDz9KOsb392k6Y"}, {"max": 26, "min": 65, "name": "JFfRByjlBiuFM3FI"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 93, "role_flexing_second": 84}, "max_number": 67, "min_number": 64, "player_max_number": 31, "player_min_number": 54}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 53, "min": 54, "name": "nkCmBUqg2SCnqntX"}, {"max": 50, "min": 60, "name": "aZSWMiVi10sG6vxk"}, {"max": 10, "min": 69, "name": "UcmqRRbceJ5i0EeD"}], [{"max": 48, "min": 89, "name": "OgBnhhqElIaDml48"}, {"max": 47, "min": 68, "name": "dNFLTm5T50x9WT0G"}, {"max": 11, "min": 56, "name": "H2rtOa4EXsXzOXQA"}], [{"max": 22, "min": 13, "name": "4mqrxzTtuLl4XlbG"}, {"max": 78, "min": 13, "name": "8QOxtjzm8y2wNhmw"}, {"max": 29, "min": 16, "name": "YZyI4EFZKBcYrCEA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 100}, "duration": 61, "max_number": 71, "min_number": 95, "player_max_number": 37, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 11, "min": 10, "name": "mx40NLRc6m8heKnW"}, {"max": 15, "min": 51, "name": "b6z3LNUj7fdgLA84"}, {"max": 29, "min": 60, "name": "Yk6QEgJjBbEDoNf3"}], [{"max": 27, "min": 25, "name": "hEoRCAcf80zfFyab"}, {"max": 36, "min": 55, "name": "Yq6hRkloqxM3gpwx"}, {"max": 4, "min": 74, "name": "fMy9XzjjI5YbsKoA"}], [{"max": 61, "min": 77, "name": "kzJEN2VHzih3bit0"}, {"max": 97, "min": 23, "name": "Wn3CO39PXDNxtXge"}, {"max": 83, "min": 55, "name": "3FgkXhjDzaQY3snn"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 12, "role_flexing_second": 85}, "duration": 55, "max_number": 61, "min_number": 4, "player_max_number": 79, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 80, "min": 8, "name": "AXFaY9eKa699bRVh"}, {"max": 50, "min": 35, "name": "aKwwrAP2aMlu7Wtj"}, {"max": 58, "min": 8, "name": "toYetOO847g8OudO"}], [{"max": 10, "min": 5, "name": "jnCuHZ3c46IjGa23"}, {"max": 25, "min": 44, "name": "qPNs92epxk0i8Vxs"}, {"max": 82, "min": 57, "name": "ereSvf9699mCEHTh"}], [{"max": 95, "min": 88, "name": "JkETAsSp7gh4TeUT"}, {"max": 20, "min": 3, "name": "OkAYfJB8AT9t4Tv2"}, {"max": 73, "min": 91, "name": "Y2QD3oD5fLCr3OOl"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 47}, "duration": 58, "max_number": 68, "min_number": 64, "player_max_number": 67, "player_min_number": 3}], "name": "uYnGzpipNDigNJma"}, "1MbqqZtfNWql4nmw": {"alliance": {"combination": {"alliances": [[{"max": 54, "min": 21, "name": "ft4gqkNNlWkD9eOz"}, {"max": 17, "min": 49, "name": "RFOn0jJLHC9LxhvN"}, {"max": 82, "min": 94, "name": "ww3HICQLfl7MUBG7"}], [{"max": 34, "min": 25, "name": "tPu64yAtURKLRkb7"}, {"max": 84, "min": 69, "name": "TF6oQAXVG7tnsZg5"}, {"max": 86, "min": 16, "name": "gXjvyGJPN4eXbJE5"}], [{"max": 97, "min": 75, "name": "s2GcyomQoIXimBJe"}, {"max": 16, "min": 89, "name": "yxlNsjUgxBkF6wFP"}, {"max": 29, "min": 91, "name": "JeQediogEhhM2rIi"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 56, "role_flexing_second": 75}, "max_number": 68, "min_number": 43, "player_max_number": 96, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 94, "min": 86, "name": "rDzZSKscfOcYu3dp"}, {"max": 59, "min": 22, "name": "ROYqUiGKXVFCmpo6"}, {"max": 38, "min": 0, "name": "PwVOEDSJsEK5QpNh"}], [{"max": 24, "min": 25, "name": "I2iS5EpGhhvXYck0"}, {"max": 41, "min": 32, "name": "QM0NBMA9ORxpzwLR"}, {"max": 2, "min": 54, "name": "u1bNCtX7W40V6Do5"}], [{"max": 37, "min": 67, "name": "YadCCFrHHC3DpZxk"}, {"max": 37, "min": 35, "name": "QDXuNFviMarv8mnf"}, {"max": 69, "min": 89, "name": "K8CCmE2lPnsbD3SG"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 6, "role_flexing_second": 25}, "duration": 23, "max_number": 47, "min_number": 79, "player_max_number": 42, "player_min_number": 16}, {"combination": {"alliances": [[{"max": 96, "min": 0, "name": "ccE536ugBp3HBvep"}, {"max": 28, "min": 41, "name": "DCjgyJlXe36mgWjL"}, {"max": 11, "min": 64, "name": "09xbnGezKsDwG2om"}], [{"max": 83, "min": 89, "name": "5tVg8JqU0jZpjvsu"}, {"max": 13, "min": 10, "name": "AOS7u8RiWyerCSa8"}, {"max": 91, "min": 56, "name": "RgwsAj1ik1jglaDX"}], [{"max": 93, "min": 12, "name": "vKCWwNTAhd2wrS0u"}, {"max": 84, "min": 40, "name": "djhdinpng5BLy8wb"}, {"max": 15, "min": 31, "name": "MssAHjapIkY9Rf4w"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 52, "role_flexing_second": 65}, "duration": 81, "max_number": 87, "min_number": 89, "player_max_number": 2, "player_min_number": 74}, {"combination": {"alliances": [[{"max": 27, "min": 6, "name": "bCtmKy8M9zVrjfGX"}, {"max": 28, "min": 38, "name": "qAQUoY1GjlIIk0iK"}, {"max": 29, "min": 59, "name": "TTS1j02o7JjTXAQN"}], [{"max": 34, "min": 6, "name": "ccLjMXJRk0eaKQDO"}, {"max": 74, "min": 48, "name": "vrTefglSs6g4iY9u"}, {"max": 44, "min": 0, "name": "aCNYIWekp18lOC3m"}], [{"max": 81, "min": 78, "name": "qF7Bl0LcghVHfPEs"}, {"max": 32, "min": 57, "name": "xwhRON0bc1eMbEIj"}, {"max": 29, "min": 64, "name": "wLqc3ecjXJbZDKKo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 47, "role_flexing_second": 60}, "duration": 31, "max_number": 50, "min_number": 6, "player_max_number": 26, "player_min_number": 39}], "name": "pai0rYaT5hOPjaf3"}, "H0tYighU0VUfcYHJ": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 63, "name": "BfAKSiPW3VgsZXiR"}, {"max": 93, "min": 59, "name": "ej52WKi6tArAURt9"}, {"max": 32, "min": 64, "name": "lCSVq8PdH6hJPUAc"}], [{"max": 61, "min": 90, "name": "uAXI66bQ71w0deoV"}, {"max": 88, "min": 77, "name": "i6BqPg4xr0lCancU"}, {"max": 51, "min": 66, "name": "vSZIPkhSgORcz5S5"}], [{"max": 56, "min": 50, "name": "vmgBLxh4ijFnE3Ta"}, {"max": 26, "min": 79, "name": "9qSZ7PC6f6QkmZXE"}, {"max": 24, "min": 7, "name": "W9YfRSse6AAz3S4c"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 87}, "max_number": 57, "min_number": 75, "player_max_number": 89, "player_min_number": 64}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 82, "min": 24, "name": "PYuG6XqP6oo7G73z"}, {"max": 6, "min": 9, "name": "xTgOfnwIdlNa29fD"}, {"max": 77, "min": 15, "name": "h741IslKHzGlLKWU"}], [{"max": 40, "min": 68, "name": "DQs61OQAoxyyQpRW"}, {"max": 59, "min": 80, "name": "iiPDGQhNPEwiJCf2"}, {"max": 40, "min": 73, "name": "nkY6Mca5afj12K2I"}], [{"max": 51, "min": 22, "name": "rBvvWm4udE0OXudX"}, {"max": 13, "min": 22, "name": "Nne8kJATwlc6esUp"}, {"max": 98, "min": 91, "name": "6xnZ5Jrzzjrcaug6"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 100, "role_flexing_second": 97}, "duration": 75, "max_number": 67, "min_number": 28, "player_max_number": 0, "player_min_number": 92}, {"combination": {"alliances": [[{"max": 21, "min": 100, "name": "noed9DHhLOqQGhCU"}, {"max": 35, "min": 21, "name": "iTrjyEgarAdNJOIG"}, {"max": 97, "min": 38, "name": "I6tRbRcrEveMdAdi"}], [{"max": 85, "min": 94, "name": "KDUVSC00PYeDcagg"}, {"max": 18, "min": 70, "name": "nxnFIna3yddcbsPh"}, {"max": 8, "min": 84, "name": "TH26IUJNvYuGRUvp"}], [{"max": 1, "min": 69, "name": "A3PrIfapq5AAeMe4"}, {"max": 76, "min": 26, "name": "3mDWORBVXTIIJM9X"}, {"max": 38, "min": 1, "name": "YIIZxiXNMR9BgaWc"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 92, "role_flexing_second": 39}, "duration": 96, "max_number": 66, "min_number": 56, "player_max_number": 27, "player_min_number": 14}, {"combination": {"alliances": [[{"max": 25, "min": 50, "name": "yo5JJTUVmb8GEXFT"}, {"max": 24, "min": 54, "name": "EMEsFzYqwgK1Np5n"}, {"max": 30, "min": 7, "name": "dqpLm7FhJBNXzAFd"}], [{"max": 84, "min": 81, "name": "Khqf6kiTdSGv2LFj"}, {"max": 54, "min": 47, "name": "KY7CbgsWqFWZX7kP"}, {"max": 56, "min": 84, "name": "om8F9GLLTG8phc3n"}], [{"max": 65, "min": 16, "name": "MbAG9YI89hmguB8F"}, {"max": 83, "min": 93, "name": "WGRaoQomSJC4DdrK"}, {"max": 64, "min": 39, "name": "7SUQPLG59e0k5ZtX"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 46, "role_flexing_second": 74}, "duration": 46, "max_number": 98, "min_number": 85, "player_max_number": 8, "player_min_number": 32}], "name": "MK6MbGIVIu8vvwLc"}}, "use_newest_ticket_for_flexing": true}, "session_queue_timeout_seconds": 55, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' --login_with_auth "Bearer foo"
matchmaking-get-match-pool-metric 'JXTIMtpgkieDyF97' --login_with_auth "Bearer foo"
matchmaking-delete-channel-handler 'lGdMiHKxbWCYzo8y' --login_with_auth "Bearer foo"
matchmaking-store-match-results '{"match_id": "O2KTK9tmmOnYnOpa", "players": [{"results": [{"attribute": "s6ghP1y4Zi7s7QBl", "value": 0.17552019816002562}, {"attribute": "44Z44B1GZgKg4uKx", "value": 0.0042681248755167545}, {"attribute": "CgcGLuC3brWdTYCf", "value": 0.5410096852020236}], "user_id": "kIySok5DiXZtLW87"}, {"results": [{"attribute": "rGysryod3dNQrmsA", "value": 0.2530512324878068}, {"attribute": "RA6HX3RwrKt2ecoz", "value": 0.6063051892784135}, {"attribute": "0TOg54vCE48L5oLF", "value": 0.9466307973479822}], "user_id": "M4lNa4JUMSHNgqRq"}, {"results": [{"attribute": "CV7usamANkZlOX9S", "value": 0.0870175222888242}, {"attribute": "o95HgXqKhTPkwfLM", "value": 0.984480442524703}, {"attribute": "uSybRzWek2gZvRrv", "value": 0.28462644901643785}], "user_id": "0n9d9lvccKMLhrTr"}]}' --login_with_auth "Bearer foo"
matchmaking-rebalance '{"match_id": "cBE2ItBS3KtKZWe8"}' --login_with_auth "Bearer foo"
matchmaking-queue-session-handler '{"channel": "aoFzAyBME74HUtip", "client_version": "UWYhWV1qx8CzPML5", "deployment": "2faXUr9Sk4lq2faB", "error_code": 5, "error_message": "lhjbngJOUn18G5Ml", "game_mode": "fDTk8aG40NlncceI", "is_mock": "ZSwgAIkgzh4pTU0A", "joinable": false, "match_id": "jci0V3tBf2jnHGKX", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 31, "party_attributes": {"QpQ2FbKPFMycMSQ4": {}, "qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}}, "party_id": "oGH1XEfY6QAYn6WQ", "party_members": [{"extra_attributes": {"5UBEU1QAOHfZiGhx": {}, "OdcuDXSxSc3aZPV8": {}, "7pna08gxefTYKhux": {}}, "user_id": "aEc7M4P7UckSC6eP"}, {"extra_attributes": {"eN8i4GrFES9z7xue": {}, "HpATHccee9GXhKcj": {}, "mSEwdrkEnnqKzFsL": {}}, "user_id": "fYalUlfwEQKjU7eH"}, {"extra_attributes": {"GebSVu0LQ40kepEa": {}, "C4dfiOMZfEhHr39p": {}, "ysFO3Zvc1BZG99Ly": {}}, "user_id": "vfvHEsJKQQewVLMU"}], "ticket_created_at": 29, "ticket_id": "b44lONDDwMvgI0Hl"}, {"first_ticket_created_at": 50, "party_attributes": {"foflEIByYqeKN0me": {}, "GelYF5wWaDhukU4k": {}, "hGG4vZFTYnPkmSu4": {}}, "party_id": "PWam1jxR7SETWjte", "party_members": [{"extra_attributes": {"oc8fgvZDDhoO05oK": {}, "qymxLD1Lcvw6T6mZ": {}, "EiwxxElpMYSWIeVz": {}}, "user_id": "m7z9noowmlTIKVow"}, {"extra_attributes": {"i0RY2VN4ZONJREdU": {}, "Q3z9F1BxNNgnke4a": {}, "kncw7wu9TmXfJWBP": {}}, "user_id": "rx9Ns8eLzYEvwSWT"}, {"extra_attributes": {"aLQjctvrK2jhsYpK": {}, "PlXn77AtYoFzLAAT": {}, "PY8P8P3cfoivvQxe": {}}, "user_id": "vecWw7Rry0KK5rgA"}], "ticket_created_at": 66, "ticket_id": "SE7BEv3aevq6iohU"}, {"first_ticket_created_at": 67, "party_attributes": {"cg4W1IS3Uv1BpWoJ": {}, "Baqdg2FHcunsS1ln": {}, "aO2m9vqjhbeK2qN8": {}}, "party_id": "g6x2PyYDo5R3hLiD", "party_members": [{"extra_attributes": {"5sf5y1JsxJNGmyt0": {}, "SQDUDoWBZVGLlkUe": {}, "tzCAWc9x1aMjgGim": {}}, "user_id": "51T107XIZRZ7tZdI"}, {"extra_attributes": {"s0xf4czdt7zqmSKx": {}, "OEQlVcx6GqsBq8vd": {}, "hWVnuYLgpZehK0G2": {}}, "user_id": "nmyuViB9kRTcSQdT"}, {"extra_attributes": {"nNYGeAfYFG3wSkHK": {}, "ufBdS3ZOokZB4cXn": {}, "AXyuGz6LlxHv8Swy": {}}, "user_id": "agYvDJ3w3UNgIGj2"}], "ticket_created_at": 19, "ticket_id": "NvAtcvNedgS1fUfK"}]}, {"matching_parties": [{"first_ticket_created_at": 26, "party_attributes": {"ySa0sZoFS6xCOWMp": {}, "yh9pMsQgb64ELbzD": {}, "Mwyo4nIRysQdbufX": {}}, "party_id": "jYnSoIFeouC2m38k", "party_members": [{"extra_attributes": {"XrDZWlGVE9sJ4NpU": {}, "tKp6M9I6nEwnZhsj": {}, "wJeGwaPSDMZz95OY": {}}, "user_id": "KiqaZD63xe5rruJV"}, {"extra_attributes": {"fLGea0ZtlzUcuHAX": {}, "z0UV31MfuGaXsAuG": {}, "sZaSHevO0TQNEI3k": {}}, "user_id": "fabxJWWSI1ECUo1N"}, {"extra_attributes": {"PpeFhUztXDgB7n4C": {}, "97uAPP8PATLpUpxe": {}, "JlsBJT6Hh3OMjAjq": {}}, "user_id": "2mK8lbSEEelxnb5Q"}], "ticket_created_at": 48, "ticket_id": "bswAgt65X4N1LQZm"}, {"first_ticket_created_at": 56, "party_attributes": {"I1IQcoBQELcNlZkq": {}, "TZrKgXNwvm4e5GX6": {}, "H742OixhtAoKiVm6": {}}, "party_id": "URT95XhnUcvWB28M", "party_members": [{"extra_attributes": {"pusuhhDJ5slzgiWZ": {}, "Etyd56LfxnbY97jj": {}, "YgXchCbkXX26uEdC": {}}, "user_id": "fQaMAQuTKfC0I2kN"}, {"extra_attributes": {"jCMDtDMrentgn3Dh": {}, "qciwIeShF9RKb9vv": {}, "xuJlhXbWhbwPwToC": {}}, "user_id": "6knjVwVnzaqSfJiQ"}, {"extra_attributes": {"FC2gXoda0kg16yUS": {}, "pSOAjHJWwfCjYwWk": {}, "Lob9gKLqs2nEZhpB": {}}, "user_id": "yfHZinxNfgPAwkMB"}], "ticket_created_at": 37, "ticket_id": "jV4jT65yclX2FtAz"}, {"first_ticket_created_at": 0, "party_attributes": {"vJjFIYWOaNdsimmk": {}, "W2miH3xRHAKy4QxZ": {}, "kaXZ7vmiEd0JPxVy": {}}, "party_id": "QpshaDwNqTbbFMXA", "party_members": [{"extra_attributes": {"MfVXe0GZeMgsRsmH": {}, "1EQrYmkPKTPOlhTt": {}, "SiZNCxuogFteTHJe": {}}, "user_id": "4BhSSQkQD6WmOt6D"}, {"extra_attributes": {"7ufFVTOhvQpfbBke": {}, "8aEdd36xj6wySolt": {}, "DxsbzxrlaKEfkoYj": {}}, "user_id": "Y2o6ouRW9UtNquwC"}, {"extra_attributes": {"3WgumrIz4NhGztZp": {}, "r4U4fwQIiLXgmRas": {}, "vjO4lj8m3XEwP2b4": {}}, "user_id": "gd3xOeii8Jnmssep"}], "ticket_created_at": 56, "ticket_id": "xD2NY0kABeGs9yxa"}]}, {"matching_parties": [{"first_ticket_created_at": 15, "party_attributes": {"11W0TGTCm4fZWuk6": {}, "pQxDQpKqxLGeMvr9": {}, "TsvcMQ7dBsaIecRx": {}}, "party_id": "IsZvD6rmzVr5XT1N", "party_members": [{"extra_attributes": {"xw0v1dMQ9Rrbk6C2": {}, "cVWf6ttvbU1PO6Ap": {}, "CD2VXidT7w0Oc15N": {}}, "user_id": "8WXBPp17PAewqSm5"}, {"extra_attributes": {"x3B4t7WQnp8jXZed": {}, "gt5cyNe27HLtwtVO": {}, "axgP6Jbct8puMybY": {}}, "user_id": "GxD9IPmmsLmu3kaP"}, {"extra_attributes": {"j0O4zd8Tb7cUNGPT": {}, "BxiFFCrn7djjs69F": {}, "TFVGUVhvKhJCmeis": {}}, "user_id": "ql14mUHVbMPimNhc"}], "ticket_created_at": 94, "ticket_id": "sU3VAdMDcb4qlkiF"}, {"first_ticket_created_at": 53, "party_attributes": {"syGlElXdEAOrVSnL": {}, "ocLVVYamQc4wcG5n": {}, "DBLJoJHbiQ5duE5p": {}}, "party_id": "4cfs2E41cK8QTwiI", "party_members": [{"extra_attributes": {"AvxSvNDlmM5nQFMG": {}, "zs7fzjgyc44mEh9t": {}, "Rk8knYSV30lnroQe": {}}, "user_id": "hMDli6t9unQLYXxm"}, {"extra_attributes": {"09wpGAbpEmDY9vLh": {}, "3u6EDsUmrV6kH4Oo": {}, "tKwG3UC6XCnnZxF8": {}}, "user_id": "CmQr17W65br34rBB"}, {"extra_attributes": {"N9tU6TDm5GloFSKW": {}, "M1eym5ydC6p25xCW": {}, "TqUOYZENJ1QHZQxP": {}}, "user_id": "RXH7uxBJEECQE1li"}], "ticket_created_at": 12, "ticket_id": "Bg7Jxc9pUnZmvhid"}, {"first_ticket_created_at": 45, "party_attributes": {"dKupvXO6aj4hCmTC": {}, "34jxW4pIDwdqXpmR": {}, "mut9H9XyWI8bp8fQ": {}}, "party_id": "xRuX91uYmtrHJbEG", "party_members": [{"extra_attributes": {"TUj7YjERL1rEQG02": {}, "zccA8wvLsWUNd6lP": {}, "KvqDejvqklTSvDwu": {}}, "user_id": "OrP9lzpiX0VuFpZu"}, {"extra_attributes": {"m7izxe7NPzjOa8E7": {}, "wY76PxLv9HBEUe89": {}, "AwEw1HO4FnKtx4XL": {}}, "user_id": "KAmlDr19uJ3nq6Ve"}, {"extra_attributes": {"rzVCcI8y3Cz0YqCK": {}, "Uh5RD9vNAp4jinFp": {}, "nQ5xF9wwbvMZyeDe": {}}, "user_id": "RnVfPUa6xVVBcq3w"}], "ticket_created_at": 59, "ticket_id": "pFIYeAg79HcLJXJ7"}]}], "namespace": "mpVI6eTYAjdPlCiQ", "party_attributes": {"QC35cj4KyOVgvnWb": {}, "fRJtsB7cUQZ2QUAx": {}, "JrINPXppPNO3AfmX": {}}, "party_id": "cgwC3IN6tvKgLB9Q", "queued_at": 25, "region": "S469k2hG0WKt4sUm", "server_name": "anYxM0UHZVNYzGMN", "status": "IpWoSLkUrfuf4U3W", "ticket_id": "eYeA9t2ENKKWrFtH", "ticket_ids": ["Ii1CMgKAOG5iDcCR", "5PbCvDLil8wj9cKM", "3Ar6MF35hCER4nGm"], "updated_at": "1995-11-18T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "GgTJfHlJl4tHGa4X"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'fZcd9CVnGqMX9Fie' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 9, "userID": "fJKyFlM0u1uuoVdn", "weight": 0.9972851370448936}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'yVoSlKNchPHNL4X3' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "LLaGPGdqLE8Sohhh", "description": "uiTnJarYYkHBDdSz", "findMatchTimeoutSeconds": 57, "joinable": false, "max_delay_ms": 93, "region_expansion_range_ms": 48, "region_expansion_rate_ms": 67, "region_latency_initial_range_ms": 1, "region_latency_max_ms": 98, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 32, "min": 85, "name": "whd5IQYBQuxLvPuW"}, {"max": 45, "min": 57, "name": "E3fsNy9Z9OhxXvCp"}, {"max": 91, "min": 51, "name": "R1l9xLPBsmAUrD9L"}], [{"max": 70, "min": 100, "name": "iD6MlcEPhMDFzjHZ"}, {"max": 37, "min": 45, "name": "IhzOx2CXKlvIomU3"}, {"max": 31, "min": 50, "name": "IxM9n8D2eLMe3lt9"}], [{"max": 33, "min": 15, "name": "fx2UDcgVE7L9FK6e"}, {"max": 93, "min": 78, "name": "jgJaMYvNQOsDa4bk"}, {"max": 4, "min": 68, "name": "gepqtxjbrztee7QL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 4, "role_flexing_second": 1}, "maxNumber": 5, "minNumber": 22, "playerMaxNumber": 70, "playerMinNumber": 57}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 75, "min": 26, "name": "aol01DK97D2xnik4"}, {"max": 52, "min": 25, "name": "GRj46COPipH1MWVT"}, {"max": 69, "min": 56, "name": "G0qHJCWEfOJpZm9y"}], [{"max": 62, "min": 25, "name": "YWNGMy2pgSGSUOK6"}, {"max": 9, "min": 29, "name": "qGJtWf1Ybgg8rdwY"}, {"max": 2, "min": 58, "name": "mrvHmO07KNqX9LM2"}], [{"max": 70, "min": 46, "name": "mtqISQ83TTbtefXW"}, {"max": 52, "min": 47, "name": "nDe4LQdXfFBii2RA"}, {"max": 78, "min": 62, "name": "r0sVZ6LJAOddIL2l"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 86, "role_flexing_second": 26}, "duration": 19, "max_number": 61, "min_number": 81, "player_max_number": 6, "player_min_number": 60}, {"combination": {"alliances": [[{"max": 96, "min": 75, "name": "IoiIJFNxuNOmUSWw"}, {"max": 45, "min": 94, "name": "YowBdkaZ3y6i38XQ"}, {"max": 18, "min": 78, "name": "vxP8xj1LyEirURER"}], [{"max": 27, "min": 96, "name": "EMzpImW6sjAHyCK5"}, {"max": 41, "min": 35, "name": "NanGBrkzUvck3xTt"}, {"max": 25, "min": 87, "name": "OFMebS4AdlNzwog2"}], [{"max": 70, "min": 25, "name": "hErkNhNcECWwchW6"}, {"max": 52, "min": 76, "name": "L9SkbLlrNXnGanMa"}, {"max": 53, "min": 3, "name": "8F1dl1q92m3iRlfn"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 22}, "duration": 4, "max_number": 92, "min_number": 58, "player_max_number": 34, "player_min_number": 46}, {"combination": {"alliances": [[{"max": 5, "min": 17, "name": "E15u6D31DjOsrs3C"}, {"max": 95, "min": 27, "name": "YATdqnQGbqiqOkNe"}, {"max": 54, "min": 55, "name": "Tj7eGjodd7CcJUrI"}], [{"max": 1, "min": 78, "name": "oV0VOem2yqPsMFxK"}, {"max": 51, "min": 64, "name": "bPkbuS6x9cLJ1APn"}, {"max": 82, "min": 4, "name": "lsa2bRBr27fVMWuA"}], [{"max": 11, "min": 89, "name": "DqLMR919IZPKOKiA"}, {"max": 97, "min": 35, "name": "QXXOmqFHLbyXmgCN"}, {"max": 17, "min": 40, "name": "XH8uenbC5CphgMwe"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 37}, "duration": 23, "max_number": 72, "min_number": 54, "player_max_number": 77, "player_min_number": 84}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 94, "flex_flat_step_range": 43, "flex_immunity_count": 90, "flex_range_max": 69, "flex_rate_ms": 32, "flex_step_max": 77, "force_authority_match": true, "initial_step_range": 18, "mmr_max": 56, "mmr_mean": 57, "mmr_min": 55, "mmr_std_dev": 72, "override_mmr_data": false, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "EGvJ4UMS93yOxNIn", "criteria": "DByhnoluO6ti0QP2", "duration": 38, "reference": 0.2178537793638181}, {"attribute": "OkDiJq4xQye7HqnV", "criteria": "K3YVeOWs9mfVQh3j", "duration": 77, "reference": 0.41398654467671936}, {"attribute": "ifF8y959anrNSley", "criteria": "wHbHig6IKWVZ77Ke", "duration": 89, "reference": 0.9994664101747384}], "match_options": {"options": [{"name": "DpSjb39ukcR6c2E2", "type": "r3vk3IfAKEbqcNXS"}, {"name": "GCCvNowNmdpcJgF8", "type": "8ySNq4Mj7mulP4tQ"}, {"name": "6R1OqKVOTniBgLsN", "type": "hdgQ0JWZjNRSzOTq"}]}, "matchingRules": [{"attribute": "cVNX3ahvxw9gwwhT", "criteria": "njN6wKZGW4y3f0R9", "reference": 0.3040685388364861}, {"attribute": "2kndhhZhwAiLsZs4", "criteria": "pmLDIQch4IjDq9aT", "reference": 0.8943944647655675}, {"attribute": "qZyI0rYsWucAkXsV", "criteria": "JbXi7eRZa7WwIc89", "reference": 0.9341475050993779}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 26, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": true}' '0Xtb0U4pH16NUsVY' --login_with_auth "Bearer foo"
matchmaking-clean-all-mocks '21NVIs7NRen2Y3Ns' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-matches '0QJQeaWytPfds1BY' --login_with_auth "Bearer foo"
matchmaking-get-mock-matches-by-timestamp '{"timestamp_after": 48}' '8PGqku59eFJrOXyD' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-tickets 'Yz9vMUOPG0iHDT8Q' --login_with_auth "Bearer foo"
matchmaking-create-mock-tickets '{"attribute_name": "bF7gHPTPQbvLt2NR", "count": 33, "mmrMax": 0.6591695738182787, "mmrMean": 0.7563792879235409, "mmrMin": 0.7087079999179828, "mmrStdDev": 0.037422221848127046}' 'jY3YYT9oTynmfIuB' --login_with_auth "Bearer foo"
matchmaking-bulk-create-mock-tickets '[{"first_ticket_created_at": 99, "party_attributes": {"34luLdvtsTKXMjiw": {}, "6gYPvfn2Qt9iyq3N": {}, "yk8ncu2Z3eDHH9Wa": {}}, "party_id": "VO4iKhDcJ7TCcNIs", "party_members": [{"extra_attributes": {"Q3PuppUxDSK8aOTG": {}, "MudcxlCV4cNbJGQ5": {}, "7lPdinpjS2DRfGt9": {}}, "user_id": "GlyZVQ4X67tPZSTp"}, {"extra_attributes": {"Pq3xjrElvvDgw0ag": {}, "7kSWE0Hiqm5IuLry": {}, "iEXqvUWDjU1G0EVj": {}}, "user_id": "VZw1ToLuPakQN1Mp"}, {"extra_attributes": {"Os1RVFrcg2CXxepx": {}, "78fvsyhE2BKtyTDS": {}, "IM7mkmvZ7Cmsh4US": {}}, "user_id": "8o4jfMANPpmZDdMi"}], "ticket_created_at": 58, "ticket_id": "lVljdWYmELe74p38"}, {"first_ticket_created_at": 44, "party_attributes": {"b92B4vEgj3HOmhcW": {}, "m428XejRF94NIY9n": {}, "MrBZo0lNUBDShHD3": {}}, "party_id": "2vvL28FPwTiXfLcx", "party_members": [{"extra_attributes": {"DC9Ynd02mECIQhfI": {}, "hHtADUQ9zimQTQT9": {}, "5pFJUAJsyAfeKOuf": {}}, "user_id": "V4f15NohXu6opxQG"}, {"extra_attributes": {"Rt6PqlkL0diRhLC1": {}, "0ih2EQfY3XCv4hdO": {}, "a6FdZhNMd1onFjGR": {}}, "user_id": "bxtABPXDmgNEJBhg"}, {"extra_attributes": {"Gq5GIDhNC66szbCC": {}, "f73IFbRkPSSITz4T": {}, "jCrJHXGXku2YVuOz": {}}, "user_id": "hxHmnrrV9ZGWrZ05"}], "ticket_created_at": 38, "ticket_id": "jZx5noXPhPUTKbon"}, {"first_ticket_created_at": 29, "party_attributes": {"bynkgT9vayLLiiza": {}, "c7Ge6zKJdlt7rjF5": {}, "RaJwvkWVco2LTo5i": {}}, "party_id": "jlvDF8qBWCQ9dLWY", "party_members": [{"extra_attributes": {"yS8zdhMeBXH8x6Hd": {}, "VfZVDAiU6iJOF7JK": {}, "ZFNk2NKy59X8iOg2": {}}, "user_id": "sVBiCoeC5weXJl7P"}, {"extra_attributes": {"eiMH8z8dVej8N2yv": {}, "6VTnOK7xAvM7tuL8": {}, "1lsR7xxSVp3Gd2TK": {}}, "user_id": "0HzYviTgYmx82JVB"}, {"extra_attributes": {"RLPZ6Iz8tne5dbgu": {}, "BF6Gsvvdl8jHz9x7": {}, "XZIjU4IK9lOLaZaM": {}}, "user_id": "phKCqTq3EVheJjoE"}], "ticket_created_at": 62, "ticket_id": "ujsmSmylT1YtxIq7"}]' '3aMb48jISd97KORR' --login_with_auth "Bearer foo"
matchmaking-get-mock-tickets-by-timestamp '{"timestamp_after": 15}' 'oGkUWNizk5UcPAGv' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel '6c1ESC6hZYTYZbzf' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel '5aANNNs5kgSZZNUH' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["bIT9szApmWJO5vzz", "XZj08a6K1XRVfriS", "pPFnZBJZkDnEiyfa"], "party_id": "2LrnpZxNnLRH36bq", "user_id": "S2oFY76PU1AziBOH"}' 'EAj1cT3u6Zc2FbrT' 'FznTgDIwZIRWf6T3' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'by2kYSCdnFKLc0xc' 'TjqjdcEfU61OJYMn' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'W49rWynp1ck1vT90' 'C6o86cSRL9cgbUmu' 'lhe98oaFKlQicdrx' --login_with_auth "Bearer foo"
matchmaking-get-stat-data 'VhrtwSd9QWVMYz7T' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'U1TsxsChSclSkb5a' --login_with_auth "Bearer foo"
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
    '{"deployment": "Bi9K9zyv6gFZXI5n", "description": "XJ7hLi6HweweRmyo", "find_match_timeout_seconds": 31, "game_mode": "1dIn7QqXBDXJcrqK", "joinable": false, "max_delay_ms": 6, "region_expansion_range_ms": 60, "region_expansion_rate_ms": 37, "region_latency_initial_range_ms": 45, "region_latency_max_ms": 47, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 29, "min": 29, "name": "EV6tCdrxw1KOPhuv"}, {"max": 69, "min": 41, "name": "KbNN7Ycl2JfmQplv"}, {"max": 66, "min": 92, "name": "jVQ4aebjfgGu472o"}], [{"max": 100, "min": 73, "name": "WXiydCOInVolsr6C"}, {"max": 68, "min": 26, "name": "jaGfsD1cfswmeFpv"}, {"max": 40, "min": 5, "name": "DtetoQVFL8LNW11v"}], [{"max": 39, "min": 92, "name": "paTxi7k489jRCn48"}, {"max": 2, "min": 34, "name": "vkCPfKofwXOIZZQA"}, {"max": 73, "min": 5, "name": "za84lKKmVOaTS6xB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 82, "role_flexing_second": 25}, "max_number": 36, "min_number": 47, "player_max_number": 91, "player_min_number": 63}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 11, "name": "AW2ak7ISDrBVg6Nu"}, {"max": 60, "min": 48, "name": "ZvPb1kuUfNfUDe4g"}, {"max": 34, "min": 7, "name": "6PHEaqbzHvDDl1ji"}], [{"max": 76, "min": 97, "name": "w3XMGBA6JXDpA1tI"}, {"max": 58, "min": 47, "name": "5C0oaGouFu4hXONg"}, {"max": 95, "min": 45, "name": "jAdTn6xBhrciryLm"}], [{"max": 78, "min": 35, "name": "wC1uuokpaIjL0Vxe"}, {"max": 28, "min": 77, "name": "l5TPC5GODS44bmm7"}, {"max": 19, "min": 79, "name": "PdKLddfdsUqjXVzW"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 49, "role_flexing_second": 48}, "duration": 23, "max_number": 27, "min_number": 0, "player_max_number": 99, "player_min_number": 24}, {"combination": {"alliances": [[{"max": 89, "min": 57, "name": "5sheLgsAF4ctv5gu"}, {"max": 50, "min": 28, "name": "cGiq9j2EyIknfLDp"}, {"max": 13, "min": 52, "name": "HnMOn8nc3gUZ8ZFy"}], [{"max": 49, "min": 8, "name": "Er0KBXuJBqK4QtEy"}, {"max": 7, "min": 42, "name": "PWLPBYiR3UbJc1ZY"}, {"max": 0, "min": 85, "name": "px7C477etqgfOJDU"}], [{"max": 94, "min": 63, "name": "0uKAPrARya2IMlNi"}, {"max": 81, "min": 32, "name": "LWHAbCZixe2cQ6O3"}, {"max": 68, "min": 22, "name": "kc0HjUcnkpU9oVzl"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 80, "role_flexing_second": 56}, "duration": 52, "max_number": 42, "min_number": 90, "player_max_number": 77, "player_min_number": 65}, {"combination": {"alliances": [[{"max": 30, "min": 4, "name": "IeCEKZUTz3GvCAZ5"}, {"max": 19, "min": 17, "name": "24acYHbrryHB6GO9"}, {"max": 52, "min": 85, "name": "jzMO3AfmOS5mQNyR"}], [{"max": 84, "min": 44, "name": "ZFPNP56l1AT6OLKm"}, {"max": 8, "min": 14, "name": "qaVemINdClpF7Ovl"}, {"max": 56, "min": 83, "name": "IEgjse5kd6GEDo08"}], [{"max": 50, "min": 33, "name": "kLTnJwc5XmkCuL5W"}, {"max": 65, "min": 41, "name": "p62xlXvVcJerTPW0"}, {"max": 56, "min": 86, "name": "qe9RDQMBSYAFLqp8"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 35, "role_flexing_second": 14}, "duration": 86, "max_number": 59, "min_number": 86, "player_max_number": 5, "player_min_number": 41}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 55, "flex_flat_step_range": 42, "flex_immunity_count": 5, "flex_range_max": 21, "flex_rate_ms": 99, "flex_step_max": 31, "force_authority_match": true, "initial_step_range": 27, "mmr_max": 19, "mmr_mean": 3, "mmr_min": 20, "mmr_std_dev": 53, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "s7j6lxuU3u2HEG0q", "criteria": "fKegvFTD1sPykS8Y", "duration": 77, "reference": 0.6334333137262615}, {"attribute": "GKhaLlJzJMSnJIIg", "criteria": "sAVmaGYxUX1B9oVu", "duration": 52, "reference": 0.4769315460612835}, {"attribute": "Rzdq22cbnyK3ggFD", "criteria": "h2kaZP7pnnVfxPwc", "duration": 31, "reference": 0.9274227600256776}], "match_options": {"options": [{"name": "9HF9ejHaILQruAuY", "type": "yJLYGqMv824ouSgk"}, {"name": "pK70uJmUL0uzElix", "type": "c023dIvDiA0tQWlH"}, {"name": "wBcTtztx3VAl6tXF", "type": "bnATCzUOIzVcy9k3"}]}, "matching_rule": [{"attribute": "ie64Vnwa0ClGQJul", "criteria": "tJe32AiwKadEoIVm", "reference": 0.2555195726180719}, {"attribute": "rwPsa9YD92CX0rIT", "criteria": "ajpwHITGeHTnqRbz", "reference": 0.44523089165277074}, {"attribute": "B9ZFgJbQ3Fj1umx4", "criteria": "ItzkMJ7cudf4r916", "reference": 0.5267978054091235}], "rebalance_enable": false, "sub_game_modes": {"rhn2etVIQvRkQJAt": {"alliance": {"combination": {"alliances": [[{"max": 61, "min": 96, "name": "U4ooQ980ywmg1pWp"}, {"max": 100, "min": 16, "name": "XsYgL7TfyIlAwjTZ"}, {"max": 6, "min": 90, "name": "unGKM0tgfeWy47bb"}], [{"max": 46, "min": 44, "name": "MI4gGmvK9gW596Fw"}, {"max": 57, "min": 12, "name": "NrFXt3TAuKBwBcD1"}, {"max": 38, "min": 0, "name": "ftKqnsIJctAdxyZV"}], [{"max": 75, "min": 68, "name": "hr6ucHf7dbh2iKNU"}, {"max": 24, "min": 68, "name": "0qJqzoKMRMG541PA"}, {"max": 18, "min": 100, "name": "NjULsx4SnKNXLMUa"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 92, "role_flexing_second": 8}, "max_number": 46, "min_number": 79, "player_max_number": 45, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 88, "min": 87, "name": "lnNRZJHBSB4fZWEF"}, {"max": 70, "min": 99, "name": "Zs28Ff1kZp1Zktx3"}, {"max": 81, "min": 24, "name": "7WNMYIfcDKbLu8pn"}], [{"max": 76, "min": 11, "name": "34oA1keYXJvtggDd"}, {"max": 19, "min": 10, "name": "bdjMBahFZZGMTcqn"}, {"max": 99, "min": 20, "name": "rIprOv0BJ9Sgl7H1"}], [{"max": 37, "min": 6, "name": "iEokbUiYzCQh2iNT"}, {"max": 45, "min": 42, "name": "tnohddMzMTQ9P7sY"}, {"max": 77, "min": 61, "name": "rURGWUzPAE6SdV4D"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 29, "role_flexing_second": 40}, "duration": 64, "max_number": 89, "min_number": 23, "player_max_number": 64, "player_min_number": 70}, {"combination": {"alliances": [[{"max": 36, "min": 43, "name": "mtQUvro8TWwXWsz9"}, {"max": 93, "min": 67, "name": "VmdMKEohKzuMYDUT"}, {"max": 78, "min": 57, "name": "Ot2DkUt3yexZBRvx"}], [{"max": 26, "min": 28, "name": "eZtzT0qj0ltsqfiZ"}, {"max": 35, "min": 40, "name": "cF9oVCh89wNOkKYs"}, {"max": 37, "min": 7, "name": "VejcL3kR3hCGNgaJ"}], [{"max": 26, "min": 54, "name": "uALlMQl9RLrthbfp"}, {"max": 23, "min": 97, "name": "1iUProNB6hI6IpGc"}, {"max": 94, "min": 29, "name": "7kKU2u06Q4veujxt"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 88, "role_flexing_second": 98}, "duration": 63, "max_number": 23, "min_number": 82, "player_max_number": 98, "player_min_number": 44}, {"combination": {"alliances": [[{"max": 94, "min": 73, "name": "ypcYPK8IxrSZuxWl"}, {"max": 95, "min": 72, "name": "0bitNQLzwRoWnR0A"}, {"max": 3, "min": 45, "name": "kCPY70FmvviVIBbc"}], [{"max": 41, "min": 98, "name": "jF8Vk5qb8NhWWwax"}, {"max": 51, "min": 75, "name": "Mchkt8l5IPSrwrJl"}, {"max": 72, "min": 45, "name": "90yqHDNacl4F9G6D"}], [{"max": 23, "min": 64, "name": "TFwBY6HKXAblkT8V"}, {"max": 67, "min": 18, "name": "gSH8MGZGwiVj7eDT"}, {"max": 0, "min": 0, "name": "ka9ABfX1IByPEOuP"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 66, "role_flexing_second": 38}, "duration": 73, "max_number": 31, "min_number": 43, "player_max_number": 89, "player_min_number": 17}], "name": "3b6o5uB2XM6IHy7E"}, "EvHyLmcvrZZOdwe1": {"alliance": {"combination": {"alliances": [[{"max": 47, "min": 8, "name": "8RjU6Bi8JXE52sUB"}, {"max": 56, "min": 13, "name": "q2SimQQoLbe5YOJv"}, {"max": 47, "min": 30, "name": "GRxUzrTwagH7BMT1"}], [{"max": 71, "min": 100, "name": "ZKTdNFVBQ1crBXAu"}, {"max": 32, "min": 73, "name": "ATO8uXsqVpdiWo8S"}, {"max": 19, "min": 97, "name": "DAM0Riw8wLYW3n4F"}], [{"max": 59, "min": 77, "name": "FQ6WgJpGPigdc5Vy"}, {"max": 58, "min": 52, "name": "4qvWjVac1cQvSxgT"}, {"max": 81, "min": 70, "name": "zAVYymOuhCkZu4ht"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 11, "role_flexing_second": 82}, "max_number": 65, "min_number": 9, "player_max_number": 89, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 72, "min": 65, "name": "IhFXR2dYprPmbpup"}, {"max": 40, "min": 5, "name": "ECGd5cdXC2Sesc6y"}, {"max": 31, "min": 46, "name": "uggOEdG47gD5i2Ni"}], [{"max": 88, "min": 54, "name": "ny4ij4ysYPonb59g"}, {"max": 87, "min": 60, "name": "ffkNOmubxEJr2qEA"}, {"max": 42, "min": 84, "name": "JbpZSrcbc4LWfKaY"}], [{"max": 47, "min": 4, "name": "hkLe5zohg9s9utRQ"}, {"max": 40, "min": 58, "name": "8b6o3K0COF74tz6a"}, {"max": 9, "min": 56, "name": "XZOYwbwjMNdxKWlB"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 28, "role_flexing_second": 89}, "duration": 9, "max_number": 51, "min_number": 90, "player_max_number": 64, "player_min_number": 44}, {"combination": {"alliances": [[{"max": 92, "min": 56, "name": "0Ed7gTM5AVrtBQiD"}, {"max": 94, "min": 48, "name": "cNnZa6Zuxk6u6HXX"}, {"max": 7, "min": 94, "name": "iC9ZDj4E4mv12FNX"}], [{"max": 49, "min": 82, "name": "poOLl13j84P0Kqir"}, {"max": 72, "min": 54, "name": "PkMFtsnFfz8Ew0X8"}, {"max": 11, "min": 57, "name": "gmPGaHP5SVPvRLiD"}], [{"max": 17, "min": 37, "name": "mNHb6Lx8eq8SGNwE"}, {"max": 87, "min": 83, "name": "eRj17xGhaBKoUfiH"}, {"max": 19, "min": 67, "name": "UMRf2VJetWsokvx3"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 68, "role_flexing_second": 13}, "duration": 42, "max_number": 64, "min_number": 93, "player_max_number": 62, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 4, "min": 92, "name": "zr9KjQ3ttz8MTBt1"}, {"max": 49, "min": 22, "name": "k9IyssSA8nP5PQjp"}, {"max": 52, "min": 39, "name": "k2Tb7iYdmNZWosrs"}], [{"max": 97, "min": 56, "name": "RWECdjWYrnulxcCK"}, {"max": 54, "min": 77, "name": "ru8pOaAVLDB4k3Jw"}, {"max": 21, "min": 62, "name": "daxR7GJpYmuYCPG1"}], [{"max": 38, "min": 26, "name": "q9GA5DydC2D8UT6K"}, {"max": 82, "min": 39, "name": "c4VPDUR9ayazqXRq"}, {"max": 9, "min": 48, "name": "gIUicYXXzxsBFrUs"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 32, "role_flexing_second": 48}, "duration": 37, "max_number": 94, "min_number": 13, "player_max_number": 33, "player_min_number": 58}], "name": "rNARATn6KXOutlYB"}, "bLhL8KXx25FZfQIo": {"alliance": {"combination": {"alliances": [[{"max": 7, "min": 97, "name": "VBqQsBpCJBIXLGYc"}, {"max": 47, "min": 77, "name": "WVRK6UKk5ozrXA4H"}, {"max": 25, "min": 68, "name": "PnbiPJ9j4vxmbH3r"}], [{"max": 97, "min": 14, "name": "aauufxkPHElug48T"}, {"max": 14, "min": 91, "name": "fNu0rqXUOyToLPIR"}, {"max": 62, "min": 66, "name": "kDTyPl3dKF7NXEjr"}], [{"max": 74, "min": 79, "name": "VOHGwbADMfuOmh0l"}, {"max": 4, "min": 69, "name": "iRhVZ2DeoODXMzLS"}, {"max": 35, "min": 19, "name": "zoiBnYi5UWs3tYlY"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 29}, "max_number": 81, "min_number": 58, "player_max_number": 1, "player_min_number": 17}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 96, "min": 26, "name": "NgdY2vfJuje5cPnm"}, {"max": 67, "min": 82, "name": "jTvYa5Pqx1K7qcAo"}, {"max": 17, "min": 18, "name": "Mh9WpifqjNjLOtNQ"}], [{"max": 40, "min": 76, "name": "s2yxf6MLZJ2jZfZb"}, {"max": 32, "min": 18, "name": "TJezzriCDWXT59SR"}, {"max": 42, "min": 47, "name": "0YqUxKDc84OMIzvT"}], [{"max": 92, "min": 0, "name": "cdbKBsAyJMz4ILND"}, {"max": 45, "min": 67, "name": "hB4Eoes9a6XaJeRb"}, {"max": 52, "min": 7, "name": "TPwD3jxF7vxRUY0i"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 72, "role_flexing_second": 81}, "duration": 32, "max_number": 29, "min_number": 35, "player_max_number": 65, "player_min_number": 71}, {"combination": {"alliances": [[{"max": 92, "min": 2, "name": "98SgtJd4Z5f8nfaK"}, {"max": 34, "min": 82, "name": "dZFLbZEHxsDxeR6d"}, {"max": 89, "min": 37, "name": "43kIDzxBwqRJTzrH"}], [{"max": 81, "min": 32, "name": "ZWUsq5lQo2jy29EJ"}, {"max": 16, "min": 4, "name": "gqYhyVhURx1yPecz"}, {"max": 90, "min": 32, "name": "zQuoZcXQpoTOxe8y"}], [{"max": 66, "min": 18, "name": "fhzfCTxxrsRRLee3"}, {"max": 94, "min": 39, "name": "cJ7DQIi45aCDHN9m"}, {"max": 98, "min": 71, "name": "ug2zkVf6KgpKOcn3"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 61, "role_flexing_second": 2}, "duration": 85, "max_number": 95, "min_number": 41, "player_max_number": 93, "player_min_number": 1}, {"combination": {"alliances": [[{"max": 48, "min": 43, "name": "bOwugFDa6wUQvehK"}, {"max": 33, "min": 83, "name": "wCh86XmRkCEcfHDC"}, {"max": 6, "min": 1, "name": "l59Wp9A3tXGve6Dd"}], [{"max": 75, "min": 9, "name": "uvg8f2cIoByk9fxt"}, {"max": 44, "min": 96, "name": "sgeAxo57nKAbZpsb"}, {"max": 73, "min": 2, "name": "4Iu5KJ0ynxGBlacD"}], [{"max": 59, "min": 8, "name": "pKKdzxoufCNlFoOc"}, {"max": 100, "min": 78, "name": "QQy4bjmQeEweoBHT"}, {"max": 6, "min": 67, "name": "wAk7ZQnbqY1cQwVE"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 62, "role_flexing_second": 35}, "duration": 90, "max_number": 52, "min_number": 22, "player_max_number": 59, "player_min_number": 76}], "name": "EW9dUVhZjLftC3sC"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 71, "social_matchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
$PYTHON -m $MODULE 'matchmaking-get-match-pool-metric' \
    'qgrzpUkNOBWydXV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'Fi02aFr8CDapjwNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "l4k8rVNrm8drv8QD", "players": [{"results": [{"attribute": "2JOe2Ntz7EFvowPg", "value": 0.5488856453014371}, {"attribute": "GuetxFMqXCQMAqQ2", "value": 0.8252207114786277}, {"attribute": "RGzNtrThFa9XU8mo", "value": 0.30202193278797496}], "user_id": "luiHZJ7O8sAQ32wj"}, {"results": [{"attribute": "9uaDzsr9xYiWRuuz", "value": 0.6808684974946301}, {"attribute": "JiLc1eI9w3JEhxPG", "value": 0.020061207343863408}, {"attribute": "Ek7s7gw07FlounC3", "value": 0.3443721984850012}], "user_id": "JKBC7SwgoViPeIB4"}, {"results": [{"attribute": "Ehy0Y5aSJVDginxA", "value": 0.6273014041814186}, {"attribute": "77eY9C14FbfiI2NP", "value": 0.3452656494664883}, {"attribute": "l1kCY5bEokxXxkWZ", "value": 0.02722294488370469}], "user_id": "jf7GZxaossQmjo69"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "wohJFyTNk5FGUPhR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "4LEZvz3EjFR7996U", "client_version": "g5m4axDV5uTcYsoa", "deployment": "hUrELQ1btjJOqQMg", "error_code": 41, "error_message": "WAU6E92nHJzvw7tn", "game_mode": "YtGfv0EJyjBu4Ezw", "is_mock": "RjD7jmQJeFPghqam", "joinable": true, "match_id": "c5y0X48eT7Mluexk", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 98, "party_attributes": {"7b9Z5BTsEA3EdmW8": {}, "saabP4xRowfNojzP": {}, "XI2v0prR3OEey0Mk": {}}, "party_id": "ZwS6TYwNN3UYhic0", "party_members": [{"extra_attributes": {"3qGEg5fNzBVrjo3g": {}, "8CfRwtyl1HeT7VEP": {}, "gG40QyXzsOzgck07": {}}, "user_id": "8IghoQBp2mWAOYks"}, {"extra_attributes": {"czxBS0OBCa2vWadL": {}, "mQtYKmEMzicbuL2S": {}, "3RiW8dLTCBfGUdVE": {}}, "user_id": "dvdQL7sVwcZ2Pofa"}, {"extra_attributes": {"JoSqtrEOqxH46fRT": {}, "SZoDdT0fefo74eg3": {}, "Nt2c0r4GqF0NHglO": {}}, "user_id": "VuNZ9LzNeJnBurh5"}], "ticket_created_at": 59, "ticket_id": "FI8NijFI0GKwJ3vf"}, {"first_ticket_created_at": 4, "party_attributes": {"lsAMy2Zp2UAGxHnm": {}, "SxvkG9UR5q9neoW6": {}, "JBcGp9Rx2RfcRhXp": {}}, "party_id": "meeHdvphas9S7ivH", "party_members": [{"extra_attributes": {"EoLbUMM47f1UreUp": {}, "xEkXIbE1ETzRJZKM": {}, "avu4Ul2IaieEbPSE": {}}, "user_id": "7TGkeHsYsW9oGBN1"}, {"extra_attributes": {"pYMBwbPZTlMlUvFE": {}, "iGprcNSQ9kEeXBZ6": {}, "FVrBzyhyhoS6a9oe": {}}, "user_id": "0JaXFpff28uYbe4C"}, {"extra_attributes": {"f2HEHvVevhISjbtB": {}, "JUK5fE3OufPSX3Pd": {}, "OU2V9yw94oa8UJ34": {}}, "user_id": "TIedV3HyoX4VnO2L"}], "ticket_created_at": 32, "ticket_id": "zDNp1SZ58aDllwzT"}, {"first_ticket_created_at": 89, "party_attributes": {"mgUSMM5au8GJT0mk": {}, "VPI6zUtf3QaJPGrT": {}, "NcXXTUIggoH89QNm": {}}, "party_id": "I17UDb19R6H7r1ta", "party_members": [{"extra_attributes": {"3m7jK5pxe82pgFiA": {}, "S6piIzmc8rKrKEPG": {}, "SAcong6eNERUf8kj": {}}, "user_id": "ci1Ctccv9Gv4tOcb"}, {"extra_attributes": {"nuCqf0lm6WBkIzjo": {}, "SV31tvmMB6jzrpRG": {}, "ESmooHiCV4GUOnXp": {}}, "user_id": "apXQGRakUbcG7PcR"}, {"extra_attributes": {"4eiU3Idi55jNrGNT": {}, "2VHTKuIT5FwwHj0U": {}, "r5F2PWGTTD81xhNP": {}}, "user_id": "4t6kYBUjyXAn3bWQ"}], "ticket_created_at": 65, "ticket_id": "1kcLmRv6EJtl5xWn"}]}, {"matching_parties": [{"first_ticket_created_at": 38, "party_attributes": {"tZhckUTGkcBOE4qM": {}, "cH1Kyi8ZFvGcV8DY": {}, "0XOkDstxZcY1HgAn": {}}, "party_id": "ZV4IOglVLqb9lGAJ", "party_members": [{"extra_attributes": {"Ug21Lt7JwgwMUSuC": {}, "3Bajy3BcEMCtQs2F": {}, "cEcvVAyId6Cp85HV": {}}, "user_id": "DsZBQgOnXuXsGThY"}, {"extra_attributes": {"Zrmm0wrFMnPpWgrQ": {}, "D4hEk0OLjYsnignE": {}, "7KcMF7fuDbzRRYMN": {}}, "user_id": "XWUsp1tOibJY9aL9"}, {"extra_attributes": {"ie6vvMbiNURrlm88": {}, "QlKyuoya4JgakZyU": {}, "V7t73VnSFbuxd4KY": {}}, "user_id": "Z0jk0UZdhtnKu9oT"}], "ticket_created_at": 6, "ticket_id": "oZM2UKAXEEsL5D0o"}, {"first_ticket_created_at": 17, "party_attributes": {"fNEjUMTs8WIObJBT": {}, "svsw76uISRX0bKVo": {}, "WtoUW1P7ocuBAldD": {}}, "party_id": "SUS7Haa6unq1yQOS", "party_members": [{"extra_attributes": {"RvyiLBRVtIDi2piI": {}, "QFVmzMidw70KSahp": {}, "YZdKZRyR9AX7Jjxv": {}}, "user_id": "NZhM84DiZk6ySrB9"}, {"extra_attributes": {"SVFctW7YS0OkL78X": {}, "eEAtALFI3v8yha4p": {}, "d5A7MYcpBD6lKNb8": {}}, "user_id": "RxvN2u5J7baOeLH1"}, {"extra_attributes": {"9fqBwNbNe1ffYRtI": {}, "vQaKyevWYtZjK6J2": {}, "9v8MpBSpo3AKRmnJ": {}}, "user_id": "kzJHAckUyBksYQfD"}], "ticket_created_at": 24, "ticket_id": "kDClOsKmfsgJdmzs"}, {"first_ticket_created_at": 60, "party_attributes": {"i8i9gOVqajUWrgEs": {}, "WDtaKzn8dZwnnGeZ": {}, "sZVgbPzPFbrOMZMg": {}}, "party_id": "WkFN7Tpkx6GcfyOg", "party_members": [{"extra_attributes": {"6ZUrrp9ubg9mndW2": {}, "JKmQafUs2bxYztOE": {}, "yVbKIf1ZbzgUwd8D": {}}, "user_id": "HoCQykmXHYmkRlg7"}, {"extra_attributes": {"gYs6unPYQ9jNQN1d": {}, "i1ldhOh6HvjnYuV7": {}, "NfC4A2ODiZhbfb8Q": {}}, "user_id": "qCyK1XH9D6vl5eFd"}, {"extra_attributes": {"FfgK46GjCWaP8huT": {}, "mnq3FGQn3Ahu5wxq": {}, "6oJq4mChmQHQhO9I": {}}, "user_id": "KBXDFQfXFD58sG6u"}], "ticket_created_at": 61, "ticket_id": "87hosaPFC5zBW3Zg"}]}, {"matching_parties": [{"first_ticket_created_at": 97, "party_attributes": {"ecutjS029BiJWOG1": {}, "m7MKclr5igjNTVIt": {}, "rH2X78hxJgaVfw5V": {}}, "party_id": "nyq8OzTE89WDNoMc", "party_members": [{"extra_attributes": {"OmbfJrCJQIj1haAo": {}, "sKglqaCXE9ytpIO8": {}, "btO3OwNEGSW5TaW4": {}}, "user_id": "to7QCY2NGGvi9kg3"}, {"extra_attributes": {"rMIzNmhJTNQjKlwj": {}, "fJ3TJ2xVpge70WsL": {}, "fgbZieRvJI5sT9DH": {}}, "user_id": "3DfLCv8q4Thmq09b"}, {"extra_attributes": {"BgPAYxrBE9jlnTgt": {}, "gW33wDwD9RKvQX4y": {}, "FQFdrRoM6FoqCYw7": {}}, "user_id": "AlxO6qdFpc71sSck"}], "ticket_created_at": 38, "ticket_id": "ggZWJlSlCQMDji32"}, {"first_ticket_created_at": 32, "party_attributes": {"PfVrvMEPtpsSNcpK": {}, "1QkB2Sy8Ww79LVeV": {}, "skqeUB7RSayqGFgu": {}}, "party_id": "hh3bvadRthdbVApe", "party_members": [{"extra_attributes": {"bRA09rW8i8krFWJh": {}, "e03coRFok5d3AyGr": {}, "ZO8GuoXNSoVEBG7V": {}}, "user_id": "bBPUWipz9C05YabF"}, {"extra_attributes": {"X4FCK5ucTFsAFzaO": {}, "3yJpA3KMxBlrRytE": {}, "R1qdTelFAadM9y66": {}}, "user_id": "Drf4SSGGt3MiBKoh"}, {"extra_attributes": {"ow3kKoaP1K4CDuH1": {}, "mMIfOCDyVAHrHncR": {}, "5dShqiBUI9esSsXe": {}}, "user_id": "gSEhrPpK2q8kxR4B"}], "ticket_created_at": 43, "ticket_id": "QzZWfmP2sx0KO5bE"}, {"first_ticket_created_at": 73, "party_attributes": {"v0L2Acm960EYQEuG": {}, "JVl8xs1WId9Wlalq": {}, "shF9Rh2o7GCQGPCx": {}}, "party_id": "wEdkyuT3MgzReRq0", "party_members": [{"extra_attributes": {"112ISArROIodcmM6": {}, "v2AEozWWaYvBLE46": {}, "bpuJip8JyxJ39vrt": {}}, "user_id": "uWWrqTZbSqBSKp8A"}, {"extra_attributes": {"mgwhYzk33J34fiTx": {}, "K63OHpnUCGBVfpct": {}, "NFUsUQ6ZXQcb2o1J": {}}, "user_id": "5euLAbBgejqc0apx"}, {"extra_attributes": {"qZ209BySn8aUaGlA": {}, "yvIslt7N1qcxKs4n": {}, "lf1MfqUZXkjHvcUO": {}}, "user_id": "TlxNf09pefgFIiJs"}], "ticket_created_at": 37, "ticket_id": "J8QgaLMqi836ULa7"}]}], "namespace": "cfZl4VuY6rsZyo6C", "party_attributes": {"BRRnoOikIxXKKIR6": {}, "kPmswm5TCAU1cKAp": {}, "dJDnE73GLmSZns5o": {}}, "party_id": "wBhoUg4LsGP6KLPX", "queued_at": 21, "region": "gHEP5l94s7CbIJ7e", "server_name": "HnVWOboMkyB7FTex", "status": "sOZ0b2p3b63KrcwI", "ticket_id": "cXMhGy83Xit6boOL", "ticket_ids": ["GCcg16DqwdQPQ9Hk", "SSV8e1MgTTLS2Fga", "rY903INGIyEfRBEj"], "updated_at": "1995-05-09T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "xo9OHgfHumyfuBNi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'secYbcOpR45VDlvS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 6, "userID": "n47GVghTH2wToOnq", "weight": 0.9976170309022987}' \
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
    'U5lyW89Xwt3wmRTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "DCjhnKvsHezWTqgY", "description": "PixtHk6lWq6tEeUm", "findMatchTimeoutSeconds": 96, "joinable": true, "max_delay_ms": 64, "region_expansion_range_ms": 46, "region_expansion_rate_ms": 76, "region_latency_initial_range_ms": 62, "region_latency_max_ms": 72, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 1, "min": 3, "name": "k0mJqjRYldcTpdeC"}, {"max": 61, "min": 45, "name": "XPRi4bAQL7VE2wL8"}, {"max": 32, "min": 74, "name": "0BWCMqPsRk5htdM5"}], [{"max": 94, "min": 36, "name": "3fDSrSHrkoqv2mM6"}, {"max": 38, "min": 36, "name": "oMaTvQq2a9YdFNtR"}, {"max": 97, "min": 91, "name": "QbaCvdPSq8Z27Gpv"}], [{"max": 68, "min": 14, "name": "CDx55JZ5z6gujpFz"}, {"max": 24, "min": 72, "name": "PspQD9IRIpDDubnt"}, {"max": 85, "min": 57, "name": "G2uf6E8EajXLSAS8"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 34, "role_flexing_second": 87}, "maxNumber": 99, "minNumber": 69, "playerMaxNumber": 87, "playerMinNumber": 56}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 49, "min": 99, "name": "JCpKedhuzI7G9NCK"}, {"max": 76, "min": 37, "name": "u1bqI2M5PmXfKnQ7"}, {"max": 57, "min": 36, "name": "YGjCUDMOrbmoRvWn"}], [{"max": 12, "min": 61, "name": "mGFy0eUoOBd90h9E"}, {"max": 59, "min": 95, "name": "qSTOfoNewWjwMWDK"}, {"max": 63, "min": 49, "name": "t6JhbJ0fwTDaq6b5"}], [{"max": 90, "min": 32, "name": "N6owMHMtJy1Oqn59"}, {"max": 40, "min": 47, "name": "EGm9NYeUT5P0nx8T"}, {"max": 33, "min": 13, "name": "SZdZ5C8mFI9TnvzE"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 56, "role_flexing_second": 42}, "duration": 81, "max_number": 52, "min_number": 79, "player_max_number": 96, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 96, "min": 47, "name": "CZvPxT5zbreMc9fB"}, {"max": 29, "min": 17, "name": "U3RHNDFjLKFrepy5"}, {"max": 48, "min": 9, "name": "BgpFtDBmTLH9kP9U"}], [{"max": 78, "min": 33, "name": "z6joBAhAlJGI2YYb"}, {"max": 14, "min": 0, "name": "kBzAzPkt1efGJeJa"}, {"max": 47, "min": 51, "name": "2tHxDb06ZFy3uglS"}], [{"max": 31, "min": 65, "name": "UxvF2uLXWilRD7HD"}, {"max": 13, "min": 77, "name": "VLGgK8aVSCN6oCET"}, {"max": 87, "min": 27, "name": "8gIDRdD2wwMXwKVX"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 78, "role_flexing_second": 62}, "duration": 89, "max_number": 73, "min_number": 35, "player_max_number": 37, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 98, "min": 90, "name": "rZpxaPHc9r8eToFm"}, {"max": 20, "min": 68, "name": "STunMgt3C8hEguCq"}, {"max": 22, "min": 79, "name": "7YwDudnGRufOUGfM"}], [{"max": 19, "min": 93, "name": "JQ24meDrwEuTyM2q"}, {"max": 30, "min": 14, "name": "YfBmhjI9Y28qVceS"}, {"max": 41, "min": 96, "name": "r2ccp7R7OqPqIjS4"}], [{"max": 17, "min": 82, "name": "0N9ytb3c8pVZ8GlU"}, {"max": 39, "min": 74, "name": "62e6gtn5pUARJM1T"}, {"max": 56, "min": 87, "name": "aixUUvmzbajE2gjo"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 0, "role_flexing_second": 60}, "duration": 27, "max_number": 6, "min_number": 91, "player_max_number": 80, "player_min_number": 96}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 82, "flex_flat_step_range": 57, "flex_immunity_count": 23, "flex_range_max": 6, "flex_rate_ms": 63, "flex_step_max": 98, "force_authority_match": false, "initial_step_range": 59, "mmr_max": 95, "mmr_mean": 38, "mmr_min": 46, "mmr_std_dev": 57, "override_mmr_data": true, "use_bucket_mmr": true, "use_flat_flex_step": false}, "flexingRules": [{"attribute": "4axSPgPCiwLxCFLD", "criteria": "ixZwVtt3RVTl0tR0", "duration": 56, "reference": 0.23295845610428723}, {"attribute": "QgcHdGGK3x76U1EI", "criteria": "cklttmrpgF5szl0s", "duration": 78, "reference": 0.44511229406708563}, {"attribute": "0zi3XrYZUiN24ol1", "criteria": "qqbalgizL97ycJV5", "duration": 10, "reference": 0.2641477036254778}], "match_options": {"options": [{"name": "E2myQzl7X9fHr6Wv", "type": "BxmBvNj3ktaDf9B2"}, {"name": "2HGgxakPt7IYzaZU", "type": "TmvsEzLPnnGsnfmB"}, {"name": "erp84qjwzWpCF1vy", "type": "amjsEzwtLPxK1os4"}]}, "matchingRules": [{"attribute": "qR8LaQzEb39sZTdF", "criteria": "fC8x5aHLsXHlm1RJ", "reference": 0.7388085217551835}, {"attribute": "Ty9JrNz1K5M1qgFd", "criteria": "dYvifGHawNx6yhni", "reference": 0.48521147621465166}, {"attribute": "HLbEQKc0aUvrKXDI", "criteria": "jYC4df9qswSlpCI8", "reference": 0.4765507944440195}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 41, "socialMatchmaking": false, "ticket_observability_enable": false, "use_sub_gamemode": false}' \
    'onMFjmYqE1wJhfog' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
$PYTHON -m $MODULE 'matchmaking-clean-all-mocks' \
    'Wg2Apm0sUy18aWn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
$PYTHON -m $MODULE 'matchmaking-get-all-mock-matches' \
    '5Co0vdCk8so6JSaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-matches-by-timestamp' \
    '{"timestamp_after": 54}' \
    'DK46Eehx7xasqMY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
$PYTHON -m $MODULE 'matchmaking-get-all-mock-tickets' \
    'aulsL6NOV5agpS6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
$PYTHON -m $MODULE 'matchmaking-create-mock-tickets' \
    '{"attribute_name": "5mkufBpWVxIK9D2b", "count": 93, "mmrMax": 0.4613628092198543, "mmrMean": 0.7782444962071653, "mmrMin": 0.01788288359823298, "mmrStdDev": 0.29200694401907534}' \
    '5qugklBUS6uwWrCQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
$PYTHON -m $MODULE 'matchmaking-bulk-create-mock-tickets' \
    '[{"first_ticket_created_at": 39, "party_attributes": {"cIQcPWAShIhieSKU": {}, "f3zKbyQk2vQTYX1x": {}, "sth28NZZgsXycuQN": {}}, "party_id": "GIDeHlf6IcX1K9Jr", "party_members": [{"extra_attributes": {"K6Or2xx7rLwrPoWi": {}, "ywnxuDLLuIaSxolo": {}, "IH1gBCWVFrvls0Zw": {}}, "user_id": "osKhDlLfTKxpVOXv"}, {"extra_attributes": {"GSrdkqddI3ezqu6F": {}, "B0sL2xt6fX9j7rhZ": {}, "CAlDlVKBsLZiBRXs": {}}, "user_id": "zE7CL1cQCSoqHvH7"}, {"extra_attributes": {"g63cOx6yrIw37pKO": {}, "LrF5i3gr3Cc4M2O7": {}, "NrTQO7KLdZDGwqx7": {}}, "user_id": "T3l1ut2oyolliYsT"}], "ticket_created_at": 73, "ticket_id": "6TKwdRMraDLrwh3d"}, {"first_ticket_created_at": 75, "party_attributes": {"ykRGkgqUNIbJMJ9A": {}, "BbKVWO2YEDiqkwKb": {}, "pdk7wlDngNiPPjpS": {}}, "party_id": "AlZwFGpea5ObBB49", "party_members": [{"extra_attributes": {"Km4ClIQmkIdLCvNh": {}, "Z6P8aqZ2yfrC1V7Z": {}, "pJZPHCMqvcYmeDLY": {}}, "user_id": "Ezs2SQUdKr6vgqkj"}, {"extra_attributes": {"ycqclNlBORlC8Zkj": {}, "sxYtgxplHTPLzynj": {}, "FZgF3erw7UsyHq4b": {}}, "user_id": "Bb0n1JhPUS8BRPGV"}, {"extra_attributes": {"9n769zLJdKMexeJc": {}, "7NvgTSgKjCxZjKf8": {}, "NA4cGUaDfy9XnH2r": {}}, "user_id": "0EKrk5VlnKsWCPcc"}], "ticket_created_at": 54, "ticket_id": "UmD225fp1egsx3Er"}, {"first_ticket_created_at": 15, "party_attributes": {"8JyX4IE1z3rDwZ1H": {}, "KsOpyq8agQuz86nc": {}, "6jLF9DIW2ncJJKpq": {}}, "party_id": "mgvUTr8XAtpOqUQx", "party_members": [{"extra_attributes": {"zqJZiWi3KQffT5Tn": {}, "61A1xW6okIqmd87i": {}, "r9op4YfGTno5oHzq": {}}, "user_id": "Y3DgykA8zBJX0rkO"}, {"extra_attributes": {"HUkY5aSlqhYoSXbn": {}, "6l5xAzc1nc3eFm95": {}, "0dtVAo7w4e3v5mh6": {}}, "user_id": "Rum5pbgEt39uJQpg"}, {"extra_attributes": {"EtchTe3nt7t9ztpr": {}, "SfW9OutADrNGBWSJ": {}, "1zQKxVmRTawjiZPM": {}}, "user_id": "oZZcyGEHxAKDQher"}], "ticket_created_at": 30, "ticket_id": "usApPdJPn9eIdhIB"}]' \
    'vTTupABJ4RwH3EdK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-tickets-by-timestamp' \
    '{"timestamp_after": 26}' \
    '4vl7gIKBc7OYTylF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'RAJKySnC0cfPl3Z2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'zSBbs4PAV72u8AxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["2IQeoxYV4UcYzswA", "GpXqQxctuVaqPJGA", "HEZmuQrZ8GaQ4OZ2"], "party_id": "nDodm4TNs8mAj6IK", "user_id": "SYFdJwgZsRPOzwuD"}' \
    'SdGl1A2vaNeDiSqT' \
    'fmAVg50kOdJagEmT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'uaxlxgywkbdOsyxX' \
    '1tfW488oYUT4jyCV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'J0V8obTlGVThz4bm' \
    '41oIcV33yjPxibDj' \
    'fF7JkjCVpZKMxkFk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
$PYTHON -m $MODULE 'matchmaking-get-stat-data' \
    'BtXMU6KRIm5xBoIi' \
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
    '99ctgFXasxp5h780' \
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
