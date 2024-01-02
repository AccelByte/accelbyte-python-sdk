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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "attributes": {"mLZZbSqb8RwNmn9H": {}, "rNQy4uZAAiE0mit9": {}, "RGCCHYzUOcEdscKH": {}}, "autoJoin": true, "clientVersion": "EqgA8yu7Vk6Jt4Ym", "deployment": "os9Jcdos4fYcTVU6", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "vCkGZ5dAgqxpBFma", "enableSecret": true, "fallbackClaimKeys": ["oxozr6wfNPX2bOIt", "RMvqtlB2jJCSQT27", "9ZZPYGu0rdlgdWyO"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 76, "joinability": "i3choQrpOsDBU5Se", "leaderElectionGracePeriod": 31, "maxActiveSessions": 96, "maxPlayers": 19, "minPlayers": 59, "name": "MyKrQpM4hkkK6KKX", "persistent": true, "preferredClaimKeys": ["3xoJ8aeCnaLpUKp4", "4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7"], "requestedRegions": ["il35MXbN9oCMNqq9", "8SjTvhZNkSQ70D0H", "6BXksUC9b6i5lZC9"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "gb3boLQQ1MzH7Qm8"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'bwbmXgdAPh1EThG9' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["QZxfgPubTDIHrvqA", "ThuwjRHpKKTlmVr9", "XuoJbRFQSKVPHbn4"], "SessionTitle": "Xxtu7LQRENjEEztx", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4lSck0ZHn5GI39YB", "XboxServiceConfigID": "HqaTHeKtW18iGeUl", "XboxSessionTemplateName": "c9d9sogWa24CKNS0", "XboxTitleID": "GqVvUfHQvsHXNUNe", "localizedSessionName": {"4mhgo5QB65lSAiYn": {}, "NjkfZrQvGgbLdLsF": {}, "zHkBMr1yrOMlNFSr": {}}}, "PSNBaseUrl": "UEirnjX9fDmIbeZx", "attributes": {"zfTcyiuATus9hsfp": {}, "FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}}, "autoJoin": false, "clientVersion": "Ct81P1ktfIovmv9g", "deployment": "sR5cJcHm3SZLxoRD", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "fRByjlBiuFM3FIoV", "enableSecret": false, "fallbackClaimKeys": ["1X2PFAAMwzHPxB1U", "skYs4Yw20DOqOBSC", "2DKHRuPMMWH8Yb33"], "immutableStorage": false, "inactiveTimeout": 5, "inviteTimeout": 96, "joinability": "eJ5i0EeDxOgBnhhq", "leaderElectionGracePeriod": 63, "maxActiveSessions": 24, "maxPlayers": 63, "minPlayers": 72, "name": "i8KlloeH0JT1ydua", "persistent": true, "preferredClaimKeys": ["0x9WT0GfH2rtOa4E", "XsXzOXQAk4mqrxzT", "tuLl4XlbGL8QOxtj"], "requestedRegions": ["zm8y2wNhmwoYZyI4", "EFZKBcYrCEAE7WIs", "fmx40NLRc6m8heKn"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "4b6z3LNUj7fdgLA8"}' '4Z8YYk6QEgJjBbED' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'oNf3n0hEoRCAcf80' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'zfFyabWAgIUXiI07' 'A68eaqC2J9jyEW6G' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "Lbc0NaKDUL3sa13l"}' 'k1dQBHO86IlBhnet' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"U4RwTqUXlTDBzOuY": {}, "saZA2yyd4mbqoOfA": {}, "DMMAXFaY9eKa699b": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["RVhyaKwwrAP2aMlu", "7WtjCtoYetOO847g", "8OudOfjnCuHZ3c46"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'RcQWsmqPNs92epxk' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '0i8VxsZNereSvf96' '99mCEHThUJkETAsS' 'p7gh4TeUTkOkAYfJ' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "B8AT9t4Tv207Y2QD", "clientSecret": "3oD5fLCr3OOlXVv8", "scope": "ZGF7uYnGzpipNDig"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-read-session-storage 'NJma1MbqqZtfNWql' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage '4nmwAft4gqkNNlWk' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'D9eOziYRFOn0jJLH' 'C9LxhvNXTwGBCtoh' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Ltl9Zuhytm5UDrT6' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"QXCs5SPBbRPZTF6o": {}, "QAXVG7tnsZg5QgXj": {}, "vyGJPN4eXbJE5Vs2": {}}, "autoJoin": false, "backfillTicketID": "cyomQoIXimBJehyx", "clientVersion": "lNsjUgxBkF6wFPoJ", "configurationName": "eQediogEhhM2rIiz", "deployment": "GdKvOPdq5xrgxSmy", "dsSource": "1DN9LFkYW5DQyj4b", "fallbackClaimKeys": ["j5Ro2ogaKt2ujQSa", "3Zdb65UXmy0Zp6iI", "aTIKUkmkk9QM0NBM"], "inactiveTimeout": 54, "inviteTimeout": 82, "joinability": "tFkEORV3bu1bNCtX", "matchPool": "7W40V6Do5sYadCCF", "maxPlayers": 36, "minPlayers": 10, "preferredClaimKeys": ["HHC3DpZxkrQDXuNF", "viMarv8mnfHK8CCm", "E2lPnsbD3SGEdlwu"], "requestedRegions": ["UccE536ugBp3HBve", "pnDCjgyJlXe36mgW", "jLfFmteue9nzJ6fH"], "serverName": "24T805tVg8JqU0jZ", "teams": [{"UserIDs": ["pjvsugAOS7u8RiWy", "erCSa8SRgwsAj1ik", "1jglaDXTvKCWwNTA"], "parties": [{"partyID": "hd2wrS0uPdjhdinp", "userIDs": ["ng5BLy8wbhMssAHj", "apIkY9Rf4wP57dBZ", "NR88YbCtmKy8M9zV"]}, {"partyID": "rjfGXZnqAQUoY1Gj", "userIDs": ["lIIk0iKoTTS1j02o", "7JjTXAQN0qdskdQV", "0TqI8EFnmDbxIxi4"]}, {"partyID": "YKlONk2Q5Y4Jvaiz", "userIDs": ["wiilatuUjjt9lIMG", "ql5ElEa9EIIlGcHB", "3CfR3ncDlwi3v3MF"]}]}, {"UserIDs": ["FJ1KesKoELCpobBE", "G8X645xpdXpai0rY", "aT5hOPjaf3H0tYig"], "parties": [{"partyID": "hU0VUfcYHJbBfAKS", "userIDs": ["iPW3VgsZXiR1DJ7H", "VWqMkNSawQUWDFJv", "JBWic7UkBeIXuqDu"]}, {"partyID": "AXI66bQ71w0deoV9", "userIDs": ["Lx5RDA1l2XcrciYN", "EzvSZIPkhSgORcz5", "S5BvmgBLxh4ijFnE"]}, {"partyID": "3Tam69qSZ7PC6f6Q", "userIDs": ["kmZXElW9YfRSse6A", "Az3S4czz0QKFlAVm", "VLu4AOec0z8eBeeo"]}]}, {"UserIDs": ["ip68J1nsv4W2OJht", "afxMSJlHeb34sZKH", "cl5LLLOexL4fZvWt"], "parties": [{"partyID": "ND2tcBFpX8lNtFEJ", "userIDs": ["7tnkY6Mca5afj12K", "2IzrBvvWm4udE0OX", "udXgNne8kJATwlc6"]}, {"partyID": "esUp6Sw1I98jeZQ7", "userIDs": ["hfxnhLd3Knaknoed", "9DHhLOqQGhCUr6iT", "rjyEgarAdNJOIG36"]}, {"partyID": "I6tRbRcrEveMdAdi", "userIDs": ["PKDUVSC00PYeDcag", "ginxnFIna3yddcbs", "PheTH26IUJNvYuGR"]}]}], "textChat": true, "ticketIDs": ["y8X1A3PrIfapq5AA", "eMe4L3mDWORBVXTI", "IJM9XsYIIZxiXNMR"], "tieTeamsSessionLifetime": true, "type": "9G4AvQkqsGnmyo5J"}' --login_with_auth "Bearer foo"
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
echo "1..77"

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
    '{"NativeSessionSetting": {"PSNServiceLabel": 53, "PSNSupportedPlatforms": ["GIDhNC66szbCCf73", "IFbRkPSSITz4TjCr", "JHXGXku2YVuOzhxH"], "SessionTitle": "mnrrV9ZGWrZ05sxe", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "6RpmKDebNkylbynk", "XboxServiceConfigID": "gT9vayLLiizac7Ge", "XboxSessionTemplateName": "6zKJdlt7rjF5RaJw", "XboxTitleID": "vkWVco2LTo5ijlvD", "localizedSessionName": {"F8qBWCQ9dLWYyS8z": {}, "dhMeBXH8x6HdVfZV": {}, "DAiU6iJOF7JKZFNk": {}}}, "PSNBaseUrl": "2NKy59X8iOg2sVBi", "attributes": {"CoeC5weXJl7PeiMH": {}, "8z8dVej8N2yv6VTn": {}, "OK7xAvM7tuL81lsR": {}}, "autoJoin": false, "clientVersion": "xxSVp3Gd2TK0HzYv", "deployment": "iTgYmx82JVBRLPZ6", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "tne5dbguBF6Gsvvd", "enableSecret": false, "fallbackClaimKeys": ["opXtdsJQeJ1too0q", "vxphTLEEBGTtZyTj", "dKNKgYazujsmSmyl"], "immutableStorage": true, "inactiveTimeout": 16, "inviteTimeout": 29, "joinability": "txIq73aMb48jISd9", "leaderElectionGracePeriod": 62, "maxActiveSessions": 75, "maxPlayers": 7, "minPlayers": 83, "name": "qQpoGkUWNizk5UcP", "persistent": true, "preferredClaimKeys": ["15QaGGL46LuxJF3s", "beqWBdQuWfgBAKx2", "7MSBqabUXOGkkoMU"], "requestedRegions": ["Zn1YXj5zFZeOCOR9", "NvBQZSJPOIKrRBrY", "Vzi9ui3lvozTt9Ts"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "A0TuU2aL4bPkk11s"}' \
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
    'ys6GdkDcos5uVJ0B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 73, "PSNSupportedPlatforms": ["FznTgDIwZIRWf6T3", "by2kYSCdnFKLc0xc", "TjqjdcEfU61OJYMn"], "SessionTitle": "W49rWynp1ck1vT90", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "fF6KIuvnRCa9Jkty", "XboxServiceConfigID": "BdxkZKrEWFw9GYxj", "XboxSessionTemplateName": "iiOQAD77ci0vfWVZ", "XboxTitleID": "oRRMPi57HyKKz5ny", "localizedSessionName": {"I6ulKNKoXa0dgx1J": {}, "gjC56pda3YhtQxpC": {}, "YME6x21pdX2QSPAd": {}}}, "PSNBaseUrl": "9sxoLnWGP1PafIjL", "attributes": {"X8ce0KbNN7Ycl2Jf": {}, "mQplvGjVQ4aebjfg": {}, "Gu472oWJlfglLM4x": {}}, "autoJoin": false, "clientVersion": "Volsr6CHmj763vLw", "deployment": "tYEJTSiXjcY5ZPkv", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "LNW11vtpaTxi7k48", "enableSecret": false, "fallbackClaimKeys": ["DbkVs3qFTi1t530W", "j1WfzIvc3VlSXrA3", "XUGud4tVjmxEf4Xv"], "immutableStorage": false, "inactiveTimeout": 16, "inviteTimeout": 66, "joinability": "ISDrBVg6NuDZvPb1", "leaderElectionGracePeriod": 21, "maxActiveSessions": 8, "maxPlayers": 43, "minPlayers": 83, "name": "UfNfUDe4g7q6PHEa", "persistent": true, "preferredClaimKeys": ["nKfV3869IN4V1Odh", "H4GVU7Exlkmc4xYi", "LjLyZrXr9Bhtzn8j"], "requestedRegions": ["AdTn6xBhrciryLm6", "7rkadH5Y41SLjCPr", "Fa05Xl5TPC5GODS4"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "Dc7xMrRKvw8ISP2W"}' \
    'KmCRRXBxlalCHtWl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'KxLpS8fLWoQ5nuJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'atQPxR7dvBVC5zgO' \
    'KLTDmHe8c1eJ9sde' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "7Ryt4udIv22M18uu"}' \
    'x9xBomQFPFWy5cwN' \
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
    '{"PI6aFo0MVwDZCIXF": {}, "NEL3uWVRz3V7YbJM": {}, "3bNLWHAbCZixe2cQ": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["6O30lpzcBQMAEcNc", "JqrKxnMzSYoc4Zji", "MY4H34B6wVd8ipcK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'YHbrryHB6GO9zP3F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'aepA3b3YJ9nJM6vt' \
    'T27xv85K5MU2qmbe' \
    'qaVemINdClpF7Ovl' \
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
    '{"psn": {"clientId": "BIEgjse5kd6GEDo0", "clientSecret": "8yq5E5HleLoog4me", "scope": "2NBFp62xlXvVcJer"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdatePlatformCredentials' test.out

