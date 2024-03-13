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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "attributes": {"mLZZbSqb8RwNmn9H": {}, "rNQy4uZAAiE0mit9": {}, "RGCCHYzUOcEdscKH": {}}, "autoJoin": true, "clientVersion": "EqgA8yu7Vk6Jt4Ym", "deployment": "os9Jcdos4fYcTVU6", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "vCkGZ5dAgqxpBFma", "enableSecret": true, "fallbackClaimKeys": ["oxozr6wfNPX2bOIt", "RMvqtlB2jJCSQT27", "9ZZPYGu0rdlgdWyO"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 76, "joinability": "i3choQrpOsDBU5Se", "leaderElectionGracePeriod": 31, "manualRejoin": false, "maxActiveSessions": 59, "maxPlayers": 79, "minPlayers": 15, "name": "yKrQpM4hkkK6KKXN", "persistent": true, "preferredClaimKeys": ["3xoJ8aeCnaLpUKp4", "4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7"], "requestedRegions": ["il35MXbN9oCMNqq9", "8SjTvhZNkSQ70D0H", "6BXksUC9b6i5lZC9"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "gb3boLQQ1MzH7Qm8"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'bwbmXgdAPh1EThG9' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["QZxfgPubTDIHrvqA", "ThuwjRHpKKTlmVr9", "XuoJbRFQSKVPHbn4"], "SessionTitle": "Xxtu7LQRENjEEztx", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4lSck0ZHn5GI39YB", "XboxServiceConfigID": "HqaTHeKtW18iGeUl", "XboxSessionTemplateName": "c9d9sogWa24CKNS0", "XboxTitleID": "GqVvUfHQvsHXNUNe", "localizedSessionName": {"4mhgo5QB65lSAiYn": {}, "NjkfZrQvGgbLdLsF": {}, "zHkBMr1yrOMlNFSr": {}}}, "PSNBaseUrl": "UEirnjX9fDmIbeZx", "attributes": {"zfTcyiuATus9hsfp": {}, "FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}}, "autoJoin": false, "clientVersion": "Ct81P1ktfIovmv9g", "deployment": "sR5cJcHm3SZLxoRD", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "fRByjlBiuFM3FIoV", "enableSecret": false, "fallbackClaimKeys": ["1X2PFAAMwzHPxB1U", "skYs4Yw20DOqOBSC", "2DKHRuPMMWH8Yb33"], "immutableStorage": false, "inactiveTimeout": 5, "inviteTimeout": 96, "joinability": "eJ5i0EeDxOgBnhhq", "leaderElectionGracePeriod": 63, "manualRejoin": false, "maxActiveSessions": 63, "maxPlayers": 72, "minPlayers": 18, "name": "aDml48wdNFLTm5T5", "persistent": true, "preferredClaimKeys": ["vQR3biBfsu4jmsRE", "2w1yEkLgh3tIYt4S", "qYUTLDx9gIiDandp"], "requestedRegions": ["GT2t24aOMh5eC3IH", "eHSKLCa3xreNDUWe", "hwH3q31A806DJgas"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "fe2NubeoKFeIaFQC"}' 'YoDPICpnduEEQlUL' --login_with_auth "Bearer foo"
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
session-public-update-insert-session-storage-leader '{"WdECaFGzfZ2hxcJ2": {}, "Fnemn7M23SzUo4hN": {}, "BDh9ZFP1OW0nXOEr": {}}' 'QPS4VsRoYIK69yg9' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"ADCGiXaLs2xjHkin": {}, "OD975nARHCmhNHSX": {}, "uqIHsxvaUoXDmwWs": {}}' 'ukxncuD3QxCXMd00' 'YBWCaVVmM45mfIZs' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["WhkS476dGGJwJ00U", "H197MJ6zU7JLMQyM", "WzYQCAaPJgoxGJoJ"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "895ImqK6tVsaUq3s", "data": {"tUh5J5Z9GiBiSAyl": {}, "X5cS0IeHpWCugmfO": {}, "L0QQpxsuD8PGqku5": {}}, "platforms": [{"name": "9eFJrOXyDYz9vMUO", "userID": "PG0iHDT8QbF7gHPT"}, {"name": "PQbvLt2NRqJGIKzL", "userID": "yH1y72L13Ornyx34"}, {"name": "luLdvtsTKXMjiw6g", "userID": "YPvfn2Qt9iyq3Nyk"}], "roles": ["8ncu2Z3eDHH9WaVO", "4iKhDcJ7TCcNIsQ3", "PuppUxDSK8aOTGMu"]}' --login_with_auth "Bearer foo"
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
echo "1..78"

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
    '{"regionRetryMapping": {"dcxlCV4cNbJGQ57l": ["PdinpjS2DRfGt9Gl", "yZVQ4X67tPZSTpPq", "3xjrElvvDgw0ag7k"], "SWE0Hiqm5IuLryiE": ["XqvUWDjU1G0EVjVZ", "w1ToLuPakQN1MpOs", "1RVFrcg2CXxepx78"], "fvsyhE2BKtyTDSIM": ["7mkmvZ7Cmsh4US8o", "4jfMANPpmZDdMiCx", "muCCVuFjS1GC1d2b"]}, "regionURLMapping": ["92B4vEgj3HOmhcWm", "428XejRF94NIY9nM", "rBZo0lNUBDShHD32"], "testGameMode": "vvL28FPwTiXfLcxD", "testRegionURLMapping": ["C9Ynd02mECIQhfIh", "HtADUQ9zimQTQT95", "pFJUAJsyAfeKOufV"], "testTargetUserIDs": ["4f15NohXu6opxQGR", "t6PqlkL0diRhLC10", "ih2EQfY3XCv4hdOa"]}' \
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
    '{"durationDays": 10}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 64}' \
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
    'mn8Onb1a9gMz0F2U' \
    'tmp.dat' \
    'BRmMhAbUWmFhdYLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 53, "PSNSupportedPlatforms": ["GIDhNC66szbCCf73", "IFbRkPSSITz4TjCr", "JHXGXku2YVuOzhxH"], "SessionTitle": "mnrrV9ZGWrZ05sxe", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "6RpmKDebNkylbynk", "XboxServiceConfigID": "gT9vayLLiizac7Ge", "XboxSessionTemplateName": "6zKJdlt7rjF5RaJw", "XboxTitleID": "vkWVco2LTo5ijlvD", "localizedSessionName": {"F8qBWCQ9dLWYyS8z": {}, "dhMeBXH8x6HdVfZV": {}, "DAiU6iJOF7JKZFNk": {}}}, "PSNBaseUrl": "2NKy59X8iOg2sVBi", "attributes": {"CoeC5weXJl7PeiMH": {}, "8z8dVej8N2yv6VTn": {}, "OK7xAvM7tuL81lsR": {}}, "autoJoin": false, "clientVersion": "xxSVp3Gd2TK0HzYv", "deployment": "iTgYmx82JVBRLPZ6", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "tne5dbguBF6Gsvvd", "enableSecret": false, "fallbackClaimKeys": ["opXtdsJQeJ1too0q", "vxphTLEEBGTtZyTj", "dKNKgYazujsmSmyl"], "immutableStorage": true, "inactiveTimeout": 16, "inviteTimeout": 29, "joinability": "txIq73aMb48jISd9", "leaderElectionGracePeriod": 62, "manualRejoin": false, "maxActiveSessions": 83, "maxPlayers": 34, "minPlayers": 89, "name": "QpoGkUWNizk5UcPA", "persistent": true, "preferredClaimKeys": ["QaGGL46LuxJF3sbe", "qWBdQuWfgBAKx27M", "SBqabUXOGkkoMUZn"], "requestedRegions": ["1YXj5zFZeOCOR9Nv", "BQZSJPOIKrRBrYVz", "i9ui3lvozTt9TsH7"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "uU2aL4bPkk11sys6"}' \
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
    'GdkDcos5uVJ0BJfZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 94, "PSNSupportedPlatforms": ["jvA54CSqZFDsO1sk", "RjOU1SMfQVQa6blj", "9Rdd85bdYUumPKVS"], "SessionTitle": "ZCg3XTc9vQe0dHJf", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "L9cgbUmulhe98oaF", "XboxServiceConfigID": "KlQicdrxVhrtwSd9", "XboxSessionTemplateName": "QWVMYz7TU1TsxsCh", "XboxTitleID": "SclSkb5aBi9K9zyv", "localizedSessionName": {"6gFZXI5nXJ7hLi6H": {}, "weweRmyo91dIn7Qq": {}, "XBDXJcrqKmXDwoEV": {}}}, "PSNBaseUrl": "6tCdrxw1KOPhuvHu", "attributes": {"YrGWDK41uMOC0mRv": {}, "SoaGk4ktF5wnJDg9": {}, "Q3WXiydCOInVolsr": {}}, "autoJoin": false, "clientVersion": "CHmj763vLwtYEJTS", "deployment": "iXjcY5ZPkv90lyKS", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "tpaTxi7k489jRCn4", "enableSecret": false, "fallbackClaimKeys": ["qFTi1t530Wj1WfzI", "vc3VlSXrA3XUGud4", "tVjmxEf4XvVhFJTx"], "immutableStorage": true, "inactiveTimeout": 70, "inviteTimeout": 97, "joinability": "ITBg9x4unq3eOMHI", "leaderElectionGracePeriod": 74, "manualRejoin": false, "maxActiveSessions": 60, "maxPlayers": 94, "minPlayers": 9, "name": "yBG5dCUoExnKfV38", "persistent": false, "preferredClaimKeys": ["9IN4V1OdhH4GVU7E", "xlkmc4xYiLjLyZrX", "r9Bhtzn8jAdTn6xB"], "requestedRegions": ["hrciryLm67rkadH5", "Y41SLjCPrFa05Xl5", "TPC5GODS44bmm7jP"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "ddfdsUqjXVzW1Qqx"}' \
    'nWR5sheLgsAF4ctv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '5guycGiq9j2EyIkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'fLDpgHnMOn8nc3gU' \
    'Z8ZFyyEr0KBXuJBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "K4QtEydPWLPBYiR3"}' \
    'UbJc1ZYapx7C477e' \
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
    '{"tqgfOJDUT0uKAPrA": {}, "Rya2IMlNiXpF4qvs": {}, "UUpHqi33TcBGkc0H": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["jUcnkpU9oVzl2kBu", "LFXIeCEKZUTz3GvC", "AZ5j24acYHbrryHB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'GO9zP3FaepA3b3YJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '9nJM6vtT27xv85K5' \
    'MU2qmbeqaVemINdC' \
    'lpF7OvlBIEgjse5k' \
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
    '{"psn": {"clientId": "d6GEDo08yq5E5Hle", "clientSecret": "Loog4me2NBFp62xl", "scope": "XvVcJerTPW02PWsH"}}' \
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

