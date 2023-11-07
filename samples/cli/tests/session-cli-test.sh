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
session-admin-list-global-configuration --login_with_auth "Bearer foo"
session-admin-update-global-configuration '{"regionRetryMapping": {"EAxcVpFrttufHIRd": ["H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b"], "BZLCXLx8bbgorQeF": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "XlFcDtgOjchIua5t": ["WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X", "M4OI18mAQLnzjMf8"]}, "regionURLMapping": ["GZ2WBZqxYG3aREAu", "2D6QVKNCWP75TB0i", "7pKxR8dl0zRVW4EZ"], "testGameMode": "G9m0XcgGVbMqSszE", "testRegionURLMapping": ["8GHavj7AorKsxwko", "sAVerXpc1C8XfwHu", "Keb9l3rGN9A3sNm8"], "testTargetUserIDs": ["4hddSpHt0P7MIIR7", "CkyF6C7duuyZ0GhD", "ogqrhBRd8lDR6qVN"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 85}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 99}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-handle-upload-xbox-pfx-certificate 'RZYdFLIAjGGJddVC' 'tmp.dat' 'vu9vx5KQ7KYnIuMB' --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "autoJoin": false, "clientVersion": "A8IHtrkmu0hpDDWV", "deployment": "Ala2l5BYNtIuS5S5", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "CHYzUOcEdscKHPEq", "fallbackClaimKeys": ["gA8yu7Vk6Jt4Ymos", "9Jcdos4fYcTVU6RB", "t0zYoMcHyCUEXlAv"], "immutableStorage": true, "inactiveTimeout": 29, "inviteTimeout": 73, "joinability": "xozr6wfNPX2bOItR", "maxActiveSessions": 78, "maxPlayers": 77, "minPlayers": 43, "name": "u0M3VHh2EI8JlDbP", "persistent": false, "preferredClaimKeys": ["YGu0rdlgdWyOtXi3", "choQrpOsDBU5Sepj", "ChB3V0v52Dlym6pu"], "requestedRegions": ["Q23xoJ8aeCnaLpUK", "p44YUDjasWIPUvmE", "ejtGeoyIPa8ZRrvj"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "7il35MXbN9oCMNqq"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '98SjTvhZNkSQ70D0' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 69, "PSNSupportedPlatforms": ["ateEKDpADz1x3poD", "3Qgb3boLQQ1MzH7Q", "m8bwbmXgdAPh1ETh"], "SessionTitle": "G96gAFKK2WDgCcxv", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "Zm3EeERmDnyeFoF7", "XboxServiceConfigID": "VSZ6pf3vneSD2Tb3", "XboxSessionTemplateName": "g7mSQUhAEtrmjqU6", "XboxTitleID": "YE3p4lSck0ZHn5GI", "localizedSessionName": {"39YBHqaTHeKtW18i": {}, "GeUlc9d9sogWa24C": {}, "KNS0GqVvUfHQvsHX": {}}}, "PSNBaseUrl": "NUNe4mhgo5QB65lS", "autoJoin": true, "clientVersion": "yNApflxqMrj3oZk0", "deployment": "3QXcKMDYDDxHSZjt", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "rUEirnjX9fDmIbeZ", "fallbackClaimKeys": ["xzfTcyiuATus9hsf", "pFDcSDG8aMVGLiBN", "rDjqoxcwgGLXpUL4"], "immutableStorage": true, "inactiveTimeout": 34, "inviteTimeout": 31, "joinability": "Ct81P1ktfIovmv9g", "maxActiveSessions": 38, "maxPlayers": 84, "minPlayers": 89, "name": "vDz9KOsb392k6YmJ", "persistent": true, "preferredClaimKeys": ["fRByjlBiuFM3FIoV", "k8T3GpAnkCmBUqg2", "SCnqntX9y1aZSWMi"], "requestedRegions": ["Vi10sG6vxkfUcmqR", "RbceJ5i0EeDxOgBn", "hhqElIaDml48wdNF"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "duat2vQR3biBfsu4"}' 'jmsRE2w1yEkLgh3t' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'IYt4SqYUTLDx9gIi' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'DandpGT2t24aOMh5' 'eC3IHeHSKLCa3xre' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "NDUWehwH3q31A806"}' 'DJgas4b6z3LNUj7f' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"dgLA84Z8YYk6QEgJ": {}, "jBbEDoNf3n0hEoRC": {}, "Acf80zfFyabWAgIU": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["XiI07A68eaqC2J9j", "yEW6GLbc0NaKDUL3", "sa13lk1dQBHO86Il"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' 'n3CO39PXDNxtXgeO' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '3FgkXhjDzaQY3snn' '2ZkP7cFdP43e5dC9' 'XIBudfZgrbHDIDm4' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "hMzF4TxodenSrUTv", "clientSecret": "fqU0bfoMm5cTtFWb", "scope": "otQyXJRcQWsmqPNs"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-read-session-storage '92epxk0i8VxsZNer' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage 'eSvf9699mCEHThUJ' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'kETAsSp7gh4TeUTk' 'OkAYfJB8AT9t4Tv2' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes '07Y2QD3oD5fLCr3O' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"OlXVv8ZGF7uYnGzp": {}, "ipNDigNJma1MbqqZ": {}, "tfNWql4nmwAft4gq": {}}, "autoJoin": false, "backfillTicketID": "OkQ1jMD3cym8xIfk", "clientVersion": "OVW2grREOLx0KOww", "configurationName": "3HICQLfl7MUBG7qt", "deployment": "Pu64yAtURKLRkb73", "dsSource": "8HGS6rDgMdIIlhS1", "fallbackClaimKeys": ["fSiM9331m7Ta1PsK", "c50Kv6ecnEevcAx2", "K2zkRenmPZnGBt4P"], "inactiveTimeout": 100, "inviteTimeout": 47, "joinability": "nbdSJtjX7ZshZyZl", "matchPool": "5x4bRXBHUTrDzZSK", "maxPlayers": 37, "minPlayers": 48, "preferredClaimKeys": ["cfOcYu3dpCROYqUi", "GKXVFCmpo6sPwVOE", "DSJsEK5QpNhlI2iS"], "requestedRegions": ["5EpGhhvXYck0upMz", "UYnb76tFkEORV3bu", "1bNCtX7W40V6Do5s"], "serverName": "YadCCFrHHC3DpZxk", "teams": [{"UserIDs": ["rQDXuNFviMarv8mn", "fHK8CCmE2lPnsbD3", "SGEdlwuUccE536ug"], "parties": [{"partyID": "Bp3HBvepnDCjgyJl", "userIDs": ["Xe36mgWjLfFmteue", "9nzJ6fH24T805tVg", "8JqU0jZpjvsugAOS"]}, {"partyID": "7u8RiWyerCSa8SRg", "userIDs": ["wsAj1ik1jglaDXTv", "KCWwNTAhd2wrS0uP", "djhdinpng5BLy8wb"]}, {"partyID": "hMssAHjapIkY9Rf4", "userIDs": ["wP57dBZNR88YbCtm", "Ky8M9zVrjfGXZnqA", "QUoY1GjlIIk0iKoT"]}]}, {"UserIDs": ["TS1j02o7JjTXAQN0", "qdskdQV0TqI8EFnm", "DbxIxi4YKlONk2Q5"], "parties": [{"partyID": "Y4JvaizwiilatuUj", "userIDs": ["jt9lIMGql5ElEa9E", "IIlGcHB3CfR3ncDl", "wi3v3MFFJ1KesKoE"]}, {"partyID": "LCpobBEG8X645xpd", "userIDs": ["Xpai0rYaT5hOPjaf", "3H0tYighU0VUfcYH", "JbBfAKSiPW3VgsZX"]}, {"partyID": "iR1DJ7HVWqMkNSaw", "userIDs": ["QUWDFJvJBWic7UkB", "eIXuqDuAXI66bQ71", "w0deoV9Lx5RDA1l2"]}]}, {"UserIDs": ["XcrciYNEzvSZIPkh", "SgORcz5S5BvmgBLx", "h4ijFnE3Tam69qSZ"], "parties": [{"partyID": "7PC6f6QkmZXElW9Y", "userIDs": ["fRSse6AAz3S4czz0", "QKFlAVmVLu4AOec0", "z8eBeeoip68J1nsv"]}, {"partyID": "4W2OJhtafxMSJlHe", "userIDs": ["b34sZKHcl5LLLOex", "L4fZvWtND2tcBFpX", "8lNtFEJ7tnkY6Mca"]}, {"partyID": "5afj12K2IzrBvvWm", "userIDs": ["4udE0OXudXgNne8k", "JATwlc6esUp6Sw1I", "98jeZQ7hfxnhLd3K"]}]}], "textChat": false, "ticketIDs": ["8SWP3glU6muswVJn", "NnN7kAa7j0riFc5H", "THQIoVsGo7dwV9DB"], "tieTeamsSessionLifetime": true, "type": "eMdAdiPKDUVSC00P"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"YeDcagginxnFIna3": {}, "yddcbsPheTH26IUJ": {}, "NvYuGRUvpZaHCuES": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "OiIZsMfB4ZH3mtgW"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'gU4pCAKxeE70Caun' --login_with_auth "Bearer foo"
session-get-game-session 'QNxot371W9G4AvQk' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"qsGnmyo5JJTUVmb8": {}, "GEXFTlEMEsFzYqwg": {}, "K1Np5nodqpLm7FhJ": {}}, "backfillTicketID": "BNXzAFdO0Khqf6ki", "clientVersion": "TdSGv2LFjAKY7Cbg", "deployment": "sWqFWZX7kPBom8F9", "fallbackClaimKeys": ["GLLTG8phc3n4iLoI", "llKlpO2pqiXJF3WG", "RaoQomSJC4DdrKF7"], "inactiveTimeout": 91, "inviteTimeout": 98, "joinability": "UQPLG59e0k5ZtX6w", "matchPool": "K7PpUlcIW32iK7MG", "maxPlayers": 39, "minPlayers": 45, "preferredClaimKeys": ["1ixY5rA1WoVeJIeP", "F8ZrQzP4zvtdxdbZ", "Upd6FJtHJ1pyVwyK"], "requestedRegions": ["QLY6FEO65Rb3z7CY", "LM8IlsHqffnrfsGl", "fPaZKBwa3Ddb60uf"], "teams": [{"UserIDs": ["Ppzwj1QGIFmlVf4j", "vapseE9LN9bvhOrH", "flIOd6X3viLvtEk4"], "parties": [{"partyID": "mTIpUA9gxo8SV38n", "userIDs": ["EhoXmM2W7l6jHMA2", "rG3nakopAywelu01", "nryEJ0NqoTow0qiO"]}, {"partyID": "iC4j0iktm0ZPLkLO", "userIDs": ["sp0LZ5njN86Hl8kU", "Xzt6bSc6bWvgpVyW", "9dD1kOmvrAejcq2L"]}, {"partyID": "gkQuaS7RBx3vim02", "userIDs": ["jBOxrZDyvpcLYOWA", "8NjxOnaEok4nOOCz", "fsflhjbngJOUn18G"]}]}, {"UserIDs": ["5MlfDTk8aG40Nlnc", "ceIZSwgAIkgzh4pT", "U0Am4DZhl0bQxFJ3"], "parties": [{"partyID": "sWCqQpQ2FbKPFMyc", "userIDs": ["MSQ4qfAacR0LgB5B", "UXvjcu2s6w3VifnK", "qmTSoGH1XEfY6QAY"]}, {"partyID": "n6WQ5UBEU1QAOHfZ", "userIDs": ["iGhxOdcuDXSxSc3a", "ZPV87pna08gxefTY", "KhuxaEc7M4P7UckS"]}, {"partyID": "C6ePeN8i4GrFES9z", "userIDs": ["7xueHpATHccee9GX", "hKcjmSEwdrkEnnqK", "zFsLfYalUlfwEQKj"]}]}, {"UserIDs": ["U7eHGebSVu0LQ40k", "epEaC4dfiOMZfEhH", "r39pysFO3Zvc1BZG"], "parties": [{"partyID": "99LyvfvHEsJKQQew", "userIDs": ["VLMUoAnaRcYp7FUj", "fIGaffoflEIByYqe", "KN0meGelYF5wWaDh"]}, {"partyID": "ukU4khGG4vZFTYnP", "userIDs": ["kmSu4PWam1jxR7SE", "TWjteoc8fgvZDDho", "O05oKqymxLD1Lcvw"]}, {"partyID": "6T6mZEiwxxElpMYS", "userIDs": ["WIeVzm7z9noowmlT", "IKVowi0RY2VN4ZON", "JREdUQ3z9F1BxNNg"]}]}], "ticketIDs": ["nke4akncw7wu9TmX", "fJWBPrx9Ns8eLzYE", "vwSWTaLQjctvrK2j"], "tieTeamsSessionLifetime": false, "type": "4XhIjSoTB2NMKtez", "version": 0}' 'LAATPY8P8P3cfoiv' --login_with_auth "Bearer foo"
session-delete-game-session 'vQxevecWw7Rry0KK' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"5rgAGO0dW8rX2MVU": {}, "GKSZ4GcLkt4pK32s": {}, "JxlZcCTpTdRtCHvu": {}}, "backfillTicketID": "k6B6XTmSLyn50sig", "clientVersion": "BVZxiKdV57GvRyd9", "deployment": "UuL02Le8HSCslsDd", "fallbackClaimKeys": ["4M1F5qRIblS7Nz81", "GRazPAANjfBoldFO", "yqA2clJ5gEOaCgM6"], "inactiveTimeout": 28, "inviteTimeout": 39, "joinability": "6RugbNEIpGBFUjOn", "matchPool": "5mM7k8nbLzvtCIW5", "maxPlayers": 50, "minPlayers": 26, "preferredClaimKeys": ["vdhWVnuYLgpZehK0", "G2nmyuViB9kRTcSQ", "dTnNYGeAfYFG3wSk"], "requestedRegions": ["HKufBdS3ZOokZB4c", "XnAXyuGz6LlxHv8S", "wyagYvDJ3w3UNgIG"], "teams": [{"UserIDs": ["j2jZtEYT8sIPSE1X", "XPzySa0sZoFS6xCO", "WMpyh9pMsQgb64EL"], "parties": [{"partyID": "bzDMwyo4nIRysQdb", "userIDs": ["ufXjYnSoIFeouC2m", "38kXrDZWlGVE9sJ4", "NpUtKp6M9I6nEwnZ"]}, {"partyID": "hsjwJeGwaPSDMZz9", "userIDs": ["5OYKiqaZD63xe5rr", "uJVfLGea0ZtlzUcu", "HAXz0UV31MfuGaXs"]}, {"partyID": "AuGsZaSHevO0TQNE", "userIDs": ["I3kfabxJWWSI1ECU", "o1NPpeFhUztXDgB7", "n4C97uAPP8PATLpU"]}]}, {"UserIDs": ["pxeJlsBJT6Hh3OMj", "Ajq2mK8lbSEEelxn", "b5QxWG2HFnZlA6HK"], "parties": [{"partyID": "WW4fI1IQcoBQELcN", "userIDs": ["lZkqTZrKgXNwvm4e", "5GX6H742OixhtAoK", "iVm6URT95XhnUcvW"]}, {"partyID": "B28MpusuhhDJ5slz", "userIDs": ["giWZEtyd56LfxnbY", "97jjYgXchCbkXX26", "uEdCfQaMAQuTKfC0"]}, {"partyID": "I2kNjCMDtDMrentg", "userIDs": ["n3DhqciwIeShF9RK", "b9vvxuJlhXbWhbwP", "wToC6knjVwVnzaqS"]}]}, {"UserIDs": ["fJiQFC2gXoda0kg1", "6yUSpSOAjHJWwfCj", "YwWkLob9gKLqs2nE"], "parties": [{"partyID": "ZhpByfHZinxNfgPA", "userIDs": ["wkMBsznlBUqnLT4A", "bGptKaWNvPbpg7yr", "RvXfZ6rvgvEY3Hht"]}, {"partyID": "1SwqTsKKKo37NHDO", "userIDs": ["Qe91Ps3ztUIV0dS6", "hIH9c4VfkyrwpuXx", "baERbfgPmi0eHkt1"]}, {"partyID": "mr9EOIFg0dnWIYN2", "userIDs": ["NVL70Iw157g00jr9", "b8MuYmmeKTmBNvGY", "xEQdf3ewoGGoY7xm"]}]}], "ticketIDs": ["FNAmjDDCvs78mcMd", "iS76YApGJ9ufwLYk", "qIgLuZS6hsQryiEt"], "tieTeamsSessionLifetime": true, "type": "ztZpr4U4fwQIiLXg", "version": 25}' 'YBn2xaOBdPF0JmX8' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "qwU1cTuHHPB5S3Dv"}' 'PRCzBrVUxmDOj3cv' --login_with_auth "Bearer foo"
session-game-session-generate-code 'RFaTC11W0TGTCm4f' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'ZWuk6pQxDQpKqxLG' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "eMvr9TsvcMQ7dBsa", "userID": "IecRxIsZvD6rmzVr"}' '5XT1Nxw0v1dMQ9Rr' --login_with_auth "Bearer foo"
session-join-game-session 'bk6C2cVWf6ttvbU1' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "PO6ApCD2VXidT7w0"}' 'Oc15N8WXBPp17PAe' --login_with_auth "Bearer foo"
session-leave-game-session 'wqSm5x3B4t7WQnp8' --login_with_auth "Bearer foo"
session-public-game-session-reject 'jXZedgt5cyNe27HL' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "twtVOaxgP6Jbct8p", "userIDs": ["uMybYGxD9IPmmsLm", "u3kaPj0O4zd8Tb7c", "UNGPTBxiFFCrn7dj"]}, {"partyID": "js69FTFVGUVhvKhJ", "userIDs": ["Cmeisql14mUHVbMP", "imNhcZsU3VAdMDcb", "4qlkiFAamqvZI2Kw"]}, {"partyID": "jqPBiWXade41s3rH", "userIDs": ["34mB2yPlRpWjmHZA", "AvKTH8MuqIg0Czkg", "uwuJCW7EEFB67AOD"]}], "proposedTeams": [{"UserIDs": ["bi9BzupBsFpYc77G", "tRUcCFeY5g4XgBsb", "fzqxBPNe8ae1Il4a"], "parties": [{"partyID": "AtEbu4IjGdqthRxT", "userIDs": ["jQ7gkZEY8rG0q0Q2", "Qd2JzRbkF2I03dIj", "vBbA6bfbYaJCJjfk"]}, {"partyID": "2TUvn95FhO7VW3mb", "userIDs": ["DVMDu87t0ldWf7iS", "GIiKFtWtn4Yr2svK", "M6pqLGZ0TBujELAU"]}, {"partyID": "K6mQ5iZgbwwm5iGz", "userIDs": ["XtcknrgidKupvXO6", "aj4hCmTC34jxW4pI", "DwdqXpmRmut9H9Xy"]}]}, {"UserIDs": ["WI8bp8fQxRuX91uY", "mtrHJbEGTUj7YjER", "L1rEQG02zccA8wvL"], "parties": [{"partyID": "sWUNd6lPKvqDejvq", "userIDs": ["klTSvDwuOrP9lzpi", "X0VuFpZum7izxe7N", "PzjOa8E7wY76PxLv"]}, {"partyID": "9HBEUe89AwEw1HO4", "userIDs": ["FnKtx4XLKAmlDr19", "uJ3nq6VerzVCcI8y", "3Cz0YqCKUh5RD9vN"]}, {"partyID": "Ap4jinFpnQ5xF9ww", "userIDs": ["bvMZyeDeRnVfPUa6", "xVVBcq3wZpFIYeAg", "79HcLJXJ7mpVI6eT"]}]}, {"UserIDs": ["YAjdPlCiQQC35cj4", "KyOVgvnWbfRJtsB7", "cUQZ2QUAxJrINPXp"], "parties": [{"partyID": "pPNO3AfmXcgwC3IN", "userIDs": ["6tvKgLB9QmJIOq9d", "P5szG71utjsQ4CrR", "b9gUCeVz7fWbZIdh"]}, {"partyID": "evfZvyV7AcodcZwK", "userIDs": ["jYDdmJOlzwm9Su4F", "nS98QqftSjq7sn8y", "reciPLfkVyyJsbGp"]}, {"partyID": "O6JgehDJxEN7JlZc", "userIDs": ["8LMq1o2jZWu4yA3r", "0u4q1bTHXIjfJKyF", "lM0u1uuoVdn9yVoS"]}]}], "version": 23}' 'f5KwMZQjzvjSozv6' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "CTRDl0zp9CzHFwin"}' --login_with_auth "Bearer foo"
session-public-get-party 'kBNi4gvqgl6TZ9TG' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"VPmv34h6T7Esufmf": {}, "xKYB4LM6H6QXmpZ9": {}, "X3fUSR1l9xLPBsmA": {}}, "inactiveTimeout": 96, "inviteTimeout": 96, "joinability": "rD9L1IiD6MlcEPhM", "maxPlayers": 60, "minPlayers": 53, "type": "FzjHZ3sIhzOx2CXK", "version": 24}' 'Mep90AyyUJyAK5PR' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"MRMwdvl0hv6g62Gx": {}, "BW2tQF5tkTjgJaMY": {}, "vNQOsDa4bkcgepqt": {}}, "inactiveTimeout": 48, "inviteTimeout": 19, "joinability": "jdyRJunZPkp6ccIB", "maxPlayers": 26, "minPlayers": 1, "type": "WyPw8mj7gyQ7XdIs", "version": 52}' 'miteR5eQAe1rzmmg' --login_with_auth "Bearer foo"
session-public-generate-party-code 'qBPRmd6mO4oI8KDq' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'ebm83raNBJ5y7axE' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "kvI4oxZEDxGiBnNb", "userID": "n0zaf7CaOSlHXrUS"}' 'A6sMJzA5mtqISQ83' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "TTbtefXWznDe4LQd"}' 'XfFBii2RAMEX5RMj' --login_with_auth "Bearer foo"
session-public-party-join 'BFVZGYzQqV8d9mDd' --login_with_auth "Bearer foo"
session-public-party-leave 'UIoiIJFNxuNOmUSW' --login_with_auth "Bearer foo"
session-public-party-reject 'w18T1IxVWCxdvPL9' --login_with_auth "Bearer foo"
session-public-party-kick 'e4P01vxP8xj1LyEi' 'rURERnEMzpImW6sj' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"AHyCK5tNanGBrkzU": {}, "vck3xTtmOFMebS4A": {}, "dlNzwog2IhErkNhN": {}}, "configurationName": "cECWwchW6zL9SkbL", "inactiveTimeout": 24, "inviteTimeout": 28, "joinability": "rNXnGanMazb8jvRW", "maxPlayers": 10, "members": [{"ID": "q92m3iRlfnBAk0Cw", "PlatformID": "iAsR65yQ9ssuHdGm", "PlatformUserID": "xncCEr0KcgeqzGbr"}, {"ID": "uNB72HHMkjzyBB4U", "PlatformID": "FKiaoV0VOem2yqPs", "PlatformUserID": "MFxKybPkbuS6x9cL"}, {"ID": "J1APnNlsa2bRBr27", "PlatformID": "fVMWuAfDqLMR919I", "PlatformUserID": "ZPKOKiAVQXXOmqFH"}], "minPlayers": 77, "textChat": true, "type": "byXmgCNiXH8uenbC"}' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"5CphgMweexsIAP5v": {}, "HLjBJ9iqMcBL4Bzh": {}, "DUjhKPwbwcvQU5kG": {}}' '8bXGFmPAnOkDiJq4' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"xQye7HqnVK3YVeOW": {}, "s9mfVQh3jLBtn9px": {}, "pE7BYtzB0B4CxyQr": {}}' 'UpIFvORxTi79DpSj' 'b39ukcR6c2E2r3vk' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["3IfAKEbqcNXSGCCv", "NowNmdpcJgF88ySN", "q4Mj7mulP4tQ6R1O"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "XaLs2xjHkinOD975", "data": {"nARHCmhNHSXuqIHs": {}, "xvaUoXDmwWsukxnc": {}, "uD3QxCXMd00YBWCa": {}}, "platforms": [{"name": "VVmM45mfIZsWhkS4", "userID": "76dGGJwJ00UH197M"}, {"name": "J6zU7JLMQyMWzYQC", "userID": "AaPJgoxGJoJaSzUt"}, {"name": "Y4ZD0Xtb0U4pH16N", "userID": "UsVY21NVIs7NRen2"}], "roles": ["Y3Ns0QJQeaWytPfd", "s1BYx0EaURydf8Zy", "yZeHAWGgJUbUJRMb"]}' --login_with_auth "Bearer foo"
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
echo "1..74"

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

