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
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"metricExcludedNamespaces": ["twYCA9kPI6LZrkq6", "Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh"], "regionRetryMapping": {"4n8mzZ0m8SAMTwE6": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "4CUkNmKJfh5pUkHO": ["DpoMF78NY4YkHs1c", "nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N"], "vyE3cwyALczNIicX": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"]}, "regionURLMapping": ["n7Z4U68su8XfqlqN", "iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y"], "testGameMode": "sLEzth6mXhzkzWkF", "testRegionURLMapping": ["eZSoEAcBdW19m4eu", "6d5tA5jUmiTqpyhP", "FdxLzFQN05MYzYiK"], "testTargetUserIDs": ["We5dNRljv7IPrDQQ", "Rgat0SevkLGMS0ly", "uI9a2I9u6Vpbsx5w"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 96}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 15}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-handle-upload-xbox-pfx-certificate 'fofvnnSuB0y5WUlr' 'tmp.dat' 'MdI4sNveabntBSxT' --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 9, "PSNSupportedPlatforms": ["kgghGoYupD391C2q", "tPYokahFjkQsfCaT", "mt1d67FXGk2s9Q0m"], "SessionTitle": "PVo3twu0MesTCf9x", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "WN2laRlxfcjHfYak", "XboxServiceConfigID": "UCTqGkE7wcWfDslp", "XboxSessionTemplateName": "JSqGAXQ0yYoNRKd3", "XboxTitleID": "IL5TAQ6iiPlSC2uE", "localizedSessionName": {"4o5Vwdo3fePqIJA8": {}, "IHtrkmu0hpDDWVAl": {}, "a2l5BYNtIuS5S5XU": {}}}, "PSNBaseUrl": "djsoqwGyzzWi9gwQ", "appName": "Yv7t1o7TTr1DmrhZ", "attributes": {"v15T7quIOvBMcaYm": {}, "vCkGZ5dAgqxpBFma": {}, "Loxozr6wfNPX2bOI": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "MvqtlB2jJCSQT279", "customURLGRPC": "ZZPYGu0rdlgdWyOt", "deployment": "Xi3choQrpOsDBU5S", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "U8MyKrQpM4hkkK6K", "enableSecret": true, "fallbackClaimKeys": ["XNB3Gv0IqmF51Tkh", "jYnaq6foWvXa3bMr", "XsDr6kILsSSyDdmy"], "immutableStorage": false, "inactiveTimeout": 20, "inviteTimeout": 26, "joinability": "7il35MXbN9oCMNqq", "leaderElectionGracePeriod": 84, "manualRejoin": false, "maxActiveSessions": 19, "maxPlayers": 10, "minPlayers": 93, "name": "4IxjUkl535X3ateE", "persistent": true, "preferredClaimKeys": ["DpADz1x3poD3Qgb3", "boLQQ1MzH7Qm8bwb", "mXgdAPh1EThG96gA"], "requestedRegions": ["FKK2WDgCcxvONZm3", "EeERmDnyeFoF7VSZ", "6pf3vneSD2Tb3g7m"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "UhAEtrmjqU6YE3p4"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 33, "PSNSupportedPlatforms": ["1GXlvPG6bFYReVHQ", "ipcCx9Zw5D2L7vIY", "hGGSyEW4ZJJ42d3P"], "SessionTitle": "BddN8S48l9lyNApf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "xqMrj3oZk03QXcKM", "XboxServiceConfigID": "DYDDxHSZjtqXyJ58", "XboxSessionTemplateName": "f7Gc26SaiGVkydwY", "XboxTitleID": "WQG26yUZNmTBcvrb", "localizedSessionName": {"YCwZtxFHyPLtI8il": {}, "byDPUIj88cekdqCt": {}, "81P1ktfIovmv9gsR": {}}}, "PSNBaseUrl": "5cJcHm3SZLxoRDFu", "appName": "uuySj29a9LJE8HoR", "attributes": {"S1X2PFAAMwzHPxB1": {}, "UskYs4Yw20DOqOBS": {}, "C2DKHRuPMMWH8Yb3": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "UBJCjfcnLRfxeCSz", "customURLGRPC": "9WEi8KlloeH0JT1y", "deployment": "duat2vQR3biBfsu4", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "4EXsXzOXQAk4mqrx", "enableSecret": true, "fallbackClaimKeys": ["t4SqYUTLDx9gIiDa", "ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND"], "immutableStorage": true, "inactiveTimeout": 100, "inviteTimeout": 11, "joinability": "ehwH3q31A806DJga", "leaderElectionGracePeriod": 38, "manualRejoin": false, "maxActiveSessions": 51, "maxPlayers": 4, "minPlayers": 11, "name": "6z3LNUj7fdgLA84Z", "persistent": false, "preferredClaimKeys": ["YYk6QEgJjBbEDoNf", "3n0hEoRCAcf80zfF", "yabWAgIUXiI07A68"], "requestedRegions": ["eaqC2J9jyEW6GLbc", "0NaKDUL3sa13lk1d", "QBHO86IlBhnetU4R"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "TqUXlTDBzOuYsaZA"}' '2yyd4mbqoOfADMMA' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'XFaY9eKa699bRVhy' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'aKwwrAP2aMlu7Wtj' 'CtoYetOO847g8Oud' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "OfjnCuHZ3c46IjGa"}' '23YvYmmDg7VYPXIu' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"vUYTZBRujIUE1Tq5": {}, "jyAZvkRCMNFIurjh": {}, "2imdb4rbkXj0ZwsV": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["C0gL97ZVJSPqJiwv", "1qlYB1RSKs6gQxC3", "Gb7S0o4zGYY7KQI1"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' 'a1MbqqZtfNWql4nm' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'wAft4gqkNNlWkD9e' 'OziYRFOn0jJLHC9L' 'xhvNXTwGBCtohLtl' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "9Zuhytm5UDrT6QXC", "clientSecret": "s5SPBbRPZTF6oQAX", "scope": "VG7tnsZg5QgXjvyG"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'JPN4eXbJE5Vs2Gcy' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'omQoIXimBJehyxlN' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'sjUgxBkF6wFPoJeQ' 'ediogEhhM2rIizGd' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'KvOPdq5xrgxSmy1D' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'N9LFkYW5DQyj4bj5' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "Ro2ogaKt2ujQSa3Z", "attributes": {"db65UXmy0Zp6iIaT": {}, "IKUkmkk9QM0NBMA9": {}, "ORxpzwLR2AK6eXUG": {}}, "autoJoin": true, "backfillTicketID": "40V6Do5sYadCCFrH", "clientVersion": "HC3DpZxkrQDXuNFv", "configurationName": "iMarv8mnfHK8CCmE", "customURLGRPC": "2lPnsbD3SGEdlwuU", "deployment": "ccE536ugBp3HBvep", "dsSource": "nDCjgyJlXe36mgWj", "fallbackClaimKeys": ["LfFmteue9nzJ6fH2", "4T805tVg8JqU0jZp", "jvsugAOS7u8RiWye"], "inactiveTimeout": 35, "inviteTimeout": 76, "joinability": "CSa8SRgwsAj1ik1j", "matchPool": "glaDXTvKCWwNTAhd", "maxPlayers": 49, "minPlayers": 47, "preferredClaimKeys": ["mDkQhtrHWwRVnwVB", "OqOHi8pWGd1juYhi", "qjRJOqB5F93zFQbJ"], "requestedRegions": ["ndUDpdONneAczbBd", "Hb2slt71B1SmZp2J", "Zp50CnPb71ORYcmQ"], "serverName": "bTU5JX8ccLjMXJRk", "storage": {"leader": {"0eaKQDOJvrTefglS": {}, "s6g4iY9u02aCNYIW": {}, "ekp18lOC3mNqF7Bl": {}}}, "teams": [{"UserIDs": ["0LcghVHfPEspxwhR", "ON0bc1eMbEIjowLq", "c3ecjXJbZDKKoxLE"], "parties": [{"partyID": "1Y3Dymtj3giPg4x4", "userIDs": ["yiPX6ues1Hhhkg1y", "LVbLFzHEP8cM4NTw", "r0KHaAsmTej52WKi"]}, {"partyID": "6tArAURt9plCSVq8", "userIDs": ["PdH6hJPUAc0RVwXg", "AgntLMCuaXBWQi6B", "qPg4xr0lCancUZGC"]}, {"partyID": "HsZYoLfR1KtOv7Zy", "userIDs": ["0b65uvuKNuy0ytZQ", "7M6Nzy1adnSKOLFK", "x1dX4LuWJu3pDMUA"]}]}, {"UserIDs": ["eeZ97SBROPYuG6Xq", "P6oo7G73zdxTgOfn", "wIdlNa29fDLh741I"], "parties": [{"partyID": "slKHzGlLKWUtDQs6", "userIDs": ["1OQAoxyyQpRWCiiP", "DGQhNPEwiJCf2XJV", "rlzqQls1ozhLVA3k"]}, {"partyID": "E8jKvgatOEBM70Td", "userIDs": ["lNBJYOmpu1VCarzB", "sV6xnZ5Jrzzjrcau", "g6CWVG8SWP3glU6m"]}, {"partyID": "uswVJnNnN7kAa7j0", "userIDs": ["riFc5HTHQIoVsGo7", "dwV9DBqFKHQkETJy", "TlUrwDTnoujQD4IE"]}]}, {"UserIDs": ["iH9Z5qXn3aoRtlqO", "ECohViHA5CzgFSy8", "X1A3PrIfapq5AAeM"], "parties": [{"partyID": "e4L3mDWORBVXTIIJ", "userIDs": ["M9XsYIIZxiXNMR9B", "gaWcFX3SUBhyoTsM", "WPAxUMkawaGpAyrI"]}, {"partyID": "wMif3BOdkocVTd4B", "userIDs": ["xqGWV6mTJ0sQs6XN", "bjvqhnUVLWu8olKd", "xL6ozRmDD0jJvlfV"]}, {"partyID": "5OemPYdYT7DROCjt", "userIDs": ["uzFMbAG9YI89hmgu", "B8FOTjMLo4b9rIzq", "YkEpstyVTBcrM8rG"]}]}], "textChat": false, "ticketIDs": ["rH0zcswwVeMK6MbG", "IVIu8vvwLc7KY3uV", "oJXTIMtpgkieDyF9"], "tieTeamsSessionLifetime": true, "type": "lGdMiHKxbWCYzo8y"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"O2KTK9tmmOnYnOpa": {}, "s6ghP1y4Zi7s7QBl": {}, "k44Z44B1GZgKg4uK": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "xaCgcGLuC3brWdTY"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'CfHkIySok5DiXZtL' --login_with_auth "Bearer foo"
session-get-game-session 'W87rGysryod3dNQr' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"msApRA6HX3RwrKt2": {}, "ecozL0TOg54vCE48": {}, "L5oLF6M4lNa4JUMS": {}}, "backfillTicketID": "HNgqRqCV7usamANk", "clientVersion": "ZlOX9Sfo95HgXqKh", "deployment": "TPkwfLM9uSybRzWe", "fallbackClaimKeys": ["k2gZvRrvr0n9d9lv", "ccKMLhrTrcBE2ItB", "S3KtKZWe8aoFzAyB"], "inactiveTimeout": 79, "inviteTimeout": 63, "joinability": "vim02jBOxrZDyvpc", "matchPool": "LYOWA8NjxOnaEok4", "maxPlayers": 26, "minPlayers": 83, "preferredClaimKeys": ["lq2faBcAXXKlhvyH", "8paOJtxqMPpcVfRw", "Nj547fH0XrKEDpEY"], "requestedRegions": ["8VnocGAjci0V3tBf", "2jnHGKXphn50c9tN", "LDljhZ2jxLRX3z46"], "teams": [{"UserIDs": ["OCaGBeMfPlNos4yB", "RjrERHEonAZR8GmE", "u0q1p6QCyY6vSkVF"], "parties": [{"partyID": "WdsbYuVEGVxYheR3", "userIDs": ["j5mNZ6vwv7K8Asvt", "1j1Rx59hesNWy2Nv", "Z85DDKDAF8KDsBZO"]}, {"partyID": "uYQJ03BAHZ7c53q7", "userIDs": ["akMpcmnnx6RVBrop", "9v7aZK3h65hbN15z", "fQSfQrtfF3TQN0Oc"]}, {"partyID": "NDLr36vzohZyjMQA", "userIDs": ["g5mPYhrLTyU8Ohgf", "Y9JQYGF4bYXEcENx", "9xZlAchob44lONDD"]}]}, {"UserIDs": ["wMvgI0HlyPR7wZNi", "VsF6xG2mXEQdbzIV", "y8alncV7vWgSHdfo"], "parties": [{"partyID": "07UctPErqxyMyOK0", "userIDs": ["6MqQBErxgjVBycvU", "4PbmRDcrg0DjQjBE", "CXvea7H1m2lJFRZ3"]}, {"partyID": "ZprZ60zMjhTHeh94", "userIDs": ["TSenE5hCFkIf5weq", "Z18MH57l2Zsrh90E", "TtYmGukz3MnlrjcH"]}, {"partyID": "p6B8Vj7rXFgDnDkd", "userIDs": ["Z9bpjb1tdA3QhjCM", "W64f4XhIjSoTB2NM", "KtezapPr2QEPx3zT"]}]}, {"UserIDs": ["xBGtEJIYppuUSsKo", "Hw2hyd12uSE7BEv3", "aevq6iohU1cg4W1I"], "parties": [{"partyID": "S3Uv1BpWoJBaqdg2", "userIDs": ["FHcunsS1lnaO2m9v", "qjhbeK2qN8g6x2Py", "YDo5R3hLiD5sf5y1"]}, {"partyID": "JsxJNGmyt0SQDUDo", "userIDs": ["WBZVGLlkUetzCAWc", "9x1aMjgGim51T107", "XIZRZ7tZdIs0xf4c"]}, {"partyID": "zdt7zqmSKxOEQlVc", "userIDs": ["x6GqsBq8vdhWVnuY", "LgpZehK0G2nmyuVi", "B9kRTcSQdTnNYGeA"]}]}], "ticketIDs": ["fYFG3wSkHKufBdS3", "ZOokZB4cXnAXyuGz", "6LlxHv8SwyagYvDJ"], "tieTeamsSessionLifetime": false, "type": "w3UNgIGj2jZtEYT8", "version": 38}' 'edgS1fUfKmihDbmu' --login_with_auth "Bearer foo"
session-delete-game-session '8ePWlQMVDXEHeiGT' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"nwyEw6hIWDZrpP7r": {}, "z3ISW510kHr4isTK": {}, "Wjmv67nuHCXWfwnw": {}}, "backfillTicketID": "GioVwVzmmBVVFfpq", "clientVersion": "x1AeLtzcPJ3jtDYB", "deployment": "o4FUTH7CGfKSyxgR", "fallbackClaimKeys": ["R1DiCqSMzpqIFGLk", "Ds7ACC1RgBfoNrHl", "Fi2qJLgmBLE35Yhy"], "inactiveTimeout": 17, "inviteTimeout": 83, "joinability": "DV90SeI5yppBHoyt", "matchPool": "VznCgNyx9fbT63Sh", "maxPlayers": 63, "minPlayers": 14, "preferredClaimKeys": ["DgB7n4C97uAPP8PA", "TLpUpxeJlsBJT6Hh", "3OMjAjq2mK8lbSEE"], "requestedRegions": ["elxnb5QxWG2HFnZl", "A6HKWW4fI1IQcoBQ", "ELcNlZkqTZrKgXNw"], "teams": [{"UserIDs": ["vm4e5GX6H742Oixh", "tAoKiVm6URT95Xhn", "UcvWB28MpusuhhDJ"], "parties": [{"partyID": "5slzgiWZEtyd56Lf", "userIDs": ["xnbY97jjYgXchCbk", "XX26uEdCfQaMAQuT", "KfC0I2kNjCMDtDMr"]}, {"partyID": "entgn3DhqciwIeSh", "userIDs": ["F9RKb9vvxuJlhXbW", "hbwPwToC6knjVwVn", "zaqSfJiQFC2gXoda"]}, {"partyID": "0kg16yUSpSOAjHJW", "userIDs": ["wfCjYwWkLob9gKLq", "s2nEZhpByfHZinxN", "fgPAwkMBsznlBUqn"]}]}, {"UserIDs": ["LT4AbGptKaWNvPbp", "g7yrRvXfZ6rvgvEY", "3Hht1SwqTsKKKo37"], "parties": [{"partyID": "NHDOQe91Ps3ztUIV", "userIDs": ["0dS6hIH9c4Vfkyrw", "puXxbaERbfgPmi0e", "Hkt1mr9EOIFg0dnW"]}, {"partyID": "IYN2NVL70Iw157g0", "userIDs": ["0jr9b8MuYmmeKTmB", "NvGYxEQdf3ewoGGo", "Y7xmFNAmjDDCvs78"]}, {"partyID": "mcMdiS76YApGJ9uf", "userIDs": ["wLYkqIgLuZS6hsQr", "yiEtOAbpeUNf26Uq", "kCfgCUYBn2xaOBdP"]}]}, {"UserIDs": ["F0JmX8qwU1cTuHHP", "B5S3DvPRCzBrVUxm", "DOj3cvRFaTC11W0T"], "parties": [{"partyID": "GTCm4fZWuk6pQxDQ", "userIDs": ["pKqxLGeMvr9TsvcM", "Q7dBsaIecRxIsZvD", "6rmzVr5XT1Nxw0v1"]}, {"partyID": "dMQ9Rrbk6C2cVWf6", "userIDs": ["ttvbU1PO6ApCD2VX", "idT7w0Oc15N8WXBP", "p17PAewqSm5x3B4t"]}, {"partyID": "7WQnp8jXZedgt5cy", "userIDs": ["Ne27HLtwtVOaxgP6", "Jbct8puMybYGxD9I", "PmmsLmu3kaPj0O4z"]}]}], "ticketIDs": ["d8Tb7cUNGPTBxiFF", "Crn7djjs69FTFVGU", "VhvKhJCmeisql14m"], "tieTeamsSessionLifetime": false, "type": "HVbMPimNhcZsU3VA", "version": 6}' 'h23GUS2amU7syGlE' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "lXdEAOrVSnLocLVV"}' 'YamQc4wcG5nDBLJo' --login_with_auth "Bearer foo"
session-game-session-generate-code 'JHbiQ5duE5p4cfs2' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'E41cK8QTwiIAvxSv' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "NDlmM5nQFMGzs7fz", "userID": "jgyc44mEh9tRk8kn"}' 'YSV30lnroQehMDli' --login_with_auth "Bearer foo"
session-join-game-session '6t9unQLYXxm09wpG' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "AbpEmDY9vLh3u6ED"}' 'sUmrV6kH4OotKwG3' --login_with_auth "Bearer foo"
session-leave-game-session 'UC6XCnnZxF8CmQr1' --login_with_auth "Bearer foo"
session-public-game-session-reject '7W65br34rBBN9tU6' --login_with_auth "Bearer foo"
session-get-session-server-secret 'TDm5GloFSKWM1eym' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "5ydC6p25xCWTqUOY", "userIDs": ["ZENJ1QHZQxPRXH7u", "xBJEECQE1li3Bg7J", "xc9pUnZmvhidwCkZ"]}, {"partyID": "wqjYLfTiCO1NDBvQ", "userIDs": ["vRPnAz4VzW0CpoBC", "byJsF5IjF1c0W338", "HS6CBgVRyihYNZ84"]}, {"partyID": "CVhziXV8HwSmvcvc", "userIDs": ["DKF19yVRafCjOuSY", "ht83AdvBaagTiRJ8", "daGTVX3Bb7jlz5If"]}], "proposedTeams": [{"UserIDs": ["HgKjI9mwJSrN8jkI", "ykR2zbaI6PD7fEsc", "ShnGUGUtV9GJ279G"], "parties": [{"partyID": "DbLNwjm3FK0nnX2p", "userIDs": ["oMfZ1hDHtbh4HtMl", "Fgvh2Dp2SoiIPp1y", "vfAHS0VgLu11A3HT"]}, {"partyID": "ovFi4tPAGfleyCA6", "userIDs": ["jEtcqsnzoVILjkwW", "61duF87aUyrdt4XS", "pWBAetsanzqP8oxf"]}, {"partyID": "rtbECD1CYPwaiBAx", "userIDs": ["fYL8Avt70ZUT2fSk", "3LL0calqxEewuGS4", "69k2hG0WKt4sUman"]}]}, {"UserIDs": ["YxM0UHZVNYzGMNIp", "WoSLkUrfuf4U3WeY", "eA9t2ENKKWrFtHIi"], "parties": [{"partyID": "1CMgKAOG5iDcCR5P", "userIDs": ["bCvDLil8wj9cKM3A", "r6MF35hCER4nGmWG", "gTJfHlJl4tHGa4Xf"]}, {"partyID": "Zcd9CVnGqMX9Fiee", "userIDs": ["EssWEUl07bhwntCV", "qiYOJf5KwMZQjzvj", "Sozv6CTRDl0zp9Cz"]}, {"partyID": "HFwinkBNi4gvqgl6", "userIDs": ["TZ9TGVPmv34h6T7E", "sufmfxKYB4LM6H6Q", "XmpZ9X3fUSR1l9xL"]}]}, {"UserIDs": ["PBsmAUrD9L1IiD6M", "lcEPhMDFzjHZ3sIh", "zOx2CXKlvIomU3pI"], "parties": [{"partyID": "xM9n8D2eLMe3lt9q", "userIDs": ["fx2UDcgVE7L9FK6e", "0MrPc4vtxk9hVKlG", "56HlzGr7XjdyRJun"]}, {"partyID": "ZPkp6ccIBnWyPw8m", "userIDs": ["j7gyQ7XdIszGRj46", "COPipH1MWVTHG0qH", "JCWEfOJpZm9yEYWN"]}, {"partyID": "GMy2pgSGSUOK68eq", "userIDs": ["GJtWf1Ybgg8rdwY9", "bmrvHmO07KNqX9LM", "2IwEsdOGBXBwnzDX"]}]}], "version": 44}' 'WznDe4LQdXfFBii2' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'RAMEX5RMjBFVZGYz' 'QqV8d9mDdUIoiIJF' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "NxuNOmUSWw18T1Ix"}' --login_with_auth "Bearer foo"
session-public-get-party 'VWCxdvPL9e4P01vx' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"P8xj1LyEirURERnE": {}, "MzpImW6sjAHyCK5t": {}, "NanGBrkzUvck3xTt": {}}, "inactiveTimeout": 25, "inviteTimeout": 87, "joinability": "OFMebS4AdlNzwog2", "maxPlayers": 70, "minPlayers": 25, "type": "hErkNhNcECWwchW6", "version": 52}' 'LiEtzVlnkflfn7pH' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"Y48F1dl1q92m3iRl": {}, "fnBAk0CwiAsR65yQ": {}, "9ssuHdGmxncCEr0K": {}}, "inactiveTimeout": 5, "inviteTimeout": 68, "joinability": "geqzGbruNB72HHMk", "maxPlayers": 19, "minPlayers": 7, "type": "zyBB4UFKiaoV0VOe", "version": 25}' 'ypNrp2nFe9FmN86s' --login_with_auth "Bearer foo"
session-public-generate-party-code 'K5LOq4ft5jGcMICP' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'UYnfG6jl9U4jRete' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "IMgzISomCsodJrhQ", "userID": "W41q2OspCZbt3Uta"}' '5I0uGcL1koyHjCH5' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "olYLETRpABAmO2EG"}' 'vJ4UMS93yOxNInDB' --login_with_auth "Bearer foo"
session-public-party-join 'yhnoluO6ti0QP2ss' --login_with_auth "Bearer foo"
session-public-party-leave 'iJ66OzOj84O6tgoh' --login_with_auth "Bearer foo"
session-public-party-reject 'jtC7bzjPpucddXJ5' --login_with_auth "Bearer foo"
session-public-party-cancel 'zifF8y959anrNSle' 'ywHbHig6IKWVZ77K' --login_with_auth "Bearer foo"
session-public-party-kick 'eRWdECaFGzfZ2hxc' 'J2Fnemn7M23SzUo4' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"hNBDh9ZFP1OW0nXO": {}, "ErQPS4VsRoYIK69y": {}, "g9ADCGiXaLs2xjHk": {}}, "configurationName": "inOD975nARHCmhNH", "inactiveTimeout": 91, "inviteTimeout": 94, "joinability": "XuqIHsxvaUoXDmwW", "maxPlayers": 38, "members": [{"ID": "TnjN6wKZGW4y3f0R", "PlatformID": "9s2kndhhZhwAiLsZ", "PlatformUserID": "s4pmLDIQch4IjDq9"}, {"ID": "aT3qZyI0rYsWucAk", "PlatformID": "XsVJbXi7eRZa7WwI", "PlatformUserID": "c895ImqK6tVsaUq3"}, {"ID": "stUh5J5Z9GiBiSAy", "PlatformID": "lX5cS0IeHpWCugmf", "PlatformUserID": "OL0QQpxsuD8PGqku"}], "minPlayers": 8, "textChat": false, "type": "eFJrOXyDYz9vMUOP"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"G0iHDT8QbF7gHPTP": {}, "QbvLt2NRqJGIKzLy": {}, "H1y72L13Ornyx34l": {}}' 'uLdvtsTKXMjiw6gY' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"Pvfn2Qt9iyq3Nyk8": {}, "ncu2Z3eDHH9WaVO4": {}, "iKhDcJ7TCcNIsQ3P": {}}' 'uppUxDSK8aOTGMud' 'cxlCV4cNbJGQ57lP' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["dinpjS2DRfGt9Gly", "ZVQ4X67tPZSTpPq3", "xjrElvvDgw0ag7kS"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "k997XkGOdC6ItxDT", "data": {"8p4n4XCFkD1AJLCw": {}, "szbZxuHSgDOK8bjo": {}, "F7bL2635KbtZTGJp": {}}, "platforms": [{"name": "qgl2IzNXGTuQPIDp", "userID": "or7t1aJLNNz6QIVC"}, {"name": "9Mfuc8VOsnmnlVlj", "userID": "dWYmELe74p38vumn"}, {"name": "xAnYBTxaTIz0jcgD", "userID": "I8Pkz96vd80msqIm"}], "roles": ["5bufnBqrpLeqhwVh", "jnnjKMEmtbiWsAQH", "bMrKYi0Zxs5SWCqZ"], "simultaneousPlatform": "XHLLa31oQf7BULnZ"}' --login_with_auth "Bearer foo"
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
echo "1..85"

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
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetDSMCConfigurationDefault' test.out

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
    '{"metricExcludedNamespaces": ["UAJsyAfeKOufV4f1", "5NohXu6opxQGRt6P", "qlkL0diRhLC10ih2"], "regionRetryMapping": {"EQfY3XCv4hdOa6Fd": ["ZhNMd1onFjGRbxtA", "BPXDmgNEJBhgGq5G", "IDhNC66szbCCf73I"], "FbRkPSSITz4TjCrJ": ["HXGXku2YVuOzhxHm", "nrrV9ZGWrZ05sxe6", "A6RpmKDebNkylbyn"], "kgT9vayLLiizac7G": ["e6zKJdlt7rjF5RaJ", "wvkWVco2LTo5ijlv", "DF8qBWCQ9dLWYyS8"]}, "regionURLMapping": ["zdhMeBXH8x6HdVfZ", "VDAiU6iJOF7JKZFN", "k2NKy59X8iOg2sVB"], "testGameMode": "iCoeC5weXJl7PeiM", "testRegionURLMapping": ["H8z8dVej8N2yv6VT", "nOK7xAvM7tuL81ls", "R7xxSVp3Gd2TK0Hz"], "testTargetUserIDs": ["YviTgYmx82JVBRLP", "Z6Iz8tne5dbguBF6", "Gsvvdl8jHz9x7XZI"]}' \
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
    '{"durationDays": 19}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 40}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCreateConfigurationAlertV1' test.out

