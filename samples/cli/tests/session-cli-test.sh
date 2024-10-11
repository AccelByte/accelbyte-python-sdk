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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 9, "PSNSupportedPlatforms": ["kgghGoYupD391C2q", "tPYokahFjkQsfCaT", "mt1d67FXGk2s9Q0m"], "SessionTitle": "PVo3twu0MesTCf9x", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "WN2laRlxfcjHfYak", "XboxServiceConfigID": "UCTqGkE7wcWfDslp", "XboxSessionTemplateName": "JSqGAXQ0yYoNRKd3", "XboxTitleID": "IL5TAQ6iiPlSC2uE", "localizedSessionName": {"4o5Vwdo3fePqIJA8": {}, "IHtrkmu0hpDDWVAl": {}, "a2l5BYNtIuS5S5XU": {}}}, "PSNBaseUrl": "djsoqwGyzzWi9gwQ", "appName": "Yv7t1o7TTr1DmrhZ", "attributes": {"v15T7quIOvBMcaYm": {}, "vCkGZ5dAgqxpBFma": {}, "Loxozr6wfNPX2bOI": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "MvqtlB2jJCSQT279", "customURLGRPC": "ZZPYGu0rdlgdWyOt", "deployment": "Xi3choQrpOsDBU5S", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "U8MyKrQpM4hkkK6K", "enableSecret": true, "fallbackClaimKeys": ["XNB3Gv0IqmF51Tkh", "jYnaq6foWvXa3bMr", "XsDr6kILsSSyDdmy"], "grpcSessionConfig": {"appName": "kmoPYgc2L4jk4Lo0", "customURL": "LSP0pf4IxjUkl535", "functionFlag": 69}, "immutableStorage": false, "inactiveTimeout": 40, "inviteTimeout": 57, "joinability": "eEKDpADz1x3poD3Q", "leaderElectionGracePeriod": 14, "manualRejoin": false, "maxActiveSessions": 9, "maxPlayers": 3, "minPlayers": 30, "name": "c5csSovoqsZNBdte", "persistent": false, "preferredClaimKeys": ["NDUPVJf6c2Z0QZxf", "gPubTDIHrvqAThuw", "jRHpKKTlmVr9XuoJ"], "requestedRegions": ["bRFQSKVPHbn4Xxtu", "7LQRENjEEztx1WsY", "SiZqan0nSBJroav9"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "eKtW18iGeUlc9d9s"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'ogWa24CKNS0GqVvU' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 12, "PSNSupportedPlatforms": ["yEW4ZJJ42d3PBddN", "8S48l9lyNApflxqM", "rj3oZk03QXcKMDYD"], "SessionTitle": "DxHSZjtqXyJ58f7G", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "SaiGVkydwYWQG26y", "XboxServiceConfigID": "UZNmTBcvrbYCwZtx", "XboxSessionTemplateName": "FHyPLtI8ilbyDPUI", "XboxTitleID": "j88cekdqCt81P1kt", "localizedSessionName": {"fIovmv9gsR5cJcHm": {}, "3SZLxoRDFuuuySj2": {}, "9a9LJE8HoRS1X2PF": {}}}, "PSNBaseUrl": "AAMwzHPxB1UskYs4", "appName": "Yw20DOqOBSC2DKHR", "attributes": {"uPMMWH8Yb33T5UBJ": {}, "CjfcnLRfxeCSz9WE": {}, "i8KlloeH0JT1ydua": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "vQR3biBfsu4jmsRE", "customURLGRPC": "2w1yEkLgh3tIYt4S", "deployment": "qYUTLDx9gIiDandp", "disableCodeGeneration": true, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "24aOMh5eC3IHeHSK", "enableSecret": true, "fallbackClaimKeys": ["rCEAE7WIsfmx40NL", "Rc6m8heKnWhzfe2N", "ubeoKFeIaFQCYoDP"], "grpcSessionConfig": {"appName": "ICpnduEEQlULdJz4", "customURL": "mnRBkMNxvvKgAT8m", "functionFlag": 72}, "immutableStorage": true, "inactiveTimeout": 55, "inviteTimeout": 12, "joinability": "q6hRkloqxM3gpwxc", "leaderElectionGracePeriod": 11, "manualRejoin": false, "maxActiveSessions": 51, "maxPlayers": 51, "minPlayers": 61, "name": "XzjjI5YbsKoADkzJ", "persistent": true, "preferredClaimKeys": ["13lk1dQBHO86IlBh", "netU4RwTqUXlTDBz", "OuYsaZA2yyd4mbqo"], "requestedRegions": ["OfADMMAXFaY9eKa6", "99bRVhyaKwwrAP2a", "Mlu7WtjCtoYetOO8"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "8OudOfjnCuHZ3c46"}' 'IjGa23YvYmmDg7VY' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'PXIuvUYTZBRujIUE' --login_with_auth "Bearer foo"
session-admin-get-member-active-session '1Tq5jyAZvkRCMNFI' 'urjh2imdb4rbkXj0' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "ZwsVC0gL97ZVJSPq"}' 'Jiwv1qlYB1RSKs6g' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"QxC3Gb7S0o4zGYY7": {}, "KQI1AeFgPqaOkvo1": {}, "aolB4lkKB4EYOkQ1": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["jMD3cym8xIfkOVW2", "grREOLx0KOww3HIC", "QLfl7MUBG7qtPu64"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' '6QXCs5SPBbRPZTF6' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'oQAXVG7tnsZg5QgX' 'jvyGJPN4eXbJE5Vs' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '2GcyomQoIXimBJeh' 'yxlNsjUgxBkF6wFP' 'oJeQediogEhhM2rI' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "izGdKvOPdq5xrgxS", "clientSecret": "my1DN9LFkYW5DQyj", "scope": "4bj5Ro2ogaKt2ujQ"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'Sa3Zdb65UXmy0Zp6' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'iIaTIKUkmkk9QM0N' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'BMA9ORxpzwLR2AK6' 'eXUGPJsw1fiP80G9' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'Pclxcft2ulIJzPyr' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'VEiOG4UcqsuGKHhM' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "RWLVd3DlhLuIpomM", "attributes": {"8sm1MiaI1mX2tJoA": {}, "RtdbBe7udsMrok0W": {}, "vGYYnx4V709xbnGe": {}}, "autoJoin": true, "backfillTicketID": "zJ6fH24T805tVg8J", "clientVersion": "qU0jZpjvsugAOS7u", "configurationName": "8RiWyerCSa8SRgws", "customURLGRPC": "Aj1ik1jglaDXTvKC", "deployment": "WwNTAhd2wrS0uPdj", "dsSource": "hdinpng5BLy8wbhM", "fallbackClaimKeys": ["ssAHjapIkY9Rf4wP", "57dBZNR88YbCtmKy", "8M9zVrjfGXZnqAQU"], "inactiveTimeout": 30, "inviteTimeout": 56, "joinability": "Y1GjlIIk0iKoTTS1", "matchPool": "j02o7JjTXAQN0qds", "maxPlayers": 21, "minPlayers": 77, "preferredClaimKeys": ["dQV0TqI8EFnmDbxI", "xi4YKlONk2Q5Y4Jv", "aizwiilatuUjjt9l"], "requestedRegions": ["IMGql5ElEa9EIIlG", "cHB3CfR3ncDlwi3v", "3MFFJ1KesKoELCpo"], "serverName": "bBEG8X645xpdXpai", "storage": {"leader": {"0rYaT5hOPjaf3H0t": {}, "YighU0VUfcYHJbBf": {}, "AKSiPW3VgsZXiR1D": {}}}, "teams": [{"parties": [{"partyID": "J7HVWqMkNSawQUWD", "userIDs": ["FJvJBWic7UkBeIXu", "qDuAXI66bQ71w0de", "oV9Lx5RDA1l2Xcrc"]}, {"partyID": "iYNEzvSZIPkhSgOR", "userIDs": ["cz5S5BvmgBLxh4ij", "FnE3Tam69qSZ7PC6", "f6QkmZXElW9YfRSs"]}, {"partyID": "e6AAz3S4czz0QKFl", "userIDs": ["AVmVLu4AOec0z8eB", "eeoip68J1nsv4W2O", "JhtafxMSJlHeb34s"]}], "userIDs": ["ZKHcl5LLLOexL4fZ", "vWtND2tcBFpX8lNt", "FEJ7tnkY6Mca5afj"]}, {"parties": [{"partyID": "12K2IzrBvvWm4udE", "userIDs": ["0OXudXgNne8kJATw", "lc6esUp6Sw1I98je", "ZQ7hfxnhLd3Knakn"]}, {"partyID": "oed9DHhLOqQGhCUr", "userIDs": ["6iTrjyEgarAdNJOI", "G36I6tRbRcrEveMd", "AdiPKDUVSC00PYeD"]}, {"partyID": "cagginxnFIna3ydd", "userIDs": ["cbsPheTH26IUJNvY", "uGRUvpZaHCuESOiI", "ZsMfB4ZH3mtgWgU4"]}], "userIDs": ["pCAKxeE70CaunQNx", "ot371W9G4AvQkqsG", "nmyo5JJTUVmb8GEX"]}, {"parties": [{"partyID": "FTlEMEsFzYqwgK1N", "userIDs": ["p5nodqpLm7FhJBNX", "zAFdO0Khqf6kiTdS", "Gv2LFjAKY7CbgsWq"]}, {"partyID": "FWZX7kPBom8F9GLL", "userIDs": ["TG8phc3n4iLoIllK", "lpO2pqiXJF3WGRao", "QomSJC4DdrKF7SUQ"]}, {"partyID": "PLG59e0k5ZtX6wK7", "userIDs": ["PpUlcIW32iK7MGt1", "ixY5rA1WoVeJIePF", "8ZrQzP4zvtdxdbZU"]}], "userIDs": ["pd6FJtHJ1pyVwyKQ", "LY6FEO65Rb3z7CYL", "M8IlsHqffnrfsGlf"]}], "textChat": false, "ticketIDs": ["ZgKg4uKxaCgcGLuC", "3brWdTYCfHkIySok", "5DiXZtLW87rGysry"], "tieTeamsSessionLifetime": false, "type": "Od6X3viLvtEk4mTI"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"pUA9gxo8SV38nEho": {}, "XmM2W7l6jHMA2rG3": {}, "nakopAywelu01nry": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "EJ0NqoTow0qiOiC4"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'j0iktm0ZPLkLOsp0' --login_with_auth "Bearer foo"
session-get-game-session 'LZ5njN86Hl8kUXzt' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"6bSc6bWvgpVyW9dD": {}, "1kOmvrAejcq2LgkQ": {}, "uaS7RBx3vim02jBO": {}}, "backfillTicketID": "xrZDyvpcLYOWA8Nj", "clientVersion": "xOnaEok4nOOCzfsf", "deployment": "lhjbngJOUn18G5Ml", "fallbackClaimKeys": ["fDTk8aG40NlncceI", "ZSwgAIkgzh4pTU0A", "m4DZhl0bQxFJ3sWC"], "inactiveTimeout": 33, "inviteTimeout": 31, "joinability": "QpQ2FbKPFMycMSQ4", "matchPool": "qfAacR0LgB5BUXvj", "maxPlayers": 4, "minPlayers": 85, "preferredClaimKeys": ["u2s6w3VifnKqmTSo", "GH1XEfY6QAYn6WQ5", "UBEU1QAOHfZiGhxO"], "requestedRegions": ["dcuDXSxSc3aZPV87", "pna08gxefTYKhuxa", "Ec7M4P7UckSC6ePe"], "teams": [{"parties": [{"partyID": "N8i4GrFES9z7xueH", "userIDs": ["pATHccee9GXhKcjm", "SEwdrkEnnqKzFsLf", "YalUlfwEQKjU7eHG"]}, {"partyID": "ebSVu0LQ40kepEaC", "userIDs": ["4dfiOMZfEhHr39py", "sFO3Zvc1BZG99Lyv", "fvHEsJKQQewVLMUo"]}, {"partyID": "AnaRcYp7FUjfIGaf", "userIDs": ["foflEIByYqeKN0me", "GelYF5wWaDhukU4k", "hGG4vZFTYnPkmSu4"]}], "userIDs": ["PWam1jxR7SETWjte", "oc8fgvZDDhoO05oK", "qymxLD1Lcvw6T6mZ"]}, {"parties": [{"partyID": "EiwxxElpMYSWIeVz", "userIDs": ["m7z9noowmlTIKVow", "i0RY2VN4ZONJREdU", "Q3z9F1BxNNgnke4a"]}, {"partyID": "kncw7wu9TmXfJWBP", "userIDs": ["rx9Ns8eLzYEvwSWT", "aLQjctvrK2jhsYpK", "PlXn77AtYoFzLAAT"]}, {"partyID": "PY8P8P3cfoivvQxe", "userIDs": ["vecWw7Rry0KK5rgA", "GO0dW8rX2MVUGKSZ", "4GcLkt4pK32sJxlZ"]}], "userIDs": ["cCTpTdRtCHvuk6B6", "XTmSLyn50sigBVZx", "iKdV57GvRyd9UuL0"]}, {"parties": [{"partyID": "2Le8HSCslsDd4M1F", "userIDs": ["5qRIblS7Nz81GRaz", "PAANjfBoldFOyqA2", "clJ5gEOaCgM6Yn6R"]}, {"partyID": "ugbNEIpGBFUjOn5m", "userIDs": ["M7k8nbLzvtCIW5yn", "MKquUicAeIVXtoWA", "XhMlW4tLqX7OICf5"]}, {"partyID": "oD1e6oI9FmYel0kO", "userIDs": ["w72o8Zkgk0jS6rDW", "UwfhKvrf2AaH4yCW", "rHSppnIZkNnTn3rz"]}], "userIDs": ["H5NvAtcvNedgS1fU", "fKmihDbmu8ePWlQM", "VDXEHeiGTnwyEw6h"]}], "ticketIDs": ["IWDZrpP7rz3ISW51", "0kHr4isTKWjmv67n", "uHCXWfwnwGioVwVz"], "tieTeamsSessionLifetime": false, "type": "pUtKp6M9I6nEwnZh", "version": 37}' 'PJ3jtDYBo4FUTH7C' --login_with_auth "Bearer foo"
session-delete-game-session 'GfKSyxgRR1DiCqSM' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"zpqIFGLkDs7ACC1R": {}, "gBfoNrHlFi2qJLgm": {}, "BLE35YhyiDV90SeI": {}}, "backfillTicketID": "5yppBHoytVznCgNy", "clientVersion": "x9fbT63ShEh8PbGi", "deployment": "kLjgjcj34uulU6FY", "fallbackClaimKeys": ["BZsWFbr3RSP0W9nB", "hvhf8Q0DtJMcYQdN", "66bswAgt65X4N1LQ"], "inactiveTimeout": 26, "inviteTimeout": 10, "joinability": "B61JMdtwCVUrYQue", "matchPool": "84dwmbwFEnAZaWsQ", "maxPlayers": 72, "minPlayers": 68, "preferredClaimKeys": ["tRYoagRJK5PX9UcO", "vhPyE11TRT2SKseo", "e8VLie0LBa36KNzj"], "requestedRegions": ["f005CXNGehQ2aTjT", "DfKFDXC7eGL5YhJD", "Wh9YWqc0qgV6d9yO"], "teams": [{"parties": [{"partyID": "fIMLds2DbPcaoMdt", "userIDs": ["RLTmSvTkQQgB7exY", "vmHMxr5hPCJJztJB", "g0tTJg46IewOXE2A"]}, {"partyID": "kCh3QIZsUf8lGFXc", "userIDs": ["mwTERHclOdxIwqej", "xe18rNdb8Otq6j1m", "qUav7k05HAQltnSo"]}, {"partyID": "jV4jT65yclX2FtAz", "userIDs": ["0vJjFIYWOaNdsimm", "kW2miH3xRHAKy4Qx", "ZkaXZ7vmiEd0JPxV"]}], "userIDs": ["yQpshaDwNqTbbFMX", "AMfVXe0GZeMgsRsm", "H1EQrYmkPKTPOlhT"]}, {"parties": [{"partyID": "tSiZNCxuogFteTHJ", "userIDs": ["e4BhSSQkQD6WmOt6", "D7ufFVTOhvQpfbBk", "e8aEdd36xj6wySol"]}, {"partyID": "tDxsbzxrlaKEfkoY", "userIDs": ["jY2o6ouRW9UtNquw", "C3WgumrIz4NhGztZ", "pr4U4fwQIiLXgmRa"]}, {"partyID": "svjO4lj8m3XEwP2b", "userIDs": ["4gd3xOeii8Jnmsse", "p2xD2NY0kABeGs9y", "xahld1pO0Gyf5PO3"]}], "userIDs": ["COyMvczgEpzZ3Fbt", "xfhcRC7IVYa6iZ5u", "FRYNn3SHiWxF0Ybu"]}, {"parties": [{"partyID": "U5ar5qTLWUCy0Afg", "userIDs": ["c050XIZRW491e94m", "QjVOOBnIWhunElqZ", "Uodp3IhtCSHy1ei1"]}, {"partyID": "fIrPvfHnRN06EjRw", "userIDs": ["EQlNapJRfk4f9Zcw", "1pEHAyNFxcVTKuAQ", "TGh5BxjWOozGoDts"]}, {"partyID": "UuYo5p8ED5QZAufw", "userIDs": ["Na8lzfjv9oYMXMjl", "VHY1AHwF3vGoav7M", "K0PcLnEkcokKwcQ0"]}], "userIDs": ["baDT9OyJ2h23GUS2", "amU7syGlElXdEAOr", "VSnLocLVVYamQc4w"]}], "ticketIDs": ["cG5nDBLJoJHbiQ5d", "uE5p4cfs2E41cK8Q", "TwiIAvxSvNDlmM5n"], "tieTeamsSessionLifetime": true, "type": "FMGzs7fzjgyc44mE", "version": 16}' 'CFeY5g4XgBsbfzqx' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "BPNe8ae1Il4aAtEb"}' 'u4IjGdqthRxTjQ7g' --login_with_auth "Bearer foo"
session-game-session-generate-code 'kZEY8rG0q0Q2Qd2J' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'zRbkF2I03dIjvBbA' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "6bfbYaJCJjfk2TUv", "userID": "n95FhO7VW3mbDVMD"}' 'u87t0ldWf7iSGIiK' --login_with_auth "Bearer foo"
session-join-game-session 'FtWtn4Yr2svKM6pq' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "LGZ0TBujELAUK6mQ"}' '5iZgbwwm5iGzXtck' --login_with_auth "Bearer foo"
session-leave-game-session 'nrgidKupvXO6aj4h' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'CmTC34jxW4pIDwdq' 'XpmRmut9H9XyWI8b' --login_with_auth "Bearer foo"
session-public-game-session-reject 'p8fQxRuX91uYmtrH' --login_with_auth "Bearer foo"
session-get-session-server-secret 'JbEGTUj7YjERL1rE' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "QG02zccA8wvLsWUN", "userIDs": ["d6lPKvqDejvqklTS", "vDwuOrP9lzpiX0Vu", "FpZum7izxe7NPzjO"]}, {"partyID": "a8E7wY76PxLv9HBE", "userIDs": ["Ue89AwEw1HO4FnKt", "x4XLKAmlDr19uJ3n", "q6VerzVCcI8y3Cz0"]}, {"partyID": "YqCKUh5RD9vNAp4j", "userIDs": ["inFpnQ5xF9wwbvMZ", "yeDeRnVfPUa6xVVB", "cq3wZpFIYeAg79Hc"]}], "proposedTeams": [{"parties": [{"partyID": "LJXJ7mpVI6eTYAjd", "userIDs": ["PlCiQQC35cj4KyOV", "gvnWbfRJtsB7cUQZ", "2QUAxJrINPXppPNO"]}, {"partyID": "3AfmXcgwC3IN6tvK", "userIDs": ["gLB9QmJIOq9dP5sz", "G71utjsQ4CrRb9gU", "CeVz7fWbZIdhevfZ"]}, {"partyID": "vyV7AcodcZwKjYDd", "userIDs": ["mJOlzwm9Su4FnS98", "QqftSjq7sn8yreci", "PLfkVyyJsbGpO6Jg"]}], "userIDs": ["ehDJxEN7JlZc8LMq", "1o2jZWu4yA3r0u4q", "1bTHXIjfJKyFlM0u"]}, {"parties": [{"partyID": "1uuoVdn9yVoSlKNc", "userIDs": ["hPHNL4X3LLaGPGdq", "LE8SohhhuiTnJarY", "YkHBDdSzBXdxapwh"]}, {"partyID": "d5IQYBQuxLvPuWYv", "userIDs": ["E3fsNy9Z9OhxXvCp", "9y7fLD2qfCXnlUnq", "xT1WsRNMZcA92hzC"]}, {"partyID": "7MNa8vVe4MHX6AgM", "userIDs": ["ep90AyyUJyAK5PRM", "RMwdvl0hv6g62GxB", "W2tQF5tkTjgJaMYv"]}], "userIDs": ["NQOsDa4bkcgepqtx", "jbrztee7QLTGAak7", "Kaol01DK97D2xnik"]}, {"parties": [{"partyID": "42miteR5eQAe1rzm", "userIDs": ["mgqBPRmd6mO4oI8K", "Dqebm83raNBJ5y7a", "xEkvI4oxZEDxGiBn"]}, {"partyID": "Nbn0zaf7CaOSlHXr", "userIDs": ["USA6sMJzA5mtqISQ", "83TTbtefXWznDe4L", "QdXfFBii2RAMEX5R"]}, {"partyID": "MjBFVZGYzQqV8d9m", "userIDs": ["DdUIoiIJFNxuNOmU", "SWw18T1IxVWCxdvP", "L9e4P01vxP8xj1Ly"]}], "userIDs": ["EirURERnEMzpImW6", "sjAHyCK5tNanGBrk", "zUvck3xTtmOFMebS"]}], "version": 86}' 'AdlNzwog2IhErkNh' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'NcECWwchW6zL9Skb' 'LlrNXnGanMazb8jv' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "RWenURH48aJuALEc"}' --login_with_auth "Bearer foo"
session-public-get-party 'SqcE15u6D31DjOsr' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"s3CUYATdqnQGbqiq": {}, "OkNeATj7eGjodd7C": {}, "cJUrI6MAugK5kypN": {}}, "inactiveTimeout": 37, "inviteTimeout": 86, "joinability": "p2nFe9FmN86sK5LO", "maxPlayers": 33, "minPlayers": 78, "type": "4ft5jGcMICPUYnfG", "version": 12}' 'jl9U4jReteIMgzIS' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"omCsodJrhQW41q2O": {}, "spCZbt3Uta5I0uGc": {}, "L1koyHjCH5olYLET": {}}, "inactiveTimeout": 90, "inviteTimeout": 69, "joinability": "pABAmO2EGvJ4UMS9", "maxPlayers": 96, "minPlayers": 50, "type": "jhKPwbwcvQU5kG8b", "version": 17}' 'GFmPAnOkDiJq4xQy' --login_with_auth "Bearer foo"
session-public-generate-party-code 'e7HqnVK3YVeOWs9m' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'fVQh3jLBtn9pxpE7' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "BYtzB0B4CxyQrUpI", "userID": "FvORxTi79DpSjb39"}' 'ukcR6c2E2r3vk3If' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "AKEbqcNXSGCCvNow"}' 'NmdpcJgF88ySNq4M' --login_with_auth "Bearer foo"
session-public-party-join 'j7mulP4tQ6R1OqKV' --login_with_auth "Bearer foo"
session-public-party-leave 'OTniBgLsNhdgQ0JW' --login_with_auth "Bearer foo"
session-public-party-reject 'ZjNRSzOTqcVNX3ah' --login_with_auth "Bearer foo"
session-public-party-cancel 'vxw9gwwhTnjN6wKZ' 'GW4y3f0R9s2kndhh' --login_with_auth "Bearer foo"
session-public-party-kick 'ZhwAiLsZs4pmLDIQ' 'ch4IjDq9aT3qZyI0' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"rYsWucAkXsVJbXi7": {}, "eRZa7WwIc895ImqK": {}, "6tVsaUq3stUh5J5Z": {}}, "configurationName": "9GiBiSAylX5cS0Ie", "inactiveTimeout": 69, "inviteTimeout": 37, "joinability": "pWCugmfOL0QQpxsu", "maxPlayers": 60, "members": [{"ID": "x0EaURydf8ZyyZeH", "PlatformID": "AWGgJUbUJRMbkcTg", "PlatformUserID": "lbU86FyOjApNHBVf"}, {"ID": "NOURcjY3YYT9oTyn", "PlatformID": "mfIuBWgJTNFfM8M0", "PlatformUserID": "IW4oe8KDgy0xZfAc"}, {"ID": "Ng14Ws8TIP1LKiFQ", "PlatformID": "oLDvumfqrgSfnx2h", "PlatformUserID": "61X9dN1MGRXBJ6mV"}], "minPlayers": 98, "textChat": false, "type": "JS9qjNLwvI8JdiY3"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"RRiLilmOGF6dLLIe": {}, "IVIjMcdlbdRXTGIr": {}, "dNL5gJPqTAjgqaTH": {}}' 'f1ANTJ9Yk997XkGO' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"dC6ItxDT8p4n4XCF": {}, "kD1AJLCwszbZxuHS": {}, "gDOK8bjoF7bL2635": {}}' 'KbtZTGJpqgl2IzNX' 'GTuQPIDpor7t1aJL' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["NNz6QIVC9Mfuc8VO", "snmnlVljdWYmELe7", "4p38vumnxAnYBTxa"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "Iz0jcgDI8Pkz96vd", "data": {"80msqIm5bufnBqrp": {}, "LeqhwVhjnnjKMEmt": {}, "biWsAQHbMrKYi0Zx": {}}, "platforms": [{"name": "s5SWCqZXHLLa31oQ", "userID": "f7BULnZDhutDM6Bq"}, {"name": "guqD5xxGxBWtnTKU", "userID": "e2znsqPzPkwCBo2S"}, {"name": "wCUsTag4MLAo3m61", "userID": "P2xaNfmn8Onb1a9g"}], "roles": ["Mz0F2UBRmMhAbUWm", "FhdYLWzMuv3zkUY0", "n0BAZkwbYkBLyO6A"], "simultaneousPlatform": "0FqfhnaB3YxKNdOT"}' --login_with_auth "Bearer foo"
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
echo "1..87"

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
    '{"metricExcludedNamespaces": ["uOzhxHmnrrV9ZGWr", "Z05sxe6A6RpmKDeb", "NkylbynkgT9vayLL"], "regionRetryMapping": {"iizac7Ge6zKJdlt7": ["rjF5RaJwvkWVco2L", "To5ijlvDF8qBWCQ9", "dLWYyS8zdhMeBXH8"], "x6HdVfZVDAiU6iJO": ["F7JKZFNk2NKy59X8", "iOg2sVBiCoeC5weX", "Jl7PeiMH8z8dVej8"], "N2yv6VTnOK7xAvM7": ["tuL81lsR7xxSVp3G", "d2TK0HzYviTgYmx8", "2JVBRLPZ6Iz8tne5"]}, "regionURLMapping": ["dbguBF6Gsvvdl8jH", "z9x7XZIjU4IK9lOL", "aZaMphKCqTq3EVhe"], "testGameMode": "JjoEEXBLIxGnNuho", "testRegionURLMapping": ["JM3WWPvvCiCf33Vi", "EdqQpoGkUWNizk5U", "cPAGv6c1ESC6hZYT"], "testTargetUserIDs": ["YZbzf5aANNNs5kgS", "ZZNUHbIT9szApmWJ", "O5vzzXZj08a6K1XR"]}' \
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
    '{"durationDays": 98}' \
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

