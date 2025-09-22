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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "localizedSessionName": {"WytLPziZMdjxcBZu": {}, "fQxGiHPllG4cYEzf": {}, "TD1ZBm3MqHcUmLZZ": {}}}, "PSNBaseUrl": "bSqb8RwNmn9HrNQy", "amsClaimTimeoutMinutes": 24, "appName": "uZAAiE0mit9RGCCH", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"qwGyzzWi9gwQYv7t": {}, "1o7TTr1DmrhZv15T": {}, "7quIOvBMcaYmvCkG": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "cHyCUEXlAvxJMdal", "customURLGRPC": "wSyliWMNW5NyLu0M", "deployment": "3VHh2EI8JlDbPWbQ", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "dlgdWyOtXi3choQr", "enableSecret": false, "fallbackClaimKeys": ["68cmDc3fxU8MyKrQ", "pM4hkkK6KKXNB3Gv", "0IqmF51TkhjYnaq6"], "grpcSessionConfig": {"appName": "foWvXa3bMrXsDr6k", "customURL": "ILsSSyDdmykmoPYg", "functionFlag": 4}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 18, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 29, "manualRejoin": true, "maxActiveSessions": 76, "maxPlayers": 79, "minPlayers": 30, "name": "Nqq98SjTvhZNkSQ7", "partyCodeLength": 60, "persistent": false, "preferredClaimKeys": ["6BXksUC9b6i5lZC9", "xv32e8c5csSovoqs", "ZNBdte9NDUPVJf6c"], "requestedRegions": ["2Z0QZxfgPubTDIHr", "vqAThuwjRHpKKTlm", "Vr9XuoJbRFQSKVPH"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 26, "type": "NONE"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'SQUhAEtrmjqU6YE3' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 91, "PSNSupportedPlatforms": ["Sck0ZHn5GI39YBHq", "aTHeKtW18iGeUlc9", "d9sogWa24CKNS0Gq"], "SessionTitle": "VvUfHQvsHXNUNe4m", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "go5QB65lSAiYnNjk", "XboxServiceConfigID": "fZrQvGgbLdLsFzHk", "XboxSessionTemplateName": "BMr1yrOMlNFSrUEi", "XboxTitleID": "rnjX9fDmIbeZxzfT", "localizedSessionName": {"cyiuATus9hsfpFDc": {}, "SDG8aMVGLiBNrDjq": {}, "oxcwgGLXpUL4pp2n": {}}}, "PSNBaseUrl": "cYAHdNzDmeIP6rOv", "amsClaimTimeoutMinutes": 61, "appName": "cJcHm3SZLxoRDFuu", "asyncProcessDSRequest": {"async": true, "timeout": 89}, "attributes": {"ySj29a9LJE8HoRS1": {}, "X2PFAAMwzHPxB1Us": {}, "kYs4Yw20DOqOBSC2": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "RuPMMWH8Yb33T5UB", "customURLGRPC": "JCjfcnLRfxeCSz9W", "deployment": "Ei8KlloeH0JT1ydu", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "vQR3biBfsu4jmsRE", "enableSecret": true, "fallbackClaimKeys": ["zOXQAk4mqrxzTtuL", "l4XlbGL8QOxtjzm8", "y2wNhmwoYZyI4EFZ"], "grpcSessionConfig": {"appName": "KBcYrCEAE7WIsfmx", "customURL": "40NLRc6m8heKnWhz", "functionFlag": 11}, "immutableStorage": false, "inactiveTimeout": 52, "inviteTimeout": 80, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 42, "manualRejoin": false, "maxActiveSessions": 96, "maxPlayers": 9, "minPlayers": 19, "name": "oKFeIaFQCYoDPICp", "partyCodeLength": 27, "persistent": false, "preferredClaimKeys": ["duEEQlULdJz4mnRB", "kMNxvvKgAT8mJrYq", "6hRkloqxM3gpwxcf"], "requestedRegions": ["My9XzjjI5YbsKoAD", "kzJEN2VHzih3bit0", "VWn3CO39PXDNxtXg"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 52, "type": "P2P"}' 'OuYsaZA2yyd4mbqo' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'OfADMMAXFaY9eKa6' --login_with_auth "Bearer foo"
session-admin-get-member-active-session '99bRVhyaKwwrAP2a' 'Mlu7WtjCtoYetOO8' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "47g8OudOfjnCuHZ3"}' 'c46IjGa23YvYmmDg' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"7VYPXIuvUYTZBRuj": {}, "IUE1Tq5jyAZvkRCM": {}, "NFIurjh2imdb4rbk": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["Xj0ZwsVC0gL97ZVJ", "SPqJiwv1qlYB1RSK", "s6gQxC3Gb7S0o4zG"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' '7KQI1AeFgPqaOkvo' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "1aolB4lkKB4EYOkQ", "deployment": "1jMD3cym8xIfkOVW", "description": "2grREOLx0KOww3HI", "ip": "CQLfl7MUBG7qtPu6", "port": 92, "region": "yAtURKLRkb738HGS", "serverId": "6rDgMdIIlhS1fSiM", "source": "9331m7Ta1PsKc50K", "status": "v6ecnEevcAx2K2zk"}' 'RenmPZnGBt4P7Wnb' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'dSJtjX7ZshZyZl5x' '4bRXBHUTrDzZSKsc' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'fOcYu3dpCROYqUiG' 'KXVFCmpo6sPwVOED' 'SJsEK5QpNhlI2iS5' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["EpGhhvXYck0upMzU", "Ynb76tFkEORV3bu1", "bNCtX7W40V6Do5sY"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'adCCFrHHC3DpZxkr' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "QDXuNFviMarv8mnf", "clientSecret": "HK8CCmE2lPnsbD3S", "scope": "GEdlwuUccE536ugB"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'XBOX' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'HBvepnDCjgyJlXe3' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage '6mgWjLfFmteue9nz' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'J6fH24T805tVg8Jq' 'U0jZpjvsugAOS7u8' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'RiWyerCSa8SRgwsA' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'j1ik1jglaDXTvKCW' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "wNTAhd2wrS0uPdjh", "attributes": {"dinpng5BLy8wbhMs": {}, "sAHjapIkY9Rf4wP5": {}, "7dBZNR88YbCtmKy8": {}}, "autoJoin": false, "backfillTicketID": "9zVrjfGXZnqAQUoY", "clientVersion": "1GjlIIk0iKoTTS1j", "configurationName": "02o7JjTXAQN0qdsk", "customURLGRPC": "dQV0TqI8EFnmDbxI", "deployment": "xi4YKlONk2Q5Y4Jv", "dsSource": "aizwiilatuUjjt9l", "fallbackClaimKeys": ["IMGql5ElEa9EIIlG", "cHB3CfR3ncDlwi3v", "3MFFJ1KesKoELCpo"], "inactiveTimeout": 3, "inviteTimeout": 74, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "KoxLE1Y3Dymtj3gi", "maxPlayers": 85, "minPlayers": 12, "preferredClaimKeys": ["aT5hOPjaf3H0tYig", "hU0VUfcYHJbBfAKS", "iPW3VgsZXiR1DJ7H"], "requestedRegions": ["VWqMkNSawQUWDFJv", "JBWic7UkBeIXuqDu", "AXI66bQ71w0deoV9"], "serverName": "Lx5RDA1l2XcrciYN", "storage": {"leader": {"EzvSZIPkhSgORcz5": {}, "S5BvmgBLxh4ijFnE": {}, "3Tam69qSZ7PC6f6Q": {}}}, "teams": [{"parties": [{"partyID": "kmZXElW9YfRSse6A", "userIDs": ["Az3S4czz0QKFlAVm", "VLu4AOec0z8eBeeo", "ip68J1nsv4W2OJht"]}, {"partyID": "afxMSJlHeb34sZKH", "userIDs": ["cl5LLLOexL4fZvWt", "ND2tcBFpX8lNtFEJ", "7tnkY6Mca5afj12K"]}, {"partyID": "2IzrBvvWm4udE0OX", "userIDs": ["udXgNne8kJATwlc6", "esUp6Sw1I98jeZQ7", "hfxnhLd3Knaknoed"]}], "teamID": "9DHhLOqQGhCUr6iT", "userIDs": ["rjyEgarAdNJOIG36", "I6tRbRcrEveMdAdi", "PKDUVSC00PYeDcag"]}, {"parties": [{"partyID": "ginxnFIna3yddcbs", "userIDs": ["PheTH26IUJNvYuGR", "UvpZaHCuESOiIZsM", "fB4ZH3mtgWgU4pCA"]}, {"partyID": "KxeE70CaunQNxot3", "userIDs": ["71W9G4AvQkqsGnmy", "o5JJTUVmb8GEXFTl", "EMEsFzYqwgK1Np5n"]}, {"partyID": "odqpLm7FhJBNXzAF", "userIDs": ["dO0Khqf6kiTdSGv2", "LFjAKY7CbgsWqFWZ", "X7kPBom8F9GLLTG8"]}], "teamID": "phc3n4iLoIllKlpO", "userIDs": ["2pqiXJF3WGRaoQom", "SJC4DdrKF7SUQPLG", "59e0k5ZtX6wK7PpU"]}, {"parties": [{"partyID": "lcIW32iK7MGt1ixY", "userIDs": ["5rA1WoVeJIePF8Zr", "QzP4zvtdxdbZUpd6", "FJtHJ1pyVwyKQLY6"]}, {"partyID": "FEO65Rb3z7CYLM8I", "userIDs": ["lsHqffnrfsGlfPaZ", "KBwa3Ddb60ufPpzw", "j1QGIFmlVf4jvaps"]}, {"partyID": "eE9LN9bvhOrHflIO", "userIDs": ["d6X3viLvtEk4mTIp", "UA9gxo8SV38nEhoX", "mM2W7l6jHMA2rG3n"]}], "teamID": "akopAywelu01nryE", "userIDs": ["J0NqoTow0qiOiC4j", "0iktm0ZPLkLOsp0L", "Z5njN86Hl8kUXzt6"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["d9lvccKMLhrTrcBE", "2ItBS3KtKZWe8aoF", "zAyBME74HUtipUWY"], "tieTeamsSessionLifetime": false, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"WV1qx8CzPML52faX": {}, "Ur9Sk4lq2faBcAXX": {}, "KlhvyH8paOJtxqMP": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "pcVfRwNj547fH0Xr"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'KEDpEY8VnocGAjci' --login_with_auth "Bearer foo"
session-get-game-session '0V3tBf2jnHGKXphn' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"50c9tNLDljhZ2jxL": {}, "RX3z46OCaGBeMfPl": {}, "Nos4yBRjrERHEonA": {}}, "backfillTicketID": "ZR8GmEu0q1p6QCyY", "clientVersion": "6vSkVFWdsbYuVEGV", "deployment": "xYheR3j5mNZ6vwv7", "fallbackClaimKeys": ["K8Asvt1j1Rx59hes", "NWy2NvZ85DDKDAF8", "KDsBZOuYQJ03BAHZ"], "inactiveTimeout": 93, "inviteTimeout": 4, "joinability": "INVITE_ONLY", "matchPool": "53q7akMpcmnnx6RV", "maxPlayers": 56, "minPlayers": 35, "preferredClaimKeys": ["rop9v7aZK3h65hbN", "15zfQSfQrtfF3TQN", "0OcNDLr36vzohZyj"], "requestedRegions": ["MQAg5mPYhrLTyU8O", "hgfY9JQYGF4bYXEc", "ENx9xZlAchob44lO"], "teams": [{"parties": [{"partyID": "NDDwMvgI0HlyPR7w", "userIDs": ["ZNiVsF6xG2mXEQdb", "zIVy8alncV7vWgSH", "dfo07UctPErqxyMy"]}, {"partyID": "OK06MqQBErxgjVBy", "userIDs": ["cvU4PbmRDcrg0DjQ", "jBECXvea7H1m2lJF", "RZ3ZprZ60zMjhTHe"]}, {"partyID": "h94TSenE5hCFkIf5", "userIDs": ["weqZ18MH57l2Zsrh", "90ETtYmGukz3Mnlr", "jcHp6B8Vj7rXFgDn"]}], "teamID": "DkdZ9bpjb1tdA3Qh", "userIDs": ["jCMW64f4XhIjSoTB", "2NMKtezapPr2QEPx", "3zTxBGtEJIYppuUS"]}, {"parties": [{"partyID": "sKoHw2hyd12uSE7B", "userIDs": ["Ev3aevq6iohU1cg4", "W1IS3Uv1BpWoJBaq", "dg2FHcunsS1lnaO2"]}, {"partyID": "m9vqjhbeK2qN8g6x", "userIDs": ["2PyYDo5R3hLiD5sf", "5y1JsxJNGmyt0SQD", "UDoWBZVGLlkUetzC"]}, {"partyID": "AWc9x1aMjgGim51T", "userIDs": ["107XIZRZ7tZdIs0x", "f4czdt7zqmSKxOEQ", "lVcx6GqsBq8vdhWV"]}], "teamID": "nuYLgpZehK0G2nmy", "userIDs": ["uViB9kRTcSQdTnNY", "GeAfYFG3wSkHKufB", "dS3ZOokZB4cXnAXy"]}, {"parties": [{"partyID": "uGz6LlxHv8SwyagY", "userIDs": ["vDJ3w3UNgIGj2jZt", "EYT8sIPSE1XXPzyS", "a0sZoFS6xCOWMpyh"]}, {"partyID": "9pMsQgb64ELbzDMw", "userIDs": ["yo4nIRysQdbufXjY", "nSoIFeouC2m38kXr", "DZWlGVE9sJ4NpUtK"]}, {"partyID": "p6M9I6nEwnZhsjwJ", "userIDs": ["eGwaPSDMZz95OYKi", "qaZD63xe5rruJVfL", "Gea0ZtlzUcuHAXz0"]}], "teamID": "UV31MfuGaXsAuGsZ", "userIDs": ["aSHevO0TQNEI3kfa", "bxJWWSI1ECUo1NPp", "eFhUztXDgB7n4C97"]}], "ticketIDs": ["uAPP8PATLpUpxeJl", "sBJT6Hh3OMjAjq2m", "K8lbSEEelxnb5QxW"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 69}' 'gt65X4N1LQZmB61J' --login_with_auth "Bearer foo"
session-delete-game-session 'MdtwCVUrYQue84dw' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"mbwFEnAZaWsQJtRY": {}, "oagRJK5PX9UcOvhP": {}, "yE11TRT2SKseoe8V": {}}, "backfillTicketID": "Lie0LBa36KNzjf00", "clientVersion": "5CXNGehQ2aTjTDfK", "deployment": "FDXC7eGL5YhJDWh9", "fallbackClaimKeys": ["YWqc0qgV6d9yOfIM", "Lds2DbPcaoMdtRLT", "mSvTkQQgB7exYvmH"], "inactiveTimeout": 79, "inviteTimeout": 15, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "XbWhbwPwToC6knjV", "maxPlayers": 47, "minPlayers": 12, "preferredClaimKeys": ["VnzaqSfJiQFC2gXo", "da0kg16yUSpSOAjH", "JWwfCjYwWkLob9gK"], "requestedRegions": ["Lqs2nEZhpByfHZin", "xNfgPAwkMBsznlBU", "qnLT4AbGptKaWNvP"], "teams": [{"parties": [{"partyID": "bpg7yrRvXfZ6rvgv", "userIDs": ["EY3Hht1SwqTsKKKo", "37NHDOQe91Ps3ztU", "IV0dS6hIH9c4Vfky"]}, {"partyID": "rwpuXxbaERbfgPmi", "userIDs": ["0eHkt1mr9EOIFg0d", "nWIYN2NVL70Iw157", "g00jr9b8MuYmmeKT"]}, {"partyID": "mBNvGYxEQdf3ewoG", "userIDs": ["GoY7xmFNAmjDDCvs", "78mcMdiS76YApGJ9", "ufwLYkqIgLuZS6hs"]}], "teamID": "QryiEtOAbpeUNf26", "userIDs": ["UqkCfgCUYBn2xaOB", "dPF0JmX8qwU1cTuH", "HPB5S3DvPRCzBrVU"]}, {"parties": [{"partyID": "xmDOj3cvRFaTC11W", "userIDs": ["0TGTCm4fZWuk6pQx", "DQpKqxLGeMvr9Tsv", "cMQ7dBsaIecRxIsZ"]}, {"partyID": "vD6rmzVr5XT1Nxw0", "userIDs": ["v1dMQ9Rrbk6C2cVW", "f6ttvbU1PO6ApCD2", "VXidT7w0Oc15N8WX"]}, {"partyID": "BPp17PAewqSm5x3B", "userIDs": ["4t7WQnp8jXZedgt5", "cyNe27HLtwtVOaxg", "P6Jbct8puMybYGxD"]}], "teamID": "9IPmmsLmu3kaPj0O", "userIDs": ["4zd8Tb7cUNGPTBxi", "FFCrn7djjs69FTFV", "GUVhvKhJCmeisql1"]}, {"parties": [{"partyID": "4mUHVbMPimNhcZsU", "userIDs": ["3VAdMDcb4qlkiFAa", "mqvZI2KwjqPBiWXa", "de41s3rH34mB2yPl"]}, {"partyID": "RpWjmHZAAvKTH8Mu", "userIDs": ["qIg0CzkguwuJCW7E", "EFB67AODbi9BzupB", "sFpYc77GtRUcCFeY"]}, {"partyID": "5g4XgBsbfzqxBPNe", "userIDs": ["8ae1Il4aAtEbu4Ij", "GdqthRxTjQ7gkZEY", "8rG0q0Q2Qd2JzRbk"]}], "teamID": "F2I03dIjvBbA6bfb", "userIDs": ["YaJCJjfk2TUvn95F", "hO7VW3mbDVMDu87t", "0ldWf7iSGIiKFtWt"]}], "ticketIDs": ["n4Yr2svKM6pqLGZ0", "TBujELAUK6mQ5iZg", "bwwm5iGzXtcknrgi"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 75}' 'kZwqjYLfTiCO1NDB' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "vQvRPnAz4VzW0Cpo"}' 'BCbyJsF5IjF1c0W3' --login_with_auth "Bearer foo"
session-game-session-generate-code '38HS6CBgVRyihYNZ' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code '84CVhziXV8HwSmvc' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"vcDKF19yVRafCjOu": "SYht83AdvBaagTiR", "J8daGTVX3Bb7jlz5": "IfHgKjI9mwJSrN8j", "kIykR2zbaI6PD7fE": "scShnGUGUtV9GJ27"}, "platformID": "9GDbLNwjm3FK0nnX", "userID": "2poMfZ1hDHtbh4Ht"}' 'MlFgvh2Dp2SoiIPp' --login_with_auth "Bearer foo"
session-join-game-session '1yvfAHS0VgLu11A3' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "HTovFi4tPAGfleyC"}' 'A6jEtcqsnzoVILjk' --login_with_auth "Bearer foo"
session-leave-game-session 'wW61duF87aUyrdt4' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'XSpWBAetsanzqP8o' 'xfrtbECD1CYPwaiB' --login_with_auth "Bearer foo"
session-public-game-session-reject 'AxfYL8Avt70ZUT2f' --login_with_auth "Bearer foo"
session-get-session-server-secret 'Sk3LL0calqxEewuG' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'S469k2hG0WKt4sUm' 'anYxM0UHZVNYzGMN' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "IpWoSLkUrfuf4U3W"}' --login_with_auth "Bearer foo"
session-public-get-party 'eYeA9t2ENKKWrFtH' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"Ii1CMgKAOG5iDcCR": {}, "5PbCvDLil8wj9cKM": {}, "3Ar6MF35hCER4nGm": {}}, "inactiveTimeout": 99, "inviteTimeout": 81, "joinability": "INVITE_ONLY", "maxPlayers": 13, "minPlayers": 73, "type": "P2P", "version": 23}' 'JfHlJl4tHGa4XfZc' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"d9CVnGqMX9FieeEs": {}, "sWEUl07bhwntCVqi": {}, "YOJf5KwMZQjzvjSo": {}}, "inactiveTimeout": 52, "inviteTimeout": 0, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 67, "minPlayers": 85, "type": "NONE", "version": 66}' 'TRDl0zp9CzHFwink' --login_with_auth "Bearer foo"
session-public-generate-party-code 'BNi4gvqgl6TZ9TGV' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'Pmv34h6T7Esufmfx' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"KYB4LM6H6QXmpZ9X": "3fUSR1l9xLPBsmAU", "rD9L1IiD6MlcEPhM": "DFzjHZ3sIhzOx2CX", "KlvIomU3pIxM9n8D": "2eLMe3lt9qfx2UDc"}, "platformID": "gVE7L9FK6e0MrPc4", "userID": "vtxk9hVKlG56HlzG"}' 'r7XjdyRJunZPkp6c' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "cIBnWyPw8mj7gyQ7"}' 'XdIszGRj46COPipH' --login_with_auth "Bearer foo"
session-public-read-party-session-storage '1MWVTHG0qHJCWEfO' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"JpZm9yEYWNGMy2pg": {}, "SGSUOK68eqGJtWf1": {}, "Ybgg8rdwY9bmrvHm": {}}' 'O07KNqX9LM2IwEsd' 'OGBXBwnzDX8v3xgC' --login_with_auth "Bearer foo"
session-public-party-join '1Ge9PdbTTAJ2Gp1r' --login_with_auth "Bearer foo"
session-public-party-leave '0sVZ6LJAOddIL2l3' --login_with_auth "Bearer foo"
session-public-party-reject 'hPjNDKv2LWfXqjr8' --login_with_auth "Bearer foo"
session-public-party-cancel 'fS79En3wYowBdkaZ' '3y6i38XQjLDRqkpi' --login_with_auth "Bearer foo"
session-public-party-kick 'FK5BtiQ272Uo9UBJ' 'WodpdwsX1jorcyR0' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"x3YiHF8ITGPRQBCg": {}, "Is1Q2lzxl0yF5m77": {}, "TTh4gUoj8u2WRcLi": {}}, "configurationName": "EtzVlnkflfn7pHY4", "inactiveTimeout": 64, "inviteTimeout": 19, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 8, "members": [{"ID": "RWenURH48aJuALEc", "PlatformID": "SqcE15u6D31DjOsr", "PlatformUserID": "s3CUYATdqnQGbqiq"}, {"ID": "OkNeATj7eGjodd7C", "PlatformID": "cJUrI6MAugK5kypN", "PlatformUserID": "rp2nFe9FmN86sK5L"}, {"ID": "Oq4ft5jGcMICPUYn", "PlatformID": "fG6jl9U4jReteIMg", "PlatformUserID": "zISomCsodJrhQW41"}], "minPlayers": 33, "textChat": true, "type": "DS"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"pCZbt3Uta5I0uGcL": {}, "1koyHjCH5olYLETR": {}, "pABAmO2EGvJ4UMS9": {}}' '3yOxNInDByhnoluO' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"6ti0QP2ssiJ66OzO": {}, "j84O6tgohjtC7bzj": {}, "PpucddXJ5zifF8y9": {}}' '59anrNSleywHbHig' '6IKWVZ77KeRWdECa' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["FGzfZ2hxcJ2Fnemn", "7M23SzUo4hNBDh9Z", "FP1OW0nXOErQPS4V"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "4Mj7mulP4tQ6R1Oq", "data": {"KVOTniBgLsNhdgQ0": {}, "JWZjNRSzOTqcVNX3": {}, "ahvxw9gwwhTnjN6w": {}}, "platforms": [{"name": "KZGW4y3f0R9s2knd", "userID": "hhZhwAiLsZs4pmLD"}, {"name": "IQch4IjDq9aT3qZy", "userID": "I0rYsWucAkXsVJbX"}, {"name": "i7eRZa7WwIc895Im", "userID": "qK6tVsaUq3stUh5J"}], "roles": ["5Z9GiBiSAylX5cS0", "IeHpWCugmfOL0QQp", "xsuD8PGqku59eFJr"], "simultaneousPlatform": "OXyDYz9vMUOPG0iH"}' --login_with_auth "Bearer foo"
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
echo "1..94"

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
    '{"logLevel": "info"}' \
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
    '{"metricExcludedNamespaces": ["cTglbU86FyOjApNH", "BVfNOURcjY3YYT9o", "TynmfIuBWgJTNFfM"], "regionRetryMapping": {"8M0IW4oe8KDgy0xZ": ["fAcNg14Ws8TIP1LK", "iFQoLDvumfqrgSfn", "x2h61X9dN1MGRXBJ"], "6mVV7JS9qjNLwvI8": ["JdiY3RRiLilmOGF6", "dLLIeIVIjMcdlbdR", "XTGIrdNL5gJPqTAj"], "gqaTHf1ANTJ9Yk99": ["7XkGOdC6ItxDT8p4", "n4XCFkD1AJLCwszb", "ZxuHSgDOK8bjoF7b"]}, "regionURLMapping": ["L2635KbtZTGJpqgl", "2IzNXGTuQPIDpor7", "t1aJLNNz6QIVC9Mf"], "testGameMode": "uc8VOsnmnlVljdWY", "testRegionURLMapping": ["mELe74p38vumnxAn", "YBTxaTIz0jcgDI8P", "kz96vd80msqIm5bu"], "testTargetUserIDs": ["fnBqrpLeqhwVhjnn", "jKMEmtbiWsAQHbMr", "KYi0Zxs5SWCqZXHL"]}' \
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
    '{"durationDays": 76}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 0}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 29, "PSNSupportedPlatforms": ["QTQT95pFJUAJsyAf", "eKOufV4f15NohXu6", "opxQGRt6PqlkL0di"], "SessionTitle": "RhLC10ih2EQfY3XC", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "2xaNfmn8Onb1a9gM", "XboxServiceConfigID": "z0F2UBRmMhAbUWmF", "XboxSessionTemplateName": "hdYLWzMuv3zkUY0n", "XboxTitleID": "0BAZkwbYkBLyO6A0", "localizedSessionName": {"FqfhnaB3YxKNdOTa": {}, "cCcJfIfXshuLUk5W": {}, "dpxjZx5noXPhPUTK": {}}}, "PSNBaseUrl": "bonoucNmzwOZOK56", "amsClaimTimeoutMinutes": 38, "appName": "izac7Ge6zKJdlt7r", "asyncProcessDSRequest": {"async": false, "timeout": 73}, "attributes": {"F5RaJwvkWVco2LTo": {}, "5ijlvDF8qBWCQ9dL": {}, "WYyS8zdhMeBXH8x6": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "9lhbvuQdW2jwKUck", "customURLGRPC": "c794ryY91lX8DD4M", "deployment": "YXlrJ81lHvv9rqvE", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "8YmVjAkO3HKsEp6K", "enableSecret": false, "fallbackClaimKeys": ["TnOK7xAvM7tuL81l", "sR7xxSVp3Gd2TK0H", "zYviTgYmx82JVBRL"], "grpcSessionConfig": {"appName": "PZ6Iz8tne5dbguBF", "customURL": "6Gsvvdl8jHz9x7XZ", "functionFlag": 72}, "immutableStorage": false, "inactiveTimeout": 40, "inviteTimeout": 96, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 30, "manualRejoin": true, "maxActiveSessions": 43, "maxPlayers": 22, "minPlayers": 47, "name": "OLaZaMphKCqTq3EV", "partyCodeLength": 16, "persistent": false, "preferredClaimKeys": ["KgYazujsmSmylT1Y", "txIq73aMb48jISd9", "7KORRhxSWLWLNfHR"], "requestedRegions": ["D3V15QaGGL46LuxJ", "F3sbeqWBdQuWfgBA", "Kx27MSBqabUXOGkk"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 52, "type": "DS"}' \
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
    'zXZj08a6K1XRVfri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 73, "PSNSupportedPlatforms": ["ZBJZkDnEiyfa2Lrn", "pZxNnLRH36bqS2oF", "Y76PU1AziBOHEAj1"], "SessionTitle": "cT3u6Zc2FbrTFznT", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "DIwZIRWf6T3by2kY", "XboxServiceConfigID": "SCdnFKLc0xcTjqjd", "XboxSessionTemplateName": "cEfU61OJYMnW49rW", "XboxTitleID": "ynp1ck1vT90C6o86", "localizedSessionName": {"cSRL9cgbUmulhe98": {}, "oaFKlQicdrxVhrtw": {}, "Sd9QWVMYz7TU1Tsx": {}}}, "PSNBaseUrl": "sChSclSkb5aBi9K9", "amsClaimTimeoutMinutes": 51, "appName": "lKNKoXa0dgx1JgjC", "asyncProcessDSRequest": {"async": false, "timeout": 46}, "attributes": {"da3YhtQxpCYME6x2": {}, "1pdX2QSPAd9sxoLn": {}, "WGP1PafIjLX8ce0K": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "NN7Ycl2JfmQplvGj", "customURLGRPC": "VQ4aebjfgGu472oW", "deployment": "JlfglLM4xjfkNL4l", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "aGfsD1cfswmeFpvt", "enableSecret": true, "fallbackClaimKeys": ["Y5ZPkv90lyKSTWLx", "SFZ0LpupEi5DbkVs", "3qFTi1t530Wj1Wfz"], "grpcSessionConfig": {"appName": "Ivc3VlSXrA3XUGud", "customURL": "4tVjmxEf4XvVhFJT", "functionFlag": 48}, "immutableStorage": true, "inactiveTimeout": 64, "inviteTimeout": 56, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 97, "manualRejoin": false, "maxActiveSessions": 94, "maxPlayers": 57, "minPlayers": 82, "name": "g9x4unq3eOMHIKeT", "partyCodeLength": 49, "persistent": true, "preferredClaimKeys": ["g7q6PHEaqbzHvDDl", "1jiLw3XMGBA6JXDp", "A1tIC45C0oaGouFu"], "requestedRegions": ["4hXONgUwJnUpryDe", "RcpUvlrw2MwC1uuo", "kpaIjL0Vxe5n9Lx3"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 66, "type": "P2P"}' \
    'gxOgvDc7xMrRKvw8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'ISP2WKmCRRXBxlal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'CHtWlKxLpS8fLWoQ' \
    '5nuJhatQPxR7dvBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "C5zgOKLTDmHe8c1e"}' \
    'J9sde7Ryt4udIv22' \
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
    '{"M18uux9xBomQFPFW": {}, "y5cwNPI6aFo0MVwD": {}, "ZCIXFNEL3uWVRz3V": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["7YbJM3bNLWHAbCZi", "xe2cQ6O30lpzcBQM", "AEcNcJqrKxnMzSYo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'IeCEKZUTz3GvCAZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "j24acYHbrryHB6GO", "deployment": "9zP3FaepA3b3YJ9n", "description": "JM6vtT27xv85K5MU", "ip": "2qmbeqaVemINdClp", "port": 65, "region": "EuWBSO2jJepUnEEg", "serverId": "ja2mIE2kLTnJwc5X", "source": "mkCuL5W4tKt6G3j9", "status": "LYdG7xVPqBqe9RDQ"}' \
    'MBSYAFLqp8PF5hCc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'oukWpnbz4ys7j6lx' \
    'uU3u2HEG0qfKegvF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'TD1sPykS8YLmwtYg' \
    'WGcA0h4G1LZ1HaX5' \
    'UBMbsF44VTsLDRzd' \
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
    '{"ids": ["q22cbnyK3ggFDh2k", "aZP7pnnVfxPwc259", "HF9ejHaILQruAuYy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'JLYGqMv824ouSgkp' \
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
    '{"psn": {"clientId": "K70uJmUL0uzElixc", "clientSecret": "023dIvDiA0tQWlHw", "scope": "BcTtztx3VAl6tXFb"}}' \
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