#- 14 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationAlertV1' test.out

#- 15 HandleUploadXboxPFXCertificate
$PYTHON -m $MODULE 'session-handle-upload-xbox-pfx-certificate' \
    'U4IK9lOLaZaMphKC' \
    'tmp.dat' \
    'qTq3EVheJjoEEXBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 70, "PSNSupportedPlatforms": ["SmylT1YtxIq73aMb", "48jISd97KORRhxSW", "LWLNfHRD3V15QaGG"], "SessionTitle": "L46LuxJF3sbeqWBd", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "fgBAKx27MSBqabUX", "XboxServiceConfigID": "OGkkoMUZn1YXj5zF", "XboxSessionTemplateName": "ZeOCOR9NvBQZSJPO", "XboxTitleID": "IKrRBrYVzi9ui3lv", "localizedSessionName": {"ozTt9TsH7A0TuU2a": {}, "L4bPkk11sys6GdkD": {}, "cos5uVJ0BJfZ0jvA": {}}}, "PSNBaseUrl": "54CSqZFDsO1skRjO", "appName": "U1SMfQVQa6blj9Rd", "attributes": {"d85bdYUumPKVSZCg": {}, "3XTc9vQe0dHJfF6K": {}, "IuvnRCa9JktyBdxk": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "EWFw9GYxjiiOQAD7", "customURLGRPC": "7ci0vfWVZoRRMPi5", "deployment": "7HyKKz5nyI6ulKNK", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "5nXJ7hLi6HweweRm", "enableSecret": true, "fallbackClaimKeys": ["QxpCYME6x21pdX2Q", "SPAd9sxoLnWGP1Pa", "fIjLX8ce0KbNN7Yc"], "immutableStorage": false, "inactiveTimeout": 41, "inviteTimeout": 74, "joinability": "MOC0mRvSoaGk4ktF", "leaderElectionGracePeriod": 13, "manualRejoin": true, "maxActiveSessions": 67, "maxPlayers": 28, "minPlayers": 42, "name": "JDg9Q3WXiydCOInV", "persistent": false, "preferredClaimKeys": ["kNL4lU6jaGfsD1cf", "swmeFpvtDtetoQVF", "L8LNW11vtpaTxi7k"], "requestedRegions": ["489jRCn48bvkCPfK", "ofwXOIZZQAJza84l", "KKmVOaTS6xBbNrSU"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "ak7ISDrBVg6NuDZv"}' \
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
    'Pb1kuUfNfUDe4g7q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 58, "PSNSupportedPlatforms": ["PHEaqbzHvDDl1jiL", "w3XMGBA6JXDpA1tI", "C45C0oaGouFu4hXO"], "SessionTitle": "NgUwJnUpryDeRcpU", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "lrw2MwC1uuokpaIj", "XboxServiceConfigID": "L0Vxe5n9Lx3QcFo9", "XboxSessionTemplateName": "gxOgvDc7xMrRKvw8", "XboxTitleID": "ISP2WKmCRRXBxlal", "localizedSessionName": {"CHtWlKxLpS8fLWoQ": {}, "5nuJhatQPxR7dvBV": {}, "C5zgOKLTDmHe8c1e": {}}}, "PSNBaseUrl": "J9sde7Ryt4udIv22", "appName": "M18uux9xBomQFPFW", "attributes": {"y5cwNPI6aFo0MVwD": {}, "ZCIXFNEL3uWVRz3V": {}, "7YbJM3bNLWHAbCZi": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "qi33TcBGkc0HjUcn", "customURLGRPC": "kpU9oVzl2kBuLFXI", "deployment": "eCEKZUTz3GvCAZ5j", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "KDwQeUWtjCC2UH6j", "enableSecret": true, "fallbackClaimKeys": ["FaepA3b3YJ9nJM6v", "tT27xv85K5MU2qmb", "eqaVemINdClpF7Ov"], "immutableStorage": false, "inactiveTimeout": 90, "inviteTimeout": 56, "joinability": "O2jJepUnEEgja2mI", "leaderElectionGracePeriod": 61, "manualRejoin": true, "maxActiveSessions": 33, "maxPlayers": 22, "minPlayers": 76, "name": "E5HleLoog4me2NBF", "persistent": false, "preferredClaimKeys": ["Kt6G3j9LYdG7xVPq", "Bqe9RDQMBSYAFLqp", "8PF5hCcoukWpnbz4"], "requestedRegions": ["ys7j6lxuU3u2HEG0", "qfKegvFTD1sPykS8", "YLmwtYgWGcA0h4G1"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "HaX5UBMbsF44VTsL"}' \
    'DRzdq22cbnyK3ggF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Dh2kaZP7pnnVfxPw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'c259HF9ejHaILQru' \
    'AuYyJLYGqMv824ou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "SgkpK70uJmUL0uzE"}' \
    'lixc023dIvDiA0tQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminReconcileMaxActiveSession' test.out

#- 23 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetDSMCConfiguration' test.out

#- 24 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminSyncDSMCConfiguration' test.out

#- 25 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminQueryGameSessions' test.out

#- 26 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"WlHwBcTtztx3VAl6": {}, "tXFbnATCzUOIzVcy": {}, "9k3ie64Vnwa0ClGQ": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["JultJe32AiwKadEo", "IVmprwPsa9YD92CX", "0rITajpwHITGeHTn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'rVAQSxp4qTB54mKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '3V9DKlCeZ7mLYsHo' \
    'oOIaxIpb1cIOJPS3' \
    'lJ80YJ41U4ooQ980' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateGameSessionMember' test.out

#- 30 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetListNativeSession' test.out

#- 31 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminQueryParties' test.out

#- 32 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlatformCredentials' test.out

#- 33 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "ywmg1pWpWit1QC7F", "clientSecret": "Ke0fnHUlmU1unGKM", "scope": "0tgfeWy47bbwMI4g"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminUpdatePlatformCredentials' test.out

#- 34 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeletePlatformCredentials' test.out

#- 35 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminGetRecentPlayer' test.out

#- 36 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentTeamPlayer' test.out

#- 37 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'GmvK9gW596FwBNrF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'Xt3TAuKBwBcD12ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    '6r3hHwya4NpdOzg3' \
    'hr6ucHf7dbh2iKNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminReadUserSessionStorage' test.out

