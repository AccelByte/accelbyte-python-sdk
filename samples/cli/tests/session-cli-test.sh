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
session-admin-get-log-config --login_with_auth "Bearer foo"
session-admin-patch-update-log-config '{"logLevel": "info"}' --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"metricExcludedNamespaces": ["twYCA9kPI6LZrkq6", "Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh"], "regionRetryMapping": {"4n8mzZ0m8SAMTwE6": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "4CUkNmKJfh5pUkHO": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "vyE3cwyALczNIicX": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"]}, "regionURLMapping": ["n7Z4U68su8XfqlqN", "iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y"], "testGameMode": "sLEzth6mXhzkzWkF", "testRegionURLMapping": ["eZSoEAcBdW19m4eu", "6d5tA5jUmiTqpyhP", "FdxLzFQN05MYzYiK"], "testTargetUserIDs": ["We5dNRljv7IPrDQQ", "Rgat0SevkLGMS0ly", "uI9a2I9u6Vpbsx5w"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 96}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 15}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "localizedSessionName": {"WytLPziZMdjxcBZu": {}, "fQxGiHPllG4cYEzf": {}, "TD1ZBm3MqHcUmLZZ": {}}}, "PSNBaseUrl": "bSqb8RwNmn9HrNQy", "amsClaimTimeoutMinutes": 24, "appName": "uZAAiE0mit9RGCCH", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"qwGyzzWi9gwQYv7t": {}, "1o7TTr1DmrhZv15T": {}, "7quIOvBMcaYmvCkG": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "cHyCUEXlAvxJMdal", "customURLGRPC": "wSyliWMNW5NyLu0M", "deployment": "3VHh2EI8JlDbPWbQ", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "dlgdWyOtXi3choQr", "enableSecret": false, "fallbackClaimKeys": ["68cmDc3fxU8MyKrQ", "pM4hkkK6KKXNB3Gv", "0IqmF51TkhjYnaq6"], "grpcSessionConfig": {"appName": "foWvXa3bMrXsDr6k", "customURL": "ILsSSyDdmykmoPYg", "functionFlag": 4}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 18, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 29, "manualRejoin": true, "maxActiveSessions": 76, "maxPlayers": 79, "minPlayers": 30, "name": "Nqq98SjTvhZNkSQ7", "partyCodeGeneratorString": "0D0H6BXksUC9b6i5", "partyCodeLength": 23, "persistent": true, "preferredClaimKeys": ["ZC9xv32e8c5csSov", "oqsZNBdte9NDUPVJ", "f6c2Z0QZxfgPubTD"], "requestedRegions": ["IHrvqAThuwjRHpKK", "TlmVr9XuoJbRFQSK", "VPHbn4Xxtu7LQREN"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 35, "type": "NONE"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'U6YE3p4lSck0ZHn5' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 0, "PSNSupportedPlatforms": ["BHqaTHeKtW18iGeU", "lc9d9sogWa24CKNS", "0GqVvUfHQvsHXNUN"], "SessionTitle": "e4mhgo5QB65lSAiY", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "NjkfZrQvGgbLdLsF", "XboxServiceConfigID": "zHkBMr1yrOMlNFSr", "XboxSessionTemplateName": "UEirnjX9fDmIbeZx", "XboxTitleID": "zfTcyiuATus9hsfp", "localizedSessionName": {"FDcSDG8aMVGLiBNr": {}, "DjqoxcwgGLXpUL4p": {}, "p2ncYAHdNzDmeIP6": {}}}, "PSNBaseUrl": "rOvDz9KOsb392k6Y", "amsClaimTimeoutMinutes": 26, "appName": "FuuuySj29a9LJE8H", "asyncProcessDSRequest": {"async": false, "timeout": 29}, "attributes": {"RS1X2PFAAMwzHPxB": {}, "1UskYs4Yw20DOqOB": {}, "SC2DKHRuPMMWH8Yb": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "UBJCjfcnLRfxeCSz", "customURLGRPC": "9WEi8KlloeH0JT1y", "deployment": "duat2vQR3biBfsu4", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "4EXsXzOXQAk4mqrx", "enableSecret": true, "fallbackClaimKeys": ["t4SqYUTLDx9gIiDa", "ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND"], "grpcSessionConfig": {"appName": "UWehwH3q31A806DJ", "customURL": "gas4b6z3LNUj7fdg", "functionFlag": 77}, "immutableStorage": false, "inactiveTimeout": 54, "inviteTimeout": 64, "joinability": "OPEN", "leaderElectionGracePeriod": 58, "manualRejoin": false, "maxActiveSessions": 60, "maxPlayers": 85, "minPlayers": 21, "name": "ICpnduEEQlULdJz4", "partyCodeGeneratorString": "mnRBkMNxvvKgAT8m", "partyCodeLength": 72, "persistent": true, "preferredClaimKeys": ["AgIUXiI07A68eaqC", "2J9jyEW6GLbc0NaK", "DUL3sa13lk1dQBHO"], "requestedRegions": ["86IlBhnetU4RwTqU", "XlTDBzOuYsaZA2yy", "d4mbqoOfADMMAXFa"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 74, "type": "DS"}' 'XIBudfZgrbHDIDm4' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'hMzF4TxodenSrUTv' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'fqU0bfoMm5cTtFWb' 'otQyXJRcQWsmqPNs' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "92epxk0i8VxsZNer"}' 'eSvf9699mCEHThUJ' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["kETAsSp7gh4TeUTk", "OkAYfJB8AT9t4Tv2", "07Y2QD3oD5fLCr3O"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 's6gQxC3Gb7S0o4zG' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "YY7KQI1AeFgPqaOk", "deployment": "vo1aolB4lkKB4EYO", "description": "kQ1jMD3cym8xIfkO", "ip": "VW2grREOLx0KOww3", "port": 69, "region": "CtohLtl9Zuhytm5U", "serverId": "DrT6QXCs5SPBbRPZ", "source": "TF6oQAXVG7tnsZg5", "status": "QgXjvyGJPN4eXbJE"}' '5Vs2GcyomQoIXimB' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'JehyxlNsjUgxBkF6' 'wFPoJeQediogEhhM' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '2rIizGdKvOPdq5xr' 'gxSmy1DN9LFkYW5D' 'Qyj4bj5Ro2ogaKt2' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["ujQSa3Zdb65UXmy0", "Zp6iIaTIKUkmkk9Q", "M0NBMA9ORxpzwLR2"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'AK6eXUGPJsw1fiP8' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "0G9Pclxcft2ulIJz", "clientSecret": "PyrVEiOG4UcqsuGK", "scope": "HhMRWLVd3DlhLuIp"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-upload-platform-credentials 'tmp.dat' 'SGEdlwuUccE536ug' 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'ARtdbBe7udsMrok0' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'WvGYYnx4V709xbnG' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'ezKsDwG2omOR2nvY' 'I9TVqJdvzcWbfUpa' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Xp5JMl5LL4bTxBmZ' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'jdrrIxsB0NRsB1fP' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "qqRRulpqpymDkQht", "attributes": {"rHWwRVnwVBOqOHi8": {}, "pWGd1juYhiqjRJOq": {}, "B5F93zFQbJndUDpd": {}}, "autoJoin": true, "backfillTicketID": "NneAczbBdHb2slt7", "clientVersion": "1B1SmZp2JZp50CnP", "configurationName": "b71ORYcmQbTU5JX8", "customURLGRPC": "ccLjMXJRk0eaKQDO", "deployment": "JvrTefglSs6g4iY9", "dsSource": "u02aCNYIWekp18lO", "fallbackClaimKeys": ["C3mNqF7Bl0LcghVH", "fPEspxwhRON0bc1e", "MbEIjowLqc3ecjXJ"], "inactiveTimeout": 2, "inviteTimeout": 31, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "DKKoxLE1Y3Dymtj3", "maxPlayers": 13, "minPlayers": 16, "preferredClaimKeys": ["rYaT5hOPjaf3H0tY", "ighU0VUfcYHJbBfA", "KSiPW3VgsZXiR1DJ"], "requestedRegions": ["7HVWqMkNSawQUWDF", "JvJBWic7UkBeIXuq", "DuAXI66bQ71w0deo"], "serverName": "V9Lx5RDA1l2Xcrci", "storage": {"leader": {"YNEzvSZIPkhSgORc": {}, "z5S5BvmgBLxh4ijF": {}, "nE3Tam69qSZ7PC6f": {}}}, "teams": [{"parties": [{"partyID": "6QkmZXElW9YfRSse", "userIDs": ["6AAz3S4czz0QKFlA", "VmVLu4AOec0z8eBe", "eoip68J1nsv4W2OJ"]}, {"partyID": "htafxMSJlHeb34sZ", "userIDs": ["KHcl5LLLOexL4fZv", "WtND2tcBFpX8lNtF", "EJ7tnkY6Mca5afj1"]}, {"partyID": "2K2IzrBvvWm4udE0", "userIDs": ["OXudXgNne8kJATwl", "c6esUp6Sw1I98jeZ", "Q7hfxnhLd3Knakno"]}], "teamID": "ed9DHhLOqQGhCUr6", "userIDs": ["iTrjyEgarAdNJOIG", "36I6tRbRcrEveMdA", "diPKDUVSC00PYeDc"]}, {"parties": [{"partyID": "agginxnFIna3yddc", "userIDs": ["bsPheTH26IUJNvYu", "GRUvpZaHCuESOiIZ", "sMfB4ZH3mtgWgU4p"]}, {"partyID": "CAKxeE70CaunQNxo", "userIDs": ["t371W9G4AvQkqsGn", "myo5JJTUVmb8GEXF", "TlEMEsFzYqwgK1Np"]}, {"partyID": "5nodqpLm7FhJBNXz", "userIDs": ["AFdO0Khqf6kiTdSG", "v2LFjAKY7CbgsWqF", "WZX7kPBom8F9GLLT"]}], "teamID": "G8phc3n4iLoIllKl", "userIDs": ["pO2pqiXJF3WGRaoQ", "omSJC4DdrKF7SUQP", "LG59e0k5ZtX6wK7P"]}, {"parties": [{"partyID": "pUlcIW32iK7MGt1i", "userIDs": ["xY5rA1WoVeJIePF8", "ZrQzP4zvtdxdbZUp", "d6FJtHJ1pyVwyKQL"]}, {"partyID": "Y6FEO65Rb3z7CYLM", "userIDs": ["8IlsHqffnrfsGlfP", "aZKBwa3Ddb60ufPp", "zwj1QGIFmlVf4jva"]}, {"partyID": "pseE9LN9bvhOrHfl", "userIDs": ["IOd6X3viLvtEk4mT", "IpUA9gxo8SV38nEh", "oXmM2W7l6jHMA2rG"]}], "teamID": "3nakopAywelu01nr", "userIDs": ["yEJ0NqoTow0qiOiC", "4j0iktm0ZPLkLOsp", "0LZ5njN86Hl8kUXz"]}], "textChat": true, "textChatMode": "GAME", "ticketIDs": ["bSc6bWvgpVyW9dD1", "kOmvrAejcq2LgkQu", "aS7RBx3vim02jBOx"], "tieTeamsSessionLifetime": true, "type": "DS"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "DyvpcLYOWA8NjxOn"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'aEok4nOOCzfsflhj' --login_with_auth "Bearer foo"
session-get-game-session 'bngJOUn18G5MlfDT' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"k8aG40NlncceIZSw": {}, "gAIkgzh4pTU0Am4D": {}, "Zhl0bQxFJ3sWCqQp": {}}, "backfillTicketID": "Q2FbKPFMycMSQ4qf", "clientVersion": "AacR0LgB5BUXvjcu", "deployment": "2s6w3VifnKqmTSoG", "fallbackClaimKeys": ["H1XEfY6QAYn6WQ5U", "BEU1QAOHfZiGhxOd", "cuDXSxSc3aZPV87p"], "inactiveTimeout": 27, "inviteTimeout": 76, "joinability": "CLOSED", "matchPool": "8Asvt1j1Rx59hesN", "maxPlayers": 99, "minPlayers": 79, "preferredClaimKeys": ["y2NvZ85DDKDAF8KD", "sBZOuYQJ03BAHZ7c", "53q7akMpcmnnx6RV"], "requestedRegions": ["Brop9v7aZK3h65hb", "N15zfQSfQrtfF3TQ", "N0OcNDLr36vzohZy"], "teams": [{"parties": [{"partyID": "jMQAg5mPYhrLTyU8", "userIDs": ["OhgfY9JQYGF4bYXE", "cENx9xZlAchob44l", "ONDDwMvgI0HlyPR7"]}, {"partyID": "wZNiVsF6xG2mXEQd", "userIDs": ["bzIVy8alncV7vWgS", "Hdfo07UctPErqxyM", "yOK06MqQBErxgjVB"]}, {"partyID": "ycvU4PbmRDcrg0Dj", "userIDs": ["QjBECXvea7H1m2lJ", "FRZ3ZprZ60zMjhTH", "eh94TSenE5hCFkIf"]}], "teamID": "5weqZ18MH57l2Zsr", "userIDs": ["h90ETtYmGukz3Mnl", "rjcHp6B8Vj7rXFgD", "nDkdZ9bpjb1tdA3Q"]}, {"parties": [{"partyID": "hjCMW64f4XhIjSoT", "userIDs": ["B2NMKtezapPr2QEP", "x3zTxBGtEJIYppuU", "SsKoHw2hyd12uSE7"]}, {"partyID": "BEv3aevq6iohU1cg", "userIDs": ["4W1IS3Uv1BpWoJBa", "qdg2FHcunsS1lnaO", "2m9vqjhbeK2qN8g6"]}, {"partyID": "x2PyYDo5R3hLiD5s", "userIDs": ["f5y1JsxJNGmyt0SQ", "DUDoWBZVGLlkUetz", "CAWc9x1aMjgGim51"]}], "teamID": "T107XIZRZ7tZdIs0", "userIDs": ["xf4czdt7zqmSKxOE", "QlVcx6GqsBq8vdhW", "VnuYLgpZehK0G2nm"]}, {"parties": [{"partyID": "yuViB9kRTcSQdTnN", "userIDs": ["YGeAfYFG3wSkHKuf", "BdS3ZOokZB4cXnAX", "yuGz6LlxHv8Swyag"]}, {"partyID": "YvDJ3w3UNgIGj2jZ", "userIDs": ["tEYT8sIPSE1XXPzy", "Sa0sZoFS6xCOWMpy", "h9pMsQgb64ELbzDM"]}, {"partyID": "wyo4nIRysQdbufXj", "userIDs": ["YnSoIFeouC2m38kX", "rDZWlGVE9sJ4NpUt", "Kp6M9I6nEwnZhsjw"]}], "teamID": "JeGwaPSDMZz95OYK", "userIDs": ["iqaZD63xe5rruJVf", "LGea0ZtlzUcuHAXz", "0UV31MfuGaXsAuGs"]}], "ticketIDs": ["ZaSHevO0TQNEI3kf", "abxJWWSI1ECUo1NP", "peFhUztXDgB7n4C9"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 20}' 'APP8PATLpUpxeJls' --login_with_auth "Bearer foo"
session-delete-game-session 'BJT6Hh3OMjAjq2mK' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"8lbSEEelxnb5QxWG": {}, "2HFnZlA6HKWW4fI1": {}, "IQcoBQELcNlZkqTZ": {}}, "backfillTicketID": "rKgXNwvm4e5GX6H7", "clientVersion": "42OixhtAoKiVm6UR", "deployment": "T95XhnUcvWB28Mpu", "fallbackClaimKeys": ["suhhDJ5slzgiWZEt", "yd56LfxnbY97jjYg", "XchCbkXX26uEdCfQ"], "inactiveTimeout": 1, "inviteTimeout": 80, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "Wqc0qgV6d9yOfIML", "maxPlayers": 6, "minPlayers": 61, "preferredClaimKeys": ["s2DbPcaoMdtRLTmS", "vTkQQgB7exYvmHMx", "r5hPCJJztJBg0tTJ"], "requestedRegions": ["g46IewOXE2AkCh3Q", "IZsUf8lGFXcmwTER", "HclOdxIwqejxe18r"], "teams": [{"parties": [{"partyID": "Ndb8Otq6j1mqUav7", "userIDs": ["k05HAQltnSojV4jT", "65yclX2FtAz0vJjF", "IYWOaNdsimmkW2mi"]}, {"partyID": "H3xRHAKy4QxZkaXZ", "userIDs": ["7vmiEd0JPxVyQpsh", "aDwNqTbbFMXAMfVX", "e0GZeMgsRsmH1EQr"]}, {"partyID": "YmkPKTPOlhTtSiZN", "userIDs": ["CxuogFteTHJe4BhS", "SQkQD6WmOt6D7ufF", "VTOhvQpfbBke8aEd"]}], "teamID": "d36xj6wySoltDxsb", "userIDs": ["zxrlaKEfkoYjY2o6", "ouRW9UtNquwC3Wgu", "mrIz4NhGztZpr4U4"]}, {"parties": [{"partyID": "fwQIiLXgmRasvjO4", "userIDs": ["lj8m3XEwP2b4gd3x", "Oeii8Jnmssep2xD2", "NY0kABeGs9yxahld"]}, {"partyID": "1pO0Gyf5PO3COyMv", "userIDs": ["czgEpzZ3FbtxfhcR", "C7IVYa6iZ5uFRYNn", "3SHiWxF0YbuU5ar5"]}, {"partyID": "qTLWUCy0Afgc050X", "userIDs": ["IZRW491e94mQjVOO", "BnIWhunElqZUodp3", "IhtCSHy1ei1fIrPv"]}], "teamID": "fHnRN06EjRwEQlNa", "userIDs": ["pJRfk4f9Zcw1pEHA", "yNFxcVTKuAQTGh5B", "xjWOozGoDtsUuYo5"]}, {"parties": [{"partyID": "p8ED5QZAufwNa8lz", "userIDs": ["fjv9oYMXMjlVHY1A", "HwF3vGoav7MK0PcL", "nEkcokKwcQ0baDT9"]}, {"partyID": "OyJ2h23GUS2amU7s", "userIDs": ["yGlElXdEAOrVSnLo", "cLVVYamQc4wcG5nD", "BLJoJHbiQ5duE5p4"]}, {"partyID": "cfs2E41cK8QTwiIA", "userIDs": ["vxSvNDlmM5nQFMGz", "s7fzjgyc44mEh9tR", "k8knYSV30lnroQeh"]}], "teamID": "MDli6t9unQLYXxm0", "userIDs": ["9wpGAbpEmDY9vLh3", "u6EDsUmrV6kH4Oot", "KwG3UC6XCnnZxF8C"]}], "ticketIDs": ["mQr17W65br34rBBN", "9tU6TDm5GloFSKWM", "1eym5ydC6p25xCWT"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 96}' '4Yr2svKM6pqLGZ0T' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "BujELAUK6mQ5iZgb"}' 'wwm5iGzXtcknrgid' --login_with_auth "Bearer foo"
session-game-session-generate-code 'KupvXO6aj4hCmTC3' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code '4jxW4pIDwdqXpmRm' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"ut9H9XyWI8bp8fQx": "RuX91uYmtrHJbEGT", "Uj7YjERL1rEQG02z": "ccA8wvLsWUNd6lPK", "vqDejvqklTSvDwuO": "rP9lzpiX0VuFpZum"}, "platformID": "7izxe7NPzjOa8E7w", "userID": "Y76PxLv9HBEUe89A"}' 'wEw1HO4FnKtx4XLK' --login_with_auth "Bearer foo"
session-join-game-session 'AmlDr19uJ3nq6Ver' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "zVCcI8y3Cz0YqCKU"}' 'h5RD9vNAp4jinFpn' --login_with_auth "Bearer foo"
session-leave-game-session 'Q5xF9wwbvMZyeDeR' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'nVfPUa6xVVBcq3wZ' 'pFIYeAg79HcLJXJ7' --login_with_auth "Bearer foo"
session-public-game-session-reject 'mpVI6eTYAjdPlCiQ' --login_with_auth "Bearer foo"
session-get-session-server-secret 'QC35cj4KyOVgvnWb' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'fRJtsB7cUQZ2QUAx' 'JrINPXppPNO3AfmX' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "cgwC3IN6tvKgLB9Q"}' --login_with_auth "Bearer foo"
session-public-get-party 'mJIOq9dP5szG71ut' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"jsQ4CrRb9gUCeVz7": {}, "fWbZIdhevfZvyV7A": {}, "codcZwKjYDdmJOlz": {}}, "inactiveTimeout": 47, "inviteTimeout": 70, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 18, "minPlayers": 92, "type": "NONE", "version": 42}' 'MgKAOG5iDcCR5PbC' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"vDLil8wj9cKM3Ar6": {}, "MF35hCER4nGmWGgT": {}, "JfHlJl4tHGa4XfZc": {}}, "inactiveTimeout": 6, "inviteTimeout": 35, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 97, "minPlayers": 41, "type": "DS", "version": 67}' 'q1bTHXIjfJKyFlM0' --login_with_auth "Bearer foo"
session-public-generate-party-code 'u1uuoVdn9yVoSlKN' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'chPHNL4X3LLaGPGd' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"qLE8SohhhuiTnJar": "YYkHBDdSzBXdxapw", "hd5IQYBQuxLvPuWY": "vE3fsNy9Z9OhxXvC", "p9y7fLD2qfCXnlUn": "qxT1WsRNMZcA92hz"}, "platformID": "C7MNa8vVe4MHX6Ag", "userID": "Mep90AyyUJyAK5PR"}' 'MRMwdvl0hv6g62Gx' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "BW2tQF5tkTjgJaMY"}' 'vNQOsDa4bkcgepqt' --login_with_auth "Bearer foo"
session-public-read-party-session-storage 'xjbrztee7QLTGAak' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage '{}' '7Kaol01DK97D2xni' 'k42miteR5eQAe1rz' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{}' 'mmgqBPRmd6mO4oI8' 'KDqebm83raNBJ5y7' --login_with_auth "Bearer foo"
session-public-party-join 'axEkvI4oxZEDxGiB' --login_with_auth "Bearer foo"
session-public-party-leave 'nNbn0zaf7CaOSlHX' --login_with_auth "Bearer foo"
session-public-party-reject 'rUSA6sMJzA5mtqIS' --login_with_auth "Bearer foo"
session-public-party-cancel 'Q83TTbtefXWznDe4' 'LQdXfFBii2RAMEX5' --login_with_auth "Bearer foo"
session-public-party-kick 'RMjBFVZGYzQqV8d9' 'mDdUIoiIJFNxuNOm' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"USWw18T1IxVWCxdv": {}, "PL9e4P01vxP8xj1L": {}, "yEirURERnEMzpImW": {}}, "configurationName": "6sjAHyCK5tNanGBr", "inactiveTimeout": 21, "inviteTimeout": 52, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 95, "members": [{"ID": "HF8ITGPRQBCgIs1Q", "PlatformID": "2lzxl0yF5m77TTh4", "PlatformUserID": "gUoj8u2WRcLiEtzV"}, {"ID": "lnkflfn7pHY48F1d", "PlatformID": "l1q92m3iRlfnBAk0", "PlatformUserID": "CwiAsR65yQ9ssuHd"}, {"ID": "GmxncCEr0KcgeqzG", "PlatformID": "bruNB72HHMkjzyBB", "PlatformUserID": "4UFKiaoV0VOem2yq"}], "minPlayers": 86, "textChat": false, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{}' '2nFe9FmN86sK5LOq' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{}' '4ft5jGcMICPUYnfG' '6jl9U4jReteIMgzI' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["SomCsodJrhQW41q2", "OspCZbt3Uta5I0uG", "cL1koyHjCH5olYLE"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "RpABAmO2EGvJ4UMS", "data": {"93yOxNInDByhnolu": {}, "O6ti0QP2ssiJ66Oz": {}, "Oj84O6tgohjtC7bz": {}}, "platforms": [{"name": "jPpucddXJ5zifF8y", "userID": "959anrNSleywHbHi"}, {"name": "g6IKWVZ77KeRWdEC", "userID": "aFGzfZ2hxcJ2Fnem"}, {"name": "n7M23SzUo4hNBDh9", "userID": "ZFP1OW0nXOErQPS4"}], "roles": ["VsRoYIK69yg9ADCG", "iXaLs2xjHkinOD97", "5nARHCmhNHSXuqIH"], "simultaneousPlatform": "sxvaUoXDmwWsukxn"}' --login_with_auth "Bearer foo"
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
echo "1..96"

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