#- 32 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminDeletePlatformCredentials' test.out

#- 33 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'TPW02PWsHiKYArAx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminReadSessionStorage' test.out

#- 34 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'nKBfBfDlrQQuAc10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteUserSessionStorage' test.out

#- 35 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'DjjwMv4vrIPRtvhQ' \
    'IyLarjaLOKnX51yA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminReadUserSessionStorage' test.out

#- 36 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminQueryPlayerAttributes' test.out

#- 37 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'B8Pa3uNGKhaLlJzJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetPlayerAttributes' test.out

#- 38 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"MSnJIIgsAVmaGYxU": {}, "X1B9oVuzG2CnYX2Y": {}, "BF2g7TVtzYEHUodh": {}}, "autoJoin": false, "backfillTicketID": "iUfBthbepUCTWiZ1", "clientVersion": "uqh7GAi4FEIu44u8", "configurationName": "3ZLRxYlYqlpq03BG", "deployment": "dIk4oEogFVGR71rJ", "dsSource": "OBy6lsj1AKGBjnHm", "fallbackClaimKeys": ["aAu4YK87DYAWWcbc", "bGWmKgE8CZ4AELr5", "lraa5v5P5Cj8hgFs"], "inactiveTimeout": 34, "inviteTimeout": 46, "joinability": "HC9h5JPiMEtgKuiG", "matchPool": "TYgwWv5XldL6rOVG", "maxPlayers": 4, "minPlayers": 66, "preferredClaimKeys": ["RAn51rVAQSxp4qTB", "54mKA3V9DKlCeZ7m", "LYsHooOIaxIpb1cI"], "requestedRegions": ["OJPS3lJ80YJ41U4o", "oQ980ywmg1pWpWit", "1QC7FKe0fnHUlmU1"], "serverName": "unGKM0tgfeWy47bb", "teams": [{"UserIDs": ["wMI4gGmvK9gW596F", "wBNrFXt3TAuKBwBc", "D12ae6r3hHwya4Np"], "parties": [{"partyID": "dOzg3hr6ucHf7dbh", "userIDs": ["2iKNUl0qJqzoKMRM", "G541PAiNjULsx4Sn", "KNXLMUaDSwwQlnNR"]}, {"partyID": "ZJHBSB4fZWEFIZs2", "userIDs": ["8Ff1kZp1Zktx3N7W", "NMYIfcDKbLu8pnK3", "4oA1keYXJvtggDdX"]}, {"partyID": "jbdjMBahFZZGMTcq", "userIDs": ["nWrIprOv0BJ9Sgl7", "H1sdH2RIJz1eI7Q5", "pu9PutLf6IrvZoBG"]}]}, {"UserIDs": ["QbO4S3rURGWUzPAE", "6SdV4D5jftRl9rZm", "tQUvro8TWwXWsz9T"], "parties": [{"partyID": "VmdMKEohKzuMYDUT", "userIDs": ["LBeCidXjuGgx8ncX", "ejmeZtzT0qj0ltsq", "fiZrthVvyX0OCKDJ"]}, {"partyID": "E3RMUddwSSgxCu8z", "userIDs": ["ru1DhGAYOHR5BWa9", "VzIkaQEl1iUProNB", "6hI6IpGcToWgFvdR"]}, {"partyID": "hG9NwV3zDuqVlVTy", "userIDs": ["pcYPK8IxrSZuxWl0", "Je4fJIyFAm3DQht4", "JwnPS2urJqerobWM"]}]}, {"UserIDs": ["ZGVL5KLTxahWlS6X", "dBaKSLCgOOPXM6XT", "Uh2dJ90yqHDNacl4"], "parties": [{"partyID": "F9G6Dl5TFwBY6HKX", "userIDs": ["AblkT8VGgSH8MGZG", "wiVj7eDTaka9ABfX", "1IByPEOuPhGspRi3"]}, {"partyID": "bhPQvBBJI5Jxytpc", "userIDs": ["ubN4AUUPFPscZsXe", "JOD4DMtqfIGiGJov", "gWSRxZ8N4UQ2fg3V"]}, {"partyID": "1o2x0hL5DuBDqMyI", "userIDs": ["AzWze94MEdJFAy2J", "TllJkRGB8jqJEd6e", "qqsBVyONV0JRtozI"]}]}], "textChat": false, "ticketIDs": ["n4F3LD1EDwBXw5uB", "YeQZOzATNSV9E9yy", "Nb7yaLXzAVYymOuh"], "tieTeamsSessionLifetime": true, "type": "uzm7DzJ20NFRJIhF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateGameSession' test.out