#- 34 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'iKYArAxnKBfBfDlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminReadSessionStorage' test.out

#- 35 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'QQuAc10DjjwMv4vr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeleteUserSessionStorage' test.out

#- 36 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'IPRtvhQIyLarjaLO' \
    'KnX51yAB8Pa3uNGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminReadUserSessionStorage' test.out

#- 37 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminQueryPlayerAttributes' test.out

#- 38 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'haLlJzJMSnJIIgsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminGetPlayerAttributes' test.out

#- 39 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"VmaGYxUX1B9oVuzG": {}, "2CnYX2YBF2g7TVtz": {}, "YEHUodh3iUfBthbe": {}}, "autoJoin": false, "backfillTicketID": "59HF9ejHaILQruAu", "clientVersion": "YyJLYGqMv824ouSg", "configurationName": "kpK70uJmUL0uzEli", "deployment": "xc023dIvDiA0tQWl", "dsSource": "HwBcTtztx3VAl6tX", "fallbackClaimKeys": ["FbnATCzUOIzVcy9k", "3ie64Vnwa0ClGQJu", "ltJe32AiwKadEoIV"], "inactiveTimeout": 26, "inviteTimeout": 79, "joinability": "prwPsa9YD92CX0rI", "matchPool": "TajpwHITGeHTnqRb", "maxPlayers": 52, "minPlayers": 88, "preferredClaimKeys": ["BB9ZFgJbQ3Fj1umx", "4ItzkMJ7cudf4r91", "6GPrhn2etVIQvRkQ"], "requestedRegions": ["JAtDUH9tx60AehGz", "1ermJYXsYgL7TfyI", "lAwjTZdRZJJzWZwv"], "serverName": "TX2bamSCvX1nwvSW", "teams": [{"UserIDs": ["dDwD7WJHzgNZUKsI", "5y0mR3zMyTsftKqn", "sIJctAdxyZVKHA9D"], "parties": [{"partyID": "kaSOWgtg8yw8lHEb", "userIDs": ["VDwBAqanOlscRIWw", "82k5K5VTkdubkOFl", "dMCQ98JH4n0Jtgqz"]}, {"partyID": "Zv5kVu4S95mj8YRv", "userIDs": ["ae4f4lhBPbarbWEm", "8bVtZcfVCPdQhim9", "QKUAFTVYelIlGJg9"]}, {"partyID": "wdc8bihhWjfZpfcF", "userIDs": ["BUsnnDJlmD1iEokb", "UiYzCQh2iNTwtnoh", "ddMzMTQ9P7sYLDWA"]}]}, {"UserIDs": ["JOA75K4BYJ2fkqYJ", "oF2FI3vyyqRzc20O", "7FdsJP1G9tyBTfER"], "parties": [{"partyID": "XdvgD1Qf7Ot2DkUt", "userIDs": ["3yexZBRvxYnEBhXt", "AVxCd3meTrT7cF9o", "VCh89wNOkKYssVej"]}, {"partyID": "cL3kR3hCGNgaJmuA", "userIDs": ["LlMQl9RLrthbfp0V", "gweLlT2sY3SsTnDQ", "Y7kKU2u06Q4veujx"]}, {"partyID": "tyQENvJrBCqeg67d", "userIDs": ["4RWOqO4U0bitNQLz", "wRoWnR0AbkCPY70F", "mvviVIBbcujF8Vk5"]}]}, {"UserIDs": ["qb8NhWWwaxyMchkt", "8l5IPSrwrJl7wYIV", "w13NCo9yXlbQ52FT"], "parties": [{"partyID": "HTCj6SEAzT7TOpyi", "userIDs": ["uvvQUm29Iacq4XRL", "aA643nTMtXSAyejn", "ny0Ju13b6o5uB2XM"]}, {"partyID": "6IHy7EEvHyLmcvrZ", "userIDs": ["ZOdwe1x8RjU6Bi8J", "XE52sUBBq2SimQQo", "Lbe5YOJvxGRxUzrT"]}, {"partyID": "wagH7BMT1IZKTdNF", "userIDs": ["VBQ1crBXAupATO8u", "XsqVpdiWo8SjDAM0", "Riw8wLYW3n4F3LD1"]}]}], "textChat": true, "ticketIDs": ["WgJpGPigdc5VyC4q", "vWjVac1cQvSxgTNI", "UzxDgBlIbuzm7DzJ"], "tieTeamsSessionLifetime": true, "type": "0NFRJIhFXR2dYprP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'CreateGameSession' test.out

