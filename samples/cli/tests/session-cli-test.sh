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
session-admin-get-dsmc-configuration-default --login_with_auth "Bearer foo"
session-admin-list-environment-variables --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 62}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 39}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "PSNSupportedPlatforms": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"], "SessionTitle": "n8mzZ0m8SAMTwE6I", "ShouldSync": true, "XboxServiceConfigID": "IaRDBXxyaNoMR6hk", "XboxSessionTemplateName": "spInrAip6lyzSxwE", "localizedSessionName": {"lFHHdgs21Jub74CU": {}, "kNmKJfh5pUkHODpo": {}, "MF78NY4YkHs1cnz1": {}}}, "PSNBaseUrl": "JSDgY1TXp38zsCTC", "autoJoin": true, "clientVersion": "cPiSuL0Sly6XM4OI", "deployment": "18mAQLnzjMf8GZ2W", "dsSource": "BZqxYG3aREAu2D6Q", "fallbackClaimKeys": ["VKNCWP75TB0i7pKx", "R8dl0zRVW4EZG9m0", "XcgGVbMqSszE8GHa"], "immutableStorage": true, "inactiveTimeout": 20, "inviteTimeout": 92, "joinability": "7AorKsxwkosAVerX", "maxActiveSessions": 31, "maxPlayers": 76, "minPlayers": 5, "name": "i5r6QEa1ysLEzth6", "persistent": false, "preferredClaimKeys": ["N9A3sNm84hddSpHt", "0P7MIIR7CkyF6C7d", "uuyZ0GhDogqrhBRd"], "requestedRegions": ["8lDR6qVNPRZYdFLI", "AjGGJddVCvu9vx5K", "Q7KYnIuMBvaO35ll"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "aT5kPxUfofvnnSuB"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '0y5WUlrMdI4sNvea' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 2, "PSNSupportedPlatforms": ["8sKgnuRkgghGoYup", "D391C2qtPYokahFj", "kQsfCaTmt1d67FXG"], "SessionTitle": "k2s9Q0mPVo3twu0M", "ShouldSync": false, "XboxServiceConfigID": "C6I3lMjGSWN2laRl", "XboxSessionTemplateName": "xfcjHfYakUCTqGkE", "localizedSessionName": {"7wcWfDslpJSqGAXQ": {}, "0yYoNRKd3IL5TAQ6": {}, "iiPlSC2uE4o5Vwdo": {}}}, "PSNBaseUrl": "3fePqIJA8IHtrkmu", "autoJoin": true, "clientVersion": "hpDDWVAla2l5BYNt", "deployment": "IuS5S5XUdjsoqwGy", "dsSource": "zzWi9gwQYv7t1o7T", "fallbackClaimKeys": ["Tr1DmrhZv15T7quI", "OvBMcaYmvCkGZ5dA", "gqxpBFmaLoxozr6w"], "immutableStorage": false, "inactiveTimeout": 50, "inviteTimeout": 80, "joinability": "liWMNW5NyLu0M3VH", "maxActiveSessions": 16, "maxPlayers": 72, "minPlayers": 58, "name": "EI8JlDbPWbQ6Q9lN", "persistent": false, "preferredClaimKeys": ["gdWyOtXi3choQrpO", "sDBU5SepjChB3V0v", "52Dlym6puQ23xoJ8"], "requestedRegions": ["aeCnaLpUKp44YUDj", "asWIPUvmEejtGeoy", "IPa8ZRrvjj7il35M"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "9oCMNqq98SjTvhZN"}' 'kSQ70D0H6BXksUC9' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'b6i5lZC9xv32e8c5' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"csSovoqsZNBdte9N": {}, "DUPVJf6c2Z0QZxfg": {}, "PubTDIHrvqAThuwj": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["RHpKKTlmVr9XuoJb", "RFQSKVPHbn4Xxtu7", "LQRENjEEztx1WsYS"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'iZqan0nSBJroav91' 'GXlvPG6bFYReVHQi' 'pcCx9Zw5D2L7vIYh' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "GGSyEW4ZJJ42d3PB", "clientSecret": "ddN8S48l9lyNApfl", "scope": "xqMrj3oZk03QXcKM"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-read-session-storage 'DYDDxHSZjtqXyJ58' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'f7Gc26SaiGVkydwY' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'WQG26yUZNmTBcvrb' 'YCwZtxFHyPLtI8il' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'byDPUIj88cekdqCt' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"81P1ktfIovmv9gsR": {}, "5cJcHm3SZLxoRDFu": {}, "uuySj29a9LJE8HoR": {}}, "autoJoin": false, "backfillTicketID": "1X2PFAAMwzHPxB1U", "clientVersion": "skYs4Yw20DOqOBSC", "configurationName": "2DKHRuPMMWH8Yb33", "deployment": "T5UBJCjfcnLRfxeC", "dsSource": "Sz9WEi8KlloeH0JT", "fallbackClaimKeys": ["1yduat2vQR3biBfs", "u4jmsRE2w1yEkLgh", "3tIYt4SqYUTLDx9g"], "inactiveTimeout": 70, "inviteTimeout": 87, "joinability": "iDandpGT2t24aOMh", "matchPool": "5eC3IHeHSKLCa3xr", "maxPlayers": 8, "minPlayers": 80, "preferredClaimKeys": ["WIsfmx40NLRc6m8h", "eKnWhzfe2NubeoKF", "eIaFQCYoDPICpndu"], "requestedRegions": ["EEQlULdJz4mnRBkM", "NxvvKgAT8mJrYq6h", "RkloqxM3gpwxcfMy"], "serverName": "9XzjjI5YbsKoADkz", "teams": [{"UserIDs": ["JEN2VHzih3bit0VW", "n3CO39PXDNxtXgeO", "3FgkXhjDzaQY3snn"], "parties": [{"partyID": "2ZkP7cFdP43e5dC9", "userIDs": ["XIBudfZgrbHDIDm4", "hMzF4TxodenSrUTv", "fqU0bfoMm5cTtFWb"]}, {"partyID": "otQyXJRcQWsmqPNs", "userIDs": ["92epxk0i8VxsZNer", "eSvf9699mCEHThUJ", "kETAsSp7gh4TeUTk"]}, {"partyID": "OkAYfJB8AT9t4Tv2", "userIDs": ["07Y2QD3oD5fLCr3O", "OlXVv8ZGF7uYnGzp", "ipNDigNJma1MbqqZ"]}]}, {"UserIDs": ["tfNWql4nmwAft4gq", "kNNlWkD9eOziYRFO", "n0jJLHC9LxhvNXTw"], "parties": [{"partyID": "GBCtohLtl9Zuhytm", "userIDs": ["5UDrT6QXCs5SPBbR", "PZTF6oQAXVG7tnsZ", "g5QgXjvyGJPN4eXb"]}, {"partyID": "JE5Vs2GcyomQoIXi", "userIDs": ["mBJehyxlNsjUgxBk", "F6wFPoJeQediogEh", "hM2rIizGdKvOPdq5"]}, {"partyID": "xrgxSmy1DN9LFkYW", "userIDs": ["5DQyj4bj5Ro2ogaK", "t2ujQSa3Zdb65UXm", "y0Zp6iIaTIKUkmkk"]}]}, {"UserIDs": ["9QM0NBMA9ORxpzwL", "R2AK6eXUGPJsw1fi", "P80G9Pclxcft2ulI"], "parties": [{"partyID": "JzPyrVEiOG4Ucqsu", "userIDs": ["GKHhMRWLVd3DlhLu", "IpomM8sm1MiaI1mX", "2tJoARtdbBe7udsM"]}, {"partyID": "rok0WvGYYnx4V709", "userIDs": ["xbnGezKsDwG2omOR", "2nvYI9TVqJdvzcWb", "fUpaXp5JMl5LL4bT"]}, {"partyID": "xBmZjdrrIxsB0NRs", "userIDs": ["B1fPqqRRulpqpymD", "kQhtrHWwRVnwVBOq", "OHi8pWGd1juYhiqj"]}]}], "textChat": false, "ticketIDs": ["OqB5F93zFQbJndUD", "pdONneAczbBdHb2s", "lt71B1SmZp2JZp50"], "tieTeamsSessionLifetime": true, "type": "TTS1j02o7JjTXAQN"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"0qdskdQV0TqI8EFn": {}, "mDbxIxi4YKlONk2Q": {}, "5Y4JvaizwiilatuU": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "jjt9lIMGql5ElEa9"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'EIIlGcHB3CfR3ncD' --login_with_auth "Bearer foo"
session-get-game-session 'lwi3v3MFFJ1KesKo' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"ELCpobBEG8X645xp": {}, "dXpai0rYaT5hOPja": {}, "f3H0tYighU0VUfcY": {}}, "backfillTicketID": "HJbBfAKSiPW3VgsZ", "clientVersion": "XiR1DJ7HVWqMkNSa", "deployment": "wQUWDFJvJBWic7Uk", "fallbackClaimKeys": ["BeIXuqDuAXI66bQ7", "1w0deoV9Lx5RDA1l", "2XcrciYNEzvSZIPk"], "inactiveTimeout": 15, "inviteTimeout": 76, "joinability": "SgORcz5S5BvmgBLx", "matchPool": "h4ijFnE3Tam69qSZ", "maxPlayers": 86, "minPlayers": 0, "preferredClaimKeys": ["C6f6QkmZXElW9YfR", "Sse6AAz3S4czz0QK", "FlAVmVLu4AOec0z8"], "requestedRegions": ["eBeeoip68J1nsv4W", "2OJhtafxMSJlHeb3", "4sZKHcl5LLLOexL4"], "teams": [{"UserIDs": ["fZvWtND2tcBFpX8l", "NtFEJ7tnkY6Mca5a", "fj12K2IzrBvvWm4u"], "parties": [{"partyID": "dE0OXudXgNne8kJA", "userIDs": ["Twlc6esUp6Sw1I98", "jeZQ7hfxnhLd3Kna", "knoed9DHhLOqQGhC"]}, {"partyID": "Ur6iTrjyEgarAdNJ", "userIDs": ["OIG36I6tRbRcrEve", "MdAdiPKDUVSC00PY", "eDcagginxnFIna3y"]}, {"partyID": "ddcbsPheTH26IUJN", "userIDs": ["vYuGRUvpZaHCuESO", "iIZsMfB4ZH3mtgWg", "U4pCAKxeE70CaunQ"]}]}, {"UserIDs": ["Nxot371W9G4AvQkq", "sGnmyo5JJTUVmb8G", "EXFTlEMEsFzYqwgK"], "parties": [{"partyID": "1Np5nodqpLm7FhJB", "userIDs": ["NXzAFdO0Khqf6kiT", "dSGv2LFjAKY7Cbgs", "WqFWZX7kPBom8F9G"]}, {"partyID": "LLTG8phc3n4iLoIl", "userIDs": ["lKlpO2pqiXJF3WGR", "aoQomSJC4DdrKF7S", "UQPLG59e0k5ZtX6w"]}, {"partyID": "K7PpUlcIW32iK7MG", "userIDs": ["t1ixY5rA1WoVeJIe", "PF8ZrQzP4zvtdxdb", "ZUpd6FJtHJ1pyVwy"]}]}, {"UserIDs": ["KQLY6FEO65Rb3z7C", "YLM8IlsHqffnrfsG", "lfPaZKBwa3Ddb60u"], "parties": [{"partyID": "fPpzwj1QGIFmlVf4", "userIDs": ["jvapseE9LN9bvhOr", "HflIOd6X3viLvtEk", "4mTIpUA9gxo8SV38"]}, {"partyID": "nEhoXmM2W7l6jHMA", "userIDs": ["2rG3nakopAywelu0", "1nryEJ0NqoTow0qi", "OiC4j0iktm0ZPLkL"]}, {"partyID": "Osp0LZ5njN86Hl8k", "userIDs": ["UXzt6bSc6bWvgpVy", "W9dD1kOmvrAejcq2", "LgkQuaS7RBx3vim0"]}]}], "ticketIDs": ["2jBOxrZDyvpcLYOW", "A8NjxOnaEok4nOOC", "zfsflhjbngJOUn18"], "tieTeamsSessionLifetime": true, "type": "lfDTk8aG40Nlncce", "version": 71}' 'H0XrKEDpEY8VnocG' --login_with_auth "Bearer foo"
session-delete-game-session 'Ajci0V3tBf2jnHGK' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"Xphn50c9tNLDljhZ": {}, "2jxLRX3z46OCaGBe": {}, "MfPlNos4yBRjrERH": {}}, "backfillTicketID": "EonAZR8GmEu0q1p6", "clientVersion": "QCyY6vSkVFWdsbYu", "deployment": "VEGVxYheR3j5mNZ6", "fallbackClaimKeys": ["vwv7K8Asvt1j1Rx5", "9hesNWy2NvZ85DDK", "DAF8KDsBZOuYQJ03"], "inactiveTimeout": 57, "inviteTimeout": 9, "joinability": "AHZ7c53q7akMpcmn", "matchPool": "nx6RVBrop9v7aZK3", "maxPlayers": 15, "minPlayers": 11, "preferredClaimKeys": ["65hbN15zfQSfQrtf", "F3TQN0OcNDLr36vz", "ohZyjMQAg5mPYhrL"], "requestedRegions": ["TyU8OhgfY9JQYGF4", "bYXEcENx9xZlAcho", "b44lONDDwMvgI0Hl"], "teams": [{"UserIDs": ["yPR7wZNiVsF6xG2m", "XEQdbzIVy8alncV7", "vWgSHdfo07UctPEr"], "parties": [{"partyID": "qxyMyOK06MqQBErx", "userIDs": ["gjVBycvU4PbmRDcr", "g0DjQjBECXvea7H1", "m2lJFRZ3ZprZ60zM"]}, {"partyID": "jhTHeh94TSenE5hC", "userIDs": ["FkIf5weqZ18MH57l", "2Zsrh90ETtYmGukz", "3MnlrjcHp6B8Vj7r"]}, {"partyID": "XFgDnDkdZ9bpjb1t", "userIDs": ["dA3QhjCMW64f4XhI", "jSoTB2NMKtezapPr", "2QEPx3zTxBGtEJIY"]}]}, {"UserIDs": ["ppuUSsKoHw2hyd12", "uSE7BEv3aevq6ioh", "U1cg4W1IS3Uv1BpW"], "parties": [{"partyID": "oJBaqdg2FHcunsS1", "userIDs": ["lnaO2m9vqjhbeK2q", "N8g6x2PyYDo5R3hL", "iD5sf5y1JsxJNGmy"]}, {"partyID": "t0SQDUDoWBZVGLlk", "userIDs": ["UetzCAWc9x1aMjgG", "im51T107XIZRZ7tZ", "dIs0xf4czdt7zqmS"]}, {"partyID": "KxOEQlVcx6GqsBq8", "userIDs": ["vdhWVnuYLgpZehK0", "G2nmyuViB9kRTcSQ", "dTnNYGeAfYFG3wSk"]}]}, {"UserIDs": ["HKufBdS3ZOokZB4c", "XnAXyuGz6LlxHv8S", "wyagYvDJ3w3UNgIG"], "parties": [{"partyID": "j2jZtEYT8sIPSE1X", "userIDs": ["XPzySa0sZoFS6xCO", "WMpyh9pMsQgb64EL", "bzDMwyo4nIRysQdb"]}, {"partyID": "ufXjYnSoIFeouC2m", "userIDs": ["38kXrDZWlGVE9sJ4", "NpUtKp6M9I6nEwnZ", "hsjwJeGwaPSDMZz9"]}, {"partyID": "5OYKiqaZD63xe5rr", "userIDs": ["uJVfLGea0ZtlzUcu", "HAXz0UV31MfuGaXs", "AuGsZaSHevO0TQNE"]}]}], "ticketIDs": ["I3kfabxJWWSI1ECU", "o1NPpeFhUztXDgB7", "n4C97uAPP8PATLpU"], "tieTeamsSessionLifetime": false, "type": "YBZsWFbr3RSP0W9n", "version": 56}' 'jq2mK8lbSEEelxnb' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "5QxWG2HFnZlA6HKW"}' 'W4fI1IQcoBQELcNl' --login_with_auth "Bearer foo"
session-game-session-generate-code 'ZkqTZrKgXNwvm4e5' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'GX6H742OixhtAoKi' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "Vm6URT95XhnUcvWB", "userID": "28MpusuhhDJ5slzg"}' 'iWZEtyd56LfxnbY9' --login_with_auth "Bearer foo"
session-join-game-session '7jjYgXchCbkXX26u' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "EdCfQaMAQuTKfC0I"}' '2kNjCMDtDMrentgn' --login_with_auth "Bearer foo"
session-leave-game-session '3DhqciwIeShF9RKb' --login_with_auth "Bearer foo"
session-public-game-session-reject '9vvxuJlhXbWhbwPw' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "ToC6knjVwVnzaqSf", "userIDs": ["JiQFC2gXoda0kg16", "yUSpSOAjHJWwfCjY", "wWkLob9gKLqs2nEZ"]}, {"partyID": "hpByfHZinxNfgPAw", "userIDs": ["kMBsznlBUqnLT4Ab", "GptKaWNvPbpg7yrR", "vXfZ6rvgvEY3Hht1"]}, {"partyID": "SwqTsKKKo37NHDOQ", "userIDs": ["e91Ps3ztUIV0dS6h", "IH9c4VfkyrwpuXxb", "aERbfgPmi0eHkt1m"]}], "proposedTeams": [{"UserIDs": ["r9EOIFg0dnWIYN2N", "VL70Iw157g00jr9b", "8MuYmmeKTmBNvGYx"], "parties": [{"partyID": "EQdf3ewoGGoY7xmF", "userIDs": ["NAmjDDCvs78mcMdi", "S76YApGJ9ufwLYkq", "IgLuZS6hsQryiEtO"]}, {"partyID": "AbpeUNf26UqkCfgC", "userIDs": ["UYBn2xaOBdPF0JmX", "8qwU1cTuHHPB5S3D", "vPRCzBrVUxmDOj3c"]}, {"partyID": "vRFaTC11W0TGTCm4", "userIDs": ["fZWuk6pQxDQpKqxL", "GeMvr9TsvcMQ7dBs", "aIecRxIsZvD6rmzV"]}]}, {"UserIDs": ["r5XT1Nxw0v1dMQ9R", "rbk6C2cVWf6ttvbU", "1PO6ApCD2VXidT7w"], "parties": [{"partyID": "0Oc15N8WXBPp17PA", "userIDs": ["ewqSm5x3B4t7WQnp", "8jXZedgt5cyNe27H", "LtwtVOaxgP6Jbct8"]}, {"partyID": "puMybYGxD9IPmmsL", "userIDs": ["mu3kaPj0O4zd8Tb7", "cUNGPTBxiFFCrn7d", "jjs69FTFVGUVhvKh"]}, {"partyID": "JCmeisql14mUHVbM", "userIDs": ["PimNhcZsU3VAdMDc", "b4qlkiFAamqvZI2K", "wjqPBiWXade41s3r"]}]}, {"UserIDs": ["H34mB2yPlRpWjmHZ", "AAvKTH8MuqIg0Czk", "guwuJCW7EEFB67AO"], "parties": [{"partyID": "Dbi9BzupBsFpYc77", "userIDs": ["GtRUcCFeY5g4XgBs", "bfzqxBPNe8ae1Il4", "aAtEbu4IjGdqthRx"]}, {"partyID": "TjQ7gkZEY8rG0q0Q", "userIDs": ["2Qd2JzRbkF2I03dI", "jvBbA6bfbYaJCJjf", "k2TUvn95FhO7VW3m"]}, {"partyID": "bDVMDu87t0ldWf7i", "userIDs": ["SGIiKFtWtn4Yr2sv", "KM6pqLGZ0TBujELA", "UK6mQ5iZgbwwm5iG"]}]}], "version": 51}' 'UnZmvhidwCkZwqjY' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "LfTiCO1NDBvQvRPn"}' --login_with_auth "Bearer foo"
session-public-get-party 'Az4VzW0CpoBCbyJs' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"F5IjF1c0W338HS6C": {}, "BgVRyihYNZ84CVhz": {}, "iXV8HwSmvcvcDKF1": {}}, "inactiveTimeout": 39, "inviteTimeout": 50, "joinability": "WUNd6lPKvqDejvqk", "maxPlayers": 22, "minPlayers": 43, "type": "TSvDwuOrP9lzpiX0", "version": 98}' 'Bb7jlz5IfHgKjI9m' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"wJSrN8jkIykR2zba": {}, "I6PD7fEscShnGUGU": {}, "tV9GJ279GDbLNwjm": {}}, "inactiveTimeout": 27, "inviteTimeout": 65, "joinability": "q6VerzVCcI8y3Cz0", "maxPlayers": 2, "minPlayers": 34, "type": "h4HtMlFgvh2Dp2So", "version": 18}' 'FpnQ5xF9wwbvMZye' --login_with_auth "Bearer foo"
session-public-generate-party-code 'DeRnVfPUa6xVVBcq' --login_with_auth "Bearer foo"
session-public-revoke-party-code '3wZpFIYeAg79HcLJ' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "XJ7mpVI6eTYAjdPl", "userID": "CiQQC35cj4KyOVgv"}' 'nWbfRJtsB7cUQZ2Q' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "UAxJrINPXppPNO3A"}' 'fmXcgwC3IN6tvKgL' --login_with_auth "Bearer foo"
session-public-party-join 'B9QmJIOq9dP5szG7' --login_with_auth "Bearer foo"
session-public-party-leave '1utjsQ4CrRb9gUCe' --login_with_auth "Bearer foo"
session-public-party-reject 'Vz7fWbZIdhevfZvy' --login_with_auth "Bearer foo"
session-public-party-kick 'V7AcodcZwKjYDdmJ' 'Olzwm9Su4FnS98Qq' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"ftSjq7sn8yreciPL": {}, "fkVyyJsbGpO6Jgeh": {}, "DJxEN7JlZc8LMq1o": {}}, "configurationName": "2jZWu4yA3r0u4q1b", "inactiveTimeout": 93, "inviteTimeout": 70, "joinability": "FieeEssWEUl07bhw", "maxPlayers": 27, "members": [{"ID": "Vdn9yVoSlKNchPHN", "PlatformID": "L4X3LLaGPGdqLE8S", "PlatformUserID": "ohhhuiTnJarYYkHB"}, {"ID": "DdSzBXdxapwhd5IQ", "PlatformID": "YBQuxLvPuWYvE3fs", "PlatformUserID": "Ny9Z9OhxXvCp9y7f"}, {"ID": "LD2qfCXnlUnqxT1W", "PlatformID": "sRNMZcA92hzC7MNa", "PlatformUserID": "8vVe4MHX6AgMep90"}], "minPlayers": 53, "textChat": true, "type": "pIxM9n8D2eLMe3lt"}' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"9qfx2UDcgVE7L9FK": {}, "6e0MrPc4vtxk9hVK": {}, "lG56HlzGr7XjdyRJ": {}}' 'unZPkp6ccIBnWyPw' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"8mj7gyQ7XdIszGRj": {}, "46COPipH1MWVTHG0": {}, "qHJCWEfOJpZm9yEY": {}}' 'WNGMy2pgSGSUOK68' 'eqGJtWf1Ybgg8rdw' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["Y9bmrvHmO07KNqX9", "LM2IwEsdOGBXBwnz", "DX8v3xgC1Ge9PdbT"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "AJ2Gp1r0sVZ6LJAO", "data": {"ddIL2l3hPjNDKv2L": {}, "WfXqjr8fS79En3wY": {}, "owBdkaZ3y6i38XQj": {}}, "platforms": [{"name": "LDRqkpiFK5BtiQ27", "userID": "2Uo9UBJWodpdwsX1"}, {"name": "jorcyR0x3YiHF8IT", "userID": "GPRQBCgIs1Q2lzxl"}, {"name": "0yF5m77TTh4gUoj8", "userID": "u2WRcLiEtzVlnkfl"}], "roles": ["fn7pHY48F1dl1q92", "m3iRlfnBAk0CwiAs", "R65yQ9ssuHdGmxnc"]}' --login_with_auth "Bearer foo"
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
echo "1..67"

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