#- 40 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminQueryPlayerAttributes' test.out

#- 41 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'l0qJqzoKMRMG541P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'AiNjULsx4SnKNXLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminSyncNativeSession' test.out

#- 43 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "UaDSwwQlnNRZJHBS", "attributes": {"B4fZWEFIZs28Ff1k": {}, "Zp1Zktx3N7WNMYIf": {}, "cDKbLu8pnK34oA1k": {}}, "autoJoin": false, "backfillTicketID": "im9QKUAFTVYelIlG", "clientVersion": "Jg9wdc8bihhWjfZp", "configurationName": "fcFBUsnnDJlmD1iE", "customURLGRPC": "okbUiYzCQh2iNTwt", "deployment": "nohddMzMTQ9P7sYL", "dsSource": "DWAJOA75K4BYJ2fk", "fallbackClaimKeys": ["qYJoF2FI3vyyqRzc", "20O7FdsJP1G9tyBT", "fERXdvgD1Qf7Ot2D"], "inactiveTimeout": 21, "inviteTimeout": 96, "joinability": "juGgx8ncXejmeZtz", "matchPool": "T0qj0ltsqfiZrthV", "maxPlayers": 45, "minPlayers": 30, "preferredClaimKeys": ["yX0OCKDJE3RMUddw", "SSgxCu8zru1DhGAY", "OHR5BWa9VzIkaQEl"], "requestedRegions": ["1iUProNB6hI6IpGc", "ToWgFvdRhG9NwV3z", "DuqVlVTypcYPK8Ix"], "serverName": "rSZuxWl0Je4fJIyF", "storage": {"leader": {"Am3DQht4JwnPS2ur": {}, "JqerobWMZGVL5KLT": {}, "xahWlS6XdBaKSLCg": {}}}, "teams": [{"UserIDs": ["OOPXM6XTUh2dJ90y", "qHDNacl4F9G6Dl5T", "FwBY6HKXAblkT8VG"], "parties": [{"partyID": "gSH8MGZGwiVj7eDT", "userIDs": ["aka9ABfX1IByPEOu", "PhGspRi3bhPQvBBJ", "I5JxytpcubN4AUUP"]}, {"partyID": "FPscZsXeJOD4DMtq", "userIDs": ["fIGiGJovgWSRxZ8N", "4UQ2fg3V1o2x0hL5", "DuBDqMyIAzWze94M"]}, {"partyID": "EdJFAy2JTllJkRGB", "userIDs": ["8jqJEd6eqqsBVyON", "V0JRtozI0jpliCFQ", "6WgJpGPigdc5VyC4"]}]}, {"UserIDs": ["qvWjVac1cQvSxgTN", "IUzxDgBlIbuzm7Dz", "J20NFRJIhFXR2dYp"], "parties": [{"partyID": "rPmbpuptECGd5cdX", "userIDs": ["C2Sesc6y68whNBYl", "9iCqfW6rqGOQny4i", "j4ysYPonb59gQffk"]}, {"partyID": "NOmubxEJr2qEAuJb", "userIDs": ["pZSrcbc4LWfKaY5c", "1tP5TDuI5f6m4KC0", "7CnsZe32hqEcB1Ex"]}, {"partyID": "YMBb3ckvoaJYdMqG", "userIDs": ["egcg3eRvBZXN3cjI", "XmFWRJnj8xN7HDPT", "UEDPN1Kb4UTPWDXT"]}]}, {"UserIDs": ["Sb55g8LSTs7Nf95l", "GlPrf6obIdnI6Ag7", "eUYcYJ4QzXCmqr6g"], "parties": [{"partyID": "mPGaHP5SVPvRLiDi", "userIDs": ["0mNHb6Lx8eq8SGNw", "EQO8dYXvBSYvJBwb", "6CjZUMRf2VJetWso"]}, {"partyID": "kvx3BHuTEczr9KjQ", "userIDs": ["3ttz8MTBt1xk9Iys", "sSA8nP5PQjpzk2Tb", "7iYdmNZWosrsVBPZ"]}, {"partyID": "64j0HUONscofwYLQ", "userIDs": ["cDvkaEIIPoJT83zE", "GXmVBZLyrH9J7Boy", "smaORLkP5hc2Fh04"]}]}], "textChat": true, "ticketIDs": ["c4VPDUR9ayazqXRq", "egIUicYXXzxsBFrU", "s9BYp6TgCejBd5o7"], "tieTeamsSessionLifetime": false, "type": "KXOutlYBbLhL8KXx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'CreateGameSession' test.out