#- 40 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"mbpuptECGd5cdXC2": {}, "Sesc6y68whNBYl9i": {}, "CqfW6rqGOQny4ij4": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicQueryGameSessionsByAttributes' test.out

#- 41 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "ysYPonb59gQffkNO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicSessionJoinCode' test.out

#- 42 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'mubxEJr2qEAuJbpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetGameSessionByPodName' test.out

#- 43 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'Srcbc4LWfKaY5c1t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetGameSession' test.out

#- 44 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"P5TDuI5f6m4KC07C": {}, "nsZe32hqEcB1ExYM": {}, "Bb3ckvoaJYdMqGeg": {}}, "backfillTicketID": "cg3eRvBZXN3cjIXm", "clientVersion": "FWRJnj8xN7HDPTUE", "deployment": "DPN1Kb4UTPWDXTSb", "fallbackClaimKeys": ["55g8LSTs7Nf95lGl", "Prf6obIdnI6Ag7eU", "YcYJ4QzXCmqr6gmP"], "inactiveTimeout": 67, "inviteTimeout": 76, "joinability": "aHP5SVPvRLiDi0mN", "matchPool": "Hb6Lx8eq8SGNwEQO", "maxPlayers": 89, "minPlayers": 8, "preferredClaimKeys": ["j17xGhaBKoUfiHjG", "mCyPsKCJTv1ic9gv", "agF2cSuztsJ5tj64"], "requestedRegions": ["gV7nmDk29mcjSuz9", "vbNStqPtQmQN6eKA", "GiZFCftT0RWECdjW"], "teams": [{"UserIDs": ["YrnulxcCKAru8pOa", "AVLDB4k3JwkdaxR7", "GJpYmuYCPG181q9G"], "parties": [{"partyID": "A5DydC2D8UT6KOc4", "userIDs": ["VPDUR9ayazqXRqeg", "IUicYXXzxsBFrUs9", "BYp6TgCejBd5o7iT"]}, {"partyID": "ST7R3KbbQGERMNpq", "userIDs": ["Wb51y5RUzvMfTkPy", "0fGvTGgfLKsg0b1B", "q78cE5O5pmPnbiPJ"]}, {"partyID": "9j4vxmbH3rVaauuf", "userIDs": ["xkPHElug48TgfNu0", "rqXUOyToLPIREGIK", "lJt3EP9kKwkENQ8V"]}]}, {"UserIDs": ["OHGwbADMfuOmh0lc", "iRhVZ2DeoODXMzLS", "rzoiBnYi5UWs3tYl"], "parties": [{"partyID": "YeMoCimJySocRvUW", "userIDs": ["DOrFZKPNoN9AWtLK", "9TFgi9j2XMh9Wpif", "qjNjLOtNQts2yxf6"]}, {"partyID": "MLZJ2jZfZbpTJezz", "userIDs": ["riCDWXT59SRu0YqU", "xKDc84OMIzvTScdb", "KBsAyJMz4ILNDvhB"]}, {"partyID": "4Eoes9a6XaJeRbzT", "userIDs": ["PwD3jxF7vxRUY0il", "rNoFT98SgtJd4Z5f", "8nfaKqdZFLbZEHxs"]}]}, {"UserIDs": ["DxeR6d7r1SQw80Jf", "MpPrSqYypRUnq5o4", "ETeCUYG9ccTt7Wxw"], "parties": [{"partyID": "8OQ13t3uTw6zQuoZ", "userIDs": ["cXQpoTOxe8y1jorN", "sg9ZKYCKoISyXtHz", "oWGdYohxMp3uOQIy"]}, {"partyID": "bqWfG9BJ6FVKlbYH", "userIDs": ["tbPtaxvagSlpGgVT", "F6VeDAPOGBwweyFf", "XEOEAEtbag82KgBg"]}, {"partyID": "yCd5vjkfz3eR4DtN", "userIDs": ["p129hzBw3xLUcCEt", "0DzmkJq1sml5bYt7", "6BNsi4giR9434WpK"]}]}], "ticketIDs": ["KdzxoufCNlFoOcWQ", "Qy4bjmQeEweoBHTd", "wAk7ZQnbqY1cQwVE"], "tieTeamsSessionLifetime": true, "type": "NESzCEW9dUVhZjLf", "version": 40}' \
    '4jVi9kIpqgrzpUkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdateGameSession' test.out