#- 4 AdminGetDSMCConfigurationDefault
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration-default' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetDSMCConfigurationDefault' test.out

#- 5 AdminListEnvironmentVariables
$PYTHON -m $MODULE 'session-admin-list-environment-variables' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminListEnvironmentVariables' test.out

#- 6 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationAlertV1' test.out

#- 7 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 93}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateConfigurationAlertV1' test.out

#- 9 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationAlertV1' test.out

#- 10 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 62, "PSNSupportedPlatforms": ["dqnQGbqiqOkNeATj", "7eGjodd7CcJUrI6M", "AugK5kypNrp2nFe9"], "SessionTitle": "FmN86sK5LOq4ft5j", "ShouldSync": false, "XboxServiceConfigID": "lsa2bRBr27fVMWuA", "XboxSessionTemplateName": "fDqLMR919IZPKOKi", "localizedSessionName": {"AVQXXOmqFHLbyXmg": {}, "CNiXH8uenbC5Cphg": {}, "MweexsIAP5vHLjBJ": {}}}, "PSNBaseUrl": "9iqMcBL4BzhDUjhK", "autoJoin": true, "clientVersion": "nDByhnoluO6ti0QP", "deployment": "2ssiJ66OzOj84O6t", "dsSource": "gohjtC7bzjPpucdd", "fallbackClaimKeys": ["XJ5zifF8y959anrN", "SleywHbHig6IKWVZ", "77KeRWdECaFGzfZ2"], "immutableStorage": false, "inactiveTimeout": 47, "inviteTimeout": 4, "joinability": "cJ2Fnemn7M23SzUo", "maxActiveSessions": 80, "maxPlayers": 16, "minPlayers": 80, "name": "SGCCvNowNmdpcJgF", "persistent": true, "preferredClaimKeys": ["S4VsRoYIK69yg9AD", "CGiXaLs2xjHkinOD", "975nARHCmhNHSXuq"], "requestedRegions": ["IHsxvaUoXDmwWsuk", "xncuD3QxCXMd00YB", "WCaVVmM45mfIZsWh"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "S476dGGJwJ00UH19"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateConfigurationTemplateV1' test.out