#- 39 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"XR2dYprPmbpuptEC": {}, "Gd5cdXC2Sesc6y68": {}, "whNBYl9iCqfW6rqG": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicQueryGameSessionsByAttributes' test.out

#- 40 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "OQny4ij4ysYPonb5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicSessionJoinCode' test.out

#- 41 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '9gQffkNOmubxEJr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetGameSessionByPodName' test.out

#- 42 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'qEAuJbpZSrcbc4LW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetGameSession' test.out

#- 43 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"fKaY5c1tP5TDuI5f": {}, "6m4KC07CnsZe32hq": {}, "EcB1ExYMBb3ckvoa": {}}, "backfillTicketID": "JYdMqGegcg3eRvBZ", "clientVersion": "XN3cjIXmFWRJnj8x", "deployment": "N7HDPTUEDPN1Kb4U", "fallbackClaimKeys": ["TPWDXTSb55g8LSTs", "7Nf95lGlPrf6obId", "nI6Ag7eUYcYJ4QzX"], "inactiveTimeout": 59, "inviteTimeout": 25, "joinability": "X8fBuBSKLSQ4GvLt", "matchPool": "z50D3rpBfBovqLwX", "maxPlayers": 56, "minPlayers": 92, "preferredClaimKeys": ["uT30EYeRj17xGhaB", "KoUfiHjGmCyPsKCJ", "Tv1ic9gvagF2cSuz"], "requestedRegions": ["tsJ5tj64gV7nmDk2", "9mcjSuz9vbNStqPt", "QmQN6eKAGiZFCftT"], "teams": [{"UserIDs": ["0RWECdjWYrnulxcC", "KAru8pOaAVLDB4k3", "JwkdaxR7GJpYmuYC"], "parties": [{"partyID": "PG181q9GA5DydC2D", "userIDs": ["8UT6KOc4VPDUR9ay", "azqXRqegIUicYXXz", "xsBFrUs9BYp6TgCe"]}, {"partyID": "jBd5o7iTST7R3Kbb", "userIDs": ["QGERMNpqWb51y5RU", "zvMfTkPy0fGvTGgf", "LKsg0b1Bq78cE5O5"]}, {"partyID": "pmPnbiPJ9j4vxmbH", "userIDs": ["3rVaauufxkPHElug", "48TgfNu0rqXUOyTo", "LPIREGIKlJt3EP9k"]}]}, {"UserIDs": ["KwkENQ8VOHGwbADM", "fuOmh0lciRhVZ2De", "oODXMzLSrzoiBnYi"], "parties": [{"partyID": "5UWs3tYlYeMoCimJ", "userIDs": ["ySocRvUWDOrFZKPN", "oN9AWtLK9TFgi9j2", "XMh9WpifqjNjLOtN"]}, {"partyID": "Qts2yxf6MLZJ2jZf", "userIDs": ["ZbpTJezzriCDWXT5", "9SRu0YqUxKDc84OM", "IzvTScdbKBsAyJMz"]}, {"partyID": "4ILNDvhB4Eoes9a6", "userIDs": ["XaJeRbzTPwD3jxF7", "vxRUY0ilrNoFT98S", "gtJd4Z5f8nfaKqdZ"]}]}, {"UserIDs": ["FLbZEHxsDxeR6d7r", "1SQw80JfMpPrSqYy", "pRUnq5o4ETeCUYG9"], "parties": [{"partyID": "ccTt7Wxw8OQ13t3u", "userIDs": ["Tw6zQuoZcXQpoTOx", "e8y1jorNsg9ZKYCK", "oISyXtHzoWGdYohx"]}, {"partyID": "Mp3uOQIybqWfG9BJ", "userIDs": ["6FVKlbYHtbPtaxva", "gSlpGgVTF6VeDAPO", "GBwweyFfXEOEAEtb"]}, {"partyID": "ag82KgBgyCd5vjkf", "userIDs": ["z3eR4DtNp129hzBw", "3xLUcCEt0DzmkJq1", "sml5bYt76BNsi4gi"]}]}], "ticketIDs": ["R9434WpKKdzxoufC", "NlFoOcWQQy4bjmQe", "EweoBHTdwAk7ZQnb"], "tieTeamsSessionLifetime": true, "type": "sdtq4dOwNESzCEW9", "version": 7}' \
    '9MM2Cqm84jVi9kIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateGameSession' test.out