#- 15 HandleUploadXboxPFXCertificate
$PYTHON -m $MODULE 'session-handle-upload-xbox-pfx-certificate' \
    'friSpPFnZBJZkDnE' \
    'tmp.dat' \
    'iyfa2LrnpZxNnLRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 38, "PSNSupportedPlatforms": ["6bqS2oFY76PU1Azi", "BOHEAj1cT3u6Zc2F", "brTFznTgDIwZIRWf"], "SessionTitle": "6T3by2kYSCdnFKLc", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "cTjqjdcEfU61OJYM", "XboxServiceConfigID": "nW49rWynp1ck1vT9", "XboxSessionTemplateName": "0C6o86cSRL9cgbUm", "XboxTitleID": "ulhe98oaFKlQicdr", "localizedSessionName": {"xVhrtwSd9QWVMYz7": {}, "TU1TsxsChSclSkb5": {}, "aBi9K9zyv6gFZXI5": {}}}, "PSNBaseUrl": "nXJ7hLi6HweweRmy", "appName": "o91dIn7QqXBDXJcr", "attributes": {"qKmXDwoEV6tCdrxw": {}, "1KOPhuvHuYrGWDK4": {}, "1uMOC0mRvSoaGk4k": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "F5wnJDg9Q3WXiydC", "customURLGRPC": "OInVolsr6CHmj763", "deployment": "vLwtYEJTSiXjcY5Z", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "VFL8LNW11vtpaTxi", "enableSecret": true, "fallbackClaimKeys": ["k489jRCn48bvkCPf", "KofwXOIZZQAJza84", "lKKmVOaTS6xBbNrS"], "grpcSessionConfig": {"appName": "UAW2ak7ISDrBVg6N", "customURL": "uDZvPb1kuUfNfUDe", "functionFlag": 57}, "immutableStorage": false, "inactiveTimeout": 66, "inviteTimeout": 34, "joinability": "dCUoExnKfV3869IN", "leaderElectionGracePeriod": 76, "manualRejoin": true, "maxActiveSessions": 82, "maxPlayers": 6, "minPlayers": 78, "name": "hH4GVU7Exlkmc4xY", "persistent": false, "preferredClaimKeys": ["0oaGouFu4hXONgUw", "JnUpryDeRcpUvlrw", "2MwC1uuokpaIjL0V"], "requestedRegions": ["xe5n9Lx3QcFo9gxO", "gvDc7xMrRKvw8ISP", "2WKmCRRXBxlalCHt"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "LgsAF4ctv5guycGi"}' \
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
    'q9j2EyIknfLDpgHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 79, "PSNSupportedPlatforms": ["KLTDmHe8c1eJ9sde", "7Ryt4udIv22M18uu", "x9xBomQFPFWy5cwN"], "SessionTitle": "PI6aFo0MVwDZCIXF", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "3uWVRz3V7YbJM3bN", "XboxServiceConfigID": "LWHAbCZixe2cQ6O3", "XboxSessionTemplateName": "0lpzcBQMAEcNcJqr", "XboxTitleID": "KxnMzSYoc4ZjiMY4", "localizedSessionName": {"H34B6wVd8ipcKDwQ": {}, "eUWtjCC2UH6jzMO3": {}, "AfmOS5mQNyRPZFPN": {}}}, "PSNBaseUrl": "P56l1AT6OLKmZhCZ", "appName": "xxPPdPwOtEuWBSO2", "attributes": {"jJepUnEEgja2mIE2": {}, "kLTnJwc5XmkCuL5W": {}, "4tKt6G3j9LYdG7xV": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "PWsHiKYArAxnKBfB", "customURLGRPC": "fDlrQQuAc10DjjwM", "deployment": "v4vrIPRtvhQIyLar", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "KegvFTD1sPykS8YL", "enableSecret": false, "fallbackClaimKeys": ["GKhaLlJzJMSnJIIg", "sAVmaGYxUX1B9oVu", "zG2CnYX2YBF2g7TV"], "grpcSessionConfig": {"appName": "tzYEHUodh3iUfBth", "customURL": "bepUCTWiZ1uqh7GA", "functionFlag": 18}, "immutableStorage": true, "inactiveTimeout": 42, "inviteTimeout": 64, "joinability": "YyJLYGqMv824ouSg", "leaderElectionGracePeriod": 22, "manualRejoin": false, "maxActiveSessions": 32, "maxPlayers": 32, "minPlayers": 76, "name": "q03BGdIk4oEogFVG", "persistent": false, "preferredClaimKeys": ["rJOBy6lsj1AKGBjn", "HmaAu4YK87DYAWWc", "bcbGWmKgE8CZ4AEL"], "requestedRegions": ["r5lraa5v5P5Cj8hg", "FsqHC9h5JPiMEtgK", "uiGTYgwWv5XldL6r"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "An51rVAQSxp4qTB5"}' \
    '4mKA3V9DKlCeZ7mL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'YsHooOIaxIpb1cIO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'JPS3lJ80YJ41U4oo' \
    'Q980ywmg1pWpWit1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "QC7FKe0fnHUlmU1u"}' \
    'nGKM0tgfeWy47bbw' \
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
    '{"MI4gGmvK9gW596Fw": {}, "BNrFXt3TAuKBwBcD": {}, "12ae6r3hHwya4Npd": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["Ozg3hr6ucHf7dbh2", "iKNUl0qJqzoKMRMG", "541PAiNjULsx4SnK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'XLMUaDSwwQlnNRZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'HBSB4fZWEFIZs28F' \
    'f1kZp1Zktx3N7WNM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminKickGameSessionMember' test.out