#- 11 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetAllConfigurationTemplatesV1' test.out

#- 12 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    '7MJ6zU7JLMQyMWzY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 87, "PSNSupportedPlatforms": ["bXi7eRZa7WwIc895", "ImqK6tVsaUq3stUh", "5J5Z9GiBiSAylX5c"], "SessionTitle": "S0IeHpWCugmfOL0Q", "ShouldSync": false, "XboxServiceConfigID": "pxsuD8PGqku59eFJ", "XboxSessionTemplateName": "rOXyDYz9vMUOPG0i", "localizedSessionName": {"HDT8QbF7gHPTPQbv": {}, "Lt2NRqJGIKzLyH1y": {}, "72L13Ornyx34luLd": {}}}, "PSNBaseUrl": "vtsTKXMjiw6gYPvf", "autoJoin": false, "clientVersion": "ZfAcNg14Ws8TIP1L", "deployment": "KiFQoLDvumfqrgSf", "dsSource": "nx2h61X9dN1MGRXB", "fallbackClaimKeys": ["J6mVV7JS9qjNLwvI", "8JdiY3RRiLilmOGF", "6dLLIeIVIjMcdlbd"], "immutableStorage": true, "inactiveTimeout": 70, "inviteTimeout": 85, "joinability": "rdNL5gJPqTAjgqaT", "maxActiveSessions": 68, "maxPlayers": 46, "minPlayers": 11, "name": "0ag7kSWE0Hiqm5Iu", "persistent": true, "preferredClaimKeys": ["ryiEXqvUWDjU1G0E", "VjVZw1ToLuPakQN1", "MpOs1RVFrcg2CXxe"], "requestedRegions": ["px78fvsyhE2BKtyT", "DSIM7mkmvZ7Cmsh4", "US8o4jfMANPpmZDd"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "nlVljdWYmELe74p3"}' \
    '8vumnxAnYBTxaTIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '0jcgDI8Pkz96vd80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteConfigurationTemplateV1' test.out

