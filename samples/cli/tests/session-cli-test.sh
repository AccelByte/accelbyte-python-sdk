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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 11, "PSNSupportedPlatforms": ["qUI06UpOXGSLmCVu", "HOPlLlkvR8sKgnuR", "kgghGoYupD391C2q"], "SessionTitle": "tPYokahFjkQsfCaT", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "t1d67FXGk2s9Q0mP", "XboxServiceConfigID": "Vo3twu0MesTCf9x4", "XboxSessionTemplateName": "rt69lna7qxNeIxPz", "XboxTitleID": "6MbwL6IY69z1UaLq", "localizedSessionName": {"YSYWytLPziZMdjxc": {}, "BZufQxGiHPllG4cY": {}, "EzfTD1ZBm3MqHcUm": {}}}, "PSNBaseUrl": "LZZbSqb8RwNmn9Hr", "appName": "NQy4uZAAiE0mit9R", "asyncProcessDSRequest": {"async": true, "timeout": 6}, "attributes": {"CHYzUOcEdscKHPEq": {}, "gA8yu7Vk6Jt4Ymos": {}, "9Jcdos4fYcTVU6RB": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "0zYoMcHyCUEXlAvx", "customURLGRPC": "JMdalwSyliWMNW5N", "deployment": "yLu0M3VHh2EI8JlD", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "Q9lNmqRBaAkLnvxk", "enableSecret": true, "fallbackClaimKeys": ["X68cmDc3fxU8MyKr", "QpM4hkkK6KKXNB3G", "v0IqmF51TkhjYnaq"], "grpcSessionConfig": {"appName": "6foWvXa3bMrXsDr6", "customURL": "kILsSSyDdmykmoPY", "functionFlag": 13}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 76, "joinability": "bN9oCMNqq98SjTvh", "leaderElectionGracePeriod": 19, "manualRejoin": false, "maxActiveSessions": 20, "maxPlayers": 92, "minPlayers": 23, "name": "Q70D0H6BXksUC9b6", "persistent": false, "preferredClaimKeys": ["x3poD3Qgb3boLQQ1", "MzH7Qm8bwbmXgdAP", "h1EThG96gAFKK2WD"], "requestedRegions": ["gCcxvONZm3EeERmD", "nyeFoF7VSZ6pf3vn", "eSD2Tb3g7mSQUhAE"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "type": "NjEEztx1WsYSiZqa"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'n0nSBJroav91GXlv' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 86, "PSNSupportedPlatforms": ["tW18iGeUlc9d9sog", "Wa24CKNS0GqVvUfH", "QvsHXNUNe4mhgo5Q"], "SessionTitle": "B65lSAiYnNjkfZrQ", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "gbLdLsFzHkBMr1yr", "XboxServiceConfigID": "OMlNFSrUEirnjX9f", "XboxSessionTemplateName": "DmIbeZxzfTcyiuAT", "XboxTitleID": "us9hsfpFDcSDG8aM", "localizedSessionName": {"VGLiBNrDjqoxcwgG": {}, "LXpUL4pp2ncYAHdN": {}, "zDmeIP6rOvDz9KOs": {}}}, "PSNBaseUrl": "b392k6YmJFfRByjl", "appName": "BiuFM3FIoVk8T3Gp", "asyncProcessDSRequest": {"async": true, "timeout": 54}, "attributes": {"nkCmBUqg2SCnqntX": {}, "9y1aZSWMiVi10sG6": {}, "vxkfUcmqRRbceJ5i": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "cnLRfxeCSz9WEi8K", "customURLGRPC": "lloeH0JT1yduat2v", "deployment": "QR3biBfsu4jmsRE2", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "XQAk4mqrxzTtuLl4", "enableSecret": false, "fallbackClaimKeys": ["Dx9gIiDandpGT2t2", "4aOMh5eC3IHeHSKL", "Ca3xreNDUWehwH3q"], "grpcSessionConfig": {"appName": "31A806DJgas4b6z3", "customURL": "LNUj7fdgLA84Z8YY", "functionFlag": 21}, "immutableStorage": true, "inactiveTimeout": 88, "inviteTimeout": 32, "joinability": "EgJjBbEDoNf3n0hE", "leaderElectionGracePeriod": 30, "manualRejoin": true, "maxActiveSessions": 90, "maxPlayers": 22, "minPlayers": 58, "name": "MNxvvKgAT8mJrYq6", "persistent": false, "preferredClaimKeys": ["XiI07A68eaqC2J9j", "yEW6GLbc0NaKDUL3", "sa13lk1dQBHO86Il"], "requestedRegions": ["BhnetU4RwTqUXlTD", "BzOuYsaZA2yyd4mb", "qoOfADMMAXFaY9eK"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "type": "9bRVhyaKwwrAP2aM"}' 'lu7WtjCtoYetOO84' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 '7g8OudOfjnCuHZ3c' --login_with_auth "Bearer foo"
session-admin-get-member-active-session '46IjGa23YvYmmDg7' 'VYPXIuvUYTZBRujI' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "UE1Tq5jyAZvkRCMN"}' 'FIurjh2imdb4rbkX' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"j0ZwsVC0gL97ZVJS": {}, "PqJiwv1qlYB1RSKs": {}, "6gQxC3Gb7S0o4zGY": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["Y7KQI1AeFgPqaOkv", "o1aolB4lkKB4EYOk", "Q1jMD3cym8xIfkOV"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'HC9LxhvNXTwGBCto' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"clientVersion": "hLtl9Zuhytm5UDrT", "createdRegion": "6QXCs5SPBbRPZTF6", "deployment": "oQAXVG7tnsZg5QgX", "description": "jvyGJPN4eXbJE5Vs", "gameMode": "2GcyomQoIXimBJeh", "ip": "yxlNsjUgxBkF6wFP", "port": 29, "region": "SJtjX7ZshZyZl5x4", "serverId": "bRXBHUTrDzZSKscf", "source": "OcYu3dpCROYqUiGK", "status": "XVFCmpo6sPwVOEDS"}' 'JsEK5QpNhlI2iS5E' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'pGhhvXYck0upMzUY' 'nb76tFkEORV3bu1b' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'NCtX7W40V6Do5sYa' 'dCCFrHHC3DpZxkrQ' 'DXuNFviMarv8mnfH' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["K8CCmE2lPnsbD3SG", "EdlwuUccE536ugBp", "3HBvepnDCjgyJlXe"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage '36mgWjLfFmteue9n' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "zJ6fH24T805tVg8J", "clientSecret": "qU0jZpjvsugAOS7u", "scope": "8RiWyerCSa8SRgws"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'XBOX' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'j1ik1jglaDXTvKCW' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'wNTAhd2wrS0uPdjh' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'dinpng5BLy8wbhMs' 'sAHjapIkY9Rf4wP5' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes '7dBZNR88YbCtmKy8' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'M9zVrjfGXZnqAQUo' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "Y1GjlIIk0iKoTTS1", "attributes": {"j02o7JjTXAQN0qds": {}, "kdQV0TqI8EFnmDbx": {}, "Ixi4YKlONk2Q5Y4J": {}}, "autoJoin": true, "backfillTicketID": "2aCNYIWekp18lOC3", "clientVersion": "mNqF7Bl0LcghVHfP", "configurationName": "EspxwhRON0bc1eMb", "customURLGRPC": "EIjowLqc3ecjXJbZ", "deployment": "DKKoxLE1Y3Dymtj3", "dsSource": "giPg4x4yiPX6ues1", "fallbackClaimKeys": ["Hhhkg1yLVbLFzHEP", "8cM4NTwr0KHaAsmT", "ej52WKi6tArAURt9"], "inactiveTimeout": 32, "inviteTimeout": 64, "joinability": "lCSVq8PdH6hJPUAc", "matchPool": "0RVwXgAgntLMCuaX", "maxPlayers": 56, "minPlayers": 98, "preferredClaimKeys": ["WQi6BqPg4xr0lCan", "cUZGCHsZYoLfR1Kt", "Ov7Zy0b65uvuKNuy"], "requestedRegions": ["0ytZQ7M6Nzy1adnS", "KOLFKx1dX4LuWJu3", "pDMUAeeZ97SBROPY"], "serverName": "uG6XqP6oo7G73zdx", "storage": {"leader": {"TgOfnwIdlNa29fDL": {}, "h741IslKHzGlLKWU": {}, "tDQs61OQAoxyyQpR": {}}}, "teams": [{"parties": [{"partyID": "WCiiPDGQhNPEwiJC", "userIDs": ["f2XJVrlzqQls1ozh", "LVA3kE8jKvgatOEB", "M70TdlNBJYOmpu1V"]}, {"partyID": "CarzBsV6xnZ5Jrzz", "userIDs": ["jrcaug6CWVG8SWP3", "glU6muswVJnNnN7k", "Aa7j0riFc5HTHQIo"]}, {"partyID": "VsGo7dwV9DBqFKHQ", "userIDs": ["kETJyTlUrwDTnouj", "QD4IEiH9Z5qXn3ao", "RtlqOECohViHA5Cz"]}], "teamID": "gFSy8X1A3PrIfapq", "userIDs": ["5AAeMe4L3mDWORBV", "XTIIJM9XsYIIZxiX", "NMR9BgaWcFX3SUBh"]}, {"parties": [{"partyID": "yoTsMWPAxUMkawaG", "userIDs": ["pAyrIwMif3BOdkoc", "VTd4BxqGWV6mTJ0s", "Qs6XNbjvqhnUVLWu"]}, {"partyID": "8olKdxL6ozRmDD0j", "userIDs": ["JvlfV5OemPYdYT7D", "ROCjtuzFMbAG9YI8", "9hmguB8FOTjMLo4b"]}, {"partyID": "9rIzqYkEpstyVTBc", "userIDs": ["rM8rG0rH0zcswwVe", "MK6MbGIVIu8vvwLc", "7KY3uVoJXTIMtpgk"]}], "teamID": "ieDyF97lGdMiHKxb", "userIDs": ["WCYzo8yO2KTK9tmm", "OnYnOpas6ghP1y4Z", "i7s7QBlk44Z44B1G"]}, {"parties": [{"partyID": "ZgKg4uKxaCgcGLuC", "userIDs": ["3brWdTYCfHkIySok", "5DiXZtLW87rGysry", "od3dNQrmsApRA6HX"]}, {"partyID": "3RwrKt2ecozL0TOg", "userIDs": ["54vCE48L5oLF6M4l", "Na4JUMSHNgqRqCV7", "usamANkZlOX9Sfo9"]}, {"partyID": "5HgXqKhTPkwfLM9u", "userIDs": ["SybRzWek2gZvRrvr", "0n9d9lvccKMLhrTr", "cBE2ItBS3KtKZWe8"]}], "teamID": "aoFzAyBME74HUtip", "userIDs": ["UWYhWV1qx8CzPML5", "2faXUr9Sk4lq2faB", "cAXXKlhvyH8paOJt"]}], "textChat": true, "textChatMode": "GAME", "ticketIDs": ["qMPpcVfRwNj547fH", "0XrKEDpEY8VnocGA", "jci0V3tBf2jnHGKX"], "tieTeamsSessionLifetime": false, "type": "QpQ2FbKPFMycMSQ4"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"qfAacR0LgB5BUXvj": {}, "cu2s6w3VifnKqmTS": {}, "oGH1XEfY6QAYn6WQ": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "5UBEU1QAOHfZiGhx"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'OdcuDXSxSc3aZPV8' --login_with_auth "Bearer foo"
session-get-game-session '7pna08gxefTYKhux' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"aEc7M4P7UckSC6eP": {}, "eN8i4GrFES9z7xue": {}, "HpATHccee9GXhKcj": {}}, "backfillTicketID": "mSEwdrkEnnqKzFsL", "clientVersion": "fYalUlfwEQKjU7eH", "deployment": "GebSVu0LQ40kepEa", "fallbackClaimKeys": ["C4dfiOMZfEhHr39p", "ysFO3Zvc1BZG99Ly", "vfvHEsJKQQewVLMU"], "inactiveTimeout": 29, "inviteTimeout": 3, "joinability": "AnaRcYp7FUjfIGaf", "matchPool": "foflEIByYqeKN0me", "maxPlayers": 67, "minPlayers": 62, "preferredClaimKeys": ["elYF5wWaDhukU4kh", "GG4vZFTYnPkmSu4P", "Wam1jxR7SETWjteo"], "requestedRegions": ["c8fgvZDDhoO05oKq", "ymxLD1Lcvw6T6mZE", "iwxxElpMYSWIeVzm"], "teams": [{"parties": [{"partyID": "7z9noowmlTIKVowi", "userIDs": ["0RY2VN4ZONJREdUQ", "3z9F1BxNNgnke4ak", "ncw7wu9TmXfJWBPr"]}, {"partyID": "x9Ns8eLzYEvwSWTa", "userIDs": ["LQjctvrK2jhsYpKP", "lXn77AtYoFzLAATP", "Y8P8P3cfoivvQxev"]}, {"partyID": "ecWw7Rry0KK5rgAG", "userIDs": ["O0dW8rX2MVUGKSZ4", "GcLkt4pK32sJxlZc", "CTpTdRtCHvuk6B6X"]}], "teamID": "TmSLyn50sigBVZxi", "userIDs": ["KdV57GvRyd9UuL02", "Le8HSCslsDd4M1F5", "qRIblS7Nz81GRazP"]}, {"parties": [{"partyID": "AANjfBoldFOyqA2c", "userIDs": ["lJ5gEOaCgM6Yn6Ru", "gbNEIpGBFUjOn5mM", "7k8nbLzvtCIW5ynM"]}, {"partyID": "KquUicAeIVXtoWAX", "userIDs": ["hMlW4tLqX7OICf5o", "D1e6oI9FmYel0kOw", "72o8Zkgk0jS6rDWU"]}, {"partyID": "wfhKvrf2AaH4yCWr", "userIDs": ["HSppnIZkNnTn3rzH", "5NvAtcvNedgS1fUf", "KmihDbmu8ePWlQMV"]}], "teamID": "DXEHeiGTnwyEw6hI", "userIDs": ["WDZrpP7rz3ISW510", "kHr4isTKWjmv67nu", "HCXWfwnwGioVwVzm"]}, {"parties": [{"partyID": "mBVVFfpqx1AeLtzc", "userIDs": ["PJ3jtDYBo4FUTH7C", "GfKSyxgRR1DiCqSM", "zpqIFGLkDs7ACC1R"]}, {"partyID": "gBfoNrHlFi2qJLgm", "userIDs": ["BLE35YhyiDV90SeI", "5yppBHoytVznCgNy", "x9fbT63ShEh8PbGi"]}, {"partyID": "kLjgjcj34uulU6FY", "userIDs": ["BZsWFbr3RSP0W9nB", "hvhf8Q0DtJMcYQdN", "66bswAgt65X4N1LQ"]}], "teamID": "ZmB61JMdtwCVUrYQ", "userIDs": ["ue84dwmbwFEnAZaW", "sQJtRYoagRJK5PX9", "UcOvhPyE11TRT2SK"]}], "ticketIDs": ["seoe8VLie0LBa36K", "Nzjf005CXNGehQ2a", "TjTDfKFDXC7eGL5Y"], "tieTeamsSessionLifetime": false, "type": "dCfQaMAQuTKfC0I2", "version": 21}' 'yOfIMLds2DbPcaoM' --login_with_auth "Bearer foo"
session-delete-game-session 'dtRLTmSvTkQQgB7e' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"xYvmHMxr5hPCJJzt": {}, "JBg0tTJg46IewOXE": {}, "2AkCh3QIZsUf8lGF": {}}, "backfillTicketID": "XcmwTERHclOdxIwq", "clientVersion": "ejxe18rNdb8Otq6j", "deployment": "1mqUav7k05HAQltn", "fallbackClaimKeys": ["SojV4jT65yclX2Ft", "Az0vJjFIYWOaNdsi", "mmkW2miH3xRHAKy4"], "inactiveTimeout": 87, "inviteTimeout": 33, "joinability": "xZkaXZ7vmiEd0JPx", "matchPool": "VyQpshaDwNqTbbFM", "maxPlayers": 5, "minPlayers": 54, "preferredClaimKeys": ["4VfkyrwpuXxbaERb", "fgPmi0eHkt1mr9EO", "IFg0dnWIYN2NVL70"], "requestedRegions": ["Iw157g00jr9b8MuY", "mmeKTmBNvGYxEQdf", "3ewoGGoY7xmFNAmj"], "teams": [{"parties": [{"partyID": "DDCvs78mcMdiS76Y", "userIDs": ["ApGJ9ufwLYkqIgLu", "ZS6hsQryiEtOAbpe", "UNf26UqkCfgCUYBn"]}, {"partyID": "2xaOBdPF0JmX8qwU", "userIDs": ["1cTuHHPB5S3DvPRC", "zBrVUxmDOj3cvRFa", "TC11W0TGTCm4fZWu"]}, {"partyID": "k6pQxDQpKqxLGeMv", "userIDs": ["r9TsvcMQ7dBsaIec", "RxIsZvD6rmzVr5XT", "1Nxw0v1dMQ9Rrbk6"]}], "teamID": "C2cVWf6ttvbU1PO6", "userIDs": ["ApCD2VXidT7w0Oc1", "5N8WXBPp17PAewqS", "m5x3B4t7WQnp8jXZ"]}, {"parties": [{"partyID": "edgt5cyNe27HLtwt", "userIDs": ["VOaxgP6Jbct8puMy", "bYGxD9IPmmsLmu3k", "aPj0O4zd8Tb7cUNG"]}, {"partyID": "PTBxiFFCrn7djjs6", "userIDs": ["9FTFVGUVhvKhJCme", "isql14mUHVbMPimN", "hcZsU3VAdMDcb4ql"]}, {"partyID": "kiFAamqvZI2KwjqP", "userIDs": ["BiWXade41s3rH34m", "B2yPlRpWjmHZAAvK", "TH8MuqIg0Czkguwu"]}], "teamID": "JCW7EEFB67AODbi9", "userIDs": ["BzupBsFpYc77GtRU", "cCFeY5g4XgBsbfzq", "xBPNe8ae1Il4aAtE"]}, {"parties": [{"partyID": "bu4IjGdqthRxTjQ7", "userIDs": ["gkZEY8rG0q0Q2Qd2", "JzRbkF2I03dIjvBb", "A6bfbYaJCJjfk2TU"]}, {"partyID": "vn95FhO7VW3mbDVM", "userIDs": ["Du87t0ldWf7iSGIi", "KFtWtn4Yr2svKM6p", "qLGZ0TBujELAUK6m"]}, {"partyID": "Q5iZgbwwm5iGzXtc", "userIDs": ["knrgidKupvXO6aj4", "hCmTC34jxW4pIDwd", "qXpmRmut9H9XyWI8"]}], "teamID": "bp8fQxRuX91uYmtr", "userIDs": ["HJbEGTUj7YjERL1r", "EQG02zccA8wvLsWU", "Nd6lPKvqDejvqklT"]}], "ticketIDs": ["SvDwuOrP9lzpiX0V", "uFpZum7izxe7NPzj", "Oa8E7wY76PxLv9HB"], "tieTeamsSessionLifetime": true, "type": "6PD7fEscShnGUGUt", "version": 98}' 'x4XLKAmlDr19uJ3n' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "q6VerzVCcI8y3Cz0"}' 'YqCKUh5RD9vNAp4j' --login_with_auth "Bearer foo"
session-game-session-generate-code 'inFpnQ5xF9wwbvMZ' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'yeDeRnVfPUa6xVVB' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"cq3wZpFIYeAg79Hc": "LJXJ7mpVI6eTYAjd", "PlCiQQC35cj4KyOV": "gvnWbfRJtsB7cUQZ", "2QUAxJrINPXppPNO": "3AfmXcgwC3IN6tvK"}, "platformID": "gLB9QmJIOq9dP5sz", "userID": "G71utjsQ4CrRb9gU"}' 'CeVz7fWbZIdhevfZ' --login_with_auth "Bearer foo"
session-join-game-session 'vyV7AcodcZwKjYDd' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "mJOlzwm9Su4FnS98"}' 'QqftSjq7sn8yreci' --login_with_auth "Bearer foo"
session-leave-game-session 'PLfkVyyJsbGpO6Jg' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'ehDJxEN7JlZc8LMq' '1o2jZWu4yA3r0u4q' --login_with_auth "Bearer foo"
session-public-game-session-reject '1bTHXIjfJKyFlM0u' --login_with_auth "Bearer foo"
session-get-session-server-secret '1uuoVdn9yVoSlKNc' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'hPHNL4X3LLaGPGdq' 'LE8SohhhuiTnJarY' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "YkHBDdSzBXdxapwh"}' --login_with_auth "Bearer foo"
session-public-get-party 'd5IQYBQuxLvPuWYv' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"E3fsNy9Z9OhxXvCp": {}, "9y7fLD2qfCXnlUnq": {}, "xT1WsRNMZcA92hzC": {}}, "inactiveTimeout": 20, "inviteTimeout": 80, "joinability": "HZ3sIhzOx2CXKlvI", "maxPlayers": 30, "minPlayers": 25, "type": "0AyyUJyAK5PRMRMw", "version": 7}' 'lt9qfx2UDcgVE7L9' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"FK6e0MrPc4vtxk9h": {}, "VKlG56HlzGr7Xjdy": {}, "RJunZPkp6ccIBnWy": {}}, "inactiveTimeout": 85, "inviteTimeout": 46, "joinability": "1DK97D2xnik42mit", "maxPlayers": 8, "minPlayers": 89, "type": "6COPipH1MWVTHG0q", "version": 69}' 'd6mO4oI8KDqebm83' --login_with_auth "Bearer foo"
session-public-generate-party-code 'raNBJ5y7axEkvI4o' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'xZEDxGiBnNbn0zaf' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"7CaOSlHXrUSA6sMJ": "zA5mtqISQ83TTbte", "fXWznDe4LQdXfFBi": "i2RAMEX5RMjBFVZG", "YzQqV8d9mDdUIoiI": "JFNxuNOmUSWw18T1"}, "platformID": "IxVWCxdvPL9e4P01", "userID": "vxP8xj1LyEirURER"}' 'nEMzpImW6sjAHyCK' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "5tNanGBrkzUvck3x"}' 'TtmOFMebS4AdlNzw' --login_with_auth "Bearer foo"
session-public-read-party-session-storage 'og2IhErkNhNcECWw' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"chW6zL9SkbLlrNXn": {}, "GanMazb8jvRWenUR": {}, "H48aJuALEcSqcE15": {}}' 'u6D31DjOsrs3CUYA' 'TdqnQGbqiqOkNeAT' --login_with_auth "Bearer foo"
session-public-party-join 'j7eGjodd7CcJUrI6' --login_with_auth "Bearer foo"
session-public-party-leave 'MAugK5kypNrp2nFe' --login_with_auth "Bearer foo"
session-public-party-reject '9FmN86sK5LOq4ft5' --login_with_auth "Bearer foo"
session-public-party-cancel 'jGcMICPUYnfG6jl9' 'U4jReteIMgzISomC' --login_with_auth "Bearer foo"
session-public-party-kick 'sodJrhQW41q2OspC' 'Zbt3Uta5I0uGcL1k' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"oyHjCH5olYLETRpA": {}, "BAmO2EGvJ4UMS93y": {}, "OxNInDByhnoluO6t": {}}, "configurationName": "i0QP2ssiJ66OzOj8", "inactiveTimeout": 9, "inviteTimeout": 83, "joinability": "7HqnVK3YVeOWs9mf", "maxPlayers": 97, "members": [{"ID": "ddXJ5zifF8y959an", "PlatformID": "rNSleywHbHig6IKW", "PlatformUserID": "VZ77KeRWdECaFGzf"}, {"ID": "Z2hxcJ2Fnemn7M23", "PlatformID": "SzUo4hNBDh9ZFP1O", "PlatformUserID": "W0nXOErQPS4VsRoY"}, {"ID": "IK69yg9ADCGiXaLs", "PlatformID": "2xjHkinOD975nARH", "PlatformUserID": "CmhNHSXuqIHsxvaU"}], "minPlayers": 29, "textChat": true, "type": "XDmwWsukxncuD3Qx"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"CXMd00YBWCaVVmM4": {}, "5mfIZsWhkS476dGG": {}, "JwJ00UH197MJ6zU7": {}}' 'JLMQyMWzYQCAaPJg' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"oxGJoJaSzUtY4ZD0": {}, "Xtb0U4pH16NUsVY2": {}, "1NVIs7NRen2Y3Ns0": {}}' 'QJQeaWytPfds1BYx' '0EaURydf8ZyyZeHA' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["WGgJUbUJRMbkcTgl", "bU86FyOjApNHBVfN", "OURcjY3YYT9oTynm"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "rnyx34luLdvtsTKX", "data": {"Mjiw6gYPvfn2Qt9i": {}, "yq3Nyk8ncu2Z3eDH": {}, "H9WaVO4iKhDcJ7TC": {}}, "platforms": [{"name": "cNIsQ3PuppUxDSK8", "userID": "aOTGMudcxlCV4cNb"}, {"name": "JGQ57lPdinpjS2DR", "userID": "fGt9GlyZVQ4X67tP"}, {"name": "ZSTpPq3xjrElvvDg", "userID": "w0ag7kSWE0Hiqm5I"}], "roles": ["uLryiEXqvUWDjU1G", "0EVjVZw1ToLuPakQ", "N1MpOs1RVFrcg2CX"], "simultaneousPlatform": "xepx78fvsyhE2BKt"}' --login_with_auth "Bearer foo"
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
    '{"metricExcludedNamespaces": ["GTuQPIDpor7t1aJL", "NNz6QIVC9Mfuc8VO", "snmnlVljdWYmELe7"], "regionRetryMapping": {"4p38vumnxAnYBTxa": ["TIz0jcgDI8Pkz96v", "d80msqIm5bufnBqr", "pLeqhwVhjnnjKMEm"], "tbiWsAQHbMrKYi0Z": ["xs5SWCqZXHLLa31o", "Qf7BULnZDhutDM6B", "qguqD5xxGxBWtnTK"], "Ue2znsqPzPkwCBo2": ["SwCUsTag4MLAo3m6", "1P2xaNfmn8Onb1a9", "gMz0F2UBRmMhAbUW"]}, "regionURLMapping": ["mFhdYLWzMuv3zkUY", "0n0BAZkwbYkBLyO6", "A0FqfhnaB3YxKNdO"], "testGameMode": "TacCcJfIfXshuLUk", "testRegionURLMapping": ["5WdpxjZx5noXPhPU", "TKbonoucNmzwOZOK", "56sDkci5rZ8iMlOu"], "testTargetUserIDs": ["ksQJCiRFiZWwJ7Nr", "Tb1XTB9YQzUJ9XlY", "J8BzP6EUmUXGM5an"]}' \
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
    '{"durationDays": 71}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 22}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 47, "PSNSupportedPlatforms": ["oyj9lhbvuQdW2jwK", "Uckc794ryY91lX8D", "D4MYXlrJ81lHvv9r"], "SessionTitle": "qvEoM8YmVjAkO3HK", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "yv6VTnOK7xAvM7tu", "XboxServiceConfigID": "L81lsR7xxSVp3Gd2", "XboxSessionTemplateName": "TK0HzYviTgYmx82J", "XboxTitleID": "VBRLPZ6Iz8tne5db", "localizedSessionName": {"guBF6Gsvvdl8jHz9": {}, "x7XZIjU4IK9lOLaZ": {}, "aMphKCqTq3EVheJj": {}}}, "PSNBaseUrl": "oEEXBLIxGnNuhoJM", "appName": "3WWPvvCiCf33ViEd", "asyncProcessDSRequest": {"async": true, "timeout": 89}, "attributes": {"QpoGkUWNizk5UcPA": {}, "Gv6c1ESC6hZYTYZb": {}, "zf5aANNNs5kgSZZN": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "IT9szApmWJO5vzzX", "customURLGRPC": "Zj08a6K1XRVfriSp", "deployment": "PFnZBJZkDnEiyfa2", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "npZxNnLRH36bqS2o", "enableSecret": false, "fallbackClaimKeys": ["6PU1AziBOHEAj1cT", "3u6Zc2FbrTFznTgD", "IwZIRWf6T3by2kYS"], "grpcSessionConfig": {"appName": "CdnFKLc0xcTjqjdc", "customURL": "EfU61OJYMnW49rWy", "functionFlag": 27}, "immutableStorage": false, "inactiveTimeout": 92, "inviteTimeout": 4, "joinability": "c9vQe0dHJfF6KIuv", "leaderElectionGracePeriod": 27, "manualRejoin": false, "maxActiveSessions": 89, "maxPlayers": 14, "minPlayers": 58, "name": "bUmulhe98oaFKlQi", "persistent": false, "preferredClaimKeys": ["w9GYxjiiOQAD77ci", "0vfWVZoRRMPi57Hy", "KKz5nyI6ulKNKoXa"], "requestedRegions": ["0dgx1JgjC56pda3Y", "htQxpCYME6x21pdX", "2QSPAd9sxoLnWGP1"], "textChat": true, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "type": "fIjLX8ce0KbNN7Yc"}' \
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
    'l2JfmQplvGjVQ4ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["tF5wnJDg9Q3WXiyd", "COInVolsr6CHmj76", "3vLwtYEJTSiXjcY5"], "SessionTitle": "ZPkv90lyKSTWLxSF", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "pupEi5DbkVs3qFTi", "XboxServiceConfigID": "1t530Wj1WfzIvc3V", "XboxSessionTemplateName": "lSXrA3XUGud4tVjm", "XboxTitleID": "xEf4XvVhFJTxFHIT", "localizedSessionName": {"Bg9x4unq3eOMHIKe": {}, "TyBG5dCUoExnKfV3": {}, "869IN4V1OdhH4GVU": {}}}, "PSNBaseUrl": "7Exlkmc4xYiLjLyZ", "appName": "rXr9Bhtzn8jAdTn6", "asyncProcessDSRequest": {"async": true, "timeout": 60}, "attributes": {"BhrciryLm67rkadH": {}, "5Y41SLjCPrFa05Xl": {}, "5TPC5GODS44bmm7j": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "RKvw8ISP2WKmCRRX", "customURLGRPC": "BxlalCHtWlKxLpS8", "deployment": "fLWoQ5nuJhatQPxR", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "vBVC5zgOKLTDmHe8", "enableSecret": false, "fallbackClaimKeys": ["Z8ZFyyEr0KBXuJBq", "K4QtEydPWLPBYiR3", "UbJc1ZYapx7C477e"], "grpcSessionConfig": {"appName": "tqgfOJDUT0uKAPrA", "customURL": "Rya2IMlNiXpF4qvs", "functionFlag": 96}, "immutableStorage": false, "inactiveTimeout": 32, "inviteTimeout": 47, "joinability": "Hqi33TcBGkc0HjUc", "leaderElectionGracePeriod": 27, "manualRejoin": true, "maxActiveSessions": 22, "maxPlayers": 5, "minPlayers": 31, "name": "NcJqrKxnMzSYoc4Z", "persistent": false, "preferredClaimKeys": ["EKZUTz3GvCAZ5j24", "acYHbrryHB6GO9zP", "3FaepA3b3YJ9nJM6"], "requestedRegions": ["vtT27xv85K5MU2qm", "beqaVemINdClpF7O", "vlBIEgjse5kd6GED"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "type": "yq5E5HleLoog4me2"}' \
    'NBFp62xlXvVcJerT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'PW02PWsHiKYArAxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'KBfBfDlrQQuAc10D' \
    'jjwMv4vrIPRtvhQI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "yLarjaLOKnX51yAB"}' \
    '8Pa3uNGKhaLlJzJM' \
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
    '{"SnJIIgsAVmaGYxUX": {}, "1B9oVuzG2CnYX2YB": {}, "F2g7TVtzYEHUodh3": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["iUfBthbepUCTWiZ1", "uqh7GAi4FEIu44u8", "3ZLRxYlYqlpq03BG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'UL0uzElixc023dIv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"clientVersion": "DiA0tQWlHwBcTtzt", "createdRegion": "x3VAl6tXFbnATCzU", "deployment": "OIzVcy9k3ie64Vnw", "description": "a0ClGQJultJe32Ai", "gameMode": "wKadEoIVmprwPsa9", "ip": "YD92CX0rITajpwHI", "port": 94, "region": "cRAn51rVAQSxp4qT", "serverId": "B54mKA3V9DKlCeZ7", "source": "mLYsHooOIaxIpb1c", "status": "IOJPS3lJ80YJ41U4"}' \
    'ooQ980ywmg1pWpWi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    't1QC7FKe0fnHUlmU' \
    '1unGKM0tgfeWy47b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'bwMI4gGmvK9gW596' \
    'FwBNrFXt3TAuKBwB' \
    'cD12ae6r3hHwya4N' \
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
    '{"ids": ["pdOzg3hr6ucHf7db", "h2iKNUl0qJqzoKMR", "MG541PAiNjULsx4S"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'nKNXLMUaDSwwQlnN' \
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
    '{"psn": {"clientId": "RZJHBSB4fZWEFIZs", "clientSecret": "28Ff1kZp1Zktx3N7", "scope": "WNMYIfcDKbLu8pnK"}}' \
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
    'XBOX' \
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
    'PdQhim9QKUAFTVYe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'lIlGJg9wdc8bihhW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'jfZpfcFBUsnnDJlm' \
    'D1iEokbUiYzCQh2i' \
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
    'NTwtnohddMzMTQ9P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    '7sYLDWAJOA75K4BY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "J2fkqYJoF2FI3vyy", "attributes": {"qRzc20O7FdsJP1G9": {}, "tyBTfERXdvgD1Qf7": {}, "Ot2DkUt3yexZBRvx": {}}, "autoJoin": false, "backfillTicketID": "nEBhXtAVxCd3meTr", "clientVersion": "T7cF9oVCh89wNOkK", "configurationName": "YssVejcL3kR3hCGN", "customURLGRPC": "gaJmuALlMQl9RLrt", "deployment": "hbfp0VgweLlT2sY3", "dsSource": "SsTnDQY7kKU2u06Q", "fallbackClaimKeys": ["4veujxtyQENvJrBC", "qeg67d4RWOqO4U0b", "itNQLzwRoWnR0Abk"], "inactiveTimeout": 58, "inviteTimeout": 86, "joinability": "PY70FmvviVIBbcuj", "matchPool": "F8Vk5qb8NhWWwaxy", "maxPlayers": 79, "minPlayers": 92, "preferredClaimKeys": ["chkt8l5IPSrwrJl7", "wYIVw13NCo9yXlbQ", "52FTHTCj6SEAzT7T"], "requestedRegions": ["OpyiuvvQUm29Iacq", "4XRLaA643nTMtXSA", "yejnny0Ju13b6o5u"], "serverName": "B2XM6IHy7EEvHyLm", "storage": {"leader": {"cvrZZOdwe1x8RjU6": {}, "Bi8JXE52sUBBq2Si": {}, "mQQoLbe5YOJvxGRx": {}}}, "teams": [{"parties": [{"partyID": "UzrTwagH7BMT1IZK", "userIDs": ["TdNFVBQ1crBXAupA", "TO8uXsqVpdiWo8Sj", "DAM0Riw8wLYW3n4F"]}, {"partyID": "3LD1EDwBXw5uBYeQ", "userIDs": ["ZOzATNSV9E9yyNb7", "yaLXzAVYymOuhCkZ", "u4htrsf8eIFSovTG"]}, {"partyID": "XaMsq8ePN1oco2jx", "userIDs": ["8Upe8SjMvpqM8pug", "gOEdG47gD5i2Ni6A", "nWn3NdEPhNHSH7eK"]}], "teamID": "DfRcngEpTnRUQr3R", "userIDs": ["LOM1vEx4gqDY6jwy", "KRxhkLe5zohg9s9u", "tRQt28b6o3K0COF7"]}, {"parties": [{"partyID": "4tz6aeXZOYwbwjMN", "userIDs": ["dxKWlBfnRyFS0Ed7", "gTM5AVrtBQiDTcNn", "Za6Zuxk6u6HXXdiC"]}, {"partyID": "9ZDj4E4mv12FNXyp", "userIDs": ["oOLl13j84P0KqirJ", "4PkMFtsnFfz8Ew0X", "8fBuBSKLSQ4GvLtz"]}, {"partyID": "50D3rpBfBovqLwXB", "userIDs": ["uT30EYeRj17xGhaB", "KoUfiHjGmCyPsKCJ", "Tv1ic9gvagF2cSuz"]}], "teamID": "tsJ5tj64gV7nmDk2", "userIDs": ["9mcjSuz9vbNStqPt", "QmQN6eKAGiZFCftT", "0RWECdjWYrnulxcC"]}, {"parties": [{"partyID": "KAru8pOaAVLDB4k3", "userIDs": ["JwkdaxR7GJpYmuYC", "PG181q9GA5DydC2D", "8UT6KOc4VPDUR9ay"]}, {"partyID": "azqXRqegIUicYXXz", "userIDs": ["xsBFrUs9BYp6TgCe", "jBd5o7iTST7R3Kbb", "QGERMNpqWb51y5RU"]}, {"partyID": "zvMfTkPy0fGvTGgf", "userIDs": ["LKsg0b1Bq78cE5O5", "pmPnbiPJ9j4vxmbH", "3rVaauufxkPHElug"]}], "teamID": "48TgfNu0rqXUOyTo", "userIDs": ["LPIREGIKlJt3EP9k", "KwkENQ8VOHGwbADM", "fuOmh0lciRhVZ2De"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["ODXMzLSrzoiBnYi5", "UWs3tYlYeMoCimJy", "SocRvUWDOrFZKPNo"], "tieTeamsSessionLifetime": true, "type": "9AWtLK9TFgi9j2XM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"h9WpifqjNjLOtNQt": {}, "s2yxf6MLZJ2jZfZb": {}, "pTJezzriCDWXT59S": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "Ru0YqUxKDc84OMIz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'vTScdbKBsAyJMz4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'LNDvhB4Eoes9a6Xa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"JeRbzTPwD3jxF7vx": {}, "RUY0ilrNoFT98Sgt": {}, "Jd4Z5f8nfaKqdZFL": {}}, "backfillTicketID": "bZEHxsDxeR6d7r1S", "clientVersion": "Qw80JfMpPrSqYypR", "deployment": "Unq5o4ETeCUYG9cc", "fallbackClaimKeys": ["Tt7Wxw8OQ13t3uTw", "6zQuoZcXQpoTOxe8", "y1jorNsg9ZKYCKoI"], "inactiveTimeout": 91, "inviteTimeout": 8, "joinability": "yXtHzoWGdYohxMp3", "matchPool": "uOQIybqWfG9BJ6FV", "maxPlayers": 75, "minPlayers": 5, "preferredClaimKeys": ["lbYHtbPtaxvagSlp", "GgVTF6VeDAPOGBww", "eyFfXEOEAEtbag82"], "requestedRegions": ["KgBgyCd5vjkfz3eR", "4DtNp129hzBw3xLU", "cCEt0DzmkJq1sml5"], "teams": [{"parties": [{"partyID": "bYt76BNsi4giR943", "userIDs": ["4WpKKdzxoufCNlFo", "OcWQQy4bjmQeEweo", "BHTdwAk7ZQnbqY1c"]}, {"partyID": "QwVEtAr5kKKAo9MM", "userIDs": ["2Cqm84jVi9kIpqgr", "zpUkNOBWydXV0Fi0", "2aFr8CDapjwNOl4k"]}, {"partyID": "8rVNrm8drv8QD2JO", "userIDs": ["e2Ntz7EFvowPgIGu", "etxFMqXCQMAqQ2ZR", "GzNtrThFa9XU8mos"]}], "teamID": "luiHZJ7O8sAQ32wj", "userIDs": ["9uaDzsr9xYiWRuuz", "QJiLc1eI9w3JEhxP", "GbEk7s7gw07Floun"]}, {"parties": [{"partyID": "C3vJKBC7SwgoViPe", "userIDs": ["IB4Ehy0Y5aSJVDgi", "nxAM77eY9C14Fbfi", "I2NPvl1kCY5bEokx"]}, {"partyID": "XxkWZbjf7GZxaoss", "userIDs": ["Qmjo69wohJFyTNk5", "FGUPhR4LEZvz3EjF", "R7996Ug5m4axDV5u"]}, {"partyID": "TcYsoahUrELQ1btj", "userIDs": ["JOqQMgZWAU6E92nH", "Jzvw7tnYtGfv0EJy", "jBu4EzwRjD7jmQJe"]}], "teamID": "FPghqamSc5y0X48e", "userIDs": ["T7Mluexk87b9Z5BT", "sEA3EdmW8saabP4x", "RowfNojzPXI2v0pr"]}, {"parties": [{"partyID": "R3OEey0MkZwS6TYw", "userIDs": ["NN3UYhic03qGEg5f", "NzBVrjo3g8CfRwty", "l1HeT7VEPgG40QyX"]}, {"partyID": "zsOzgck078IghoQB", "userIDs": ["p2mWAOYksczxBS0O", "BCa2vWadLmQtYKmE", "MzicbuL2S3RiW8dL"]}, {"partyID": "TCBfGUdVEdvdQL7s", "userIDs": ["VwcZ2PofaJoSqtrE", "OqxH46fRTSZoDdT0", "fefo74eg3Nt2c0r4"]}], "teamID": "GqF0NHglOVuNZ9Lz", "userIDs": ["NeJnBurh54CWbYb0", "Pebyt8b4DGscjwri", "zsFUgYwbaLvqvQ2N"]}], "ticketIDs": ["bmDITuymTBjn3d2s", "FzMS3QaVjZF7Ax61", "15Kg9U8vrQJXQxoI"], "tieTeamsSessionLifetime": false, "type": "MM47f1UreUpxEkXI", "version": 2}' \
    '647XQ3koaAfZIim0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'sFPm1YN27bojDVaZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Lpx4kEWYkO6KrKUM": {}, "hJrASBh61hmWKSSr": {}, "F35anDGvur19V18o": {}}, "backfillTicketID": "IrUKXttgAI2QdWJF", "clientVersion": "LmoPEgd8EMspOs8n", "deployment": "kic9gj5vyUMAAmIH", "fallbackClaimKeys": ["YbsxG5N066FXb88S", "bLOa21DiSFsm0XXQ", "JWszvTQEuALzDNp1"], "inactiveTimeout": 91, "inviteTimeout": 11, "joinability": "Z58aDllwzTRHak1M", "matchPool": "Xxj7Esrg7900nml5", "maxPlayers": 56, "minPlayers": 39, "preferredClaimKeys": ["idsK9dCEzhVnOv0P", "QbVIaKiHfoeorY7A", "1otGFyv2SMjbEr50"], "requestedRegions": ["qGdCZIc6EFqBKxbS", "7Q2OgRucL1jwRXzf", "jDZZBmOau6syme06"], "teams": [{"parties": [{"partyID": "c6SKLc2mEC3IXl5X", "userIDs": ["CbkOfHaGr5kdazly", "pvt6lSLfU7HByGXP", "Mqxj4hBgVY3YAxZL"]}, {"partyID": "KbcOdyjqf6Q4oiwo", "userIDs": ["JcaRMEb15LBlTVuf", "c5ZyODR2NVyn4PRq", "f3eRbZqBAoKGcVCd"]}, {"partyID": "MiSNV4qBrt1kcLmR", "userIDs": ["v6EJtl5xWnsb8oWq", "94RImNWVIJnhhwFD", "V1VitaomvWTzdsW4"]}], "teamID": "N70wYS4Kj7Yi2Vvo", "userIDs": ["QNW8Yc481dYdvGxJ", "AMDRA1LF7jdWlekF", "wO94VBCV9qJhWva2"]}, {"parties": [{"partyID": "FPBujX0geYCpGJM4", "userIDs": ["sqsPNJMiZXXOFwmG", "WAvNF0Z0GkwxUNYy", "NwGiKrknH0Y5mrQg"]}, {"partyID": "LC6D2qsFiQHglUQM", "userIDs": ["Zi5WjMZfOadpgegC", "UjTdi1Ehr8OtqpNJ", "9R8TuNy4ejmVA3vM"]}, {"partyID": "CsGyPd12B8QNUz0h", "userIDs": ["FFNbH6j2W4roZM2U", "KAXEEsL5D0oiFchQ", "nVeq3g2AB2WIRUQm"]}], "teamID": "auIY5HXCZ0W4XmWP", "userIDs": ["0HzSdiylLhVYszm8", "xY33OQbumu2QHLyZ", "NuysyM4OfCzdQCXM"]}, {"parties": [{"partyID": "AWnf87YPNOe9Eevf", "userIDs": ["1fhMg1E2k7QLFrVg", "tX7y0fPOieDCow2z", "XyFFVpM87yqEwEac"]}, {"partyID": "QMTlqN4LKkxJ5v3S", "userIDs": ["BafnKNiMPbFkFGA8", "5W3HJkqgS2B37wwo", "PYOHiIsxmsLBPBJu"]}, {"partyID": "NLnWRrtW870qD88Z", "userIDs": ["cduZSe7W20UZcDai", "q0nEZ7PyhqFJkDCl", "OsKmfsgJdmzsDPsW"]}], "teamID": "h1k0cQ08NG6dX2TZ", "userIDs": ["kil67kRngoUa83EC", "h1gqPeS193TNNzot", "3sVli3GN2XTrFibR"]}], "ticketIDs": ["AhzzEWzWlTY70qdg", "JRvpZrSpWX3KEe2B", "jV00ReCXFffjJJxl"], "tieTeamsSessionLifetime": false, "type": "ykmXHYmkRlg7gYs6", "version": 42}' \
    'HWDAfvXwdxbyp4HA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "PbBbNPStVBUpKgOs"}' \
    'sFkz0F36piDYXeHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '7FHls3nyvconqbHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'qKLQKe3xmj6s0Gqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"Wncp5LrqbiKudv9z": "75SzoCV8ZMi2o1nR", "482D6gNClk9c87ho": "saPFC5zBW3ZgVZCj", "9ObVGT0Scwl4kNmC": "i15XTJTgCNNH7RtG"}, "platformID": "5Xmo9Q0Wb07N17fk", "userID": "xZSc6VbE0AGcekjM"}' \
    'NHuPXtz8tXxrmzaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'MUguyDoN91uc28Ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "SpGt1g0GGbT4Hf2P"}' \
    'PKOldkbgX9CWJKwX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'XSbv5eg9q86IaDFj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'jx6uZerWbtwTX9gN' \
    'RByjbE8lOLAfTXKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'zbrddqcKLa7LevxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'HOSEhQRZIp693lRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'tc43atCuCFxbfbz4' \
    'aQERziPL4dHhOqG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "KDdUvk0LEi26Ls7m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'jRxNmvvNtjJNQepU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"TGhwlY4lPzlsCR5r": {}, "VsyfcH7WjP7HuGz3": {}, "b5WAEvdRF9bqMj4r": {}}, "inactiveTimeout": 30, "inviteTimeout": 2, "joinability": "B19VE838c7OydVw0", "maxPlayers": 52, "minPlayers": 57, "type": "rW8i8krFWJhe03co", "version": 90}' \
    'Ozx6iCJTu60IifzM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"hkk5PxsjqbCKpMv2": {}, "Yky9DYkD2sIllFtB": {}, "tXJKG3rqBmILhtWm": {}}, "inactiveTimeout": 74, "inviteTimeout": 90, "joinability": "MxBlrRytER1qdTel", "maxPlayers": 65, "minPlayers": 5, "type": "AadM9y66Drf4SSGG", "version": 39}' \
    'C2nzS9SiGUjVAw4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '3q6JRHcn7KaoCEkR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'do6qHYIZWnXqQ1oH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"FJ9Q0vqsL9SomqWs": "GA76yxi0QzZWfmP2", "sx0KO5bEJaPnAFjs": "odyJQVVBrShGbIIu", "qK8C403HgoXCR6XO": "MXwKdfqk8T4QHK30"}, "platformID": "EX0FclpDl5Hsurac", "userID": "O5MnjnxD1OXkxShF"}' \
    'VQTRekLfjmy8zosR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "CRgVwbrQKmb01yA7"}' \
    'U7dGMjupZkZQY8CN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'yT4k3DIbfT22G5Np' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"E130YWSgxpKWtdtd": {}, "tVW9anENmxb9e7vX": {}, "ZV3ig8Jg5VByeI3y": {}}' \
    'cMcYYBixKJXCISQd' \
    'wec1m8BusV9tUh74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'KVo6Xqjz2xUKLNWS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'mYyVvyelIJ8QgaLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'qi836ULa7cfZl4Vu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'Y6rsZyo6CBRRnoOi' \
    'kIxXKKIR6kPmswm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'TCAU1cKApdJDnE73' \
    'GLmSZns5owBhoUg4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"LsGP6KLPXkvUv2Xi": {}, "XaBzsmaxjTZPlLit": {}, "ytGka7Kv5TacQKF4": {}}, "configurationName": "OlRGdmXxETLEQrr3", "inactiveTimeout": 75, "inviteTimeout": 58, "joinability": "Xit6boOLGCcg16Dq", "maxPlayers": 46, "members": [{"ID": "SNNUZuiynZ64Iwnc", "PlatformID": "ZPk82GF3eTC0vzZU", "PlatformUserID": "Dj9dzGgGVxo9OHgf"}, {"ID": "HumyfuBNisecYbcO", "PlatformID": "pR45VDlvSc0Mr7Im", "PlatformUserID": "wCwGqOf0bNs97KvK"}, {"ID": "yj3MqS7Dcmtfh50e", "PlatformID": "ObbrmgjhWK0x0Zid", "PlatformUserID": "AJ1CU1eD1La16Bw3"}], "minPlayers": 72, "textChat": false, "type": "bUnUDh5yGjjv4Mwr"}' \
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
    '{"v2vancmR6Z7rb21A": {}, "2E9pX0BWCMqPsRk5": {}, "htdM5T3fDSrSHrko": {}}' \
    'qv2mM6soMaTvQq2a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"9YdFNtRVSO0js0hG": {}, "9xmSnzd7zgUxAogc": {}, "nGkXk17QPkJHRhmL": {}}' \
    'KQuQVFSKiXl8G2uf' \
    '6E8EajXLSAS8MKMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["xQ1QyJCpKedhuzI7", "G9NCKKXu1bqI2M5P", "mXfKnQ7BYGjCUDMO"]}' \
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
    '{"crossplayEnabled": true, "currentPlatform": "bppC6CMYDm5ge659", "data": {"UDEOF6gp5UfmjtiV": {}, "bqJnZcrqrPye7fCw": {}, "i7Il2wIFlHm9N6ow": {}}, "platforms": [{"name": "MHMtJy1Oqn59tEGm", "userID": "9NYeUT5P0nx8TqSZ"}, {"name": "dZ5C8mFI9TnvzEqB", "userID": "NMF9CZvPxT5zbreM"}, {"name": "c9fBoU3RHNDFjLKF", "userID": "repy56eW1kmb15Qe"}], "roles": ["IQF51c4MqJzDSvEL", "gBe6dboSdhkBzAzP", "kt1efGJeJaxyHYut"], "simultaneousPlatform": "gXucx85vHA009FAb"}' \
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