#- 6 AdminListGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-list-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminListGlobalConfiguration' test.out

#- 7 AdminUpdateGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-update-global-configuration' \
    '{"regionRetryMapping": {"kcTglbU86FyOjApN": ["HBVfNOURcjY3YYT9", "oTynmfIuBWgJTNFf", "M8M0IW4oe8KDgy0x"], "ZfAcNg14Ws8TIP1L": ["KiFQoLDvumfqrgSf", "nx2h61X9dN1MGRXB", "J6mVV7JS9qjNLwvI"], "8JdiY3RRiLilmOGF": ["6dLLIeIVIjMcdlbd", "RXTGIrdNL5gJPqTA", "jgqaTHf1ANTJ9Yk9"]}, "regionURLMapping": ["97XkGOdC6ItxDT8p", "4n4XCFkD1AJLCwsz", "bZxuHSgDOK8bjoF7"], "testGameMode": "bL2635KbtZTGJpqg", "testRegionURLMapping": ["l2IzNXGTuQPIDpor", "7t1aJLNNz6QIVC9M", "fuc8VOsnmnlVljdW"], "testTargetUserIDs": ["YmELe74p38vumnxA", "nYBTxaTIz0jcgDI8", "Pkz96vd80msqIm5b"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateGlobalConfiguration' test.out