#- 15 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetDSMCConfiguration' test.out

#- 16 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminSyncDSMCConfiguration' test.out

#- 17 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminQueryGameSessions' test.out

#- 18 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"msqIm5bufnBqrpLe": {}, "qhwVhjnnjKMEmtbi": {}, "WsAQHbMrKYi0Zxs5": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminQueryGameSessionsByAttributes' test.out

#- 19 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["SWCqZXHLLa31oQf7", "BULnZDhutDM6Bqgu", "qD5xxGxBWtnTKUe2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeleteBulkGameSessions' test.out

#- 20 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'znsqPzPkwCBo2SwC' \
    'UsTag4MLAo3m61P2' \
    'xaNfmn8Onb1a9gMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateGameSessionMember' test.out

#- 21 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryParties' test.out

#- 22 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetPlatformCredentials' test.out

#- 23 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "0F2UBRmMhAbUWmFh", "clientSecret": "dYLWzMuv3zkUY0n0", "scope": "BAZkwbYkBLyO6A0F"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdatePlatformCredentials' test.out

#- 24 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminDeletePlatformCredentials' test.out

#- 25 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    'qfhnaB3YxKNdOTac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminReadSessionStorage' test.out

#- 26 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'CcJfIfXshuLUk5Wd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminDeleteUserSessionStorage' test.out

#- 27 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'pxjZx5noXPhPUTKb' \
    'onoucNmzwOZOK56s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminReadUserSessionStorage' test.out

#- 28 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryPlayerAttributes' test.out

#- 29 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'Dkci5rZ8iMlOuksQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlayerAttributes' test.out

#- 30 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"JCiRFiZWwJ7NrTb1": {}, "XTB9YQzUJ9XlYJ8B": {}, "zP6EUmUXGM5anIlo": {}}, "autoJoin": true, "backfillTicketID": "HdVfZVDAiU6iJOF7", "clientVersion": "JKZFNk2NKy59X8iO", "configurationName": "g2sVBiCoeC5weXJl", "deployment": "7PeiMH8z8dVej8N2", "dsSource": "yv6VTnOK7xAvM7tu", "fallbackClaimKeys": ["L81lsR7xxSVp3Gd2", "TK0HzYviTgYmx82J", "VBRLPZ6Iz8tne5db"], "inactiveTimeout": 12, "inviteTimeout": 37, "joinability": "uBF6Gsvvdl8jHz9x", "matchPool": "7XZIjU4IK9lOLaZa", "maxPlayers": 79, "minPlayers": 62, "preferredClaimKeys": ["phKCqTq3EVheJjoE", "EXBLIxGnNuhoJM3W", "WPvvCiCf33ViEdqQ"], "requestedRegions": ["poGkUWNizk5UcPAG", "v6c1ESC6hZYTYZbz", "f5aANNNs5kgSZZNU"], "serverName": "HbIT9szApmWJO5vz", "teams": [{"UserIDs": ["zXZj08a6K1XRVfri", "SpPFnZBJZkDnEiyf", "a2LrnpZxNnLRH36b"], "parties": [{"partyID": "qS2oFY76PU1AziBO", "userIDs": ["HEAj1cT3u6Zc2Fbr", "TFznTgDIwZIRWf6T", "3by2kYSCdnFKLc0x"]}, {"partyID": "cTjqjdcEfU61OJYM", "userIDs": ["nW49rWynp1ck1vT9", "0C6o86cSRL9cgbUm", "ulhe98oaFKlQicdr"]}, {"partyID": "xVhrtwSd9QWVMYz7", "userIDs": ["TU1TsxsChSclSkb5", "aBi9K9zyv6gFZXI5", "nXJ7hLi6HweweRmy"]}]}, {"UserIDs": ["o91dIn7QqXBDXJcr", "qKmXDwoEV6tCdrxw", "1KOPhuvHuYrGWDK4"], "parties": [{"partyID": "1uMOC0mRvSoaGk4k", "userIDs": ["tF5wnJDg9Q3WXiyd", "COInVolsr6CHmj76", "3vLwtYEJTSiXjcY5"]}, {"partyID": "ZPkv90lyKSTWLxSF", "userIDs": ["Z0LpupEi5DbkVs3q", "FTi1t530Wj1WfzIv", "c3VlSXrA3XUGud4t"]}, {"partyID": "VjmxEf4XvVhFJTxF", "userIDs": ["HITBg9x4unq3eOMH", "IKeTyBG5dCUoExnK", "fV3869IN4V1OdhH4"]}]}, {"UserIDs": ["GVU7Exlkmc4xYiLj", "LyZrXr9Bhtzn8jAd", "Tn6xBhrciryLm67r"], "parties": [{"partyID": "kadH5Y41SLjCPrFa", "userIDs": ["05Xl5TPC5GODS44b", "mm7jPdKLddfdsUqj", "XVzW1QqxnWR5sheL"]}, {"partyID": "gsAF4ctv5guycGiq", "userIDs": ["9j2EyIknfLDpgHnM", "On8nc3gUZ8ZFyyEr", "0KBXuJBqK4QtEydP"]}, {"partyID": "WLPBYiR3UbJc1ZYa", "userIDs": ["px7C477etqgfOJDU", "T0uKAPrARya2IMlN", "iXpF4qvsUUpHqi33"]}]}], "textChat": false, "ticketIDs": ["30lpzcBQMAEcNcJq", "rKxnMzSYoc4ZjiMY", "4H34B6wVd8ipcKDw"], "tieTeamsSessionLifetime": false, "type": "eUWtjCC2UH6jzMO3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateGameSession' test.out