#- 30 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'YIfcDKbLu8pnK34o' \
    'A1keYXJvtggDdXjb' \
    'djMBahFZZGMTcqnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdateGameSessionMember' test.out

#- 31 AdminGetListNativeSession
$PYTHON -m $MODULE 'session-admin-get-list-native-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminGetListNativeSession' test.out

#- 32 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminQueryParties' test.out

#- 33 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminGetPlatformCredentials' test.out

#- 34 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "rIprOv0BJ9Sgl7H1", "clientSecret": "sdH2RIJz1eI7Q5pu", "scope": "9PutLf6IrvZoBGQb"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminUpdatePlatformCredentials' test.out

#- 35 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlatformCredentials' test.out

#- 36 AdminGetRecentPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetRecentPlayer' test.out

#- 37 AdminGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-admin-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminGetRecentTeamPlayer' test.out

#- 38 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'O4S3rURGWUzPAE6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminReadSessionStorage' test.out

#- 39 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'dV4D5jftRl9rZmtQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeleteUserSessionStorage' test.out

#- 40 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'Uvro8TWwXWsz9TVm' \
    'dMKEohKzuMYDUTLB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminReadUserSessionStorage' test.out

#- 41 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminQueryPlayerAttributes' test.out

#- 42 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'eCidXjuGgx8ncXej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminGetPlayerAttributes' test.out

