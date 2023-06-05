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
matchmaking-queue-session-handler '{"channel": "aoFzAyBME74HUtip", "client_version": "UWYhWV1qx8CzPML5", "deployment": "2faXUr9Sk4lq2faB", "error_code": 5, "error_message": "lhjbngJOUn18G5Ml", "game_mode": "fDTk8aG40NlncceI", "is_mock": "ZSwgAIkgzh4pTU0A", "joinable": false, "match_id": "jci0V3tBf2jnHGKX", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 31, "party_attributes": {"QpQ2FbKPFMycMSQ4": {}, "qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}}, "party_id": "oGH1XEfY6QAYn6WQ", "party_members": [{"extra_attributes": {"5UBEU1QAOHfZiGhx": {}, "OdcuDXSxSc3aZPV8": {}, "7pna08gxefTYKhux": {}}, "user_id": "aEc7M4P7UckSC6eP"}, {"extra_attributes": {"eN8i4GrFES9z7xue": {}, "HpATHccee9GXhKcj": {}, "mSEwdrkEnnqKzFsL": {}}, "user_id": "fYalUlfwEQKjU7eH"}, {"extra_attributes": {"GebSVu0LQ40kepEa": {}, "C4dfiOMZfEhHr39p": {}, "ysFO3Zvc1BZG99Ly": {}}, "user_id": "vfvHEsJKQQewVLMU"}], "ticket_created_at": 29, "ticket_id": "b44lONDDwMvgI0Hl"}, {"first_ticket_created_at": 50, "party_attributes": {"foflEIByYqeKN0me": {}, "GelYF5wWaDhukU4k": {}, "hGG4vZFTYnPkmSu4": {}}, "party_id": "PWam1jxR7SETWjte", "party_members": [{"extra_attributes": {"oc8fgvZDDhoO05oK": {}, "qymxLD1Lcvw6T6mZ": {}, "EiwxxElpMYSWIeVz": {}}, "user_id": "m7z9noowmlTIKVow"}, {"extra_attributes": {"i0RY2VN4ZONJREdU": {}, "Q3z9F1BxNNgnke4a": {}, "kncw7wu9TmXfJWBP": {}}, "user_id": "rx9Ns8eLzYEvwSWT"}, {"extra_attributes": {"aLQjctvrK2jhsYpK": {}, "PlXn77AtYoFzLAAT": {}, "PY8P8P3cfoivvQxe": {}}, "user_id": "vecWw7Rry0KK5rgA"}], "ticket_created_at": 66, "ticket_id": "SE7BEv3aevq6iohU"}, {"first_ticket_created_at": 67, "party_attributes": {"cg4W1IS3Uv1BpWoJ": {}, "Baqdg2FHcunsS1ln": {}, "aO2m9vqjhbeK2qN8": {}}, "party_id": "g6x2PyYDo5R3hLiD", "party_members": [{"extra_attributes": {"5sf5y1JsxJNGmyt0": {}, "SQDUDoWBZVGLlkUe": {}, "tzCAWc9x1aMjgGim": {}}, "user_id": "51T107XIZRZ7tZdI"}, {"extra_attributes": {"s0xf4czdt7zqmSKx": {}, "OEQlVcx6GqsBq8vd": {}, "hWVnuYLgpZehK0G2": {}}, "user_id": "nmyuViB9kRTcSQdT"}, {"extra_attributes": {"nNYGeAfYFG3wSkHK": {}, "ufBdS3ZOokZB4cXn": {}, "AXyuGz6LlxHv8Swy": {}}, "user_id": "agYvDJ3w3UNgIGj2"}], "ticket_created_at": 19, "ticket_id": "NvAtcvNedgS1fUfK"}]}, {"matching_parties": [{"first_ticket_created_at": 26, "party_attributes": {"ySa0sZoFS6xCOWMp": {}, "yh9pMsQgb64ELbzD": {}, "Mwyo4nIRysQdbufX": {}}, "party_id": "jYnSoIFeouC2m38k", "party_members": [{"extra_attributes": {"XrDZWlGVE9sJ4NpU": {}, "tKp6M9I6nEwnZhsj": {}, "wJeGwaPSDMZz95OY": {}}, "user_id": "KiqaZD63xe5rruJV"}, {"extra_attributes": {"fLGea0ZtlzUcuHAX": {}, "z0UV31MfuGaXsAuG": {}, "sZaSHevO0TQNEI3k": {}}, "user_id": "fabxJWWSI1ECUo1N"}, {"extra_attributes": {"PpeFhUztXDgB7n4C": {}, "97uAPP8PATLpUpxe": {}, "JlsBJT6Hh3OMjAjq": {}}, "user_id": "2mK8lbSEEelxnb5Q"}], "ticket_created_at": 48, "ticket_id": "bswAgt65X4N1LQZm"}, {"first_ticket_created_at": 56, "party_attributes": {"I1IQcoBQELcNlZkq": {}, "TZrKgXNwvm4e5GX6": {}, "H742OixhtAoKiVm6": {}}, "party_id": "URT95XhnUcvWB28M", "party_members": [{"extra_attributes": {"pusuhhDJ5slzgiWZ": {}, "Etyd56LfxnbY97jj": {}, "YgXchCbkXX26uEdC": {}}, "user_id": "fQaMAQuTKfC0I2kN"}, {"extra_attributes": {"jCMDtDMrentgn3Dh": {}, "qciwIeShF9RKb9vv": {}, "xuJlhXbWhbwPwToC": {}}, "user_id": "6knjVwVnzaqSfJiQ"}, {"extra_attributes": {"FC2gXoda0kg16yUS": {}, "pSOAjHJWwfCjYwWk": {}, "Lob9gKLqs2nEZhpB": {}}, "user_id": "yfHZinxNfgPAwkMB"}], "ticket_created_at": 37, "ticket_id": "jV4jT65yclX2FtAz"}, {"first_ticket_created_at": 0, "party_attributes": {"vJjFIYWOaNdsimmk": {}, "W2miH3xRHAKy4QxZ": {}, "kaXZ7vmiEd0JPxVy": {}}, "party_id": "QpshaDwNqTbbFMXA", "party_members": [{"extra_attributes": {"MfVXe0GZeMgsRsmH": {}, "1EQrYmkPKTPOlhTt": {}, "SiZNCxuogFteTHJe": {}}, "user_id": "4BhSSQkQD6WmOt6D"}, {"extra_attributes": {"7ufFVTOhvQpfbBke": {}, "8aEdd36xj6wySolt": {}, "DxsbzxrlaKEfkoYj": {}}, "user_id": "Y2o6ouRW9UtNquwC"}, {"extra_attributes": {"3WgumrIz4NhGztZp": {}, "r4U4fwQIiLXgmRas": {}, "vjO4lj8m3XEwP2b4": {}}, "user_id": "gd3xOeii8Jnmssep"}], "ticket_created_at": 56, "ticket_id": "xD2NY0kABeGs9yxa"}]}, {"matching_parties": [{"first_ticket_created_at": 15, "party_attributes": {"11W0TGTCm4fZWuk6": {}, "pQxDQpKqxLGeMvr9": {}, "TsvcMQ7dBsaIecRx": {}}, "party_id": "IsZvD6rmzVr5XT1N", "party_members": [{"extra_attributes": {"xw0v1dMQ9Rrbk6C2": {}, "cVWf6ttvbU1PO6Ap": {}, "CD2VXidT7w0Oc15N": {}}, "user_id": "8WXBPp17PAewqSm5"}, {"extra_attributes": {"x3B4t7WQnp8jXZed": {}, "gt5cyNe27HLtwtVO": {}, "axgP6Jbct8puMybY": {}}, "user_id": "GxD9IPmmsLmu3kaP"}, {"extra_attributes": {"j0O4zd8Tb7cUNGPT": {}, "BxiFFCrn7djjs69F": {}, "TFVGUVhvKhJCmeis": {}}, "user_id": "ql14mUHVbMPimNhc"}], "ticket_created_at": 94, "ticket_id": "sU3VAdMDcb4qlkiF"}, {"first_ticket_created_at": 53, "party_attributes": {"syGlElXdEAOrVSnL": {}, "ocLVVYamQc4wcG5n": {}, "DBLJoJHbiQ5duE5p": {}}, "party_id": "4cfs2E41cK8QTwiI", "party_members": [{"extra_attributes": {"AvxSvNDlmM5nQFMG": {}, "zs7fzjgyc44mEh9t": {}, "Rk8knYSV30lnroQe": {}}, "user_id": "hMDli6t9unQLYXxm"}, {"extra_attributes": {"09wpGAbpEmDY9vLh": {}, "3u6EDsUmrV6kH4Oo": {}, "tKwG3UC6XCnnZxF8": {}}, "user_id": "CmQr17W65br34rBB"}, {"extra_attributes": {"N9tU6TDm5GloFSKW": {}, "M1eym5ydC6p25xCW": {}, "TqUOYZENJ1QHZQxP": {}}, "user_id": "RXH7uxBJEECQE1li"}], "ticket_created_at": 12, "ticket_id": "Bg7Jxc9pUnZmvhid"}, {"first_ticket_created_at": 45, "party_attributes": {"dKupvXO6aj4hCmTC": {}, "34jxW4pIDwdqXpmR": {}, "mut9H9XyWI8bp8fQ": {}}, "party_id": "xRuX91uYmtrHJbEG", "party_members": [{"extra_attributes": {"TUj7YjERL1rEQG02": {}, "zccA8wvLsWUNd6lP": {}, "KvqDejvqklTSvDwu": {}}, "user_id": "OrP9lzpiX0VuFpZu"}, {"extra_attributes": {"m7izxe7NPzjOa8E7": {}, "wY76PxLv9HBEUe89": {}, "AwEw1HO4FnKtx4XL": {}}, "user_id": "KAmlDr19uJ3nq6Ve"}, {"extra_attributes": {"rzVCcI8y3Cz0YqCK": {}, "Uh5RD9vNAp4jinFp": {}, "nQ5xF9wwbvMZyeDe": {}}, "user_id": "RnVfPUa6xVVBcq3w"}], "ticket_created_at": 59, "ticket_id": "pFIYeAg79HcLJXJ7"}]}], "namespace": "mpVI6eTYAjdPlCiQ", "party_attributes": {"QC35cj4KyOVgvnWb": {}, "fRJtsB7cUQZ2QUAx": {}, "JrINPXppPNO3AfmX": {}}, "party_id": "cgwC3IN6tvKgLB9Q", "queued_at": 25, "region": "S469k2hG0WKt4sUm", "server_name": "anYxM0UHZVNYzGMN", "status": "IpWoSLkUrfuf4U3W", "ticket_id": "eYeA9t2ENKKWrFtH", "updated_at": "1988-04-06T00:00:00Z"}' --login_with_auth "Bearer foo"
matchmaking-dequeue-session-handler '{"match_id": "i1CMgKAOG5iDcCR5"}' --login_with_auth "Bearer foo"
matchmaking-query-session-handler 'PbCvDLil8wj9cKM3' --login_with_auth "Bearer foo"
matchmaking-update-play-time-weight '{"playtime": 55, "userID": "JsbGpO6JgehDJxEN", "weight": 0.9527960054780963}' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-all-channel --login_with_auth "Bearer foo"
matchmaking-bulk-get-sessions --login_with_auth "Bearer foo"
matchmaking-export-channels --login_with_auth "Bearer foo"
matchmaking-import-channels --login_with_auth "Bearer foo"
matchmaking-get-single-matchmaking-channel 'JlZc8LMq1o2jZWu4' --login_with_auth "Bearer foo"
matchmaking-update-matchmaking-channel '{"deployment": "yA3r0u4q1bTHXIjf", "description": "JKyFlM0u1uuoVdn9", "findMatchTimeoutSeconds": 50, "joinable": false, "max_delay_ms": 97, "region_expansion_range_ms": 30, "region_expansion_rate_ms": 83, "region_latency_initial_range_ms": 91, "region_latency_max_ms": 72, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 23, "min": 11, "name": "KNchPHNL4X3LLaGP"}, {"max": 66, "min": 94, "name": "dqLE8SohhhuiTnJa"}, {"max": 35, "min": 80, "name": "YYkHBDdSzBXdxapw"}], [{"max": 15, "min": 44, "name": "d5IQYBQuxLvPuWYv"}, {"max": 61, "min": 76, "name": "fsNy9Z9OhxXvCp9y"}, {"max": 10, "min": 23, "name": "LD2qfCXnlUnqxT1W"}], [{"max": 38, "min": 60, "name": "RNMZcA92hzC7MNa8"}, {"max": 45, "min": 71, "name": "Ve4MHX6AgMep90Ay"}, {"max": 50, "min": 72, "name": "UJyAK5PRMRMwdvl0"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 44, "role_flexing_second": 48}, "maxNumber": 13, "minNumber": 96, "playerMaxNumber": 61, "playerMinNumber": 5}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 67, "min": 13, "name": "xBW2tQF5tkTjgJaM"}, {"max": 40, "min": 44, "name": "xk9hVKlG56HlzGr7"}, {"max": 19, "min": 19, "name": "brztee7QLTGAak7K"}], [{"max": 1, "min": 100, "name": "ol01DK97D2xnik42"}, {"max": 25, "min": 67, "name": "iteR5eQAe1rzmmgq"}, {"max": 56, "min": 67, "name": "PRmd6mO4oI8KDqeb"}], [{"max": 25, "min": 81, "name": "raNBJ5y7axEkvI4o"}, {"max": 47, "min": 66, "name": "ZEDxGiBnNbn0zaf7"}, {"max": 58, "min": 25, "name": "aOSlHXrUSA6sMJzA"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 63, "role_flexing_second": 39}, "duration": 37, "max_number": 34, "min_number": 7, "player_max_number": 71, "player_min_number": 82}, {"combination": {"alliances": [[{"max": 91, "min": 66, "name": "Q83TTbtefXWznDe4"}, {"max": 76, "min": 9, "name": "QdXfFBii2RAMEX5R"}, {"max": 80, "min": 19, "name": "6LJAOddIL2l3hPjN"}], [{"max": 60, "min": 96, "name": "Kv2LWfXqjr8fS79E"}, {"max": 27, "min": 45, "name": "T1IxVWCxdvPL9e4P"}, {"max": 18, "min": 78, "name": "vxP8xj1LyEirURER"}], [{"max": 27, "min": 96, "name": "EMzpImW6sjAHyCK5"}, {"max": 41, "min": 35, "name": "NanGBrkzUvck3xTt"}, {"max": 25, "min": 87, "name": "OFMebS4AdlNzwog2"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 62, "role_flexing_second": 35}, "duration": 94, "max_number": 22, "min_number": 93, "player_max_number": 81, "player_min_number": 15}, {"combination": {"alliances": [[{"max": 15, "min": 80, "name": "gUoj8u2WRcLiEtzV"}, {"max": 22, "min": 24, "name": "nkflfn7pHY48F1dl"}, {"max": 10, "min": 34, "name": "nURH48aJuALEcSqc"}], [{"max": 62, "min": 54, "name": "15u6D31DjOsrs3CU"}, {"max": 6, "min": 53, "name": "CEr0KcgeqzGbruNB"}, {"max": 20, "min": 68, "name": "eGjodd7CcJUrI6MA"}], [{"max": 42, "min": 13, "name": "VOem2yqPsMFxKybP"}, {"max": 22, "min": 2, "name": "6sK5LOq4ft5jGcMI"}, {"max": 58, "min": 86, "name": "bRBr27fVMWuAfDqL"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 70}, "duration": 92, "max_number": 29, "min_number": 85, "player_max_number": 26, "player_min_number": 75}], "bucket_mmr_rule": {"disable_authority": true, "flex_authority_count": 84, "flex_flat_step_range": 37, "flex_immunity_count": 76, "flex_range_max": 30, "flex_rate_ms": 18, "flex_step_max": 6, "force_authority_match": true, "initial_step_range": 73, "mmr_max": 97, "mmr_mean": 35, "mmr_min": 88, "mmr_std_dev": 15, "override_mmr_data": false, "use_bucket_mmr": true, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "FHLbyXmgCNiXH8ue", "criteria": "nbC5CphgMweexsIA", "duration": 84, "reference": 0.491332970023471}, {"attribute": "TRpABAmO2EGvJ4UM", "criteria": "S93yOxNInDByhnol", "duration": 41, "reference": 0.5217366565105409}, {"attribute": "8bXGFmPAnOkDiJq4", "criteria": "xQye7HqnVK3YVeOW", "duration": 38, "reference": 0.6631019040711514}], "match_options": {"options": [{"name": "pucddXJ5zifF8y95", "type": "9anrNSleywHbHig6"}, {"name": "IKWVZ77KeRWdECaF", "type": "GzfZ2hxcJ2Fnemn7"}, {"name": "M23SzUo4hNBDh9ZF", "type": "P1OW0nXOErQPS4Vs"}]}, "matchingRules": [{"attribute": "RoYIK69yg9ADCGiX", "criteria": "aLs2xjHkinOD975n", "reference": 0.4234528003910355}, {"attribute": "RHCmhNHSXuqIHsxv", "criteria": "aUoXDmwWsukxncuD", "reference": 0.893782068272092}, {"attribute": "QxCXMd00YBWCaVVm", "criteria": "M45mfIZsWhkS476d", "reference": 0.524876886045199}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": true}, "sessionQueueTimeoutSeconds": 19, "socialMatchmaking": true, "ticket_observability_enable": true, "use_sub_gamemode": false}' 'H197MJ6zU7JLMQyM' --login_with_auth "Bearer foo"
matchmaking-clean-all-mocks 'WzYQCAaPJgoxGJoJ' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-matches 'aSzUtY4ZD0Xtb0U4' --login_with_auth "Bearer foo"
matchmaking-get-mock-matches-by-timestamp '{"timestamp_after": 32}' 'tUh5J5Z9GiBiSAyl' --login_with_auth "Bearer foo"
matchmaking-get-all-mock-tickets 'X5cS0IeHpWCugmfO' --login_with_auth "Bearer foo"
matchmaking-create-mock-tickets '{"attribute_name": "L0QQpxsuD8PGqku5", "count": 11, "mmrMax": 0.07871308903100016, "mmrMean": 0.5156519921337744, "mmrMin": 0.5730291708357005, "mmrStdDev": 0.2840595051684728}' 'OXyDYz9vMUOPG0iH' --login_with_auth "Bearer foo"
matchmaking-bulk-create-mock-tickets '[{"first_ticket_created_at": 61, "party_attributes": {"cTglbU86FyOjApNH": {}, "BVfNOURcjY3YYT9o": {}, "TynmfIuBWgJTNFfM": {}}, "party_id": "8M0IW4oe8KDgy0xZ", "party_members": [{"extra_attributes": {"fAcNg14Ws8TIP1LK": {}, "iFQoLDvumfqrgSfn": {}, "x2h61X9dN1MGRXBJ": {}}, "user_id": "6mVV7JS9qjNLwvI8"}, {"extra_attributes": {"JdiY3RRiLilmOGF6": {}, "dLLIeIVIjMcdlbdR": {}, "XTGIrdNL5gJPqTAj": {}}, "user_id": "gqaTHf1ANTJ9Yk99"}, {"extra_attributes": {"7XkGOdC6ItxDT8p4": {}, "n4XCFkD1AJLCwszb": {}, "ZxuHSgDOK8bjoF7b": {}}, "user_id": "L2635KbtZTGJpqgl"}], "ticket_created_at": 71, "ticket_id": "BKtyTDSIM7mkmvZ7"}, {"first_ticket_created_at": 59, "party_attributes": {"aJLNNz6QIVC9Mfuc": {}, "8VOsnmnlVljdWYmE": {}, "Le74p38vumnxAnYB": {}}, "party_id": "TxaTIz0jcgDI8Pkz", "party_members": [{"extra_attributes": {"96vd80msqIm5bufn": {}, "BqrpLeqhwVhjnnjK": {}, "MEmtbiWsAQHbMrKY": {}}, "user_id": "i0Zxs5SWCqZXHLLa"}, {"extra_attributes": {"31oQf7BULnZDhutD": {}, "M6BqguqD5xxGxBWt": {}, "nTKUe2znsqPzPkwC": {}}, "user_id": "Bo2SwCUsTag4MLAo"}, {"extra_attributes": {"3m61P2xaNfmn8Onb": {}, "1a9gMz0F2UBRmMhA": {}, "bUWmFhdYLWzMuv3z": {}}, "user_id": "kUY0n0BAZkwbYkBL"}], "ticket_created_at": 49, "ticket_id": "SSITz4TjCrJHXGXk"}, {"first_ticket_created_at": 42, "party_attributes": {"dOTacCcJfIfXshuL": {}, "Uk5WdpxjZx5noXPh": {}, "PUTKbonoucNmzwOZ": {}}, "party_id": "OK56sDkci5rZ8iMl", "party_members": [{"extra_attributes": {"OuksQJCiRFiZWwJ7": {}, "NrTb1XTB9YQzUJ9X": {}, "lYJ8BzP6EUmUXGM5": {}}, "user_id": "anIloyj9lhbvuQdW"}, {"extra_attributes": {"2jwKUckc794ryY91": {}, "lX8DD4MYXlrJ81lH": {}, "vv9rqvEoM8YmVjAk": {}}, "user_id": "O3HKsEp6KlqwW4dj"}, {"extra_attributes": {"rexcbHdEtoQvpV34": {}, "4RctmTozCi8HeV6j": {}, "balHmqBBfi7sSF5B": {}}, "user_id": "oGiTCVsXsygWbjE2"}], "ticket_created_at": 29, "ticket_id": "8jHz9x7XZIjU4IK9"}]' 'lOLaZaMphKCqTq3E' --login_with_auth "Bearer foo"
matchmaking-get-mock-tickets-by-timestamp '{"timestamp_after": 98}' 'KNKgYazujsmSmylT' --login_with_auth "Bearer foo"
matchmaking-get-all-party-in-channel '1YtxIq73aMb48jIS' --login_with_auth "Bearer foo"
matchmaking-get-all-sessions-in-channel 'd97KORRhxSWLWLNf' --login_with_auth "Bearer foo"
matchmaking-add-user-into-session-in-channel '{"blocked_players": ["HRD3V15QaGGL46Lu", "xJF3sbeqWBdQuWfg", "BAKx27MSBqabUXOG"], "party_id": "kkoMUZn1YXj5zFZe", "user_id": "OCOR9NvBQZSJPOIK"}' 'rRBrYVzi9ui3lvoz' 'Tt9TsH7A0TuU2aL4' --login_with_auth "Bearer foo"
matchmaking-delete-session-in-channel 'bPkk11sys6GdkDco' 's5uVJ0BJfZ0jvA54' --login_with_auth "Bearer foo"
matchmaking-delete-user-from-session-in-channel 'CSqZFDsO1skRjOU1' 'SMfQVQa6blj9Rdd8' '5bdYUumPKVSZCg3X' --login_with_auth "Bearer foo"
matchmaking-get-stat-data 'Tc9vQe0dHJfF6KIu' --login_with_auth "Bearer foo"
matchmaking-public-get-messages --login_with_auth "Bearer foo"
matchmaking-public-get-all-matchmaking-channel --login_with_auth "Bearer foo"
matchmaking-public-get-single-matchmaking-channel 'vnRCa9JktyBdxkZK' --login_with_auth "Bearer foo"
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
    '{"deployment": "rEWFw9GYxjiiOQAD", "description": "77ci0vfWVZoRRMPi", "find_match_timeout_seconds": 5, "game_mode": "7HyKKz5nyI6ulKNK", "joinable": false, "max_delay_ms": 65, "region_expansion_range_ms": 1, "region_expansion_rate_ms": 71, "region_latency_initial_range_ms": 6, "region_latency_max_ms": 14, "rule_set": {"alliance": {"combination": {"alliances": [[{"max": 28, "min": 48, "name": "XJ7hLi6HweweRmyo"}, {"max": 31, "min": 58, "name": "dIn7QqXBDXJcrqKm"}, {"max": 60, "min": 37, "name": "woEV6tCdrxw1KOPh"}], [{"max": 42, "min": 5, "name": "vHuYrGWDK41uMOC0"}, {"max": 26, "min": 22, "name": "RvSoaGk4ktF5wnJD"}, {"max": 13, "min": 30, "name": "Q3WXiydCOInVolsr"}], [{"max": 23, "min": 59, "name": "U6jaGfsD1cfswmeF"}, {"max": 32, "min": 44, "name": "jcY5ZPkv90lyKSTW"}, {"max": 77, "min": 45, "name": "xSFZ0LpupEi5DbkV"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 44}, "max_number": 64, "min_number": 21, "player_max_number": 94, "player_min_number": 58}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 17, "min": 86, "name": "1t530Wj1WfzIvc3V"}, {"max": 24, "min": 90, "name": "lKKmVOaTS6xBbNrS"}, {"max": 96, "min": 11, "name": "AW2ak7ISDrBVg6Nu"}], [{"max": 60, "min": 48, "name": "ZvPb1kuUfNfUDe4g"}, {"max": 34, "min": 7, "name": "6PHEaqbzHvDDl1ji"}, {"max": 76, "min": 97, "name": "w3XMGBA6JXDpA1tI"}], [{"max": 58, "min": 47, "name": "5C0oaGouFu4hXONg"}, {"max": 95, "min": 45, "name": "jAdTn6xBhrciryLm"}, {"max": 78, "min": 35, "name": "wC1uuokpaIjL0Vxe"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 48, "role_flexing_second": 93}, "duration": 88, "max_number": 86, "min_number": 5, "player_max_number": 59, "player_min_number": 64}, {"combination": {"alliances": [[{"max": 29, "min": 66, "name": "9gxOgvDc7xMrRKvw"}, {"max": 11, "min": 70, "name": "dsUqjXVzW1QqxnWR"}, {"max": 68, "min": 38, "name": "tWlKxLpS8fLWoQ5n"}], [{"max": 43, "min": 67, "name": "JhatQPxR7dvBVC5z"}, {"max": 13, "min": 27, "name": "OKLTDmHe8c1eJ9sd"}, {"max": 9, "min": 36, "name": "7Ryt4udIv22M18uu"}], [{"max": 49, "min": 100, "name": "9xBomQFPFWy5cwNP"}, {"max": 72, "min": 49, "name": "6aFo0MVwDZCIXFNE"}, {"max": 78, "min": 42, "name": "3uWVRz3V7YbJM3bN"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 43, "role_flexing_second": 2}, "duration": 38, "max_number": 58, "min_number": 96, "player_max_number": 95, "player_min_number": 17}, {"combination": {"alliances": [[{"max": 32, "min": 47, "name": "Hqi33TcBGkc0HjUc"}, {"max": 27, "min": 62, "name": "kpU9oVzl2kBuLFXI"}, {"max": 10, "min": 59, "name": "jiMY4H34B6wVd8ip"}], [{"max": 4, "min": 0, "name": "KDwQeUWtjCC2UH6j"}, {"max": 52, "min": 64, "name": "MO3AfmOS5mQNyRPZ"}, {"max": 65, "min": 93, "name": "PNP56l1AT6OLKmZh"}], [{"max": 58, "min": 1, "name": "ZxxPPdPwOtEuWBSO"}, {"max": 63, "min": 19, "name": "gjse5kd6GEDo08yq"}, {"max": 76, "min": 63, "name": "TnJwc5XmkCuL5W4t"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 67, "role_flexing_second": 24}, "duration": 20, "max_number": 44, "min_number": 97, "player_max_number": 77, "player_min_number": 4}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 9, "flex_flat_step_range": 67, "flex_immunity_count": 36, "flex_range_max": 94, "flex_rate_ms": 48, "flex_step_max": 86, "force_authority_match": true, "initial_step_range": 56, "mmr_max": 86, "mmr_mean": 33, "mmr_min": 99, "mmr_std_dev": 8, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexing_rule": [{"attribute": "KYArAxnKBfBfDlrQ", "criteria": "QuAc10DjjwMv4vrI", "duration": 84, "reference": 0.3859167375140219}, {"attribute": "uU3u2HEG0qfKegvF", "criteria": "TD1sPykS8YLmwtYg", "duration": 99, "reference": 0.19343430192743183}, {"attribute": "JzJMSnJIIgsAVmaG", "criteria": "YxUX1B9oVuzG2CnY", "duration": 5, "reference": 0.8111665473591073}], "match_options": {"options": [{"name": "BF2g7TVtzYEHUodh", "type": "3iUfBthbepUCTWiZ"}, {"name": "1uqh7GAi4FEIu44u", "type": "83ZLRxYlYqlpq03B"}, {"name": "GdIk4oEogFVGR71r", "type": "JOBy6lsj1AKGBjnH"}]}, "matching_rule": [{"attribute": "maAu4YK87DYAWWcb", "criteria": "cbGWmKgE8CZ4AELr", "reference": 0.9220551427950482}, {"attribute": "lraa5v5P5Cj8hgFs", "criteria": "qHC9h5JPiMEtgKui", "reference": 0.5282346145895013}, {"attribute": "TYgwWv5XldL6rOVG", "criteria": "cRAn51rVAQSxp4qT", "reference": 0.4447843136268089}], "rebalance_enable": false, "sub_game_modes": {"Fj1umx4ItzkMJ7cu": {"alliance": {"combination": {"alliances": [[{"max": 6, "min": 69, "name": "f4r916GPrhn2etVI"}, {"max": 87, "min": 45, "name": "lJ80YJ41U4ooQ980"}, {"max": 50, "min": 14, "name": "wmg1pWpWit1QC7FK"}], [{"max": 9, "min": 51, "name": "0fnHUlmU1unGKM0t"}, {"max": 13, "min": 45, "name": "feWy47bbwMI4gGmv"}, {"max": 74, "min": 7, "name": "9gW596FwBNrFXt3T"}], [{"max": 53, "min": 50, "name": "uKBwBcD12ae6r3hH"}, {"max": 46, "min": 73, "name": "ya4NpdOzg3hr6ucH"}, {"max": 11, "min": 82, "name": "7dbh2iKNUl0qJqzo"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 90, "role_flexing_second": 0}, "max_number": 79, "min_number": 27, "player_max_number": 68, "player_min_number": 83}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 24, "min": 38, "name": "1PAiNjULsx4SnKNX"}, {"max": 77, "min": 3, "name": "MUaDSwwQlnNRZJHB"}, {"max": 92, "min": 39, "name": "B4fZWEFIZs28Ff1k"}], [{"max": 32, "min": 89, "name": "1Zktx3N7WNMYIfcD"}, {"max": 74, "min": 25, "name": "bLu8pnK34oA1keYX"}, {"max": 72, "min": 86, "name": "vtggDdXjbdjMBahF"}], [{"max": 7, "min": 5, "name": "GMTcqnWrIprOv0BJ"}, {"max": 27, "min": 92, "name": "nDJlmD1iEokbUiYz"}, {"max": 57, "min": 87, "name": "Q5pu9PutLf6IrvZo"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 83, "role_flexing_second": 37}, "duration": 91, "max_number": 77, "min_number": 61, "player_max_number": 35, "player_min_number": 100}, {"combination": {"alliances": [[{"max": 96, "min": 54, "name": "RGWUzPAE6SdV4D5j"}, {"max": 11, "min": 29, "name": "tRl9rZmtQUvro8TW"}, {"max": 45, "min": 64, "name": "XWsz9TVmdMKEohKz"}], [{"max": 42, "min": 44, "name": "MYDUTLBeCidXjuGg"}, {"max": 47, "min": 47, "name": "8ncXejmeZtzT0qj0"}, {"max": 24, "min": 7, "name": "tsqfiZrthVvyX0OC"}], [{"max": 75, "min": 47, "name": "DJE3RMUddwSSgxCu"}, {"max": 16, "min": 51, "name": "CGNgaJmuALlMQl9R"}, {"max": 76, "min": 98, "name": "rthbfp0VgweLlT2s"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 71, "role_flexing_second": 93}, "duration": 32, "max_number": 28, "min_number": 67, "player_max_number": 59, "player_min_number": 4}, {"combination": {"alliances": [[{"max": 86, "min": 94, "name": "Y7kKU2u06Q4veujx"}, {"max": 40, "min": 42, "name": "yQENvJrBCqeg67d4"}, {"max": 89, "min": 43, "name": "OqO4U0bitNQLzwRo"}], [{"max": 99, "min": 87, "name": "nR0AbkCPY70Fmvvi"}, {"max": 98, "min": 2, "name": "IBbcujF8Vk5qb8Nh"}, {"max": 99, "min": 99, "name": "XdBaKSLCgOOPXM6X"}], [{"max": 94, "min": 47, "name": "Uh2dJ90yqHDNacl4"}, {"max": 64, "min": 23, "name": "G6Dl5TFwBY6HKXAb"}, {"max": 23, "min": 22, "name": "TOpyiuvvQUm29Iac"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 61, "role_flexing_second": 90}, "duration": 93, "max_number": 77, "min_number": 0, "player_max_number": 0, "player_min_number": 22}], "name": "A643nTMtXSAyejnn"}, "y0Ju13b6o5uB2XM6": {"alliance": {"combination": {"alliances": [[{"max": 71, "min": 73, "name": "Hy7EEvHyLmcvrZZO"}, {"max": 7, "min": 4, "name": "we1x8RjU6Bi8JXE5"}, {"max": 67, "min": 38, "name": "JovgWSRxZ8N4UQ2f"}], [{"max": 14, "min": 82, "name": "3V1o2x0hL5DuBDqM"}, {"max": 51, "min": 78, "name": "IAzWze94MEdJFAy2"}, {"max": 73, "min": 94, "name": "AupATO8uXsqVpdiW"}], [{"max": 29, "min": 34, "name": "8SjDAM0Riw8wLYW3"}, {"max": 27, "min": 30, "name": "4F3LD1EDwBXw5uBY"}, {"max": 8, "min": 87, "name": "VyC4qvWjVac1cQvS"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 14, "role_flexing_second": 1}, "max_number": 93, "min_number": 77, "player_max_number": 81, "player_min_number": 70}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 51, "min": 95, "name": "AVYymOuhCkZu4htr"}, {"max": 38, "min": 11, "name": "NFRJIhFXR2dYprPm"}, {"max": 3, "min": 85, "name": "puptECGd5cdXC2Se"}], [{"max": 37, "min": 44, "name": "c6y68whNBYl9iCqf"}, {"max": 100, "min": 16, "name": "rqGOQny4ij4ysYPo"}, {"max": 27, "min": 91, "name": "b59gQffkNOmubxEJ"}], [{"max": 35, "min": 87, "name": "2qEAuJbpZSrcbc4L"}, {"max": 100, "min": 18, "name": "fKaY5c1tP5TDuI5f"}, {"max": 25, "min": 41, "name": "4KC07CnsZe32hqEc"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 63, "role_flexing_second": 53}, "duration": 48, "max_number": 1, "min_number": 80, "player_max_number": 9, "player_min_number": 56}, {"combination": {"alliances": [[{"max": 3, "min": 83, "name": "ckvoaJYdMqGegcg3"}, {"max": 9, "min": 51, "name": "RvBZXN3cjIXmFWRJ"}, {"max": 27, "min": 18, "name": "j8xN7HDPTUEDPN1K"}], [{"max": 2, "min": 95, "name": "diC9ZDj4E4mv12FN"}, {"max": 49, "min": 82, "name": "poOLl13j84P0Kqir"}, {"max": 72, "min": 54, "name": "PkMFtsnFfz8Ew0X8"}], [{"max": 11, "min": 57, "name": "gmPGaHP5SVPvRLiD"}, {"max": 17, "min": 37, "name": "mNHb6Lx8eq8SGNwE"}, {"max": 87, "min": 83, "name": "eRj17xGhaBKoUfiH"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 79, "role_flexing_second": 58}, "duration": 90, "max_number": 49, "min_number": 11, "player_max_number": 86, "player_min_number": 38}, {"combination": {"alliances": [[{"max": 97, "min": 75, "name": "JetWsokvx3BHuTEc"}, {"max": 52, "min": 42, "name": "r9KjQ3ttz8MTBt1x"}, {"max": 22, "min": 70, "name": "mcjSuz9vbNStqPtQ"}], [{"max": 24, "min": 94, "name": "QN6eKAGiZFCftT0R"}, {"max": 100, "min": 62, "name": "64j0HUONscofwYLQ"}, {"max": 5, "min": 61, "name": "pOaAVLDB4k3Jwkda"}], [{"max": 48, "min": 25, "name": "R7GJpYmuYCPG181q"}, {"max": 83, "min": 67, "name": "RLkP5hc2Fh04JTsq"}, {"max": 60, "min": 97, "name": "TynCewqJligLlRxO"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 16, "role_flexing_second": 74}, "duration": 5, "max_number": 51, "min_number": 22, "player_max_number": 70, "player_min_number": 58}], "name": "zxsBFrUs9BYp6TgC"}, "ejBd5o7iTST7R3Kb": {"alliance": {"combination": {"alliances": [[{"max": 2, "min": 78, "name": "QGERMNpqWb51y5RU"}, {"max": 52, "min": 57, "name": "vMfTkPy0fGvTGgfL"}, {"max": 76, "min": 98, "name": "sg0b1Bq78cE5O5pm"}], [{"max": 86, "min": 81, "name": "nbiPJ9j4vxmbH3rV"}, {"max": 1, "min": 95, "name": "auufxkPHElug48Tg"}, {"max": 11, "min": 1, "name": "Nu0rqXUOyToLPIRE"}], [{"max": 66, "min": 22, "name": "IKlJt3EP9kKwkENQ"}, {"max": 79, "min": 97, "name": "ki8jvc3P8Gwjg3IO"}, {"max": 69, "min": 18, "name": "0SDHgYKqxJiFJdrm"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 29, "role_flexing_second": 43}, "max_number": 18, "min_number": 15, "player_max_number": 55, "player_min_number": 53}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 27, "min": 14, "name": "Yi5UWs3tYlYeMoCi"}, {"max": 26, "min": 81, "name": "JySocRvUWDOrFZKP"}, {"max": 82, "min": 19, "name": "oN9AWtLK9TFgi9j2"}], [{"max": 18, "min": 80, "name": "BPAp6EPb988NzxrD"}, {"max": 76, "min": 38, "name": "VpULjjiw3NeVG4DJ"}, {"max": 18, "min": 93, "name": "9DaMrc0WFgKjE945"}], [{"max": 47, "min": 58, "name": "qUxKDc84OMIzvTSc"}, {"max": 7, "min": 98, "name": "bKBsAyJMz4ILNDvh"}, {"max": 56, "min": 27, "name": "4Eoes9a6XaJeRbzT"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 19, "role_flexing_second": 13}, "duration": 49, "max_number": 79, "min_number": 64, "player_max_number": 14, "player_min_number": 43}, {"combination": {"alliances": [[{"max": 7, "min": 48, "name": "f3juXW4JprIb3CJC"}, {"max": 54, "min": 73, "name": "tvSG8Cfa9dzOJDGC"}, {"max": 94, "min": 68, "name": "EHxsDxeR6d7r1SQw"}], [{"max": 52, "min": 49, "name": "JfMpPrSqYypRUnq5"}, {"max": 30, "min": 23, "name": "4ETeCUYG9ccTt7Wx"}, {"max": 47, "min": 14, "name": "8OQ13t3uTw6zQuoZ"}], [{"max": 4, "min": 93, "name": "XQpoTOxe8y1jorNs"}, {"max": 14, "min": 93, "name": "9ZKYCKoISyXtHzoW"}, {"max": 67, "min": 71, "name": "dYohxMp3uOQIybqW"}]], "has_combination": false, "role_flexing_enable": false, "role_flexing_player": 55, "role_flexing_second": 75}, "duration": 73, "max_number": 14, "min_number": 32, "player_max_number": 65, "player_min_number": 75}, {"combination": {"alliances": [[{"max": 99, "min": 84, "name": "KlbYHtbPtaxvagSl"}, {"max": 31, "min": 65, "name": "GgVTF6VeDAPOGBww"}, {"max": 8, "min": 50, "name": "mRkCEcfHDCdl59Wp"}], [{"max": 56, "min": 55, "name": "gyCd5vjkfz3eR4Dt"}, {"max": 80, "min": 31, "name": "cIoByk9fxtvsgeAx"}, {"max": 30, "min": 60, "name": "57nKAbZpsbJ4Iu5K"}], [{"max": 73, "min": 80, "name": "0ynxGBlacDCdFe8A"}, {"max": 94, "min": 49, "name": "UqVxcSthrpnMUBsn"}, {"max": 95, "min": 19, "name": "fuQIcSbUt5UGkInF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 41, "role_flexing_second": 4}, "duration": 96, "max_number": 34, "min_number": 37, "player_max_number": 7, "player_min_number": 39}], "name": "cQwVEtAr5kKKAo9M"}}, "use_newest_ticket_for_flexing": false}, "session_queue_timeout_seconds": 59, "social_matchmaking": false, "ticket_observability_enable": true, "use_sub_gamemode": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateChannelHandler' test.out