#- 31 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"AfmOS5mQNyRPZFPN": {}, "P56l1AT6OLKmZhCZ": {}, "xxPPdPwOtEuWBSO2": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicQueryGameSessions' test.out

#- 32 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "jJepUnEEgja2mIE2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicSessionJoinCode' test.out

#- 33 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'kLTnJwc5XmkCuL5W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetGameSessionByPodName' test.out

#- 34 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '4tKt6G3j9LYdG7xV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetGameSession' test.out

#- 35 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"PqBqe9RDQMBSYAFL": {}, "qp8PF5hCcoukWpnb": {}, "z4ys7j6lxuU3u2HE": {}}, "backfillTicketID": "G0qfKegvFTD1sPyk", "clientVersion": "S8YLmwtYgWGcA0h4", "deployment": "G1LZ1HaX5UBMbsF4", "fallbackClaimKeys": ["4VTsLDRzdq22cbny", "K3ggFDh2kaZP7pnn", "VfxPwc259HF9ejHa"], "inactiveTimeout": 71, "inviteTimeout": 15, "joinability": "LQruAuYyJLYGqMv8", "matchPool": "24ouSgkpK70uJmUL", "maxPlayers": 42, "minPlayers": 29, "preferredClaimKeys": ["zElixc023dIvDiA0", "tQWlHwBcTtztx3VA", "l6tXFbnATCzUOIzV"], "requestedRegions": ["cy9k3ie64Vnwa0Cl", "GQJultJe32AiwKad", "EoIVmprwPsa9YD92"], "teams": [{"UserIDs": ["CX0rITajpwHITGeH", "TnqRbzBB9ZFgJbQ3", "Fj1umx4ItzkMJ7cu"], "parties": [{"partyID": "df4r916GPrhn2etV", "userIDs": ["IQvRkQJAtDUH9tx6", "0AehGz1ermJYXsYg", "L7TfyIlAwjTZdRZJ"]}, {"partyID": "JzWZwvTX2bamSCvX", "userIDs": ["1nwvSWdDwD7WJHzg", "NZUKsI5y0mR3zMyT", "sftKqnsIJctAdxyZ"]}, {"partyID": "VKHA9DkaSOWgtg8y", "userIDs": ["w8lHEbVDwBAqanOl", "scRIWw82k5K5VTkd", "ubkOFldMCQ98JH4n"]}]}, {"UserIDs": ["0JtgqzZv5kVu4S95", "mj8YRvae4f4lhBPb", "arbWEm8bVtZcfVCP"], "parties": [{"partyID": "dQhim9QKUAFTVYel", "userIDs": ["IlGJg9wdc8bihhWj", "fZpfcFBUsnnDJlmD", "1iEokbUiYzCQh2iN"]}, {"partyID": "TwtnohddMzMTQ9P7", "userIDs": ["sYLDWAJOA75K4BYJ", "2fkqYJoF2FI3vyyq", "Rzc20O7FdsJP1G9t"]}, {"partyID": "yBTfERXdvgD1Qf7O", "userIDs": ["t2DkUt3yexZBRvxY", "nEBhXtAVxCd3meTr", "T7cF9oVCh89wNOkK"]}]}, {"UserIDs": ["YssVejcL3kR3hCGN", "gaJmuALlMQl9RLrt", "hbfp0VgweLlT2sY3"], "parties": [{"partyID": "SsTnDQY7kKU2u06Q", "userIDs": ["4veujxtyQENvJrBC", "qeg67d4RWOqO4U0b", "itNQLzwRoWnR0Abk"]}, {"partyID": "CPY70FmvviVIBbcu", "userIDs": ["jF8Vk5qb8NhWWwax", "yMchkt8l5IPSrwrJ", "l7wYIVw13NCo9yXl"]}, {"partyID": "bQ52FTHTCj6SEAzT", "userIDs": ["7TOpyiuvvQUm29Ia", "cq4XRLaA643nTMtX", "SAyejnny0Ju13b6o"]}]}], "ticketIDs": ["5uB2XM6IHy7EEvHy", "LmcvrZZOdwe1x8Rj", "U6Bi8JXE52sUBBq2"], "tieTeamsSessionLifetime": false, "type": "xZ8N4UQ2fg3V1o2x", "version": 95}' \
    'hL5DuBDqMyIAzWze' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateGameSession' test.out