#- 43 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'meZtzT0qj0ltsqfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminSyncNativeSession' test.out

#- 44 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "ZrthVvyX0OCKDJE3", "attributes": {"RMUddwSSgxCu8zru": {}, "1DhGAYOHR5BWa9Vz": {}, "IkaQEl1iUProNB6h": {}}, "autoJoin": true, "backfillTicketID": "IpGcToWgFvdRhG9N", "clientVersion": "wV3zDuqVlVTypcYP", "configurationName": "K8IxrSZuxWl0Je4f", "customURLGRPC": "JIyFAm3DQht4JwnP", "deployment": "S2urJqerobWMZGVL", "dsSource": "5KLTxahWlS6XdBaK", "fallbackClaimKeys": ["SLCgOOPXM6XTUh2d", "J90yqHDNacl4F9G6", "Dl5TFwBY6HKXAblk"], "inactiveTimeout": 93, "inviteTimeout": 84, "joinability": "8VGgSH8MGZGwiVj7", "matchPool": "eDTaka9ABfX1IByP", "maxPlayers": 62, "minPlayers": 8, "preferredClaimKeys": ["OuPhGspRi3bhPQvB", "BJI5JxytpcubN4AU", "UPFPscZsXeJOD4DM"], "requestedRegions": ["tqfIGiGJovgWSRxZ", "8N4UQ2fg3V1o2x0h", "L5DuBDqMyIAzWze9"], "serverName": "4MEdJFAy2JTllJkR", "storage": {"leader": {"GB8jqJEd6eqqsBVy": {}, "ONV0JRtozI0jpliC": {}, "FQ6WgJpGPigdc5Vy": {}}}, "teams": [{"parties": [{"partyID": "C4qvWjVac1cQvSxg", "userIDs": ["TNIUzxDgBlIbuzm7", "DzJ20NFRJIhFXR2d", "YprPmbpuptECGd5c"]}, {"partyID": "dXC2Sesc6y68whNB", "userIDs": ["Yl9iCqfW6rqGOQny", "4ij4ysYPonb59gQf", "fkNOmubxEJr2qEAu"]}, {"partyID": "JbpZSrcbc4LWfKaY", "userIDs": ["5c1tP5TDuI5f6m4K", "C07CnsZe32hqEcB1", "ExYMBb3ckvoaJYdM"]}], "userIDs": ["qGegcg3eRvBZXN3c", "jIXmFWRJnj8xN7HD", "PTUEDPN1Kb4UTPWD"]}, {"parties": [{"partyID": "XTSb55g8LSTs7Nf9", "userIDs": ["5lGlPrf6obIdnI6A", "g7eUYcYJ4QzXCmqr", "6gmPGaHP5SVPvRLi"]}, {"partyID": "Di0mNHb6Lx8eq8SG", "userIDs": ["NwEQO8dYXvBSYvJB", "wb6CjZUMRf2VJetW", "sokvx3BHuTEczr9K"]}, {"partyID": "jQ3ttz8MTBt1xk9I", "userIDs": ["yssSA8nP5PQjpzk2", "Tb7iYdmNZWosrsVB", "PZ64j0HUONscofwY"]}], "userIDs": ["LQcDvkaEIIPoJT83", "zEGXmVBZLyrH9J7B", "oysmaORLkP5hc2Fh"]}, {"parties": [{"partyID": "04JTsqDTynCewqJl", "userIDs": ["igLlRxOelKykICRx", "F6HtlER2txs4qrNA", "RATn6KXOutlYBbLh"]}, {"partyID": "L8KXx25FZfQIodVB", "userIDs": ["qQsBpCJBIXLGYcwW", "VRK6UKk5ozrXA4HZ", "HNyq9odanhR1Zrm3"]}, {"partyID": "thUvV87yfkycLSVd", "userIDs": ["leSaAylsmLYe2phY", "OgT5kDTyPl3dKF7N", "XEjrJMki8jvc3P8G"]}], "userIDs": ["wjg3IOH0SDHgYKqx", "JiFJdrmj5vhzgsJw", "ex7wq8ZPlXNaUNgd"]}], "textChat": false, "ticketIDs": ["2vfJuje5cPnmGjTv", "Ya5Pqx1K7qcAoijB", "PAp6EPb988NzxrDK"], "tieTeamsSessionLifetime": true, "type": "yxf6MLZJ2jZfZbpT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreateGameSession' test.out