#- 6 GetMatchPoolMetric
$PYTHON -m $MODULE 'matchmaking-get-match-pool-metric' \
    'ftC3sCS8CpLCqPD9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetMatchPoolMetric' test.out

#- 7 DeleteChannelHandler
$PYTHON -m $MODULE 'matchmaking-delete-channel-handler' \
    'CeDEdCnnL6Kt1Bjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteChannelHandler' test.out

#- 8 StoreMatchResults
$PYTHON -m $MODULE 'matchmaking-store-match-results' \
    '{"match_id": "3b8QM8Rr45ULqXQg", "players": [{"results": [{"attribute": "vwD3PsKDJiWxQBwa", "value": 0.7216998667860678}, {"attribute": "7rDBf2S54phbdyGD", "value": 0.3194948678691161}, {"attribute": "47f9GWRlE9hqz6rj", "value": 0.4812739500038943}], "user_id": "No4rhjxUdMM83Wek"}, {"results": [{"attribute": "qfWv04vvn9bk5qr8", "value": 0.2592616378753956}, {"attribute": "s2mqtnGAqXUjNypF", "value": 0.939163580450365}, {"attribute": "MMqWpdEJsPoaIbYz", "value": 0.9815783340775994}], "user_id": "cK5jlpJdre5ur6yv"}, {"results": [{"attribute": "WJDdvM7T7PX2vamI", "value": 0.705113699425272}, {"attribute": "ZHzsIYOCUoiCXNjr", "value": 0.0618771829057263}, {"attribute": "QL2jdx1eIba1sB0H", "value": 0.2958125433976866}], "user_id": "J06DzfbzRYt4OVUy"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'StoreMatchResults' test.out