#- 36 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    '94MEdJFAy2JTllJk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteGameSession' test.out

#- 37 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"RGB8jqJEd6eqqsBV": {}, "yONV0JRtozI0jpli": {}, "CFQ6WgJpGPigdc5V": {}}, "backfillTicketID": "yC4qvWjVac1cQvSx", "clientVersion": "gTNIUzxDgBlIbuzm", "deployment": "7DzJ20NFRJIhFXR2", "fallbackClaimKeys": ["dYprPmbpuptECGd5", "cdXC2Sesc6y68whN", "BYl9iCqfW6rqGOQn"], "inactiveTimeout": 51, "inviteTimeout": 100, "joinability": "4ij4ysYPonb59gQf", "matchPool": "fkNOmubxEJr2qEAu", "maxPlayers": 74, "minPlayers": 80, "preferredClaimKeys": ["bpZSrcbc4LWfKaY5", "c1tP5TDuI5f6m4KC", "07CnsZe32hqEcB1E"], "requestedRegions": ["xYMBb3ckvoaJYdMq", "Gegcg3eRvBZXN3cj", "IXmFWRJnj8xN7HDP"], "teams": [{"UserIDs": ["TUEDPN1Kb4UTPWDX", "TSb55g8LSTs7Nf95", "lGlPrf6obIdnI6Ag"], "parties": [{"partyID": "7eUYcYJ4QzXCmqr6", "userIDs": ["gmPGaHP5SVPvRLiD", "i0mNHb6Lx8eq8SGN", "wEQO8dYXvBSYvJBw"]}, {"partyID": "b6CjZUMRf2VJetWs", "userIDs": ["okvx3BHuTEczr9Kj", "Q3ttz8MTBt1xk9Iy", "ssSA8nP5PQjpzk2T"]}, {"partyID": "b7iYdmNZWosrsVBP", "userIDs": ["Z64j0HUONscofwYL", "QcDvkaEIIPoJT83z", "EGXmVBZLyrH9J7Bo"]}]}, {"UserIDs": ["ysmaORLkP5hc2Fh0", "4JTsqDTynCewqJli", "gLlRxOelKykICRxF"], "parties": [{"partyID": "6HtlER2txs4qrNAR", "userIDs": ["ATn6KXOutlYBbLhL", "8KXx25FZfQIodVBq", "QsBpCJBIXLGYcwWV"]}, {"partyID": "RK6UKk5ozrXA4HZH", "userIDs": ["Nyq9odanhR1Zrm3t", "hUvV87yfkycLSVdl", "eSaAylsmLYe2phYO"]}, {"partyID": "gT5kDTyPl3dKF7NX", "userIDs": ["EjrJMki8jvc3P8Gw", "jg3IOH0SDHgYKqxJ", "iFJdrmj5vhzgsJwe"]}]}, {"UserIDs": ["x7wq8ZPlXNaUNgdY", "2vfJuje5cPnmGjTv", "Ya5Pqx1K7qcAoijB"], "parties": [{"partyID": "PAp6EPb988NzxrDK", "userIDs": ["VpULjjiw3NeVG4DJ", "i9DaMrc0WFgKjE94", "5x2CPVYYG9WvoGmA"]}, {"partyID": "mvaVV5YfxnUNcwjr", "userIDs": ["7gSGhnfuF4WZiQVI", "CVpWd3UM08gMXhdf", "3juXW4JprIb3CJCA"]}, {"partyID": "tvSG8Cfa9dzOJDGC", "userIDs": ["THIOFjeXbsSgR43k", "IDzxBwqRJTzrHNZW", "Usq5lQo2jy29EJig"]}]}], "ticketIDs": ["qYhyVhURx1yPeczR", "pdk0HATGylx2JG2K", "NGfhzfCTxxrsRRLe"], "tieTeamsSessionLifetime": false, "type": "yXtHzoWGdYohxMp3", "version": 42}' \
    '9mVug2zkVf6KgpKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PatchUpdateGameSession' test.out

#- 38 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "cn3tMD9UT67bOwug"}' \
    'FDa6wUQvehKqwCh8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateGameSessionBackfillTicketID' test.out

#- 39 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '6XmRkCEcfHDCdl59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GameSessionGenerateCode' test.out

#- 40 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'Wp9A3tXGve6DdK6u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicRevokeGameSessionCode' test.out

#- 41 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "vg8f2cIoByk9fxtv", "userID": "sgeAxo57nKAbZpsb"}' \
    'J4Iu5KJ0ynxGBlac' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGameSessionInvite' test.out

#- 42 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'DCdFe8ATUqVxcSth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'JoinGameSession' test.out

#- 43 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "rpnMUBsnUfuQIcSb"}' \
    'Ut5UGkInFGpuUsdt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicPromoteGameSessionLeader' test.out

#- 44 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'q4dOwNESzCEW9dUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'LeaveGameSession' test.out

#- 45 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'hZjLftC3sCS8CpLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGameSessionReject' test.out