#- 45 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"JezzriCDWXT59SRu": {}, "0YqUxKDc84OMIzvT": {}, "ScdbKBsAyJMz4ILN": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicQueryGameSessionsByAttributes' test.out

#- 46 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "DvhB4Eoes9a6XaJe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicSessionJoinCode' test.out

#- 47 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'RbzTPwD3jxF7vxRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetGameSessionByPodName' test.out

#- 48 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'Y0ilrNoFT98SgtJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetGameSession' test.out

#- 49 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"4Z5f8nfaKqdZFLbZ": {}, "EHxsDxeR6d7r1SQw": {}, "80JfMpPrSqYypRUn": {}}, "backfillTicketID": "q5o4ETeCUYG9ccTt", "clientVersion": "7Wxw8OQ13t3uTw6z", "deployment": "QuoZcXQpoTOxe8y1", "fallbackClaimKeys": ["jorNsg9ZKYCKoISy", "XtHzoWGdYohxMp3u", "OQIybqWfG9BJ6FVK"], "inactiveTimeout": 23, "inviteTimeout": 27, "joinability": "bYHtbPtaxvagSlpG", "matchPool": "gVTF6VeDAPOGBwwe", "maxPlayers": 50, "minPlayers": 25, "preferredClaimKeys": ["FfXEOEAEtbag82Kg", "BgyCd5vjkfz3eR4D", "tNp129hzBw3xLUcC"], "requestedRegions": ["Et0DzmkJq1sml5bY", "t76BNsi4giR9434W", "pKKdzxoufCNlFoOc"], "teams": [{"parties": [{"partyID": "WQQy4bjmQeEweoBH", "userIDs": ["TdwAk7ZQnbqY1cQw", "VEtAr5kKKAo9MM2C", "qm84jVi9kIpqgrzp"]}, {"partyID": "UkNOBWydXV0Fi02a", "userIDs": ["Fr8CDapjwNOl4k8r", "VNrm8drv8QD2JOe2", "Ntz7EFvowPgIGuet"]}, {"partyID": "xFMqXCQMAqQ2ZRGz", "userIDs": ["NtrThFa9XU8moslu", "iHZJ7O8sAQ32wj9u", "aDzsr9xYiWRuuzQJ"]}], "userIDs": ["iLc1eI9w3JEhxPGb", "Ek7s7gw07FlounC3", "vJKBC7SwgoViPeIB"]}, {"parties": [{"partyID": "4Ehy0Y5aSJVDginx", "userIDs": ["AM77eY9C14FbfiI2", "NPvl1kCY5bEokxXx", "kWZbjf7GZxaossQm"]}, {"partyID": "jo69wohJFyTNk5FG", "userIDs": ["UPhR4LEZvz3EjFR7", "996Ug5m4axDV5uTc", "YsoahUrELQ1btjJO"]}, {"partyID": "qQMgZWAU6E92nHJz", "userIDs": ["vw7tnYtGfv0EJyjB", "u4EzwRjD7jmQJeFP", "ghqamSc5y0X48eT7"]}], "userIDs": ["Mluexk87b9Z5BTsE", "A3EdmW8saabP4xRo", "wfNojzPXI2v0prR3"]}, {"parties": [{"partyID": "OEey0MkZwS6TYwNN", "userIDs": ["3UYhic03qGEg5fNz", "BVrjo3g8CfRwtyl1", "HeT7VEPgG40QyXzs"]}, {"partyID": "Ozgck078IghoQBp2", "userIDs": ["mWAOYksczxBS0OBC", "a2vWadLmQtYKmEMz", "icbuL2S3RiW8dLTC"]}, {"partyID": "BfGUdVEdvdQL7sVw", "userIDs": ["cZ2PofaJoSqtrEOq", "xH46fRTSZoDdT0fe", "fo74eg3Nt2c0r4Gq"]}], "userIDs": ["F0NHglOVuNZ9LzNe", "JnBurh54CWbYb0Pe", "byt8b4DGscjwrizs"]}], "ticketIDs": ["FUgYwbaLvqvQ2Nbm", "DITuymTBjn3d2sFz", "MS3QaVjZF7Ax6115"], "tieTeamsSessionLifetime": false, "type": "g9U8vrQJXQxoIbVi", "version": 58}' \
    'f1UreUpxEkXIbE1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateGameSession' test.out