#- 41 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetRecentPlayer' test.out

#- 42 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetRecentTeamPlayer' test.out

#- 43 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'WcbcbGWmKgE8CZ4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'ELr5lraa5v5P5Cj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'hgFsqHC9h5JPiMEt' \
    'gKuiGTYgwWv5XldL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'AdminReadUserSessionStorage' test.out

#- 46 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AdminQueryPlayerAttributes' test.out

#- 47 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    '6rOVGcRAn51rVAQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'xp4qTB54mKA3V9DK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "lCeZ7mLYsHooOIax", "attributes": {"Ipb1cIOJPS3lJ80Y": {}, "J41U4ooQ980ywmg1": {}, "pWpWit1QC7FKe0fn": {}}, "autoJoin": true, "backfillTicketID": "UlmU1unGKM0tgfeW", "clientVersion": "y47bbwMI4gGmvK9g", "configurationName": "W596FwBNrFXt3TAu", "customURLGRPC": "KBwBcD12ae6r3hHw", "deployment": "ya4NpdOzg3hr6ucH", "dsSource": "f7dbh2iKNUl0qJqz", "fallbackClaimKeys": ["oKMRMG541PAiNjUL", "sx4SnKNXLMUaDSww", "QlnNRZJHBSB4fZWE"], "inactiveTimeout": 64, "inviteTimeout": 21, "joinability": "INVITE_ONLY", "matchPool": "Vu4S95mj8YRvae4f", "maxPlayers": 81, "minPlayers": 24, "preferredClaimKeys": ["7WNMYIfcDKbLu8pn", "K34oA1keYXJvtggD", "dXjbdjMBahFZZGMT"], "requestedRegions": ["cqnWrIprOv0BJ9Sg", "l7H1sdH2RIJz1eI7", "Q5pu9PutLf6IrvZo"], "serverName": "BGQbO4S3rURGWUzP", "storage": {"leader": {"AE6SdV4D5jftRl9r": {}, "ZmtQUvro8TWwXWsz": {}, "9TVmdMKEohKzuMYD": {}}}, "teams": [{"parties": [{"partyID": "UTLBeCidXjuGgx8n", "userIDs": ["cXejmeZtzT0qj0lt", "sqfiZrthVvyX0OCK", "DJE3RMUddwSSgxCu"]}, {"partyID": "8zru1DhGAYOHR5BW", "userIDs": ["a9VzIkaQEl1iUPro", "NB6hI6IpGcToWgFv", "dRhG9NwV3zDuqVlV"]}, {"partyID": "TypcYPK8IxrSZuxW", "userIDs": ["l0Je4fJIyFAm3DQh", "t4JwnPS2urJqerob", "WMZGVL5KLTxahWlS"]}], "teamID": "6XdBaKSLCgOOPXM6", "userIDs": ["XTUh2dJ90yqHDNac", "l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG"]}, {"parties": [{"partyID": "ZGwiVj7eDTaka9AB", "userIDs": ["fX1IByPEOuPhGspR", "i3bhPQvBBJI5Jxyt", "pcubN4AUUPFPscZs"]}, {"partyID": "XeJOD4DMtqfIGiGJ", "userIDs": ["ovgWSRxZ8N4UQ2fg", "3V1o2x0hL5DuBDqM", "yIAzWze94MEdJFAy"]}, {"partyID": "2JTllJkRGB8jqJEd", "userIDs": ["6eqqsBVyONV0JRto", "zI0jpliCFQ6WgJpG", "Pigdc5VyC4qvWjVa"]}], "teamID": "c1cQvSxgTNIUzxDg", "userIDs": ["BlIbuzm7DzJ20NFR", "JIhFXR2dYprPmbpu", "ptECGd5cdXC2Sesc"]}, {"parties": [{"partyID": "6y68whNBYl9iCqfW", "userIDs": ["6rqGOQny4ij4ysYP", "onb59gQffkNOmubx", "EJr2qEAuJbpZSrcb"]}, {"partyID": "c4LWfKaY5c1tP5TD", "userIDs": ["uI5f6m4KC07CnsZe", "32hqEcB1ExYMBb3c", "kvoaJYdMqGegcg3e"]}, {"partyID": "RvBZXN3cjIXmFWRJ", "userIDs": ["nj8xN7HDPTUEDPN1", "Kb4UTPWDXTSb55g8", "LSTs7Nf95lGlPrf6"]}], "teamID": "obIdnI6Ag7eUYcYJ", "userIDs": ["4QzXCmqr6gmPGaHP", "5SVPvRLiDi0mNHb6", "Lx8eq8SGNwEQO8dY"]}], "textChat": true, "textChatMode": "NONE", "ticketIDs": ["BSYvJBwb6CjZUMRf", "2VJetWsokvx3BHuT", "Eczr9KjQ3ttz8MTB"], "tieTeamsSessionLifetime": true, "type": "DS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"1xk9IyssSA8nP5PQ": {}, "jpzk2Tb7iYdmNZWo": {}, "srsVBPZ64j0HUONs": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "cofwYLQcDvkaEIIP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'oJT83zEGXmVBZLyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'H9J7BoysmaORLkP5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"hc2Fh04JTsqDTynC": {}, "ewqJligLlRxOelKy": {}, "kICRxF6HtlER2txs": {}}, "backfillTicketID": "4qrNARATn6KXOutl", "clientVersion": "YBbLhL8KXx25FZfQ", "deployment": "IodVBqQsBpCJBIXL", "fallbackClaimKeys": ["GYcwWVRK6UKk5ozr", "XA4HZHNyq9odanhR", "1Zrm3thUvV87yfky"], "inactiveTimeout": 5, "inviteTimeout": 22, "joinability": "INVITE_ONLY", "matchPool": "ug48TgfNu0rqXUOy", "maxPlayers": 94, "minPlayers": 32, "preferredClaimKeys": ["oLPIREGIKlJt3EP9", "kKwkENQ8VOHGwbAD", "MfuOmh0lciRhVZ2D"], "requestedRegions": ["eoODXMzLSrzoiBnY", "i5UWs3tYlYeMoCim", "JySocRvUWDOrFZKP"], "teams": [{"parties": [{"partyID": "NoN9AWtLK9TFgi9j", "userIDs": ["2XMh9WpifqjNjLOt", "NQts2yxf6MLZJ2jZ", "fZbpTJezzriCDWXT"]}, {"partyID": "59SRu0YqUxKDc84O", "userIDs": ["MIzvTScdbKBsAyJM", "z4ILNDvhB4Eoes9a", "6XaJeRbzTPwD3jxF"]}, {"partyID": "7vxRUY0ilrNoFT98", "userIDs": ["SgtJd4Z5f8nfaKqd", "ZFLbZEHxsDxeR6d7", "r1SQw80JfMpPrSqY"]}], "teamID": "ypRUnq5o4ETeCUYG", "userIDs": ["9ccTt7Wxw8OQ13t3", "uTw6zQuoZcXQpoTO", "xe8y1jorNsg9ZKYC"]}, {"parties": [{"partyID": "KoISyXtHzoWGdYoh", "userIDs": ["xMp3uOQIybqWfG9B", "J6FVKlbYHtbPtaxv", "agSlpGgVTF6VeDAP"]}, {"partyID": "OGBwweyFfXEOEAEt", "userIDs": ["bag82KgBgyCd5vjk", "fz3eR4DtNp129hzB", "w3xLUcCEt0DzmkJq"]}, {"partyID": "1sml5bYt76BNsi4g", "userIDs": ["iR9434WpKKdzxouf", "CNlFoOcWQQy4bjmQ", "eEweoBHTdwAk7ZQn"]}], "teamID": "bqY1cQwVEtAr5kKK", "userIDs": ["Ao9MM2Cqm84jVi9k", "IpqgrzpUkNOBWydX", "V0Fi02aFr8CDapjw"]}, {"parties": [{"partyID": "NOl4k8rVNrm8drv8", "userIDs": ["QD2JOe2Ntz7EFvow", "PgIGuetxFMqXCQMA", "qQ2ZRGzNtrThFa9X"]}, {"partyID": "U8mosluiHZJ7O8sA", "userIDs": ["Q32wj9uaDzsr9xYi", "WRuuzQJiLc1eI9w3", "JEhxPGbEk7s7gw07"]}, {"partyID": "FlounC3vJKBC7Swg", "userIDs": ["oViPeIB4Ehy0Y5aS", "JVDginxAM77eY9C1", "4FbfiI2NPvl1kCY5"]}], "teamID": "bEokxXxkWZbjf7GZ", "userIDs": ["xaossQmjo69wohJF", "yTNk5FGUPhR4LEZv", "z3EjFR7996Ug5m4a"]}], "ticketIDs": ["xDV5uTcYsoahUrEL", "Q1btjJOqQMgZWAU6", "E92nHJzvw7tnYtGf"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 69}' \
    'EJyjBu4EzwRjD7jm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'QJeFPghqamSc5y0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"48eT7Mluexk87b9Z": {}, "5BTsEA3EdmW8saab": {}, "P4xRowfNojzPXI2v": {}}, "backfillTicketID": "0prR3OEey0MkZwS6", "clientVersion": "TYwNN3UYhic03qGE", "deployment": "g5fNzBVrjo3g8CfR", "fallbackClaimKeys": ["wtyl1HeT7VEPgG40", "QyXzsOzgck078Igh", "oQBp2mWAOYksczxB"], "inactiveTimeout": 92, "inviteTimeout": 79, "joinability": "CLOSED", "matchPool": "OBCa2vWadLmQtYKm", "maxPlayers": 63, "minPlayers": 87, "preferredClaimKeys": ["MzicbuL2S3RiW8dL", "TCBfGUdVEdvdQL7s", "VwcZ2PofaJoSqtrE"], "requestedRegions": ["OqxH46fRTSZoDdT0", "fefo74eg3Nt2c0r4", "GqF0NHglOVuNZ9Lz"], "teams": [{"parties": [{"partyID": "NeJnBurh54CWbYb0", "userIDs": ["Pebyt8b4DGscjwri", "zsFUgYwbaLvqvQ2N", "bmDITuymTBjn3d2s"]}, {"partyID": "FzMS3QaVjZF7Ax61", "userIDs": ["15Kg9U8vrQJXQxoI", "bVi2CLEk277Ivjj1", "A647XQ3koaAfZIim"]}, {"partyID": "0sFPm1YN27bojDVa", "userIDs": ["ZLpx4kEWYkO6KrKU", "MhJrASBh61hmWKSS", "rF35anDGvur19V18"]}], "teamID": "oIrUKXttgAI2QdWJ", "userIDs": ["FLmoPEgd8EMspOs8", "nkic9gj5vyUMAAmI", "HYbsxG5N066FXb88"]}, {"parties": [{"partyID": "SbLOa21DiSFsm0XX", "userIDs": ["QJWszvTQEuALzDNp", "1SZ58aDllwzTRHak", "1MXxj7Esrg7900nm"]}, {"partyID": "l5BidsK9dCEzhVnO", "userIDs": ["v0PQbVIaKiHfoeor", "Y7A1otGFyv2SMjbE", "r50qGdCZIc6EFqBK"]}, {"partyID": "xbS7Q2OgRucL1jwR", "userIDs": ["XzfjDZZBmOau6sym", "e06c6SKLc2mEC3IX", "l5XCbkOfHaGr5kda"]}], "teamID": "zlypvt6lSLfU7HBy", "userIDs": ["GXPMqxj4hBgVY3YA", "xZLKbcOdyjqf6Q4o", "iwoJcaRMEb15LBlT"]}, {"parties": [{"partyID": "Vufc5ZyODR2NVyn4", "userIDs": ["PRqf3eRbZqBAoKGc", "VCdMiSNV4qBrt1kc", "LmRv6EJtl5xWnsb8"]}, {"partyID": "oWq94RImNWVIJnhh", "userIDs": ["wFDV1VitaomvWTzd", "sW4N70wYS4Kj7Yi2", "VvoQNW8Yc481dYdv"]}, {"partyID": "GxJAMDRA1LF7jdWl", "userIDs": ["ekFwO94VBCV9qJhW", "va2FPBujX0geYCpG", "JM4sqsPNJMiZXXOF"]}], "teamID": "wmGWAvNF0Z0GkwxU", "userIDs": ["NYyNwGiKrknH0Y5m", "rQgLC6D2qsFiQHgl", "UQMZi5WjMZfOadpg"]}], "ticketIDs": ["egCUjTdi1Ehr8Otq", "pNJ9R8TuNy4ejmVA", "3vMCsGyPd12B8QNU"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 14}' \
    'UZdhtnKu9oTc8pVk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "iyGsj5JdXzRxfNEj"}' \
    'UMTs8WIObJBTsvsw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '76uISRX0bKVoWtoU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'W1P7ocuBAldDSUS7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"Haa6unq1yQOSRvyi": "LBRVtIDi2piIQFVm", "zMidw70KSahpYZdK": "ZRyR9AX7JjxvNZhM", "84DiZk6ySrB9SVFc": "tW7YS0OkL78XeEAt"}, "platformID": "ALFI3v8yha4pd5A7", "userID": "MYcpBD6lKNb8RxvN"}' \
    '2u5J7baOeLH19fqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'wNbNe1ffYRtIvQaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "yevWYtZjK6J29v8M"}' \
    'pBSpo3AKRmnJkzJH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'AckUyBksYQfDm0RN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'Fwiz70tRVLMlHi8i' \
    '9gOVqajUWrgEsWDt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'aKzn8dZwnnGeZsZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'gbPzPFbrOMZMgWkF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'N7Tpkx6GcfyOg6ZU' \
    'rrp9ubg9mndW2JKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "QafUs2bxYztOEyVb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'KIf1ZbzgUwd8DHoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"QykmXHYmkRlg7gYs": {}, "6unPYQ9jNQN1di1l": {}, "dhOh6HvjnYuV7NfC": {}}, "inactiveTimeout": 38, "inviteTimeout": 53, "joinability": "FRIENDS_OF_LEADER", "maxPlayers": 64, "minPlayers": 84, "type": "DS", "version": 60}' \
    'z0F36piDYXeHZ7FH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"ls3nyvconqbHQqKL": {}, "QKe3xmj6s0GqsWnc": {}, "p5LrqbiKudv9z75S": {}}, "inactiveTimeout": 53, "inviteTimeout": 26, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 87, "minPlayers": 58, "type": "P2P", "version": 97}' \
    'QhO9IKBXDFQfXFD5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '8sG6uDhFYlrzJBYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'eMuJfQecutjS029B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"iJWOG1m7MKclr5ig": "jNTVItrH2X78hxJg", "aVfw5Vnyq8OzTE89": "WDNoMcOmbfJrCJQI", "j1haAosKglqaCXE9": "ytpIO8btO3OwNEGS"}, "platformID": "W5TaW4to7QCY2NGG", "userID": "vi9kg3rMIzNmhJTN"}' \
    'QjKlwjfJ3TJ2xVpg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "e70WsLfgbZieRvJI"}' \
    '5sT9DH3DfLCv8q4T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'hmq09bBgPAYxrBE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"jlnTgtgW33wDwD9R": {}, "KvQX4yFQFdrRoM6F": {}, "oqCYw7AlxO6qdFpc": {}}' \
    '71sSck3ggZWJlSlC' \
    'QMDji329PfVrvMEP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'tpsSNcpK1QkB2Sy8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'Ww79LVeVskqeUB7R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'SayqGFguhh3bvadR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'thdbVApebRA09rW8' \
    'i8krFWJhe03coRFo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'k5d3AyGrZO8GuoXN' \
    'SoVEBG7VbBPUWipz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"9C05YabFX4FCK5uc": {}, "TFsAFzaO3yJpA3KM": {}, "xBlrRytER1qdTelF": {}}, "configurationName": "AadM9y66Drf4SSGG", "inactiveTimeout": 39, "inviteTimeout": 59, "joinability": "OPEN", "maxPlayers": 28, "members": [{"ID": "iBKohow3kKoaP1K4", "PlatformID": "CDuH1mMIfOCDyVAH", "PlatformUserID": "rHncR5dShqiBUI9e"}, {"ID": "sSsXegSEhrPpK2q8", "PlatformID": "kxR4BuEksS2A9VOA", "PlatformUserID": "8H9VeHv0L2Acm960"}, {"ID": "EYQEuGJVl8xs1WId", "PlatformID": "9WlalqshF9Rh2o7G", "PlatformUserID": "CQGPCxwEdkyuT3Mg"}], "minPlayers": 51, "textChat": false, "type": "DS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicCreateParty' test.out