#- 45 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'OBWydXV0Fi02aFr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'DeleteGameSession' test.out

#- 46 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"CDapjwNOl4k8rVNr": {}, "m8drv8QD2JOe2Ntz": {}, "7EFvowPgIGuetxFM": {}}, "backfillTicketID": "qXCQMAqQ2ZRGzNtr", "clientVersion": "ThFa9XU8mosluiHZ", "deployment": "J7O8sAQ32wj9uaDz", "fallbackClaimKeys": ["sr9xYiWRuuzQJiLc", "1eI9w3JEhxPGbEk7", "s7gw07FlounC3vJK"], "inactiveTimeout": 57, "inviteTimeout": 35, "joinability": "C7SwgoViPeIB4Ehy", "matchPool": "0Y5aSJVDginxAM77", "maxPlayers": 8, "minPlayers": 80, "preferredClaimKeys": ["9C14FbfiI2NPvl1k", "CY5bEokxXxkWZbjf", "7GZxaossQmjo69wo"], "requestedRegions": ["hJFyTNk5FGUPhR4L", "EZvz3EjFR7996Ug5", "m4axDV5uTcYsoahU"], "teams": [{"UserIDs": ["rELQ1btjJOqQMgZW", "AU6E92nHJzvw7tnY", "tGfv0EJyjBu4EzwR"], "parties": [{"partyID": "jD7jmQJeFPghqamS", "userIDs": ["c5y0X48eT7Mluexk", "87b9Z5BTsEA3EdmW", "8saabP4xRowfNojz"]}, {"partyID": "PXI2v0prR3OEey0M", "userIDs": ["kZwS6TYwNN3UYhic", "03qGEg5fNzBVrjo3", "g8CfRwtyl1HeT7VE"]}, {"partyID": "PgG40QyXzsOzgck0", "userIDs": ["78IghoQBp2mWAOYk", "sczxBS0OBCa2vWad", "LmQtYKmEMzicbuL2"]}]}, {"UserIDs": ["S3RiW8dLTCBfGUdV", "EdvdQL7sVwcZ2Pof", "aJoSqtrEOqxH46fR"], "parties": [{"partyID": "TSZoDdT0fefo74eg", "userIDs": ["3Nt2c0r4GqF0NHgl", "OVuNZ9LzNeJnBurh", "54CWbYb0Pebyt8b4"]}, {"partyID": "DGscjwrizsFUgYwb", "userIDs": ["aLvqvQ2NbmDITuym", "TBjn3d2sFzMS3QaV", "jZF7Ax6115Kg9U8v"]}, {"partyID": "rQJXQxoIbVi2CLEk", "userIDs": ["277Ivjj1A647XQ3k", "oaAfZIim0sFPm1YN", "27bojDVaZLpx4kEW"]}]}, {"UserIDs": ["YkO6KrKUMhJrASBh", "61hmWKSSrF35anDG", "vur19V18oIrUKXtt"], "parties": [{"partyID": "gAI2QdWJFLmoPEgd", "userIDs": ["8EMspOs8nkic9gj5", "vyUMAAmIHYbsxG5N", "066FXb88SbLOa21D"]}, {"partyID": "iSFsm0XXQJWszvTQ", "userIDs": ["EuALzDNp1SZ58aDl", "lwzTRHak1MXxj7Es", "rg7900nml5BidsK9"]}, {"partyID": "dCEzhVnOv0PQbVIa", "userIDs": ["KiHfoeorY7A1otGF", "yv2SMjbEr50qGdCZ", "Ic6EFqBKxbS7Q2Og"]}]}], "ticketIDs": ["RucL1jwRXzfjDZZB", "mOau6syme06c6SKL", "c2mEC3IXl5XCbkOf"], "tieTeamsSessionLifetime": false, "type": "zjoSV31tvmMB6jzr", "version": 32}' \
    'fU7HByGXPMqxj4hB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PatchUpdateGameSession' test.out