#- 50 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'TzRJZKMavu4Ul2Ia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteGameSession' test.out

#- 51 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"ieEbPSE7TGkeHsYs": {}, "W9oGBN1pYMBwbPZT": {}, "lMlUvFEiGprcNSQ9": {}}, "backfillTicketID": "kEeXBZ6FVrBzyhyh", "clientVersion": "oS6a9oe0JaXFpff2", "deployment": "8uYbe4Cf2HEHvVev", "fallbackClaimKeys": ["hISjbtBJUK5fE3Ou", "fPSX3PdOU2V9yw94", "oa8UJ34TIedV3Hyo"], "inactiveTimeout": 44, "inviteTimeout": 94, "joinability": "VnO2LpBU08wfnlHB", "matchPool": "XFIqFUmgUSMM5au8", "maxPlayers": 67, "minPlayers": 38, "preferredClaimKeys": ["JT0mkVPI6zUtf3Qa", "JPGrTNcXXTUIggoH", "89QNmI17UDb19R6H"], "requestedRegions": ["7r1ta3m7jK5pxe82", "pgFiAS6piIzmc8rK", "rKEPGSAcong6eNER"], "teams": [{"parties": [{"partyID": "Uf8kjci1Ctccv9Gv", "userIDs": ["4tOcbnuCqf0lm6WB", "kIzjoSV31tvmMB6j", "zrpRGESmooHiCV4G"]}, {"partyID": "UOnXpapXQGRakUbc", "userIDs": ["G7PcR4eiU3Idi55j", "NrGNT2VHTKuIT5Fw", "wHj0Ur5F2PWGTTD8"]}, {"partyID": "1xhNP4t6kYBUjyXA", "userIDs": ["n3bWQF6QcAiJpXIr", "groixptZhckUTGkc", "BOE4qMcH1Kyi8ZFv"]}], "userIDs": ["GcV8DY0XOkDstxZc", "Y1HgAnZV4IOglVLq", "b9lGAJUg21Lt7Jwg"]}, {"parties": [{"partyID": "wMUSuC3Bajy3BcEM", "userIDs": ["CtQs2FcEcvVAyId6", "Cp85HVDsZBQgOnXu", "XsGThYZrmm0wrFMn"]}, {"partyID": "PpWgrQD4hEk0OLjY", "userIDs": ["snignE7KcMF7fuDb", "zRRYMNXWUsp1tOib", "JY9aL9ie6vvMbiNU"]}, {"partyID": "Rrlm88QlKyuoya4J", "userIDs": ["gakZyUV7t73VnSFb", "uxd4KYZ0jk0UZdht", "nKu9oTc8pVkiyGsj"]}], "userIDs": ["5JdXzRxfNEjUMTs8", "WIObJBTsvsw76uIS", "RX0bKVoWtoUW1P7o"]}, {"parties": [{"partyID": "cuBAldDSUS7Haa6u", "userIDs": ["nq1yQOSRvyiLBRVt", "IDi2piIQFVmzMidw", "70KSahpYZdKZRyR9"]}, {"partyID": "AX7JjxvNZhM84DiZ", "userIDs": ["k6ySrB9SVFctW7YS", "0OkL78XeEAtALFI3", "v8yha4pd5A7MYcpB"]}, {"partyID": "D6lKNb8RxvN2u5J7", "userIDs": ["baOeLH19fqBwNbNe", "1ffYRtIvQaKyevWY", "tZjK6J29v8MpBSpo"]}], "userIDs": ["3AKRmnJkzJHAckUy", "BksYQfDm0RNFwiz7", "0tRVLMlHi8i9gOVq"]}], "ticketIDs": ["ajUWrgEsWDtaKzn8", "dZwnnGeZsZVgbPzP", "FbrOMZMgWkFN7Tpk"], "tieTeamsSessionLifetime": true, "type": "3GN2XTrFibRAhzzE", "version": 99}' \
    'g9mndW2JKmQafUs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PatchUpdateGameSession' test.out

