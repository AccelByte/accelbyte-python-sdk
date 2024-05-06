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
session-get-healthcheck-info --login_with_auth "Bearer foo"
session-get-healthcheck-info-v1 --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"regionRetryMapping": {"EAxcVpFrttufHIRd": ["H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b"], "BZLCXLx8bbgorQeF": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "XlFcDtgOjchIua5t": ["WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X", "M4OI18mAQLnzjMf8"]}, "regionURLMapping": ["GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i", "7pKxR8dl0zRVW4EZ"], "testGameMode": "G9m0XcgGVbMqSszE", "testRegionURLMapping": ["8GHavj7AorKsxwko", "sAVerXpc1C8XfwHu", "Keb9l3rGN9A3sNm8"], "testTargetUserIDs": ["4hddSpHt0P7MIIR7", "CkyF6C7duuyZ0GhD", "ogqrhBRd8lDR6qVN"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 85}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 99}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-handle-upload-xbox-pfx-certificate 'RZYdFLIAjGGJddVC' 'tmp.dat' 'vu9vx5KQ7KYnIuMB' --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "attributes": {"mLZZbSqb8RwNmn9H": {}, "rNQy4uZAAiE0mit9": {}, "RGCCHYzUOcEdscKH": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "QYv7t1o7TTr1Dmrh", "deployment": "Zv15T7quIOvBMcaY", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "vCkGZ5dAgqxpBFma", "enableSecret": true, "fallbackClaimKeys": ["oxozr6wfNPX2bOIt", "RMvqtlB2jJCSQT27", "9ZZPYGu0rdlgdWyO"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 76, "joinability": "i3choQrpOsDBU5Se", "leaderElectionGracePeriod": 31, "manualRejoin": false, "maxActiveSessions": 59, "maxPlayers": 79, "minPlayers": 15, "name": "yKrQpM4hkkK6KKXN", "persistent": true, "preferredClaimKeys": ["3xoJ8aeCnaLpUKp4", "4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7"], "requestedRegions": ["il35MXbN9oCMNqq9", "8SjTvhZNkSQ70D0H", "6BXksUC9b6i5lZC9"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "gb3boLQQ1MzH7Qm8"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'bwbmXgdAPh1EThG9' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["QZxfgPubTDIHrvqA", "ThuwjRHpKKTlmVr9", "XuoJbRFQSKVPHbn4"], "SessionTitle": "Xxtu7LQRENjEEztx", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4lSck0ZHn5GI39YB", "XboxServiceConfigID": "HqaTHeKtW18iGeUl", "XboxSessionTemplateName": "c9d9sogWa24CKNS0", "XboxTitleID": "GqVvUfHQvsHXNUNe", "localizedSessionName": {"4mhgo5QB65lSAiYn": {}, "NjkfZrQvGgbLdLsF": {}, "zHkBMr1yrOMlNFSr": {}}}, "PSNBaseUrl": "UEirnjX9fDmIbeZx", "attributes": {"zfTcyiuATus9hsfp": {}, "FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "2ncYAHdNzDmeIP6r", "deployment": "OvDz9KOsb392k6Ym", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "fRByjlBiuFM3FIoV", "enableSecret": false, "fallbackClaimKeys": ["1X2PFAAMwzHPxB1U", "skYs4Yw20DOqOBSC", "2DKHRuPMMWH8Yb33"], "immutableStorage": false, "inactiveTimeout": 5, "inviteTimeout": 96, "joinability": "eJ5i0EeDxOgBnhhq", "leaderElectionGracePeriod": 63, "manualRejoin": false, "maxActiveSessions": 63, "maxPlayers": 72, "minPlayers": 18, "name": "aDml48wdNFLTm5T5", "persistent": true, "preferredClaimKeys": ["vQR3biBfsu4jmsRE", "2w1yEkLgh3tIYt4S", "qYUTLDx9gIiDandp"], "requestedRegions": ["GT2t24aOMh5eC3IH", "eHSKLCa3xreNDUWe", "hwH3q31A806DJgas"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "fe2NubeoKFeIaFQC"}' 'YoDPICpnduEEQlUL' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'dJz4mnRBkMNxvvKg' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'AT8mJrYq6hRkloqx' 'M3gpwxcfMy9XzjjI' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "5YbsKoADkzJEN2VH"}' 'zih3bit0VWn3CO39' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"PXDNxtXgeO3FgkXh": {}, "jDzaQY3snn2ZkP7c": {}, "FdP43e5dC9XIBudf": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["ZgrbHDIDm4hMzF4T", "xodenSrUTvfqU0bf", "oMm5cTtFWbotQyXJ"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'a23YvYmmDg7VYPXI' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'uvUYTZBRujIUE1Tq' '5jyAZvkRCMNFIurj' 'h2imdb4rbkXj0Zws' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "VC0gL97ZVJSPqJiw", "clientSecret": "v1qlYB1RSKs6gQxC", "scope": "3Gb7S0o4zGYY7KQI"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage '1AeFgPqaOkvo1aol' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'B4lkKB4EYOkQ1jMD' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage '3cym8xIfkOVW2grR' 'EOLx0KOww3HICQLf' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'l7MUBG7qtPu64yAt' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"URKLRkb738HGS6rD": {}, "gMdIIlhS1fSiM933": {}, "1m7Ta1PsKc50Kv6e": {}}, "autoJoin": false, "backfillTicketID": "yomQoIXimBJehyxl", "clientVersion": "NsjUgxBkF6wFPoJe", "configurationName": "QediogEhhM2rIizG", "deployment": "dKvOPdq5xrgxSmy1", "dsSource": "DN9LFkYW5DQyj4bj", "fallbackClaimKeys": ["5Ro2ogaKt2ujQSa3", "Zdb65UXmy0Zp6iIa", "TIKUkmkk9QM0NBMA"], "inactiveTimeout": 82, "inviteTimeout": 40, "joinability": "RxpzwLR2AK6eXUGP", "matchPool": "Jsw1fiP80G9Pclxc", "maxPlayers": 10, "minPlayers": 69, "preferredClaimKeys": ["t2ulIJzPyrVEiOG4", "UcqsuGKHhMRWLVd3", "DlhLuIpomM8sm1Mi"], "requestedRegions": ["aI1mX2tJoARtdbBe", "7udsMrok0WvGYYnx", "4V709xbnGezKsDwG"], "serverName": "2omOR2nvYI9TVqJd", "teams": [{"UserIDs": ["vzcWbfUpaXp5JMl5", "LL4bTxBmZjdrrIxs", "B0NRsB1fPqqRRulp"], "parties": [{"partyID": "qpymDkQhtrHWwRVn", "userIDs": ["wVBOqOHi8pWGd1ju", "YhiqjRJOqB5F93zF", "QbJndUDpdONneAcz"]}, {"partyID": "bBdHb2slt71B1SmZ", "userIDs": ["p2JZp50CnPb71ORY", "cmQbTU5JX8ccLjMX", "JRk0eaKQDOJvrTef"]}, {"partyID": "glSs6g4iY9u02aCN", "userIDs": ["YIWekp18lOC3mNqF", "7Bl0LcghVHfPEspx", "whRON0bc1eMbEIjo"]}]}, {"UserIDs": ["wLqc3ecjXJbZDKKo", "xLE1Y3Dymtj3giPg", "4x4yiPX6ues1Hhhk"], "parties": [{"partyID": "g1yLVbLFzHEP8cM4", "userIDs": ["NTwr0KHaAsmTej52", "WKi6tArAURt9plCS", "Vq8PdH6hJPUAc0RV"]}, {"partyID": "wXgAgntLMCuaXBWQ", "userIDs": ["i6BqPg4xr0lCancU", "ZGCHsZYoLfR1KtOv", "7Zy0b65uvuKNuy0y"]}, {"partyID": "tZQ7M6Nzy1adnSKO", "userIDs": ["LFKx1dX4LuWJu3pD", "MUAeeZ97SBROPYuG", "6XqP6oo7G73zdxTg"]}]}, {"UserIDs": ["OfnwIdlNa29fDLh7", "41IslKHzGlLKWUtD", "Qs61OQAoxyyQpRWC"], "parties": [{"partyID": "iiPDGQhNPEwiJCf2", "userIDs": ["XJVrlzqQls1ozhLV", "A3kE8jKvgatOEBM7", "0TdlNBJYOmpu1VCa"]}, {"partyID": "rzBsV6xnZ5Jrzzjr", "userIDs": ["caug6CWVG8SWP3gl", "U6muswVJnNnN7kAa", "7j0riFc5HTHQIoVs"]}, {"partyID": "Go7dwV9DBqFKHQkE", "userIDs": ["TJyTlUrwDTnoujQD", "4IEiH9Z5qXn3aoRt", "lqOECohViHA5CzgF"]}]}], "textChat": true, "ticketIDs": ["y8X1A3PrIfapq5AA", "eMe4L3mDWORBVXTI", "IJM9XsYIIZxiXNMR"], "tieTeamsSessionLifetime": true, "type": "9G4AvQkqsGnmyo5J"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"JTUVmb8GEXFTlEME": {}, "sFzYqwgK1Np5nodq": {}, "pLm7FhJBNXzAFdO0": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "Khqf6kiTdSGv2LFj"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'AKY7CbgsWqFWZX7k' --login_with_auth "Bearer foo"
session-get-game-session 'PBom8F9GLLTG8phc' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"3n4iLoIllKlpO2pq": {}, "iXJF3WGRaoQomSJC": {}, "4DdrKF7SUQPLG59e": {}}, "backfillTicketID": "0k5ZtX6wK7PpUlcI", "clientVersion": "W32iK7MGt1ixY5rA", "deployment": "1WoVeJIePF8ZrQzP", "fallbackClaimKeys": ["4zvtdxdbZUpd6FJt", "HJ1pyVwyKQLY6FEO", "65Rb3z7CYLM8IlsH"], "inactiveTimeout": 33, "inviteTimeout": 57, "joinability": "ffnrfsGlfPaZKBwa", "matchPool": "3Ddb60ufPpzwj1QG", "maxPlayers": 70, "minPlayers": 65, "preferredClaimKeys": ["CfHkIySok5DiXZtL", "W87rGysryod3dNQr", "msApRA6HX3RwrKt2"], "requestedRegions": ["ecozL0TOg54vCE48", "L5oLF6M4lNa4JUMS", "HNgqRqCV7usamANk"], "teams": [{"UserIDs": ["ZlOX9Sfo95HgXqKh", "TPkwfLM9uSybRzWe", "k2gZvRrvr0n9d9lv"], "parties": [{"partyID": "ccKMLhrTrcBE2ItB", "userIDs": ["S3KtKZWe8aoFzAyB", "ME74HUtipUWYhWV1", "qx8CzPML52faXUr9"]}, {"partyID": "Sk4lq2faBcAXXKlh", "userIDs": ["vyH8paOJtxqMPpcV", "fRwNj547fH0XrKED", "pEY8VnocGAjci0V3"]}, {"partyID": "tBf2jnHGKXphn50c", "userIDs": ["9tNLDljhZ2jxLRX3", "z46OCaGBeMfPlNos", "4yBRjrERHEonAZR8"]}]}, {"UserIDs": ["GmEu0q1p6QCyY6vS", "kVFWdsbYuVEGVxYh", "eR3j5mNZ6vwv7K8A"], "parties": [{"partyID": "svt1j1Rx59hesNWy", "userIDs": ["2NvZ85DDKDAF8KDs", "BZOuYQJ03BAHZ7c5", "3q7akMpcmnnx6RVB"]}, {"partyID": "rop9v7aZK3h65hbN", "userIDs": ["15zfQSfQrtfF3TQN", "0OcNDLr36vzohZyj", "MQAg5mPYhrLTyU8O"]}, {"partyID": "hgfY9JQYGF4bYXEc", "userIDs": ["ENx9xZlAchob44lO", "NDDwMvgI0HlyPR7w", "ZNiVsF6xG2mXEQdb"]}]}, {"UserIDs": ["zIVy8alncV7vWgSH", "dfo07UctPErqxyMy", "OK06MqQBErxgjVBy"], "parties": [{"partyID": "cvU4PbmRDcrg0DjQ", "userIDs": ["jBECXvea7H1m2lJF", "RZ3ZprZ60zMjhTHe", "h94TSenE5hCFkIf5"]}, {"partyID": "weqZ18MH57l2Zsrh", "userIDs": ["90ETtYmGukz3Mnlr", "jcHp6B8Vj7rXFgDn", "DkdZ9bpjb1tdA3Qh"]}, {"partyID": "jCMW64f4XhIjSoTB", "userIDs": ["2NMKtezapPr2QEPx", "3zTxBGtEJIYppuUS", "sKoHw2hyd12uSE7B"]}]}], "ticketIDs": ["Ev3aevq6iohU1cg4", "W1IS3Uv1BpWoJBaq", "dg2FHcunsS1lnaO2"], "tieTeamsSessionLifetime": false, "type": "yn50sigBVZxiKdV5", "version": 85}' 'GvRyd9UuL02Le8HS' --login_with_auth "Bearer foo"
session-delete-game-session 'CslsDd4M1F5qRIbl' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"S7Nz81GRazPAANjf": {}, "BoldFOyqA2clJ5gE": {}, "OaCgM6Yn6RugbNEI": {}}, "backfillTicketID": "pGBFUjOn5mM7k8nb", "clientVersion": "LzvtCIW5ynMKquUi", "deployment": "cAeIVXtoWAXhMlW4", "fallbackClaimKeys": ["tLqX7OICf5oD1e6o", "I9FmYel0kOw72o8Z", "kgk0jS6rDWUwfhKv"], "inactiveTimeout": 37, "inviteTimeout": 51, "joinability": "f2AaH4yCWrHSppnI", "matchPool": "ZkNnTn3rzH5NvAtc", "maxPlayers": 45, "minPlayers": 82, "preferredClaimKeys": ["sIPSE1XXPzySa0sZ", "oFS6xCOWMpyh9pMs", "Qgb64ELbzDMwyo4n"], "requestedRegions": ["IRysQdbufXjYnSoI", "FeouC2m38kXrDZWl", "GVE9sJ4NpUtKp6M9"], "teams": [{"UserIDs": ["I6nEwnZhsjwJeGwa", "PSDMZz95OYKiqaZD", "63xe5rruJVfLGea0"], "parties": [{"partyID": "ZtlzUcuHAXz0UV31", "userIDs": ["MfuGaXsAuGsZaSHe", "vO0TQNEI3kfabxJW", "WSI1ECUo1NPpeFhU"]}, {"partyID": "ztXDgB7n4C97uAPP", "userIDs": ["8PATLpUpxeJlsBJT", "6Hh3OMjAjq2mK8lb", "SEEelxnb5QxWG2HF"]}, {"partyID": "nZlA6HKWW4fI1IQc", "userIDs": ["oBQELcNlZkqTZrKg", "XNwvm4e5GX6H742O", "ixhtAoKiVm6URT95"]}]}, {"UserIDs": ["XhnUcvWB28Mpusuh", "hDJ5slzgiWZEtyd5", "6LfxnbY97jjYgXch"], "parties": [{"partyID": "CbkXX26uEdCfQaMA", "userIDs": ["QuTKfC0I2kNjCMDt", "DMrentgn3DhqciwI", "eShF9RKb9vvxuJlh"]}, {"partyID": "XbWhbwPwToC6knjV", "userIDs": ["wVnzaqSfJiQFC2gX", "oda0kg16yUSpSOAj", "HJWwfCjYwWkLob9g"]}, {"partyID": "KLqs2nEZhpByfHZi", "userIDs": ["nxNfgPAwkMBsznlB", "UqnLT4AbGptKaWNv", "Pbpg7yrRvXfZ6rvg"]}]}, {"UserIDs": ["vEY3Hht1SwqTsKKK", "o37NHDOQe91Ps3zt", "UIV0dS6hIH9c4Vfk"], "parties": [{"partyID": "yrwpuXxbaERbfgPm", "userIDs": ["i0eHkt1mr9EOIFg0", "dnWIYN2NVL70Iw15", "7g00jr9b8MuYmmeK"]}, {"partyID": "TmBNvGYxEQdf3ewo", "userIDs": ["GGoY7xmFNAmjDDCv", "s78mcMdiS76YApGJ", "9ufwLYkqIgLuZS6h"]}, {"partyID": "sQryiEtOAbpeUNf2", "userIDs": ["6UqkCfgCUYBn2xaO", "BdPF0JmX8qwU1cTu", "HHPB5S3DvPRCzBrV"]}]}], "ticketIDs": ["UxmDOj3cvRFaTC11", "W0TGTCm4fZWuk6pQ", "xDQpKqxLGeMvr9Ts"], "tieTeamsSessionLifetime": true, "type": "C7IVYa6iZ5uFRYNn", "version": 44}' 'SHiWxF0YbuU5ar5q' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "TLWUCy0Afgc050XI"}' 'ZRW491e94mQjVOOB' --login_with_auth "Bearer foo"
session-game-session-generate-code 'nIWhunElqZUodp3I' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'htCSHy1ei1fIrPvf' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "HnRN06EjRwEQlNap", "userID": "JRfk4f9Zcw1pEHAy"}' 'NFxcVTKuAQTGh5Bx' --login_with_auth "Bearer foo"
session-join-game-session 'jWOozGoDtsUuYo5p' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "8ED5QZAufwNa8lzf"}' 'jv9oYMXMjlVHY1AH' --login_with_auth "Bearer foo"
session-leave-game-session 'wF3vGoav7MK0PcLn' --login_with_auth "Bearer foo"
session-public-game-session-reject 'EkcokKwcQ0baDT9O' --login_with_auth "Bearer foo"
session-get-session-server-secret 'yJ2h23GUS2amU7sy' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "GlElXdEAOrVSnLoc", "userIDs": ["LVVYamQc4wcG5nDB", "LJoJHbiQ5duE5p4c", "fs2E41cK8QTwiIAv"]}, {"partyID": "xSvNDlmM5nQFMGzs", "userIDs": ["7fzjgyc44mEh9tRk", "8knYSV30lnroQehM", "Dli6t9unQLYXxm09"]}, {"partyID": "wpGAbpEmDY9vLh3u", "userIDs": ["6EDsUmrV6kH4OotK", "wG3UC6XCnnZxF8Cm", "Qr17W65br34rBBN9"]}], "proposedTeams": [{"UserIDs": ["tU6TDm5GloFSKWM1", "eym5ydC6p25xCWTq", "UOYZENJ1QHZQxPRX"], "parties": [{"partyID": "H7uxBJEECQE1li3B", "userIDs": ["g7Jxc9pUnZmvhidw", "CkZwqjYLfTiCO1ND", "BvQvRPnAz4VzW0Cp"]}, {"partyID": "oBCbyJsF5IjF1c0W", "userIDs": ["338HS6CBgVRyihYN", "Z84CVhziXV8HwSmv", "cvcDKF19yVRafCjO"]}, {"partyID": "uSYht83AdvBaagTi", "userIDs": ["RJ8daGTVX3Bb7jlz", "5IfHgKjI9mwJSrN8", "jkIykR2zbaI6PD7f"]}]}, {"UserIDs": ["EscShnGUGUtV9GJ2", "79GDbLNwjm3FK0nn", "X2poMfZ1hDHtbh4H"], "parties": [{"partyID": "tMlFgvh2Dp2SoiIP", "userIDs": ["p1yvfAHS0VgLu11A", "3HTovFi4tPAGfley", "CA6jEtcqsnzoVILj"]}, {"partyID": "kwW61duF87aUyrdt", "userIDs": ["4XSpWBAetsanzqP8", "oxfrtbECD1CYPwai", "BAxfYL8Avt70ZUT2"]}, {"partyID": "fSk3LL0calqxEewu", "userIDs": ["GS469k2hG0WKt4sU", "manYxM0UHZVNYzGM", "NIpWoSLkUrfuf4U3"]}]}, {"UserIDs": ["WeYeA9t2ENKKWrFt", "HIi1CMgKAOG5iDcC", "R5PbCvDLil8wj9cK"], "parties": [{"partyID": "M3Ar6MF35hCER4nG", "userIDs": ["mWGgTJfHlJl4tHGa", "4XfZcd9CVnGqMX9F", "ieeEssWEUl07bhwn"]}, {"partyID": "tCVqiYOJf5KwMZQj", "userIDs": ["zvjSozv6CTRDl0zp", "9CzHFwinkBNi4gvq", "gl6TZ9TGVPmv34h6"]}, {"partyID": "T7EsufmfxKYB4LM6", "userIDs": ["H6QXmpZ9X3fUSR1l", "9xLPBsmAUrD9L1Ii", "D6MlcEPhMDFzjHZ3"]}]}], "version": 37}' 'vVe4MHX6AgMep90A' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "yyUJyAK5PRMRMwdv"}' --login_with_auth "Bearer foo"
session-public-get-party 'l0hv6g62GxBW2tQF' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"5tkTjgJaMYvNQOsD": {}, "a4bkcgepqtxjbrzt": {}, "ee7QLTGAak7Kaol0": {}}, "inactiveTimeout": 61, "inviteTimeout": 26, "joinability": "K97D2xnik42miteR", "maxPlayers": 58, "minPlayers": 9, "type": "OPipH1MWVTHG0qHJ", "version": 58}' 'mO4oI8KDqebm83ra' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"NBJ5y7axEkvI4oxZ": {}, "EDxGiBnNbn0zaf7C": {}, "aOSlHXrUSA6sMJzA": {}}, "inactiveTimeout": 46, "inviteTimeout": 26, "joinability": "EsdOGBXBwnzDX8v3", "maxPlayers": 47, "minPlayers": 27, "type": "gC1Ge9PdbTTAJ2Gp", "version": 62}' 'r0sVZ6LJAOddIL2l' --login_with_auth "Bearer foo"
session-public-generate-party-code '3hPjNDKv2LWfXqjr' --login_with_auth "Bearer foo"
session-public-revoke-party-code '8fS79En3wYowBdka' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "Z3y6i38XQjLDRqkp", "userID": "iFK5BtiQ272Uo9UB"}' 'JWodpdwsX1jorcyR' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "0x3YiHF8ITGPRQBC"}' 'gIs1Q2lzxl0yF5m7' --login_with_auth "Bearer foo"
session-public-party-join '7TTh4gUoj8u2WRcL' --login_with_auth "Bearer foo"
session-public-party-leave 'iEtzVlnkflfn7pHY' --login_with_auth "Bearer foo"
session-public-party-reject '48F1dl1q92m3iRlf' --login_with_auth "Bearer foo"
session-public-party-kick 'nBAk0CwiAsR65yQ9' 'ssuHdGmxncCEr0Kc' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"geqzGbruNB72HHMk": {}, "jzyBB4UFKiaoV0VO": {}, "em2yqPsMFxKybPkb": {}}, "configurationName": "uS6x9cLJ1APnNlsa", "inactiveTimeout": 86, "inviteTimeout": 3, "joinability": "UYnfG6jl9U4jRete", "maxPlayers": 70, "members": [{"ID": "R919IZPKOKiAVQXX", "PlatformID": "OmqFHLbyXmgCNiXH", "PlatformUserID": "8uenbC5CphgMweex"}, {"ID": "sIAP5vHLjBJ9iqMc", "PlatformID": "BL4BzhDUjhKPwbwc", "PlatformUserID": "vQU5kG8bXGFmPAnO"}, {"ID": "kDiJq4xQye7HqnVK", "PlatformID": "3YVeOWs9mfVQh3jL", "PlatformUserID": "Btn9pxpE7BYtzB0B"}], "minPlayers": 47, "textChat": true, "type": "HbHig6IKWVZ77KeR"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"WdECaFGzfZ2hxcJ2": {}, "Fnemn7M23SzUo4hN": {}, "BDh9ZFP1OW0nXOEr": {}}' 'QPS4VsRoYIK69yg9' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"ADCGiXaLs2xjHkin": {}, "OD975nARHCmhNHSX": {}, "uqIHsxvaUoXDmwWs": {}}' 'ukxncuD3QxCXMd00' 'YBWCaVVmM45mfIZs' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["WhkS476dGGJwJ00U", "H197MJ6zU7JLMQyM", "WzYQCAaPJgoxGJoJ"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "895ImqK6tVsaUq3s", "data": {"tUh5J5Z9GiBiSAyl": {}, "X5cS0IeHpWCugmfO": {}, "L0QQpxsuD8PGqku5": {}}, "platforms": [{"name": "9eFJrOXyDYz9vMUO", "userID": "PG0iHDT8QbF7gHPT"}, {"name": "PQbvLt2NRqJGIKzL", "userID": "yH1y72L13Ornyx34"}, {"name": "luLdvtsTKXMjiw6g", "userID": "YPvfn2Qt9iyq3Nyk"}], "roles": ["8ncu2Z3eDHH9WaVO", "4iKhDcJ7TCcNIsQ3", "PuppUxDSK8aOTGMu"], "simultaneousPlatform": "dcxlCV4cNbJGQ57l"}' --login_with_auth "Bearer foo"
session-public-delete-player-attributes --login_with_auth "Bearer foo"
session-public-query-my-game-sessions --login_with_auth "Bearer foo"
session-public-query-my-parties --login_with_auth "Bearer foo"
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
echo "1..80"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetHealthcheckInfo
$PYTHON -m $MODULE 'session-get-healthcheck-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetHealthcheckInfo' test.out

