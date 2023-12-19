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
session-public-get-recent-player 'WdECaFGzfZ2hxcJ2' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"Fnemn7M23SzUo4hN": {}, "BDh9ZFP1OW0nXOEr": {}, "QPS4VsRoYIK69yg9": {}}' 'ADCGiXaLs2xjHkin' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"OD975nARHCmhNHSX": {}, "uqIHsxvaUoXDmwWs": {}, "ukxncuD3QxCXMd00": {}}' 'YBWCaVVmM45mfIZs' 'WhkS476dGGJwJ00U' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["H197MJ6zU7JLMQyM", "WzYQCAaPJgoxGJoJ", "aSzUtY4ZD0Xtb0U4"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "tUh5J5Z9GiBiSAyl", "data": {"X5cS0IeHpWCugmfO": {}, "L0QQpxsuD8PGqku5": {}, "9eFJrOXyDYz9vMUO": {}}, "platforms": [{"name": "PG0iHDT8QbF7gHPT", "userID": "PQbvLt2NRqJGIKzL"}, {"name": "yH1y72L13Ornyx34", "userID": "luLdvtsTKXMjiw6g"}, {"name": "YPvfn2Qt9iyq3Nyk", "userID": "8ncu2Z3eDHH9WaVO"}], "roles": ["4iKhDcJ7TCcNIsQ3", "PuppUxDSK8aOTGMu", "dcxlCV4cNbJGQ57l"]}' --login_with_auth "Bearer foo"
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
echo "1..76"

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
    '{"NativeSessionSetting": {"PSNServiceLabel": 47, "PSNSupportedPlatforms": ["IFbRkPSSITz4TjCr", "JHXGXku2YVuOzhxH", "mnrrV9ZGWrZ05sxe"], "SessionTitle": "6A6RpmKDebNkylby", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "mzwOZOK56sDkci5r", "XboxServiceConfigID": "Z8iMlOuksQJCiRFi", "XboxSessionTemplateName": "ZWwJ7NrTb1XTB9YQ", "XboxTitleID": "zUJ9XlYJ8BzP6EUm", "localizedSessionName": {"UXGM5anIloyj9lhb": {}, "vuQdW2jwKUckc794": {}, "ryY91lX8DD4MYXlr": {}}}, "PSNBaseUrl": "J81lHvv9rqvEoM8Y", "attributes": {"mVjAkO3HKsEp6Klq": {}, "wW4djrexcbHdEtoQ": {}, "vpV344RctmTozCi8": {}}, "autoJoin": true, "clientVersion": "eV6jbalHmqBBfi7s", "deployment": "SF5BoGiTCVsXsygW", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "jE2opXtdsJQeJ1to", "enableSecret": false, "fallbackClaimKeys": ["IK9lOLaZaMphKCqT", "q3EVheJjoEEXBLIx", "GnNuhoJM3WWPvvCi"], "immutableStorage": true, "inactiveTimeout": 19, "inviteTimeout": 11, "joinability": "ISd97KORRhxSWLWL", "leaderElectionGracePeriod": 82, "maxActiveSessions": 53, "maxPlayers": 10, "minPlayers": 21, "name": "HRD3V15QaGGL46Lu", "persistent": true, "preferredClaimKeys": ["YTYZbzf5aANNNs5k", "gSZZNUHbIT9szApm", "WJO5vzzXZj08a6K1"], "requestedRegions": ["XRVfriSpPFnZBJZk", "DnEiyfa2LrnpZxNn", "LRH36bqS2oFY76PU"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "ziBOHEAj1cT3u6Zc"}' \
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
    '2FbrTFznTgDIwZIR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 100, "PSNSupportedPlatforms": ["ZFDsO1skRjOU1SMf", "QVQa6blj9Rdd85bd", "YUumPKVSZCg3XTc9"], "SessionTitle": "vQe0dHJfF6KIuvnR", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "a9JktyBdxkZKrEWF", "XboxServiceConfigID": "w9GYxjiiOQAD77ci", "XboxSessionTemplateName": "0vfWVZoRRMPi57Hy", "XboxTitleID": "KKz5nyI6ulKNKoXa", "localizedSessionName": {"0dgx1JgjC56pda3Y": {}, "htQxpCYME6x21pdX": {}, "2QSPAd9sxoLnWGP1": {}}}, "PSNBaseUrl": "PafIjLX8ce0KbNN7", "attributes": {"Ycl2JfmQplvGjVQ4": {}, "aebjfgGu472oWJlf": {}, "glLM4xjfkNL4lU6j": {}}, "autoJoin": false, "clientVersion": "763vLwtYEJTSiXjc", "deployment": "Y5ZPkv90lyKSTWLx", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "Z0LpupEi5DbkVs3q", "enableSecret": false, "fallbackClaimKeys": ["Ti1t530Wj1WfzIvc", "3VlSXrA3XUGud4tV", "jmxEf4XvVhFJTxFH"], "immutableStorage": false, "inactiveTimeout": 94, "inviteTimeout": 57, "joinability": "NuDZvPb1kuUfNfUD", "leaderElectionGracePeriod": 9, "maxActiveSessions": 49, "maxPlayers": 57, "minPlayers": 13, "name": "G5dCUoExnKfV3869", "persistent": false, "preferredClaimKeys": ["N4V1OdhH4GVU7Exl", "kmc4xYiLjLyZrXr9", "Bhtzn8jAdTn6xBhr"], "requestedRegions": ["ciryLm67rkadH5Y4", "1SLjCPrFa05Xl5TP", "C5GODS44bmm7jPdK"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "w8ISP2WKmCRRXBxl"}' \
    'alCHtWlKxLpS8fLW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'oQ5nuJhatQPxR7dv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'BVC5zgOKLTDmHe8c' \
    '1eJ9sde7Ryt4udIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "22M18uux9xBomQFP"}' \
    'FWy5cwNPI6aFo0MV' \
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
    '{"wDZCIXFNEL3uWVRz": {}, "3V7YbJM3bNLWHAbC": {}, "Zixe2cQ6O30lpzcB": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["QMAEcNcJqrKxnMzS", "Yoc4ZjiMY4H34B6w", "Vd8ipcKDwQeUWtjC"]}' \
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