#- 9 Rebalance
$PYTHON -m $MODULE 'matchmaking-rebalance' \
    '{"match_id": "umBeIqdQGZC5kM03"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'Rebalance' test.out

#- 10 QueueSessionHandler
$PYTHON -m $MODULE 'matchmaking-queue-session-handler' \
    '{"channel": "HHijsQRj7N8IAjms", "client_version": "onjj0ZR50BQ1U6aF", "deployment": "D3O2kXQSc58zgZVl", "error_code": 3, "error_message": "gIF7v3qbZu9M3Oxq", "game_mode": "VAT4H1lRZ9Z1JBrH", "is_mock": "RzEOtIxzPqb6n73m", "joinable": false, "match_id": "eFPghqamSc5y0X48", "matching_allies": [{"matching_parties": [{"first_ticket_created_at": 9, "party_attributes": {"ulpB8HZUtVVaJCiL": {}, "gKOwrSfWhT5B4Wed": {}, "opzwSluBtRFPKThy": {}}, "party_id": "GnbjmPDKFS6u9FHu", "party_members": [{"extra_attributes": {"v1M3qfch4SqIV6LQ": {}, "PHlaeYl4csFq65cU": {}, "66yJaj4ovoKWE4EW": {}}, "user_id": "0sw8v5peiuxoBJAT"}, {"extra_attributes": {"auyD3XCXVMiyEvMf": {}, "9yilUEujk6oqYo1H": {}, "QYTFzwdOMdupwD4O": {}}, "user_id": "3uNbcIDcIyvZbOy1"}, {"extra_attributes": {"T4hfwkuVykH4Rpfm": {}, "jIXFGZ5PKdbabJIk": {}, "Nnt9P1Tkm08luh4d": {}}, "user_id": "pPRMDbUXBWTbpAog"}], "ticket_created_at": 66, "ticket_id": "NeJnBurh54CWbYb0"}, {"first_ticket_created_at": 85, "party_attributes": {"FI0GKwJ3vfXlsAMy": {}, "2Zp2UAGxHnmSxvkG": {}, "9UR5q9neoW6JBcGp": {}}, "party_id": "9Rx2RfcRhXpmeeHd", "party_members": [{"extra_attributes": {"vphas9S7ivHEoLbU": {}, "MM47f1UreUpxEkXI": {}, "bE1ETzRJZKMavu4U": {}}, "user_id": "l2IaieEbPSE7TGke"}, {"extra_attributes": {"HsYsW9oGBN1pYMBw": {}, "bPZTlMlUvFEiGprc": {}, "NSQ9kEeXBZ6FVrBz": {}}, "user_id": "yhyhoS6a9oe0JaXF"}, {"extra_attributes": {"pff28uYbe4Cf2HEH": {}, "vVevhISjbtBJUK5f": {}, "E3OufPSX3PdOU2V9": {}}, "user_id": "yw94oa8UJ34TIedV"}], "ticket_created_at": 73, "ticket_id": "HyoX4VnO2LpBU08w"}, {"first_ticket_created_at": 11, "party_attributes": {"Z58aDllwzTRHak1M": {}, "Xxj7Esrg7900nml5": {}, "BidsK9dCEzhVnOv0": {}}, "party_id": "PQbVIaKiHfoeorY7", "party_members": [{"extra_attributes": {"A1otGFyv2SMjbEr5": {}, "0qGdCZIc6EFqBKxb": {}, "S7Q2OgRucL1jwRXz": {}}, "user_id": "fjDZZBmOau6syme0"}, {"extra_attributes": {"6c6SKLc2mEC3IXl5": {}, "XCbkOfHaGr5kdazl": {}, "ypvt6lSLfU7HByGX": {}}, "user_id": "PMqxj4hBgVY3YAxZ"}, {"extra_attributes": {"LKbcOdyjqf6Q4oiw": {}, "oJcaRMEb15LBlTVu": {}, "fc5ZyODR2NVyn4PR": {}}, "user_id": "qf3eRbZqBAoKGcVC"}], "ticket_created_at": 6, "ticket_id": "UjyXAn3bWQF6QcAi"}]}, {"matching_parties": [{"first_ticket_created_at": 73, "party_attributes": {"v6EJtl5xWnsb8oWq": {}, "94RImNWVIJnhhwFD": {}, "V1VitaomvWTzdsW4": {}}, "party_id": "N70wYS4Kj7Yi2Vvo", "party_members": [{"extra_attributes": {"QNW8Yc481dYdvGxJ": {}, "AMDRA1LF7jdWlekF": {}, "wO94VBCV9qJhWva2": {}}, "user_id": "FPBujX0geYCpGJM4"}, {"extra_attributes": {"sqsPNJMiZXXOFwmG": {}, "WAvNF0Z0GkwxUNYy": {}, "NwGiKrknH0Y5mrQg": {}}, "user_id": "LC6D2qsFiQHglUQM"}, {"extra_attributes": {"Zi5WjMZfOadpgegC": {}, "UjTdi1Ehr8OtqpNJ": {}, "9R8TuNy4ejmVA3vM": {}}, "user_id": "CsGyPd12B8QNUz0h"}], "ticket_created_at": 64, "ticket_id": "ZdhtnKu9oTc8pVki"}, {"first_ticket_created_at": 51, "party_attributes": {"AXEEsL5D0oiFchQn": {}, "Veq3g2AB2WIRUQma": {}, "uIY5HXCZ0W4XmWP0": {}}, "party_id": "HzSdiylLhVYszm8x", "party_members": [{"extra_attributes": {"Y33OQbumu2QHLyZN": {}, "uysyM4OfCzdQCXMA": {}, "Wnf87YPNOe9Eevf1": {}}, "user_id": "fhMg1E2k7QLFrVgt"}, {"extra_attributes": {"X7y0fPOieDCow2zX": {}, "yFFVpM87yqEwEacQ": {}, "MTlqN4LKkxJ5v3SB": {}}, "user_id": "afnKNiMPbFkFGA85"}, {"extra_attributes": {"W3HJkqgS2B37wwoP": {}, "YOHiIsxmsLBPBJuN": {}, "LnWRrtW870qD88Zc": {}}, "user_id": "duZSe7W20UZcDaiq"}], "ticket_created_at": 21, "ticket_id": "nEZ7PyhqFJkDClOs"}, {"first_ticket_created_at": 75, "party_attributes": {"z70tRVLMlHi8i9gO": {}, "VqajUWrgEsWDtaKz": {}, "n8dZwnnGeZsZVgbP": {}}, "party_id": "zPFbrOMZMgWkFN7T", "party_members": [{"extra_attributes": {"pkx6GcfyOg6ZUrrp": {}, "9ubg9mndW2JKmQaf": {}, "Us2bxYztOEyVbKIf": {}}, "user_id": "1ZbzgUwd8DHoCQyk"}, {"extra_attributes": {"mXHYmkRlg7gYs6un": {}, "PYQ9jNQN1di1ldhO": {}, "h6HvjnYuV7NfC4A2": {}}, "user_id": "ODiZhbfb8QqCyK1X"}, {"extra_attributes": {"H9D6vl5eFdFfgK46": {}, "GjCWaP8huTmnq3FG": {}, "Qn3Ahu5wxq6oJq4m": {}}, "user_id": "ChmQHQhO9IKBXDFQ"}], "ticket_created_at": 11, "ticket_id": "2D6gNClk9c87hosa"}]}, {"matching_parties": [{"first_ticket_created_at": 85, "party_attributes": {"JBYSeMuJfQecutjS": {}, "029BiJWOG1m7MKcl": {}, "r5igjNTVItrH2X78": {}}, "party_id": "hxJgaVfw5Vnyq8Oz", "party_members": [{"extra_attributes": {"TE89WDNoMcOmbfJr": {}, "CJQIj1haAosKglqa": {}, "CXE9ytpIO8btO3Ow": {}}, "user_id": "NEGSW5TaW4to7QCY"}, {"extra_attributes": {"2NGGvi9kg3rMIzNm": {}, "hJTNQjKlwjfJ3TJ2": {}, "xVpge70WsLfgbZie": {}}, "user_id": "RvJI5sT9DH3DfLCv"}, {"extra_attributes": {"8q4Thmq09bBgPAYx": {}, "rBE9jlnTgtgW33wD": {}, "wD9RKvQX4yFQFdrR": {}}, "user_id": "oM6FoqCYw7AlxO6q"}], "ticket_created_at": 6, "ticket_id": "Uvk0LEi26Ls7mjRx"}, {"first_ticket_created_at": 81, "party_attributes": {"SlCQMDji329PfVrv": {}, "MEPtpsSNcpK1QkB2": {}, "Sy8Ww79LVeVskqeU": {}}, "party_id": "B7RSayqGFguhh3bv", "party_members": [{"extra_attributes": {"adRthdbVApebRA09": {}, "rW8i8krFWJhe03co": {}, "RFok5d3AyGrZO8Gu": {}}, "user_id": "oXNSoVEBG7VbBPUW"}, {"extra_attributes": {"ipz9C05YabFX4FCK": {}, "5ucTFsAFzaO3yJpA": {}, "3KMxBlrRytER1qdT": {}}, "user_id": "elFAadM9y66Drf4S"}, {"extra_attributes": {"SGGt3MiBKohow3kK": {}, "oaP1K4CDuH1mMIfO": {}, "CDyVAHrHncR5dShq": {}}, "user_id": "iBUI9esSsXegSEhr"}], "ticket_created_at": 85, "ticket_id": "qWsGA76yxi0QzZWf"}, {"first_ticket_created_at": 25, "party_attributes": {"A9VOA8H9VeHv0L2A": {}, "cm960EYQEuGJVl8x": {}, "s1WId9WlalqshF9R": {}}, "party_id": "h2o7GCQGPCxwEdky", "party_members": [{"extra_attributes": {"uT3MgzReRq0112IS": {}, "ArROIodcmM6v2AEo": {}, "zWWaYvBLE46bpuJi": {}}, "user_id": "p8JyxJ39vrtuWWrq"}, {"extra_attributes": {"TZbSqBSKp8AmgwhY": {}, "zk33J34fiTxK63OH": {}, "pnUCGBVfpctNFUsU": {}}, "user_id": "Q6ZXQcb2o1J5euLA"}, {"extra_attributes": {"bBgejqc0apxqZ209": {}, "BySn8aUaGlAyvIsl": {}, "t7N1qcxKs4nlf1Mf": {}}, "user_id": "qUZXkjHvcUOTlxNf"}], "ticket_created_at": 100, "ticket_id": "9pefgFIiJssShBKs"}]}], "namespace": "QjXvfQgQDt6ce8ND", "party_attributes": {"MErA82FrR1GSogke": {}, "wIzTOqKkcjRh3l2g": {}, "AJOTCbx7J3gNLIlT": {}}, "party_id": "k3Bpclrk4hIRn0zn", "queued_at": 71, "region": "4LsGP6KLPXkvUv2X", "server_name": "iXaBzsmaxjTZPlLi", "status": "tytGka7Kv5TacQKF", "ticket_id": "4OlRGdmXxETLEQrr", "updated_at": "1999-10-24T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QueueSessionHandler' test.out