#- 4 AdminGetLogConfig
$PYTHON -m $MODULE 'session-admin-get-log-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetLogConfig' test.out

#- 5 AdminPatchUpdateLogConfig
$PYTHON -m $MODULE 'session-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPatchUpdateLogConfig' test.out

#- 6 AdminGetDSMCConfigurationDefault
eval_tap 0 6 'AdminGetDSMCConfigurationDefault # SKIP deprecated' test.out

#- 7 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminListEnvironmentVariables' test.out

#- 8 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminListGlobalConfiguration' test.out

#- 9 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"metricExcludedNamespaces": ["wKZGW4y3f0R9s2kn", "dhhZhwAiLsZs4pmL", "DIQch4IjDq9aT3qZ"], "regionRetryMapping": {"yI0rYsWucAkXsVJb": ["Xi7eRZa7WwIc895I", "mqK6tVsaUq3stUh5", "J5Z9GiBiSAylX5cS"], "0IeHpWCugmfOL0QQ": ["pxsuD8PGqku59eFJ", "rOXyDYz9vMUOPG0i", "HDT8QbF7gHPTPQbv"], "Lt2NRqJGIKzLyH1y": ["72L13Ornyx34luLd", "vtsTKXMjiw6gYPvf", "n2Qt9iyq3Nyk8ncu"]}, "regionURLMapping": ["2Z3eDHH9WaVO4iKh", "DcJ7TCcNIsQ3Pupp", "UxDSK8aOTGMudcxl"], "testGameMode": "CV4cNbJGQ57lPdin", "testRegionURLMapping": ["pjS2DRfGt9GlyZVQ", "4X67tPZSTpPq3xjr", "ElvvDgw0ag7kSWE0"], "testTargetUserIDs": ["Hiqm5IuLryiEXqvU", "WDjU1G0EVjVZw1To", "LuPakQN1MpOs1RVF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateGlobalConfiguration' test.out

