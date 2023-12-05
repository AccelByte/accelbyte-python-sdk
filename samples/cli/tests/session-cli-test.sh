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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "attributes": {"mLZZbSqb8RwNmn9H": {}, "rNQy4uZAAiE0mit9": {}, "RGCCHYzUOcEdscKH": {}}, "autoJoin": true, "clientVersion": "EqgA8yu7Vk6Jt4Ym", "deployment": "os9Jcdos4fYcTVU6", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "vCkGZ5dAgqxpBFma", "enableSecret": true, "fallbackClaimKeys": ["oxozr6wfNPX2bOIt", "RMvqtlB2jJCSQT27", "9ZZPYGu0rdlgdWyO"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 76, "joinability": "i3choQrpOsDBU5Se", "maxActiveSessions": 31, "maxPlayers": 96, "minPlayers": 19, "name": "8MyKrQpM4hkkK6KK", "persistent": true, "preferredClaimKeys": ["3xoJ8aeCnaLpUKp4", "4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7"], "requestedRegions": ["il35MXbN9oCMNqq9", "8SjTvhZNkSQ70D0H", "6BXksUC9b6i5lZC9"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "gb3boLQQ1MzH7Qm8"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'bwbmXgdAPh1EThG9' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 13, "PSNSupportedPlatforms": ["QZxfgPubTDIHrvqA", "ThuwjRHpKKTlmVr9", "XuoJbRFQSKVPHbn4"], "SessionTitle": "Xxtu7LQRENjEEztx", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "4lSck0ZHn5GI39YB", "XboxServiceConfigID": "HqaTHeKtW18iGeUl", "XboxSessionTemplateName": "c9d9sogWa24CKNS0", "XboxTitleID": "GqVvUfHQvsHXNUNe", "localizedSessionName": {"4mhgo5QB65lSAiYn": {}, "NjkfZrQvGgbLdLsF": {}, "zHkBMr1yrOMlNFSr": {}}}, "PSNBaseUrl": "UEirnjX9fDmIbeZx", "attributes": {"zfTcyiuATus9hsfp": {}, "FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}}, "autoJoin": false, "clientVersion": "Ct81P1ktfIovmv9g", "deployment": "sR5cJcHm3SZLxoRD", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "fRByjlBiuFM3FIoV", "enableSecret": false, "fallbackClaimKeys": ["1X2PFAAMwzHPxB1U", "skYs4Yw20DOqOBSC", "2DKHRuPMMWH8Yb33"], "immutableStorage": false, "inactiveTimeout": 5, "inviteTimeout": 96, "joinability": "eJ5i0EeDxOgBnhhq", "maxActiveSessions": 63, "maxPlayers": 24, "minPlayers": 63, "name": "IaDml48wdNFLTm5T", "persistent": true, "preferredClaimKeys": ["0x9WT0GfH2rtOa4E", "XsXzOXQAk4mqrxzT", "tuLl4XlbGL8QOxtj"], "requestedRegions": ["zm8y2wNhmwoYZyI4", "EFZKBcYrCEAE7WIs", "fmx40NLRc6m8heKn"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "4b6z3LNUj7fdgLA8"}' '4Z8YYk6QEgJjBbED' --login_with_auth "Bearer foo"
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
session-get-session-server-secret '{"secret": "yJ2h23GUS2amU7sy"}' 'GlElXdEAOrVSnLoc' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "LVVYamQc4wcG5nDB", "userIDs": ["LJoJHbiQ5duE5p4c", "fs2E41cK8QTwiIAv", "xSvNDlmM5nQFMGzs"]}, {"partyID": "7fzjgyc44mEh9tRk", "userIDs": ["8knYSV30lnroQehM", "Dli6t9unQLYXxm09", "wpGAbpEmDY9vLh3u"]}, {"partyID": "6EDsUmrV6kH4OotK", "userIDs": ["wG3UC6XCnnZxF8Cm", "Qr17W65br34rBBN9", "tU6TDm5GloFSKWM1"]}], "proposedTeams": [{"UserIDs": ["eym5ydC6p25xCWTq", "UOYZENJ1QHZQxPRX", "H7uxBJEECQE1li3B"], "parties": [{"partyID": "g7Jxc9pUnZmvhidw", "userIDs": ["CkZwqjYLfTiCO1ND", "BvQvRPnAz4VzW0Cp", "oBCbyJsF5IjF1c0W"]}, {"partyID": "338HS6CBgVRyihYN", "userIDs": ["Z84CVhziXV8HwSmv", "cvcDKF19yVRafCjO", "uSYht83AdvBaagTi"]}, {"partyID": "RJ8daGTVX3Bb7jlz", "userIDs": ["5IfHgKjI9mwJSrN8", "jkIykR2zbaI6PD7f", "EscShnGUGUtV9GJ2"]}]}, {"UserIDs": ["79GDbLNwjm3FK0nn", "X2poMfZ1hDHtbh4H", "tMlFgvh2Dp2SoiIP"], "parties": [{"partyID": "p1yvfAHS0VgLu11A", "userIDs": ["3HTovFi4tPAGfley", "CA6jEtcqsnzoVILj", "kwW61duF87aUyrdt"]}, {"partyID": "4XSpWBAetsanzqP8", "userIDs": ["oxfrtbECD1CYPwai", "BAxfYL8Avt70ZUT2", "fSk3LL0calqxEewu"]}, {"partyID": "GS469k2hG0WKt4sU", "userIDs": ["manYxM0UHZVNYzGM", "NIpWoSLkUrfuf4U3", "WeYeA9t2ENKKWrFt"]}]}, {"UserIDs": ["HIi1CMgKAOG5iDcC", "R5PbCvDLil8wj9cK", "M3Ar6MF35hCER4nG"], "parties": [{"partyID": "mWGgTJfHlJl4tHGa", "userIDs": ["4XfZcd9CVnGqMX9F", "ieeEssWEUl07bhwn", "tCVqiYOJf5KwMZQj"]}, {"partyID": "zvjSozv6CTRDl0zp", "userIDs": ["9CzHFwinkBNi4gvq", "gl6TZ9TGVPmv34h6", "T7EsufmfxKYB4LM6"]}, {"partyID": "H6QXmpZ9X3fUSR1l", "userIDs": ["9xLPBsmAUrD9L1Ii", "D6MlcEPhMDFzjHZ3", "sIhzOx2CXKlvIomU"]}]}], "version": 50}' 'pIxM9n8D2eLMe3lt' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "9qfx2UDcgVE7L9FK"}' --login_with_auth "Bearer foo"
session-public-get-party '6e0MrPc4vtxk9hVK' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"lG56HlzGr7XjdyRJ": {}, "unZPkp6ccIBnWyPw": {}, "8mj7gyQ7XdIszGRj": {}}, "inactiveTimeout": 89, "inviteTimeout": 58, "joinability": "eQAe1rzmmgqBPRmd", "maxPlayers": 58, "minPlayers": 25, "type": "WEfOJpZm9yEYWNGM", "version": 49}' 'BJ5y7axEkvI4oxZE' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"DxGiBnNbn0zaf7Ca": {}, "OSlHXrUSA6sMJzA5": {}, "mtqISQ83TTbtefXW": {}}, "inactiveTimeout": 52, "inviteTimeout": 47, "joinability": "nDe4LQdXfFBii2RA", "maxPlayers": 78, "minPlayers": 62, "type": "r0sVZ6LJAOddIL2l", "version": 6}' 'hPjNDKv2LWfXqjr8' --login_with_auth "Bearer foo"
session-public-generate-party-code 'fS79En3wYowBdkaZ' --login_with_auth "Bearer foo"
session-public-revoke-party-code '3y6i38XQjLDRqkpi' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "FK5BtiQ272Uo9UBJ", "userID": "WodpdwsX1jorcyR0"}' 'x3YiHF8ITGPRQBCg' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "Is1Q2lzxl0yF5m77"}' 'TTh4gUoj8u2WRcLi' --login_with_auth "Bearer foo"
session-public-party-join 'EtzVlnkflfn7pHY4' --login_with_auth "Bearer foo"
session-public-party-leave '8F1dl1q92m3iRlfn' --login_with_auth "Bearer foo"
session-public-party-reject 'BAk0CwiAsR65yQ9s' --login_with_auth "Bearer foo"
session-public-party-kick 'suHdGmxncCEr0Kcg' 'eqzGbruNB72HHMkj' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"zyBB4UFKiaoV0VOe": {}, "m2yqPsMFxKybPkbu": {}, "S6x9cLJ1APnNlsa2": {}}, "configurationName": "bRBr27fVMWuAfDqL", "inactiveTimeout": 79, "inviteTimeout": 70, "joinability": "R919IZPKOKiAVQXX", "maxPlayers": 83, "members": [{"ID": "41q2OspCZbt3Uta5", "PlatformID": "I0uGcL1koyHjCH5o", "PlatformUserID": "lYLETRpABAmO2EGv"}, {"ID": "J4UMS93yOxNInDBy", "PlatformID": "hnoluO6ti0QP2ssi", "PlatformUserID": "J66OzOj84O6tgohj"}, {"ID": "tC7bzjPpucddXJ5z", "PlatformID": "ifF8y959anrNSley", "PlatformUserID": "wHbHig6IKWVZ77Ke"}], "minPlayers": 89, "textChat": true, "type": "dECaFGzfZ2hxcJ2F"}' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"nemn7M23SzUo4hNB": {}, "Dh9ZFP1OW0nXOErQ": {}, "PS4VsRoYIK69yg9A": {}}' 'DCGiXaLs2xjHkinO' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"D975nARHCmhNHSXu": {}, "qIHsxvaUoXDmwWsu": {}, "kxncuD3QxCXMd00Y": {}}' 'BWCaVVmM45mfIZsW' 'hkS476dGGJwJ00UH' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["197MJ6zU7JLMQyMW", "zYQCAaPJgoxGJoJa", "SzUtY4ZD0Xtb0U4p"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "6NUsVY21NVIs7NRe", "data": {"n2Y3Ns0QJQeaWytP": {}, "fds1BYx0EaURydf8": {}, "ZyyZeHAWGgJUbUJR": {}}, "platforms": [{"name": "MbkcTglbU86FyOjA", "userID": "pNHBVfNOURcjY3YY"}, {"name": "T9oTynmfIuBWgJTN", "userID": "FfM8M0IW4oe8KDgy"}, {"name": "0xZfAcNg14Ws8TIP", "userID": "1LKiFQoLDvumfqrg"}], "roles": ["Sfnx2h61X9dN1MGR", "XBJ6mVV7JS9qjNLw", "vI8JdiY3RRiLilmO"]}' --login_with_auth "Bearer foo"
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
echo "1..75"

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
    '{"regionRetryMapping": {"GF6dLLIeIVIjMcdl": ["bdRXTGIrdNL5gJPq", "TAjgqaTHf1ANTJ9Y", "k997XkGOdC6ItxDT"], "8p4n4XCFkD1AJLCw": ["szbZxuHSgDOK8bjo", "F7bL2635KbtZTGJp", "qgl2IzNXGTuQPIDp"], "or7t1aJLNNz6QIVC": ["9Mfuc8VOsnmnlVlj", "dWYmELe74p38vumn", "xAnYBTxaTIz0jcgD"]}, "regionURLMapping": ["I8Pkz96vd80msqIm", "5bufnBqrpLeqhwVh", "jnnjKMEmtbiWsAQH"], "testGameMode": "bMrKYi0Zxs5SWCqZ", "testRegionURLMapping": ["XHLLa31oQf7BULnZ", "DhutDM6BqguqD5xx", "GxBWtnTKUe2znsqP"], "testTargetUserIDs": ["zPkwCBo2SwCUsTag", "4MLAo3m61P2xaNfm", "n8Onb1a9gMz0F2UB"]}' \
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
    '{"durationDays": 89}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 57}' \
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
    'mMhAbUWmFhdYLWzM' \
    'tmp.dat' \
    'uv3zkUY0n0BAZkwb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["kBLyO6A0FqfhnaB3", "YxKNdOTacCcJfIfX", "shuLUk5WdpxjZx5n"], "SessionTitle": "oXPhPUTKbonoucNm", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "9vayLLiizac7Ge6z", "XboxServiceConfigID": "KJdlt7rjF5RaJwvk", "XboxSessionTemplateName": "WVco2LTo5ijlvDF8", "XboxTitleID": "qBWCQ9dLWYyS8zdh", "localizedSessionName": {"MeBXH8x6HdVfZVDA": {}, "iU6iJOF7JKZFNk2N": {}, "Ky59X8iOg2sVBiCo": {}}}, "PSNBaseUrl": "eC5weXJl7PeiMH8z", "attributes": {"8dVej8N2yv6VTnOK": {}, "7xAvM7tuL81lsR7x": {}, "xSVp3Gd2TK0HzYvi": {}}, "autoJoin": false, "clientVersion": "jbalHmqBBfi7sSF5", "deployment": "BoGiTCVsXsygWbjE", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "8jHz9x7XZIjU4IK9", "enableSecret": false, "fallbackClaimKeys": ["xphTLEEBGTtZyTjd", "KNKgYazujsmSmylT", "1YtxIq73aMb48jIS"], "immutableStorage": false, "inactiveTimeout": 99, "inviteTimeout": 18, "joinability": "7KORRhxSWLWLNfHR", "maxActiveSessions": 61, "maxPlayers": 5, "minPlayers": 85, "name": "V15QaGGL46LuxJF3", "persistent": true, "preferredClaimKeys": ["bzf5aANNNs5kgSZZ", "NUHbIT9szApmWJO5", "vzzXZj08a6K1XRVf"], "requestedRegions": ["riSpPFnZBJZkDnEi", "yfa2LrnpZxNnLRH3", "6bqS2oFY76PU1Azi"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "HEAj1cT3u6Zc2Fbr"}' \
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
    'TFznTgDIwZIRWf6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 83, "PSNSupportedPlatforms": ["by2kYSCdnFKLc0xc", "TjqjdcEfU61OJYMn", "W49rWynp1ck1vT90"], "SessionTitle": "C6o86cSRL9cgbUmu", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "he98oaFKlQicdrxV", "XboxServiceConfigID": "hrtwSd9QWVMYz7TU", "XboxSessionTemplateName": "1TsxsChSclSkb5aB", "XboxTitleID": "i9K9zyv6gFZXI5nX", "localizedSessionName": {"J7hLi6HweweRmyo9": {}, "1dIn7QqXBDXJcrqK": {}, "mXDwoEV6tCdrxw1K": {}}}, "PSNBaseUrl": "OPhuvHuYrGWDK41u", "attributes": {"MOC0mRvSoaGk4ktF": {}, "5wnJDg9Q3WXiydCO": {}, "InVolsr6CHmj763v": {}}, "autoJoin": true, "clientVersion": "cfswmeFpvtDtetoQ", "deployment": "VFL8LNW11vtpaTxi", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "pEi5DbkVs3qFTi1t", "enableSecret": false, "fallbackClaimKeys": ["30Wj1WfzIvc3VlSX", "rA3XUGud4tVjmxEf", "4XvVhFJTxFHITBg9"], "immutableStorage": true, "inactiveTimeout": 44, "inviteTimeout": 41, "joinability": "Pb1kuUfNfUDe4g7q", "maxActiveSessions": 58, "maxPlayers": 85, "minPlayers": 95, "name": "HEaqbzHvDDl1jiLw", "persistent": false, "preferredClaimKeys": ["MGBA6JXDpA1tIC45", "C0oaGouFu4hXONgU", "wJnUpryDeRcpUvlr"], "requestedRegions": ["w2MwC1uuokpaIjL0", "Vxe5n9Lx3QcFo9gx", "OgvDc7xMrRKvw8IS"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "KmCRRXBxlalCHtWl"}' \
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
    '{"psn": {"clientId": "E2kLTnJwc5XmkCuL", "clientSecret": "5W4tKt6G3j9LYdG7", "scope": "xVPqBqe9RDQMBSYA"}}' \
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
    'FLqp8PF5hCcoukWp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'nbz4ys7j6lxuU3u2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'HEG0qfKegvFTD1sP' \
    'ykS8YLmwtYgWGcA0' \
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
    'h4G1LZ1HaX5UBMbs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"F44VTsLDRzdq22cb": {}, "nyK3ggFDh2kaZP7p": {}, "nnVfxPwc259HF9ej": {}}, "autoJoin": true, "backfillTicketID": "aILQruAuYyJLYGqM", "clientVersion": "v824ouSgkpK70uJm", "configurationName": "UL0uzElixc023dIv", "deployment": "DiA0tQWlHwBcTtzt", "dsSource": "x3VAl6tXFbnATCzU", "fallbackClaimKeys": ["OIzVcy9k3ie64Vnw", "a0ClGQJultJe32Ai", "wKadEoIVmprwPsa9"], "inactiveTimeout": 93, "inviteTimeout": 60, "joinability": "YgwWv5XldL6rOVGc", "matchPool": "RAn51rVAQSxp4qTB", "maxPlayers": 88, "minPlayers": 25, "preferredClaimKeys": ["Fj1umx4ItzkMJ7cu", "df4r916GPrhn2etV", "IQvRkQJAtDUH9tx6"], "requestedRegions": ["0AehGz1ermJYXsYg", "L7TfyIlAwjTZdRZJ", "JzWZwvTX2bamSCvX"], "serverName": "1nwvSWdDwD7WJHzg", "teams": [{"UserIDs": ["NZUKsI5y0mR3zMyT", "sftKqnsIJctAdxyZ", "VKHA9DkaSOWgtg8y"], "parties": [{"partyID": "w8lHEbVDwBAqanOl", "userIDs": ["scRIWw82k5K5VTkd", "ubkOFldMCQ98JH4n", "0JtgqzZv5kVu4S95"]}, {"partyID": "mj8YRvae4f4lhBPb", "userIDs": ["arbWEm8bVtZcfVCP", "dQhim9QKUAFTVYel", "IlGJg9wdc8bihhWj"]}, {"partyID": "fZpfcFBUsnnDJlmD", "userIDs": ["1iEokbUiYzCQh2iN", "TwtnohddMzMTQ9P7", "sYLDWAJOA75K4BYJ"]}]}, {"UserIDs": ["2fkqYJoF2FI3vyyq", "Rzc20O7FdsJP1G9t", "yBTfERXdvgD1Qf7O"], "parties": [{"partyID": "t2DkUt3yexZBRvxY", "userIDs": ["nEBhXtAVxCd3meTr", "T7cF9oVCh89wNOkK", "YssVejcL3kR3hCGN"]}, {"partyID": "gaJmuALlMQl9RLrt", "userIDs": ["hbfp0VgweLlT2sY3", "SsTnDQY7kKU2u06Q", "4veujxtyQENvJrBC"]}, {"partyID": "qeg67d4RWOqO4U0b", "userIDs": ["itNQLzwRoWnR0Abk", "CPY70FmvviVIBbcu", "jF8Vk5qb8NhWWwax"]}]}, {"UserIDs": ["yMchkt8l5IPSrwrJ", "l7wYIVw13NCo9yXl", "bQ52FTHTCj6SEAzT"], "parties": [{"partyID": "7TOpyiuvvQUm29Ia", "userIDs": ["cq4XRLaA643nTMtX", "SAyejnny0Ju13b6o", "5uB2XM6IHy7EEvHy"]}, {"partyID": "LmcvrZZOdwe1x8Rj", "userIDs": ["U6Bi8JXE52sUBBq2", "SimQQoLbe5YOJvxG", "RxUzrTwagH7BMT1I"]}, {"partyID": "ZKTdNFVBQ1crBXAu", "userIDs": ["pATO8uXsqVpdiWo8", "SjDAM0Riw8wLYW3n", "4F3LD1EDwBXw5uBY"]}]}], "textChat": false, "ticketIDs": ["5VyC4qvWjVac1cQv", "SxgTNIUzxDgBlIbu", "zm7DzJ20NFRJIhFX"], "tieTeamsSessionLifetime": false, "type": "aMsq8ePN1oco2jx8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"Upe8SjMvpqM8pugg": {}, "OEdG47gD5i2Ni6An": {}, "Wn3NdEPhNHSH7eKD": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "fRcngEpTnRUQr3RL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'OM1vEx4gqDY6jwyK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'RxhkLe5zohg9s9ut' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"RQt28b6o3K0COF74": {}, "tz6aeXZOYwbwjMNd": {}, "xKWlBfnRyFS0Ed7g": {}}, "backfillTicketID": "TM5AVrtBQiDTcNnZ", "clientVersion": "a6Zuxk6u6HXXdiC9", "deployment": "ZDj4E4mv12FNXypo", "fallbackClaimKeys": ["OLl13j84P0KqirJ4", "PkMFtsnFfz8Ew0X8", "fBuBSKLSQ4GvLtz5"], "inactiveTimeout": 60, "inviteTimeout": 60, "joinability": "i0mNHb6Lx8eq8SGN", "matchPool": "wEQO8dYXvBSYvJBw", "maxPlayers": 3, "minPlayers": 10, "preferredClaimKeys": ["6CjZUMRf2VJetWso", "kvx3BHuTEczr9KjQ", "3ttz8MTBt1xk9Iys"], "requestedRegions": ["sSA8nP5PQjpzk2Tb", "7iYdmNZWosrsVBPZ", "64j0HUONscofwYLQ"], "teams": [{"UserIDs": ["cDvkaEIIPoJT83zE", "GXmVBZLyrH9J7Boy", "smaORLkP5hc2Fh04"], "parties": [{"partyID": "JTsqDTynCewqJlig", "userIDs": ["LlRxOelKykICRxF6", "HtlER2txs4qrNARA", "Tn6KXOutlYBbLhL8"]}, {"partyID": "KXx25FZfQIodVBqQ", "userIDs": ["sBpCJBIXLGYcwWVR", "K6UKk5ozrXA4HZHN", "yq9odanhR1Zrm3th"]}, {"partyID": "UvV87yfkycLSVdle", "userIDs": ["SaAylsmLYe2phYOg", "T5kDTyPl3dKF7NXE", "jrJMki8jvc3P8Gwj"]}]}, {"UserIDs": ["g3IOH0SDHgYKqxJi", "FJdrmj5vhzgsJwex", "7wq8ZPlXNaUNgdY2"], "parties": [{"partyID": "vfJuje5cPnmGjTvY", "userIDs": ["a5Pqx1K7qcAoijBP", "Ap6EPb988NzxrDKV", "pULjjiw3NeVG4DJi"]}, {"partyID": "9DaMrc0WFgKjE945", "userIDs": ["x2CPVYYG9WvoGmAm", "vaVV5YfxnUNcwjr7", "gSGhnfuF4WZiQVIC"]}, {"partyID": "VpWd3UM08gMXhdf3", "userIDs": ["juXW4JprIb3CJCAt", "vSG8Cfa9dzOJDGCT", "HIOFjeXbsSgR43kI"]}]}, {"UserIDs": ["DzxBwqRJTzrHNZWU", "sq5lQo2jy29EJigq", "YhyVhURx1yPeczRp"], "parties": [{"partyID": "dk0HATGylx2JG2KN", "userIDs": ["GfhzfCTxxrsRRLee", "3TcJ7DQIi45aCDHN", "9mVug2zkVf6KgpKO"]}, {"partyID": "cn3tMD9UT67bOwug", "userIDs": ["FDa6wUQvehKqwCh8", "6XmRkCEcfHDCdl59", "Wp9A3tXGve6DdK6u"]}, {"partyID": "vg8f2cIoByk9fxtv", "userIDs": ["sgeAxo57nKAbZpsb", "J4Iu5KJ0ynxGBlac", "DCdFe8ATUqVxcSth"]}]}], "ticketIDs": ["rpnMUBsnUfuQIcSb", "Ut5UGkInFGpuUsdt", "q4dOwNESzCEW9dUV"], "tieTeamsSessionLifetime": false, "type": "2Cqm84jVi9kIpqgr", "version": 53}' \
    'PD9CeDEdCnnL6Kt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'Bjj3b8QM8Rr45ULq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"XQgvwD3PsKDJiWxQ": {}, "BwaS7rDBf2S54phb": {}, "dyGDt47f9GWRlE9h": {}}, "backfillTicketID": "qz6rjDNo4rhjxUdM", "clientVersion": "M83WekqfWv04vvn9", "deployment": "bk5qr8qs2mqtnGAq", "fallbackClaimKeys": ["XUjNypF6MMqWpdEJ", "sPoaIbYz8cK5jlpJ", "dre5ur6yvWJDdvM7"], "inactiveTimeout": 94, "inviteTimeout": 57, "joinability": "7PX2vamIRZHzsIYO", "matchPool": "CUoiCXNjrdQL2jdx", "maxPlayers": 81, "minPlayers": 9, "preferredClaimKeys": ["Pvl1kCY5bEokxXxk", "WZbjf7GZxaossQmj", "o69wohJFyTNk5FGU"], "requestedRegions": ["PhR4LEZvz3EjFR79", "96Ug5m4axDV5uTcY", "soahUrELQ1btjJOq"], "teams": [{"UserIDs": ["QMgZWAU6E92nHJzv", "w7tnYtGfv0EJyjBu", "4EzwRjD7jmQJeFPg"], "parties": [{"partyID": "hqamSc5y0X48eT7M", "userIDs": ["luexk87b9Z5BTsEA", "3EdmW8saabP4xRow", "fNojzPXI2v0prR3O"]}, {"partyID": "Eey0MkZwS6TYwNN3", "userIDs": ["UYhic03qGEg5fNzB", "Vrjo3g8CfRwtyl1H", "eT7VEPgG40QyXzsO"]}, {"partyID": "zgck078IghoQBp2m", "userIDs": ["WAOYksczxBS0OBCa", "2vWadLmQtYKmEMzi", "cbuL2S3RiW8dLTCB"]}]}, {"UserIDs": ["fGUdVEdvdQL7sVwc", "Z2PofaJoSqtrEOqx", "H46fRTSZoDdT0fef"], "parties": [{"partyID": "o74eg3Nt2c0r4GqF", "userIDs": ["0NHglOVuNZ9LzNeJ", "nBurh54CWbYb0Peb", "yt8b4DGscjwrizsF"]}, {"partyID": "UgYwbaLvqvQ2NbmD", "userIDs": ["ITuymTBjn3d2sFzM", "S3QaVjZF7Ax6115K", "g9U8vrQJXQxoIbVi"]}, {"partyID": "2CLEk277Ivjj1A64", "userIDs": ["7XQ3koaAfZIim0sF", "Pm1YN27bojDVaZLp", "x4kEWYkO6KrKUMhJ"]}]}, {"UserIDs": ["rASBh61hmWKSSrF3", "5anDGvur19V18oIr", "UKXttgAI2QdWJFLm"], "parties": [{"partyID": "oPEgd8EMspOs8nki", "userIDs": ["c9gj5vyUMAAmIHYb", "sxG5N066FXb88SbL", "Oa21DiSFsm0XXQJW"]}, {"partyID": "szvTQEuALzDNp1SZ", "userIDs": ["58aDllwzTRHak1MX", "xj7Esrg7900nml5B", "idsK9dCEzhVnOv0P"]}, {"partyID": "QbVIaKiHfoeorY7A", "userIDs": ["1otGFyv2SMjbEr50", "qGdCZIc6EFqBKxbS", "7Q2OgRucL1jwRXzf"]}]}], "ticketIDs": ["jDZZBmOau6syme06", "c6SKLc2mEC3IXl5X", "CbkOfHaGr5kdazly"], "tieTeamsSessionLifetime": true, "type": "MB6jzrpRGESmooHi", "version": 58}' \
    'qxj4hBgVY3YAxZLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "bcOdyjqf6Q4oiwoJ"}' \
    'caRMEb15LBlTVufc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '5ZyODR2NVyn4PRqf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '3eRbZqBAoKGcVCdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "iSNV4qBrt1kcLmRv", "userID": "6EJtl5xWnsb8oWq9"}' \
    '4RImNWVIJnhhwFDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '1VitaomvWTzdsW4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "70wYS4Kj7Yi2VvoQ"}' \
    'NW8Yc481dYdvGxJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'MDRA1LF7jdWlekFw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'O94VBCV9qJhWva2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    '{"secret": "PBujX0geYCpGJM4s"}' \
    'qsPNJMiZXXOFwmGW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetSessionServerSecret' test.out