#- 47 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "gVY3YAxZLKbcOdyj"}' \
    'qf6Q4oiwoJcaRMEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'UpdateGameSessionBackfillTicketID' test.out

#- 48 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '15LBlTVufc5ZyODR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GameSessionGenerateCode' test.out

#- 49 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '2NVyn4PRqf3eRbZq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicRevokeGameSessionCode' test.out

#- 50 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "BAoKGcVCdMiSNV4q", "userID": "Brt1kcLmRv6EJtl5"}' \
    'xWnsb8oWq94RImNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicGameSessionInvite' test.out

#- 51 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'VIJnhhwFDV1Vitao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'JoinGameSession' test.out

#- 52 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "mvWTzdsW4N70wYS4"}' \
    'Kj7Yi2VvoQNW8Yc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicPromoteGameSessionLeader' test.out

#- 53 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '81dYdvGxJAMDRA1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'LeaveGameSession' test.out

#- 54 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'F7jdWlekFwO94VBC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionReject' test.out

#- 55 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'V9qJhWva2FPBujX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetSessionServerSecret' test.out

#- 56 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "geYCpGJM4sqsPNJM", "userIDs": ["iZXXOFwmGWAvNF0Z", "0GkwxUNYyNwGiKrk", "nH0Y5mrQgLC6D2qs"]}, {"partyID": "FiQHglUQMZi5WjMZ", "userIDs": ["fOadpgegCUjTdi1E", "hr8OtqpNJ9R8TuNy", "4ejmVA3vMCsGyPd1"]}, {"partyID": "2B8QNUz0hFFNbH6j", "userIDs": ["2W4roZM2UKAXEEsL", "5D0oiFchQnVeq3g2", "AB2WIRUQmauIY5HX"]}], "proposedTeams": [{"UserIDs": ["CZ0W4XmWP0HzSdiy", "lLhVYszm8xY33OQb", "umu2QHLyZNuysyM4"], "parties": [{"partyID": "OfCzdQCXMAWnf87Y", "userIDs": ["PNOe9Eevf1fhMg1E", "2k7QLFrVgtX7y0fP", "OieDCow2zXyFFVpM"]}, {"partyID": "87yqEwEacQMTlqN4", "userIDs": ["LKkxJ5v3SBafnKNi", "MPbFkFGA85W3HJkq", "gS2B37wwoPYOHiIs"]}, {"partyID": "xmsLBPBJuNLnWRrt", "userIDs": ["W870qD88ZcduZSe7", "W20UZcDaiq0nEZ7P", "yhqFJkDClOsKmfsg"]}]}, {"UserIDs": ["JdmzsDPsWh1k0cQ0", "8NG6dX2TZkil67kR", "ngoUa83ECh1gqPeS"], "parties": [{"partyID": "193TNNzot3sVli3G", "userIDs": ["N2XTrFibRAhzzEWz", "WlTY70qdgJRvpZrS", "pWX3KEe2BjV00ReC"]}, {"partyID": "XFffjJJxlgjzIhpg", "userIDs": ["OoIOD74V21HWDAfv", "Xwdxbyp4HAPbBbNP", "StVBUpKgOssFkz0F"]}, {"partyID": "36piDYXeHZ7FHls3", "userIDs": ["nyvconqbHQqKLQKe", "3xmj6s0GqsWncp5L", "rqbiKudv9z75SzoC"]}]}, {"UserIDs": ["V8ZMi2o1nR482D6g", "NClk9c87hosaPFC5", "zBW3ZgVZCj9ObVGT"], "parties": [{"partyID": "0Scwl4kNmCi15XTJ", "userIDs": ["TgCNNH7RtG5Xmo9Q", "0Wb07N17fkxZSc6V", "bE0AGcekjMNHuPXt"]}, {"partyID": "z8tXxrmzafMUguyD", "userIDs": ["oN91uc28HoSpGt1g", "0GGbT4Hf2PPKOldk", "bgX9CWJKwXXSbv5e"]}, {"partyID": "g9q86IaDFjjx6uZe", "userIDs": ["rWbtwTX9gNRByjbE", "8lOLAfTXKLzbrddq", "cKLa7LevxNHOSEhQ"]}]}], "version": 90}' \
    'jlnTgtgW33wDwD9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'AppendTeamGameSession' test.out

