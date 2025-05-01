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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_INVITABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 96, "PSNSupportedPlatforms": ["fvnnSuB0y5WUlrMd", "I4sNveabntBSxTeI", "v53HGCiljvjKoyD6"], "SessionTitle": "SCwGrncqmLtjQHAf", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "67FXGk2s9Q0mPVo3", "XboxServiceConfigID": "twu0MesTCf9x4rt6", "XboxSessionTemplateName": "9lna7qxNeIxPz6Mb", "XboxTitleID": "wL6IY69z1UaLqYSY", "localizedSessionName": {"WytLPziZMdjxcBZu": {}, "fQxGiHPllG4cYEzf": {}, "TD1ZBm3MqHcUmLZZ": {}}}, "PSNBaseUrl": "bSqb8RwNmn9HrNQy", "amsClaimTimeoutMinutes": 24, "appName": "uZAAiE0mit9RGCCH", "asyncProcessDSRequest": {"async": false, "timeout": 52}, "attributes": {"qwGyzzWi9gwQYv7t": {}, "1o7TTr1DmrhZv15T": {}, "7quIOvBMcaYmvCkG": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "cHyCUEXlAvxJMdal", "customURLGRPC": "wSyliWMNW5NyLu0M", "deployment": "3VHh2EI8JlDbPWbQ", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "dlgdWyOtXi3choQr", "enableSecret": false, "fallbackClaimKeys": ["68cmDc3fxU8MyKrQ", "pM4hkkK6KKXNB3Gv", "0IqmF51TkhjYnaq6"], "grpcSessionConfig": {"appName": "foWvXa3bMrXsDr6k", "customURL": "ILsSSyDdmykmoPYg", "functionFlag": 4}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 18, "joinability": "9oCMNqq98SjTvhZN", "leaderElectionGracePeriod": 21, "manualRejoin": false, "maxActiveSessions": 92, "maxPlayers": 23, "minPlayers": 88, "name": "535X3ateEKDpADz1", "persistent": true, "preferredClaimKeys": ["5lZC9xv32e8c5csS", "ovoqsZNBdte9NDUP", "VJf6c2Z0QZxfgPub"], "requestedRegions": ["TDIHrvqAThuwjRHp", "KKTlmVr9XuoJbRFQ", "SKVPHbn4Xxtu7LQR"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 19, "type": "jqU6YE3p4lSck0ZH"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'n5GI39YBHqaTHeKt' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "PROMOTE_TO_LEADER", "KICK"], "PSNServiceLabel": 9, "PSNSupportedPlatforms": ["Ulc9d9sogWa24CKN", "S0GqVvUfHQvsHXNU", "Ne4mhgo5QB65lSAi"], "SessionTitle": "YnNjkfZrQvGgbLdL", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "zHkBMr1yrOMlNFSr", "XboxServiceConfigID": "UEirnjX9fDmIbeZx", "XboxSessionTemplateName": "zfTcyiuATus9hsfp", "XboxTitleID": "FDcSDG8aMVGLiBNr", "localizedSessionName": {"DjqoxcwgGLXpUL4p": {}, "p2ncYAHdNzDmeIP6": {}, "rOvDz9KOsb392k6Y": {}}}, "PSNBaseUrl": "mJFfRByjlBiuFM3F", "amsClaimTimeoutMinutes": 71, "appName": "oRS1X2PFAAMwzHPx", "asyncProcessDSRequest": {"async": true, "timeout": 12}, "attributes": {"1UskYs4Yw20DOqOB": {}, "SC2DKHRuPMMWH8Yb": {}, "33T5UBJCjfcnLRfx": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "CSz9WEi8KlloeH0J", "customURLGRPC": "T1yduat2vQR3biBf", "deployment": "su4jmsRE2w1yEkLg", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "tIYt4SqYUTLDx9gI", "enableSecret": false, "fallbackClaimKeys": ["Oxtjzm8y2wNhmwoY", "ZyI4EFZKBcYrCEAE", "7WIsfmx40NLRc6m8"], "grpcSessionConfig": {"appName": "heKnWhzfe2NubeoK", "customURL": "FeIaFQCYoDPICpnd", "functionFlag": 43}, "immutableStorage": false, "inactiveTimeout": 62, "inviteTimeout": 56, "joinability": "EQlULdJz4mnRBkMN", "leaderElectionGracePeriod": 48, "manualRejoin": false, "maxActiveSessions": 43, "maxPlayers": 43, "minPlayers": 75, "name": "zfFyabWAgIUXiI07", "persistent": true, "preferredClaimKeys": ["xM3gpwxcfMy9Xzjj", "I5YbsKoADkzJEN2V", "Hzih3bit0VWn3CO3"], "requestedRegions": ["9PXDNxtXgeO3FgkX", "hjDzaQY3snn2ZkP7", "cFdP43e5dC9XIBud"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 50, "type": "rbHDIDm4hMzF4Txo"}' 'denSrUTvfqU0bfoM' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'm5cTtFWbotQyXJRc' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'QWsmqPNs92epxk0i' '8VxsZNereSvf9699' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "mCEHThUJkETAsSp7"}' 'gh4TeUTkOkAYfJB8' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"AT9t4Tv207Y2QD3o": {}, "D5fLCr3OOlXVv8ZG": {}, "F7uYnGzpipNDigNJ": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["ma1MbqqZtfNWql4n", "mwAft4gqkNNlWkD9", "eOziYRFOn0jJLHC9"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' 'Lx0KOww3HICQLfl7' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "MUBG7qtPu64yAtUR", "deployment": "KLRkb738HGS6rDgM", "description": "dIIlhS1fSiM9331m", "ip": "7Ta1PsKc50Kv6ecn", "port": 62, "region": "mQoIXimBJehyxlNs", "serverId": "jUgxBkF6wFPoJeQe", "source": "diogEhhM2rIizGdK", "status": "vOPdq5xrgxSmy1DN"}' '9LFkYW5DQyj4bj5R' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'o2ogaKt2ujQSa3Zd' 'b65UXmy0Zp6iIaTI' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'KUkmkk9QM0NBMA9O' 'RxpzwLR2AK6eXUGP' 'Jsw1fiP80G9Pclxc' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["ft2ulIJzPyrVEiOG", "4UcqsuGKHhMRWLVd", "3DlhLuIpomM8sm1M"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'iaI1mX2tJoARtdbB' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "e7udsMrok0WvGYYn", "clientSecret": "x4V709xbnGezKsDw", "scope": "G2omOR2nvYI9TVqJ"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'vzcWbfUpaXp5JMl5' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'LL4bTxBmZjdrrIxs' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'B0NRsB1fPqqRRulp' 'qpymDkQhtrHWwRVn' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'wVBOqOHi8pWGd1ju' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'YhiqjRJOqB5F93zF' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "QbJndUDpdONneAcz", "attributes": {"bBdHb2slt71B1SmZ": {}, "p2JZp50CnPb71ORY": {}, "cmQbTU5JX8ccLjMX": {}}, "autoJoin": true, "backfillTicketID": "k0eaKQDOJvrTefgl", "clientVersion": "Ss6g4iY9u02aCNYI", "configurationName": "Wekp18lOC3mNqF7B", "customURLGRPC": "l0LcghVHfPEspxwh", "deployment": "RON0bc1eMbEIjowL", "dsSource": "qc3ecjXJbZDKKoxL", "fallbackClaimKeys": ["E1Y3Dymtj3giPg4x", "4yiPX6ues1Hhhkg1", "yLVbLFzHEP8cM4NT"], "inactiveTimeout": 46, "inviteTimeout": 35, "joinability": "VgsZXiR1DJ7HVWqM", "matchPool": "kNSawQUWDFJvJBWi", "maxPlayers": 4, "minPlayers": 7, "preferredClaimKeys": ["7UkBeIXuqDuAXI66", "bQ71w0deoV9Lx5RD", "A1l2XcrciYNEzvSZ"], "requestedRegions": ["IPkhSgORcz5S5Bvm", "gBLxh4ijFnE3Tam6", "9qSZ7PC6f6QkmZXE"], "serverName": "lW9YfRSse6AAz3S4", "storage": {"leader": {"czz0QKFlAVmVLu4A": {}, "Oec0z8eBeeoip68J": {}, "1nsv4W2OJhtafxMS": {}}}, "teams": [{"parties": [{"partyID": "JlHeb34sZKHcl5LL", "userIDs": ["LOexL4fZvWtND2tc", "BFpX8lNtFEJ7tnkY", "6Mca5afj12K2IzrB"]}, {"partyID": "vvWm4udE0OXudXgN", "userIDs": ["ne8kJATwlc6esUp6", "Sw1I98jeZQ7hfxnh", "Ld3Knaknoed9DHhL"]}, {"partyID": "OqQGhCUr6iTrjyEg", "userIDs": ["arAdNJOIG36I6tRb", "RcrEveMdAdiPKDUV", "SC00PYeDcagginxn"]}], "teamID": "FIna3yddcbsPheTH", "userIDs": ["26IUJNvYuGRUvpZa", "HCuESOiIZsMfB4ZH", "3mtgWgU4pCAKxeE7"]}, {"parties": [{"partyID": "0CaunQNxot371W9G", "userIDs": ["4AvQkqsGnmyo5JJT", "UVmb8GEXFTlEMEsF", "zYqwgK1Np5nodqpL"]}, {"partyID": "m7FhJBNXzAFdO0Kh", "userIDs": ["qf6kiTdSGv2LFjAK", "Y7CbgsWqFWZX7kPB", "om8F9GLLTG8phc3n"]}, {"partyID": "4iLoIllKlpO2pqiX", "userIDs": ["JF3WGRaoQomSJC4D", "drKF7SUQPLG59e0k", "5ZtX6wK7PpUlcIW3"]}], "teamID": "2iK7MGt1ixY5rA1W", "userIDs": ["oVeJIePF8ZrQzP4z", "vtdxdbZUpd6FJtHJ", "1pyVwyKQLY6FEO65"]}, {"parties": [{"partyID": "Rb3z7CYLM8IlsHqf", "userIDs": ["fnrfsGlfPaZKBwa3", "Ddb60ufPpzwj1QGI", "FmlVf4jvapseE9LN"]}, {"partyID": "9bvhOrHflIOd6X3v", "userIDs": ["iLvtEk4mTIpUA9gx", "o8SV38nEhoXmM2W7", "l6jHMA2rG3nakopA"]}, {"partyID": "ywelu01nryEJ0Nqo", "userIDs": ["Tow0qiOiC4j0iktm", "0ZPLkLOsp0LZ5njN", "86Hl8kUXzt6bSc6b"]}], "teamID": "WvgpVyW9dD1kOmvr", "userIDs": ["Aejcq2LgkQuaS7RB", "x3vim02jBOxrZDyv", "pcLYOWA8NjxOnaEo"]}], "textChat": false, "textChatMode": "TEAM", "ticketIDs": ["4nOOCzfsflhjbngJ", "OUn18G5MlfDTk8aG", "40NlncceIZSwgAIk"], "tieTeamsSessionLifetime": false, "type": "EY8VnocGAjci0V3t"}' --login_with_auth "Bearer foo"
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE"], "PSNServiceLabel": 56, "PSNSupportedPlatforms": ["XlYJ8BzP6EUmUXGM", "5anIloyj9lhbvuQd", "W2jwKUckc794ryY9"], "SessionTitle": "1lX8DD4MYXlrJ81l", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "v9rqvEoM8YmVjAkO", "XboxServiceConfigID": "3HKsEp6KlqwW4djr", "XboxSessionTemplateName": "excbHdEtoQvpV344", "XboxTitleID": "RctmTozCi8HeV6jb", "localizedSessionName": {"alHmqBBfi7sSF5Bo": {}, "GiTCVsXsygWbjE2o": {}, "pXtdsJQeJ1too0qv": {}}}, "PSNBaseUrl": "xphTLEEBGTtZyTjd", "amsClaimTimeoutMinutes": 75, "appName": "heJjoEEXBLIxGnNu", "asyncProcessDSRequest": {"async": false, "timeout": 29}, "attributes": {"txIq73aMb48jISd9": {}, "7KORRhxSWLWLNfHR": {}, "D3V15QaGGL46LuxJ": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "beqWBdQuWfgBAKx2", "customURLGRPC": "7MSBqabUXOGkkoMU", "deployment": "Zn1YXj5zFZeOCOR9", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "pPFnZBJZkDnEiyfa", "enableSecret": true, "fallbackClaimKeys": ["rnpZxNnLRH36bqS2", "oFY76PU1AziBOHEA", "j1cT3u6Zc2FbrTFz"], "grpcSessionConfig": {"appName": "nTgDIwZIRWf6T3by", "customURL": "2kYSCdnFKLc0xcTj", "functionFlag": 34}, "immutableStorage": false, "inactiveTimeout": 19, "inviteTimeout": 7, "joinability": "Rdd85bdYUumPKVSZ", "leaderElectionGracePeriod": 59, "manualRejoin": true, "maxActiveSessions": 13, "maxPlayers": 27, "minPlayers": 30, "name": "XTc9vQe0dHJfF6KI", "persistent": true, "preferredClaimKeys": ["L9cgbUmulhe98oaF", "KlQicdrxVhrtwSd9", "QWVMYz7TU1TsxsCh"], "requestedRegions": ["SclSkb5aBi9K9zyv", "6gFZXI5nXJ7hLi6H", "weweRmyo91dIn7Qq"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": true, "ttlHours": 7, "type": "XJcrqKmXDwoEV6tC"}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "KICK", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 41, "PSNSupportedPlatforms": ["JfmQplvGjVQ4aebj", "fgGu472oWJlfglLM", "4xjfkNL4lU6jaGfs"], "SessionTitle": "D1cfswmeFpvtDtet", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "QVFL8LNW11vtpaTx", "XboxServiceConfigID": "i7k489jRCn48bvkC", "XboxSessionTemplateName": "PfKofwXOIZZQAJza", "XboxTitleID": "84lKKmVOaTS6xBbN", "localizedSessionName": {"rSUAW2ak7ISDrBVg": {}, "6NuDZvPb1kuUfNfU": {}, "De4g7q6PHEaqbzHv": {}}}, "PSNBaseUrl": "DDl1jiLw3XMGBA6J", "amsClaimTimeoutMinutes": 61, "appName": "Exlkmc4xYiLjLyZr", "asyncProcessDSRequest": {"async": true, "timeout": 35}, "attributes": {"4hXONgUwJnUpryDe": {}, "RcpUvlrw2MwC1uuo": {}, "kpaIjL0Vxe5n9Lx3": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "Fo9gxOgvDc7xMrRK", "customURLGRPC": "vw8ISP2WKmCRRXBx", "deployment": "lalCHtWlKxLpS8fL", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "5nuJhatQPxR7dvBV", "enableSecret": true, "fallbackClaimKeys": ["pgHnMOn8nc3gUZ8Z", "FyyEr0KBXuJBqK4Q", "tEydPWLPBYiR3UbJ"], "grpcSessionConfig": {"appName": "c1ZYapx7C477etqg", "customURL": "fOJDUT0uKAPrARya", "functionFlag": 71}, "immutableStorage": false, "inactiveTimeout": 80, "inviteTimeout": 73, "joinability": "lNiXpF4qvsUUpHqi", "leaderElectionGracePeriod": 88, "manualRejoin": false, "maxActiveSessions": 57, "maxPlayers": 68, "minPlayers": 22, "name": "kc0HjUcnkpU9oVzl", "persistent": false, "preferredClaimKeys": ["kBuLFXIeCEKZUTz3", "GvCAZ5j24acYHbrr", "yHB6GO9zP3FaepA3"], "requestedRegions": ["b3YJ9nJM6vtT27xv", "85K5MU2qmbeqaVem", "INdClpF7OvlBIEgj"], "textChat": true, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 95, "type": "5kd6GEDo08yq5E5H"}' \
    'leLoog4me2NBFp62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'xlXvVcJerTPW02PW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'sHiKYArAxnKBfBfD' \
    'lrQQuAc10DjjwMv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "vrIPRtvhQIyLarja"}' \
    'LOKnX51yAB8Pa3uN' \
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
    '{"GKhaLlJzJMSnJIIg": {}, "sAVmaGYxUX1B9oVu": {}, "zG2CnYX2YBF2g7TV": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["tzYEHUodh3iUfBth", "bepUCTWiZ1uqh7GA", "i4FEIu44u83ZLRxY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'SgkpK70uJmUL0uzE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "lixc023dIvDiA0tQ", "deployment": "WlHwBcTtztx3VAl6", "description": "tXFbnATCzUOIzVcy", "ip": "9k3ie64Vnwa0ClGQ", "port": 73, "region": "P5Cj8hgFsqHC9h5J", "serverId": "PiMEtgKuiGTYgwWv", "source": "5XldL6rOVGcRAn51", "status": "rVAQSxp4qTB54mKA"}' \
    '3V9DKlCeZ7mLYsHo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'oOIaxIpb1cIOJPS3' \
    'lJ80YJ41U4ooQ980' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'ywmg1pWpWit1QC7F' \
    'Ke0fnHUlmU1unGKM' \
    '0tgfeWy47bbwMI4g' \
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
    '{"ids": ["GmvK9gW596FwBNrF", "Xt3TAuKBwBcD12ae", "6r3hHwya4NpdOzg3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'hr6ucHf7dbh2iKNU' \
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
    '{"psn": {"clientId": "l0qJqzoKMRMG541P", "clientSecret": "AiNjULsx4SnKNXLM", "scope": "UaDSwwQlnNRZJHBS"}}' \
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
    '4fZWEFIZs28Ff1kZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'p1Zktx3N7WNMYIfc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'DKbLu8pnK34oA1ke' \
    'YXJvtggDdXjbdjMB' \
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
    'ahFZZGMTcqnWrIpr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'Ov0BJ9Sgl7H1sdH2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "RIJz1eI7Q5pu9Put", "attributes": {"Lf6IrvZoBGQbO4S3": {}, "rURGWUzPAE6SdV4D": {}, "5jftRl9rZmtQUvro": {}}, "autoJoin": true, "backfillTicketID": "FdsJP1G9tyBTfERX", "clientVersion": "dvgD1Qf7Ot2DkUt3", "configurationName": "yexZBRvxYnEBhXtA", "customURLGRPC": "VxCd3meTrT7cF9oV", "deployment": "Ch89wNOkKYssVejc", "dsSource": "L3kR3hCGNgaJmuAL", "fallbackClaimKeys": ["lMQl9RLrthbfp0Vg", "weLlT2sY3SsTnDQY", "7kKU2u06Q4veujxt"], "inactiveTimeout": 50, "inviteTimeout": 34, "joinability": "QENvJrBCqeg67d4R", "matchPool": "WOqO4U0bitNQLzwR", "maxPlayers": 29, "minPlayers": 60, "preferredClaimKeys": ["WnR0AbkCPY70Fmvv", "iVIBbcujF8Vk5qb8", "NhWWwaxyMchkt8l5"], "requestedRegions": ["IPSrwrJl7wYIVw13", "NCo9yXlbQ52FTHTC", "j6SEAzT7TOpyiuvv"], "serverName": "QUm29Iacq4XRLaA6", "storage": {"leader": {"43nTMtXSAyejnny0": {}, "Ju13b6o5uB2XM6IH": {}, "y7EEvHyLmcvrZZOd": {}}}, "teams": [{"parties": [{"partyID": "we1x8RjU6Bi8JXE5", "userIDs": ["2sUBBq2SimQQoLbe", "5YOJvxGRxUzrTwag", "H7BMT1IZKTdNFVBQ"]}, {"partyID": "1crBXAupATO8uXsq", "userIDs": ["VpdiWo8SjDAM0Riw", "8wLYW3n4F3LD1EDw", "BXw5uBYeQZOzATNS"]}, {"partyID": "V9E9yyNb7yaLXzAV", "userIDs": ["YymOuhCkZu4htrsf", "8eIFSovTGXaMsq8e", "PN1oco2jx8Upe8Sj"]}], "teamID": "MvpqM8puggOEdG47", "userIDs": ["gD5i2Ni6AnWn3NdE", "PhNHSH7eKDfRcngE", "pTnRUQr3RLOM1vEx"]}, {"parties": [{"partyID": "4gqDY6jwyKRxhkLe", "userIDs": ["5zohg9s9utRQt28b", "6o3K0COF74tz6aeX", "ZOYwbwjMNdxKWlBf"]}, {"partyID": "nRyFS0Ed7gTM5AVr", "userIDs": ["tBQiDTcNnZa6Zuxk", "6u6HXXdiC9ZDj4E4", "mv12FNXypoOLl13j"]}, {"partyID": "84P0KqirJ4PkMFts", "userIDs": ["nFfz8Ew0X8fBuBSK", "LSQ4GvLtz50D3rpB", "fBovqLwXBuT30EYe"]}], "teamID": "Rj17xGhaBKoUfiHj", "userIDs": ["GmCyPsKCJTv1ic9g", "vagF2cSuztsJ5tj6", "4gV7nmDk29mcjSuz"]}, {"parties": [{"partyID": "9vbNStqPtQmQN6eK", "userIDs": ["AGiZFCftT0RWECdj", "WYrnulxcCKAru8pO", "aAVLDB4k3JwkdaxR"]}, {"partyID": "7GJpYmuYCPG181q9", "userIDs": ["GA5DydC2D8UT6KOc", "4VPDUR9ayazqXRqe", "gIUicYXXzxsBFrUs"]}, {"partyID": "9BYp6TgCejBd5o7i", "userIDs": ["TST7R3KbbQGERMNp", "qWb51y5RUzvMfTkP", "y0fGvTGgfLKsg0b1"]}], "teamID": "Bq78cE5O5pmPnbiP", "userIDs": ["J9j4vxmbH3rVaauu", "fxkPHElug48TgfNu", "0rqXUOyToLPIREGI"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["Jt3EP9kKwkENQ8VO", "HGwbADMfuOmh0lci", "RhVZ2DeoODXMzLSr"], "tieTeamsSessionLifetime": true, "type": "5vhzgsJwex7wq8ZP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"lXNaUNgdY2vfJuje": {}, "5cPnmGjTvYa5Pqx1": {}, "K7qcAoijBPAp6EPb": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "988NzxrDKVpULjji"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'w3NeVG4DJi9DaMrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '0WFgKjE945x2CPVY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"YG9WvoGmAmvaVV5Y": {}, "fxnUNcwjr7gSGhnf": {}, "uF4WZiQVICVpWd3U": {}}, "backfillTicketID": "M08gMXhdf3juXW4J", "clientVersion": "prIb3CJCAtvSG8Cf", "deployment": "a9dzOJDGCTHIOFje", "fallbackClaimKeys": ["XbsSgR43kIDzxBwq", "RJTzrHNZWUsq5lQo", "2jy29EJigqYhyVhU"], "inactiveTimeout": 88, "inviteTimeout": 87, "joinability": "x1yPeczRpdk0HATG", "matchPool": "ylx2JG2KNGfhzfCT", "maxPlayers": 47, "minPlayers": 47, "preferredClaimKeys": ["KYCKoISyXtHzoWGd", "YohxMp3uOQIybqWf", "G9BJ6FVKlbYHtbPt"], "requestedRegions": ["axvagSlpGgVTF6Ve", "DAPOGBwweyFfXEOE", "AEtbag82KgBgyCd5"], "teams": [{"parties": [{"partyID": "vjkfz3eR4DtNp129", "userIDs": ["hzBw3xLUcCEt0Dzm", "kJq1sml5bYt76BNs", "i4giR9434WpKKdzx"]}, {"partyID": "oufCNlFoOcWQQy4b", "userIDs": ["jmQeEweoBHTdwAk7", "ZQnbqY1cQwVEtAr5", "kKKAo9MM2Cqm84jV"]}, {"partyID": "i9kIpqgrzpUkNOBW", "userIDs": ["ydXV0Fi02aFr8CDa", "pjwNOl4k8rVNrm8d", "rv8QD2JOe2Ntz7EF"]}], "teamID": "vowPgIGuetxFMqXC", "userIDs": ["QMAqQ2ZRGzNtrThF", "a9XU8mosluiHZJ7O", "8sAQ32wj9uaDzsr9"]}, {"parties": [{"partyID": "xYiWRuuzQJiLc1eI", "userIDs": ["9w3JEhxPGbEk7s7g", "w07FlounC3vJKBC7", "SwgoViPeIB4Ehy0Y"]}, {"partyID": "5aSJVDginxAM77eY", "userIDs": ["9C14FbfiI2NPvl1k", "CY5bEokxXxkWZbjf", "7GZxaossQmjo69wo"]}, {"partyID": "hJFyTNk5FGUPhR4L", "userIDs": ["EZvz3EjFR7996Ug5", "m4axDV5uTcYsoahU", "rELQ1btjJOqQMgZW"]}], "teamID": "AU6E92nHJzvw7tnY", "userIDs": ["tGfv0EJyjBu4EzwR", "jD7jmQJeFPghqamS", "c5y0X48eT7Mluexk"]}, {"parties": [{"partyID": "87b9Z5BTsEA3EdmW", "userIDs": ["8saabP4xRowfNojz", "PXI2v0prR3OEey0M", "kZwS6TYwNN3UYhic"]}, {"partyID": "03qGEg5fNzBVrjo3", "userIDs": ["g8CfRwtyl1HeT7VE", "PgG40QyXzsOzgck0", "78IghoQBp2mWAOYk"]}, {"partyID": "sczxBS0OBCa2vWad", "userIDs": ["LmQtYKmEMzicbuL2", "S3RiW8dLTCBfGUdV", "EdvdQL7sVwcZ2Pof"]}], "teamID": "aJoSqtrEOqxH46fR", "userIDs": ["TSZoDdT0fefo74eg", "3Nt2c0r4GqF0NHgl", "OVuNZ9LzNeJnBurh"]}], "ticketIDs": ["54CWbYb0Pebyt8b4", "DGscjwrizsFUgYwb", "aLvqvQ2NbmDITuym"], "tieTeamsSessionLifetime": false, "type": "Bjn3d2sFzMS3QaVj", "version": 65}' \
    'pmeeHdvphas9S7iv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'HEoLbUMM47f1UreU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"pxEkXIbE1ETzRJZK": {}, "Mavu4Ul2IaieEbPS": {}, "E7TGkeHsYsW9oGBN": {}}, "backfillTicketID": "1pYMBwbPZTlMlUvF", "clientVersion": "EiGprcNSQ9kEeXBZ", "deployment": "6FVrBzyhyhoS6a9o", "fallbackClaimKeys": ["e0JaXFpff28uYbe4", "Cf2HEHvVevhISjbt", "BJUK5fE3OufPSX3P"], "inactiveTimeout": 8, "inviteTimeout": 65, "joinability": "OU2V9yw94oa8UJ34", "matchPool": "TIedV3HyoX4VnO2L", "maxPlayers": 32, "minPlayers": 52, "preferredClaimKeys": ["BU08wfnlHBXFIqFU", "mgUSMM5au8GJT0mk", "VPI6zUtf3QaJPGrT"], "requestedRegions": ["NcXXTUIggoH89QNm", "I17UDb19R6H7r1ta", "3m7jK5pxe82pgFiA"], "teams": [{"parties": [{"partyID": "S6piIzmc8rKrKEPG", "userIDs": ["SAcong6eNERUf8kj", "ci1Ctccv9Gv4tOcb", "nuCqf0lm6WBkIzjo"]}, {"partyID": "SV31tvmMB6jzrpRG", "userIDs": ["ESmooHiCV4GUOnXp", "apXQGRakUbcG7PcR", "4eiU3Idi55jNrGNT"]}, {"partyID": "2VHTKuIT5FwwHj0U", "userIDs": ["r5F2PWGTTD81xhNP", "4t6kYBUjyXAn3bWQ", "F6QcAiJpXIrgroix"]}], "teamID": "ptZhckUTGkcBOE4q", "userIDs": ["McH1Kyi8ZFvGcV8D", "Y0XOkDstxZcY1HgA", "nZV4IOglVLqb9lGA"]}, {"parties": [{"partyID": "JUg21Lt7JwgwMUSu", "userIDs": ["C3Bajy3BcEMCtQs2", "FcEcvVAyId6Cp85H", "VDsZBQgOnXuXsGTh"]}, {"partyID": "YZrmm0wrFMnPpWgr", "userIDs": ["QD4hEk0OLjYsnign", "E7KcMF7fuDbzRRYM", "NXWUsp1tOibJY9aL"]}, {"partyID": "9ie6vvMbiNURrlm8", "userIDs": ["8QlKyuoya4JgakZy", "UV7t73VnSFbuxd4K", "YZ0jk0UZdhtnKu9o"]}], "teamID": "Tc8pVkiyGsj5JdXz", "userIDs": ["RxfNEjUMTs8WIObJ", "BTsvsw76uISRX0bK", "VoWtoUW1P7ocuBAl"]}, {"parties": [{"partyID": "dDSUS7Haa6unq1yQ", "userIDs": ["OSRvyiLBRVtIDi2p", "iIQFVmzMidw70KSa", "hpYZdKZRyR9AX7Jj"]}, {"partyID": "xvNZhM84DiZk6ySr", "userIDs": ["B9SVFctW7YS0OkL7", "8XeEAtALFI3v8yha", "4pd5A7MYcpBD6lKN"]}, {"partyID": "b8RxvN2u5J7baOeL", "userIDs": ["H19fqBwNbNe1ffYR", "tIvQaKyevWYtZjK6", "J29v8MpBSpo3AKRm"]}], "teamID": "nJkzJHAckUyBksYQ", "userIDs": ["fDm0RNFwiz70tRVL", "MlHi8i9gOVqajUWr", "gEsWDtaKzn8dZwnn"]}], "ticketIDs": ["GeZsZVgbPzPFbrOM", "ZMgWkFN7Tpkx6Gcf", "yOg6ZUrrp9ubg9mn"], "tieTeamsSessionLifetime": false, "type": "Y70qdgJRvpZrSpWX", "version": 84}' \
    'KEe2BjV00ReCXFff' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "jJJxlgjzIhpgOoIO"}' \
    'D74V21HWDAfvXwdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'byp4HAPbBbNPStVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'UpKgOssFkz0F36pi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"DYXeHZ7FHls3nyvc": "onqbHQqKLQKe3xmj", "6s0GqsWncp5Lrqbi": "Kudv9z75SzoCV8ZM", "i2o1nR482D6gNClk": "9c87hosaPFC5zBW3"}, "platformID": "ZgVZCj9ObVGT0Scw", "userID": "l4kNmCi15XTJTgCN"}' \
    'NH7RtG5Xmo9Q0Wb0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '7N17fkxZSc6VbE0A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "GcekjMNHuPXtz8tX"}' \
    'xrmzafMUguyDoN91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'uc28HoSpGt1g0GGb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'T4Hf2PPKOldkbgX9' \
    'CWJKwXXSbv5eg9q8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '6IaDFjjx6uZerWbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'wTX9gNRByjbE8lOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'AfTXKLzbrddqcKLa' \
    '7LevxNHOSEhQRZIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "693lRwtc43atCuCF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'xbfbz4aQERziPL4d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"HhOqG5KDdUvk0LEi": {}, "26Ls7mjRxNmvvNtj": {}, "JNQepUTGhwlY4lPz": {}}, "inactiveTimeout": 24, "inviteTimeout": 81, "joinability": "sCR5rVsyfcH7WjP7", "maxPlayers": 69, "minPlayers": 97, "type": "uGz3b5WAEvdRF9bq", "version": 79}' \
    'guhh3bvadRthdbVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"pebRA09rW8i8krFW": {}, "Jhe03coRFok5d3Ay": {}, "GrZO8GuoXNSoVEBG": {}}, "inactiveTimeout": 3, "inviteTimeout": 97, "joinability": "CKpMv2Yky9DYkD2s", "maxPlayers": 71, "minPlayers": 23, "type": "4FCK5ucTFsAFzaO3", "version": 50}' \
    'htWm8RQvRUbUDSie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'fGEdLucrtO2gCQD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '57DrDlgC2nzS9SiG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"UjVAw4v3q6JRHcn7": "KaoCEkRdo6qHYIZW", "nXqQ1oHFJ9Q0vqsL": "9SomqWsGA76yxi0Q", "zZWfmP2sx0KO5bEJ": "aPnAFjsodyJQVVBr"}, "platformID": "ShGbIIuqK8C403Hg", "userID": "oXCR6XOMXwKdfqk8"}' \
    'T4QHK30EX0FclpDl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "5HsuracO5MnjnxD1"}' \
    'OXkxShFVQTRekLfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'my8zosRCRgVwbrQK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"mb01yA7U7dGMjupZ": {}, "kZQY8CNyT4k3DIbf": {}, "T22G5NpE130YWSgx": {}}' \
    'pKWtdtdtVW9anENm' \
    'xb9e7vXZV3ig8Jg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'VByeI3ycMcYYBixK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'JXCISQdwec1m8Bus' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'V9tUh74KVo6Xqjz2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'xUKLNWSmYyVvyelI' \
    'J8QgaLMqi836ULa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'cfZl4VuY6rsZyo6C' \
    'BRRnoOikIxXKKIR6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"kPmswm5TCAU1cKAp": {}, "dJDnE73GLmSZns5o": {}, "wBhoUg4LsGP6KLPX": {}}, "configurationName": "kvUv2XiXaBzsmaxj", "inactiveTimeout": 94, "inviteTimeout": 68, "joinability": "ZPlLitytGka7Kv5T", "maxPlayers": 1, "members": [{"ID": "OZ0b2p3b63KrcwIc", "PlatformID": "XMhGy83Xit6boOLG", "PlatformUserID": "Ccg16DqwdQPQ9HkS"}, {"ID": "SV8e1MgTTLS2Fgar", "PlatformID": "Y903INGIyEfRBEj7", "PlatformUserID": "qms9AGQExPhgr9gG"}, {"ID": "fC0GjvpgJfuBs1Vp", "PlatformID": "qn47GVghTH2wToOn", "PlatformUserID": "q9U5lyW89Xwt3wmR"}], "minPlayers": 93, "textChat": false, "type": "rDCjhnKvsHezWTqg"}' \
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
    '{"YPixtHk6lWq6tEeU": {}, "mU96FLEak0mJqjRY": {}, "ldcTpdeCD9XPRi4b": {}}' \
    'AQL7VE2wL8Y4JFVU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"dzA8bvXlDhG7Bror": {}, "bKIKuOXJPm5ztrr0": {}, "9CDA8Ij5bGKSuopW": {}}' \
    'QbaCvdPSq8Z27Gpv' \
    'HCDx55JZ5z6gujpF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["zlPspQD9IRIpDDub", "ntPCFxfeoW2NdSWz", "OXjO1NQUqWHBW78X"]}' \
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
    '{"crossplayEnabled": false, "currentPlatform": "EZCiTNAxq26gZrPq", "data": {"CsSDspvgM16sZ6rj": {}, "nkH4ExObppC6CMYD": {}, "m5ge659UDEOF6gp5": {}}, "platforms": [{"name": "UfmjtiVbqJnZcrqr", "userID": "Pye7fCwi7Il2wIFl"}, {"name": "Hm9N6owMHMtJy1Oq", "userID": "n59tEGm9NYeUT5P0"}, {"name": "nx8TqSZdZ5C8mFI9", "userID": "TnvzEqBNMF9CZvPx"}], "roles": ["T5zbreMc9fBoU3RH", "NDFjLKFrepy56eW1", "kmb15QeIQF51c4Mq"], "simultaneousPlatform": "JzDSvELgBe6dboSd"}' \
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