#- 10 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminDeleteGlobalConfiguration' test.out

#- 11 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationAlertV1' test.out

#- 12 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 35}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 3}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 AdminUploadXBoxCertificate
eval_tap 0 15 'AdminUploadXBoxCertificate # SKIP deprecated' test.out

#- 16 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "KICK", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 49, "PSNSupportedPlatforms": ["KbtZTGJpqgl2IzNX", "GTuQPIDpor7t1aJL", "NNz6QIVC9Mfuc8VO"], "SessionTitle": "snmnlVljdWYmELe7", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "1d2b92B4vEgj3HOm", "XboxServiceConfigID": "hcWm428XejRF94NI", "XboxSessionTemplateName": "Y9nMrBZo0lNUBDSh", "XboxTitleID": "HD32vvL28FPwTiXf", "localizedSessionName": {"LcxDC9Ynd02mECIQ": {}, "hfIhHtADUQ9zimQT": {}, "QT95pFJUAJsyAfeK": {}}}, "PSNBaseUrl": "OufV4f15NohXu6op", "amsClaimTimeoutMinutes": 48, "appName": "2znsqPzPkwCBo2Sw", "asyncProcessDSRequest": {"async": true, "timeout": 59}, "attributes": {"UsTag4MLAo3m61P2": {}, "xaNfmn8Onb1a9gMz": {}, "0F2UBRmMhAbUWmFh": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "YLWzMuv3zkUY0n0B", "customURLGRPC": "AZkwbYkBLyO6A0Fq", "deployment": "fhnaB3YxKNdOTacC", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "fIfXshuLUk5Wdpxj", "enableSecret": false, "fallbackClaimKeys": ["x5noXPhPUTKbonou", "cNmzwOZOK56sDkci", "5rZ8iMlOuksQJCiR"], "grpcSessionConfig": {"appName": "FiZWwJ7NrTb1XTB9", "customURL": "YQzUJ9XlYJ8BzP6E", "functionFlag": 95}, "immutableStorage": false, "inactiveTimeout": 53, "inviteTimeout": 95, "joinability": "CLOSED", "leaderElectionGracePeriod": 14, "manualRejoin": false, "maxActiveSessions": 57, "maxPlayers": 0, "minPlayers": 28, "name": "H8x6HdVfZVDAiU6i", "partyCodeGeneratorString": "JOF7JKZFNk2NKy59", "partyCodeLength": 60, "persistent": false, "preferredClaimKeys": ["D4MYXlrJ81lHvv9r", "qvEoM8YmVjAkO3HK", "sEp6KlqwW4djrexc"], "requestedRegions": ["bHdEtoQvpV344Rct", "mTozCi8HeV6jbalH", "mqBBfi7sSF5BoGiT"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 37, "type": "NONE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminCreateConfigurationTemplateV1' test.out

#- 17 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAllConfigurationTemplatesV1' test.out

#- 18 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'XsygWbjE2opXtdsJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["oo0qvxphTLEEBGTt", "ZyTjdKNKgYazujsm", "SmylT1YtxIq73aMb"], "SessionTitle": "48jISd97KORRhxSW", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "fHRD3V15QaGGL46L", "XboxServiceConfigID": "uxJF3sbeqWBdQuWf", "XboxSessionTemplateName": "gBAKx27MSBqabUXO", "XboxTitleID": "GkkoMUZn1YXj5zFZ", "localizedSessionName": {"eOCOR9NvBQZSJPOI": {}, "KrRBrYVzi9ui3lvo": {}, "zTt9TsH7A0TuU2aL": {}}}, "PSNBaseUrl": "4bPkk11sys6GdkDc", "amsClaimTimeoutMinutes": 30, "appName": "6Zc2FbrTFznTgDIw", "asyncProcessDSRequest": {"async": true, "timeout": 71}, "attributes": {"SqZFDsO1skRjOU1S": {}, "MfQVQa6blj9Rdd85": {}, "bdYUumPKVSZCg3XT": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "9vQe0dHJfF6KIuvn", "customURLGRPC": "RCa9JktyBdxkZKrE", "deployment": "WFw9GYxjiiOQAD77", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "vfWVZoRRMPi57HyK", "enableSecret": true, "fallbackClaimKeys": ["aBi9K9zyv6gFZXI5", "nXJ7hLi6HweweRmy", "o91dIn7QqXBDXJcr"], "grpcSessionConfig": {"appName": "qKmXDwoEV6tCdrxw", "customURL": "1KOPhuvHuYrGWDK4", "functionFlag": 41}, "immutableStorage": false, "inactiveTimeout": 84, "inviteTimeout": 24, "joinability": "FRIENDS_OF_MEMBERS", "leaderElectionGracePeriod": 87, "manualRejoin": false, "maxActiveSessions": 26, "maxPlayers": 22, "minPlayers": 89, "name": "vGjVQ4aebjfgGu47", "partyCodeGeneratorString": "2oWJlfglLM4xjfkN", "partyCodeLength": 77, "persistent": true, "preferredClaimKeys": ["4lU6jaGfsD1cfswm", "eFpvtDtetoQVFL8L", "NW11vtpaTxi7k489"], "requestedRegions": ["jRCn48bvkCPfKofw", "XOIZZQAJza84lKKm", "VOaTS6xBbNrSUAW2"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 66, "type": "P2P"}' \
    'JTxFHITBg9x4unq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'eOMHIKeTyBG5dCUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'ExnKfV3869IN4V1O' \
    'dhH4GVU7Exlkmc4x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "YiLjLyZrXr9Bhtzn"}' \
    '8jAdTn6xBhrciryL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