#- 11 DequeueSessionHandler
$PYTHON -m $MODULE 'matchmaking-dequeue-session-handler' \
    '{"match_id": "3Xit6boOLGCcg16D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DequeueSessionHandler' test.out

#- 12 QuerySessionHandler
$PYTHON -m $MODULE 'matchmaking-query-session-handler' \
    'qwdQPQ9HkSSV8e1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'QuerySessionHandler' test.out

#- 13 UpdatePlayTimeWeight
$PYTHON -m $MODULE 'matchmaking-update-play-time-weight' \
    '{"playtime": 13, "userID": "cZPk82GF3eTC0vzZ", "weight": 0.74595057632391}' \
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
    'Dj9dzGgGVxo9OHgf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetSingleMatchmakingChannel' test.out

#- 19 UpdateMatchmakingChannel
$PYTHON -m $MODULE 'matchmaking-update-matchmaking-channel' \
    '{"deployment": "HumyfuBNisecYbcO", "description": "pR45VDlvSc0Mr7Im", "findMatchTimeoutSeconds": 46, "joinable": true, "max_delay_ms": 69, "region_expansion_range_ms": 47, "region_expansion_rate_ms": 66, "region_latency_initial_range_ms": 46, "region_latency_max_ms": 34, "ruleSet": {"alliance": {"combination": {"alliances": [[{"max": 93, "min": 83, "name": "oOnq9U5lyW89Xwt3"}, {"max": 46, "min": 26, "name": "Dcmtfh50eObbrmgj"}, {"max": 15, "min": 34, "name": "WK0x0ZidAJ1CU1eD"}], [{"max": 95, "min": 77, "name": "mU96FLEak0mJqjRY"}, {"max": 24, "min": 20, "name": "dcTpdeCD9XPRi4bA"}, {"max": 86, "min": 77, "name": "rb21A2E9pX0BWCMq"}], [{"max": 86, "min": 38, "name": "bvXlDhG7BrorbKIK"}, {"max": 42, "min": 36, "name": "OXJPm5ztrr09CDA8"}, {"max": 71, "min": 20, "name": "a9YdFNtRVSO0js0h"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 26, "role_flexing_second": 91}, "maxNumber": 28, "minNumber": 53, "playerMaxNumber": 66, "playerMinNumber": 6}, "alliance_flexing_rule": [{"combination": {"alliances": [[{"max": 31, "min": 44, "name": "zgUxAogcnGkXk17Q"}, {"max": 86, "min": 52, "name": "kJHRhmLKQuQVFSKi"}, {"max": 40, "min": 24, "name": "PCFxfeoW2NdSWzOX"}], [{"max": 19, "min": 83, "name": "MKMaxQ1QyJCpKedh"}, {"max": 41, "min": 16, "name": "zI7G9NCKKXu1bqI2"}, {"max": 80, "min": 37, "name": "5PmXfKnQ7BYGjCUD"}], [{"max": 79, "min": 47, "name": "OrbmoRvWnfmGFy0e"}, {"max": 95, "min": 28, "name": "UDEOF6gp5UfmjtiV"}, {"max": 3, "min": 9, "name": "qJnZcrqrPye7fCwi"}]], "has_combination": false, "role_flexing_enable": true, "role_flexing_player": 23, "role_flexing_second": 94}, "duration": 59, "max_number": 45, "min_number": 0, "player_max_number": 71, "player_min_number": 33}, {"combination": {"alliances": [[{"max": 65, "min": 24, "name": "b5RpMwhWPtndriXU"}, {"max": 28, "min": 24, "name": "59tEGm9NYeUT5P0n"}, {"max": 49, "min": 97, "name": "8TqSZdZ5C8mFI9Tn"}], [{"max": 44, "min": 52, "name": "iCBuzUUwyI6Vtd4v"}, {"max": 36, "min": 22, "name": "eMc9fBoU3RHNDFjL"}, {"max": 75, "min": 19, "name": "Frepy56eW1kmb15Q"}], [{"max": 9, "min": 78, "name": "IQF51c4MqJzDSvEL"}, {"max": 13, "min": 23, "name": "Be6dboSdhkBzAzPk"}, {"max": 39, "min": 9, "name": "PBNHKPx62tHxDb06"}]], "has_combination": true, "role_flexing_enable": true, "role_flexing_player": 44, "role_flexing_second": 42}, "duration": 68, "max_number": 13, "min_number": 54, "player_max_number": 23, "player_min_number": 91}, {"combination": {"alliances": [[{"max": 31, "min": 65, "name": "UxvF2uLXWilRD7HD"}, {"max": 13, "min": 77, "name": "VLGgK8aVSCN6oCET"}, {"max": 87, "min": 27, "name": "8gIDRdD2wwMXwKVX"}], [{"max": 67, "min": 10, "name": "PhEJsc7rZpxaPHc9"}, {"max": 36, "min": 60, "name": "8eToFmkHJ6BPOKFL"}, {"max": 48, "min": 71, "name": "hEguCqlMHiQN3HWJ"}], [{"max": 46, "min": 42, "name": "9zIWsiP2JQ24meDr"}, {"max": 46, "min": 86, "name": "EuTyM2qohglzO8AE"}, {"max": 23, "min": 55, "name": "8qVceS9UX48dKPCF"}]], "has_combination": true, "role_flexing_enable": false, "role_flexing_player": 34, "role_flexing_second": 51}, "duration": 70, "max_number": 18, "min_number": 63, "player_max_number": 90, "player_min_number": 50}], "bucket_mmr_rule": {"disable_authority": false, "flex_authority_count": 17, "flex_flat_step_range": 82, "flex_immunity_count": 81, "flex_range_max": 52, "flex_rate_ms": 81, "flex_step_max": 50, "force_authority_match": true, "initial_step_range": 2, "mmr_max": 93, "mmr_mean": 67, "mmr_min": 6, "mmr_std_dev": 16, "override_mmr_data": true, "use_bucket_mmr": false, "use_flat_flex_step": true}, "flexingRules": [{"attribute": "8GlU8962e6gtn5pU", "criteria": "ARJM1T8QwMNOAzXm", "duration": 50, "reference": 0.0049558992850476935}, {"attribute": "jE2gjooiDnc1NUb5", "criteria": "1lEgUwQ9tkWaMOH4", "duration": 59, "reference": 0.45423785693918284}, {"attribute": "AT7cBP0918JaEBQB", "criteria": "P766LUnBBR84iAO7", "duration": 38, "reference": 0.5915956306982082}], "match_options": {"options": [{"name": "3x76U1EIcklttmrp", "type": "gF5szl0sMY8es36r"}, {"name": "1FgR70eNLHkVrEFd", "type": "8xArWJuCAIfNBSHg"}, {"name": "pFNw9K9pmAIc6VSf", "type": "E9nbE2PMv12ZSRJk"}]}, "matchingRules": [{"attribute": "ujxbCu1HFaj6Vxs3", "criteria": "GuA4S1dS7H7yIS7b", "reference": 0.9214482104098272}, {"attribute": "TSDRIoMg7Dc5APzf", "criteria": "zXDELJFaIaEMW5bh", "reference": 0.5793716341807825}, {"attribute": "yL72WDyhBsCCbnfi", "criteria": "hnXKxGxaupnTTq9i", "reference": 0.11617759925702753}], "sub_game_modes": {}, "use_newest_ticket_for_flexing": false}, "sessionQueueTimeoutSeconds": 75, "socialMatchmaking": true, "ticket_observability_enable": false, "use_sub_gamemode": true}' \
    'SHQh8I9xk3sFl0cb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMatchmakingChannel' test.out