#- 44 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'qgrzpUkNOBWydXV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteGameSession' test.out

#- 45 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Fi02aFr8CDapjwNO": {}, "l4k8rVNrm8drv8QD": {}, "2JOe2Ntz7EFvowPg": {}}, "backfillTicketID": "IGuetxFMqXCQMAqQ", "clientVersion": "2ZRGzNtrThFa9XU8", "deployment": "mosluiHZJ7O8sAQ3", "fallbackClaimKeys": ["2wj9uaDzsr9xYiWR", "uuzQJiLc1eI9w3JE", "hxPGbEk7s7gw07Fl"], "inactiveTimeout": 29, "inviteTimeout": 23, "joinability": "unC3vJKBC7SwgoVi", "matchPool": "PeIB4Ehy0Y5aSJVD", "maxPlayers": 14, "minPlayers": 71, "preferredClaimKeys": ["inxAM77eY9C14Fbf", "iI2NPvl1kCY5bEok", "xXxkWZbjf7GZxaos"], "requestedRegions": ["sQmjo69wohJFyTNk", "5FGUPhR4LEZvz3Ej", "FR7996Ug5m4axDV5"], "teams": [{"UserIDs": ["uTcYsoahUrELQ1bt", "jJOqQMgZWAU6E92n", "HJzvw7tnYtGfv0EJ"], "parties": [{"partyID": "yjBu4EzwRjD7jmQJ", "userIDs": ["eFPghqamSc5y0X48", "eT7Mluexk87b9Z5B", "TsEA3EdmW8saabP4"]}, {"partyID": "xRowfNojzPXI2v0p", "userIDs": ["rR3OEey0MkZwS6TY", "wNN3UYhic03qGEg5", "fNzBVrjo3g8CfRwt"]}, {"partyID": "yl1HeT7VEPgG40Qy", "userIDs": ["XzsOzgck078IghoQ", "Bp2mWAOYksczxBS0", "OBCa2vWadLmQtYKm"]}]}, {"UserIDs": ["EMzicbuL2S3RiW8d", "LTCBfGUdVEdvdQL7", "sVwcZ2PofaJoSqtr"], "parties": [{"partyID": "EOqxH46fRTSZoDdT", "userIDs": ["0fefo74eg3Nt2c0r", "4GqF0NHglOVuNZ9L", "zNeJnBurh54CWbYb"]}, {"partyID": "0Pebyt8b4DGscjwr", "userIDs": ["izsFUgYwbaLvqvQ2", "NbmDITuymTBjn3d2", "sFzMS3QaVjZF7Ax6"]}, {"partyID": "115Kg9U8vrQJXQxo", "userIDs": ["IbVi2CLEk277Ivjj", "1A647XQ3koaAfZIi", "m0sFPm1YN27bojDV"]}]}, {"UserIDs": ["aZLpx4kEWYkO6KrK", "UMhJrASBh61hmWKS", "SrF35anDGvur19V1"], "parties": [{"partyID": "8oIrUKXttgAI2QdW", "userIDs": ["JFLmoPEgd8EMspOs", "8nkic9gj5vyUMAAm", "IHYbsxG5N066FXb8"]}, {"partyID": "8SbLOa21DiSFsm0X", "userIDs": ["XQJWszvTQEuALzDN", "p1SZ58aDllwzTRHa", "k1MXxj7Esrg7900n"]}, {"partyID": "ml5BidsK9dCEzhVn", "userIDs": ["Ov0PQbVIaKiHfoeo", "rY7A1otGFyv2SMjb", "Er50qGdCZIc6EFqB"]}]}], "ticketIDs": ["KxbS7Q2OgRucL1jw", "RXzfjDZZBmOau6sy", "me06c6SKLc2mEC3I"], "tieTeamsSessionLifetime": true, "type": "l5XCbkOfHaGr5kda", "version": 52}' \
    'tvmMB6jzrpRGESmo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PatchUpdateGameSession' test.out