#- 3 GetHealthcheckInfoV1
$PYTHON -m $MODULE 'session-get-healthcheck-info-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetHealthcheckInfoV1' test.out

#- 4 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"regionRetryMapping": {"PdinpjS2DRfGt9Gl": ["yZVQ4X67tPZSTpPq", "3xjrElvvDgw0ag7k", "SWE0Hiqm5IuLryiE"], "XqvUWDjU1G0EVjVZ": ["w1ToLuPakQN1MpOs", "1RVFrcg2CXxepx78", "fvsyhE2BKtyTDSIM"], "7mkmvZ7Cmsh4US8o": ["4jfMANPpmZDdMiCx", "muCCVuFjS1GC1d2b", "92B4vEgj3HOmhcWm"]}, "regionURLMapping": ["428XejRF94NIY9nM", "rBZo0lNUBDShHD32", "vvL28FPwTiXfLcxD"], "testGameMode": "C9Ynd02mECIQhfIh", "testRegionURLMapping": ["HtADUQ9zimQTQT95", "pFJUAJsyAfeKOufV", "4f15NohXu6opxQGR"], "testTargetUserIDs": ["t6PqlkL0diRhLC10", "ih2EQfY3XCv4hdOa", "6FdZhNMd1onFjGRb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 48}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 95}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
$PYTHON -m $MODULE 'session-handle-upload-xbox-pfx-certificate' \
    'tABPXDmgNEJBhgGq' \
    'tmp.dat' \
    '5GIDhNC66szbCCf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 47, "PSNSupportedPlatforms": ["IFbRkPSSITz4TjCr", "JHXGXku2YVuOzhxH", "mnrrV9ZGWrZ05sxe"], "SessionTitle": "6A6RpmKDebNkylby", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "mzwOZOK56sDkci5r", "XboxServiceConfigID": "Z8iMlOuksQJCiRFi", "XboxSessionTemplateName": "ZWwJ7NrTb1XTB9YQ", "XboxTitleID": "zUJ9XlYJ8BzP6EUm", "localizedSessionName": {"UXGM5anIloyj9lhb": {}, "vuQdW2jwKUckc794": {}, "ryY91lX8DD4MYXlr": {}}}, "PSNBaseUrl": "J81lHvv9rqvEoM8Y", "attributes": {"mVjAkO3HKsEp6Klq": {}, "wW4djrexcbHdEtoQ": {}, "vpV344RctmTozCi8": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "iTgYmx82JVBRLPZ6", "deployment": "Iz8tne5dbguBF6Gs", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "vdl8jHz9x7XZIjU4", "enableSecret": true, "fallbackClaimKeys": ["9lOLaZaMphKCqTq3", "EVheJjoEEXBLIxGn", "NuhoJM3WWPvvCiCf"], "immutableStorage": false, "inactiveTimeout": 99, "inviteTimeout": 18, "joinability": "7KORRhxSWLWLNfHR", "leaderElectionGracePeriod": 61, "manualRejoin": false, "maxActiveSessions": 85, "maxPlayers": 97, "minPlayers": 54, "name": "15QaGGL46LuxJF3s", "persistent": false, "preferredClaimKeys": ["zf5aANNNs5kgSZZN", "UHbIT9szApmWJO5v", "zzXZj08a6K1XRVfr"], "requestedRegions": ["iSpPFnZBJZkDnEiy", "fa2LrnpZxNnLRH36", "bqS2oFY76PU1AziB"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "EAj1cT3u6Zc2FbrT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'FznTgDIwZIRWf6T3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["1skRjOU1SMfQVQa6", "blj9Rdd85bdYUumP", "KVSZCg3XTc9vQe0d"], "SessionTitle": "HJfF6KIuvnRCa9Jk", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "yBdxkZKrEWFw9GYx", "XboxServiceConfigID": "jiiOQAD77ci0vfWV", "XboxSessionTemplateName": "ZoRRMPi57HyKKz5n", "XboxTitleID": "yI6ulKNKoXa0dgx1", "localizedSessionName": {"JgjC56pda3YhtQxp": {}, "CYME6x21pdX2QSPA": {}, "d9sxoLnWGP1PafIj": {}}}, "PSNBaseUrl": "LX8ce0KbNN7Ycl2J", "attributes": {"fmQplvGjVQ4aebjf": {}, "gGu472oWJlfglLM4": {}, "xjfkNL4lU6jaGfsD": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "tYEJTSiXjcY5ZPkv", "deployment": "90lyKSTWLxSFZ0Lp", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "pEi5DbkVs3qFTi1t", "enableSecret": false, "fallbackClaimKeys": ["30Wj1WfzIvc3VlSX", "rA3XUGud4tVjmxEf", "4XvVhFJTxFHITBg9"], "immutableStorage": true, "inactiveTimeout": 44, "inviteTimeout": 41, "joinability": "Pb1kuUfNfUDe4g7q", "leaderElectionGracePeriod": 58, "manualRejoin": false, "maxActiveSessions": 62, "maxPlayers": 62, "minPlayers": 0, "name": "xnKfV3869IN4V1Od", "persistent": false, "preferredClaimKeys": ["GBA6JXDpA1tIC45C", "0oaGouFu4hXONgUw", "JnUpryDeRcpUvlrw"], "requestedRegions": ["2MwC1uuokpaIjL0V", "xe5n9Lx3QcFo9gxO", "gvDc7xMrRKvw8ISP"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "KmCRRXBxlalCHtWl"}' \
    'KxLpS8fLWoQ5nuJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'atQPxR7dvBVC5zgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'KLTDmHe8c1eJ9sde' \
    '7Ryt4udIv22M18uu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "x9xBomQFPFWy5cwN"}' \
    'PI6aFo0MVwDZCIXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"NEL3uWVRz3V7YbJM": {}, "3bNLWHAbCZixe2cQ": {}, "6O30lpzcBQMAEcNc": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["JqrKxnMzSYoc4Zji", "MY4H34B6wVd8ipcK", "DwQeUWtjCC2UH6jz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'O3AfmOS5mQNyRPZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'PNP56l1AT6OLKmZh' \
    'CZxxPPdPwOtEuWBS' \
    'O2jJepUnEEgja2mI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetListNativeSession' test.out

#- 29 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminQueryParties' test.out

#- 30 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetPlatformCredentials' test.out

#- 31 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "E2kLTnJwc5XmkCuL", "clientSecret": "5W4tKt6G3j9LYdG7", "scope": "xVPqBqe9RDQMBSYA"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetRecentPlayer' test.out

#- 34 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminGetRecentTeamPlayer' test.out

#- 35 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'FLqp8PF5hCcoukWp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminReadSessionStorage' test.out

#- 36 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'nbz4ys7j6lxuU3u2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminDeleteUserSessionStorage' test.out

#- 37 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'HEG0qfKegvFTD1sP' \
    'ykS8YLmwtYgWGcA0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminReadUserSessionStorage' test.out

#- 38 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminQueryPlayerAttributes' test.out

#- 39 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'h4G1LZ1HaX5UBMbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminGetPlayerAttributes' test.out

#- 40 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"F44VTsLDRzdq22cb": {}, "nyK3ggFDh2kaZP7p": {}, "nnVfxPwc259HF9ej": {}}, "autoJoin": true, "backfillTicketID": "aILQruAuYyJLYGqM", "clientVersion": "v824ouSgkpK70uJm", "configurationName": "UL0uzElixc023dIv", "deployment": "DiA0tQWlHwBcTtzt", "dsSource": "x3VAl6tXFbnATCzU", "fallbackClaimKeys": ["OIzVcy9k3ie64Vnw", "a0ClGQJultJe32Ai", "wKadEoIVmprwPsa9"], "inactiveTimeout": 93, "inviteTimeout": 60, "joinability": "YgwWv5XldL6rOVGc", "matchPool": "RAn51rVAQSxp4qTB", "maxPlayers": 88, "minPlayers": 25, "preferredClaimKeys": ["Fj1umx4ItzkMJ7cu", "df4r916GPrhn2etV", "IQvRkQJAtDUH9tx6"], "requestedRegions": ["0AehGz1ermJYXsYg", "L7TfyIlAwjTZdRZJ", "JzWZwvTX2bamSCvX"], "serverName": "1nwvSWdDwD7WJHzg", "teams": [{"UserIDs": ["NZUKsI5y0mR3zMyT", "sftKqnsIJctAdxyZ", "VKHA9DkaSOWgtg8y"], "parties": [{"partyID": "w8lHEbVDwBAqanOl", "userIDs": ["scRIWw82k5K5VTkd", "ubkOFldMCQ98JH4n", "0JtgqzZv5kVu4S95"]}, {"partyID": "mj8YRvae4f4lhBPb", "userIDs": ["arbWEm8bVtZcfVCP", "dQhim9QKUAFTVYel", "IlGJg9wdc8bihhWj"]}, {"partyID": "fZpfcFBUsnnDJlmD", "userIDs": ["1iEokbUiYzCQh2iN", "TwtnohddMzMTQ9P7", "sYLDWAJOA75K4BYJ"]}]}, {"UserIDs": ["2fkqYJoF2FI3vyyq", "Rzc20O7FdsJP1G9t", "yBTfERXdvgD1Qf7O"], "parties": [{"partyID": "t2DkUt3yexZBRvxY", "userIDs": ["nEBhXtAVxCd3meTr", "T7cF9oVCh89wNOkK", "YssVejcL3kR3hCGN"]}, {"partyID": "gaJmuALlMQl9RLrt", "userIDs": ["hbfp0VgweLlT2sY3", "SsTnDQY7kKU2u06Q", "4veujxtyQENvJrBC"]}, {"partyID": "qeg67d4RWOqO4U0b", "userIDs": ["itNQLzwRoWnR0Abk", "CPY70FmvviVIBbcu", "jF8Vk5qb8NhWWwax"]}]}, {"UserIDs": ["yMchkt8l5IPSrwrJ", "l7wYIVw13NCo9yXl", "bQ52FTHTCj6SEAzT"], "parties": [{"partyID": "7TOpyiuvvQUm29Ia", "userIDs": ["cq4XRLaA643nTMtX", "SAyejnny0Ju13b6o", "5uB2XM6IHy7EEvHy"]}, {"partyID": "LmcvrZZOdwe1x8Rj", "userIDs": ["U6Bi8JXE52sUBBq2", "SimQQoLbe5YOJvxG", "RxUzrTwagH7BMT1I"]}, {"partyID": "ZKTdNFVBQ1crBXAu", "userIDs": ["pATO8uXsqVpdiWo8", "SjDAM0Riw8wLYW3n", "4F3LD1EDwBXw5uBY"]}]}], "textChat": false, "ticketIDs": ["5VyC4qvWjVac1cQv", "SxgTNIUzxDgBlIbu", "zm7DzJ20NFRJIhFX"], "tieTeamsSessionLifetime": false, "type": "aMsq8ePN1oco2jx8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateGameSession' test.out

#- 41 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"Upe8SjMvpqM8pugg": {}, "OEdG47gD5i2Ni6An": {}, "Wn3NdEPhNHSH7eKD": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryGameSessionsByAttributes' test.out

#- 42 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "fRcngEpTnRUQr3RL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicSessionJoinCode' test.out

#- 43 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'OM1vEx4gqDY6jwyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetGameSessionByPodName' test.out

#- 44 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'RxhkLe5zohg9s9ut' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetGameSession' test.out

#- 45 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"RQt28b6o3K0COF74": {}, "tz6aeXZOYwbwjMNd": {}, "xKWlBfnRyFS0Ed7g": {}}, "backfillTicketID": "TM5AVrtBQiDTcNnZ", "clientVersion": "a6Zuxk6u6HXXdiC9", "deployment": "ZDj4E4mv12FNXypo", "fallbackClaimKeys": ["OLl13j84P0KqirJ4", "PkMFtsnFfz8Ew0X8", "fBuBSKLSQ4GvLtz5"], "inactiveTimeout": 60, "inviteTimeout": 60, "joinability": "i0mNHb6Lx8eq8SGN", "matchPool": "wEQO8dYXvBSYvJBw", "maxPlayers": 3, "minPlayers": 10, "preferredClaimKeys": ["6CjZUMRf2VJetWso", "kvx3BHuTEczr9KjQ", "3ttz8MTBt1xk9Iys"], "requestedRegions": ["sSA8nP5PQjpzk2Tb", "7iYdmNZWosrsVBPZ", "64j0HUONscofwYLQ"], "teams": [{"UserIDs": ["cDvkaEIIPoJT83zE", "GXmVBZLyrH9J7Boy", "smaORLkP5hc2Fh04"], "parties": [{"partyID": "JTsqDTynCewqJlig", "userIDs": ["LlRxOelKykICRxF6", "HtlER2txs4qrNARA", "Tn6KXOutlYBbLhL8"]}, {"partyID": "KXx25FZfQIodVBqQ", "userIDs": ["sBpCJBIXLGYcwWVR", "K6UKk5ozrXA4HZHN", "yq9odanhR1Zrm3th"]}, {"partyID": "UvV87yfkycLSVdle", "userIDs": ["SaAylsmLYe2phYOg", "T5kDTyPl3dKF7NXE", "jrJMki8jvc3P8Gwj"]}]}, {"UserIDs": ["g3IOH0SDHgYKqxJi", "FJdrmj5vhzgsJwex", "7wq8ZPlXNaUNgdY2"], "parties": [{"partyID": "vfJuje5cPnmGjTvY", "userIDs": ["a5Pqx1K7qcAoijBP", "Ap6EPb988NzxrDKV", "pULjjiw3NeVG4DJi"]}, {"partyID": "9DaMrc0WFgKjE945", "userIDs": ["x2CPVYYG9WvoGmAm", "vaVV5YfxnUNcwjr7", "gSGhnfuF4WZiQVIC"]}, {"partyID": "VpWd3UM08gMXhdf3", "userIDs": ["juXW4JprIb3CJCAt", "vSG8Cfa9dzOJDGCT", "HIOFjeXbsSgR43kI"]}]}, {"UserIDs": ["DzxBwqRJTzrHNZWU", "sq5lQo2jy29EJigq", "YhyVhURx1yPeczRp"], "parties": [{"partyID": "dk0HATGylx2JG2KN", "userIDs": ["GfhzfCTxxrsRRLee", "3TcJ7DQIi45aCDHN", "9mVug2zkVf6KgpKO"]}, {"partyID": "cn3tMD9UT67bOwug", "userIDs": ["FDa6wUQvehKqwCh8", "6XmRkCEcfHDCdl59", "Wp9A3tXGve6DdK6u"]}, {"partyID": "vg8f2cIoByk9fxtv", "userIDs": ["sgeAxo57nKAbZpsb", "J4Iu5KJ0ynxGBlac", "DCdFe8ATUqVxcSth"]}]}], "ticketIDs": ["rpnMUBsnUfuQIcSb", "Ut5UGkInFGpuUsdt", "q4dOwNESzCEW9dUV"], "tieTeamsSessionLifetime": false, "type": "2Cqm84jVi9kIpqgr", "version": 53}' \
    'PD9CeDEdCnnL6Kt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSession' test.out

#- 46 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'Bjj3b8QM8Rr45ULq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameSession' test.out

#- 47 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"XQgvwD3PsKDJiWxQ": {}, "BwaS7rDBf2S54phb": {}, "dyGDt47f9GWRlE9h": {}}, "backfillTicketID": "qz6rjDNo4rhjxUdM", "clientVersion": "M83WekqfWv04vvn9", "deployment": "bk5qr8qs2mqtnGAq", "fallbackClaimKeys": ["XUjNypF6MMqWpdEJ", "sPoaIbYz8cK5jlpJ", "dre5ur6yvWJDdvM7"], "inactiveTimeout": 94, "inviteTimeout": 57, "joinability": "7PX2vamIRZHzsIYO", "matchPool": "CUoiCXNjrdQL2jdx", "maxPlayers": 81, "minPlayers": 9, "preferredClaimKeys": ["Pvl1kCY5bEokxXxk", "WZbjf7GZxaossQmj", "o69wohJFyTNk5FGU"], "requestedRegions": ["PhR4LEZvz3EjFR79", "96Ug5m4axDV5uTcY", "soahUrELQ1btjJOq"], "teams": [{"UserIDs": ["QMgZWAU6E92nHJzv", "w7tnYtGfv0EJyjBu", "4EzwRjD7jmQJeFPg"], "parties": [{"partyID": "hqamSc5y0X48eT7M", "userIDs": ["luexk87b9Z5BTsEA", "3EdmW8saabP4xRow", "fNojzPXI2v0prR3O"]}, {"partyID": "Eey0MkZwS6TYwNN3", "userIDs": ["UYhic03qGEg5fNzB", "Vrjo3g8CfRwtyl1H", "eT7VEPgG40QyXzsO"]}, {"partyID": "zgck078IghoQBp2m", "userIDs": ["WAOYksczxBS0OBCa", "2vWadLmQtYKmEMzi", "cbuL2S3RiW8dLTCB"]}]}, {"UserIDs": ["fGUdVEdvdQL7sVwc", "Z2PofaJoSqtrEOqx", "H46fRTSZoDdT0fef"], "parties": [{"partyID": "o74eg3Nt2c0r4GqF", "userIDs": ["0NHglOVuNZ9LzNeJ", "nBurh54CWbYb0Peb", "yt8b4DGscjwrizsF"]}, {"partyID": "UgYwbaLvqvQ2NbmD", "userIDs": ["ITuymTBjn3d2sFzM", "S3QaVjZF7Ax6115K", "g9U8vrQJXQxoIbVi"]}, {"partyID": "2CLEk277Ivjj1A64", "userIDs": ["7XQ3koaAfZIim0sF", "Pm1YN27bojDVaZLp", "x4kEWYkO6KrKUMhJ"]}]}, {"UserIDs": ["rASBh61hmWKSSrF3", "5anDGvur19V18oIr", "UKXttgAI2QdWJFLm"], "parties": [{"partyID": "oPEgd8EMspOs8nki", "userIDs": ["c9gj5vyUMAAmIHYb", "sxG5N066FXb88SbL", "Oa21DiSFsm0XXQJW"]}, {"partyID": "szvTQEuALzDNp1SZ", "userIDs": ["58aDllwzTRHak1MX", "xj7Esrg7900nml5B", "idsK9dCEzhVnOv0P"]}, {"partyID": "QbVIaKiHfoeorY7A", "userIDs": ["1otGFyv2SMjbEr50", "qGdCZIc6EFqBKxbS", "7Q2OgRucL1jwRXzf"]}]}], "ticketIDs": ["jDZZBmOau6syme06", "c6SKLc2mEC3IXl5X", "CbkOfHaGr5kdazly"], "tieTeamsSessionLifetime": true, "type": "MB6jzrpRGESmooHi", "version": 58}' \
    'qxj4hBgVY3YAxZLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PatchUpdateGameSession' test.out

#- 48 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "bcOdyjqf6Q4oiwoJ"}' \
    'caRMEb15LBlTVufc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSessionBackfillTicketID' test.out

#- 49 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '5ZyODR2NVyn4PRqf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GameSessionGenerateCode' test.out

#- 50 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '3eRbZqBAoKGcVCdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicRevokeGameSessionCode' test.out

#- 51 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "iSNV4qBrt1kcLmRv", "userID": "6EJtl5xWnsb8oWq9"}' \
    '4RImNWVIJnhhwFDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGameSessionInvite' test.out

#- 52 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '1VitaomvWTzdsW4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'JoinGameSession' test.out

#- 53 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "70wYS4Kj7Yi2VvoQ"}' \
    'NW8Yc481dYdvGxJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicPromoteGameSessionLeader' test.out

#- 54 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'MDRA1LF7jdWlekFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'LeaveGameSession' test.out

#- 55 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'O94VBCV9qJhWva2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionReject' test.out

#- 56 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'PBujX0geYCpGJM4s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetSessionServerSecret' test.out

#- 57 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "qsPNJMiZXXOFwmGW", "userIDs": ["AvNF0Z0GkwxUNYyN", "wGiKrknH0Y5mrQgL", "C6D2qsFiQHglUQMZ"]}, {"partyID": "i5WjMZfOadpgegCU", "userIDs": ["jTdi1Ehr8OtqpNJ9", "R8TuNy4ejmVA3vMC", "sGyPd12B8QNUz0hF"]}, {"partyID": "FNbH6j2W4roZM2UK", "userIDs": ["AXEEsL5D0oiFchQn", "Veq3g2AB2WIRUQma", "uIY5HXCZ0W4XmWP0"]}], "proposedTeams": [{"UserIDs": ["HzSdiylLhVYszm8x", "Y33OQbumu2QHLyZN", "uysyM4OfCzdQCXMA"], "parties": [{"partyID": "Wnf87YPNOe9Eevf1", "userIDs": ["fhMg1E2k7QLFrVgt", "X7y0fPOieDCow2zX", "yFFVpM87yqEwEacQ"]}, {"partyID": "MTlqN4LKkxJ5v3SB", "userIDs": ["afnKNiMPbFkFGA85", "W3HJkqgS2B37wwoP", "YOHiIsxmsLBPBJuN"]}, {"partyID": "LnWRrtW870qD88Zc", "userIDs": ["duZSe7W20UZcDaiq", "0nEZ7PyhqFJkDClO", "sKmfsgJdmzsDPsWh"]}]}, {"UserIDs": ["1k0cQ08NG6dX2TZk", "il67kRngoUa83ECh", "1gqPeS193TNNzot3"], "parties": [{"partyID": "sVli3GN2XTrFibRA", "userIDs": ["hzzEWzWlTY70qdgJ", "RvpZrSpWX3KEe2Bj", "V00ReCXFffjJJxlg"]}, {"partyID": "jzIhpgOoIOD74V21", "userIDs": ["HWDAfvXwdxbyp4HA", "PbBbNPStVBUpKgOs", "sFkz0F36piDYXeHZ"]}, {"partyID": "7FHls3nyvconqbHQ", "userIDs": ["qKLQKe3xmj6s0Gqs", "Wncp5LrqbiKudv9z", "75SzoCV8ZMi2o1nR"]}]}, {"UserIDs": ["482D6gNClk9c87ho", "saPFC5zBW3ZgVZCj", "9ObVGT0Scwl4kNmC"], "parties": [{"partyID": "i15XTJTgCNNH7RtG", "userIDs": ["5Xmo9Q0Wb07N17fk", "xZSc6VbE0AGcekjM", "NHuPXtz8tXxrmzaf"]}, {"partyID": "MUguyDoN91uc28Ho", "userIDs": ["SpGt1g0GGbT4Hf2P", "PKOldkbgX9CWJKwX", "XSbv5eg9q86IaDFj"]}, {"partyID": "jx6uZerWbtwTX9gN", "userIDs": ["RByjbE8lOLAfTXKL", "zbrddqcKLa7LevxN", "HOSEhQRZIp693lRw"]}]}], "version": 39}' \
    'wDwD9RKvQX4yFQFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'AppendTeamGameSession' test.out

#- 58 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "rRoM6FoqCYw7AlxO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyJoinCode' test.out

#- 59 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '6qdFpc71sSck3ggZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetParty' test.out

#- 60 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"WJlSlCQMDji329Pf": {}, "VrvMEPtpsSNcpK1Q": {}, "kB2Sy8Ww79LVeVsk": {}}, "inactiveTimeout": 33, "inviteTimeout": 10, "joinability": "WAEvdRF9bqMj4ro5", "maxPlayers": 56, "minPlayers": 43, "type": "19VE838c7OydVw0z", "version": 57}' \
    'rW8i8krFWJhe03co' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateParty' test.out

#- 61 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"RFok5d3AyGrZO8Gu": {}, "oXNSoVEBG7VbBPUW": {}, "ipz9C05YabFX4FCK": {}}, "inactiveTimeout": 39, "inviteTimeout": 42, "joinability": "XJKG3rqBmILhtWm8", "maxPlayers": 90, "minPlayers": 80, "type": "QvRUbUDSiefGEdLu", "version": 5}' \
    'AadM9y66Drf4SSGG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPatchUpdateParty' test.out

#- 62 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    't3MiBKohow3kKoaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGeneratePartyCode' test.out

#- 63 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '1K4CDuH1mMIfOCDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicRevokePartyCode' test.out

#- 64 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "VAHrHncR5dShqiBU", "userID": "I9esSsXegSEhrPpK"}' \
    '2q8kxR4BuEksS2A9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyInvite' test.out

#- 65 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "VOA8H9VeHv0L2Acm"}' \
    '960EYQEuGJVl8xs1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPromotePartyLeader' test.out

#- 66 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'WId9WlalqshF9Rh2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyJoin' test.out

#- 67 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'o7GCQGPCxwEdkyuT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyLeave' test.out

#- 68 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '3MgzReRq0112ISAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyReject' test.out

#- 69 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'ROIodcmM6v2AEozW' \
    'WaYvBLE46bpuJip8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyKick' test.out

#- 70 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"JyxJ39vrtuWWrqTZ": {}, "bSqBSKp8AmgwhYzk": {}, "33J34fiTxK63OHpn": {}}, "configurationName": "UCGBVfpctNFUsUQ6", "inactiveTimeout": 40, "inviteTimeout": 98, "joinability": "Qcb2o1J5euLAbBge", "maxPlayers": 20, "members": [{"ID": "3ig8Jg5VByeI3ycM", "PlatformID": "cYYBixKJXCISQdwe", "PlatformUserID": "c1m8BusV9tUh74KV"}, {"ID": "o6Xqjz2xUKLNWSmY", "PlatformID": "yVvyelIJ8QgaLMqi", "PlatformUserID": "836ULa7cfZl4VuY6"}, {"ID": "rsZyo6CBRRnoOikI", "PlatformID": "xXKKIR6kPmswm5TC", "PlatformUserID": "AU1cKApdJDnE73GL"}], "minPlayers": 25, "textChat": false, "type": "SZns5owBhoUg4LsG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicCreateParty' test.out

#- 71 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetRecentPlayer' test.out

#- 72 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetRecentTeamPlayer' test.out

#- 73 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"P6KLPXkvUv2XiXaB": {}, "zsmaxjTZPlLitytG": {}, "ka7Kv5TacQKF4OlR": {}}' \
    'GdmXxETLEQrr3KCA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicUpdateInsertSessionStorageLeader' test.out

#- 74 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"V9alq3hK1G4kKooS": {}, "NNUZuiynZ64IwncZ": {}, "Pk82GF3eTC0vzZUD": {}}' \
    'j9dzGgGVxo9OHgfH' \
    'umyfuBNisecYbcOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicUpdateInsertSessionStorage' test.out

#- 75 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["R45VDlvSc0Mr7Imw", "CwGqOf0bNs97KvKy", "j3MqS7Dcmtfh50eO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 76 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetPlayerAttributes' test.out

#- 77 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "sHezWTqgYPixtHk6", "data": {"lWq6tEeUmU96FLEa": {}, "k0mJqjRYldcTpdeC": {}, "D9XPRi4bAQL7VE2w": {}}, "platforms": [{"name": "L8Y4JFVUdzA8bvXl", "userID": "DhG7BrorbKIKuOXJ"}, {"name": "Pm5ztrr09CDA8Ij5", "userID": "bGKSuopWQbaCvdPS"}, {"name": "q8Z27GpvHCDx55JZ", "userID": "5z6gujpFzlPspQD9"}], "roles": ["IRIpDDubntPCFxfe", "oW2NdSWzOXjO1NQU", "qWHBW78XREZCiTNA"], "simultaneousPlatform": "xq26gZrPqCsSDspv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicStorePlayerAttributes' test.out

#- 78 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicDeletePlayerAttributes' test.out

#- 79 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicQueryMyGameSessions' test.out

#- 80 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