eval_tap 0 23 'AdminGetDSMCConfiguration # SKIP deprecated' test.out

#- 24 AdminSyncDSMCConfiguration
eval_tap 0 24 'AdminSyncDSMCConfiguration # SKIP deprecated' test.out

#- 25 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["m67rkadH5Y41SLjC", "PrFa05Xl5TPC5GOD", "S44bmm7jPdKLddfd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'P2WKmCRRXBxlalCH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "tWlKxLpS8fLWoQ5n", "deployment": "uJhatQPxR7dvBVC5", "description": "zgOKLTDmHe8c1eJ9", "ip": "sde7Ryt4udIv22M1", "port": 50, "region": "uux9xBomQFPFWy5c", "serverId": "wNPI6aFo0MVwDZCI", "source": "XFNEL3uWVRz3V7Yb", "status": "JM3bNLWHAbCZixe2"}' \
    'cQ6O30lpzcBQMAEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'NcJqrKxnMzSYoc4Z' \
    'jiMY4H34B6wVd8ip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'cKDwQeUWtjCC2UH6' \
    'jzMO3AfmOS5mQNyR' \
    'PZFPNP56l1AT6OLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminUpdateGameSessionMember' test.out

#- 32 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetListNativeSession' test.out

#- 33 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminQueryParties' test.out

#- 34 AdminDeleteBulkParties
$PYTHON -m $MODULE 'session-admin-delete-bulk-parties' \
    '{"ids": ["mZhCZxxPPdPwOtEu", "WBSO2jJepUnEEgja", "2mIE2kLTnJwc5Xmk"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'CuL5W4tKt6G3j9LY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminReadPartySessionStorage' test.out

#- 36 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlatformCredentials' test.out

#- 37 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "dG7xVPqBqe9RDQMB", "clientSecret": "SYAFLqp8PF5hCcou", "scope": "kWpnbz4ys7j6lxuU"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminUpdatePlatformCredentials' test.out

#- 38 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeletePlatformCredentials' test.out