#- 54 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "AvNF0Z0GkwxUNYyN", "userIDs": ["wGiKrknH0Y5mrQgL", "C6D2qsFiQHglUQMZ", "i5WjMZfOadpgegCU"]}, {"partyID": "jTdi1Ehr8OtqpNJ9", "userIDs": ["R8TuNy4ejmVA3vMC", "sGyPd12B8QNUz0hF", "FNbH6j2W4roZM2UK"]}, {"partyID": "AXEEsL5D0oiFchQn", "userIDs": ["Veq3g2AB2WIRUQma", "uIY5HXCZ0W4XmWP0", "HzSdiylLhVYszm8x"]}], "proposedTeams": [{"UserIDs": ["Y33OQbumu2QHLyZN", "uysyM4OfCzdQCXMA", "Wnf87YPNOe9Eevf1"], "parties": [{"partyID": "fhMg1E2k7QLFrVgt", "userIDs": ["X7y0fPOieDCow2zX", "yFFVpM87yqEwEacQ", "MTlqN4LKkxJ5v3SB"]}, {"partyID": "afnKNiMPbFkFGA85", "userIDs": ["W3HJkqgS2B37wwoP", "YOHiIsxmsLBPBJuN", "LnWRrtW870qD88Zc"]}, {"partyID": "duZSe7W20UZcDaiq", "userIDs": ["0nEZ7PyhqFJkDClO", "sKmfsgJdmzsDPsWh", "1k0cQ08NG6dX2TZk"]}]}, {"UserIDs": ["il67kRngoUa83ECh", "1gqPeS193TNNzot3", "sVli3GN2XTrFibRA"], "parties": [{"partyID": "hzzEWzWlTY70qdgJ", "userIDs": ["RvpZrSpWX3KEe2Bj", "V00ReCXFffjJJxlg", "jzIhpgOoIOD74V21"]}, {"partyID": "HWDAfvXwdxbyp4HA", "userIDs": ["PbBbNPStVBUpKgOs", "sFkz0F36piDYXeHZ", "7FHls3nyvconqbHQ"]}, {"partyID": "qKLQKe3xmj6s0Gqs", "userIDs": ["Wncp5LrqbiKudv9z", "75SzoCV8ZMi2o1nR", "482D6gNClk9c87ho"]}]}, {"UserIDs": ["saPFC5zBW3ZgVZCj", "9ObVGT0Scwl4kNmC", "i15XTJTgCNNH7RtG"], "parties": [{"partyID": "5Xmo9Q0Wb07N17fk", "userIDs": ["xZSc6VbE0AGcekjM", "NHuPXtz8tXxrmzaf", "MUguyDoN91uc28Ho"]}, {"partyID": "SpGt1g0GGbT4Hf2P", "userIDs": ["PKOldkbgX9CWJKwX", "XSbv5eg9q86IaDFj", "jx6uZerWbtwTX9gN"]}, {"partyID": "RByjbE8lOLAfTXKL", "userIDs": ["zbrddqcKLa7LevxN", "HOSEhQRZIp693lRw", "tc43atCuCFxbfbz4"]}]}], "version": 1}' \
    'rRoM6FoqCYw7AlxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AppendTeamGameSession' test.out