#- 44 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"25FZfQIodVBqQsBp": {}, "CJBIXLGYcwWVRK6U": {}, "Kk5ozrXA4HZHNyq9": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicQueryGameSessionsByAttributes' test.out

#- 45 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "odanhR1Zrm3thUvV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicSessionJoinCode' test.out

#- 46 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    '87yfkycLSVdleSaA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetGameSessionByPodName' test.out

#- 47 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'ylsmLYe2phYOgT5k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetGameSession' test.out

#- 48 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"DTyPl3dKF7NXEjrJ": {}, "Mki8jvc3P8Gwjg3I": {}, "OH0SDHgYKqxJiFJd": {}}, "backfillTicketID": "rmj5vhzgsJwex7wq", "clientVersion": "8ZPlXNaUNgdY2vfJ", "deployment": "uje5cPnmGjTvYa5P", "fallbackClaimKeys": ["qx1K7qcAoijBPAp6", "EPb988NzxrDKVpUL", "jjiw3NeVG4DJi9Da"], "inactiveTimeout": 79, "inviteTimeout": 53, "joinability": "rc0WFgKjE945x2CP", "matchPool": "VYYG9WvoGmAmvaVV", "maxPlayers": 76, "minPlayers": 55, "preferredClaimKeys": ["fxnUNcwjr7gSGhnf", "uF4WZiQVICVpWd3U", "M08gMXhdf3juXW4J"], "requestedRegions": ["prIb3CJCAtvSG8Cf", "a9dzOJDGCTHIOFje", "XbsSgR43kIDzxBwq"], "teams": [{"UserIDs": ["RJTzrHNZWUsq5lQo", "2jy29EJigqYhyVhU", "Rx1yPeczRpdk0HAT"], "parties": [{"partyID": "Gylx2JG2KNGfhzfC", "userIDs": ["TxxrsRRLee3TcJ7D", "QIi45aCDHN9mVug2", "zkVf6KgpKOcn3tMD"]}, {"partyID": "9UT67bOwugFDa6wU", "userIDs": ["QvehKqwCh86XmRkC", "EcfHDCdl59Wp9A3t", "XGve6DdK6uvg8f2c"]}, {"partyID": "IoByk9fxtvsgeAxo", "userIDs": ["57nKAbZpsbJ4Iu5K", "J0ynxGBlacDCdFe8", "ATUqVxcSthrpnMUB"]}]}, {"UserIDs": ["snUfuQIcSbUt5UGk", "InFGpuUsdtq4dOwN", "ESzCEW9dUVhZjLft"], "parties": [{"partyID": "C3sCS8CpLCqPD9Ce", "userIDs": ["DEdCnnL6Kt1Bjj3b", "8QM8Rr45ULqXQgvw", "D3PsKDJiWxQBwaS7"]}, {"partyID": "rDBf2S54phbdyGDt", "userIDs": ["47f9GWRlE9hqz6rj", "DNo4rhjxUdMM83We", "kqfWv04vvn9bk5qr"]}, {"partyID": "8qs2mqtnGAqXUjNy", "userIDs": ["pF6MMqWpdEJsPoaI", "bYz8cK5jlpJdre5u", "r6yvWJDdvM7T7PX2"]}]}, {"UserIDs": ["vamIRZHzsIYOCUoi", "CXNjrdQL2jdx1eIb", "a1sB0HsJ06DzfbzR"], "parties": [{"partyID": "Yt4OVUyumBeIqdQG", "userIDs": ["ZC5kM03HHijsQRj7", "N8IAjmsonjj0ZR50", "BQ1U6aFD3O2kXQSc"]}, {"partyID": "58zgZVl4gIF7v3qb", "userIDs": ["Zu9M3OxqVAT4H1lR", "Z9Z1JBrHRzEOtIxz", "Pqb6n73m0jiaDH86"]}, {"partyID": "d9rsKgzCsMulpB8H", "userIDs": ["ZUtVVaJCiLgKOwrS", "fWhT5B4WedopzwSl", "uBtRFPKThyGnbjmP"]}]}], "ticketIDs": ["DKFS6u9FHuv1M3qf", "ch4SqIV6LQPHlaeY", "l4csFq65cU66yJaj"], "tieTeamsSessionLifetime": false, "type": "EPgG40QyXzsOzgck", "version": 17}' \
    '78IghoQBp2mWAOYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSession' test.out