#- 28 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "d6GEDo08yq5E5Hle", "clientSecret": "Loog4me2NBFp62xl", "scope": "XvVcJerTPW02PWsH"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'iKYArAxnKBfBfDlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'QQuAc10DjjwMv4vr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'IPRtvhQIyLarjaLO' \
    'KnX51yAB8Pa3uNGK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'haLlJzJMSnJIIgsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"VmaGYxUX1B9oVuzG": {}, "2CnYX2YBF2g7TVtz": {}, "YEHUodh3iUfBthbe": {}}, "autoJoin": false, "backfillTicketID": "59HF9ejHaILQruAu", "clientVersion": "YyJLYGqMv824ouSg", "configurationName": "kpK70uJmUL0uzEli", "deployment": "xc023dIvDiA0tQWl", "dsSource": "HwBcTtztx3VAl6tX", "fallbackClaimKeys": ["FbnATCzUOIzVcy9k", "3ie64Vnwa0ClGQJu", "ltJe32AiwKadEoIV"], "inactiveTimeout": 26, "inviteTimeout": 79, "joinability": "prwPsa9YD92CX0rI", "matchPool": "TajpwHITGeHTnqRb", "maxPlayers": 52, "minPlayers": 88, "preferredClaimKeys": ["BB9ZFgJbQ3Fj1umx", "4ItzkMJ7cudf4r91", "6GPrhn2etVIQvRkQ"], "requestedRegions": ["JAtDUH9tx60AehGz", "1ermJYXsYgL7TfyI", "lAwjTZdRZJJzWZwv"], "serverName": "TX2bamSCvX1nwvSW", "teams": [{"UserIDs": ["dDwD7WJHzgNZUKsI", "5y0mR3zMyTsftKqn", "sIJctAdxyZVKHA9D"], "parties": [{"partyID": "kaSOWgtg8yw8lHEb", "userIDs": ["VDwBAqanOlscRIWw", "82k5K5VTkdubkOFl", "dMCQ98JH4n0Jtgqz"]}, {"partyID": "Zv5kVu4S95mj8YRv", "userIDs": ["ae4f4lhBPbarbWEm", "8bVtZcfVCPdQhim9", "QKUAFTVYelIlGJg9"]}, {"partyID": "wdc8bihhWjfZpfcF", "userIDs": ["BUsnnDJlmD1iEokb", "UiYzCQh2iNTwtnoh", "ddMzMTQ9P7sYLDWA"]}]}, {"UserIDs": ["JOA75K4BYJ2fkqYJ", "oF2FI3vyyqRzc20O", "7FdsJP1G9tyBTfER"], "parties": [{"partyID": "XdvgD1Qf7Ot2DkUt", "userIDs": ["3yexZBRvxYnEBhXt", "AVxCd3meTrT7cF9o", "VCh89wNOkKYssVej"]}, {"partyID": "cL3kR3hCGNgaJmuA", "userIDs": ["LlMQl9RLrthbfp0V", "gweLlT2sY3SsTnDQ", "Y7kKU2u06Q4veujx"]}, {"partyID": "tyQENvJrBCqeg67d", "userIDs": ["4RWOqO4U0bitNQLz", "wRoWnR0AbkCPY70F", "mvviVIBbcujF8Vk5"]}]}, {"UserIDs": ["qb8NhWWwaxyMchkt", "8l5IPSrwrJl7wYIV", "w13NCo9yXlbQ52FT"], "parties": [{"partyID": "HTCj6SEAzT7TOpyi", "userIDs": ["uvvQUm29Iacq4XRL", "aA643nTMtXSAyejn", "ny0Ju13b6o5uB2XM"]}, {"partyID": "6IHy7EEvHyLmcvrZ", "userIDs": ["ZOdwe1x8RjU6Bi8J", "XE52sUBBq2SimQQo", "Lbe5YOJvxGRxUzrT"]}, {"partyID": "wagH7BMT1IZKTdNF", "userIDs": ["VBQ1crBXAupATO8u", "XsqVpdiWo8SjDAM0", "Riw8wLYW3n4F3LD1"]}]}], "textChat": true, "ticketIDs": ["WgJpGPigdc5VyC4q", "vWjVac1cQvSxgTNI", "UzxDgBlIbuzm7DzJ"], "tieTeamsSessionLifetime": true, "type": "0NFRJIhFXR2dYprP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"mbpuptECGd5cdXC2": {}, "Sesc6y68whNBYl9i": {}, "CqfW6rqGOQny4ij4": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "ysYPonb59gQffkNO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'mubxEJr2qEAuJbpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'Srcbc4LWfKaY5c1t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"P5TDuI5f6m4KC07C": {}, "nsZe32hqEcB1ExYM": {}, "Bb3ckvoaJYdMqGeg": {}}, "backfillTicketID": "cg3eRvBZXN3cjIXm", "clientVersion": "FWRJnj8xN7HDPTUE", "deployment": "DPN1Kb4UTPWDXTSb", "fallbackClaimKeys": ["55g8LSTs7Nf95lGl", "Prf6obIdnI6Ag7eU", "YcYJ4QzXCmqr6gmP"], "inactiveTimeout": 67, "inviteTimeout": 76, "joinability": "aHP5SVPvRLiDi0mN", "matchPool": "Hb6Lx8eq8SGNwEQO", "maxPlayers": 89, "minPlayers": 8, "preferredClaimKeys": ["j17xGhaBKoUfiHjG", "mCyPsKCJTv1ic9gv", "agF2cSuztsJ5tj64"], "requestedRegions": ["gV7nmDk29mcjSuz9", "vbNStqPtQmQN6eKA", "GiZFCftT0RWECdjW"], "teams": [{"UserIDs": ["YrnulxcCKAru8pOa", "AVLDB4k3JwkdaxR7", "GJpYmuYCPG181q9G"], "parties": [{"partyID": "A5DydC2D8UT6KOc4", "userIDs": ["VPDUR9ayazqXRqeg", "IUicYXXzxsBFrUs9", "BYp6TgCejBd5o7iT"]}, {"partyID": "ST7R3KbbQGERMNpq", "userIDs": ["Wb51y5RUzvMfTkPy", "0fGvTGgfLKsg0b1B", "q78cE5O5pmPnbiPJ"]}, {"partyID": "9j4vxmbH3rVaauuf", "userIDs": ["xkPHElug48TgfNu0", "rqXUOyToLPIREGIK", "lJt3EP9kKwkENQ8V"]}]}, {"UserIDs": ["OHGwbADMfuOmh0lc", "iRhVZ2DeoODXMzLS", "rzoiBnYi5UWs3tYl"], "parties": [{"partyID": "YeMoCimJySocRvUW", "userIDs": ["DOrFZKPNoN9AWtLK", "9TFgi9j2XMh9Wpif", "qjNjLOtNQts2yxf6"]}, {"partyID": "MLZJ2jZfZbpTJezz", "userIDs": ["riCDWXT59SRu0YqU", "xKDc84OMIzvTScdb", "KBsAyJMz4ILNDvhB"]}, {"partyID": "4Eoes9a6XaJeRbzT", "userIDs": ["PwD3jxF7vxRUY0il", "rNoFT98SgtJd4Z5f", "8nfaKqdZFLbZEHxs"]}]}, {"UserIDs": ["DxeR6d7r1SQw80Jf", "MpPrSqYypRUnq5o4", "ETeCUYG9ccTt7Wxw"], "parties": [{"partyID": "8OQ13t3uTw6zQuoZ", "userIDs": ["cXQpoTOxe8y1jorN", "sg9ZKYCKoISyXtHz", "oWGdYohxMp3uOQIy"]}, {"partyID": "bqWfG9BJ6FVKlbYH", "userIDs": ["tbPtaxvagSlpGgVT", "F6VeDAPOGBwweyFf", "XEOEAEtbag82KgBg"]}, {"partyID": "yCd5vjkfz3eR4DtN", "userIDs": ["p129hzBw3xLUcCEt", "0DzmkJq1sml5bYt7", "6BNsi4giR9434WpK"]}]}], "ticketIDs": ["KdzxoufCNlFoOcWQ", "Qy4bjmQeEweoBHTd", "wAk7ZQnbqY1cQwVE"], "tieTeamsSessionLifetime": true, "type": "NESzCEW9dUVhZjLf", "version": 40}' \
    '4jVi9kIpqgrzpUkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'OBWydXV0Fi02aFr8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"CDapjwNOl4k8rVNr": {}, "m8drv8QD2JOe2Ntz": {}, "7EFvowPgIGuetxFM": {}}, "backfillTicketID": "qXCQMAqQ2ZRGzNtr", "clientVersion": "ThFa9XU8mosluiHZ", "deployment": "J7O8sAQ32wj9uaDz", "fallbackClaimKeys": ["sr9xYiWRuuzQJiLc", "1eI9w3JEhxPGbEk7", "s7gw07FlounC3vJK"], "inactiveTimeout": 57, "inviteTimeout": 35, "joinability": "C7SwgoViPeIB4Ehy", "matchPool": "0Y5aSJVDginxAM77", "maxPlayers": 8, "minPlayers": 80, "preferredClaimKeys": ["9C14FbfiI2NPvl1k", "CY5bEokxXxkWZbjf", "7GZxaossQmjo69wo"], "requestedRegions": ["hJFyTNk5FGUPhR4L", "EZvz3EjFR7996Ug5", "m4axDV5uTcYsoahU"], "teams": [{"UserIDs": ["rELQ1btjJOqQMgZW", "AU6E92nHJzvw7tnY", "tGfv0EJyjBu4EzwR"], "parties": [{"partyID": "jD7jmQJeFPghqamS", "userIDs": ["c5y0X48eT7Mluexk", "87b9Z5BTsEA3EdmW", "8saabP4xRowfNojz"]}, {"partyID": "PXI2v0prR3OEey0M", "userIDs": ["kZwS6TYwNN3UYhic", "03qGEg5fNzBVrjo3", "g8CfRwtyl1HeT7VE"]}, {"partyID": "PgG40QyXzsOzgck0", "userIDs": ["78IghoQBp2mWAOYk", "sczxBS0OBCa2vWad", "LmQtYKmEMzicbuL2"]}]}, {"UserIDs": ["S3RiW8dLTCBfGUdV", "EdvdQL7sVwcZ2Pof", "aJoSqtrEOqxH46fR"], "parties": [{"partyID": "TSZoDdT0fefo74eg", "userIDs": ["3Nt2c0r4GqF0NHgl", "OVuNZ9LzNeJnBurh", "54CWbYb0Pebyt8b4"]}, {"partyID": "DGscjwrizsFUgYwb", "userIDs": ["aLvqvQ2NbmDITuym", "TBjn3d2sFzMS3QaV", "jZF7Ax6115Kg9U8v"]}, {"partyID": "rQJXQxoIbVi2CLEk", "userIDs": ["277Ivjj1A647XQ3k", "oaAfZIim0sFPm1YN", "27bojDVaZLpx4kEW"]}]}, {"UserIDs": ["YkO6KrKUMhJrASBh", "61hmWKSSrF35anDG", "vur19V18oIrUKXtt"], "parties": [{"partyID": "gAI2QdWJFLmoPEgd", "userIDs": ["8EMspOs8nkic9gj5", "vyUMAAmIHYbsxG5N", "066FXb88SbLOa21D"]}, {"partyID": "iSFsm0XXQJWszvTQ", "userIDs": ["EuALzDNp1SZ58aDl", "lwzTRHak1MXxj7Es", "rg7900nml5BidsK9"]}, {"partyID": "dCEzhVnOv0PQbVIa", "userIDs": ["KiHfoeorY7A1otGF", "yv2SMjbEr50qGdCZ", "Ic6EFqBKxbS7Q2Og"]}]}], "ticketIDs": ["RucL1jwRXzfjDZZB", "mOau6syme06c6SKL", "c2mEC3IXl5XCbkOf"], "tieTeamsSessionLifetime": false, "type": "zjoSV31tvmMB6jzr", "version": 32}' \
    'fU7HByGXPMqxj4hB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "gVY3YAxZLKbcOdyj"}' \
    'qf6Q4oiwoJcaRMEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '15LBlTVufc5ZyODR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '2NVyn4PRqf3eRbZq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "BAoKGcVCdMiSNV4q", "userID": "Brt1kcLmRv6EJtl5"}' \
    'xWnsb8oWq94RImNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'VIJnhhwFDV1Vitao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "mvWTzdsW4N70wYS4"}' \
    'Kj7Yi2VvoQNW8Yc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '81dYdvGxJAMDRA1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'F7jdWlekFwO94VBC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'V9qJhWva2FPBujX0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "geYCpGJM4sqsPNJM", "userIDs": ["iZXXOFwmGWAvNF0Z", "0GkwxUNYyNwGiKrk", "nH0Y5mrQgLC6D2qs"]}, {"partyID": "FiQHglUQMZi5WjMZ", "userIDs": ["fOadpgegCUjTdi1E", "hr8OtqpNJ9R8TuNy", "4ejmVA3vMCsGyPd1"]}, {"partyID": "2B8QNUz0hFFNbH6j", "userIDs": ["2W4roZM2UKAXEEsL", "5D0oiFchQnVeq3g2", "AB2WIRUQmauIY5HX"]}], "proposedTeams": [{"UserIDs": ["CZ0W4XmWP0HzSdiy", "lLhVYszm8xY33OQb", "umu2QHLyZNuysyM4"], "parties": [{"partyID": "OfCzdQCXMAWnf87Y", "userIDs": ["PNOe9Eevf1fhMg1E", "2k7QLFrVgtX7y0fP", "OieDCow2zXyFFVpM"]}, {"partyID": "87yqEwEacQMTlqN4", "userIDs": ["LKkxJ5v3SBafnKNi", "MPbFkFGA85W3HJkq", "gS2B37wwoPYOHiIs"]}, {"partyID": "xmsLBPBJuNLnWRrt", "userIDs": ["W870qD88ZcduZSe7", "W20UZcDaiq0nEZ7P", "yhqFJkDClOsKmfsg"]}]}, {"UserIDs": ["JdmzsDPsWh1k0cQ0", "8NG6dX2TZkil67kR", "ngoUa83ECh1gqPeS"], "parties": [{"partyID": "193TNNzot3sVli3G", "userIDs": ["N2XTrFibRAhzzEWz", "WlTY70qdgJRvpZrS", "pWX3KEe2BjV00ReC"]}, {"partyID": "XFffjJJxlgjzIhpg", "userIDs": ["OoIOD74V21HWDAfv", "Xwdxbyp4HAPbBbNP", "StVBUpKgOssFkz0F"]}, {"partyID": "36piDYXeHZ7FHls3", "userIDs": ["nyvconqbHQqKLQKe", "3xmj6s0GqsWncp5L", "rqbiKudv9z75SzoC"]}]}, {"UserIDs": ["V8ZMi2o1nR482D6g", "NClk9c87hosaPFC5", "zBW3ZgVZCj9ObVGT"], "parties": [{"partyID": "0Scwl4kNmCi15XTJ", "userIDs": ["TgCNNH7RtG5Xmo9Q", "0Wb07N17fkxZSc6V", "bE0AGcekjMNHuPXt"]}, {"partyID": "z8tXxrmzafMUguyD", "userIDs": ["oN91uc28HoSpGt1g", "0GGbT4Hf2PPKOldk", "bgX9CWJKwXXSbv5e"]}, {"partyID": "g9q86IaDFjjx6uZe", "userIDs": ["rWbtwTX9gNRByjbE", "8lOLAfTXKLzbrddq", "cKLa7LevxNHOSEhQ"]}]}], "version": 90}' \
    'jlnTgtgW33wDwD9R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "KvQX4yFQFdrRoM6F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'oqCYw7AlxO6qdFpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"71sSck3ggZWJlSlC": {}, "QMDji329PfVrvMEP": {}, "tpsSNcpK1QkB2Sy8": {}}, "inactiveTimeout": 99, "inviteTimeout": 100, "joinability": "w79LVeVskqeUB7RS", "maxPlayers": 1, "minPlayers": 64, "type": "yqGFguhh3bvadRth", "version": 6}' \
    '8c7OydVw0zCqoMZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"pIOO97DmQ5ZOzx6i": {}, "CJTu60IifzMhkk5P": {}, "xsjqbCKpMv2Yky9D": {}}, "inactiveTimeout": 20, "inviteTimeout": 60, "joinability": "abFX4FCK5ucTFsAF", "maxPlayers": 52, "minPlayers": 56, "type": "aO3yJpA3KMxBlrRy", "version": 40}' \
    'SiefGEdLucrtO2gC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'QD057DrDlgC2nzS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'SiGUjVAw4v3q6JRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "cn7KaoCEkRdo6qHY", "userID": "IZWnXqQ1oHFJ9Q0v"}' \
    'qsL9SomqWsGA76yx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "i0QzZWfmP2sx0KO5"}' \
    'bEJaPnAFjsodyJQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'VBrShGbIIuqK8C40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '3HgoXCR6XOMXwKdf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'qk8T4QHK30EX0Fcl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'pDl5HsuracO5Mnjn' \
    'xD1OXkxShFVQTRek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"Lfjmy8zosRCRgVwb": {}, "rQKmb01yA7U7dGMj": {}, "upZkZQY8CNyT4k3D": {}}, "configurationName": "IbfT22G5NpE130YW", "inactiveTimeout": 91, "inviteTimeout": 5, "joinability": "gxpKWtdtdtVW9anE", "maxPlayers": 81, "members": [{"ID": "J5euLAbBgejqc0ap", "PlatformID": "xqZ209BySn8aUaGl", "PlatformUserID": "AyvIslt7N1qcxKs4"}, {"ID": "nlf1MfqUZXkjHvcU", "PlatformID": "OTlxNf09pefgFIiJ", "PlatformUserID": "ssShBKsQjXvfQgQD"}, {"ID": "t6ce8NDMErA82FrR", "PlatformID": "1GSogkewIzTOqKkc", "PlatformUserID": "jRh3l2gAJOTCbx7J"}], "minPlayers": 32, "textChat": false, "type": "dJDnE73GLmSZns5o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    'wBhoUg4LsGP6KLPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGetRecentPlayer' test.out