#- 20 CleanAllMocks
$PYTHON -m $MODULE 'matchmaking-clean-all-mocks' \
    'uCRM69XKkLwioRaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CleanAllMocks' test.out

#- 21 GetAllMockMatches
$PYTHON -m $MODULE 'matchmaking-get-all-mock-matches' \
    'nWhlh80BhYe2fJDS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetAllMockMatches' test.out

#- 22 GetMockMatchesByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-matches-by-timestamp' \
    '{"timestamp_after": 32}' \
    'T75Q4ulonMFjmYqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetMockMatchesByTimestamp' test.out

#- 23 GetAllMockTickets
$PYTHON -m $MODULE 'matchmaking-get-all-mock-tickets' \
    '1wJhfogWg2Apm0sU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetAllMockTickets' test.out

#- 24 CreateMockTickets
$PYTHON -m $MODULE 'matchmaking-create-mock-tickets' \
    '{"attribute_name": "y18aWn65Co0vdCk8", "count": 38, "mmrMax": 0.5749045106285107, "mmrMean": 0.25433831616376423, "mmrMin": 0.006915372433299094, "mmrStdDev": 0.8601726868546794}' \
    '9GJDK46Eehx7xasq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateMockTickets' test.out

#- 25 BulkCreateMockTickets
$PYTHON -m $MODULE 'matchmaking-bulk-create-mock-tickets' \
    '[{"first_ticket_created_at": 80, "party_attributes": {"SrEdN2tmGuX6r0gB": {}, "VUUeKKlPKtE6gnYx": {}, "mkmCWbs5qugklBUS": {}}, "party_id": "6uwWrCQt86Jrg8tL", "party_members": [{"extra_attributes": {"AJWpcyNkUvqn6eXr": {}, "6FNbKJ05Orya6LSS": {}, "UlugIAknXcSaVYcA": {}}, "user_id": "Yp7qSiDvsfMUOpWv"}, {"extra_attributes": {"46sXvpOjrpRo4mYr": {}, "CeQUnYoID2UqO0iA": {}, "XA9dB4ib8HDOJ8TN": {}}, "user_id": "iP8KgEAj3dbRTI0i"}, {"extra_attributes": {"6dO3zkbDseh4tJdo": {}, "GcwMBmegqVUaWMJB": {}, "jrV0p9A7tcHrV0Mb": {}}, "user_id": "JGr4drgkDuWS05m0"}], "ticket_created_at": 32, "ticket_id": "Iw37pKOLrF5i3gr3"}, {"first_ticket_created_at": 59, "party_attributes": {"KMJAf6AgbiEDMfCc": {}, "kWogE5gcfF8AMGZ2": {}, "FBS93Mg6TKwdRMra": {}}, "party_id": "DLrwh3d0ykRGkgqU", "party_members": [{"extra_attributes": {"NIbJMJ9ABbKVWO2Y": {}, "EDiqkwKbpdk7wlDn": {}, "gNiPPjpSAlZwFGpe": {}}, "user_id": "a5ObBB49Km4ClIQm"}, {"extra_attributes": {"kIdLCvNhZ6P8aqZ2": {}, "yfrC1V7ZpJZPHCMq": {}, "vcYmeDLYEzs2SQUd": {}}, "user_id": "Kr6vgqkjycqclNlB"}, {"extra_attributes": {"ORlC8ZkjsxYtgxpl": {}, "HTPLzynjFZgF3erw": {}, "7UsyHq4bBb0n1JhP": {}}, "user_id": "US8BRPGV9n769zLJ"}], "ticket_created_at": 7, "ticket_id": "QnKzDgDAtqE3kuyb"}, {"first_ticket_created_at": 47, "party_attributes": {"CxZjKf8NA4cGUaDf": {}, "y9XnH2r0EKrk5Vln": {}, "KsWCPccAFn5CEPoH": {}}, "party_id": "6opK5DSO8JyX4IE1", "party_members": [{"extra_attributes": {"z3rDwZ1HKsOpyq8a": {}, "gQuz86nc6jLF9DIW": {}, "2ncJJKpqmgvUTr8X": {}}, "user_id": "AtpOqUQxzqJZiWi3"}, {"extra_attributes": {"KQffT5Tn61A1xW6o": {}, "kIqmd87ir9op4YfG": {}, "Tno5oHzqY3DgykA8": {}}, "user_id": "zBJX0rkOHUkY5aSl"}, {"extra_attributes": {"qhYoSXbn6l5xAzc1": {}, "nc3eFm950dtVAo7w": {}, "4e3v5mh6Rum5pbgE": {}}, "user_id": "t39uJQpgEtchTe3n"}], "ticket_created_at": 39, "ticket_id": "sGOkzxVt15LKmkQ7"}]' \
    'YBhsOuJ0ypkkt2G4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkCreateMockTickets' test.out