#- 85 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicGetRecentPlayer' test.out

#- 86 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentTeamPlayer' test.out

#- 87 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"lpDl5HsuracO5Mnj": {}, "nxD1OXkxShFVQTRe": {}, "kLfjmy8zosRCRgVw": {}}' \
    'brQKmb01yA7U7dGM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"jupZkZQY8CNyT4k3": {}, "DIbfT22G5NpE130Y": {}, "WSgxpKWtdtdtVW9a": {}}' \
    'nENmxb9e7vXZV3ig' \
    '8Jg5VByeI3ycMcYY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["BixKJXCISQdwec1m", "8BusV9tUh74KVo6X", "qjz2xUKLNWSmYyVv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 90 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicGetPlayerAttributes' test.out

#- 91 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "iJssShBKsQjXvfQg", "data": {"QDt6ce8NDMErA82F": {}, "rR1GSogkewIzTOqK": {}, "kcjRh3l2gAJOTCbx": {}}, "platforms": [{"name": "7J3gNLIlTk3Bpclr", "userID": "k4hIRn0znIKzAEAH"}, {"name": "QpBOgHEP5l94s7Cb", "userID": "IJ7eHnVWOboMkyB7"}, {"name": "FTexsOZ0b2p3b63K", "userID": "rcwIcXMhGy83Xit6"}], "roles": ["boOLGCcg16DqwdQP", "Q9HkSSV8e1MgTTLS", "2FgarY903INGIyEf"], "simultaneousPlatform": "RBEj7qms9AGQExPh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicStorePlayerAttributes' test.out

#- 92 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicDeletePlayerAttributes' test.out

#- 93 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicQueryMyGameSessions' test.out

#- 94 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