#- 57 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "KvQX4yFQFdrRoM6F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyJoinCode' test.out

#- 58 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'oqCYw7AlxO6qdFpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGetParty' test.out

#- 59 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"71sSck3ggZWJlSlC": {}, "QMDji329PfVrvMEP": {}, "tpsSNcpK1QkB2Sy8": {}}, "inactiveTimeout": 99, "inviteTimeout": 100, "joinability": "w79LVeVskqeUB7RS", "maxPlayers": 1, "minPlayers": 64, "type": "yqGFguhh3bvadRth", "version": 6}' \
    '8c7OydVw0zCqoMZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateParty' test.out

#- 60 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"pIOO97DmQ5ZOzx6i": {}, "CJTu60IifzMhkk5P": {}, "xsjqbCKpMv2Yky9D": {}}, "inactiveTimeout": 20, "inviteTimeout": 60, "joinability": "abFX4FCK5ucTFsAF", "maxPlayers": 52, "minPlayers": 56, "type": "aO3yJpA3KMxBlrRy", "version": 40}' \
    'SiefGEdLucrtO2gC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicPatchUpdateParty' test.out

#- 61 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'QD057DrDlgC2nzS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratePartyCode' test.out

#- 62 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'SiGUjVAw4v3q6JRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicRevokePartyCode' test.out