#- 46 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "oHiCV4GUOnXpapXQ"}' \
    'GRakUbcG7PcR4eiU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateGameSessionBackfillTicketID' test.out

#- 47 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '3Idi55jNrGNT2VHT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GameSessionGenerateCode' test.out

#- 48 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'KuIT5FwwHj0Ur5F2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokeGameSessionCode' test.out

#- 49 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "PWGTTD81xhNP4t6k", "userID": "YBUjyXAn3bWQF6Qc"}' \
    'AiJpXIrgroixptZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicGameSessionInvite' test.out

#- 50 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'ckUTGkcBOE4qMcH1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'JoinGameSession' test.out

#- 51 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "Kyi8ZFvGcV8DY0XO"}' \
    'kDstxZcY1HgAnZV4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicPromoteGameSessionLeader' test.out

#- 52 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'IOglVLqb9lGAJUg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'LeaveGameSession' test.out

#- 53 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '1Lt7JwgwMUSuC3Ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGameSessionReject' test.out

#- 54 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'jy3BcEMCtQs2FcEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetSessionServerSecret' test.out

#- 55 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "vVAyId6Cp85HVDsZ", "userIDs": ["BQgOnXuXsGThYZrm", "m0wrFMnPpWgrQD4h", "Ek0OLjYsnignE7Kc"]}, {"partyID": "MF7fuDbzRRYMNXWU", "userIDs": ["sp1tOibJY9aL9ie6", "vvMbiNURrlm88QlK", "yuoya4JgakZyUV7t"]}, {"partyID": "73VnSFbuxd4KYZ0j", "userIDs": ["k0UZdhtnKu9oTc8p", "VkiyGsj5JdXzRxfN", "EjUMTs8WIObJBTsv"]}], "proposedTeams": [{"UserIDs": ["sw76uISRX0bKVoWt", "oUW1P7ocuBAldDSU", "S7Haa6unq1yQOSRv"], "parties": [{"partyID": "yiLBRVtIDi2piIQF", "userIDs": ["VmzMidw70KSahpYZ", "dKZRyR9AX7JjxvNZ", "hM84DiZk6ySrB9SV"]}, {"partyID": "FctW7YS0OkL78XeE", "userIDs": ["AtALFI3v8yha4pd5", "A7MYcpBD6lKNb8Rx", "vN2u5J7baOeLH19f"]}, {"partyID": "qBwNbNe1ffYRtIvQ", "userIDs": ["aKyevWYtZjK6J29v", "8MpBSpo3AKRmnJkz", "JHAckUyBksYQfDm0"]}]}, {"UserIDs": ["RNFwiz70tRVLMlHi", "8i9gOVqajUWrgEsW", "DtaKzn8dZwnnGeZs"], "parties": [{"partyID": "ZVgbPzPFbrOMZMgW", "userIDs": ["kFN7Tpkx6GcfyOg6", "ZUrrp9ubg9mndW2J", "KmQafUs2bxYztOEy"]}, {"partyID": "VbKIf1ZbzgUwd8DH", "userIDs": ["oCQykmXHYmkRlg7g", "Ys6unPYQ9jNQN1di", "1ldhOh6HvjnYuV7N"]}, {"partyID": "fC4A2ODiZhbfb8Qq", "userIDs": ["CyK1XH9D6vl5eFdF", "fgK46GjCWaP8huTm", "nq3FGQn3Ahu5wxq6"]}]}, {"UserIDs": ["oJq4mChmQHQhO9IK", "BXDFQfXFD58sG6uD", "hFYlrzJBYSeMuJfQ"], "parties": [{"partyID": "ecutjS029BiJWOG1", "userIDs": ["m7MKclr5igjNTVIt", "rH2X78hxJgaVfw5V", "nyq8OzTE89WDNoMc"]}, {"partyID": "OmbfJrCJQIj1haAo", "userIDs": ["sKglqaCXE9ytpIO8", "btO3OwNEGSW5TaW4", "to7QCY2NGGvi9kg3"]}, {"partyID": "rMIzNmhJTNQjKlwj", "userIDs": ["fJ3TJ2xVpge70WsL", "fgbZieRvJI5sT9DH", "3DfLCv8q4Thmq09b"]}]}], "version": 57}' \
    'vxNHOSEhQRZIp693' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AppendTeamGameSession' test.out