#- 49 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'sczxBS0OBCa2vWad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteGameSession' test.out

#- 50 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"LmQtYKmEMzicbuL2": {}, "S3RiW8dLTCBfGUdV": {}, "EdvdQL7sVwcZ2Pof": {}}, "backfillTicketID": "aJoSqtrEOqxH46fR", "clientVersion": "TSZoDdT0fefo74eg", "deployment": "3Nt2c0r4GqF0NHgl", "fallbackClaimKeys": ["OVuNZ9LzNeJnBurh", "54CWbYb0Pebyt8b4", "DGscjwrizsFUgYwb"], "inactiveTimeout": 1, "inviteTimeout": 69, "joinability": "LvqvQ2NbmDITuymT", "matchPool": "Bjn3d2sFzMS3QaVj", "maxPlayers": 65, "minPlayers": 32, "preferredClaimKeys": ["7Ax6115Kg9U8vrQJ", "XQxoIbVi2CLEk277", "Ivjj1A647XQ3koaA"], "requestedRegions": ["fZIim0sFPm1YN27b", "ojDVaZLpx4kEWYkO", "6KrKUMhJrASBh61h"], "teams": [{"UserIDs": ["mWKSSrF35anDGvur", "19V18oIrUKXttgAI", "2QdWJFLmoPEgd8EM"], "parties": [{"partyID": "spOs8nkic9gj5vyU", "userIDs": ["MAAmIHYbsxG5N066", "FXb88SbLOa21DiSF", "sm0XXQJWszvTQEuA"]}, {"partyID": "LzDNp1SZ58aDllwz", "userIDs": ["TRHak1MXxj7Esrg7", "900nml5BidsK9dCE", "zhVnOv0PQbVIaKiH"]}, {"partyID": "foeorY7A1otGFyv2", "userIDs": ["SMjbEr50qGdCZIc6", "EFqBKxbS7Q2OgRuc", "L1jwRXzfjDZZBmOa"]}]}, {"UserIDs": ["u6syme06c6SKLc2m", "EC3IXl5XCbkOfHaG", "r5kdazlypvt6lSLf"], "parties": [{"partyID": "U7HByGXPMqxj4hBg", "userIDs": ["VY3YAxZLKbcOdyjq", "f6Q4oiwoJcaRMEb1", "5LBlTVufc5ZyODR2"]}, {"partyID": "NVyn4PRqf3eRbZqB", "userIDs": ["AoKGcVCdMiSNV4qB", "rt1kcLmRv6EJtl5x", "Wnsb8oWq94RImNWV"]}, {"partyID": "IJnhhwFDV1Vitaom", "userIDs": ["vWTzdsW4N70wYS4K", "j7Yi2VvoQNW8Yc48", "1dYdvGxJAMDRA1LF"]}]}, {"UserIDs": ["7jdWlekFwO94VBCV", "9qJhWva2FPBujX0g", "eYCpGJM4sqsPNJMi"], "parties": [{"partyID": "ZXXOFwmGWAvNF0Z0", "userIDs": ["GkwxUNYyNwGiKrkn", "H0Y5mrQgLC6D2qsF", "iQHglUQMZi5WjMZf"]}, {"partyID": "OadpgegCUjTdi1Eh", "userIDs": ["r8OtqpNJ9R8TuNy4", "ejmVA3vMCsGyPd12", "B8QNUz0hFFNbH6j2"]}, {"partyID": "W4roZM2UKAXEEsL5", "userIDs": ["D0oiFchQnVeq3g2A", "B2WIRUQmauIY5HXC", "Z0W4XmWP0HzSdiyl"]}]}], "ticketIDs": ["LhVYszm8xY33OQbu", "mu2QHLyZNuysyM4O", "fCzdQCXMAWnf87YP"], "tieTeamsSessionLifetime": false, "type": "Oe9Eevf1fhMg1E2k", "version": 49}' \
    'QLFrVgtX7y0fPOie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PatchUpdateGameSession' test.out