#- 63 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "cn7KaoCEkRdo6qHY", "userID": "IZWnXqQ1oHFJ9Q0v"}' \
    'qsL9SomqWsGA76yx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyInvite' test.out

#- 64 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "i0QzZWfmP2sx0KO5"}' \
    'bEJaPnAFjsodyJQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPromotePartyLeader' test.out

#- 65 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'VBrShGbIIuqK8C40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyJoin' test.out

#- 66 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '3HgoXCR6XOMXwKdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyLeave' test.out

#- 67 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'qk8T4QHK30EX0Fcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyReject' test.out

#- 68 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'pDl5HsuracO5Mnjn' \
    'xD1OXkxShFVQTRek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyKick' test.out

#- 69 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"Lfjmy8zosRCRgVwb": {}, "rQKmb01yA7U7dGMj": {}, "upZkZQY8CNyT4k3D": {}}, "configurationName": "IbfT22G5NpE130YW", "inactiveTimeout": 91, "inviteTimeout": 5, "joinability": "gxpKWtdtdtVW9anE", "maxPlayers": 81, "members": [{"ID": "J5euLAbBgejqc0ap", "PlatformID": "xqZ209BySn8aUaGl", "PlatformUserID": "AyvIslt7N1qcxKs4"}, {"ID": "nlf1MfqUZXkjHvcU", "PlatformID": "OTlxNf09pefgFIiJ", "PlatformUserID": "ssShBKsQjXvfQgQD"}, {"ID": "t6ce8NDMErA82FrR", "PlatformID": "1GSogkewIzTOqKkc", "PlatformUserID": "jRh3l2gAJOTCbx7J"}], "minPlayers": 32, "textChat": false, "type": "dJDnE73GLmSZns5o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicCreateParty' test.out