#- 8 AdminDeleteGlobalConfiguration
$PYTHON -m $MODULE 'session-admin-delete-global-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteGlobalConfiguration' test.out

#- 9 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetConfigurationAlertV1' test.out

#- 10 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 41}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateConfigurationAlertV1' test.out

#- 11 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminCreateConfigurationAlertV1' test.out

#- 12 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteConfigurationAlertV1' test.out

#- 13 HandleUploadXboxPFXCertificate
$PYTHON -m $MODULE 'session-handle-upload-xbox-pfx-certificate' \
    'fnBqrpLeqhwVhjnn' \
    'tmp.dat' \
    'jKMEmtbiWsAQHbMr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'HandleUploadXboxPFXCertificate' test.out

#- 14 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 76, "PSNSupportedPlatforms": ["2mECIQhfIhHtADUQ", "9zimQTQT95pFJUAJ", "syAfeKOufV4f15No"], "SessionTitle": "hXu6opxQGRt6Pqlk", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "diRhLC10ih2EQfY3", "XboxServiceConfigID": "XCv4hdOa6FdZhNMd", "XboxSessionTemplateName": "1onFjGRbxtABPXDm", "XboxTitleID": "gNEJBhgGq5GIDhNC", "localizedSessionName": {"66szbCCf73IFbRkP": {}, "SSITz4TjCrJHXGXk": {}, "u2YVuOzhxHmnrrV9": {}}}, "PSNBaseUrl": "ZGWrZ05sxe6A6Rpm", "autoJoin": true, "clientVersion": "UTKbonoucNmzwOZO", "deployment": "K56sDkci5rZ8iMlO", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "ksQJCiRFiZWwJ7Nr", "fallbackClaimKeys": ["Tb1XTB9YQzUJ9XlY", "J8BzP6EUmUXGM5an", "Iloyj9lhbvuQdW2j"], "immutableStorage": true, "inactiveTimeout": 82, "inviteTimeout": 75, "joinability": "F7JKZFNk2NKy59X8", "maxActiveSessions": 18, "maxPlayers": 61, "minPlayers": 83, "name": "4MYXlrJ81lHvv9rq", "persistent": true, "preferredClaimKeys": ["7PeiMH8z8dVej8N2", "yv6VTnOK7xAvM7tu", "L81lsR7xxSVp3Gd2"], "requestedRegions": ["TK0HzYviTgYmx82J", "VBRLPZ6Iz8tne5db", "guBF6Gsvvdl8jHz9"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "ZIjU4IK9lOLaZaMp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminCreateConfigurationTemplateV1' test.out

#- 15 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllConfigurationTemplatesV1' test.out

#- 16 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'hKCqTq3EVheJjoEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 19, "PSNSupportedPlatforms": ["BLIxGnNuhoJM3WWP", "vvCiCf33ViEdqQpo", "GkUWNizk5UcPAGv6"], "SessionTitle": "c1ESC6hZYTYZbzf5", "ShouldSync": false, "XboxAllowCrossPlatform": true, "XboxSandboxID": "ANNNs5kgSZZNUHbI", "XboxServiceConfigID": "T9szApmWJO5vzzXZ", "XboxSessionTemplateName": "j08a6K1XRVfriSpP", "XboxTitleID": "FnZBJZkDnEiyfa2L", "localizedSessionName": {"rnpZxNnLRH36bqS2": {}, "oFY76PU1AziBOHEA": {}, "j1cT3u6Zc2FbrTFz": {}}}, "PSNBaseUrl": "nTgDIwZIRWf6T3by", "autoJoin": false, "clientVersion": "kYSCdnFKLc0xcTjq", "deployment": "jdcEfU61OJYMnW49", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "ynp1ck1vT90C6o86", "fallbackClaimKeys": ["cSRL9cgbUmulhe98", "oaFKlQicdrxVhrtw", "Sd9QWVMYz7TU1Tsx"], "immutableStorage": true, "inactiveTimeout": 79, "inviteTimeout": 59, "joinability": "Pi57HyKKz5nyI6ul", "maxActiveSessions": 74, "maxPlayers": 43, "minPlayers": 82, "name": "6gFZXI5nXJ7hLi6H", "persistent": true, "preferredClaimKeys": ["da3YhtQxpCYME6x2", "1pdX2QSPAd9sxoLn", "WGP1PafIjLX8ce0K"], "requestedRegions": ["bNN7Ycl2JfmQplvG", "jVQ4aebjfgGu472o", "WJlfglLM4xjfkNL4"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "U6jaGfsD1cfswmeF"}' \
    'pvtDtetoQVFL8LNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '11vtpaTxi7k489jR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'Cn48bvkCPfKofwXO' \
    'IZZQAJza84lKKmVO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "aTS6xBbNrSUAW2ak"}' \
    '7ISDrBVg6NuDZvPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminReconcileMaxActiveSession' test.out

#- 21 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetDSMCConfiguration' test.out

#- 22 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSyncDSMCConfiguration' test.out

#- 23 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminQueryGameSessions' test.out

#- 24 AdminQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-admin-query-game-sessions-by-attributes' \
    '{"1kuUfNfUDe4g7q6P": {}, "HEaqbzHvDDl1jiLw": {}, "3XMGBA6JXDpA1tIC": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["45C0oaGouFu4hXON", "gUwJnUpryDeRcpUv", "lrw2MwC1uuokpaIj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    '0Vxe5n9Lx3QcFo9g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'xOgvDc7xMrRKvw8I' \
    'SP2WKmCRRXBxlalC' \
    'HtWlKxLpS8fLWoQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminUpdateGameSessionMember' test.out

#- 28 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminQueryParties' test.out

#- 29 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetPlatformCredentials' test.out

#- 30 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "nuJhatQPxR7dvBVC", "clientSecret": "5zgOKLTDmHe8c1eJ", "scope": "9sde7Ryt4udIv22M"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminUpdatePlatformCredentials' test.out

#- 31 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlatformCredentials' test.out

#- 32 AdminReadSessionStorage
$PYTHON -m $MODULE 'session-admin-read-session-storage' \
    '18uux9xBomQFPFWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    '5cwNPI6aFo0MVwDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'CIXFNEL3uWVRz3V7' \
    'YbJM3bNLWHAbCZix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminReadUserSessionStorage' test.out