#- 56 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "lRwtc43atCuCFxbf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyJoinCode' test.out

#- 57 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'bz4aQERziPL4dHhO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetParty' test.out

#- 58 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"qG5KDdUvk0LEi26L": {}, "s7mjRxNmvvNtjJNQ": {}, "epUTGhwlY4lPzlsC": {}}, "inactiveTimeout": 89, "inviteTimeout": 75, "joinability": "5rVsyfcH7WjP7HuG", "maxPlayers": 53, "minPlayers": 38, "type": "3b5WAEvdRF9bqMj4", "version": 36}' \
    'h3bvadRthdbVApeb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateParty' test.out

#- 59 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"RA09rW8i8krFWJhe": {}, "03coRFok5d3AyGrZ": {}, "O8GuoXNSoVEBG7Vb": {}}, "inactiveTimeout": 57, "inviteTimeout": 31, "joinability": "PUWipz9C05YabFX4", "maxPlayers": 64, "minPlayers": 65, "type": "CK5ucTFsAFzaO3yJ", "version": 32}' \
    'Wm8RQvRUbUDSiefG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicPatchUpdateParty' test.out

#- 60 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'EdLucrtO2gCQD057' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratePartyCode' test.out

#- 61 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'DrDlgC2nzS9SiGUj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicRevokePartyCode' test.out