#- 39 AdminDeletePlatformCredentialsByPlatformId
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials-by-platform-id' \
    'PSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlatformCredentialsByPlatformId' test.out

#- 40 AdminSyncPlatformCredentials
$PYTHON -m $MODULE 'session-admin-sync-platform-credentials' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminSyncPlatformCredentials' test.out

#- 41 AdminUploadPlatformCredentials
$PYTHON -m $MODULE 'session-admin-upload-platform-credentials' \
    'tmp.dat' \
    'QIyLarjaLOKnX51y' \
    'XBOX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminUploadPlatformCredentials' test.out

#- 42 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentPlayer' test.out

#- 43 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminGetRecentTeamPlayer' test.out

#- 44 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'PykS8YLmwtYgWGcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminReadSessionStorage' test.out

#- 45 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    '0h4G1LZ1HaX5UBMb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminDeleteUserSessionStorage' test.out

#- 46 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'sF44VTsLDRzdq22c' \
    'bnyK3ggFDh2kaZP7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminReadUserSessionStorage' test.out

#- 47 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminQueryPlayerAttributes' test.out

#- 48 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'pnnVfxPwc259HF9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetPlayerAttributes' test.out

#- 49 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'jHaILQruAuYyJLYG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AdminSyncNativeSession' test.out

#- 50 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "qMv824ouSgkpK70u", "attributes": {"JmUL0uzElixc023d": {}, "IvDiA0tQWlHwBcTt": {}, "ztx3VAl6tXFbnATC": {}}, "autoJoin": true, "backfillTicketID": "cbGWmKgE8CZ4AELr", "clientVersion": "5lraa5v5P5Cj8hgF", "configurationName": "sqHC9h5JPiMEtgKu", "customURLGRPC": "iGTYgwWv5XldL6rO", "deployment": "VGcRAn51rVAQSxp4", "dsSource": "qTB54mKA3V9DKlCe", "fallbackClaimKeys": ["Z7mLYsHooOIaxIpb", "1cIOJPS3lJ80YJ41", "U4ooQ980ywmg1pWp"], "inactiveTimeout": 100, "inviteTimeout": 16, "joinability": "FRIENDS_OF_LEADER", "matchPool": "sYgL7TfyIlAwjTZd", "maxPlayers": 90, "minPlayers": 41, "preferredClaimKeys": ["ZJJzWZwvTX2bamSC", "vX1nwvSWdDwD7WJH", "zgNZUKsI5y0mR3zM"], "requestedRegions": ["yTsftKqnsIJctAdx", "yZVKHA9DkaSOWgtg", "8yw8lHEbVDwBAqan"], "serverName": "OlscRIWw82k5K5VT", "storage": {"leader": {"kdubkOFldMCQ98JH": {}, "4n0JtgqzZv5kVu4S": {}, "95mj8YRvae4f4lhB": {}}}, "teams": [{"parties": [{"partyID": "PbarbWEm8bVtZcfV", "userIDs": ["CPdQhim9QKUAFTVY", "elIlGJg9wdc8bihh", "WjfZpfcFBUsnnDJl"]}, {"partyID": "mD1iEokbUiYzCQh2", "userIDs": ["iNTwtnohddMzMTQ9", "P7sYLDWAJOA75K4B", "YJ2fkqYJoF2FI3vy"]}, {"partyID": "yqRzc20O7FdsJP1G", "userIDs": ["9tyBTfERXdvgD1Qf", "7Ot2DkUt3yexZBRv", "xYnEBhXtAVxCd3me"]}], "teamID": "TrT7cF9oVCh89wNO", "userIDs": ["kKYssVejcL3kR3hC", "GNgaJmuALlMQl9RL", "rthbfp0VgweLlT2s"]}, {"parties": [{"partyID": "Y3SsTnDQY7kKU2u0", "userIDs": ["6Q4veujxtyQENvJr", "BCqeg67d4RWOqO4U", "0bitNQLzwRoWnR0A"]}, {"partyID": "bkCPY70FmvviVIBb", "userIDs": ["cujF8Vk5qb8NhWWw", "axyMchkt8l5IPSrw", "rJl7wYIVw13NCo9y"]}, {"partyID": "XlbQ52FTHTCj6SEA", "userIDs": ["zT7TOpyiuvvQUm29", "Iacq4XRLaA643nTM", "tXSAyejnny0Ju13b"]}], "teamID": "6o5uB2XM6IHy7EEv", "userIDs": ["HyLmcvrZZOdwe1x8", "RjU6Bi8JXE52sUBB", "q2SimQQoLbe5YOJv"]}, {"parties": [{"partyID": "xGRxUzrTwagH7BMT", "userIDs": ["1IZKTdNFVBQ1crBX", "AupATO8uXsqVpdiW", "o8SjDAM0Riw8wLYW"]}, {"partyID": "3n4F3LD1EDwBXw5u", "userIDs": ["BYeQZOzATNSV9E9y", "yNb7yaLXzAVYymOu", "hCkZu4htrsf8eIFS"]}, {"partyID": "ovTGXaMsq8ePN1oc", "userIDs": ["o2jx8Upe8SjMvpqM", "8puggOEdG47gD5i2", "Ni6AnWn3NdEPhNHS"]}], "teamID": "H7eKDfRcngEpTnRU", "userIDs": ["Qr3RLOM1vEx4gqDY", "6jwyKRxhkLe5zohg", "9s9utRQt28b6o3K0"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["OF74tz6aeXZOYwbw", "jMNdxKWlBfnRyFS0", "Ed7gTM5AVrtBQiDT"], "tieTeamsSessionLifetime": false, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateGameSession' test.out

#- 51 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryGameSessionsByAttributes' test.out

#- 52 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "NnZa6Zuxk6u6HXXd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicSessionJoinCode' test.out

#- 53 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'iC9ZDj4E4mv12FNX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSessionByPodName' test.out

#- 54 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'ypoOLl13j84P0Kqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetGameSession' test.out