#- 55 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "6qdFpc71sSck3ggZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoinCode' test.out

#- 56 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'WJlSlCQMDji329Pf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetParty' test.out

#- 57 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"VrvMEPtpsSNcpK1Q": {}, "kB2Sy8Ww79LVeVsk": {}, "qeUB7RSayqGFguhh": {}}, "inactiveTimeout": 2, "inviteTimeout": 56, "joinability": "vadRthdbVApebRA0", "maxPlayers": 57, "minPlayers": 36, "type": "qoMZvpIOO97DmQ5Z", "version": 82}' \
    'Fok5d3AyGrZO8Guo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateParty' test.out

#- 58 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"XNSoVEBG7VbBPUWi": {}, "pz9C05YabFX4FCK5": {}, "ucTFsAFzaO3yJpA3": {}}, "inactiveTimeout": 74, "inviteTimeout": 90, "joinability": "MxBlrRytER1qdTel", "maxPlayers": 65, "minPlayers": 5, "type": "AadM9y66Drf4SSGG", "version": 39}' \
    'C2nzS9SiGUjVAw4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicPatchUpdateParty' test.out

#- 59 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '3q6JRHcn7KaoCEkR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGeneratePartyCode' test.out

#- 60 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'do6qHYIZWnXqQ1oH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokePartyCode' test.out

