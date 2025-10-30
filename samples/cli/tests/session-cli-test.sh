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
session-admin-query-game-sessions-by-attributes '{"kETAsSp7gh4TeUTk": {}, "OkAYfJB8AT9t4Tv2": {}, "07Y2QD3oD5fLCr3O": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["OlXVv8ZGF7uYnGzp", "ipNDigNJma1MbqqZ", "tfNWql4nmwAft4gq"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": false}' 'OkQ1jMD3cym8xIfk' --login_with_auth "Bearer foo"
session-admin-update-ds-information '{"createdRegion": "OVW2grREOLx0KOww", "deployment": "3HICQLfl7MUBG7qt", "description": "Pu64yAtURKLRkb73", "ip": "8HGS6rDgMdIIlhS1", "port": 11, "region": "5QgXjvyGJPN4eXbJ", "serverId": "E5Vs2GcyomQoIXim", "source": "BJehyxlNsjUgxBkF", "status": "6wFPoJeQediogEhh"}' 'M2rIizGdKvOPdq5x' --login_with_auth "Bearer foo"
session-admin-kick-game-session-member 'rgxSmy1DN9LFkYW5' 'DQyj4bj5Ro2ogaKt' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '2ujQSa3Zdb65UXmy' '0Zp6iIaTIKUkmkk9' 'QM0NBMA9ORxpzwLR' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-delete-bulk-parties '{"ids": ["2AK6eXUGPJsw1fiP", "80G9Pclxcft2ulIJ", "zPyrVEiOG4UcqsuG"]}' --login_with_auth "Bearer foo"
session-admin-read-party-session-storage 'KHhMRWLVd3DlhLuI' --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "pomM8sm1MiaI1mX2", "clientSecret": "tJoARtdbBe7udsMr", "scope": "ok0WvGYYnx4V709x"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials-by-platform-id 'PSN' --login_with_auth "Bearer foo"
session-admin-sync-platform-credentials 'XBOX' --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage 'nGezKsDwG2omOR2n' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'vYI9TVqJdvzcWbfU' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'paXp5JMl5LL4bTxB' 'mZjdrrIxsB0NRsB1' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'fPqqRRulpqpymDkQ' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'htrHWwRVnwVBOqOH' --login_with_auth "Bearer foo"
session-create-game-session '{"appName": "i8pWGd1juYhiqjRJ", "attributes": {"OqB5F93zFQbJndUD": {}, "pdONneAczbBdHb2s": {}, "lt71B1SmZp2JZp50": {}}, "autoJoin": true, "backfillTicketID": "TTS1j02o7JjTXAQN", "clientVersion": "0qdskdQV0TqI8EFn", "configurationName": "mDbxIxi4YKlONk2Q", "customURLGRPC": "5Y4JvaizwiilatuU", "deployment": "jjt9lIMGql5ElEa9", "dsSource": "EIIlGcHB3CfR3ncD", "fallbackClaimKeys": ["lwi3v3MFFJ1KesKo", "ELCpobBEG8X645xp", "dXpai0rYaT5hOPja"], "inactiveTimeout": 11, "inviteTimeout": 43, "joinability": "CLOSED", "matchPool": "H0tYighU0VUfcYHJ", "maxPlayers": 2, "minPlayers": 63, "preferredClaimKeys": ["BfAKSiPW3VgsZXiR", "1DJ7HVWqMkNSawQU", "WDFJvJBWic7UkBeI"], "requestedRegions": ["XuqDuAXI66bQ71w0", "deoV9Lx5RDA1l2Xc", "rciYNEzvSZIPkhSg"], "serverName": "ORcz5S5BvmgBLxh4", "storage": {"leader": {"ijFnE3Tam69qSZ7P": {}, "C6f6QkmZXElW9YfR": {}, "Sse6AAz3S4czz0QK": {}}}, "teams": [{"parties": [{"partyID": "FlAVmVLu4AOec0z8", "userIDs": ["eBeeoip68J1nsv4W", "2OJhtafxMSJlHeb3", "4sZKHcl5LLLOexL4"]}, {"partyID": "fZvWtND2tcBFpX8l", "userIDs": ["NtFEJ7tnkY6Mca5a", "fj12K2IzrBvvWm4u", "dE0OXudXgNne8kJA"]}, {"partyID": "Twlc6esUp6Sw1I98", "userIDs": ["jeZQ7hfxnhLd3Kna", "knoed9DHhLOqQGhC", "Ur6iTrjyEgarAdNJ"]}], "teamID": "OIG36I6tRbRcrEve", "userIDs": ["MdAdiPKDUVSC00PY", "eDcagginxnFIna3y", "ddcbsPheTH26IUJN"]}, {"parties": [{"partyID": "vYuGRUvpZaHCuESO", "userIDs": ["iIZsMfB4ZH3mtgWg", "U4pCAKxeE70CaunQ", "Nxot371W9G4AvQkq"]}, {"partyID": "sGnmyo5JJTUVmb8G", "userIDs": ["EXFTlEMEsFzYqwgK", "1Np5nodqpLm7FhJB", "NXzAFdO0Khqf6kiT"]}, {"partyID": "dSGv2LFjAKY7Cbgs", "userIDs": ["WqFWZX7kPBom8F9G", "LLTG8phc3n4iLoIl", "lKlpO2pqiXJF3WGR"]}], "teamID": "aoQomSJC4DdrKF7S", "userIDs": ["UQPLG59e0k5ZtX6w", "K7PpUlcIW32iK7MG", "t1ixY5rA1WoVeJIe"]}, {"parties": [{"partyID": "PF8ZrQzP4zvtdxdb", "userIDs": ["ZUpd6FJtHJ1pyVwy", "KQLY6FEO65Rb3z7C", "YLM8IlsHqffnrfsG"]}, {"partyID": "lfPaZKBwa3Ddb60u", "userIDs": ["fPpzwj1QGIFmlVf4", "jvapseE9LN9bvhOr", "HflIOd6X3viLvtEk"]}, {"partyID": "4mTIpUA9gxo8SV38", "userIDs": ["nEhoXmM2W7l6jHMA", "2rG3nakopAywelu0", "1nryEJ0NqoTow0qi"]}], "teamID": "OiC4j0iktm0ZPLkL", "userIDs": ["Osp0LZ5njN86Hl8k", "UXzt6bSc6bWvgpVy", "W9dD1kOmvrAejcq2"]}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["kQuaS7RBx3vim02j", "BOxrZDyvpcLYOWA8", "NjxOnaEok4nOOCzf"], "tieTeamsSessionLifetime": true, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"flhjbngJOUn18G5M": {}, "lfDTk8aG40Nlncce": {}, "IZSwgAIkgzh4pTU0": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "Am4DZhl0bQxFJ3sW"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'CqQpQ2FbKPFMycMS' --login_with_auth "Bearer foo"
session-get-game-session 'Q4qfAacR0LgB5BUX' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"vjcu2s6w3VifnKqm": {}, "TSoGH1XEfY6QAYn6": {}, "WQ5UBEU1QAOHfZiG": {}}, "backfillTicketID": "hxOdcuDXSxSc3aZP", "clientVersion": "V87pna08gxefTYKh", "deployment": "uxaEc7M4P7UckSC6", "fallbackClaimKeys": ["ePeN8i4GrFES9z7x", "ueHpATHccee9GXhK", "cjmSEwdrkEnnqKzF"], "inactiveTimeout": 38, "inviteTimeout": 76, "joinability": "CLOSED", "matchPool": "fYalUlfwEQKjU7eH", "maxPlayers": 66, "minPlayers": 64, "preferredClaimKeys": ["ebSVu0LQ40kepEaC", "4dfiOMZfEhHr39py", "sFO3Zvc1BZG99Lyv"], "requestedRegions": ["fvHEsJKQQewVLMUo", "AnaRcYp7FUjfIGaf", "foflEIByYqeKN0me"], "teams": [{"parties": [{"partyID": "GelYF5wWaDhukU4k", "userIDs": ["hGG4vZFTYnPkmSu4", "PWam1jxR7SETWjte", "oc8fgvZDDhoO05oK"]}, {"partyID": "qymxLD1Lcvw6T6mZ", "userIDs": ["EiwxxElpMYSWIeVz", "m7z9noowmlTIKVow", "i0RY2VN4ZONJREdU"]}, {"partyID": "Q3z9F1BxNNgnke4a", "userIDs": ["kncw7wu9TmXfJWBP", "rx9Ns8eLzYEvwSWT", "aLQjctvrK2jhsYpK"]}], "teamID": "PlXn77AtYoFzLAAT", "userIDs": ["PY8P8P3cfoivvQxe", "vecWw7Rry0KK5rgA", "GO0dW8rX2MVUGKSZ"]}, {"parties": [{"partyID": "4GcLkt4pK32sJxlZ", "userIDs": ["cCTpTdRtCHvuk6B6", "XTmSLyn50sigBVZx", "iKdV57GvRyd9UuL0"]}, {"partyID": "2Le8HSCslsDd4M1F", "userIDs": ["5qRIblS7Nz81GRaz", "PAANjfBoldFOyqA2", "clJ5gEOaCgM6Yn6R"]}, {"partyID": "ugbNEIpGBFUjOn5m", "userIDs": ["M7k8nbLzvtCIW5yn", "MKquUicAeIVXtoWA", "XhMlW4tLqX7OICf5"]}], "teamID": "oD1e6oI9FmYel0kO", "userIDs": ["w72o8Zkgk0jS6rDW", "UwfhKvrf2AaH4yCW", "rHSppnIZkNnTn3rz"]}, {"parties": [{"partyID": "H5NvAtcvNedgS1fU", "userIDs": ["fKmihDbmu8ePWlQM", "VDXEHeiGTnwyEw6h", "IWDZrpP7rz3ISW51"]}, {"partyID": "0kHr4isTKWjmv67n", "userIDs": ["uHCXWfwnwGioVwVz", "mmBVVFfpqx1AeLtz", "cPJ3jtDYBo4FUTH7"]}, {"partyID": "CGfKSyxgRR1DiCqS", "userIDs": ["MzpqIFGLkDs7ACC1", "RgBfoNrHlFi2qJLg", "mBLE35YhyiDV90Se"]}], "teamID": "I5yppBHoytVznCgN", "userIDs": ["yx9fbT63ShEh8PbG", "ikLjgjcj34uulU6F", "YBZsWFbr3RSP0W9n"]}], "ticketIDs": ["Bhvhf8Q0DtJMcYQd", "N66bswAgt65X4N1L", "QZmB61JMdtwCVUrY"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 8}' 'qTZrKgXNwvm4e5GX' --login_with_auth "Bearer foo"
session-delete-game-session '6H742OixhtAoKiVm' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"6URT95XhnUcvWB28": {}, "MpusuhhDJ5slzgiW": {}, "ZEtyd56LfxnbY97j": {}}, "backfillTicketID": "jYgXchCbkXX26uEd", "clientVersion": "CfQaMAQuTKfC0I2k", "deployment": "NjCMDtDMrentgn3D", "fallbackClaimKeys": ["hqciwIeShF9RKb9v", "vxuJlhXbWhbwPwTo", "C6knjVwVnzaqSfJi"], "inactiveTimeout": 88, "inviteTimeout": 55, "joinability": "INVITE_ONLY", "matchPool": "kCh3QIZsUf8lGFXc", "maxPlayers": 24, "minPlayers": 91, "preferredClaimKeys": ["wTERHclOdxIwqejx", "e18rNdb8Otq6j1mq", "Uav7k05HAQltnSoj"], "requestedRegions": ["V4jT65yclX2FtAz0", "vJjFIYWOaNdsimmk", "W2miH3xRHAKy4QxZ"], "teams": [{"parties": [{"partyID": "kaXZ7vmiEd0JPxVy", "userIDs": ["QpshaDwNqTbbFMXA", "MfVXe0GZeMgsRsmH", "1EQrYmkPKTPOlhTt"]}, {"partyID": "SiZNCxuogFteTHJe", "userIDs": ["4BhSSQkQD6WmOt6D", "7ufFVTOhvQpfbBke", "8aEdd36xj6wySolt"]}, {"partyID": "DxsbzxrlaKEfkoYj", "userIDs": ["Y2o6ouRW9UtNquwC", "3WgumrIz4NhGztZp", "r4U4fwQIiLXgmRas"]}], "teamID": "vjO4lj8m3XEwP2b4", "userIDs": ["gd3xOeii8Jnmssep", "2xD2NY0kABeGs9yx", "ahld1pO0Gyf5PO3C"]}, {"parties": [{"partyID": "OyMvczgEpzZ3Fbtx", "userIDs": ["fhcRC7IVYa6iZ5uF", "RYNn3SHiWxF0YbuU", "5ar5qTLWUCy0Afgc"]}, {"partyID": "050XIZRW491e94mQ", "userIDs": ["jVOOBnIWhunElqZU", "odp3IhtCSHy1ei1f", "IrPvfHnRN06EjRwE"]}, {"partyID": "QlNapJRfk4f9Zcw1", "userIDs": ["pEHAyNFxcVTKuAQT", "Gh5BxjWOozGoDtsU", "uYo5p8ED5QZAufwN"]}], "teamID": "a8lzfjv9oYMXMjlV", "userIDs": ["HY1AHwF3vGoav7MK", "0PcLnEkcokKwcQ0b", "aDT9OyJ2h23GUS2a"]}, {"parties": [{"partyID": "mU7syGlElXdEAOrV", "userIDs": ["SnLocLVVYamQc4wc", "G5nDBLJoJHbiQ5du", "E5p4cfs2E41cK8QT"]}, {"partyID": "wiIAvxSvNDlmM5nQ", "userIDs": ["FMGzs7fzjgyc44mE", "h9tRk8knYSV30lnr", "oQehMDli6t9unQLY"]}, {"partyID": "Xxm09wpGAbpEmDY9", "userIDs": ["vLh3u6EDsUmrV6kH", "4OotKwG3UC6XCnnZ", "xF8CmQr17W65br34"]}], "teamID": "rBBN9tU6TDm5GloF", "userIDs": ["SKWM1eym5ydC6p25", "xCWTqUOYZENJ1QHZ", "QxPRXH7uxBJEECQE"]}], "ticketIDs": ["1li3Bg7Jxc9pUnZm", "vhidwCkZwqjYLfTi", "CO1NDBvQvRPnAz4V"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 26}' 'CpoBCbyJsF5IjF1c' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "0W338HS6CBgVRyih"}' 'YNZ84CVhziXV8HwS' --login_with_auth "Bearer foo"
session-game-session-generate-code 'mvcvcDKF19yVRafC' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'jOuSYht83AdvBaag' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"metadata": {"TiRJ8daGTVX3Bb7j": "lz5IfHgKjI9mwJSr", "N8jkIykR2zbaI6PD": "7fEscShnGUGUtV9G", "J279GDbLNwjm3FK0": "nnX2poMfZ1hDHtbh"}, "platformID": "4HtMlFgvh2Dp2Soi", "userID": "IPp1yvfAHS0VgLu1"}' '1A3HTovFi4tPAGfl' --login_with_auth "Bearer foo"
session-join-game-session 'eyCA6jEtcqsnzoVI' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "LjkwW61duF87aUyr"}' 'dt4XSpWBAetsanzq' --login_with_auth "Bearer foo"
session-leave-game-session 'P8oxfrtbECD1CYPw' --login_with_auth "Bearer foo"
session-public-kick-game-session-member 'aiBAxfYL8Avt70ZU' 'T2fSk3LL0calqxEe' --login_with_auth "Bearer foo"
session-public-game-session-reject 'wuGS469k2hG0WKt4' --login_with_auth "Bearer foo"
session-get-session-server-secret 'sUmanYxM0UHZVNYz' --login_with_auth "Bearer foo"
session-public-game-session-cancel 'GMNIpWoSLkUrfuf4' 'U3WeYeA9t2ENKKWr' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "FtHIi1CMgKAOG5iD"}' --login_with_auth "Bearer foo"
session-public-get-party 'cCR5PbCvDLil8wj9' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"cKM3Ar6MF35hCER4": {}, "nGmWGgTJfHlJl4tH": {}, "Ga4XfZcd9CVnGqMX": {}}, "inactiveTimeout": 70, "inviteTimeout": 65, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 71, "minPlayers": 9, "type": "DS", "version": 9}' 'fJKyFlM0u1uuoVdn' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"9yVoSlKNchPHNL4X": {}, "3LLaGPGdqLE8Sohh": {}, "huiTnJarYYkHBDdS": {}}, "inactiveTimeout": 51, "inviteTimeout": 94, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 8, "minPlayers": 93, "type": "NONE", "version": 67}' 'apwhd5IQYBQuxLvP' --login_with_auth "Bearer foo"
session-public-generate-party-code 'uWYvE3fsNy9Z9Ohx' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'XvCp9y7fLD2qfCXn' --login_with_auth "Bearer foo"
session-public-party-invite '{"metadata": {"lUnqxT1WsRNMZcA9": "2hzC7MNa8vVe4MHX", "6AgMep90AyyUJyAK": "5PRMRMwdvl0hv6g6", "2GxBW2tQF5tkTjgJ": "aMYvNQOsDa4bkcge"}, "platformID": "pqtxjbrztee7QLTG", "userID": "Aak7Kaol01DK97D2"}' 'xnik42miteR5eQAe' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "1rzmmgqBPRmd6mO4"}' 'oI8KDqebm83raNBJ' --login_with_auth "Bearer foo"
session-public-read-party-session-storage '5y7axEkvI4oxZEDx' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"GiBnNbn0zaf7CaOS": {}, "lHXrUSA6sMJzA5mt": {}, "qISQ83TTbtefXWzn": {}}' 'De4LQdXfFBii2RAM' 'EX5RMjBFVZGYzQqV' --login_with_auth "Bearer foo"
session-public-party-join '8d9mDdUIoiIJFNxu' --login_with_auth "Bearer foo"
session-public-party-leave 'NOmUSWw18T1IxVWC' --login_with_auth "Bearer foo"
session-public-party-reject 'xdvPL9e4P01vxP8x' --login_with_auth "Bearer foo"
session-public-party-cancel 'j1LyEirURERnEMzp' 'ImW6sjAHyCK5tNan' --login_with_auth "Bearer foo"
session-public-party-kick 'GBrkzUvck3xTtmOF' 'MebS4AdlNzwog2Ih' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"ErkNhNcECWwchW6z": {}, "L9SkbLlrNXnGanMa": {}, "zb8jvRWenURH48aJ": {}}, "configurationName": "uALEcSqcE15u6D31", "inactiveTimeout": 61, "inviteTimeout": 37, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 37, "members": [{"ID": "Osrs3CUYATdqnQGb", "PlatformID": "qiqOkNeATj7eGjod", "PlatformUserID": "d7CcJUrI6MAugK5k"}, {"ID": "ypNrp2nFe9FmN86s", "PlatformID": "K5LOq4ft5jGcMICP", "PlatformUserID": "UYnfG6jl9U4jRete"}, {"ID": "IMgzISomCsodJrhQ", "PlatformID": "W41q2OspCZbt3Uta", "PlatformUserID": "5I0uGcL1koyHjCH5"}], "minPlayers": 29, "textChat": true, "type": "DS"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"IAP5vHLjBJ9iqMcB": {}, "L4BzhDUjhKPwbwcv": {}, "QU5kG8bXGFmPAnOk": {}}' 'DiJq4xQye7HqnVK3' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"YVeOWs9mfVQh3jLB": {}, "tn9pxpE7BYtzB0B4": {}, "CxyQrUpIFvORxTi7": {}}' '9DpSjb39ukcR6c2E' '2r3vk3IfAKEbqcNX' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["SGCCvNowNmdpcJgF", "88ySNq4Mj7mulP4t", "Q6R1OqKVOTniBgLs"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "D975nARHCmhNHSXu", "data": {"qIHsxvaUoXDmwWsu": {}, "kxncuD3QxCXMd00Y": {}, "BWCaVVmM45mfIZsW": {}}, "platforms": [{"name": "hkS476dGGJwJ00UH", "userID": "197MJ6zU7JLMQyMW"}, {"name": "zYQCAaPJgoxGJoJa", "userID": "SzUtY4ZD0Xtb0U4p"}, {"name": "H16NUsVY21NVIs7N", "userID": "Ren2Y3Ns0QJQeaWy"}], "roles": ["tPfds1BYx0EaURyd", "f8ZyyZeHAWGgJUbU", "JRMbkcTglbU86FyO"], "simultaneousPlatform": "jApNHBVfNOURcjY3"}' --login_with_auth "Bearer foo"
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
    '{"logLevel": "warning"}' \
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
    '{"metricExcludedNamespaces": ["H1y72L13Ornyx34l", "uLdvtsTKXMjiw6gY", "Pvfn2Qt9iyq3Nyk8"], "regionRetryMapping": {"ncu2Z3eDHH9WaVO4": ["iKhDcJ7TCcNIsQ3P", "uppUxDSK8aOTGMud", "cxlCV4cNbJGQ57lP"], "dinpjS2DRfGt9Gly": ["ZVQ4X67tPZSTpPq3", "xjrElvvDgw0ag7kS", "WE0Hiqm5IuLryiEX"], "qvUWDjU1G0EVjVZw": ["1ToLuPakQN1MpOs1", "RVFrcg2CXxepx78f", "vsyhE2BKtyTDSIM7"]}, "regionURLMapping": ["mkmvZ7Cmsh4US8o4", "jfMANPpmZDdMiCxm", "uCCVuFjS1GC1d2b9"], "testGameMode": "2B4vEgj3HOmhcWm4", "testRegionURLMapping": ["28XejRF94NIY9nMr", "BZo0lNUBDShHD32v", "vL28FPwTiXfLcxDC"], "testTargetUserIDs": ["9Ynd02mECIQhfIhH", "tADUQ9zimQTQT95p", "FJUAJsyAfeKOufV4"]}' \
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
    '{"durationDays": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 49}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 99, "PSNSupportedPlatforms": ["hXu6opxQGRt6Pqlk", "L0diRhLC10ih2EQf", "Y3XCv4hdOa6FdZhN"], "SessionTitle": "Md1onFjGRbxtABPX", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "mgNEJBhgGq5GIDhN", "XboxServiceConfigID": "C66szbCCf73IFbRk", "XboxSessionTemplateName": "PSSITz4TjCrJHXGX", "XboxTitleID": "ku2YVuOzhxHmnrrV", "localizedSessionName": {"9ZGWrZ05sxe6A6Rp": {}, "mKDebNkylbynkgT9": {}, "vayLLiizac7Ge6zK": {}}}, "PSNBaseUrl": "Jdlt7rjF5RaJwvkW", "amsClaimTimeoutMinutes": 98, "appName": "7NrTb1XTB9YQzUJ9", "asyncProcessDSRequest": {"async": false, "timeout": 58}, "attributes": {"YJ8BzP6EUmUXGM5a": {}, "nIloyj9lhbvuQdW2": {}, "jwKUckc794ryY91l": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "D4MYXlrJ81lHvv9r", "customURLGRPC": "qvEoM8YmVjAkO3HK", "deployment": "sEp6KlqwW4djrexc", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": false, "dsSource": "81lsR7xxSVp3Gd2T", "enableSecret": true, "fallbackClaimKeys": ["0HzYviTgYmx82JVB", "RLPZ6Iz8tne5dbgu", "BF6Gsvvdl8jHz9x7"], "grpcSessionConfig": {"appName": "XZIjU4IK9lOLaZaM", "customURL": "phKCqTq3EVheJjoE", "functionFlag": 62}, "immutableStorage": true, "inactiveTimeout": 19, "inviteTimeout": 56, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 76, "manualRejoin": false, "maxActiveSessions": 70, "maxPlayers": 91, "minPlayers": 48, "name": "mylT1YtxIq73aMb4", "partyCodeGeneratorString": "8jISd97KORRhxSWL", "partyCodeLength": 100, "persistent": false, "preferredClaimKeys": ["NfHRD3V15QaGGL46", "LuxJF3sbeqWBdQuW", "fgBAKx27MSBqabUX"], "requestedRegions": ["OGkkoMUZn1YXj5zF", "ZeOCOR9NvBQZSJPO", "IKrRBrYVzi9ui3lv"], "textChat": false, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 28, "type": "P2P"}' \
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
    'LRH36bqS2oFY76PU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER", "UPDATE_JOINABLE_USER_TYPE"], "PSNServiceLabel": 21, "PSNSupportedPlatforms": ["iBOHEAj1cT3u6Zc2", "FbrTFznTgDIwZIRW", "f6T3by2kYSCdnFKL"], "SessionTitle": "c0xcTjqjdcEfU61O", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "nW49rWynp1ck1vT9", "XboxServiceConfigID": "0C6o86cSRL9cgbUm", "XboxSessionTemplateName": "ulhe98oaFKlQicdr", "XboxTitleID": "xVhrtwSd9QWVMYz7", "localizedSessionName": {"TU1TsxsChSclSkb5": {}, "aBi9K9zyv6gFZXI5": {}, "nXJ7hLi6HweweRmy": {}}}, "PSNBaseUrl": "o91dIn7QqXBDXJcr", "amsClaimTimeoutMinutes": 34, "appName": "PAd9sxoLnWGP1Paf", "asyncProcessDSRequest": {"async": false, "timeout": 84}, "attributes": {"LX8ce0KbNN7Ycl2J": {}, "fmQplvGjVQ4aebjf": {}, "gGu472oWJlfglLM4": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "jfkNL4lU6jaGfsD1", "customURLGRPC": "cfswmeFpvtDtetoQ", "deployment": "VFL8LNW11vtpaTxi", "disableCodeGeneration": true, "disableResendInvite": false, "dsManualSetReady": true, "dsSource": "489jRCn48bvkCPfK", "enableSecret": false, "fallbackClaimKeys": ["30Wj1WfzIvc3VlSX", "rA3XUGud4tVjmxEf", "4XvVhFJTxFHITBg9"], "grpcSessionConfig": {"appName": "x4unq3eOMHIKeTyB", "customURL": "G5dCUoExnKfV3869", "functionFlag": 71}, "immutableStorage": false, "inactiveTimeout": 81, "inviteTimeout": 17, "joinability": "INVITE_ONLY", "leaderElectionGracePeriod": 97, "manualRejoin": true, "maxActiveSessions": 82, "maxPlayers": 6, "minPlayers": 78, "name": "hH4GVU7Exlkmc4xY", "partyCodeGeneratorString": "iLjLyZrXr9Bhtzn8", "partyCodeLength": 20, "persistent": true, "preferredClaimKeys": ["nUpryDeRcpUvlrw2", "MwC1uuokpaIjL0Vx", "e5n9Lx3QcFo9gxOg"], "requestedRegions": ["vDc7xMrRKvw8ISP2", "WKmCRRXBxlalCHtW", "lKxLpS8fLWoQ5nuJ"], "textChat": false, "textChatMode": "NONE", "tieTeamsSessionLifetime": false, "ttlHours": 40, "type": "DS"}' \
    'QPxR7dvBVC5zgOKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'TDmHe8c1eJ9sde7R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'yt4udIv22M18uux9' \
    'xBomQFPFWy5cwNPI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "6aFo0MVwDZCIXFNE"}' \
    'L3uWVRz3V7YbJM3b' \
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
    '{"NLWHAbCZixe2cQ6O": {}, "30lpzcBQMAEcNcJq": {}, "rKxnMzSYoc4ZjiMY": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["4H34B6wVd8ipcKDw", "QeUWtjCC2UH6jzMO", "3AfmOS5mQNyRPZFP"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    '56l1AT6OLKmZhCZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "xPPdPwOtEuWBSO2j", "deployment": "JepUnEEgja2mIE2k", "description": "LTnJwc5XmkCuL5W4", "ip": "tKt6G3j9LYdG7xVP", "port": 33, "region": "2PWsHiKYArAxnKBf", "serverId": "BfDlrQQuAc10Djjw", "source": "Mv4vrIPRtvhQIyLa", "status": "rjaLOKnX51yAB8Pa"}' \
    '3uNGKhaLlJzJMSnJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'IIgsAVmaGYxUX1B9' \
    'oVuzG2CnYX2YBF2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '7TVtzYEHUodh3iUf' \
    'BthbepUCTWiZ1uqh' \
    '7GAi4FEIu44u83ZL' \
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
    '{"ids": ["RxYlYqlpq03BGdIk", "4oEogFVGR71rJOBy", "6lsj1AKGBjnHmaAu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    '4YK87DYAWWcbcbGW' \
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
    '{"psn": {"clientId": "mKgE8CZ4AELr5lra", "clientSecret": "a5v5P5Cj8hgFsqHC", "scope": "9h5JPiMEtgKuiGTY"}}' \
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
    'CX0rITajpwHITGeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'TnqRbzBB9ZFgJbQ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'Fj1umx4ItzkMJ7cu' \
    'df4r916GPrhn2etV' \
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
    'IQvRkQJAtDUH9tx6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    '0AehGz1ermJYXsYg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "L7TfyIlAwjTZdRZJ", "attributes": {"JzWZwvTX2bamSCvX": {}, "1nwvSWdDwD7WJHzg": {}, "NZUKsI5y0mR3zMyT": {}}, "autoJoin": true, "backfillTicketID": "ae6r3hHwya4NpdOz", "clientVersion": "g3hr6ucHf7dbh2iK", "configurationName": "NUl0qJqzoKMRMG54", "customURLGRPC": "1PAiNjULsx4SnKNX", "deployment": "LMUaDSwwQlnNRZJH", "dsSource": "BSB4fZWEFIZs28Ff", "fallbackClaimKeys": ["1kZp1Zktx3N7WNMY", "IfcDKbLu8pnK34oA", "1keYXJvtggDdXjbd"], "inactiveTimeout": 19, "inviteTimeout": 24, "joinability": "OPEN", "matchPool": "GJg9wdc8bihhWjfZ", "maxPlayers": 32, "minPlayers": 35, "preferredClaimKeys": ["fcFBUsnnDJlmD1iE", "okbUiYzCQh2iNTwt", "nohddMzMTQ9P7sYL"], "requestedRegions": ["DWAJOA75K4BYJ2fk", "qYJoF2FI3vyyqRzc", "20O7FdsJP1G9tyBT"], "serverName": "fERXdvgD1Qf7Ot2D", "storage": {"leader": {"kUt3yexZBRvxYnEB": {}, "hXtAVxCd3meTrT7c": {}, "F9oVCh89wNOkKYss": {}}}, "teams": [{"parties": [{"partyID": "VejcL3kR3hCGNgaJ", "userIDs": ["muALlMQl9RLrthbf", "p0VgweLlT2sY3SsT", "nDQY7kKU2u06Q4ve"]}, {"partyID": "ujxtyQENvJrBCqeg", "userIDs": ["67d4RWOqO4U0bitN", "QLzwRoWnR0AbkCPY", "70FmvviVIBbcujF8"]}, {"partyID": "Vk5qb8NhWWwaxyMc", "userIDs": ["hkt8l5IPSrwrJl7w", "YIVw13NCo9yXlbQ5", "2FTHTCj6SEAzT7TO"]}], "teamID": "pyiuvvQUm29Iacq4", "userIDs": ["XRLaA643nTMtXSAy", "ejnny0Ju13b6o5uB", "2XM6IHy7EEvHyLmc"]}, {"parties": [{"partyID": "vrZZOdwe1x8RjU6B", "userIDs": ["i8JXE52sUBBq2Sim", "QQoLbe5YOJvxGRxU", "zrTwagH7BMT1IZKT"]}, {"partyID": "dNFVBQ1crBXAupAT", "userIDs": ["O8uXsqVpdiWo8SjD", "AM0Riw8wLYW3n4F3", "LD1EDwBXw5uBYeQZ"]}, {"partyID": "OzATNSV9E9yyNb7y", "userIDs": ["aLXzAVYymOuhCkZu", "4htrsf8eIFSovTGX", "aMsq8ePN1oco2jx8"]}], "teamID": "Upe8SjMvpqM8pugg", "userIDs": ["OEdG47gD5i2Ni6An", "Wn3NdEPhNHSH7eKD", "fRcngEpTnRUQr3RL"]}, {"parties": [{"partyID": "OM1vEx4gqDY6jwyK", "userIDs": ["RxhkLe5zohg9s9ut", "RQt28b6o3K0COF74", "tz6aeXZOYwbwjMNd"]}, {"partyID": "xKWlBfnRyFS0Ed7g", "userIDs": ["TM5AVrtBQiDTcNnZ", "a6Zuxk6u6HXXdiC9", "ZDj4E4mv12FNXypo"]}, {"partyID": "OLl13j84P0KqirJ4", "userIDs": ["PkMFtsnFfz8Ew0X8", "fBuBSKLSQ4GvLtz5", "0D3rpBfBovqLwXBu"]}], "teamID": "T30EYeRj17xGhaBK", "userIDs": ["oUfiHjGmCyPsKCJT", "v1ic9gvagF2cSuzt", "sJ5tj64gV7nmDk29"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["cjSuz9vbNStqPtQm", "QN6eKAGiZFCftT0R", "WECdjWYrnulxcCKA"], "tieTeamsSessionLifetime": true, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"u8pOaAVLDB4k3Jwk": {}, "daxR7GJpYmuYCPG1": {}, "81q9GA5DydC2D8UT": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "6KOc4VPDUR9ayazq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'XRqegIUicYXXzxsB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'FrUs9BYp6TgCejBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"5o7iTST7R3KbbQGE": {}, "RMNpqWb51y5RUzvM": {}, "fTkPy0fGvTGgfLKs": {}}, "backfillTicketID": "g0b1Bq78cE5O5pmP", "clientVersion": "nbiPJ9j4vxmbH3rV", "deployment": "aauufxkPHElug48T", "fallbackClaimKeys": ["gfNu0rqXUOyToLPI", "REGIKlJt3EP9kKwk", "ENQ8VOHGwbADMfuO"], "inactiveTimeout": 26, "inviteTimeout": 12, "joinability": "CLOSED", "matchPool": "3IOH0SDHgYKqxJiF", "maxPlayers": 73, "minPlayers": 51, "preferredClaimKeys": ["drmj5vhzgsJwex7w", "q8ZPlXNaUNgdY2vf", "Juje5cPnmGjTvYa5"], "requestedRegions": ["Pqx1K7qcAoijBPAp", "6EPb988NzxrDKVpU", "Ljjiw3NeVG4DJi9D"], "teams": [{"parties": [{"partyID": "aMrc0WFgKjE945x2", "userIDs": ["CPVYYG9WvoGmAmva", "VV5YfxnUNcwjr7gS", "GhnfuF4WZiQVICVp"]}, {"partyID": "Wd3UM08gMXhdf3ju", "userIDs": ["XW4JprIb3CJCAtvS", "G8Cfa9dzOJDGCTHI", "OFjeXbsSgR43kIDz"]}, {"partyID": "xBwqRJTzrHNZWUsq", "userIDs": ["5lQo2jy29EJigqYh", "yVhURx1yPeczRpdk", "0HATGylx2JG2KNGf"]}], "teamID": "hzfCTxxrsRRLee3T", "userIDs": ["cJ7DQIi45aCDHN9m", "Vug2zkVf6KgpKOcn", "3tMD9UT67bOwugFD"]}, {"parties": [{"partyID": "a6wUQvehKqwCh86X", "userIDs": ["mRkCEcfHDCdl59Wp", "9A3tXGve6DdK6uvg", "8f2cIoByk9fxtvsg"]}, {"partyID": "eAxo57nKAbZpsbJ4", "userIDs": ["Iu5KJ0ynxGBlacDC", "dFe8ATUqVxcSthrp", "nMUBsnUfuQIcSbUt"]}, {"partyID": "5UGkInFGpuUsdtq4", "userIDs": ["dOwNESzCEW9dUVhZ", "jLftC3sCS8CpLCqP", "D9CeDEdCnnL6Kt1B"]}], "teamID": "jj3b8QM8Rr45ULqX", "userIDs": ["QgvwD3PsKDJiWxQB", "waS7rDBf2S54phbd", "yGDt47f9GWRlE9hq"]}, {"parties": [{"partyID": "z6rjDNo4rhjxUdMM", "userIDs": ["83WekqfWv04vvn9b", "k5qr8qs2mqtnGAqX", "UjNypF6MMqWpdEJs"]}, {"partyID": "PoaIbYz8cK5jlpJd", "userIDs": ["re5ur6yvWJDdvM7T", "7PX2vamIRZHzsIYO", "CUoiCXNjrdQL2jdx"]}, {"partyID": "1eIba1sB0HsJ06Dz", "userIDs": ["fbzRYt4OVUyumBeI", "qdQGZC5kM03HHijs", "QRj7N8IAjmsonjj0"]}], "teamID": "ZR50BQ1U6aFD3O2k", "userIDs": ["XQSc58zgZVl4gIF7", "v3qbZu9M3OxqVAT4", "H1lRZ9Z1JBrHRzEO"]}], "ticketIDs": ["tIxzPqb6n73m0jia", "DH86d9rsKgzCsMul", "pB8HZUtVVaJCiLgK"], "tieTeamsSessionLifetime": true, "type": "NONE", "version": 37}' \
    'EdmW8saabP4xRowf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'NojzPXI2v0prR3OE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"ey0MkZwS6TYwNN3U": {}, "Yhic03qGEg5fNzBV": {}, "rjo3g8CfRwtyl1He": {}}, "backfillTicketID": "T7VEPgG40QyXzsOz", "clientVersion": "gck078IghoQBp2mW", "deployment": "AOYksczxBS0OBCa2", "fallbackClaimKeys": ["vWadLmQtYKmEMzic", "buL2S3RiW8dLTCBf", "GUdVEdvdQL7sVwcZ"], "inactiveTimeout": 22, "inviteTimeout": 85, "joinability": "FRIENDS_OF_LEADER", "matchPool": "ofaJoSqtrEOqxH46", "maxPlayers": 10, "minPlayers": 86, "preferredClaimKeys": ["RTSZoDdT0fefo74e", "g3Nt2c0r4GqF0NHg", "lOVuNZ9LzNeJnBur"], "requestedRegions": ["h54CWbYb0Pebyt8b", "4DGscjwrizsFUgYw", "baLvqvQ2NbmDITuy"], "teams": [{"parties": [{"partyID": "mTBjn3d2sFzMS3Qa", "userIDs": ["VjZF7Ax6115Kg9U8", "vrQJXQxoIbVi2CLE", "k277Ivjj1A647XQ3"]}, {"partyID": "koaAfZIim0sFPm1Y", "userIDs": ["N27bojDVaZLpx4kE", "WYkO6KrKUMhJrASB", "h61hmWKSSrF35anD"]}, {"partyID": "Gvur19V18oIrUKXt", "userIDs": ["tgAI2QdWJFLmoPEg", "d8EMspOs8nkic9gj", "5vyUMAAmIHYbsxG5"]}], "teamID": "N066FXb88SbLOa21", "userIDs": ["DiSFsm0XXQJWszvT", "QEuALzDNp1SZ58aD", "llwzTRHak1MXxj7E"]}, {"parties": [{"partyID": "srg7900nml5BidsK", "userIDs": ["9dCEzhVnOv0PQbVI", "aKiHfoeorY7A1otG", "Fyv2SMjbEr50qGdC"]}, {"partyID": "ZIc6EFqBKxbS7Q2O", "userIDs": ["gRucL1jwRXzfjDZZ", "BmOau6syme06c6SK", "Lc2mEC3IXl5XCbkO"]}, {"partyID": "fHaGr5kdazlypvt6", "userIDs": ["lSLfU7HByGXPMqxj", "4hBgVY3YAxZLKbcO", "dyjqf6Q4oiwoJcaR"]}], "teamID": "MEb15LBlTVufc5Zy", "userIDs": ["ODR2NVyn4PRqf3eR", "bZqBAoKGcVCdMiSN", "V4qBrt1kcLmRv6EJ"]}, {"parties": [{"partyID": "tl5xWnsb8oWq94RI", "userIDs": ["mNWVIJnhhwFDV1Vi", "taomvWTzdsW4N70w", "YS4Kj7Yi2VvoQNW8"]}, {"partyID": "Yc481dYdvGxJAMDR", "userIDs": ["A1LF7jdWlekFwO94", "VBCV9qJhWva2FPBu", "jX0geYCpGJM4sqsP"]}, {"partyID": "NJMiZXXOFwmGWAvN", "userIDs": ["F0Z0GkwxUNYyNwGi", "KrknH0Y5mrQgLC6D", "2qsFiQHglUQMZi5W"]}], "teamID": "jMZfOadpgegCUjTd", "userIDs": ["i1Ehr8OtqpNJ9R8T", "uNy4ejmVA3vMCsGy", "Pd12B8QNUz0hFFNb"]}], "ticketIDs": ["H6j2W4roZM2UKAXE", "EsL5D0oiFchQnVeq", "3g2AB2WIRUQmauIY"], "tieTeamsSessionLifetime": true, "type": "DS", "version": 76}' \
    '0W4XmWP0HzSdiylL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "hVYszm8xY33OQbum"}' \
    'u2QHLyZNuysyM4Of' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'CzdQCXMAWnf87YPN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'Oe9Eevf1fhMg1E2k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"7QLFrVgtX7y0fPOi": "eDCow2zXyFFVpM87", "yqEwEacQMTlqN4LK": "kxJ5v3SBafnKNiMP", "bFkFGA85W3HJkqgS": "2B37wwoPYOHiIsxm"}, "platformID": "sLBPBJuNLnWRrtW8", "userID": "70qD88ZcduZSe7W2"}' \
    '0UZcDaiq0nEZ7Pyh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'qFJkDClOsKmfsgJd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "mzsDPsWh1k0cQ08N"}' \
    'G6dX2TZkil67kRng' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'oUa83ECh1gqPeS19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    '3TNNzot3sVli3GN2' \
    'XTrFibRAhzzEWzWl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'TY70qdgJRvpZrSpW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'X3KEe2BjV00ReCXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'ffjJJxlgjzIhpgOo' \
    'IOD74V21HWDAfvXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "dxbyp4HAPbBbNPSt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'VBUpKgOssFkz0F36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"piDYXeHZ7FHls3ny": {}, "vconqbHQqKLQKe3x": {}, "mj6s0GqsWncp5Lrq": {}}, "inactiveTimeout": 2, "inviteTimeout": 47, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 49, "minPlayers": 74, "type": "NONE", "version": 42}' \
    '6oJq4mChmQHQhO9I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"KBXDFQfXFD58sG6u": {}, "DhFYlrzJBYSeMuJf": {}, "QecutjS029BiJWOG": {}}, "inactiveTimeout": 22, "inviteTimeout": 26, "joinability": "OPEN", "maxPlayers": 25, "minPlayers": 79, "type": "NONE", "version": 75}' \
    'i15XTJTgCNNH7RtG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '5Xmo9Q0Wb07N17fk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'xZSc6VbE0AGcekjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"NHuPXtz8tXxrmzaf": "MUguyDoN91uc28Ho", "SpGt1g0GGbT4Hf2P": "PKOldkbgX9CWJKwX", "XSbv5eg9q86IaDFj": "jx6uZerWbtwTX9gN"}, "platformID": "RByjbE8lOLAfTXKL", "userID": "zbrddqcKLa7LevxN"}' \
    'HOSEhQRZIp693lRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "tc43atCuCFxbfbz4"}' \
    'aQERziPL4dHhOqG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'KDdUvk0LEi26Ls7m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"jRxNmvvNtjJNQepU": {}, "TGhwlY4lPzlsCR5r": {}, "VsyfcH7WjP7HuGz3": {}}' \
    'b5WAEvdRF9bqMj4r' \
    'o5B19VE838c7OydV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 79 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'w0zCqoMZvpIOO97D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicPartyJoin' test.out

#- 80 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'mQ5ZOzx6iCJTu60I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyLeave' test.out

#- 81 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'ifzMhkk5PxsjqbCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyReject' test.out

#- 82 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'pMv2Yky9DYkD2sIl' \
    'lFtBtXJKG3rqBmIL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyCancel' test.out

#- 83 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'htWm8RQvRUbUDSie' \
    'fGEdLucrtO2gCQD0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyKick' test.out

#- 84 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"57DrDlgC2nzS9SiG": {}, "UjVAw4v3q6JRHcn7": {}, "KaoCEkRdo6qHYIZW": {}}, "configurationName": "nXqQ1oHFJ9Q0vqsL", "inactiveTimeout": 62, "inviteTimeout": 90, "joinability": "CLOSED", "maxPlayers": 29, "members": [{"ID": "rPpK2q8kxR4BuEks", "PlatformID": "S2A9VOA8H9VeHv0L", "PlatformUserID": "2Acm960EYQEuGJVl"}, {"ID": "8xs1WId9WlalqshF", "PlatformID": "9Rh2o7GCQGPCxwEd", "PlatformUserID": "kyuT3MgzReRq0112"}, {"ID": "ISArROIodcmM6v2A", "PlatformID": "EozWWaYvBLE46bpu", "PlatformUserID": "Jip8JyxJ39vrtuWW"}], "minPlayers": 36, "textChat": true, "type": "NONE"}' \
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
    '{"TZbSqBSKp8AmgwhY": {}, "zk33J34fiTxK63OH": {}, "pnUCGBVfpctNFUsU": {}}' \
    'Q6ZXQcb2o1J5euLA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicUpdateInsertSessionStorageLeader' test.out

#- 88 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"bBgejqc0apxqZ209": {}, "BySn8aUaGlAyvIsl": {}, "t7N1qcxKs4nlf1Mf": {}}' \
    'qUZXkjHvcUOTlxNf' \
    '09pefgFIiJssShBK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorage' test.out

#- 89 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["sQjXvfQgQDt6ce8N", "DMErA82FrR1GSogk", "ewIzTOqKkcjRh3l2"]}' \
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
    '{"crossplayEnabled": false, "currentPlatform": "m5TCAU1cKApdJDnE", "data": {"73GLmSZns5owBhoU": {}, "g4LsGP6KLPXkvUv2": {}, "XiXaBzsmaxjTZPlL": {}}, "platforms": [{"name": "itytGka7Kv5TacQK", "userID": "F4OlRGdmXxETLEQr"}, {"name": "r3KCAV9alq3hK1G4", "userID": "kKooSNNUZuiynZ64"}, {"name": "IwncZPk82GF3eTC0", "userID": "vzZUDj9dzGgGVxo9"}], "roles": ["OHgfHumyfuBNisec", "YbcOpR45VDlvSc0M", "r7ImwCwGqOf0bNs9"], "simultaneousPlatform": "7KvKyj3MqS7Dcmtf"}' \
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