#- 51 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "DCow2zXyFFVpM87y"}' \
    'qEwEacQMTlqN4LKk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateGameSessionBackfillTicketID' test.out

#- 52 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'xJ5v3SBafnKNiMPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GameSessionGenerateCode' test.out

#- 53 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'FkFGA85W3HJkqgS2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicRevokeGameSessionCode' test.out

#- 54 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "B37wwoPYOHiIsxms", "userID": "LBPBJuNLnWRrtW87"}' \
    '0qD88ZcduZSe7W20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionInvite' test.out

#- 55 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'UZcDaiq0nEZ7Pyhq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'JoinGameSession' test.out

#- 56 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "FJkDClOsKmfsgJdm"}' \
    'zsDPsWh1k0cQ08NG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPromoteGameSessionLeader' test.out

#- 57 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '6dX2TZkil67kRngo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'LeaveGameSession' test.out

#- 58 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'Ua83ECh1gqPeS193' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionReject' test.out

#- 59 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'TNNzot3sVli3GN2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetSessionServerSecret' test.out

#- 60 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "TrFibRAhzzEWzWlT", "userIDs": ["Y70qdgJRvpZrSpWX", "3KEe2BjV00ReCXFf", "fjJJxlgjzIhpgOoI"]}, {"partyID": "OD74V21HWDAfvXwd", "userIDs": ["xbyp4HAPbBbNPStV", "BUpKgOssFkz0F36p", "iDYXeHZ7FHls3nyv"]}, {"partyID": "conqbHQqKLQKe3xm", "userIDs": ["j6s0GqsWncp5Lrqb", "iKudv9z75SzoCV8Z", "Mi2o1nR482D6gNCl"]}], "proposedTeams": [{"UserIDs": ["k9c87hosaPFC5zBW", "3ZgVZCj9ObVGT0Sc", "wl4kNmCi15XTJTgC"], "parties": [{"partyID": "NNH7RtG5Xmo9Q0Wb", "userIDs": ["07N17fkxZSc6VbE0", "AGcekjMNHuPXtz8t", "XxrmzafMUguyDoN9"]}, {"partyID": "1uc28HoSpGt1g0GG", "userIDs": ["bT4Hf2PPKOldkbgX", "9CWJKwXXSbv5eg9q", "86IaDFjjx6uZerWb"]}, {"partyID": "twTX9gNRByjbE8lO", "userIDs": ["LAfTXKLzbrddqcKL", "a7LevxNHOSEhQRZI", "p693lRwtc43atCuC"]}]}, {"UserIDs": ["Fxbfbz4aQERziPL4", "dHhOqG5KDdUvk0LE", "i26Ls7mjRxNmvvNt"], "parties": [{"partyID": "jJNQepUTGhwlY4lP", "userIDs": ["zlsCR5rVsyfcH7Wj", "P7HuGz3b5WAEvdRF", "9bqMj4ro5B19VE83"]}, {"partyID": "8c7OydVw0zCqoMZv", "userIDs": ["pIOO97DmQ5ZOzx6i", "CJTu60IifzMhkk5P", "xsjqbCKpMv2Yky9D"]}, {"partyID": "YkD2sIllFtBtXJKG", "userIDs": ["3rqBmILhtWm8RQvR", "UbUDSiefGEdLucrt", "O2gCQD057DrDlgC2"]}]}, {"UserIDs": ["nzS9SiGUjVAw4v3q", "6JRHcn7KaoCEkRdo", "6qHYIZWnXqQ1oHFJ"], "parties": [{"partyID": "9Q0vqsL9SomqWsGA", "userIDs": ["76yxi0QzZWfmP2sx", "0KO5bEJaPnAFjsod", "yJQVVBrShGbIIuqK"]}, {"partyID": "8C403HgoXCR6XOMX", "userIDs": ["wKdfqk8T4QHK30EX", "0FclpDl5HsuracO5", "MnjnxD1OXkxShFVQ"]}, {"partyID": "TRekLfjmy8zosRCR", "userIDs": ["gVwbrQKmb01yA7U7", "dGMjupZkZQY8CNyT", "4k3DIbfT22G5NpE1"]}]}], "version": 56}' \
    '0YWSgxpKWtdtdtVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AppendTeamGameSession' test.out

