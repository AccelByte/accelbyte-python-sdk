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
session-public-update-insert-party-session-storage '{"GiBnNbn0zaf7CaOS": {}, "lHXrUSA6sMJzA5mt": {}, "qISQ83TTbtefXWzn": {}}' 'De4LQdXfFBii2RAM' 'EX5RMjBFVZGYzQqV' --login_with_auth "Bearer foo"
session-public-update-insert-party-session-storage-reserved '{"8d9mDdUIoiIJFNxu": {}, "NOmUSWw18T1IxVWC": {}, "xdvPL9e4P01vxP8x": {}}' 'j1LyEirURERnEMzp' 'ImW6sjAHyCK5tNan' --login_with_auth "Bearer foo"
session-public-party-join 'GBrkzUvck3xTtmOF' --login_with_auth "Bearer foo"
session-public-party-leave 'MebS4AdlNzwog2Ih' --login_with_auth "Bearer foo"
session-public-party-reject 'ErkNhNcECWwchW6z' --login_with_auth "Bearer foo"
session-public-party-cancel 'L9SkbLlrNXnGanMa' 'zb8jvRWenURH48aJ' --login_with_auth "Bearer foo"
session-public-party-kick 'uALEcSqcE15u6D31' 'DjOsrs3CUYATdqnQ' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"GbqiqOkNeATj7eGj": {}, "odd7CcJUrI6MAugK": {}, "5kypNrp2nFe9FmN8": {}}, "configurationName": "6sK5LOq4ft5jGcMI", "inactiveTimeout": 58, "inviteTimeout": 86, "joinability": "CLOSED", "maxPlayers": 95, "members": [{"ID": "RBr27fVMWuAfDqLM", "PlatformID": "R919IZPKOKiAVQXX", "PlatformUserID": "OmqFHLbyXmgCNiXH"}, {"ID": "8uenbC5CphgMweex", "PlatformID": "sIAP5vHLjBJ9iqMc", "PlatformUserID": "BL4BzhDUjhKPwbwc"}, {"ID": "vQU5kG8bXGFmPAnO", "PlatformID": "kDiJq4xQye7HqnVK", "PlatformUserID": "3YVeOWs9mfVQh3jL"}], "minPlayers": 57, "textChat": false, "type": "NONE"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"fF8y959anrNSleyw": {}, "HbHig6IKWVZ77KeR": {}, "WdECaFGzfZ2hxcJ2": {}}' 'Fnemn7M23SzUo4hN' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"BDh9ZFP1OW0nXOEr": {}, "QPS4VsRoYIK69yg9": {}, "ADCGiXaLs2xjHkin": {}}' 'OD975nARHCmhNHSX' 'uqIHsxvaUoXDmwWs' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["ukxncuD3QxCXMd00", "YBWCaVVmM45mfIZs", "WhkS476dGGJwJ00U"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "7MJ6zU7JLMQyMWzY", "data": {"QCAaPJgoxGJoJaSz": {}, "UtY4ZD0Xtb0U4pH1": {}, "6NUsVY21NVIs7NRe": {}}, "platforms": [{"name": "n2Y3Ns0QJQeaWytP", "userID": "fds1BYx0EaURydf8"}, {"name": "ZyyZeHAWGgJUbUJR", "userID": "MbkcTglbU86FyOjA"}, {"name": "pNHBVfNOURcjY3YY", "userID": "T9oTynmfIuBWgJTN"}], "roles": ["FfM8M0IW4oe8KDgy", "0xZfAcNg14Ws8TIP", "1LKiFQoLDvumfqrg"], "simultaneousPlatform": "Sfnx2h61X9dN1MGR"}' --login_with_auth "Bearer foo"
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
echo "1..95"

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
    '{"metricExcludedNamespaces": ["pUxDSK8aOTGMudcx", "lCV4cNbJGQ57lPdi", "npjS2DRfGt9GlyZV"], "regionRetryMapping": {"Q4X67tPZSTpPq3xj": ["rElvvDgw0ag7kSWE", "0Hiqm5IuLryiEXqv", "UWDjU1G0EVjVZw1T"], "oLuPakQN1MpOs1RV": ["Frcg2CXxepx78fvs", "yhE2BKtyTDSIM7mk", "mvZ7Cmsh4US8o4jf"], "MANPpmZDdMiCxmuC": ["CVuFjS1GC1d2b92B", "4vEgj3HOmhcWm428", "XejRF94NIY9nMrBZ"]}, "regionURLMapping": ["o0lNUBDShHD32vvL", "28FPwTiXfLcxDC9Y", "nd02mECIQhfIhHtA"], "testGameMode": "DUQ9zimQTQT95pFJ", "testRegionURLMapping": ["UAJsyAfeKOufV4f1", "5NohXu6opxQGRt6P", "qlkL0diRhLC10ih2"], "testTargetUserIDs": ["EQfY3XCv4hdOa6Fd", "ZhNMd1onFjGRbxtA", "BPXDmgNEJBhgGq5G"]}' \
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
    '{"durationDays": 42}' \
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
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["UPDATE_JOINABLE_USER_TYPE", "UPDATE_INVITABLE_USER_TYPE", "KICK"], "PSNServiceLabel": 81, "PSNSupportedPlatforms": ["zkUY0n0BAZkwbYkB", "LyO6A0FqfhnaB3Yx", "KNdOTacCcJfIfXsh"], "SessionTitle": "uLUk5WdpxjZx5noX", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "KDebNkylbynkgT9v", "XboxServiceConfigID": "ayLLiizac7Ge6zKJ", "XboxSessionTemplateName": "dlt7rjF5RaJwvkWV", "XboxTitleID": "co2LTo5ijlvDF8qB", "localizedSessionName": {"WCQ9dLWYyS8zdhMe": {}, "BXH8x6HdVfZVDAiU": {}, "6iJOF7JKZFNk2NKy": {}}}, "PSNBaseUrl": "59X8iOg2sVBiCoeC", "amsClaimTimeoutMinutes": 43, "appName": "weXJl7PeiMH8z8dV", "asyncProcessDSRequest": {"async": false, "timeout": 18}, "attributes": {"HKsEp6KlqwW4djre": {}, "xcbHdEtoQvpV344R": {}, "ctmTozCi8HeV6jba": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "JVBRLPZ6Iz8tne5d", "customURLGRPC": "bguBF6Gsvvdl8jHz", "deployment": "9x7XZIjU4IK9lOLa", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "phKCqTq3EVheJjoE", "enableSecret": true, "fallbackClaimKeys": ["ujsmSmylT1YtxIq7", "3aMb48jISd97KORR", "hxSWLWLNfHRD3V15"], "grpcSessionConfig": {"appName": "QaGGL46LuxJF3sbe", "customURL": "qWBdQuWfgBAKx27M", "functionFlag": 92}, "immutableStorage": false, "inactiveTimeout": 56, "inviteTimeout": 70, "joinability": "FRIENDS_OF_LEADER", "leaderElectionGracePeriod": 93, "manualRejoin": false, "maxActiveSessions": 4, "maxPlayers": 38, "minPlayers": 96, "name": "zApmWJO5vzzXZj08", "partyCodeGeneratorString": "a6K1XRVfriSpPFnZ", "partyCodeLength": 56, "persistent": false, "preferredClaimKeys": ["rRBrYVzi9ui3lvoz", "Tt9TsH7A0TuU2aL4", "bPkk11sys6GdkDco"], "requestedRegions": ["s5uVJ0BJfZ0jvA54", "CSqZFDsO1skRjOU1", "SMfQVQa6blj9Rdd8"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": true, "ttlHours": 80, "type": "DS"}' \
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
    'nW49rWynp1ck1vT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNDisableSystemUIMenu": ["KICK", "UPDATE_JOINABLE_USER_TYPE", "PROMOTE_TO_LEADER"], "PSNServiceLabel": 10, "PSNSupportedPlatforms": ["86cSRL9cgbUmulhe", "98oaFKlQicdrxVhr", "twSd9QWVMYz7TU1T"], "SessionTitle": "sxsChSclSkb5aBi9", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "lKNKoXa0dgx1JgjC", "XboxServiceConfigID": "56pda3YhtQxpCYME", "XboxSessionTemplateName": "6x21pdX2QSPAd9sx", "XboxTitleID": "oLnWGP1PafIjLX8c", "localizedSessionName": {"e0KbNN7Ycl2JfmQp": {}, "lvGjVQ4aebjfgGu4": {}, "72oWJlfglLM4xjfk": {}}}, "PSNBaseUrl": "NL4lU6jaGfsD1cfs", "amsClaimTimeoutMinutes": 45, "appName": "JTSiXjcY5ZPkv90l", "asyncProcessDSRequest": {"async": true, "timeout": 77}, "attributes": {"KSTWLxSFZ0LpupEi": {}, "5DbkVs3qFTi1t530": {}, "Wj1WfzIvc3VlSXrA": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "S6xBbNrSUAW2ak7I", "customURLGRPC": "SDrBVg6NuDZvPb1k", "deployment": "uUfNfUDe4g7q6PHE", "disableCodeGeneration": false, "disableResendInvite": true, "dsManualSetReady": true, "dsSource": "nKfV3869IN4V1Odh", "enableSecret": true, "fallbackClaimKeys": ["4GVU7Exlkmc4xYiL", "jLyZrXr9Bhtzn8jA", "dTn6xBhrciryLm67"], "grpcSessionConfig": {"appName": "rkadH5Y41SLjCPrF", "customURL": "a05Xl5TPC5GODS44", "functionFlag": 2}, "immutableStorage": true, "inactiveTimeout": 26, "inviteTimeout": 4, "joinability": "FRIENDS_OF_FRIENDS", "leaderElectionGracePeriod": 47, "manualRejoin": false, "maxActiveSessions": 79, "maxPlayers": 86, "minPlayers": 35, "name": "dKLddfdsUqjXVzW1", "partyCodeGeneratorString": "QqxnWR5sheLgsAF4", "partyCodeLength": 5, "persistent": false, "preferredClaimKeys": ["tv5guycGiq9j2EyI", "knfLDpgHnMOn8nc3", "gUZ8ZFyyEr0KBXuJ"], "requestedRegions": ["BqK4QtEydPWLPBYi", "R3UbJc1ZYapx7C47", "7etqgfOJDUT0uKAP"], "textChat": true, "textChatMode": "TEAM", "tieTeamsSessionLifetime": true, "ttlHours": 53, "type": "P2P"}' \
    '3V7YbJM3bNLWHAbC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'Zixe2cQ6O30lpzcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'QMAEcNcJqrKxnMzS' \
    'Yoc4ZjiMY4H34B6w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "Vd8ipcKDwQeUWtjC"}' \
    'C2UH6jzMO3AfmOS5' \
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
    '{"mQNyRPZFPNP56l1A": {}, "T6OLKmZhCZxxPPdP": {}, "wOtEuWBSO2jJepUn": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["EEgja2mIE2kLTnJw", "c5XmkCuL5W4tKt6G", "3j9LYdG7xVPqBqe9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'DQMBSYAFLqp8PF5h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateDSInformation
$PYTHON -m $MODULE 'session-admin-update-ds-information' \
    '{"createdRegion": "CcoukWpnbz4ys7j6", "deployment": "lxuU3u2HEG0qfKeg", "description": "vFTD1sPykS8YLmwt", "ip": "YgWGcA0h4G1LZ1Ha", "port": 26, "region": "5UBMbsF44VTsLDRz", "serverId": "dq22cbnyK3ggFDh2", "source": "kaZP7pnnVfxPwc25", "status": "9HF9ejHaILQruAuY"}' \
    'yJLYGqMv824ouSgk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminUpdateDSInformation' test.out

#- 30 AdminKickGameSessionMember
$PYTHON -m $MODULE 'session-admin-kick-game-session-member' \
    'pK70uJmUL0uzElix' \
    'c023dIvDiA0tQWlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminKickGameSessionMember' test.out

#- 31 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'wBcTtztx3VAl6tXF' \
    'bnATCzUOIzVcy9k3' \
    'ie64Vnwa0ClGQJul' \
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
    '{"ids": ["tJe32AiwKadEoIVm", "prwPsa9YD92CX0rI", "TajpwHITGeHTnqRb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminDeleteBulkParties' test.out

#- 35 AdminReadPartySessionStorage
$PYTHON -m $MODULE 'session-admin-read-party-session-storage' \
    'zBB9ZFgJbQ3Fj1um' \
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
    '{"psn": {"clientId": "x4ItzkMJ7cudf4r9", "clientSecret": "16GPrhn2etVIQvRk", "scope": "QJAtDUH9tx60AehG"}}' \
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
    '1ermJYXsYgL7TfyI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AdminReadSessionStorage' test.out

#- 44 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'lAwjTZdRZJJzWZwv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'AdminDeleteUserSessionStorage' test.out

#- 45 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'TX2bamSCvX1nwvSW' \
    'dDwD7WJHzgNZUKsI' \
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
    '5y0mR3zMyTsftKqn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminGetPlayerAttributes' test.out

#- 48 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'sIJctAdxyZVKHA9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminSyncNativeSession' test.out

#- 49 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"appName": "kaSOWgtg8yw8lHEb", "attributes": {"VDwBAqanOlscRIWw": {}, "82k5K5VTkdubkOFl": {}, "dMCQ98JH4n0Jtgqz": {}}, "autoJoin": true, "backfillTicketID": "EFIZs28Ff1kZp1Zk", "clientVersion": "tx3N7WNMYIfcDKbL", "configurationName": "u8pnK34oA1keYXJv", "customURLGRPC": "tggDdXjbdjMBahFZ", "deployment": "ZGMTcqnWrIprOv0B", "dsSource": "J9Sgl7H1sdH2RIJz", "fallbackClaimKeys": ["1eI7Q5pu9PutLf6I", "rvZoBGQbO4S3rURG", "WUzPAE6SdV4D5jft"], "inactiveTimeout": 89, "inviteTimeout": 23, "joinability": "INVITE_ONLY", "matchPool": "9rZmtQUvro8TWwXW", "maxPlayers": 38, "minPlayers": 72, "preferredClaimKeys": ["z9TVmdMKEohKzuMY", "DUTLBeCidXjuGgx8", "ncXejmeZtzT0qj0l"], "requestedRegions": ["tsqfiZrthVvyX0OC", "KDJE3RMUddwSSgxC", "u8zru1DhGAYOHR5B"], "serverName": "Wa9VzIkaQEl1iUPr", "storage": {"leader": {"oNB6hI6IpGcToWgF": {}, "vdRhG9NwV3zDuqVl": {}, "VTypcYPK8IxrSZux": {}}}, "teams": [{"parties": [{"partyID": "Wl0Je4fJIyFAm3DQ", "userIDs": ["ht4JwnPS2urJqero", "bWMZGVL5KLTxahWl", "S6XdBaKSLCgOOPXM"]}, {"partyID": "6XTUh2dJ90yqHDNa", "userIDs": ["cl4F9G6Dl5TFwBY6", "HKXAblkT8VGgSH8M", "GZGwiVj7eDTaka9A"]}, {"partyID": "BfX1IByPEOuPhGsp", "userIDs": ["Ri3bhPQvBBJI5Jxy", "tpcubN4AUUPFPscZ", "sXeJOD4DMtqfIGiG"]}], "teamID": "JovgWSRxZ8N4UQ2f", "userIDs": ["g3V1o2x0hL5DuBDq", "MyIAzWze94MEdJFA", "y2JTllJkRGB8jqJE"]}, {"parties": [{"partyID": "d6eqqsBVyONV0JRt", "userIDs": ["ozI0jpliCFQ6WgJp", "GPigdc5VyC4qvWjV", "ac1cQvSxgTNIUzxD"]}, {"partyID": "gBlIbuzm7DzJ20NF", "userIDs": ["RJIhFXR2dYprPmbp", "uptECGd5cdXC2Ses", "c6y68whNBYl9iCqf"]}, {"partyID": "W6rqGOQny4ij4ysY", "userIDs": ["Ponb59gQffkNOmub", "xEJr2qEAuJbpZSrc", "bc4LWfKaY5c1tP5T"]}], "teamID": "DuI5f6m4KC07CnsZ", "userIDs": ["e32hqEcB1ExYMBb3", "ckvoaJYdMqGegcg3", "eRvBZXN3cjIXmFWR"]}, {"parties": [{"partyID": "Jnj8xN7HDPTUEDPN", "userIDs": ["1Kb4UTPWDXTSb55g", "8LSTs7Nf95lGlPrf", "6obIdnI6Ag7eUYcY"]}, {"partyID": "J4QzXCmqr6gmPGaH", "userIDs": ["P5SVPvRLiDi0mNHb", "6Lx8eq8SGNwEQO8d", "YXvBSYvJBwb6CjZU"]}, {"partyID": "MRf2VJetWsokvx3B", "userIDs": ["HuTEczr9KjQ3ttz8", "MTBt1xk9IyssSA8n", "P5PQjpzk2Tb7iYdm"]}], "teamID": "NZWosrsVBPZ64j0H", "userIDs": ["UONscofwYLQcDvka", "EIIPoJT83zEGXmVB", "ZLyrH9J7BoysmaOR"]}], "textChat": false, "textChatMode": "NONE", "ticketIDs": ["P5hc2Fh04JTsqDTy", "nCewqJligLlRxOel", "KykICRxF6HtlER2t"], "tieTeamsSessionLifetime": true, "type": "NONE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateGameSession' test.out

#- 50 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"TgCejBd5o7iTST7R": {}, "3KbbQGERMNpqWb51": {}, "y5RUzvMfTkPy0fGv": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicQueryGameSessionsByAttributes' test.out

#- 51 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "TGgfLKsg0b1Bq78c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicSessionJoinCode' test.out

#- 52 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'E5O5pmPnbiPJ9j4v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGameSessionByPodName' test.out

#- 53 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'xmbH3rVaauufxkPH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetGameSession' test.out

#- 54 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"Elug48TgfNu0rqXU": {}, "OyToLPIREGIKlJt3": {}, "EP9kKwkENQ8VOHGw": {}}, "backfillTicketID": "bADMfuOmh0lciRhV", "clientVersion": "Z2DeoODXMzLSrzoi", "deployment": "BnYi5UWs3tYlYeMo", "fallbackClaimKeys": ["CimJySocRvUWDOrF", "ZKPNoN9AWtLK9TFg", "i9j2XMh9WpifqjNj"], "inactiveTimeout": 78, "inviteTimeout": 82, "joinability": "OPEN", "matchPool": "zxrDKVpULjjiw3Ne", "maxPlayers": 98, "minPlayers": 66, "preferredClaimKeys": ["fZbpTJezzriCDWXT", "59SRu0YqUxKDc84O", "MIzvTScdbKBsAyJM"], "requestedRegions": ["z4ILNDvhB4Eoes9a", "6XaJeRbzTPwD3jxF", "7vxRUY0ilrNoFT98"], "teams": [{"parties": [{"partyID": "SgtJd4Z5f8nfaKqd", "userIDs": ["ZFLbZEHxsDxeR6d7", "r1SQw80JfMpPrSqY", "ypRUnq5o4ETeCUYG"]}, {"partyID": "9ccTt7Wxw8OQ13t3", "userIDs": ["uTw6zQuoZcXQpoTO", "xe8y1jorNsg9ZKYC", "KoISyXtHzoWGdYoh"]}, {"partyID": "xMp3uOQIybqWfG9B", "userIDs": ["J6FVKlbYHtbPtaxv", "agSlpGgVTF6VeDAP", "OGBwweyFfXEOEAEt"]}], "teamID": "bag82KgBgyCd5vjk", "userIDs": ["fz3eR4DtNp129hzB", "w3xLUcCEt0DzmkJq", "1sml5bYt76BNsi4g"]}, {"parties": [{"partyID": "iR9434WpKKdzxouf", "userIDs": ["CNlFoOcWQQy4bjmQ", "eEweoBHTdwAk7ZQn", "bqY1cQwVEtAr5kKK"]}, {"partyID": "Ao9MM2Cqm84jVi9k", "userIDs": ["IpqgrzpUkNOBWydX", "V0Fi02aFr8CDapjw", "NOl4k8rVNrm8drv8"]}, {"partyID": "QD2JOe2Ntz7EFvow", "userIDs": ["PgIGuetxFMqXCQMA", "qQ2ZRGzNtrThFa9X", "U8mosluiHZJ7O8sA"]}], "teamID": "Q32wj9uaDzsr9xYi", "userIDs": ["WRuuzQJiLc1eI9w3", "JEhxPGbEk7s7gw07", "FlounC3vJKBC7Swg"]}, {"parties": [{"partyID": "oViPeIB4Ehy0Y5aS", "userIDs": ["JVDginxAM77eY9C1", "4FbfiI2NPvl1kCY5", "bEokxXxkWZbjf7GZ"]}, {"partyID": "xaossQmjo69wohJF", "userIDs": ["yTNk5FGUPhR4LEZv", "z3EjFR7996Ug5m4a", "xDV5uTcYsoahUrEL"]}, {"partyID": "Q1btjJOqQMgZWAU6", "userIDs": ["E92nHJzvw7tnYtGf", "v0EJyjBu4EzwRjD7", "jmQJeFPghqamSc5y"]}], "teamID": "0X48eT7Mluexk87b", "userIDs": ["9Z5BTsEA3EdmW8sa", "abP4xRowfNojzPXI", "2v0prR3OEey0MkZw"]}], "ticketIDs": ["S6TYwNN3UYhic03q", "GEg5fNzBVrjo3g8C", "fRwtyl1HeT7VEPgG"], "tieTeamsSessionLifetime": true, "type": "P2P", "version": 62}' \
    'yXzsOzgck078Igho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGameSession' test.out

#- 55 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'QBp2mWAOYksczxBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteGameSession' test.out

#- 56 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"0OBCa2vWadLmQtYK": {}, "mEMzicbuL2S3RiW8": {}, "dLTCBfGUdVEdvdQL": {}}, "backfillTicketID": "7sVwcZ2PofaJoSqt", "clientVersion": "rEOqxH46fRTSZoDd", "deployment": "T0fefo74eg3Nt2c0", "fallbackClaimKeys": ["r4GqF0NHglOVuNZ9", "LzNeJnBurh54CWbY", "b0Pebyt8b4DGscjw"], "inactiveTimeout": 36, "inviteTimeout": 79, "joinability": "FRIENDS_OF_FRIENDS", "matchPool": "y2Zp2UAGxHnmSxvk", "maxPlayers": 66, "minPlayers": 2, "preferredClaimKeys": ["9UR5q9neoW6JBcGp", "9Rx2RfcRhXpmeeHd", "vphas9S7ivHEoLbU"], "requestedRegions": ["MM47f1UreUpxEkXI", "bE1ETzRJZKMavu4U", "l2IaieEbPSE7TGke"], "teams": [{"parties": [{"partyID": "HsYsW9oGBN1pYMBw", "userIDs": ["bPZTlMlUvFEiGprc", "NSQ9kEeXBZ6FVrBz", "yhyhoS6a9oe0JaXF"]}, {"partyID": "pff28uYbe4Cf2HEH", "userIDs": ["vVevhISjbtBJUK5f", "E3OufPSX3PdOU2V9", "yw94oa8UJ34TIedV"]}, {"partyID": "3HyoX4VnO2LpBU08", "userIDs": ["wfnlHBXFIqFUmgUS", "MM5au8GJT0mkVPI6", "zUtf3QaJPGrTNcXX"]}], "teamID": "TUIggoH89QNmI17U", "userIDs": ["Db19R6H7r1ta3m7j", "K5pxe82pgFiAS6pi", "Izmc8rKrKEPGSAco"]}, {"parties": [{"partyID": "ng6eNERUf8kjci1C", "userIDs": ["tccv9Gv4tOcbnuCq", "f0lm6WBkIzjoSV31", "tvmMB6jzrpRGESmo"]}, {"partyID": "oHiCV4GUOnXpapXQ", "userIDs": ["GRakUbcG7PcR4eiU", "3Idi55jNrGNT2VHT", "KuIT5FwwHj0Ur5F2"]}, {"partyID": "PWGTTD81xhNP4t6k", "userIDs": ["YBUjyXAn3bWQF6Qc", "AiJpXIrgroixptZh", "ckUTGkcBOE4qMcH1"]}], "teamID": "Kyi8ZFvGcV8DY0XO", "userIDs": ["kDstxZcY1HgAnZV4", "IOglVLqb9lGAJUg2", "1Lt7JwgwMUSuC3Ba"]}, {"parties": [{"partyID": "jy3BcEMCtQs2FcEc", "userIDs": ["vVAyId6Cp85HVDsZ", "BQgOnXuXsGThYZrm", "m0wrFMnPpWgrQD4h"]}, {"partyID": "Ek0OLjYsnignE7Kc", "userIDs": ["MF7fuDbzRRYMNXWU", "sp1tOibJY9aL9ie6", "vvMbiNURrlm88QlK"]}, {"partyID": "yuoya4JgakZyUV7t", "userIDs": ["73VnSFbuxd4KYZ0j", "k0UZdhtnKu9oTc8p", "VkiyGsj5JdXzRxfN"]}], "teamID": "EjUMTs8WIObJBTsv", "userIDs": ["sw76uISRX0bKVoWt", "oUW1P7ocuBAldDSU", "S7Haa6unq1yQOSRv"]}], "ticketIDs": ["yiLBRVtIDi2piIQF", "VmzMidw70KSahpYZ", "dKZRyR9AX7JjxvNZ"], "tieTeamsSessionLifetime": false, "type": "P2P", "version": 12}' \
    '84DiZk6ySrB9SVFc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PatchUpdateGameSession' test.out

#- 57 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "tW7YS0OkL78XeEAt"}' \
    'ALFI3v8yha4pd5A7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateGameSessionBackfillTicketID' test.out

#- 58 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'MYcpBD6lKNb8RxvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GameSessionGenerateCode' test.out

#- 59 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    '2u5J7baOeLH19fqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokeGameSessionCode' test.out

#- 60 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"metadata": {"wNbNe1ffYRtIvQaK": "yevWYtZjK6J29v8M", "pBSpo3AKRmnJkzJH": "AckUyBksYQfDm0RN", "Fwiz70tRVLMlHi8i": "9gOVqajUWrgEsWDt"}, "platformID": "aKzn8dZwnnGeZsZV", "userID": "gbPzPFbrOMZMgWkF"}' \
    'N7Tpkx6GcfyOg6ZU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGameSessionInvite' test.out

#- 61 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'rrp9ubg9mndW2JKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'JoinGameSession' test.out

#- 62 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "QafUs2bxYztOEyVb"}' \
    'KIf1ZbzgUwd8DHoC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPromoteGameSessionLeader' test.out

#- 63 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'QykmXHYmkRlg7gYs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'LeaveGameSession' test.out

#- 64 PublicKickGameSessionMember
$PYTHON -m $MODULE 'session-public-kick-game-session-member' \
    '6unPYQ9jNQN1di1l' \
    'dhOh6HvjnYuV7NfC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicKickGameSessionMember' test.out

#- 65 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '4A2ODiZhbfb8QqCy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGameSessionReject' test.out

#- 66 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    'K1XH9D6vl5eFdFfg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetSessionServerSecret' test.out

#- 67 AppendTeamGameSession
eval_tap 0 67 'AppendTeamGameSession # SKIP deprecated' test.out

#- 68 PublicGameSessionCancel
$PYTHON -m $MODULE 'session-public-game-session-cancel' \
    'K46GjCWaP8huTmnq' \
    '3FGQn3Ahu5wxq6oJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicGameSessionCancel' test.out

#- 69 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "q4mChmQHQhO9IKBX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoinCode' test.out

#- 70 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'DFQfXFD58sG6uDhF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetParty' test.out

#- 71 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"YlrzJBYSeMuJfQec": {}, "utjS029BiJWOG1m7": {}, "MKclr5igjNTVItrH": {}}, "inactiveTimeout": 66, "inviteTimeout": 25, "joinability": "FRIENDS_OF_FRIENDS", "maxPlayers": 29, "minPlayers": 49, "type": "P2P", "version": 87}' \
    'gaVfw5Vnyq8OzTE8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicUpdateParty' test.out

#- 72 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"9WDNoMcOmbfJrCJQ": {}, "Ij1haAosKglqaCXE": {}, "9ytpIO8btO3OwNEG": {}}, "inactiveTimeout": 91, "inviteTimeout": 99, "joinability": "INVITE_ONLY", "maxPlayers": 67, "minPlayers": 93, "type": "DS", "version": 0}' \
    'T4Hf2PPKOldkbgX9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPatchUpdateParty' test.out

#- 73 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'CWJKwXXSbv5eg9q8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicGeneratePartyCode' test.out

#- 74 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '6IaDFjjx6uZerWbt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicRevokePartyCode' test.out

#- 75 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"metadata": {"wTX9gNRByjbE8lOL": "AfTXKLzbrddqcKLa", "7LevxNHOSEhQRZIp": "693lRwtc43atCuCF", "xbfbz4aQERziPL4d": "HhOqG5KDdUvk0LEi"}, "platformID": "26Ls7mjRxNmvvNtj", "userID": "JNQepUTGhwlY4lPz"}' \
    'lsCR5rVsyfcH7WjP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicPartyInvite' test.out

#- 76 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "7HuGz3b5WAEvdRF9"}' \
    'bqMj4ro5B19VE838' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicPromotePartyLeader' test.out

#- 77 PublicReadPartySessionStorage
$PYTHON -m $MODULE 'session-public-read-party-session-storage' \
    'c7OydVw0zCqoMZvp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicReadPartySessionStorage' test.out

#- 78 PublicUpdateInsertPartySessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage' \
    '{"IOO97DmQ5ZOzx6iC": {}, "JTu60IifzMhkk5Px": {}, "sjqbCKpMv2Yky9DY": {}}' \
    'kD2sIllFtBtXJKG3' \
    'rqBmILhtWm8RQvRU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicUpdateInsertPartySessionStorage' test.out

#- 79 PublicUpdateInsertPartySessionStorageReserved
$PYTHON -m $MODULE 'session-public-update-insert-party-session-storage-reserved' \
    '{"bUDSiefGEdLucrtO": {}, "2gCQD057DrDlgC2n": {}, "zS9SiGUjVAw4v3q6": {}}' \
    'JRHcn7KaoCEkRdo6' \
    'qHYIZWnXqQ1oHFJ9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicUpdateInsertPartySessionStorageReserved' test.out

#- 80 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'Q0vqsL9SomqWsGA7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicPartyJoin' test.out

#- 81 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '6yxi0QzZWfmP2sx0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicPartyLeave' test.out

#- 82 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'KO5bEJaPnAFjsody' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicPartyReject' test.out

#- 83 PublicPartyCancel
$PYTHON -m $MODULE 'session-public-party-cancel' \
    'JQVVBrShGbIIuqK8' \
    'C403HgoXCR6XOMXw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicPartyCancel' test.out

#- 84 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'Kdfqk8T4QHK30EX0' \
    'FclpDl5HsuracO5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicPartyKick' test.out

#- 85 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"njnxD1OXkxShFVQT": {}, "RekLfjmy8zosRCRg": {}, "VwbrQKmb01yA7U7d": {}}, "configurationName": "GMjupZkZQY8CNyT4", "inactiveTimeout": 21, "inviteTimeout": 10, "joinability": "FRIENDS_OF_MEMBERS", "maxPlayers": 17, "members": [{"ID": "IbfT22G5NpE130YW", "PlatformID": "SgxpKWtdtdtVW9an", "PlatformUserID": "ENmxb9e7vXZV3ig8"}, {"ID": "Jg5VByeI3ycMcYYB", "PlatformID": "ixKJXCISQdwec1m8", "PlatformUserID": "BusV9tUh74KVo6Xq"}, {"ID": "jz2xUKLNWSmYyVvy", "PlatformID": "elIJ8QgaLMqi836U", "PlatformUserID": "La7cfZl4VuY6rsZy"}], "minPlayers": 29, "textChat": true, "type": "P2P"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'PublicCreateParty' test.out

#- 86 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicGetRecentPlayer' test.out

#- 87 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicGetRecentTeamPlayer' test.out

#- 88 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"BRRnoOikIxXKKIR6": {}, "kPmswm5TCAU1cKAp": {}, "dJDnE73GLmSZns5o": {}}' \
    'wBhoUg4LsGP6KLPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'PublicUpdateInsertSessionStorageLeader' test.out

#- 89 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"kvUv2XiXaBzsmaxj": {}, "TZPlLitytGka7Kv5": {}, "TacQKF4OlRGdmXxE": {}}' \
    'TLEQrr3KCAV9alq3' \
    'hK1G4kKooSNNUZui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'PublicUpdateInsertSessionStorage' test.out

#- 90 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["ynZ64IwncZPk82GF", "3eTC0vzZUDj9dzGg", "GVxo9OHgfHumyfuB"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 91 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'PublicGetPlayerAttributes' test.out

#- 92 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "fC0GjvpgJfuBs1Vp", "data": {"qn47GVghTH2wToOn": {}, "q9U5lyW89Xwt3wmR": {}, "TrDCjhnKvsHezWTq": {}}, "platforms": [{"name": "gYPixtHk6lWq6tEe", "userID": "UmU96FLEak0mJqjR"}, {"name": "YldcTpdeCD9XPRi4", "userID": "bAQL7VE2wL8Y4JFV"}, {"name": "UdzA8bvXlDhG7Bro", "userID": "rbKIKuOXJPm5ztrr"}], "roles": ["09CDA8Ij5bGKSuop", "WQbaCvdPSq8Z27Gp", "vHCDx55JZ5z6gujp"], "simultaneousPlatform": "FzlPspQD9IRIpDDu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'PublicStorePlayerAttributes' test.out

#- 93 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'PublicDeletePlayerAttributes' test.out

#- 94 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'PublicQueryMyGameSessions' test.out

#- 95 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