#- 70 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetRecentPlayer' test.out

#- 71 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"wBhoUg4LsGP6KLPX": {}, "kvUv2XiXaBzsmaxj": {}, "TZPlLitytGka7Kv5": {}}' \
    'TacQKF4OlRGdmXxE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorageLeader' test.out

#- 72 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"TLEQrr3KCAV9alq3": {}, "hK1G4kKooSNNUZui": {}, "ynZ64IwncZPk82GF": {}}' \
    '3eTC0vzZUDj9dzGg' \
    'GVxo9OHgfHumyfuB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateInsertSessionStorage' test.out

#- 73 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["NisecYbcOpR45VDl", "vSc0Mr7ImwCwGqOf", "0bNs97KvKyj3MqS7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 74 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetPlayerAttributes' test.out

#- 75 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "RTrDCjhnKvsHezWT", "data": {"qgYPixtHk6lWq6tE": {}, "eUmU96FLEak0mJqj": {}, "RYldcTpdeCD9XPRi": {}}, "platforms": [{"name": "4bAQL7VE2wL8Y4JF", "userID": "VUdzA8bvXlDhG7Br"}, {"name": "orbKIKuOXJPm5ztr", "userID": "r09CDA8Ij5bGKSuo"}, {"name": "pWQbaCvdPSq8Z27G", "userID": "pvHCDx55JZ5z6guj"}], "roles": ["pFzlPspQD9IRIpDD", "ubntPCFxfeoW2NdS", "WzOXjO1NQUqWHBW7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicStorePlayerAttributes' test.out

#- 76 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicDeletePlayerAttributes' test.out

#- 77 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyGameSessions' test.out

#- 78 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