#- 69 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"kvUv2XiXaBzsmaxj": {}, "TZPlLitytGka7Kv5": {}, "TacQKF4OlRGdmXxE": {}}' \
    'TLEQrr3KCAV9alq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorageLeader' test.out

#- 70 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"hK1G4kKooSNNUZui": {}, "ynZ64IwncZPk82GF": {}, "3eTC0vzZUDj9dzGg": {}}' \
    'GVxo9OHgfHumyfuB' \
    'NisecYbcOpR45VDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateInsertSessionStorage' test.out

#- 71 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["vSc0Mr7ImwCwGqOf", "0bNs97KvKyj3MqS7", "Dcmtfh50eObbrmgj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 72 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicGetPlayerAttributes' test.out

#- 73 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "qgYPixtHk6lWq6tE", "data": {"eUmU96FLEak0mJqj": {}, "RYldcTpdeCD9XPRi": {}, "4bAQL7VE2wL8Y4JF": {}}, "platforms": [{"name": "VUdzA8bvXlDhG7Br", "userID": "orbKIKuOXJPm5ztr"}, {"name": "r09CDA8Ij5bGKSuo", "userID": "pWQbaCvdPSq8Z27G"}, {"name": "pvHCDx55JZ5z6guj", "userID": "pFzlPspQD9IRIpDD"}], "roles": ["ubntPCFxfeoW2NdS", "WzOXjO1NQUqWHBW7", "8XREZCiTNAxq26gZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicStorePlayerAttributes' test.out

#- 74 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicDeletePlayerAttributes' test.out

#- 75 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyGameSessions' test.out

#- 76 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