#- 46 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "qPD9CeDEdCnnL6Kt", "userIDs": ["1Bjj3b8QM8Rr45UL", "qXQgvwD3PsKDJiWx", "QBwaS7rDBf2S54ph"]}, {"partyID": "bdyGDt47f9GWRlE9", "userIDs": ["hqz6rjDNo4rhjxUd", "MM83WekqfWv04vvn", "9bk5qr8qs2mqtnGA"]}, {"partyID": "qXUjNypF6MMqWpdE", "userIDs": ["JsPoaIbYz8cK5jlp", "Jdre5ur6yvWJDdvM", "7T7PX2vamIRZHzsI"]}], "proposedTeams": [{"UserIDs": ["YOCUoiCXNjrdQL2j", "dx1eIba1sB0HsJ06", "DzfbzRYt4OVUyumB"], "parties": [{"partyID": "eIqdQGZC5kM03HHi", "userIDs": ["jsQRj7N8IAjmsonj", "j0ZR50BQ1U6aFD3O", "2kXQSc58zgZVl4gI"]}, {"partyID": "F7v3qbZu9M3OxqVA", "userIDs": ["T4H1lRZ9Z1JBrHRz", "EOtIxzPqb6n73m0j", "iaDH86d9rsKgzCsM"]}, {"partyID": "ulpB8HZUtVVaJCiL", "userIDs": ["gKOwrSfWhT5B4Wed", "opzwSluBtRFPKThy", "GnbjmPDKFS6u9FHu"]}]}, {"UserIDs": ["v1M3qfch4SqIV6LQ", "PHlaeYl4csFq65cU", "66yJaj4ovoKWE4EW"], "parties": [{"partyID": "0sw8v5peiuxoBJAT", "userIDs": ["auyD3XCXVMiyEvMf", "9yilUEujk6oqYo1H", "QYTFzwdOMdupwD4O"]}, {"partyID": "3uNbcIDcIyvZbOy1", "userIDs": ["T4hfwkuVykH4Rpfm", "jIXFGZ5PKdbabJIk", "Nnt9P1Tkm08luh4d"]}, {"partyID": "pPRMDbUXBWTbpAog", "userIDs": ["G2wlZkLhuU5FI8Ni", "jFI0GKwJ3vfXlsAM", "y2Zp2UAGxHnmSxvk"]}]}, {"UserIDs": ["G9UR5q9neoW6JBcG", "p9Rx2RfcRhXpmeeH", "dvphas9S7ivHEoLb"], "parties": [{"partyID": "UMM47f1UreUpxEkX", "userIDs": ["IbE1ETzRJZKMavu4", "Ul2IaieEbPSE7TGk", "eHsYsW9oGBN1pYMB"]}, {"partyID": "wbPZTlMlUvFEiGpr", "userIDs": ["cNSQ9kEeXBZ6FVrB", "zyhyhoS6a9oe0JaX", "Fpff28uYbe4Cf2HE"]}, {"partyID": "HvVevhISjbtBJUK5", "userIDs": ["fE3OufPSX3PdOU2V", "9yw94oa8UJ34TIed", "V3HyoX4VnO2LpBU0"]}]}], "version": 47}' \
    'SZ58aDllwzTRHak1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'AppendTeamGameSession' test.out

#- 47 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "MXxj7Esrg7900nml"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyJoinCode' test.out

#- 48 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '5BidsK9dCEzhVnOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGetParty' test.out

#- 49 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"0PQbVIaKiHfoeorY": {}, "7A1otGFyv2SMjbEr": {}, "50qGdCZIc6EFqBKx": {}}, "inactiveTimeout": 2, "inviteTimeout": 51, "joinability": "S7Q2OgRucL1jwRXz", "maxPlayers": 10, "minPlayers": 19, "type": "eNERUf8kjci1Ctcc", "version": 45}' \
    '6SKLc2mEC3IXl5XC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicUpdateParty' test.out

#- 50 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"bkOfHaGr5kdazlyp": {}, "vt6lSLfU7HByGXPM": {}, "qxj4hBgVY3YAxZLK": {}}, "inactiveTimeout": 2, "inviteTimeout": 95, "joinability": "cOdyjqf6Q4oiwoJc", "maxPlayers": 0, "minPlayers": 89, "type": "jNrGNT2VHTKuIT5F", "version": 45}' \
    'ODR2NVyn4PRqf3eR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPatchUpdateParty' test.out

#- 51 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'bZqBAoKGcVCdMiSN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGeneratePartyCode' test.out

#- 52 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'V4qBrt1kcLmRv6EJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicRevokePartyCode' test.out

#- 53 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "tl5xWnsb8oWq94RI", "userID": "mNWVIJnhhwFDV1Vi"}' \
    'taomvWTzdsW4N70w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyInvite' test.out

#- 54 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "YS4Kj7Yi2VvoQNW8"}' \
    'Yc481dYdvGxJAMDR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicPromotePartyLeader' test.out

#- 55 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'A1LF7jdWlekFwO94' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicPartyJoin' test.out

#- 56 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'VBCV9qJhWva2FPBu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPartyLeave' test.out

#- 57 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'jX0geYCpGJM4sqsP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPartyReject' test.out

#- 58 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'NJMiZXXOFwmGWAvN' \
    'F0Z0GkwxUNYyNwGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicPartyKick' test.out

#- 59 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"KrknH0Y5mrQgLC6D": {}, "2qsFiQHglUQMZi5W": {}, "jMZfOadpgegCUjTd": {}}, "configurationName": "i1Ehr8OtqpNJ9R8T", "inactiveTimeout": 42, "inviteTimeout": 13, "joinability": "Ny4ejmVA3vMCsGyP", "maxPlayers": 7, "members": [{"ID": "xd4KYZ0jk0UZdhtn", "PlatformID": "Ku9oTc8pVkiyGsj5", "PlatformUserID": "JdXzRxfNEjUMTs8W"}, {"ID": "IObJBTsvsw76uISR", "PlatformID": "X0bKVoWtoUW1P7oc", "PlatformUserID": "uBAldDSUS7Haa6un"}, {"ID": "q1yQOSRvyiLBRVtI", "PlatformID": "Di2piIQFVmzMidw7", "PlatformUserID": "0KSahpYZdKZRyR9A"}], "minPlayers": 63, "textChat": false, "type": "jxvNZhM84DiZk6yS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateParty' test.out

#- 60 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"rB9SVFctW7YS0OkL": {}, "78XeEAtALFI3v8yh": {}, "a4pd5A7MYcpBD6lK": {}}' \
    'Nb8RxvN2u5J7baOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateInsertSessionStorageLeader' test.out

#- 61 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"LH19fqBwNbNe1ffY": {}, "RtIvQaKyevWYtZjK": {}, "6J29v8MpBSpo3AKR": {}}' \
    'mnJkzJHAckUyBksY' \
    'QfDm0RNFwiz70tRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateInsertSessionStorage' test.out

#- 62 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["LMlHi8i9gOVqajUW", "rgEsWDtaKzn8dZwn", "nGeZsZVgbPzPFbrO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 63 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGetPlayerAttributes' test.out

#- 64 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "Nzot3sVli3GN2XTr", "data": {"FibRAhzzEWzWlTY7": {}, "0qdgJRvpZrSpWX3K": {}, "Ee2BjV00ReCXFffj": {}}, "platforms": [{"name": "JJxlgjzIhpgOoIOD", "userID": "74V21HWDAfvXwdxb"}, {"name": "yp4HAPbBbNPStVBU", "userID": "pKgOssFkz0F36piD"}, {"name": "YXeHZ7FHls3nyvco", "userID": "nqbHQqKLQKe3xmj6"}], "roles": ["s0GqsWncp5LrqbiK", "udv9z75SzoCV8ZMi", "2o1nR482D6gNClk9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicStorePlayerAttributes' test.out

#- 65 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicDeletePlayerAttributes' test.out

#- 66 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryMyGameSessions' test.out

#- 67 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