#- 62 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "VAw4v3q6JRHcn7Ka", "userID": "oCEkRdo6qHYIZWnX"}' \
    'qQ1oHFJ9Q0vqsL9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyInvite' test.out

#- 63 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "omqWsGA76yxi0QzZ"}' \
    'WfmP2sx0KO5bEJaP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPromotePartyLeader' test.out

#- 64 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'nAFjsodyJQVVBrSh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoin' test.out

#- 65 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'GbIIuqK8C403HgoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyLeave' test.out

#- 66 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'CR6XOMXwKdfqk8T4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyReject' test.out

#- 67 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'QHK30EX0FclpDl5H' \
    'suracO5MnjnxD1OX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyKick' test.out

#- 68 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"kxShFVQTRekLfjmy": {}, "8zosRCRgVwbrQKmb": {}, "01yA7U7dGMjupZkZ": {}}, "configurationName": "QY8CNyT4k3DIbfT2", "inactiveTimeout": 82, "inviteTimeout": 66, "joinability": "HpnUCGBVfpctNFUs", "maxPlayers": 96, "members": [{"ID": "dtdtVW9anENmxb9e", "PlatformID": "7vXZV3ig8Jg5VBye", "PlatformUserID": "I3ycMcYYBixKJXCI"}, {"ID": "SQdwec1m8BusV9tU", "PlatformID": "h74KVo6Xqjz2xUKL", "PlatformUserID": "NWSmYyVvyelIJ8Qg"}, {"ID": "aLMqi836ULa7cfZl", "PlatformID": "4VuY6rsZyo6CBRRn", "PlatformUserID": "oOikIxXKKIR6kPms"}], "minPlayers": 46, "textChat": false, "type": "m5TCAU1cKApdJDnE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicCreateParty' test.out