#- 61 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "FJ9Q0vqsL9SomqWs", "userID": "GA76yxi0QzZWfmP2"}' \
    'sx0KO5bEJaPnAFjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyInvite' test.out

#- 62 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "odyJQVVBrShGbIIu"}' \
    'qK8C403HgoXCR6XO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromotePartyLeader' test.out

#- 63 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'MXwKdfqk8T4QHK30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyJoin' test.out

#- 64 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'EX0FclpDl5Hsurac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyLeave' test.out

#- 65 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'O5MnjnxD1OXkxShF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyReject' test.out

#- 66 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'VQTRekLfjmy8zosR' \
    'CRgVwbrQKmb01yA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicPartyKick' test.out

#- 67 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"U7dGMjupZkZQY8CN": {}, "yT4k3DIbfT22G5Np": {}, "E130YWSgxpKWtdtd": {}}, "configurationName": "tVW9anENmxb9e7vX", "inactiveTimeout": 8, "inviteTimeout": 98, "joinability": "jqc0apxqZ209BySn", "maxPlayers": 4, "members": [{"ID": "aUaGlAyvIslt7N1q", "PlatformID": "cxKs4nlf1MfqUZXk", "PlatformUserID": "jHvcUOTlxNf09pef"}, {"ID": "gFIiJssShBKsQjXv", "PlatformID": "fQgQDt6ce8NDMErA", "PlatformUserID": "82FrR1GSogkewIzT"}, {"ID": "OqKkcjRh3l2gAJOT", "PlatformID": "Cbx7J3gNLIlTk3Bp", "PlatformUserID": "clrk4hIRn0znIKzA"}], "minPlayers": 63, "textChat": true, "type": "6KLPXkvUv2XiXaBz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicCreateParty' test.out

