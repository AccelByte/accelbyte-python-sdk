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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 11, "PSNSupportedPlatforms": ["qUI06UpOXGSLmCVu", "HOPlLlkvR8sKgnuR", "kgghGoYupD391C2q"], "SessionTitle": "tPYokahFjkQsfCaT", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "t1d67FXGk2s9Q0mP", "XboxServiceConfigID": "Vo3twu0MesTCf9x4", "XboxSessionTemplateName": "rt69lna7qxNeIxPz", "XboxTitleID": "6MbwL6IY69z1UaLq", "localizedSessionName": {"YSYWytLPziZMdjxc": {}, "BZufQxGiHPllG4cY": {}, "EzfTD1ZBm3MqHcUm": {}}}, "PSNBaseUrl": "LZZbSqb8RwNmn9Hr", "appName": "NQy4uZAAiE0mit9R", "asyncProcessDSRequest": {"async": true, "timeout": 6}, "attributes": {"CHYzUOcEdscKHPEq": {}, "gA8yu7Vk6Jt4Ymos": {}, "9Jcdos4fYcTVU6RB": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "0zYoMcHyCUEXlAvx", "customURLGRPC": "JMdalwSyliWMNW5N", "deployment": "yLu0M3VHh2EI8JlD", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "Q9lNmqRBaAkLnvxk", "enableSecret": true, "fallbackClaimKeys": ["X68cmDc3fxU8MyKr", "QpM4hkkK6KKXNB3G", "v0IqmF51TkhjYnaq"], "grpcSessionConfig": {"appName": "6foWvXa3bMrXsDr6", "customURL": "kILsSSyDdmykmoPY", "functionFlag": 13}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 76, "joinability": "bN9oCMNqq98SjTvh", "leaderElectionGracePeriod": 19, "manualRejoin": false, "maxActiveSessions": 20, "maxPlayers": 92, "minPlayers": 23, "name": "Q70D0H6BXksUC9b6", "persistent": false, "preferredClaimKeys": ["x3poD3Qgb3boLQQ1", "MzH7Qm8bwbmXgdAP", "h1EThG96gAFKK2WD"], "requestedRegions": ["gCcxvONZm3EeERmD", "nyeFoF7VSZ6pf3vn", "eSD2Tb3g7mSQUhAE"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 81, "type": "mjqU6YE3p4lSck0Z"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'Hn5GI39YBHqaTHeK' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 40, "PSNSupportedPlatforms": ["G6bFYReVHQipcCx9", "Zw5D2L7vIYhGGSyE", "W4ZJJ42d3PBddN8S"], "SessionTitle": "48l9lyNApflxqMrj", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "Zk03QXcKMDYDDxHS", "XboxServiceConfigID": "ZjtqXyJ58f7Gc26S", "XboxSessionTemplateName": "aiGVkydwYWQG26yU", "XboxTitleID": "ZNmTBcvrbYCwZtxF", "localizedSessionName": {"HyPLtI8ilbyDPUIj": {}, "88cekdqCt81P1ktf": {}, "Iovmv9gsR5cJcHm3": {}}}, "PSNBaseUrl": "SZLxoRDFuuuySj29", "appName": "a9LJE8HoRS1X2PFA", "asyncProcessDSRequest": {"async": true, "timeout": 27}, "attributes": {"MwzHPxB1UskYs4Yw": {}, "20DOqOBSC2DKHRuP": {}, "MMWH8Yb33T5UBJCj": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "cnLRfxeCSz9WEi8K", "customURLGRPC": "lloeH0JT1yduat2v", "deployment": "QR3biBfsu4jmsRE2", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "XQAk4mqrxzTtuLl4", "enableSecret": false, "fallbackClaimKeys": ["Dx9gIiDandpGT2t2", "4aOMh5eC3IHeHSKL", "Ca3xreNDUWehwH3q"], "grpcSessionConfig": {"appName": "31A806DJgas4b6z3", "customURL": "LNUj7fdgLA84Z8YY", "functionFlag": 21}, "immutableStorage": true, "inactiveTimeout": 88, "inviteTimeout": 32, "joinability": "EgJjBbEDoNf3n0hE", "leaderElectionGracePeriod": 30, "manualRejoin": true, "maxActiveSessions": 90, "maxPlayers": 22, "minPlayers": 58, "name": "MNxvvKgAT8mJrYq6", "persistent": false, "preferredClaimKeys": ["XiI07A68eaqC2J9j", "yEW6GLbc0NaKDUL3", "sa13lk1dQBHO86Il"], "requestedRegions": ["BhnetU4RwTqUXlTD", "BzOuYsaZA2yyd4mb", "qoOfADMMAXFaY9eK"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 43, "type": "bRVhyaKwwrAP2aMl"}' 'u7WtjCtoYetOO847' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'g8OudOfjnCuHZ3c4' --login_with_auth "Bearer foo"
session-admin-get-member-active-session '6IjGa23YvYmmDg7V' 'YPXIuvUYTZBRujIU' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "E1Tq5jyAZvkRCMNF"}' 'Iurjh2imdb4rbkXj' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"0ZwsVC0gL97ZVJSP": {}, "qJiwv1qlYB1RSKs6": {}, "gQxC3Gb7S0o4zGYY": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["7KQI1AeFgPqaOkvo", "1aolB4lkKB4EYOkQ", "1jMD3cym8xIfkOVW"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'HC9LxhvNXTwGBCto' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "hLtl9Zuhytm5UDrT", "deployment": "6QXCs5SPBbRPZTF6", "description": "oQAXVG7tnsZg5QgX", "ip": "jvyGJPN4eXbJE5Vs", "port": 67, "region": "ecnEevcAx2K2zkRe", "serverId": "nmPZnGBt4P7WnbdS", "source": "JtjX7ZshZyZl5x4b", "status": "RXBHUTrDzZSKscfO"}' 'cYu3dpCROYqUiGKX' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'VFCmpo6sPwVOEDSJ' 'sEK5QpNhlI2iS5Ep' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'GhhvXYck0upMzUYn' 'b76tFkEORV3bu1bN' 'CtX7W40V6Do5sYad' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["CCFrHHC3DpZxkrQD", "XuNFviMarv8mnfHK", "8CCmE2lPnsbD3SGE"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'dlwuUccE536ugBp3' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "HBvepnDCjgyJlXe3", "clientSecret": "6mgWjLfFmteue9nz", "scope": "J6fH24T805tVg8Jq"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'XBOX' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'JdvzcWbfUpaXp5JM' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'l5LL4bTxBmZjdrrI' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'xsB0NRsB1fPqqRRu' 'lpqpymDkQhtrHWwR' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'VnwVBOqOHi8pWGd1' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'juYhiqjRJOqB5F93' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "zFQbJndUDpdONneA", "attributes": {"czbBdHb2slt71B1S": {}, "mZp2JZp50CnPb71O": {}, "RYcmQbTU5JX8ccLj": {}}, "autoJoin": true, "backfillTicketID": "k0eaKQDOJvrTefgl", "clientVersion": "Ss6g4iY9u02aCNYI", "configurationName": "Wekp18lOC3mNqF7B", "customURLGRPC": "l0LcghVHfPEspxwh", "deployment": "RON0bc1eMbEIjowL", "dsSource": "qc3ecjXJbZDKKoxL", "fallbackClaimKeys": ["E1Y3Dymtj3giPg4x", "4yiPX6ues1Hhhkg1", "yLVbLFzHEP8cM4NT"], "inactiveTimeout": 46, "inviteTimeout": 35, "joinability": "VgsZXiR1DJ7HVWqM", "matchPool": "kNSawQUWDFJvJBWi", "maxPlayers": 4, "minPlayers": 7, "preferredClaimKeys": ["7UkBeIXuqDuAXI66", "bQ71w0deoV9Lx5RD", "A1l2XcrciYNEzvSZ"], "requestedRegions": ["IPkhSgORcz5S5Bvm", "gBLxh4ijFnE3Tam6", "9qSZ7PC6f6QkmZXE"], "serverName": "lW9YfRSse6AAz3S4", "storage": {"leader": {"czz0QKFlAVmVLu4A": {}, "Oec0z8eBeeoip68J": {}, "1nsv4W2OJhtafxMS": {}}}, "teams": [{"parties": [{"partyID": "JlHeb34sZKHcl5LL", "userIDs": ["LOexL4fZvWtND2tc", "BFpX8lNtFEJ7tnkY", "6Mca5afj12K2IzrB"]}, {"partyID": "vvWm4udE0OXudXgN", "userIDs": ["ne8kJATwlc6esUp6", "Sw1I98jeZQ7hfxnh", "Ld3Knaknoed9DHhL"]}, {"partyID": "OqQGhCUr6iTrjyEg", "userIDs": ["arAdNJOIG36I6tRb", "RcrEveMdAdiPKDUV", "SC00PYeDcagginxn"]}], "teamID": "FIna3yddcbsPheTH", "userIDs": ["26IUJNvYuGRUvpZa", "HCuESOiIZsMfB4ZH", "3mtgWgU4pCAKxeE7"]}, {"parties": [{"partyID": "0CaunQNxot371W9G", "userIDs": ["4AvQkqsGnmyo5JJT", "UVmb8GEXFTlEMEsF", "zYqwgK1Np5nodqpL"]}, {"partyID": "m7FhJBNXzAFdO0Kh", "userIDs": ["qf6kiTdSGv2LFjAK", "Y7CbgsWqFWZX7kPB", "om8F9GLLTG8phc3n"]}, {"partyID": "4iLoIllKlpO2pqiX", "userIDs": ["JF3WGRaoQomSJC4D", "drKF7SUQPLG59e0k", "5ZtX6wK7PpUlcIW3"]}], "teamID": "2iK7MGt1ixY5rA1W", "userIDs": ["oVeJIePF8ZrQzP4z", "vtdxdbZUpd6FJtHJ", "1pyVwyKQLY6FEO65"]}, {"parties": [{"partyID": "Rb3z7CYLM8IlsHqf", "userIDs": ["fnrfsGlfPaZKBwa3", "Ddb60ufPpzwj1QGI", "FmlVf4jvapseE9LN"]}, {"partyID": "9bvhOrHflIOd6X3v", "userIDs": ["iLvtEk4mTIpUA9gx", "o8SV38nEhoXmM2W7", "l6jHMA2rG3nakopA"]}, {"partyID": "ywelu01nryEJ0Nqo", "userIDs": ["Tow0qiOiC4j0iktm", "0ZPLkLOsp0LZ5njN", "86Hl8kUXzt6bSc6b"]}], "teamID": "WvgpVyW9dD1kOmvr", "userIDs": ["Aejcq2LgkQuaS7RB", "x3vim02jBOxrZDyv", "pcLYOWA8NjxOnaEo"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["4nOOCzfsflhjbngJ", "OUn18G5MlfDTk8aG", "40NlncceIZSwgAIk"], "tieTeamsSessionLifetime": false, "type": "EY8VnocGAjci0V3t"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"Bf2jnHGKXphn50c9": {}, "tNLDljhZ2jxLRX3z": {}, "46OCaGBeMfPlNos4": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "yBRjrERHEonAZR8G"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'mEu0q1p6QCyY6vSk' --login_with_auth "Bearer foo"
session-get-game-session 'VFWdsbYuVEGVxYhe' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"R3j5mNZ6vwv7K8As": {}, "vt1j1Rx59hesNWy2": {}, "NvZ85DDKDAF8KDsB": {}}, "backfillTicketID": "ZOuYQJ03BAHZ7c53", "clientVersion": "q7akMpcmnnx6RVBr", "deployment": "op9v7aZK3h65hbN1", "fallbackClaimKeys": ["5zfQSfQrtfF3TQN0", "OcNDLr36vzohZyjM", "QAg5mPYhrLTyU8Oh"], "inactiveTimeout": 14, "inviteTimeout": 4, "joinability": "fY9JQYGF4bYXEcEN", "matchPool": "x9xZlAchob44lOND", "maxPlayers": 61, "minPlayers": 45, "preferredClaimKeys": ["FUjfIGaffoflEIBy", "YqeKN0meGelYF5wW", "aDhukU4khGG4vZFT"], "requestedRegions": ["YnPkmSu4PWam1jxR", "7SETWjteoc8fgvZD", "DhoO05oKqymxLD1L"], "teams": [{"parties": [{"partyID": "cvw6T6mZEiwxxElp", "userIDs": ["MYSWIeVzm7z9noow", "mlTIKVowi0RY2VN4", "ZONJREdUQ3z9F1Bx"]}, {"partyID": "NNgnke4akncw7wu9", "userIDs": ["TmXfJWBPrx9Ns8eL", "zYEvwSWTaLQjctvr", "K2jhsYpKPlXn77At"]}, {"partyID": "YoFzLAATPY8P8P3c", "userIDs": ["foivvQxevecWw7Rr", "y0KK5rgAGO0dW8rX", "2MVUGKSZ4GcLkt4p"]}], "teamID": "K32sJxlZcCTpTdRt", "userIDs": ["CHvuk6B6XTmSLyn5", "0sigBVZxiKdV57Gv", "Ryd9UuL02Le8HSCs"]}, {"parties": [{"partyID": "lsDd4M1F5qRIblS7", "userIDs": ["Nz81GRazPAANjfBo", "ldFOyqA2clJ5gEOa", "CgM6Yn6RugbNEIpG"]}, {"partyID": "BFUjOn5mM7k8nbLz", "userIDs": ["vtCIW5ynMKquUicA", "eIVXtoWAXhMlW4tL", "qX7OICf5oD1e6oI9"]}, {"partyID": "FmYel0kOw72o8Zkg", "userIDs": ["k0jS6rDWUwfhKvrf", "2AaH4yCWrHSppnIZ", "kNnTn3rzH5NvAtcv"]}], "teamID": "NedgS1fUfKmihDbm", "userIDs": ["u8ePWlQMVDXEHeiG", "TnwyEw6hIWDZrpP7", "rz3ISW510kHr4isT"]}, {"parties": [{"partyID": "KWjmv67nuHCXWfwn", "userIDs": ["wGioVwVzmmBVVFfp", "qx1AeLtzcPJ3jtDY", "Bo4FUTH7CGfKSyxg"]}, {"partyID": "RR1DiCqSMzpqIFGL", "userIDs": ["kDs7ACC1RgBfoNrH", "lFi2qJLgmBLE35Yh", "yiDV90SeI5yppBHo"]}, {"partyID": "ytVznCgNyx9fbT63", "userIDs": ["ShEh8PbGikLjgjcj", "34uulU6FYBZsWFbr", "3RSP0W9nBhvhf8Q0"]}], "teamID": "DtJMcYQdN66bswAg", "userIDs": ["t65X4N1LQZmB61JM", "dtwCVUrYQue84dwm", "bwFEnAZaWsQJtRYo"]}], "ticketIDs": ["agRJK5PX9UcOvhPy", "E11TRT2SKseoe8VL", "ie0LBa36KNzjf005"], "tieTeamsSessionLifetime": true, "type": "6LfxnbY97jjYgXch", "version": 59}' 'XC7eGL5YhJDWh9YW' --login_with_auth "Bearer foo"
session-delete-game-session 'qc0qgV6d9yOfIMLd' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"s2DbPcaoMdtRLTmS": {}, "vTkQQgB7exYvmHMx": {}, "r5hPCJJztJBg0tTJ": {}}, "backfillTicketID": "g46IewOXE2AkCh3Q", "clientVersion": "IZsUf8lGFXcmwTER", "deployment": "HclOdxIwqejxe18r", "fallbackClaimKeys": ["Ndb8Otq6j1mqUav7", "k05HAQltnSojV4jT", "65yclX2FtAz0vJjF"], "inactiveTimeout": 70, "inviteTimeout": 3, "joinability": "YWOaNdsimmkW2miH", "matchPool": "3xRHAKy4QxZkaXZ7", "maxPlayers": 43, "minPlayers": 25, "preferredClaimKeys": ["NHDOQe91Ps3ztUIV", "0dS6hIH9c4Vfkyrw", "puXxbaERbfgPmi0e"], "requestedRegions": ["Hkt1mr9EOIFg0dnW", "IYN2NVL70Iw157g0", "0jr9b8MuYmmeKTmB"], "teams": [{"parties": [{"partyID": "NvGYxEQdf3ewoGGo", "userIDs": ["Y7xmFNAmjDDCvs78", "mcMdiS76YApGJ9uf", "wLYkqIgLuZS6hsQr"]}, {"partyID": "yiEtOAbpeUNf26Uq", "userIDs": ["kCfgCUYBn2xaOBdP", "F0JmX8qwU1cTuHHP", "B5S3DvPRCzBrVUxm"]}, {"partyID": "DOj3cvRFaTC11W0T", "userIDs": ["GTCm4fZWuk6pQxDQ", "pKqxLGeMvr9TsvcM", "Q7dBsaIecRxIsZvD"]}], "teamID": "6rmzVr5XT1Nxw0v1", "userIDs": ["dMQ9Rrbk6C2cVWf6", "ttvbU1PO6ApCD2VX", "idT7w0Oc15N8WXBP"]}, {"parties": [{"partyID": "p17PAewqSm5x3B4t", "userIDs": ["7WQnp8jXZedgt5cy", "Ne27HLtwtVOaxgP6", "Jbct8puMybYGxD9I"]}, {"partyID": "PmmsLmu3kaPj0O4z", "userIDs": ["d8Tb7cUNGPTBxiFF", "Crn7djjs69FTFVGU", "VhvKhJCmeisql14m"]}, {"partyID": "UHVbMPimNhcZsU3V", "userIDs": ["AdMDcb4qlkiFAamq", "vZI2KwjqPBiWXade", "41s3rH34mB2yPlRp"]}], "teamID": "WjmHZAAvKTH8MuqI", "userIDs": ["g0CzkguwuJCW7EEF", "B67AODbi9BzupBsF", "pYc77GtRUcCFeY5g"]}, {"parties": [{"partyID": "4XgBsbfzqxBPNe8a", "userIDs": ["e1Il4aAtEbu4IjGd", "qthRxTjQ7gkZEY8r", "G0q0Q2Qd2JzRbkF2"]}, {"partyID": "I03dIjvBbA6bfbYa", "userIDs": ["JCJjfk2TUvn95FhO", "7VW3mbDVMDu87t0l", "dWf7iSGIiKFtWtn4"]}, {"partyID": "Yr2svKM6pqLGZ0TB", "userIDs": ["ujELAUK6mQ5iZgbw", "wm5iGzXtcknrgidK", "upvXO6aj4hCmTC34"]}], "teamID": "jxW4pIDwdqXpmRmu", "userIDs": ["t9H9XyWI8bp8fQxR", "uX91uYmtrHJbEGTU", "j7YjERL1rEQG02zc"]}], "ticketIDs": ["cA8wvLsWUNd6lPKv", "qDejvqklTSvDwuOr", "P9lzpiX0VuFpZum7"], "tieTeamsSessionLifetime": false, "type": "fHgKjI9mwJSrN8jk", "version": 70}' '6PxLv9HBEUe89AwE' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "w1HO4FnKtx4XLKAm"}' 'lDr19uJ3nq6VerzV' --login_with_auth "Bearer foo"
session-game-session-generate-code 'CcI8y3Cz0YqCKUh5' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'RD9vNAp4jinFpnQ5' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"xF9wwbvMZyeDeRnV": "fPUa6xVVBcq3wZpF", "IYeAg79HcLJXJ7mp": "VI6eTYAjdPlCiQQC", "35cj4KyOVgvnWbfR": "JtsB7cUQZ2QUAxJr"}, "platformID": "INPXppPNO3AfmXcg", "userID": "wC3IN6tvKgLB9QmJ"}' 'IOq9dP5szG71utjs' --login_with_auth "Bearer foo"
session-join-game-session 'Q4CrRb9gUCeVz7fW' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "bZIdhevfZvyV7Aco"}' 'dcZwKjYDdmJOlzwm' --login_with_auth "Bearer foo"
session-leave-game-session '9Su4FnS98QqftSjq' --login_with_auth "Bearer foo"
session-public-kick-game-session-member '7sn8yreciPLfkVyy' 'JsbGpO6JgehDJxEN' --login_with_auth "Bearer foo"
session-public-game-session-reject '7JlZc8LMq1o2jZWu' --login_with_auth "Bearer foo"
session-get-session-server-secret '4yA3r0u4q1bTHXIj' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'fJKyFlM0u1uuoVdn' '9yVoSlKNchPHNL4X' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "3LLaGPGdqLE8Sohh"}' --login_with_auth "Bearer foo"
session-public-get-party 'huiTnJarYYkHBDdS' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"zBXdxapwhd5IQYBQ": {}, "uxLvPuWYvE3fsNy9": {}, "Z9OhxXvCp9y7fLD2": {}}, "inactiveTimeout": 34, "inviteTimeout": 86, "joinability": "fCXnlUnqxT1WsRNM", "maxPlayers": 5, "minPlayers": 5, "type": "EPhMDFzjHZ3sIhzO", "version": 49}' 'HX6AgMep90AyyUJy' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"AK5PRMRMwdvl0hv6": {}, "g62GxBW2tQF5tkTj": {}, "gJaMYvNQOsDa4bkc": {}}, "inactiveTimeout": 14, "inviteTimeout": 23, "joinability": "epqtxjbrztee7QLT", "maxPlayers": 67, "minPlayers": 53, "type": "ccIBnWyPw8mj7gyQ", "version": 27}' 'XdIszGRj46COPipH' --login_with_auth "Bearer foo"
session-public-generate-party-code '1MWVTHG0qHJCWEfO' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'JpZm9yEYWNGMy2pg' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"SGSUOK68eqGJtWf1": "Ybgg8rdwY9bmrvHm", "O07KNqX9LM2IwEsd": "OGBXBwnzDX8v3xgC", "1Ge9PdbTTAJ2Gp1r": "0sVZ6LJAOddIL2l3"}, "platformID": "hPjNDKv2LWfXqjr8", "userID": "fS79En3wYowBdkaZ"}' '3y6i38XQjLDRqkpi' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "FK5BtiQ272Uo9UBJ"}' 'WodpdwsX1jorcyR0' --login_with_auth "Bearer foo"
session-public-read-party-session-storage 'x3YiHF8ITGPRQBCg' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"Is1Q2lzxl0yF5m77": {}, "TTh4gUoj8u2WRcLi": {}, "EtzVlnkflfn7pHY4": {}}' '8F1dl1q92m3iRlfn' 'BAk0CwiAsR65yQ9s' --login_with_auth "Bearer foo"
session-public-party-join 'suHdGmxncCEr0Kcg' --login_with_auth "Bearer foo"
session-public-party-leave 'eqzGbruNB72HHMkj' --login_with_auth "Bearer foo"
session-public-party-reject 'zyBB4UFKiaoV0VOe' --login_with_auth "Bearer foo"
session-public-party-cancel 'm2yqPsMFxKybPkbu' 'S6x9cLJ1APnNlsa2' --login_with_auth "Bearer foo"
session-public-party-kick 'bRBr27fVMWuAfDqL' 'MR919IZPKOKiAVQX' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"XOmqFHLbyXmgCNiX": {}, "H8uenbC5CphgMwee": {}, "xsIAP5vHLjBJ9iqM": {}}, "configurationName": "cBL4BzhDUjhKPwbw", "inactiveTimeout": 5, "inviteTimeout": 50, "joinability": "vQU5kG8bXGFmPAnO", "maxPlayers": 22, "members": [{"ID": "J66OzOj84O6tgohj", "PlatformID": "tC7bzjPpucddXJ5z", "PlatformUserID": "ifF8y959anrNSley"}, {"ID": "wHbHig6IKWVZ77Ke", "PlatformID": "RWdECaFGzfZ2hxcJ", "PlatformUserID": "2Fnemn7M23SzUo4h"}, {"ID": "NBDh9ZFP1OW0nXOE", "PlatformID": "rQPS4VsRoYIK69yg", "PlatformUserID": "9ADCGiXaLs2xjHki"}], "minPlayers": 28, "textChat": false, "type": "D975nARHCmhNHSXu"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"qIHsxvaUoXDmwWsu": {}, "kxncuD3QxCXMd00Y": {}, "BWCaVVmM45mfIZsW": {}}' 'hkS476dGGJwJ00UH' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"197MJ6zU7JLMQyMW": {}, "zYQCAaPJgoxGJoJa": {}, "SzUtY4ZD0Xtb0U4p": {}}' 'H16NUsVY21NVIs7N' 'Ren2Y3Ns0QJQeaWy' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["tPfds1BYx0EaURyd", "f8ZyyZeHAWGgJUbU", "JRMbkcTglbU86FyO"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "QbvLt2NRqJGIKzLy", "data": {"H1y72L13Ornyx34l": {}, "uLdvtsTKXMjiw6gY": {}, "Pvfn2Qt9iyq3Nyk8": {}}, "platforms": [{"name": "ncu2Z3eDHH9WaVO4", "userID": "iKhDcJ7TCcNIsQ3P"}, {"name": "uppUxDSK8aOTGMud", "userID": "cxlCV4cNbJGQ57lP"}, {"name": "dinpjS2DRfGt9Gly", "userID": "ZVQ4X67tPZSTpPq3"}], "roles": ["xjrElvvDgw0ag7kS", "WE0Hiqm5IuLryiEX", "qvUWDjU1G0EVjVZw"], "simultaneousPlatform": "1ToLuPakQN1MpOs1"}' --login_with_auth "Bearer foo"
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
    '{"logLevel": "trace"}' \
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
    '{"metricExcludedNamespaces": ["oF7bL2635KbtZTGJ", "pqgl2IzNXGTuQPID", "por7t1aJLNNz6QIV"], "regionRetryMapping": {"C9Mfuc8VOsnmnlVl": ["jdWYmELe74p38vum", "nxAnYBTxaTIz0jcg", "DI8Pkz96vd80msqI"], "m5bufnBqrpLeqhwV": ["hjnnjKMEmtbiWsAQ", "HbMrKYi0Zxs5SWCq", "ZXHLLa31oQf7BULn"], "ZDhutDM6BqguqD5x": ["xGxBWtnTKUe2znsq", "PzPkwCBo2SwCUsTa", "g4MLAo3m61P2xaNf"]}, "regionURLMapping": ["mn8Onb1a9gMz0F2U", "BRmMhAbUWmFhdYLW", "zMuv3zkUY0n0BAZk"], "testGameMode": "wbYkBLyO6A0Fqfhn", "testRegionURLMapping": ["aB3YxKNdOTacCcJf", "IfXshuLUk5WdpxjZ", "x5noXPhPUTKbonou"], "testTargetUserIDs": ["cNmzwOZOK56sDkci", "5rZ8iMlOuksQJCiR", "FiZWwJ7NrTb1XTB9"]}' \
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
    '{"durationDays": 44}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 88}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 61, "PSNSupportedPlatforms": ["zUJ9XlYJ8BzP6EUm", "UXGM5anIloyj9lhb", "vuQdW2jwKUckc794"], "SessionTitle": "ryY91lX8DD4MYXlr", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "1lHvv9rqvEoM8YmV", "XboxServiceConfigID": "jAkO3HKsEp6KlqwW", "XboxSessionTemplateName": "4djrexcbHdEtoQvp", "XboxTitleID": "V344RctmTozCi8He", "localizedSessionName": {"V6jbalHmqBBfi7sS": {}, "F5BoGiTCVsXsygWb": {}, "jE2opXtdsJQeJ1to": {}}}, "PSNBaseUrl": "o0qvxphTLEEBGTtZ", "appName": "yTjdKNKgYazujsmS", "asyncProcessDSRequest": {"async": false, "timeout": 67}, "attributes": {"ylT1YtxIq73aMb48": {}, "jISd97KORRhxSWLW": {}, "LNfHRD3V15QaGGL4": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "ZYTYZbzf5aANNNs5", "customURLGRPC": "kgSZZNUHbIT9szAp", "deployment": "mWJO5vzzXZj08a6K", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "NvBQZSJPOIKrRBrY", "enableSecret": false, "fallbackClaimKeys": ["zi9ui3lvozTt9TsH", "7A0TuU2aL4bPkk11", "sys6GdkDcos5uVJ0"], "grpcSessionConfig": {"appName": "BJfZ0jvA54CSqZFD", "customURL": "sO1skRjOU1SMfQVQ", "functionFlag": 1}, "immutableStorage": false, "inactiveTimeout": 93, "inviteTimeout": 3, "joinability": "jqjdcEfU61OJYMnW", "leaderElectionGracePeriod": 97, "manualRejoin": true, "maxActiveSessions": 99, "maxPlayers": 59, "minPlayers": 49, "name": "g3XTc9vQe0dHJfF6", "persistent": true, "preferredClaimKeys": ["L9cgbUmulhe98oaF", "KlQicdrxVhrtwSd9", "QWVMYz7TU1TsxsCh"], "requestedRegions": ["SclSkb5aBi9K9zyv", "6gFZXI5nXJ7hLi6H", "weweRmyo91dIn7Qq"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 7, "type": "XJcrqKmXDwoEV6tC"}' \
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
    'drxw1KOPhuvHuYrG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 99, "PSNSupportedPlatforms": ["7Ycl2JfmQplvGjVQ", "4aebjfgGu472oWJl", "fglLM4xjfkNL4lU6"], "SessionTitle": "jaGfsD1cfswmeFpv", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "DtetoQVFL8LNW11v", "XboxServiceConfigID": "tpaTxi7k489jRCn4", "XboxSessionTemplateName": "8bvkCPfKofwXOIZZ", "XboxTitleID": "QAJza84lKKmVOaTS", "localizedSessionName": {"6xBbNrSUAW2ak7IS": {}, "DrBVg6NuDZvPb1ku": {}, "UfNfUDe4g7q6PHEa": {}}}, "PSNBaseUrl": "qbzHvDDl1jiLw3XM", "appName": "GBA6JXDpA1tIC45C", "asyncProcessDSRequest": {"async": false, "timeout": 19}, "attributes": {"aGouFu4hXONgUwJn": {}, "UpryDeRcpUvlrw2M": {}, "wC1uuokpaIjL0Vxe": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "x3QcFo9gxOgvDc7x", "customURLGRPC": "MrRKvw8ISP2WKmCR", "deployment": "RXBxlalCHtWlKxLp", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "LWoQ5nuJhatQPxR7", "enableSecret": false, "fallbackClaimKeys": ["nfLDpgHnMOn8nc3g", "UZ8ZFyyEr0KBXuJB", "qK4QtEydPWLPBYiR"], "grpcSessionConfig": {"appName": "3UbJc1ZYapx7C477", "customURL": "etqgfOJDUT0uKAPr", "functionFlag": 54}, "immutableStorage": true, "inactiveTimeout": 90, "inviteTimeout": 51, "joinability": "V7YbJM3bNLWHAbCZ", "leaderElectionGracePeriod": 17, "manualRejoin": true, "maxActiveSessions": 47, "maxPlayers": 69, "minPlayers": 9, "name": "qi33TcBGkc0HjUcn", "persistent": false, "preferredClaimKeys": ["cNcJqrKxnMzSYoc4", "ZjiMY4H34B6wVd8i", "pcKDwQeUWtjCC2UH"], "requestedRegions": ["6jzMO3AfmOS5mQNy", "RPZFPNP56l1AT6OL", "KmZhCZxxPPdPwOtE"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 57, "type": "lBIEgjse5kd6GEDo"}' \
    '08yq5E5HleLoog4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'e2NBFp62xlXvVcJe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'rTPW02PWsHiKYArA' \
    'xnKBfBfDlrQQuAc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "0DjjwMv4vrIPRtvh"}' \
    'QIyLarjaLOKnX51y' \
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
    '{"AB8Pa3uNGKhaLlJz": {}, "JMSnJIIgsAVmaGYx": {}, "UX1B9oVuzG2CnYX2": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["YBF2g7TVtzYEHUod", "h3iUfBthbepUCTWi", "Z1uqh7GAi4FEIu44"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'qMv824ouSgkpK70u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "JmUL0uzElixc023d", "deployment": "IvDiA0tQWlHwBcTt", "description": "ztx3VAl6tXFbnATC", "ip": "zUOIzVcy9k3ie64V", "port": 28, "region": "5lraa5v5P5Cj8hgF", "serverId": "sqHC9h5JPiMEtgKu", "source": "iGTYgwWv5XldL6rO", "status": "VGcRAn51rVAQSxp4"}' \
    'qTB54mKA3V9DKlCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'Z7mLYsHooOIaxIpb' \
    '1cIOJPS3lJ80YJ41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'U4ooQ980ywmg1pWp' \
    'Wit1QC7FKe0fnHUl' \
    'mU1unGKM0tgfeWy4' \
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
    '{"ids": ["7bbwMI4gGmvK9gW5", "96FwBNrFXt3TAuKB", "wBcD12ae6r3hHwya"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    '4NpdOzg3hr6ucHf7' \
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
    '{"psn": {"clientId": "dbh2iKNUl0qJqzoK", "clientSecret": "MRMG541PAiNjULsx", "scope": "4SnKNXLMUaDSwwQl"}}' \
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
    'HBSB4fZWEFIZs28F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'f1kZp1Zktx3N7WNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'YIfcDKbLu8pnK34o' \
    'A1keYXJvtggDdXjb' \
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
    'djMBahFZZGMTcqnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'rIprOv0BJ9Sgl7H1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "sdH2RIJz1eI7Q5pu", "attributes": {"9PutLf6IrvZoBGQb": {}, "O4S3rURGWUzPAE6S": {}, "dV4D5jftRl9rZmtQ": {}}, "autoJoin": true, "backfillTicketID": "zc20O7FdsJP1G9ty", "clientVersion": "BTfERXdvgD1Qf7Ot", "configurationName": "2DkUt3yexZBRvxYn", "customURLGRPC": "EBhXtAVxCd3meTrT", "deployment": "7cF9oVCh89wNOkKY", "dsSource": "ssVejcL3kR3hCGNg", "fallbackClaimKeys": ["aJmuALlMQl9RLrth", "bfp0VgweLlT2sY3S", "sTnDQY7kKU2u06Q4"], "inactiveTimeout": 43, "inviteTimeout": 46, "joinability": "eujxtyQENvJrBCqe", "matchPool": "g67d4RWOqO4U0bit", "maxPlayers": 81, "minPlayers": 70, "preferredClaimKeys": ["QLzwRoWnR0AbkCPY", "70FmvviVIBbcujF8", "Vk5qb8NhWWwaxyMc"], "requestedRegions": ["hkt8l5IPSrwrJl7w", "YIVw13NCo9yXlbQ5", "2FTHTCj6SEAzT7TO"], "serverName": "pyiuvvQUm29Iacq4", "storage": {"leader": {"XRLaA643nTMtXSAy": {}, "ejnny0Ju13b6o5uB": {}, "2XM6IHy7EEvHyLmc": {}}}, "teams": [{"parties": [{"partyID": "vrZZOdwe1x8RjU6B", "userIDs": ["i8JXE52sUBBq2Sim", "QQoLbe5YOJvxGRxU", "zrTwagH7BMT1IZKT"]}, {"partyID": "dNFVBQ1crBXAupAT", "userIDs": ["O8uXsqVpdiWo8SjD", "AM0Riw8wLYW3n4F3", "LD1EDwBXw5uBYeQZ"]}, {"partyID": "OzATNSV9E9yyNb7y", "userIDs": ["aLXzAVYymOuhCkZu", "4htrsf8eIFSovTGX", "aMsq8ePN1oco2jx8"]}], "teamID": "Upe8SjMvpqM8pugg", "userIDs": ["OEdG47gD5i2Ni6An", "Wn3NdEPhNHSH7eKD", "fRcngEpTnRUQr3RL"]}, {"parties": [{"partyID": "OM1vEx4gqDY6jwyK", "userIDs": ["RxhkLe5zohg9s9ut", "RQt28b6o3K0COF74", "tz6aeXZOYwbwjMNd"]}, {"partyID": "xKWlBfnRyFS0Ed7g", "userIDs": ["TM5AVrtBQiDTcNnZ", "a6Zuxk6u6HXXdiC9", "ZDj4E4mv12FNXypo"]}, {"partyID": "OLl13j84P0KqirJ4", "userIDs": ["PkMFtsnFfz8Ew0X8", "fBuBSKLSQ4GvLtz5", "0D3rpBfBovqLwXBu"]}], "teamID": "T30EYeRj17xGhaBK", "userIDs": ["oUfiHjGmCyPsKCJT", "v1ic9gvagF2cSuzt", "sJ5tj64gV7nmDk29"]}, {"parties": [{"partyID": "mcjSuz9vbNStqPtQ", "userIDs": ["mQN6eKAGiZFCftT0", "RWECdjWYrnulxcCK", "Aru8pOaAVLDB4k3J"]}, {"partyID": "wkdaxR7GJpYmuYCP", "userIDs": ["G181q9GA5DydC2D8", "UT6KOc4VPDUR9aya", "zqXRqegIUicYXXzx"]}, {"partyID": "sBFrUs9BYp6TgCej", "userIDs": ["Bd5o7iTST7R3KbbQ", "GERMNpqWb51y5RUz", "vMfTkPy0fGvTGgfL"]}], "teamID": "Ksg0b1Bq78cE5O5p", "userIDs": ["mPnbiPJ9j4vxmbH3", "rVaauufxkPHElug4", "8TgfNu0rqXUOyToL"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["T5kDTyPl3dKF7NXE", "jrJMki8jvc3P8Gwj", "g3IOH0SDHgYKqxJi"], "tieTeamsSessionLifetime": true, "type": "drmj5vhzgsJwex7w"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"q8ZPlXNaUNgdY2vf": {}, "Juje5cPnmGjTvYa5": {}, "Pqx1K7qcAoijBPAp": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "6EPb988NzxrDKVpU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'Ljjiw3NeVG4DJi9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'aMrc0WFgKjE945x2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"CPVYYG9WvoGmAmva": {}, "VV5YfxnUNcwjr7gS": {}, "GhnfuF4WZiQVICVp": {}}, "backfillTicketID": "Wd3UM08gMXhdf3ju", "clientVersion": "XW4JprIb3CJCAtvS", "deployment": "G8Cfa9dzOJDGCTHI", "fallbackClaimKeys": ["OFjeXbsSgR43kIDz", "xBwqRJTzrHNZWUsq", "5lQo2jy29EJigqYh"], "inactiveTimeout": 50, "inviteTimeout": 47, "joinability": "VhURx1yPeczRpdk0", "matchPool": "HATGylx2JG2KNGfh", "maxPlayers": 52, "minPlayers": 81, "preferredClaimKeys": ["fCTxxrsRRLee3TcJ", "7DQIi45aCDHN9mVu", "g2zkVf6KgpKOcn3t"], "requestedRegions": ["MD9UT67bOwugFDa6", "wUQvehKqwCh86XmR", "kCEcfHDCdl59Wp9A"], "teams": [{"parties": [{"partyID": "3tXGve6DdK6uvg8f", "userIDs": ["2cIoByk9fxtvsgeA", "xo57nKAbZpsbJ4Iu", "5KJ0ynxGBlacDCdF"]}, {"partyID": "e8ATUqVxcSthrpnM", "userIDs": ["UBsnUfuQIcSbUt5U", "GkInFGpuUsdtq4dO", "wNESzCEW9dUVhZjL"]}, {"partyID": "ftC3sCS8CpLCqPD9", "userIDs": ["CeDEdCnnL6Kt1Bjj", "3b8QM8Rr45ULqXQg", "vwD3PsKDJiWxQBwa"]}], "teamID": "S7rDBf2S54phbdyG", "userIDs": ["Dt47f9GWRlE9hqz6", "rjDNo4rhjxUdMM83", "WekqfWv04vvn9bk5"]}, {"parties": [{"partyID": "qr8qs2mqtnGAqXUj", "userIDs": ["NypF6MMqWpdEJsPo", "aIbYz8cK5jlpJdre", "5ur6yvWJDdvM7T7P"]}, {"partyID": "X2vamIRZHzsIYOCU", "userIDs": ["oiCXNjrdQL2jdx1e", "Iba1sB0HsJ06Dzfb", "zRYt4OVUyumBeIqd"]}, {"partyID": "QGZC5kM03HHijsQR", "userIDs": ["j7N8IAjmsonjj0ZR", "50BQ1U6aFD3O2kXQ", "Sc58zgZVl4gIF7v3"]}], "teamID": "qbZu9M3OxqVAT4H1", "userIDs": ["lRZ9Z1JBrHRzEOtI", "xzPqb6n73m0jiaDH", "86d9rsKgzCsMulpB"]}, {"parties": [{"partyID": "8HZUtVVaJCiLgKOw", "userIDs": ["rSfWhT5B4Wedopzw", "SluBtRFPKThyGnbj", "mPDKFS6u9FHuv1M3"]}, {"partyID": "qfch4SqIV6LQPHla", "userIDs": ["eYl4csFq65cU66yJ", "aj4ovoKWE4EW0sw8", "v5peiuxoBJATauyD"]}, {"partyID": "3XCXVMiyEvMf9yil", "userIDs": ["UEujk6oqYo1HQYTF", "zwdOMdupwD4O3uNb", "cIDcIyvZbOy1T4hf"]}], "teamID": "wkuVykH4RpfmjIXF", "userIDs": ["GZ5PKdbabJIkNnt9", "P1Tkm08luh4dpPRM", "DbUXBWTbpAogG2wl"]}], "ticketIDs": ["ZkLhuU5FI8NijFI0", "GKwJ3vfXlsAMy2Zp", "2UAGxHnmSxvkG9UR"], "tieTeamsSessionLifetime": true, "type": "uymTBjn3d2sFzMS3", "version": 88}' \
    'fcRhXpmeeHdvphas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    '9S7ivHEoLbUMM47f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"1UreUpxEkXIbE1ET": {}, "zRJZKMavu4Ul2Iai": {}, "eEbPSE7TGkeHsYsW": {}}, "backfillTicketID": "9oGBN1pYMBwbPZTl", "clientVersion": "MlUvFEiGprcNSQ9k", "deployment": "EeXBZ6FVrBzyhyho", "fallbackClaimKeys": ["S6a9oe0JaXFpff28", "uYbe4Cf2HEHvVevh", "ISjbtBJUK5fE3Ouf"], "inactiveTimeout": 85, "inviteTimeout": 90, "joinability": "N066FXb88SbLOa21", "matchPool": "DiSFsm0XXQJWszvT", "maxPlayers": 88, "minPlayers": 27, "preferredClaimKeys": ["EuALzDNp1SZ58aDl", "lwzTRHak1MXxj7Es", "rg7900nml5BidsK9"], "requestedRegions": ["dCEzhVnOv0PQbVIa", "KiHfoeorY7A1otGF", "yv2SMjbEr50qGdCZ"], "teams": [{"parties": [{"partyID": "Ic6EFqBKxbS7Q2Og", "userIDs": ["RucL1jwRXzfjDZZB", "mOau6syme06c6SKL", "c2mEC3IXl5XCbkOf"]}, {"partyID": "HaGr5kdazlypvt6l", "userIDs": ["SLfU7HByGXPMqxj4", "hBgVY3YAxZLKbcOd", "yjqf6Q4oiwoJcaRM"]}, {"partyID": "Eb15LBlTVufc5ZyO", "userIDs": ["DR2NVyn4PRqf3eRb", "ZqBAoKGcVCdMiSNV", "4qBrt1kcLmRv6EJt"]}], "teamID": "l5xWnsb8oWq94RIm", "userIDs": ["NWVIJnhhwFDV1Vit", "aomvWTzdsW4N70wY", "S4Kj7Yi2VvoQNW8Y"]}, {"parties": [{"partyID": "c481dYdvGxJAMDRA", "userIDs": ["1LF7jdWlekFwO94V", "BCV9qJhWva2FPBuj", "X0geYCpGJM4sqsPN"]}, {"partyID": "JMiZXXOFwmGWAvNF", "userIDs": ["0Z0GkwxUNYyNwGiK", "rknH0Y5mrQgLC6D2", "qsFiQHglUQMZi5Wj"]}, {"partyID": "MZfOadpgegCUjTdi", "userIDs": ["1Ehr8OtqpNJ9R8Tu", "Ny4ejmVA3vMCsGyP", "d12B8QNUz0hFFNbH"]}], "teamID": "6j2W4roZM2UKAXEE", "userIDs": ["sL5D0oiFchQnVeq3", "g2AB2WIRUQmauIY5", "HXCZ0W4XmWP0HzSd"]}, {"parties": [{"partyID": "iylLhVYszm8xY33O", "userIDs": ["Qbumu2QHLyZNuysy", "M4OfCzdQCXMAWnf8", "7YPNOe9Eevf1fhMg"]}, {"partyID": "1E2k7QLFrVgtX7y0", "userIDs": ["fPOieDCow2zXyFFV", "pM87yqEwEacQMTlq", "N4LKkxJ5v3SBafnK"]}, {"partyID": "NiMPbFkFGA85W3HJ", "userIDs": ["kqgS2B37wwoPYOHi", "IsxmsLBPBJuNLnWR", "rtW870qD88ZcduZS"]}], "teamID": "e7W20UZcDaiq0nEZ", "userIDs": ["7PyhqFJkDClOsKmf", "sgJdmzsDPsWh1k0c", "Q08NG6dX2TZkil67"]}], "ticketIDs": ["kRngoUa83ECh1gqP", "eS193TNNzot3sVli", "3GN2XTrFibRAhzzE"], "tieTeamsSessionLifetime": false, "type": "zWlTY70qdgJRvpZr", "version": 92}' \
    'xYztOEyVbKIf1Zbz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "gUwd8DHoCQykmXHY"}' \
    'mkRlg7gYs6unPYQ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'jNQN1di1ldhOh6Hv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'jnYuV7NfC4A2ODiZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"hbfb8QqCyK1XH9D6": "vl5eFdFfgK46GjCW", "aP8huTmnq3FGQn3A": "hu5wxq6oJq4mChmQ", "HQhO9IKBXDFQfXFD": "58sG6uDhFYlrzJBY"}, "platformID": "SeMuJfQecutjS029", "userID": "BiJWOG1m7MKclr5i"}' \
    'gjNTVItrH2X78hxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'gaVfw5Vnyq8OzTE8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "9WDNoMcOmbfJrCJQ"}' \
    'Ij1haAosKglqaCXE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '9ytpIO8btO3OwNEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'SW5TaW4to7QCY2NG' \
    'Gvi9kg3rMIzNmhJT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'NQjKlwjfJ3TJ2xVp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'ge70WsLfgbZieRvJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'I5sT9DH3DfLCv8q4' \
    'Thmq09bBgPAYxrBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "9jlnTgtgW33wDwD9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'RKvQX4yFQFdrRoM6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"FoqCYw7AlxO6qdFp": {}, "c71sSck3ggZWJlSl": {}, "CQMDji329PfVrvME": {}}, "inactiveTimeout": 84, "inviteTimeout": 40, "joinability": "lPzlsCR5rVsyfcH7", "maxPlayers": 100, "minPlayers": 47, "type": "jP7HuGz3b5WAEvdR", "version": 64}' \
    'yqGFguhh3bvadRth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"dbVApebRA09rW8i8": {}, "krFWJhe03coRFok5": {}, "d3AyGrZO8GuoXNSo": {}}, "inactiveTimeout": 98, "inviteTimeout": 47, "joinability": "EBG7VbBPUWipz9C0", "maxPlayers": 20, "minPlayers": 60, "type": "abFX4FCK5ucTFsAF", "version": 52}' \
    'BmILhtWm8RQvRUbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'DSiefGEdLucrtO2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'CQD057DrDlgC2nzS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"9SiGUjVAw4v3q6JR": "Hcn7KaoCEkRdo6qH", "YIZWnXqQ1oHFJ9Q0": "vqsL9SomqWsGA76y", "xi0QzZWfmP2sx0KO": "5bEJaPnAFjsodyJQ"}, "platformID": "VVBrShGbIIuqK8C4", "userID": "03HgoXCR6XOMXwKd"}' \
    'fqk8T4QHK30EX0Fc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "lpDl5HsuracO5Mnj"}' \
    'nxD1OXkxShFVQTRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'kLfjmy8zosRCRgVw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"brQKmb01yA7U7dGM": {}, "jupZkZQY8CNyT4k3": {}, "DIbfT22G5NpE130Y": {}}' \
    'WSgxpKWtdtdtVW9a' \
    'nENmxb9e7vXZV3ig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '8Jg5VByeI3ycMcYY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'BixKJXCISQdwec1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '8BusV9tUh74KVo6X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'qjz2xUKLNWSmYyVv' \
    'yelIJ8QgaLMqi836' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'ULa7cfZl4VuY6rsZ' \
    'yo6CBRRnoOikIxXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"KIR6kPmswm5TCAU1": {}, "cKApdJDnE73GLmSZ": {}, "ns5owBhoUg4LsGP6": {}}, "configurationName": "KLPXkvUv2XiXaBzs", "inactiveTimeout": 25, "inviteTimeout": 71, "joinability": "axjTZPlLitytGka7", "maxPlayers": 75, "members": [{"ID": "TexsOZ0b2p3b63Kr", "PlatformID": "cwIcXMhGy83Xit6b", "PlatformUserID": "oOLGCcg16DqwdQPQ"}, {"ID": "9HkSSV8e1MgTTLS2", "PlatformID": "FgarY903INGIyEfR", "PlatformUserID": "BEj7qms9AGQExPhg"}, {"ID": "r9gGfC0GjvpgJfuB", "PlatformID": "s1Vpqn47GVghTH2w", "PlatformUserID": "ToOnq9U5lyW89Xwt"}], "minPlayers": 90, "textChat": true, "type": "7Dcmtfh50eObbrmg"}' \
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
    '{"jhWK0x0ZidAJ1CU1": {}, "eD1La16Bw3JbUnUD": {}, "h5yGjjv4Mwrv2van": {}}' \
    'cmR6Z7rb21A2E9pX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"0BWCMqPsRk5htdM5": {}, "T3fDSrSHrkoqv2mM": {}, "6soMaTvQq2a9YdFN": {}}' \
    'tRVSO0js0hG9xmSn' \
    'zd7zgUxAogcnGkXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["17QPkJHRhmLKQuQV", "FSKiXl8G2uf6E8Ea", "jXLSAS8MKMaxQ1Qy"]}' \
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
    '{"crossplayEnabled": true, "currentPlatform": "8XREZCiTNAxq26gZ", "data": {"rPqCsSDspvgM16sZ": {}, "6rjnkH4ExObppC6C": {}, "MYDm5ge659UDEOF6": {}}, "platforms": [{"name": "gp5UfmjtiVbqJnZc", "userID": "rqrPye7fCwi7Il2w"}, {"name": "IFlHm9N6owMHMtJy", "userID": "1Oqn59tEGm9NYeUT"}, {"name": "5P0nx8TqSZdZ5C8m", "userID": "FI9TnvzEqBNMF9CZ"}], "roles": ["vPxT5zbreMc9fBoU", "3RHNDFjLKFrepy56", "eW1kmb15QeIQF51c"], "simultaneousPlatform": "4MqJzDSvELgBe6db"}' \
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