#- 69 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetRecentPlayer' test.out

#- 70 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"73GLmSZns5owBhoU": {}, "g4LsGP6KLPXkvUv2": {}, "XiXaBzsmaxjTZPlL": {}}' \
    'itytGka7Kv5TacQK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorageLeader' test.out

#- 71 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"F4OlRGdmXxETLEQr": {}, "r3KCAV9alq3hK1G4": {}, "kKooSNNUZuiynZ64": {}}' \
    'IwncZPk82GF3eTC0' \
    'vzZUDj9dzGgGVxo9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateInsertSessionStorage' test.out

#- 72 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["OHgfHumyfuBNisec", "YbcOpR45VDlvSc0M", "r7ImwCwGqOf0bNs9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 73 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGetPlayerAttributes' test.out

#- 74 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "KvKyj3MqS7Dcmtfh", "data": {"50eObbrmgjhWK0x0": {}, "ZidAJ1CU1eD1La16": {}, "Bw3JbUnUDh5yGjjv": {}}, "platforms": [{"name": "4Mwrv2vancmR6Z7r", "userID": "b21A2E9pX0BWCMqP"}, {"name": "sRk5htdM5T3fDSrS", "userID": "Hrkoqv2mM6soMaTv"}, {"name": "Qq2a9YdFNtRVSO0j", "userID": "s0hG9xmSnzd7zgUx"}], "roles": ["AogcnGkXk17QPkJH", "RhmLKQuQVFSKiXl8", "G2uf6E8EajXLSAS8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicStorePlayerAttributes' test.out

#- 75 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicDeletePlayerAttributes' test.out

#- 76 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyGameSessions' test.out

#- 77 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