#- 55 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"rJ4PkMFtsnFfz8Ew": {}, "0X8fBuBSKLSQ4GvL": {}, "tz50D3rpBfBovqLw": {}}, "backfillTicketID": "XBuT30EYeRj17xGh", "clientVersion": "aBKoUfiHjGmCyPsK", "deployment": "CJTv1ic9gvagF2cS", "fallbackClaimKeys": ["uztsJ5tj64gV7nmD", "k29mcjSuz9vbNStq", "PtQmQN6eKAGiZFCf"], "inactiveTimeout": 40, "inviteTimeout": 37, "joinability": "OPEN", "matchPool": "VBPZ64j0HUONscof", "maxPlayers": 45, "minPlayers": 74, "preferredClaimKeys": ["YLQcDvkaEIIPoJT8", "3zEGXmVBZLyrH9J7", "BoysmaORLkP5hc2F"], "requestedRegions": ["h04JTsqDTynCewqJ", "ligLlRxOelKykICR", "xF6HtlER2txs4qrN"], "teams": [{"parties": [{"partyID": "ARATn6KXOutlYBbL", "userIDs": ["hL8KXx25FZfQIodV", "BqQsBpCJBIXLGYcw", "WVRK6UKk5ozrXA4H"]}, {"partyID": "ZHNyq9odanhR1Zrm", "userIDs": ["3thUvV87yfkycLSV", "dleSaAylsmLYe2ph", "YOgT5kDTyPl3dKF7"]}, {"partyID": "NXEjrJMki8jvc3P8", "userIDs": ["Gwjg3IOH0SDHgYKq", "xJiFJdrmj5vhzgsJ", "wex7wq8ZPlXNaUNg"]}], "teamID": "dY2vfJuje5cPnmGj", "userIDs": ["TvYa5Pqx1K7qcAoi", "jBPAp6EPb988Nzxr", "DKVpULjjiw3NeVG4"]}, {"parties": [{"partyID": "DJi9DaMrc0WFgKjE", "userIDs": ["945x2CPVYYG9WvoG", "mAmvaVV5YfxnUNcw", "jr7gSGhnfuF4WZiQ"]}, {"partyID": "VICVpWd3UM08gMXh", "userIDs": ["df3juXW4JprIb3CJ", "CAtvSG8Cfa9dzOJD", "GCTHIOFjeXbsSgR4"]}, {"partyID": "3kIDzxBwqRJTzrHN", "userIDs": ["ZWUsq5lQo2jy29EJ", "igqYhyVhURx1yPec", "zRpdk0HATGylx2JG"]}], "teamID": "2KNGfhzfCTxxrsRR", "userIDs": ["Lee3TcJ7DQIi45aC", "DHN9mVug2zkVf6Kg", "pKOcn3tMD9UT67bO"]}, {"parties": [{"partyID": "wugFDa6wUQvehKqw", "userIDs": ["Ch86XmRkCEcfHDCd", "l59Wp9A3tXGve6Dd", "K6uvg8f2cIoByk9f"]}, {"partyID": "xtvsgeAxo57nKAbZ", "userIDs": ["psbJ4Iu5KJ0ynxGB", "lacDCdFe8ATUqVxc", "SthrpnMUBsnUfuQI"]}, {"partyID": "cSbUt5UGkInFGpuU", "userIDs": ["sdtq4dOwNESzCEW9", "dUVhZjLftC3sCS8C", "pLCqPD9CeDEdCnnL"]}], "teamID": "6Kt1Bjj3b8QM8Rr4", "userIDs": ["5ULqXQgvwD3PsKDJ", "iWxQBwaS7rDBf2S5", "4phbdyGDt47f9GWR"]}], "ticketIDs": ["lE9hqz6rjDNo4rhj", "xUdMM83WekqfWv04", "vvn9bk5qr8qs2mqt"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 68}' \
    'uzQJiLc1eI9w3JEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateGameSession' test.out

#- 56 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'xPGbEk7s7gw07Flo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteGameSession' test.out

#- 57 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"unC3vJKBC7SwgoVi": {}, "PeIB4Ehy0Y5aSJVD": {}, "ginxAM77eY9C14Fb": {}}, "backfillTicketID": "fiI2NPvl1kCY5bEo", "clientVersion": "kxXxkWZbjf7GZxao", "deployment": "ssQmjo69wohJFyTN", "fallbackClaimKeys": ["k5FGUPhR4LEZvz3E", "jFR7996Ug5m4axDV", "5uTcYsoahUrELQ1b"], "inactiveTimeout": 39, "inviteTimeout": 70, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "F7v3qbZu9M3OxqVA", "maxPlayers": 92, "minPlayers": 73, "preferredClaimKeys": ["4H1lRZ9Z1JBrHRzE", "OtIxzPqb6n73m0ji", "aDH86d9rsKgzCsMu"], "requestedRegions": ["lpB8HZUtVVaJCiLg", "KOwrSfWhT5B4Wedo", "pzwSluBtRFPKThyG"], "teams": [{"parties": [{"partyID": "nbjmPDKFS6u9FHuv", "userIDs": ["1M3qfch4SqIV6LQP", "HlaeYl4csFq65cU6", "6yJaj4ovoKWE4EW0"]}, {"partyID": "sw8v5peiuxoBJATa", "userIDs": ["uyD3XCXVMiyEvMf9", "yilUEujk6oqYo1HQ", "YTFzwdOMdupwD4O3"]}, {"partyID": "uNbcIDcIyvZbOy1T", "userIDs": ["4hfwkuVykH4Rpfmj", "IXFGZ5PKdbabJIkN", "nt9P1Tkm08luh4dp"]}], "teamID": "PRMDbUXBWTbpAogG", "userIDs": ["2wlZkLhuU5FI8Nij", "FI0GKwJ3vfXlsAMy", "2Zp2UAGxHnmSxvkG"]}, {"parties": [{"partyID": "9UR5q9neoW6JBcGp", "userIDs": ["9Rx2RfcRhXpmeeHd", "vphas9S7ivHEoLbU", "MM47f1UreUpxEkXI"]}, {"partyID": "bE1ETzRJZKMavu4U", "userIDs": ["l2IaieEbPSE7TGke", "HsYsW9oGBN1pYMBw", "bPZTlMlUvFEiGprc"]}, {"partyID": "NSQ9kEeXBZ6FVrBz", "userIDs": ["yhyhoS6a9oe0JaXF", "pff28uYbe4Cf2HEH", "vVevhISjbtBJUK5f"]}], "teamID": "E3OufPSX3PdOU2V9", "userIDs": ["yw94oa8UJ34TIedV", "3HyoX4VnO2LpBU08", "wfnlHBXFIqFUmgUS"]}, {"parties": [{"partyID": "MM5au8GJT0mkVPI6", "userIDs": ["zUtf3QaJPGrTNcXX", "TUIggoH89QNmI17U", "Db19R6H7r1ta3m7j"]}, {"partyID": "K5pxe82pgFiAS6pi", "userIDs": ["Izmc8rKrKEPGSAco", "ng6eNERUf8kjci1C", "tccv9Gv4tOcbnuCq"]}, {"partyID": "f0lm6WBkIzjoSV31", "userIDs": ["tvmMB6jzrpRGESmo", "oHiCV4GUOnXpapXQ", "GRakUbcG7PcR4eiU"]}], "teamID": "3Idi55jNrGNT2VHT", "userIDs": ["KuIT5FwwHj0Ur5F2", "PWGTTD81xhNP4t6k", "YBUjyXAn3bWQF6Qc"]}], "ticketIDs": ["AiJpXIrgroixptZh", "ckUTGkcBOE4qMcH1", "Kyi8ZFvGcV8DY0XO"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 37}' \
    'N70wYS4Kj7Yi2Vvo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PatchUpdateGameSession' test.out