#- 61 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    '9anENmxb9e7vXZV3' \
    'ig8Jg5VByeI3ycMc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGameSessionCancel' test.out

#- 62 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "YYBixKJXCISQdwec"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoinCode' test.out

#- 63 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '1m8BusV9tUh74KVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGetParty' test.out

#- 64 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"6Xqjz2xUKLNWSmYy": {}, "VvyelIJ8QgaLMqi8": {}, "36ULa7cfZl4VuY6r": {}}, "inactiveTimeout": 38, "inviteTimeout": 64, "joinability": "yo6CBRRnoOikIxXK", "maxPlayers": 74, "minPlayers": 22, "type": "IR6kPmswm5TCAU1c", "version": 74}' \
    'J3gNLIlTk3Bpclrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicUpdateParty' test.out

#- 65 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"4hIRn0znIKzAEAHQ": {}, "pBOgHEP5l94s7CbI": {}, "J7eHnVWOboMkyB7F": {}}, "inactiveTimeout": 94, "inviteTimeout": 44, "joinability": "exsOZ0b2p3b63Krc", "maxPlayers": 45, "minPlayers": 63, "type": "IcXMhGy83Xit6boO", "version": 77}' \
    'hK1G4kKooSNNUZui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPatchUpdateParty' test.out

#- 66 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'ynZ64IwncZPk82GF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGeneratePartyCode' test.out

#- 67 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '3eTC0vzZUDj9dzGg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicRevokePartyCode' test.out

#- 68 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "GVxo9OHgfHumyfuB", "userID": "NisecYbcOpR45VDl"}' \
    'vSc0Mr7ImwCwGqOf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPartyInvite' test.out

#- 69 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "0bNs97KvKyj3MqS7"}' \
    'Dcmtfh50eObbrmgj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPromotePartyLeader' test.out

#- 70 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'hWK0x0ZidAJ1CU1e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyJoin' test.out

#- 71 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'D1La16Bw3JbUnUDh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyLeave' test.out

#- 72 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '5yGjjv4Mwrv2vanc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyReject' test.out

#- 73 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'mR6Z7rb21A2E9pX0' \
    'BWCMqPsRk5htdM5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyCancel' test.out

#- 74 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '3fDSrSHrkoqv2mM6' \
    'soMaTvQq2a9YdFNt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyKick' test.out

#- 75 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"RVSO0js0hG9xmSnz": {}, "d7zgUxAogcnGkXk1": {}, "7QPkJHRhmLKQuQVF": {}}, "configurationName": "SKiXl8G2uf6E8Eaj", "inactiveTimeout": 100, "inviteTimeout": 78, "joinability": "zOXjO1NQUqWHBW78", "maxPlayers": 74, "members": [{"ID": "REZCiTNAxq26gZrP", "PlatformID": "qCsSDspvgM16sZ6r", "PlatformUserID": "jnkH4ExObppC6CMY"}, {"ID": "Dm5ge659UDEOF6gp", "PlatformID": "5UfmjtiVbqJnZcrq", "PlatformUserID": "rPye7fCwi7Il2wIF"}, {"ID": "lHm9N6owMHMtJy1O", "PlatformID": "qn59tEGm9NYeUT5P", "PlatformUserID": "0nx8TqSZdZ5C8mFI"}], "minPlayers": 80, "textChat": false, "type": "nvzEqBNMF9CZvPxT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateParty' test.out

#- 76 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicGetRecentPlayer' test.out

#- 77 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicGetRecentTeamPlayer' test.out

#- 78 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"5zbreMc9fBoU3RHN": {}, "DFjLKFrepy56eW1k": {}, "mb15QeIQF51c4MqJ": {}}' \
    'zDSvELgBe6dboSdh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertSessionStorageLeader' test.out

#- 79 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"kBzAzPkt1efGJeJa": {}, "xyHYutgXucx85vHA": {}, "009FAb21jxeWXk80": {}}' \
    'y9uxgVLGgK8aVSCN' \
    '6oCETQ8gIDRdD2ww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertSessionStorage' test.out

#- 80 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["MXwKVXGPhEJsc7rZ", "pxaPHc9r8eToFmkH", "J6BPOKFLxIwKssw6"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 81 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicGetPlayerAttributes' test.out

#- 82 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "wDudnGRufOUGfMjT", "data": {"U226l07jPlcYaqYM": {}, "7YfBmhjI9Y28qVce": {}, "S9UX48dKPCFUIeyY": {}}, "platforms": [{"name": "EymNXzNX6TGh4UdE", "userID": "weeBsJEvBbAvCmlh"}, {"name": "6Z1oz9BaixUUvmzb", "userID": "ajE2gjooiDnc1NUb"}, {"name": "51lEgUwQ9tkWaMOH", "userID": "47CAT7cBP0918JaE"}], "roles": ["BQBP766LUnBBR84i", "AO7sBQt6YJ2tWwF7", "RnP1oK3c4RVfjB0z"], "simultaneousPlatform": "i3XrYZUiN24ol1qq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicStorePlayerAttributes' test.out

#- 83 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicDeletePlayerAttributes' test.out

#- 84 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryMyGameSessions' test.out

#- 85 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