#- 52 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "bxYztOEyVbKIf1Zb"}' \
    'zgUwd8DHoCQykmXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGameSessionBackfillTicketID' test.out

#- 53 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'YmkRlg7gYs6unPYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GameSessionGenerateCode' test.out

#- 54 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '9jNQN1di1ldhOh6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicRevokeGameSessionCode' test.out

#- 55 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "vjnYuV7NfC4A2ODi", "userID": "Zhbfb8QqCyK1XH9D"}' \
    '6vl5eFdFfgK46GjC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGameSessionInvite' test.out

#- 56 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'WaP8huTmnq3FGQn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'JoinGameSession' test.out

#- 57 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "Ahu5wxq6oJq4mChm"}' \
    'QHQhO9IKBXDFQfXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPromoteGameSessionLeader' test.out

#- 58 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'D58sG6uDhFYlrzJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'LeaveGameSession' test.out

#- 59 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    'YSeMuJfQecutjS02' \
    '9BiJWOG1m7MKclr5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicKickGameSessionMember' test.out

#- 60 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'igjNTVItrH2X78hx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionReject' test.out

#- 61 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'JgaVfw5Vnyq8OzTE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetSessionServerSecret' test.out

#- 62 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "89WDNoMcOmbfJrCJ", "userIDs": ["QIj1haAosKglqaCX", "E9ytpIO8btO3OwNE", "GSW5TaW4to7QCY2N"]}, {"partyID": "GGvi9kg3rMIzNmhJ", "userIDs": ["TNQjKlwjfJ3TJ2xV", "pge70WsLfgbZieRv", "JI5sT9DH3DfLCv8q"]}, {"partyID": "4Thmq09bBgPAYxrB", "userIDs": ["E9jlnTgtgW33wDwD", "9RKvQX4yFQFdrRoM", "6FoqCYw7AlxO6qdF"]}], "proposedTeams": [{"parties": [{"partyID": "pc71sSck3ggZWJlS", "userIDs": ["lCQMDji329PfVrvM", "EPtpsSNcpK1QkB2S", "y8Ww79LVeVskqeUB"]}, {"partyID": "7RSayqGFguhh3bva", "userIDs": ["dRthdbVApebRA09r", "W8i8krFWJhe03coR", "Fok5d3AyGrZO8Guo"]}, {"partyID": "XNSoVEBG7VbBPUWi", "userIDs": ["pz9C05YabFX4FCK5", "ucTFsAFzaO3yJpA3", "KMxBlrRytER1qdTe"]}], "userIDs": ["lFAadM9y66Drf4SS", "GGt3MiBKohow3kKo", "aP1K4CDuH1mMIfOC"]}, {"parties": [{"partyID": "DyVAHrHncR5dShqi", "userIDs": ["BUI9esSsXegSEhrP", "pK2q8kxR4BuEksS2", "A9VOA8H9VeHv0L2A"]}, {"partyID": "cm960EYQEuGJVl8x", "userIDs": ["s1WId9WlalqshF9R", "h2o7GCQGPCxwEdky", "uT3MgzReRq0112IS"]}, {"partyID": "ArROIodcmM6v2AEo", "userIDs": ["zWWaYvBLE46bpuJi", "p8JyxJ39vrtuWWrq", "TZbSqBSKp8AmgwhY"]}], "userIDs": ["zk33J34fiTxK63OH", "pnUCGBVfpctNFUsU", "Q6ZXQcb2o1J5euLA"]}, {"parties": [{"partyID": "bBgejqc0apxqZ209", "userIDs": ["BySn8aUaGlAyvIsl", "t7N1qcxKs4nlf1Mf", "qUZXkjHvcUOTlxNf"]}, {"partyID": "09pefgFIiJssShBK", "userIDs": ["sQjXvfQgQDt6ce8N", "DMErA82FrR1GSogk", "ewIzTOqKkcjRh3l2"]}, {"partyID": "gAJOTCbx7J3gNLIl", "userIDs": ["Tk3Bpclrk4hIRn0z", "nIKzAEAHQpBOgHEP", "5l94s7CbIJ7eHnVW"]}], "userIDs": ["OboMkyB7FTexsOZ0", "b2p3b63KrcwIcXMh", "Gy83Xit6boOLGCcg"]}], "version": 21}' \
    '6DqwdQPQ9HkSSV8e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'AppendTeamGameSession' test.out

