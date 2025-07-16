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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "localizedSessionName": {"WytLPziZMdjxcBZu": {}, "fQxGiHPllG4cYEzf": {}, "TD1ZBm3MqHcUmLZZ": {}}}, "PSNBaseUrl": "bSqb8RwNmn9HrNQy", "amsClaimTimeoutMinutes": 24, "appName": "uZAAiE0mit9RGCCH", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"qwGyzzWi9gwQYv7t": {}, "1o7TTr1DmrhZv15T": {}, "7quIOvBMcaYmvCkG": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "cHyCUEXlAvxJMdal", "customURLGRPC": "wSyliWMNW5NyLu0M", "deployment": "3VHh2EI8JlDbPWbQ", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "dlgdWyOtXi3choQr", "enableSecret": false, "fallbackClaimKeys": ["68cmDc3fxU8MyKrQ", "pM4hkkK6KKXNB3Gv", "0IqmF51TkhjYnaq6"], "grpcSessionConfig": {"appName": "foWvXa3bMrXsDr6k", "customURL": "ILsSSyDdmykmoPYg", "functionFlag": 4}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 18, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 29, "manualRejoin": true, "maxActiveSessions": 76, "maxPlayers": 79, "minPlayers": 30, "name": "Nqq98SjTvhZNkSQ7", "persistent": true, "preferredClaimKeys": ["X3ateEKDpADz1x3p", "oD3Qgb3boLQQ1MzH", "7Qm8bwbmXgdAPh1E"], "requestedRegions": ["ThG96gAFKK2WDgCc", "xvONZm3EeERmDnye", "FoF7VSZ6pf3vneSD"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 14, "type": "DS"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'xtu7LQRENjEEztx1' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["PROMOTE_TO_LEADER", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 91, "PSNSupportedPlatforms": ["Sck0ZHn5GI39YBHq", "aTHeKtW18iGeUlc9", "d9sogWa24CKNS0Gq"], "SessionTitle": "VvUfHQvsHXNUNe4m", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "go5QB65lSAiYnNjk", "XboxServiceConfigID": "fZrQvGgbLdLsFzHk", "XboxSessionTemplateName": "BMr1yrOMlNFSrUEi", "XboxTitleID": "rnjX9fDmIbeZxzfT", "localizedSessionName": {"cyiuATus9hsfpFDc": {}, "SDG8aMVGLiBNrDjq": {}, "oxcwgGLXpUL4pp2n": {}}}, "PSNBaseUrl": "cYAHdNzDmeIP6rOv", "amsClaimTimeoutMinutes": 61, "appName": "cJcHm3SZLxoRDFuu", "asyncProcessDSRequest": {"async": true, "timeout": 89}, "attributes": {"ySj29a9LJE8HoRS1": {}, "X2PFAAMwzHPxB1Us": {}, "kYs4Yw20DOqOBSC2": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "RuPMMWH8Yb33T5UB", "customURLGRPC": "JCjfcnLRfxeCSz9W", "deployment": "Ei8KlloeH0JT1ydu", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "vQR3biBfsu4jmsRE", "enableSecret": true, "fallbackClaimKeys": ["zOXQAk4mqrxzTtuL", "l4XlbGL8QOxtjzm8", "y2wNhmwoYZyI4EFZ"], "grpcSessionConfig": {"appName": "KBcYrCEAE7WIsfmx", "customURL": "40NLRc6m8heKnWhz", "functionFlag": 11}, "immutableStorage": false, "inactiveTimeout": 52, "inviteTimeout": 80, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 42, "manualRejoin": false, "maxActiveSessions": 96, "maxPlayers": 9, "minPlayers": 19, "name": "oKFeIaFQCYoDPICp", "persistent": false, "preferredClaimKeys": ["gJjBbEDoNf3n0hEo", "RCAcf80zfFyabWAg", "IUXiI07A68eaqC2J"], "requestedRegions": ["9jyEW6GLbc0NaKDU", "L3sa13lk1dQBHO86", "IlBhnetU4RwTqUXl"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 52, "type": "P2P"}' 'OuYsaZA2yyd4mbqo' --login_with_auth "Bearer foo"
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 29, "PSNSupportedPlatforms": ["QTQT95pFJUAJsyAf", "eKOufV4f15NohXu6", "opxQGRt6PqlkL0di"], "SessionTitle": "RhLC10ih2EQfY3XC", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "2xaNfmn8Onb1a9gM", "XboxServiceConfigID": "z0F2UBRmMhAbUWmF", "XboxSessionTemplateName": "hdYLWzMuv3zkUY0n", "XboxTitleID": "0BAZkwbYkBLyO6A0", "localizedSessionName": {"FqfhnaB3YxKNdOTa": {}, "cCcJfIfXshuLUk5W": {}, "dpxjZx5noXPhPUTK": {}}}, "PSNBaseUrl": "bonoucNmzwOZOK56", "amsClaimTimeoutMinutes": 38, "appName": "izac7Ge6zKJdlt7r", "asyncProcessDSRequest": {"async": false, "timeout": 73}, "attributes": {"F5RaJwvkWVco2LTo": {}, "5ijlvDF8qBWCQ9dL": {}, "WYyS8zdhMeBXH8x6": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "9lhbvuQdW2jwKUck", "customURLGRPC": "c794ryY91lX8DD4M", "deployment": "YXlrJ81lHvv9rqvE", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "8YmVjAkO3HKsEp6K", "enableSecret": false, "fallbackClaimKeys": ["TnOK7xAvM7tuL81l", "sR7xxSVp3Gd2TK0H", "zYviTgYmx82JVBRL"], "grpcSessionConfig": {"appName": "PZ6Iz8tne5dbguBF", "customURL": "6Gsvvdl8jHz9x7XZ", "functionFlag": 72}, "immutableStorage": false, "inactiveTimeout": 40, "inviteTimeout": 96, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 30, "manualRejoin": true, "maxActiveSessions": 43, "maxPlayers": 22, "minPlayers": 47, "name": "OLaZaMphKCqTq3EV", "persistent": false, "preferredClaimKeys": ["NKgYazujsmSmylT1", "YtxIq73aMb48jISd", "97KORRhxSWLWLNfH"], "requestedRegions": ["RD3V15QaGGL46Lux", "JF3sbeqWBdQuWfgB", "AKx27MSBqabUXOGk"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": false, "ttlHours": 82, "type": "P2P"}' \
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
    '5vzzXZj08a6K1XRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 44, "PSNSupportedPlatforms": ["SpPFnZBJZkDnEiyf", "a2LrnpZxNnLRH36b", "qS2oFY76PU1AziBO"], "SessionTitle": "HEAj1cT3u6Zc2Fbr", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "Z0jvA54CSqZFDsO1", "XboxServiceConfigID": "skRjOU1SMfQVQa6b", "XboxSessionTemplateName": "lj9Rdd85bdYUumPK", "XboxTitleID": "VSZCg3XTc9vQe0dH", "localizedSessionName": {"JfF6KIuvnRCa9Jkt": {}, "yBdxkZKrEWFw9GYx": {}, "jiiOQAD77ci0vfWV": {}}}, "PSNBaseUrl": "ZoRRMPi57HyKKz5n", "amsClaimTimeoutMinutes": 51, "appName": "9K9zyv6gFZXI5nXJ", "asyncProcessDSRequest": {"async": false, "timeout": 15}, "attributes": {"jC56pda3YhtQxpCY": {}, "ME6x21pdX2QSPAd9": {}, "sxoLnWGP1PafIjLX": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "vHuYrGWDK41uMOC0", "customURLGRPC": "mRvSoaGk4ktF5wnJ", "deployment": "Dg9Q3WXiydCOInVo", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "4lU6jaGfsD1cfswm", "enableSecret": false, "fallbackClaimKeys": ["SiXjcY5ZPkv90lyK", "STWLxSFZ0LpupEi5", "DbkVs3qFTi1t530W"], "grpcSessionConfig": {"appName": "j1WfzIvc3VlSXrA3", "customURL": "XUGud4tVjmxEf4Xv", "functionFlag": 98}, "immutableStorage": false, "inactiveTimeout": 16, "inviteTimeout": 66, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 72, "manualRejoin": true, "maxActiveSessions": 48, "maxPlayers": 35, "minPlayers": 64, "name": "BVg6NuDZvPb1kuUf", "persistent": false, "preferredClaimKeys": ["KeTyBG5dCUoExnKf", "V3869IN4V1OdhH4G", "VU7Exlkmc4xYiLjL"], "requestedRegions": ["yZrXr9Bhtzn8jAdT", "n6xBhrciryLm67rk", "adH5Y41SLjCPrFa0"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 59, "type": "P2P"}' \
    '5GODS44bmm7jPdKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'ddfdsUqjXVzW1Qqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'nWR5sheLgsAF4ctv' \
    '5guycGiq9j2EyIkn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "fLDpgHnMOn8nc3gU"}' \
    'Z8ZFyyEr0KBXuJBq' \
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
    '{"K4QtEydPWLPBYiR3": {}, "UbJc1ZYapx7C477e": {}, "tqgfOJDUT0uKAPrA": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["Rya2IMlNiXpF4qvs", "UUpHqi33TcBGkc0H", "jUcnkpU9oVzl2kBu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'XIeCEKZUTz3GvCAZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "5j24acYHbrryHB6G", "deployment": "O9zP3FaepA3b3YJ9", "description": "nJM6vtT27xv85K5M", "ip": "U2qmbeqaVemINdCl", "port": 32, "region": "tEuWBSO2jJepUnEE", "serverId": "gja2mIE2kLTnJwc5", "source": "XmkCuL5W4tKt6G3j", "status": "9LYdG7xVPqBqe9RD"}' \
    'QMBSYAFLqp8PF5hC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'coukWpnbz4ys7j6l' \
    'xuU3u2HEG0qfKegv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'FTD1sPykS8YLmwtY' \
    'gWGcA0h4G1LZ1HaX' \
    '5UBMbsF44VTsLDRz' \
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
    '{"ids": ["dq22cbnyK3ggFDh2", "kaZP7pnnVfxPwc25", "9HF9ejHaILQruAuY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'yJLYGqMv824ouSgk' \
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
    '{"psn": {"clientId": "pK70uJmUL0uzElix", "clientSecret": "c023dIvDiA0tQWlH", "scope": "wBcTtztx3VAl6tXF"}}' \
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
    'nATCzUOIzVcy9k3i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'e64Vnwa0ClGQJult' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'Je32AiwKadEoIVmp' \
    'rwPsa9YD92CX0rIT' \
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
    'ajpwHITGeHTnqRbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'BB9ZFgJbQ3Fj1umx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "4ItzkMJ7cudf4r91", "attributes": {"6GPrhn2etVIQvRkQ": {}, "JAtDUH9tx60AehGz": {}, "1ermJYXsYgL7TfyI": {}}, "autoJoin": false, "backfillTicketID": "nHUlmU1unGKM0tgf", "clientVersion": "eWy47bbwMI4gGmvK", "configurationName": "9gW596FwBNrFXt3T", "customURLGRPC": "AuKBwBcD12ae6r3h", "deployment": "Hwya4NpdOzg3hr6u", "dsSource": "cHf7dbh2iKNUl0qJ", "fallbackClaimKeys": ["qzoKMRMG541PAiNj", "ULsx4SnKNXLMUaDS", "wwQlnNRZJHBSB4fZ"], "inactiveTimeout": 100, "inviteTimeout": 45, "joinability": "FRIENDS_OF_MEMBERS", "matchPool": "5kVu4S95mj8YRvae", "maxPlayers": 49, "minPlayers": 11, "preferredClaimKeys": ["3N7WNMYIfcDKbLu8", "pnK34oA1keYXJvtg", "gDdXjbdjMBahFZZG"], "requestedRegions": ["MTcqnWrIprOv0BJ9", "Sgl7H1sdH2RIJz1e", "I7Q5pu9PutLf6Irv"], "serverName": "ZoBGQbO4S3rURGWU", "storage": {"leader": {"zPAE6SdV4D5jftRl": {}, "9rZmtQUvro8TWwXW": {}, "sz9TVmdMKEohKzuM": {}}}, "teams": [{"parties": [{"partyID": "YDUTLBeCidXjuGgx", "userIDs": ["8ncXejmeZtzT0qj0", "ltsqfiZrthVvyX0O", "CKDJE3RMUddwSSgx"]}, {"partyID": "Cu8zru1DhGAYOHR5", "userIDs": ["BWa9VzIkaQEl1iUP", "roNB6hI6IpGcToWg", "FvdRhG9NwV3zDuqV"]}, {"partyID": "lVTypcYPK8IxrSZu", "userIDs": ["xWl0Je4fJIyFAm3D", "Qht4JwnPS2urJqer", "obWMZGVL5KLTxahW"]}], "teamID": "lS6XdBaKSLCgOOPX", "userIDs": ["M6XTUh2dJ90yqHDN", "acl4F9G6Dl5TFwBY", "6HKXAblkT8VGgSH8"]}, {"parties": [{"partyID": "MGZGwiVj7eDTaka9", "userIDs": ["ABfX1IByPEOuPhGs", "pRi3bhPQvBBJI5Jx", "ytpcubN4AUUPFPsc"]}, {"partyID": "ZsXeJOD4DMtqfIGi", "userIDs": ["GJovgWSRxZ8N4UQ2", "fg3V1o2x0hL5DuBD", "qMyIAzWze94MEdJF"]}, {"partyID": "Ay2JTllJkRGB8jqJ", "userIDs": ["Ed6eqqsBVyONV0JR", "tozI0jpliCFQ6WgJ", "pGPigdc5VyC4qvWj"]}], "teamID": "Vac1cQvSxgTNIUzx", "userIDs": ["DgBlIbuzm7DzJ20N", "FRJIhFXR2dYprPmb", "puptECGd5cdXC2Se"]}, {"parties": [{"partyID": "sc6y68whNBYl9iCq", "userIDs": ["fW6rqGOQny4ij4ys", "YPonb59gQffkNOmu", "bxEJr2qEAuJbpZSr"]}, {"partyID": "cbc4LWfKaY5c1tP5", "userIDs": ["TDuI5f6m4KC07Cns", "Ze32hqEcB1ExYMBb", "3ckvoaJYdMqGegcg"]}, {"partyID": "3eRvBZXN3cjIXmFW", "userIDs": ["RJnj8xN7HDPTUEDP", "N1Kb4UTPWDXTSb55", "g8LSTs7Nf95lGlPr"]}], "teamID": "f6obIdnI6Ag7eUYc", "userIDs": ["YJ4QzXCmqr6gmPGa", "HP5SVPvRLiDi0mNH", "b6Lx8eq8SGNwEQO8"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["YXvBSYvJBwb6CjZU", "MRf2VJetWsokvx3B", "HuTEczr9KjQ3ttz8"], "tieTeamsSessionLifetime": true, "type": "DS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"t1xk9IyssSA8nP5P": {}, "Qjpzk2Tb7iYdmNZW": {}, "osrsVBPZ64j0HUON": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "scofwYLQcDvkaEII"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'PoJT83zEGXmVBZLy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'rH9J7BoysmaORLkP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"5hc2Fh04JTsqDTyn": {}, "CewqJligLlRxOelK": {}, "ykICRxF6HtlER2tx": {}}, "backfillTicketID": "s4qrNARATn6KXOut", "clientVersion": "lYBbLhL8KXx25FZf", "deployment": "QIodVBqQsBpCJBIX", "fallbackClaimKeys": ["LGYcwWVRK6UKk5oz", "rXA4HZHNyq9odanh", "R1Zrm3thUvV87yfk"], "inactiveTimeout": 50, "inviteTimeout": 62, "joinability": "CLOSED", "matchPool": "lug48TgfNu0rqXUO", "maxPlayers": 50, "minPlayers": 94, "preferredClaimKeys": ["phYOgT5kDTyPl3dK", "F7NXEjrJMki8jvc3", "P8Gwjg3IOH0SDHgY"], "requestedRegions": ["KqxJiFJdrmj5vhzg", "sJwex7wq8ZPlXNaU", "NgdY2vfJuje5cPnm"], "teams": [{"parties": [{"partyID": "GjTvYa5Pqx1K7qcA", "userIDs": ["oijBPAp6EPb988Nz", "xrDKVpULjjiw3NeV", "G4DJi9DaMrc0WFgK"]}, {"partyID": "jE945x2CPVYYG9Wv", "userIDs": ["oGmAmvaVV5YfxnUN", "cwjr7gSGhnfuF4WZ", "iQVICVpWd3UM08gM"]}, {"partyID": "Xhdf3juXW4JprIb3", "userIDs": ["CJCAtvSG8Cfa9dzO", "JDGCTHIOFjeXbsSg", "R43kIDzxBwqRJTzr"]}], "teamID": "HNZWUsq5lQo2jy29", "userIDs": ["EJigqYhyVhURx1yP", "eczRpdk0HATGylx2", "JG2KNGfhzfCTxxrs"]}, {"parties": [{"partyID": "RRLee3TcJ7DQIi45", "userIDs": ["aCDHN9mVug2zkVf6", "KgpKOcn3tMD9UT67", "bOwugFDa6wUQvehK"]}, {"partyID": "qwCh86XmRkCEcfHD", "userIDs": ["Cdl59Wp9A3tXGve6", "DdK6uvg8f2cIoByk", "9fxtvsgeAxo57nKA"]}, {"partyID": "bZpsbJ4Iu5KJ0ynx", "userIDs": ["GBlacDCdFe8ATUqV", "xcSthrpnMUBsnUfu", "QIcSbUt5UGkInFGp"]}], "teamID": "uUsdtq4dOwNESzCE", "userIDs": ["W9dUVhZjLftC3sCS", "8CpLCqPD9CeDEdCn", "nL6Kt1Bjj3b8QM8R"]}, {"parties": [{"partyID": "r45ULqXQgvwD3PsK", "userIDs": ["DJiWxQBwaS7rDBf2", "S54phbdyGDt47f9G", "WRlE9hqz6rjDNo4r"]}, {"partyID": "hjxUdMM83WekqfWv", "userIDs": ["04vvn9bk5qr8qs2m", "qtnGAqXUjNypF6MM", "qWpdEJsPoaIbYz8c"]}, {"partyID": "K5jlpJdre5ur6yvW", "userIDs": ["JDdvM7T7PX2vamIR", "ZHzsIYOCUoiCXNjr", "dQL2jdx1eIba1sB0"]}], "teamID": "HsJ06DzfbzRYt4OV", "userIDs": ["UyumBeIqdQGZC5kM", "03HHijsQRj7N8IAj", "msonjj0ZR50BQ1U6"]}], "ticketIDs": ["aFD3O2kXQSc58zgZ", "Vl4gIF7v3qbZu9M3", "OxqVAT4H1lRZ9Z1J"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 36}' \
    '0EJyjBu4EzwRjD7j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'mQJeFPghqamSc5y0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"X48eT7Mluexk87b9": {}, "Z5BTsEA3EdmW8saa": {}, "bP4xRowfNojzPXI2": {}}, "backfillTicketID": "v0prR3OEey0MkZwS", "clientVersion": "6TYwNN3UYhic03qG", "deployment": "Eg5fNzBVrjo3g8Cf", "fallbackClaimKeys": ["Rwtyl1HeT7VEPgG4", "0QyXzsOzgck078Ig", "hoQBp2mWAOYksczx"], "inactiveTimeout": 56, "inviteTimeout": 43, "joinability": "OPEN", "matchPool": "Mf9yilUEujk6oqYo", "maxPlayers": 25, "minPlayers": 69, "preferredClaimKeys": ["EMzicbuL2S3RiW8d", "LTCBfGUdVEdvdQL7", "sVwcZ2PofaJoSqtr"], "requestedRegions": ["EOqxH46fRTSZoDdT", "0fefo74eg3Nt2c0r", "4GqF0NHglOVuNZ9L"], "teams": [{"parties": [{"partyID": "zNeJnBurh54CWbYb", "userIDs": ["0Pebyt8b4DGscjwr", "izsFUgYwbaLvqvQ2", "NbmDITuymTBjn3d2"]}, {"partyID": "sFzMS3QaVjZF7Ax6", "userIDs": ["115Kg9U8vrQJXQxo", "IbVi2CLEk277Ivjj", "1A647XQ3koaAfZIi"]}, {"partyID": "m0sFPm1YN27bojDV", "userIDs": ["aZLpx4kEWYkO6KrK", "UMhJrASBh61hmWKS", "SrF35anDGvur19V1"]}], "teamID": "8oIrUKXttgAI2QdW", "userIDs": ["JFLmoPEgd8EMspOs", "8nkic9gj5vyUMAAm", "IHYbsxG5N066FXb8"]}, {"parties": [{"partyID": "8SbLOa21DiSFsm0X", "userIDs": ["XQJWszvTQEuALzDN", "p1SZ58aDllwzTRHa", "k1MXxj7Esrg7900n"]}, {"partyID": "ml5BidsK9dCEzhVn", "userIDs": ["Ov0PQbVIaKiHfoeo", "rY7A1otGFyv2SMjb", "Er50qGdCZIc6EFqB"]}, {"partyID": "KxbS7Q2OgRucL1jw", "userIDs": ["RXzfjDZZBmOau6sy", "me06c6SKLc2mEC3I", "Xl5XCbkOfHaGr5kd"]}], "teamID": "azlypvt6lSLfU7HB", "userIDs": ["yGXPMqxj4hBgVY3Y", "AxZLKbcOdyjqf6Q4", "oiwoJcaRMEb15LBl"]}, {"parties": [{"partyID": "TVufc5ZyODR2NVyn", "userIDs": ["4PRqf3eRbZqBAoKG", "cVCdMiSNV4qBrt1k", "cLmRv6EJtl5xWnsb"]}, {"partyID": "8oWq94RImNWVIJnh", "userIDs": ["hwFDV1VitaomvWTz", "dsW4N70wYS4Kj7Yi", "2VvoQNW8Yc481dYd"]}, {"partyID": "vGxJAMDRA1LF7jdW", "userIDs": ["lekFwO94VBCV9qJh", "Wva2FPBujX0geYCp", "GJM4sqsPNJMiZXXO"]}], "teamID": "FwmGWAvNF0Z0Gkwx", "userIDs": ["UNYyNwGiKrknH0Y5", "mrQgLC6D2qsFiQHg", "lUQMZi5WjMZfOadp"]}], "ticketIDs": ["gegCUjTdi1Ehr8Ot", "qpNJ9R8TuNy4ejmV", "A3vMCsGyPd12B8QN"], "tieTeamsSessionLifetime": false, "type": "NONE", "version": 21}' \
    '0hFFNbH6j2W4roZM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "2UKAXEEsL5D0oiFc"}' \
    'hQnVeq3g2AB2WIRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'QmauIY5HXCZ0W4Xm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'WP0HzSdiylLhVYsz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"m8xY33OQbumu2QHL": "yZNuysyM4OfCzdQC", "XMAWnf87YPNOe9Ee": "vf1fhMg1E2k7QLFr", "VgtX7y0fPOieDCow": "2zXyFFVpM87yqEwE"}, "platformID": "acQMTlqN4LKkxJ5v", "userID": "3SBafnKNiMPbFkFG"}' \
    'A85W3HJkqgS2B37w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'woPYOHiIsxmsLBPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "JuNLnWRrtW870qD8"}' \
    '8ZcduZSe7W20UZcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'aiq0nEZ7PyhqFJkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'ClOsKmfsgJdmzsDP' \
    'sWh1k0cQ08NG6dX2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'TZkil67kRngoUa83' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'ECh1gqPeS193TNNz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'ot3sVli3GN2XTrFi' \
    'bRAhzzEWzWlTY70q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "dgJRvpZrSpWX3KEe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '2BjV00ReCXFffjJJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"xlgjzIhpgOoIOD74": {}, "V21HWDAfvXwdxbyp": {}, "4HAPbBbNPStVBUpK": {}}, "inactiveTimeout": 12, "inviteTimeout": 58, "joinability": "OPEN", "maxPlayers": 38, "minPlayers": 53, "type": "NONE", "version": 64}' \
    'ODiZhbfb8QqCyK1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"H9D6vl5eFdFfgK46": {}, "GjCWaP8huTmnq3FG": {}, "Qn3Ahu5wxq6oJq4m": {}}, "inactiveTimeout": 58, "inviteTimeout": 91, "joinability": "CLOSED", "maxPlayers": 53, "minPlayers": 26, "type": "DS", "version": 87}' \
    'CV8ZMi2o1nR482D6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'gNClk9c87hosaPFC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '5zBW3ZgVZCj9ObVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"T0Scwl4kNmCi15XT": "JTgCNNH7RtG5Xmo9", "Q0Wb07N17fkxZSc6": "VbE0AGcekjMNHuPX", "tz8tXxrmzafMUguy": "DoN91uc28HoSpGt1"}, "platformID": "g0GGbT4Hf2PPKOld", "userID": "kbgX9CWJKwXXSbv5"}' \
    'eg9q86IaDFjjx6uZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "erWbtwTX9gNRByjb"}' \
    'E8lOLAfTXKLzbrdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'qcKLa7LevxNHOSEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"QRZIp693lRwtc43a": {}, "tCuCFxbfbz4aQERz": {}, "iPL4dHhOqG5KDdUv": {}}' \
    'k0LEi26Ls7mjRxNm' \
    'vvNtjJNQepUTGhwl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'Y4lPzlsCR5rVsyfc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'H7WjP7HuGz3b5WAE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'vdRF9bqMj4ro5B19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'VE838c7OydVw0zCq' \
    'oMZvpIOO97DmQ5ZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'zx6iCJTu60IifzMh' \
    'kk5PxsjqbCKpMv2Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"ky9DYkD2sIllFtBt": {}, "XJKG3rqBmILhtWm8": {}, "RQvRUbUDSiefGEdL": {}}, "configurationName": "ucrtO2gCQD057DrD", "inactiveTimeout": 23, "inviteTimeout": 66, "joinability": "CLOSED", "maxPlayers": 39, "members": [{"ID": "C2nzS9SiGUjVAw4v", "PlatformID": "3q6JRHcn7KaoCEkR", "PlatformUserID": "do6qHYIZWnXqQ1oH"}, {"ID": "FJ9Q0vqsL9SomqWs", "PlatformID": "GA76yxi0QzZWfmP2", "PlatformUserID": "sx0KO5bEJaPnAFjs"}, {"ID": "odyJQVVBrShGbIIu", "PlatformID": "qK8C403HgoXCR6XO", "PlatformUserID": "MXwKdfqk8T4QHK30"}], "minPlayers": 63, "textChat": false, "type": "NONE"}' \
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
    '{"FclpDl5HsuracO5M": {}, "njnxD1OXkxShFVQT": {}, "RekLfjmy8zosRCRg": {}}' \
    'VwbrQKmb01yA7U7d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"GMjupZkZQY8CNyT4": {}, "k3DIbfT22G5NpE13": {}, "0YWSgxpKWtdtdtVW": {}}' \
    '9anENmxb9e7vXZV3' \
    'ig8Jg5VByeI3ycMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["YYBixKJXCISQdwec", "1m8BusV9tUh74KVo", "6Xqjz2xUKLNWSmYy"]}' \
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
    '{"crossplayEnabled": true, "currentPlatform": "IiJssShBKsQjXvfQ", "data": {"gQDt6ce8NDMErA82": {}, "FrR1GSogkewIzTOq": {}, "KkcjRh3l2gAJOTCb": {}}, "platforms": [{"name": "x7J3gNLIlTk3Bpcl", "userID": "rk4hIRn0znIKzAEA"}, {"name": "HQpBOgHEP5l94s7C", "userID": "bIJ7eHnVWOboMkyB"}, {"name": "7FTexsOZ0b2p3b63", "userID": "KrcwIcXMhGy83Xit"}], "roles": ["6boOLGCcg16DqwdQ", "PQ9HkSSV8e1MgTTL", "S2FgarY903INGIyE"], "simultaneousPlatform": "fRBEj7qms9AGQExP"}' \
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