#- 26 GetMockTicketsByTimestamp
$PYTHON -m $MODULE 'matchmaking-get-mock-tickets-by-timestamp' \
    '{"timestamp_after": 8}' \
    'awjiZPMoZZcyGEHx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetMockTicketsByTimestamp' test.out

#- 27 GetAllPartyInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-party-in-channel' \
    'AKDQher3usApPdJP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetAllPartyInChannel' test.out

#- 28 GetAllSessionsInChannel
$PYTHON -m $MODULE 'matchmaking-get-all-sessions-in-channel' \
    'n9eIdhIBvTTupABJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllSessionsInChannel' test.out

#- 29 AddUserIntoSessionInChannel
$PYTHON -m $MODULE 'matchmaking-add-user-into-session-in-channel' \
    '{"blocked_players": ["4RwH3EdKmYtbqQHN", "fIZwrMxf3EnzZVnk", "LT0Lb85nmpdN26BY"], "party_id": "5YI0jeO2zMDSy4ky", "user_id": "qyKgrtEPdXXlt8ge"}' \
    'CdiXu3iNvn7vLZ7h' \
    '6alhJNGZF07lsPP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AddUserIntoSessionInChannel' test.out

#- 30 DeleteSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-session-in-channel' \
    'OfHbXzWnVO2U4uyz' \
    'Zo1rj0ZrLQjk4VoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'DeleteSessionInChannel' test.out

#- 31 DeleteUserFromSessionInChannel
$PYTHON -m $MODULE 'matchmaking-delete-user-from-session-in-channel' \
    'fIksth24cZBpdDFf' \
    'vzeU5iqhx6zv7EUR' \
    'TNIoG1DBdoKH6sRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserFromSessionInChannel' test.out

#- 32 GetStatData
$PYTHON -m $MODULE 'matchmaking-get-stat-data' \
    'mmfwUZLZZS7snx0Q' \
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
    '2Gd8m7Y3wiNloJfe' \
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