#- 63 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    '1MgTTLS2FgarY903' \
    'INGIyEfRBEj7qms9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGameSessionCancel' test.out

#- 64 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "AGQExPhgr9gGfC0G"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyJoinCode' test.out

#- 65 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'jvpgJfuBs1Vpqn47' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetParty' test.out

#- 66 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"GVghTH2wToOnq9U5": {}, "lyW89Xwt3wmRTrDC": {}, "jhnKvsHezWTqgYPi": {}}, "inactiveTimeout": 48, "inviteTimeout": 39, "joinability": "idAJ1CU1eD1La16B", "maxPlayers": 46, "minPlayers": 76, "type": "3JbUnUDh5yGjjv4M", "version": 47}' \
    'eCD9XPRi4bAQL7VE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateParty' test.out

#- 67 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"2wL8Y4JFVUdzA8bv": {}, "XlDhG7BrorbKIKuO": {}, "XJPm5ztrr09CDA8I": {}}, "inactiveTimeout": 20, "inviteTimeout": 1, "joinability": "5bGKSuopWQbaCvdP", "maxPlayers": 91, "minPlayers": 34, "type": "xmSnzd7zgUxAogcn", "version": 67}' \
    'z6gujpFzlPspQD9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPatchUpdateParty' test.out

#- 68 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'RIpDDubntPCFxfeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGeneratePartyCode' test.out

#- 69 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'W2NdSWzOXjO1NQUq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicRevokePartyCode' test.out

#- 70 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "WHBW78XREZCiTNAx", "userID": "q26gZrPqCsSDspvg"}' \
    'M16sZ6rjnkH4ExOb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyInvite' test.out

#- 71 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "ppC6CMYDm5ge659U"}' \
    'DEOF6gp5UfmjtiVb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicPromotePartyLeader' test.out

#- 72 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'qJnZcrqrPye7fCwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyJoin' test.out

#- 73 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '7Il2wIFlHm9N6owM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicPartyLeave' test.out

#- 74 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'HMtJy1Oqn59tEGm9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicPartyReject' test.out

#- 75 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'NYeUT5P0nx8TqSZd' \
    'Z5C8mFI9TnvzEqBN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyCancel' test.out

#- 76 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'MF9CZvPxT5zbreMc' \
    '9fBoU3RHNDFjLKFr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPartyKick' test.out

#- 77 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"epy56eW1kmb15QeI": {}, "QF51c4MqJzDSvELg": {}, "Be6dboSdhkBzAzPk": {}}, "configurationName": "t1efGJeJaxyHYutg", "inactiveTimeout": 41, "inviteTimeout": 6, "joinability": "ZFy3uglSp2UxvF2u", "maxPlayers": 76, "members": [{"ID": "eWXk80y9uxgVLGgK", "PlatformID": "8aVSCN6oCETQ8gID", "PlatformUserID": "RdD2wwMXwKVXGPhE"}, {"ID": "Jsc7rZpxaPHc9r8e", "PlatformID": "ToFmkHJ6BPOKFLxI", "PlatformUserID": "wKssw647YwDudnGR"}, {"ID": "ufOUGfMjTU226l07", "PlatformID": "jPlcYaqYM7YfBmhj", "PlatformUserID": "I9Y28qVceS9UX48d"}], "minPlayers": 75, "textChat": true, "type": "7OqPqIjS4i0N9ytb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicCreateParty' test.out

#- 78 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetRecentPlayer' test.out

#- 79 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGetRecentTeamPlayer' test.out

#- 80 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"3c8pVZ8GlU8962e6": {}, "gtn5pUARJM1T8QwM": {}, "NOAzXmyHEV4g9P6a": {}}' \
    '280S5RNB5dVCsB7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicUpdateInsertSessionStorageLeader' test.out

#- 81 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"L4axSPgPCiwLxCFL": {}, "DixZwVtt3RVTl0tR": {}, "00oQgcHdGGK3x76U": {}}' \
    '1EIcklttmrpgF5sz' \
    'l0sMY8es36r1FgR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicUpdateInsertSessionStorage' test.out

#- 82 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["0eNLHkVrEFd8xArW", "JuCAIfNBSHgpFNw9", "K9pmAIc6VSfE9nbE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 83 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicGetPlayerAttributes' test.out

#- 84 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "PMv12ZSRJkujxbCu", "data": {"1HFaj6Vxs3GuA4S1": {}, "dS7H7yIS7b5TSDRI": {}, "oMg7Dc5APzfzXDEL": {}}, "platforms": [{"name": "JFaIaEMW5bhJyL72", "userID": "WDyhBsCCbnfihnXK"}, {"name": "xGxaupnTTq9ihZkv", "userID": "FKfSHQh8I9xk3sFl"}, {"name": "0cbuCRM69XKkLwio", "userID": "RaKnWhlh80BhYe2f"}], "roles": ["JDS6T75Q4ulonMFj", "mYqE1wJhfogWg2Ap", "m0sUy18aWn65Co0v"], "simultaneousPlatform": "dCk8so6JSaZAIadK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicStorePlayerAttributes' test.out

#- 85 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicDeletePlayerAttributes' test.out

#- 86 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryMyGameSessions' test.out

#- 87 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