#- 58 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "QNW8Yc481dYdvGxJ"}' \
    'AMDRA1LF7jdWlekF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateGameSessionBackfillTicketID' test.out

#- 59 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'wO94VBCV9qJhWva2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GameSessionGenerateCode' test.out

#- 60 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'FPBujX0geYCpGJM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicRevokeGameSessionCode' test.out

#- 61 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"sqsPNJMiZXXOFwmG": "WAvNF0Z0GkwxUNYy", "NwGiKrknH0Y5mrQg": "LC6D2qsFiQHglUQM", "Zi5WjMZfOadpgegC": "UjTdi1Ehr8OtqpNJ"}, "platformID": "9R8TuNy4ejmVA3vM", "userID": "CsGyPd12B8QNUz0h"}' \
    'FFNbH6j2W4roZM2U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionInvite' test.out

#- 62 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'KAXEEsL5D0oiFchQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'JoinGameSession' test.out

#- 63 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "nVeq3g2AB2WIRUQm"}' \
    'auIY5HXCZ0W4XmWP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPromoteGameSessionLeader' test.out

#- 64 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '0HzSdiylLhVYszm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'LeaveGameSession' test.out

#- 65 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'xY33OQbumu2QHLyZ' \
    'NuysyM4OfCzdQCXM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicKickGameSessionMember' test.out

#- 66 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'AWnf87YPNOe9Eevf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGameSessionReject' test.out

#- 67 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    '1fhMg1E2k7QLFrVg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetSessionServerSecret' test.out

#- 68 AppendTeamGameSession
eval_tap 0 68 'AppendTeamGameSession # SKIP deprecated' test.out

#- 69 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'tX7y0fPOieDCow2z' \
    'XyFFVpM87yqEwEac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGameSessionCancel' test.out

#- 70 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "QMTlqN4LKkxJ5v3S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoinCode' test.out

#- 71 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'BafnKNiMPbFkFGA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicGetParty' test.out

#- 72 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"5W3HJkqgS2B37wwo": {}, "PYOHiIsxmsLBPBJu": {}, "NLnWRrtW870qD88Z": {}}, "inactiveTimeout": 4, "inviteTimeout": 56, "joinability": "CLOSED", "maxPlayers": 91, "minPlayers": 42, "type": "NONE", "version": 29}' \
    'Se7W20UZcDaiq0nE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicUpdateParty' test.out

#- 73 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"Z7PyhqFJkDClOsKm": {}, "fsgJdmzsDPsWh1k0": {}, "cQ08NG6dX2TZkil6": {}}, "inactiveTimeout": 6, "inviteTimeout": 22, "joinability": "OPEN", "maxPlayers": 47, "minPlayers": 26, "type": "DS", "version": 13}' \
    'nGeZsZVgbPzPFbrO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicPatchUpdateParty' test.out

#- 74 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'MZMgWkFN7Tpkx6Gc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGeneratePartyCode' test.out

#- 75 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'fyOg6ZUrrp9ubg9m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicRevokePartyCode' test.out

#- 76 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"ndW2JKmQafUs2bxY": "ztOEyVbKIf1ZbzgU", "wd8DHoCQykmXHYmk": "Rlg7gYs6unPYQ9jN", "QN1di1ldhOh6Hvjn": "YuV7NfC4A2ODiZhb"}, "platformID": "fb8QqCyK1XH9D6vl", "userID": "5eFdFfgK46GjCWaP"}' \
    '8huTmnq3FGQn3Ahu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyInvite' test.out

#- 77 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "5wxq6oJq4mChmQHQ"}' \
    'hO9IKBXDFQfXFD58' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicPromotePartyLeader' test.out

#- 78 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'sG6uDhFYlrzJBYSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicReadPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage' \
    '{}' \
    'MuJfQecutjS029Bi' \
    'JWOG1m7MKclr5igj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorage' test.out

#- 80 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{}' \
    'NTVItrH2X78hxJga' \
    'Vfw5Vnyq8OzTE89W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 81 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'DNoMcOmbfJrCJQIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyJoin' test.out

#- 82 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '1haAosKglqaCXE9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyLeave' test.out

#- 83 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'tpIO8btO3OwNEGSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyReject' test.out

#- 84 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    '5TaW4to7QCY2NGGv' \
    'i9kg3rMIzNmhJTNQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyCancel' test.out

#- 85 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'jKlwjfJ3TJ2xVpge' \
    '70WsLfgbZieRvJI5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicPartyKick' test.out

#- 86 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"sT9DH3DfLCv8q4Th": {}, "mq09bBgPAYxrBE9j": {}, "lnTgtgW33wDwD9RK": {}}, "configurationName": "vQX4yFQFdrRoM6Fo", "inactiveTimeout": 34, "inviteTimeout": 59, "joinability": "CLOSED", "maxPlayers": 69, "members": [{"ID": "w7AlxO6qdFpc71sS", "PlatformID": "ck3ggZWJlSlCQMDj", "PlatformUserID": "i329PfVrvMEPtpsS"}, {"ID": "NcpK1QkB2Sy8Ww79", "PlatformID": "LVeVskqeUB7RSayq", "PlatformUserID": "GFguhh3bvadRthdb"}, {"ID": "VApebRA09rW8i8kr", "PlatformID": "FWJhe03coRFok5d3", "PlatformUserID": "AyGrZO8GuoXNSoVE"}], "minPlayers": 57, "textChat": false, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicCreateParty' test.out

#- 87 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentPlayer' test.out

#- 88 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicGetRecentTeamPlayer' test.out

#- 89 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{}' \
    'qbCKpMv2Yky9DYkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorageLeader' test.out

#- 90 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{}' \
    '2sIllFtBtXJKG3rq' \
    'BmILhtWm8RQvRUbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicUpdateInsertSessionStorage' test.out

#- 91 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["DSiefGEdLucrtO2g", "CQD057DrDlgC2nzS", "9SiGUjVAw4v3q6JR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 92 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicGetPlayerAttributes' test.out

#- 93 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "1mMIfOCDyVAHrHnc", "data": {"R5dShqiBUI9esSsX": {}, "egSEhrPpK2q8kxR4": {}, "BuEksS2A9VOA8H9V": {}}, "platforms": [{"name": "eHv0L2Acm960EYQE", "userID": "uGJVl8xs1WId9Wla"}, {"name": "lqshF9Rh2o7GCQGP", "userID": "CxwEdkyuT3MgzReR"}, {"name": "q0112ISArROIodcm", "userID": "M6v2AEozWWaYvBLE"}], "roles": ["46bpuJip8JyxJ39v", "rtuWWrqTZbSqBSKp", "8AmgwhYzk33J34fi"], "simultaneousPlatform": "TxK63OHpnUCGBVfp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicStorePlayerAttributes' test.out

#- 94 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicDeletePlayerAttributes' test.out

#- 95 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyGameSessions' test.out

#- 96 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