#- 35 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminQueryPlayerAttributes' test.out

#- 36 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'e2cQ6O30lpzcBQMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"EcNcJqrKxnMzSYoc": {}, "4ZjiMY4H34B6wVd8": {}, "ipcKDwQeUWtjCC2U": {}}, "autoJoin": true, "backfillTicketID": "6jzMO3AfmOS5mQNy", "clientVersion": "RPZFPNP56l1AT6OL", "configurationName": "KmZhCZxxPPdPwOtE", "deployment": "uWBSO2jJepUnEEgj", "dsSource": "a2mIE2kLTnJwc5Xm", "fallbackClaimKeys": ["kCuL5W4tKt6G3j9L", "YdG7xVPqBqe9RDQM", "BSYAFLqp8PF5hCco"], "inactiveTimeout": 42, "inviteTimeout": 5, "joinability": "kWpnbz4ys7j6lxuU", "matchPool": "3u2HEG0qfKegvFTD", "maxPlayers": 51, "minPlayers": 37, "preferredClaimKeys": ["AB8Pa3uNGKhaLlJz", "JMSnJIIgsAVmaGYx", "UX1B9oVuzG2CnYX2"], "requestedRegions": ["YBF2g7TVtzYEHUod", "h3iUfBthbepUCTWi", "Z1uqh7GAi4FEIu44"], "serverName": "u83ZLRxYlYqlpq03", "teams": [{"UserIDs": ["BGdIk4oEogFVGR71", "rJOBy6lsj1AKGBjn", "HmaAu4YK87DYAWWc"], "parties": [{"partyID": "bcbGWmKgE8CZ4AEL", "userIDs": ["r5lraa5v5P5Cj8hg", "FsqHC9h5JPiMEtgK", "uiGTYgwWv5XldL6r"]}, {"partyID": "OVGcRAn51rVAQSxp", "userIDs": ["4qTB54mKA3V9DKlC", "eZ7mLYsHooOIaxIp", "b1cIOJPS3lJ80YJ4"]}, {"partyID": "1U4ooQ980ywmg1pW", "userIDs": ["pWit1QC7FKe0fnHU", "lmU1unGKM0tgfeWy", "47bbwMI4gGmvK9gW"]}]}, {"UserIDs": ["596FwBNrFXt3TAuK", "BwBcD12ae6r3hHwy", "a4NpdOzg3hr6ucHf"], "parties": [{"partyID": "7dbh2iKNUl0qJqzo", "userIDs": ["KMRMG541PAiNjULs", "x4SnKNXLMUaDSwwQ", "lnNRZJHBSB4fZWEF"]}, {"partyID": "IZs28Ff1kZp1Zktx", "userIDs": ["3N7WNMYIfcDKbLu8", "pnK34oA1keYXJvtg", "gDdXjbdjMBahFZZG"]}, {"partyID": "MTcqnWrIprOv0BJ9", "userIDs": ["Sgl7H1sdH2RIJz1e", "I7Q5pu9PutLf6Irv", "ZoBGQbO4S3rURGWU"]}]}, {"UserIDs": ["zPAE6SdV4D5jftRl", "9rZmtQUvro8TWwXW", "sz9TVmdMKEohKzuM"], "parties": [{"partyID": "YDUTLBeCidXjuGgx", "userIDs": ["8ncXejmeZtzT0qj0", "ltsqfiZrthVvyX0O", "CKDJE3RMUddwSSgx"]}, {"partyID": "Cu8zru1DhGAYOHR5", "userIDs": ["BWa9VzIkaQEl1iUP", "roNB6hI6IpGcToWg", "FvdRhG9NwV3zDuqV"]}, {"partyID": "lVTypcYPK8IxrSZu", "userIDs": ["xWl0Je4fJIyFAm3D", "Qht4JwnPS2urJqer", "obWMZGVL5KLTxahW"]}]}], "textChat": false, "ticketIDs": ["hWWwaxyMchkt8l5I", "PSrwrJl7wYIVw13N", "Co9yXlbQ52FTHTCj"], "tieTeamsSessionLifetime": true, "type": "XAblkT8VGgSH8MGZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"GwiVj7eDTaka9ABf": {}, "X1IByPEOuPhGspRi": {}, "3bhPQvBBJI5Jxytp": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "cubN4AUUPFPscZsX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'eJOD4DMtqfIGiGJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'vgWSRxZ8N4UQ2fg3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"V1o2x0hL5DuBDqMy": {}, "IAzWze94MEdJFAy2": {}, "JTllJkRGB8jqJEd6": {}}, "backfillTicketID": "eqqsBVyONV0JRtoz", "clientVersion": "I0jpliCFQ6WgJpGP", "deployment": "igdc5VyC4qvWjVac", "fallbackClaimKeys": ["1cQvSxgTNIUzxDgB", "lIbuzm7DzJ20NFRJ", "IhFXR2dYprPmbpup"], "inactiveTimeout": 40, "inviteTimeout": 5, "joinability": "ECGd5cdXC2Sesc6y", "matchPool": "68whNBYl9iCqfW6r", "maxPlayers": 34, "minPlayers": 81, "preferredClaimKeys": ["GOQny4ij4ysYPonb", "59gQffkNOmubxEJr", "2qEAuJbpZSrcbc4L"], "requestedRegions": ["WfKaY5c1tP5TDuI5", "f6m4KC07CnsZe32h", "qEcB1ExYMBb3ckvo"], "teams": [{"UserIDs": ["aJYdMqGegcg3eRvB", "ZXN3cjIXmFWRJnj8", "xN7HDPTUEDPN1Kb4"], "parties": [{"partyID": "UTPWDXTSb55g8LST", "userIDs": ["s7Nf95lGlPrf6obI", "dnI6Ag7eUYcYJ4Qz", "XCmqr6gmPGaHP5SV"]}, {"partyID": "PvRLiDi0mNHb6Lx8", "userIDs": ["eq8SGNwEQO8dYXvB", "SYvJBwb6CjZUMRf2", "VJetWsokvx3BHuTE"]}, {"partyID": "czr9KjQ3ttz8MTBt", "userIDs": ["1xk9IyssSA8nP5PQ", "jpzk2Tb7iYdmNZWo", "srsVBPZ64j0HUONs"]}]}, {"UserIDs": ["cofwYLQcDvkaEIIP", "oJT83zEGXmVBZLyr", "H9J7BoysmaORLkP5"], "parties": [{"partyID": "hc2Fh04JTsqDTynC", "userIDs": ["ewqJligLlRxOelKy", "kICRxF6HtlER2txs", "4qrNARATn6KXOutl"]}, {"partyID": "YBbLhL8KXx25FZfQ", "userIDs": ["IodVBqQsBpCJBIXL", "GYcwWVRK6UKk5ozr", "XA4HZHNyq9odanhR"]}, {"partyID": "1Zrm3thUvV87yfky", "userIDs": ["cLSVdleSaAylsmLY", "e2phYOgT5kDTyPl3", "dKF7NXEjrJMki8jv"]}]}, {"UserIDs": ["c3P8Gwjg3IOH0SDH", "gYKqxJiFJdrmj5vh", "zgsJwex7wq8ZPlXN"], "parties": [{"partyID": "aUNgdY2vfJuje5cP", "userIDs": ["nmGjTvYa5Pqx1K7q", "cAoijBPAp6EPb988", "NzxrDKVpULjjiw3N"]}, {"partyID": "eVG4DJi9DaMrc0WF", "userIDs": ["gKjE945x2CPVYYG9", "WvoGmAmvaVV5Yfxn", "UNcwjr7gSGhnfuF4"]}, {"partyID": "WZiQVICVpWd3UM08", "userIDs": ["gMXhdf3juXW4JprI", "b3CJCAtvSG8Cfa9d", "zOJDGCTHIOFjeXbs"]}]}], "ticketIDs": ["SgR43kIDzxBwqRJT", "zrHNZWUsq5lQo2jy", "29EJigqYhyVhURx1"], "tieTeamsSessionLifetime": true, "type": "t3uTw6zQuoZcXQpo", "version": 93}' \
    '2JG2KNGfhzfCTxxr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'sRRLee3TcJ7DQIi4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"5aCDHN9mVug2zkVf": {}, "6KgpKOcn3tMD9UT6": {}, "7bOwugFDa6wUQveh": {}}, "backfillTicketID": "KqwCh86XmRkCEcfH", "clientVersion": "DCdl59Wp9A3tXGve", "deployment": "6DdK6uvg8f2cIoBy", "fallbackClaimKeys": ["k9fxtvsgeAxo57nK", "AbZpsbJ4Iu5KJ0yn", "xGBlacDCdFe8ATUq"], "inactiveTimeout": 98, "inviteTimeout": 10, "joinability": "xcSthrpnMUBsnUfu", "matchPool": "QIcSbUt5UGkInFGp", "maxPlayers": 41, "minPlayers": 4, "preferredClaimKeys": ["Usdtq4dOwNESzCEW", "9dUVhZjLftC3sCS8", "CpLCqPD9CeDEdCnn"], "requestedRegions": ["L6Kt1Bjj3b8QM8Rr", "45ULqXQgvwD3PsKD", "JiWxQBwaS7rDBf2S"], "teams": [{"UserIDs": ["54phbdyGDt47f9GW", "RlE9hqz6rjDNo4rh", "jxUdMM83WekqfWv0"], "parties": [{"partyID": "4vvn9bk5qr8qs2mq", "userIDs": ["tnGAqXUjNypF6MMq", "WpdEJsPoaIbYz8cK", "5jlpJdre5ur6yvWJ"]}, {"partyID": "DdvM7T7PX2vamIRZ", "userIDs": ["HzsIYOCUoiCXNjrd", "QL2jdx1eIba1sB0H", "sJ06DzfbzRYt4OVU"]}, {"partyID": "yumBeIqdQGZC5kM0", "userIDs": ["3HHijsQRj7N8IAjm", "sonjj0ZR50BQ1U6a", "FD3O2kXQSc58zgZV"]}]}, {"UserIDs": ["l4gIF7v3qbZu9M3O", "xqVAT4H1lRZ9Z1JB", "rHRzEOtIxzPqb6n7"], "parties": [{"partyID": "3m0jiaDH86d9rsKg", "userIDs": ["zCsMulpB8HZUtVVa", "JCiLgKOwrSfWhT5B", "4WedopzwSluBtRFP"]}, {"partyID": "KThyGnbjmPDKFS6u", "userIDs": ["9FHuv1M3qfch4SqI", "V6LQPHlaeYl4csFq", "65cU66yJaj4ovoKW"]}, {"partyID": "E4EW0sw8v5peiuxo", "userIDs": ["BJATauyD3XCXVMiy", "EvMf9yilUEujk6oq", "Yo1HQYTFzwdOMdup"]}]}, {"UserIDs": ["wD4O3uNbcIDcIyvZ", "bOy1T4hfwkuVykH4", "RpfmjIXFGZ5PKdba"], "parties": [{"partyID": "bJIkNnt9P1Tkm08l", "userIDs": ["uh4dpPRMDbUXBWTb", "pAogG2wlZkLhuU5F", "I8NijFI0GKwJ3vfX"]}, {"partyID": "lsAMy2Zp2UAGxHnm", "userIDs": ["SxvkG9UR5q9neoW6", "JBcGp9Rx2RfcRhXp", "meeHdvphas9S7ivH"]}, {"partyID": "EoLbUMM47f1UreUp", "userIDs": ["xEkXIbE1ETzRJZKM", "avu4Ul2IaieEbPSE", "7TGkeHsYsW9oGBN1"]}]}], "ticketIDs": ["pYMBwbPZTlMlUvFE", "iGprcNSQ9kEeXBZ6", "FVrBzyhyhoS6a9oe"], "tieTeamsSessionLifetime": false, "type": "aXFpff28uYbe4Cf2", "version": 68}' \
    's8nkic9gj5vyUMAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "mIHYbsxG5N066FXb"}' \
    '88SbLOa21DiSFsm0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'XXQJWszvTQEuALzD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'Np1SZ58aDllwzTRH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "ak1MXxj7Esrg7900", "userID": "nml5BidsK9dCEzhV"}' \
    'nOv0PQbVIaKiHfoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'orY7A1otGFyv2SMj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "bEr50qGdCZIc6EFq"}' \
    'BKxbS7Q2OgRucL1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'wRXzfjDZZBmOau6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'yme06c6SKLc2mEC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "IXl5XCbkOfHaGr5k", "userIDs": ["dazlypvt6lSLfU7H", "ByGXPMqxj4hBgVY3", "YAxZLKbcOdyjqf6Q"]}, {"partyID": "4oiwoJcaRMEb15LB", "userIDs": ["lTVufc5ZyODR2NVy", "n4PRqf3eRbZqBAoK", "GcVCdMiSNV4qBrt1"]}, {"partyID": "kcLmRv6EJtl5xWns", "userIDs": ["b8oWq94RImNWVIJn", "hhwFDV1VitaomvWT", "zdsW4N70wYS4Kj7Y"]}], "proposedTeams": [{"UserIDs": ["i2VvoQNW8Yc481dY", "dvGxJAMDRA1LF7jd", "WlekFwO94VBCV9qJ"], "parties": [{"partyID": "hWva2FPBujX0geYC", "userIDs": ["pGJM4sqsPNJMiZXX", "OFwmGWAvNF0Z0Gkw", "xUNYyNwGiKrknH0Y"]}, {"partyID": "5mrQgLC6D2qsFiQH", "userIDs": ["glUQMZi5WjMZfOad", "pgegCUjTdi1Ehr8O", "tqpNJ9R8TuNy4ejm"]}, {"partyID": "VA3vMCsGyPd12B8Q", "userIDs": ["NUz0hFFNbH6j2W4r", "oZM2UKAXEEsL5D0o", "iFchQnVeq3g2AB2W"]}]}, {"UserIDs": ["IRUQmauIY5HXCZ0W", "4XmWP0HzSdiylLhV", "Yszm8xY33OQbumu2"], "parties": [{"partyID": "QHLyZNuysyM4OfCz", "userIDs": ["dQCXMAWnf87YPNOe", "9Eevf1fhMg1E2k7Q", "LFrVgtX7y0fPOieD"]}, {"partyID": "Cow2zXyFFVpM87yq", "userIDs": ["EwEacQMTlqN4LKkx", "J5v3SBafnKNiMPbF", "kFGA85W3HJkqgS2B"]}, {"partyID": "37wwoPYOHiIsxmsL", "userIDs": ["BPBJuNLnWRrtW870", "qD88ZcduZSe7W20U", "ZcDaiq0nEZ7PyhqF"]}]}, {"UserIDs": ["JkDClOsKmfsgJdmz", "sDPsWh1k0cQ08NG6", "dX2TZkil67kRngoU"], "parties": [{"partyID": "a83ECh1gqPeS193T", "userIDs": ["NNzot3sVli3GN2XT", "rFibRAhzzEWzWlTY", "70qdgJRvpZrSpWX3"]}, {"partyID": "KEe2BjV00ReCXFff", "userIDs": ["jJJxlgjzIhpgOoIO", "D74V21HWDAfvXwdx", "byp4HAPbBbNPStVB"]}, {"partyID": "UpKgOssFkz0F36pi", "userIDs": ["DYXeHZ7FHls3nyvc", "onqbHQqKLQKe3xmj", "6s0GqsWncp5Lrqbi"]}]}], "version": 74}' \
    'q6oJq4mChmQHQhO9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "IKBXDFQfXFD58sG6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'uDhFYlrzJBYSeMuJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"fQecutjS029BiJWO": {}, "G1m7MKclr5igjNTV": {}, "ItrH2X78hxJgaVfw": {}}, "inactiveTimeout": 82, "inviteTimeout": 97, "joinability": "17fkxZSc6VbE0AGc", "maxPlayers": 10, "minPlayers": 82, "type": "kjMNHuPXtz8tXxrm", "version": 52}' \
    'KglqaCXE9ytpIO8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"tO3OwNEGSW5TaW4t": {}, "o7QCY2NGGvi9kg3r": {}, "MIzNmhJTNQjKlwjf": {}}, "inactiveTimeout": 73, "inviteTimeout": 64, "joinability": "3TJ2xVpge70WsLfg", "maxPlayers": 3, "minPlayers": 80, "type": "ZieRvJI5sT9DH3Df", "version": 77}' \
    'zbrddqcKLa7LevxN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'HOSEhQRZIp693lRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'tc43atCuCFxbfbz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "aQERziPL4dHhOqG5", "userID": "KDdUvk0LEi26Ls7m"}' \
    'jRxNmvvNtjJNQepU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "TGhwlY4lPzlsCR5r"}' \
    'VsyfcH7WjP7HuGz3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'b5WAEvdRF9bqMj4r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'o5B19VE838c7OydV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'w0zCqoMZvpIOO97D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'mQ5ZOzx6iCJTu60I' \
    'ifzMhkk5PxsjqbCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"pMv2Yky9DYkD2sIl": {}, "lFtBtXJKG3rqBmIL": {}, "htWm8RQvRUbUDSie": {}}, "configurationName": "fGEdLucrtO2gCQD0", "inactiveTimeout": 10, "inviteTimeout": 59, "joinability": "SSGGt3MiBKohow3k", "maxPlayers": 75, "members": [{"ID": "Aw4v3q6JRHcn7Kao", "PlatformID": "CEkRdo6qHYIZWnXq", "PlatformUserID": "Q1oHFJ9Q0vqsL9So"}, {"ID": "mqWsGA76yxi0QzZW", "PlatformID": "fmP2sx0KO5bEJaPn", "PlatformUserID": "AFjsodyJQVVBrShG"}, {"ID": "bIIuqK8C403HgoXC", "PlatformID": "R6XOMXwKdfqk8T4Q", "PlatformUserID": "HK30EX0FclpDl5Hs"}], "minPlayers": 43, "textChat": true, "type": "ArROIodcmM6v2AEo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"zWWaYvBLE46bpuJi": {}, "p8JyxJ39vrtuWWrq": {}, "TZbSqBSKp8AmgwhY": {}}' \
    'zk33J34fiTxK63OH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"pnUCGBVfpctNFUsU": {}, "Q6ZXQcb2o1J5euLA": {}, "bBgejqc0apxqZ209": {}}' \
    'BySn8aUaGlAyvIsl' \
    't7N1qcxKs4nlf1Mf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["qUZXkjHvcUOTlxNf", "09pefgFIiJssShBK", "sQjXvfQgQDt6ce8N"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 70 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicGetPlayerAttributes' test.out

#- 71 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "VuY6rsZyo6CBRRno", "data": {"OikIxXKKIR6kPmsw": {}, "m5TCAU1cKApdJDnE": {}, "73GLmSZns5owBhoU": {}}, "platforms": [{"name": "g4LsGP6KLPXkvUv2", "userID": "XiXaBzsmaxjTZPlL"}, {"name": "itytGka7Kv5TacQK", "userID": "F4OlRGdmXxETLEQr"}, {"name": "r3KCAV9alq3hK1G4", "userID": "kKooSNNUZuiynZ64"}], "roles": ["IwncZPk82GF3eTC0", "vzZUDj9dzGgGVxo9", "OHgfHumyfuBNisec"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicStorePlayerAttributes' test.out

#- 72 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicDeletePlayerAttributes' test.out

#- 73 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicQueryMyGameSessions' test.out

#- 74 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