#- 68 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"smaxjTZPlLitytGk": {}, "a7Kv5TacQKF4OlRG": {}, "dmXxETLEQrr3KCAV": {}}' \
    '9alq3hK1G4kKooSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorageLeader' test.out

#- 69 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"NUZuiynZ64IwncZP": {}, "k82GF3eTC0vzZUDj": {}, "9dzGgGVxo9OHgfHu": {}}' \
    'myfuBNisecYbcOpR' \
    '45VDlvSc0Mr7ImwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicUpdateInsertSessionStorage' test.out

#- 70 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["wGqOf0bNs97KvKyj", "3MqS7Dcmtfh50eOb", "brmgjhWK0x0ZidAJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 71 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetPlayerAttributes' test.out

#- 72 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "q6tEeUmU96FLEak0", "data": {"mJqjRYldcTpdeCD9": {}, "XPRi4bAQL7VE2wL8": {}, "Y4JFVUdzA8bvXlDh": {}}, "platforms": [{"name": "G7BrorbKIKuOXJPm", "userID": "5ztrr09CDA8Ij5bG"}, {"name": "KSuopWQbaCvdPSq8", "userID": "Z27GpvHCDx55JZ5z"}, {"name": "6gujpFzlPspQD9IR", "userID": "IpDDubntPCFxfeoW"}], "roles": ["2NdSWzOXjO1NQUqW", "HBW78XREZCiTNAxq", "26gZrPqCsSDspvgM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicStorePlayerAttributes' test.out

#- 73 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicDeletePlayerAttributes' test.out

#- 74 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyGameSessions' test.out

#- 75 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
