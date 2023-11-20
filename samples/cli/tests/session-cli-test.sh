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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 45, "PSNSupportedPlatforms": ["I9a2I9u6Vpbsx5w8", "hqUI06UpOXGSLmCV", "uHOPlLlkvR8sKgnu"], "SessionTitle": "RkgghGoYupD391C2", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "tPYokahFjkQsfCaT", "XboxServiceConfigID": "mt1d67FXGk2s9Q0m", "XboxSessionTemplateName": "PVo3twu0MesTCf9x", "XboxTitleID": "4rt69lna7qxNeIxP", "localizedSessionName": {"z6MbwL6IY69z1UaL": {}, "qYSYWytLPziZMdjx": {}, "cBZufQxGiHPllG4c": {}}}, "PSNBaseUrl": "YEzfTD1ZBm3MqHcU", "autoJoin": false, "clientVersion": "A8IHtrkmu0hpDDWV", "deployment": "Ala2l5BYNtIuS5S5", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "CHYzUOcEdscKHPEq", "enableSecret": false, "fallbackClaimKeys": ["v7t1o7TTr1DmrhZv", "15T7quIOvBMcaYmv", "CkGZ5dAgqxpBFmaL"], "immutableStorage": false, "inactiveTimeout": 73, "inviteTimeout": 49, "joinability": "MdalwSyliWMNW5Ny", "maxActiveSessions": 77, "maxPlayers": 43, "minPlayers": 41, "name": "qtlB2jJCSQT279ZZ", "persistent": false, "preferredClaimKeys": ["YGu0rdlgdWyOtXi3", "choQrpOsDBU5Sepj", "ChB3V0v52Dlym6pu"], "requestedRegions": ["Q23xoJ8aeCnaLpUK", "p44YUDjasWIPUvmE", "ejtGeoyIPa8ZRrvj"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "7il35MXbN9oCMNqq"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '98SjTvhZNkSQ70D0' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 69, "PSNSupportedPlatforms": ["ateEKDpADz1x3poD", "3Qgb3boLQQ1MzH7Q", "m8bwbmXgdAPh1ETh"], "SessionTitle": "G96gAFKK2WDgCcxv", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "Zm3EeERmDnyeFoF7", "XboxServiceConfigID": "VSZ6pf3vneSD2Tb3", "XboxSessionTemplateName": "g7mSQUhAEtrmjqU6", "XboxTitleID": "YE3p4lSck0ZHn5GI", "localizedSessionName": {"39YBHqaTHeKtW18i": {}, "GeUlc9d9sogWa24C": {}, "KNS0GqVvUfHQvsHX": {}}}, "PSNBaseUrl": "NUNe4mhgo5QB65lS", "autoJoin": true, "clientVersion": "yNApflxqMrj3oZk0", "deployment": "3QXcKMDYDDxHSZjt", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "rUEirnjX9fDmIbeZ", "enableSecret": true, "fallbackClaimKeys": ["dwYWQG26yUZNmTBc", "vrbYCwZtxFHyPLtI", "8ilbyDPUIj88cekd"], "immutableStorage": true, "inactiveTimeout": 31, "inviteTimeout": 59, "joinability": "2ncYAHdNzDmeIP6r", "maxActiveSessions": 84, "maxPlayers": 89, "minPlayers": 43, "name": "5cJcHm3SZLxoRDFu", "persistent": true, "preferredClaimKeys": ["fRByjlBiuFM3FIoV", "k8T3GpAnkCmBUqg2", "SCnqntX9y1aZSWMi"], "requestedRegions": ["Vi10sG6vxkfUcmqR", "RbceJ5i0EeDxOgBn", "hhqElIaDml48wdNF"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "duat2vQR3biBfsu4"}' 'jmsRE2w1yEkLgh3t' --login_with_auth "Bearer foo"
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 76, "PSNSupportedPlatforms": ["2mECIQhfIhHtADUQ", "9zimQTQT95pFJUAJ", "syAfeKOufV4f15No"], "SessionTitle": "hXu6opxQGRt6Pqlk", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "diRhLC10ih2EQfY3", "XboxServiceConfigID": "XCv4hdOa6FdZhNMd", "XboxSessionTemplateName": "1onFjGRbxtABPXDm", "XboxTitleID": "gNEJBhgGq5GIDhNC", "localizedSessionName": {"66szbCCf73IFbRkP": {}, "SSITz4TjCrJHXGXk": {}, "u2YVuOzhxHmnrrV9": {}}}, "PSNBaseUrl": "ZGWrZ05sxe6A6Rpm", "autoJoin": true, "clientVersion": "UTKbonoucNmzwOZO", "deployment": "K56sDkci5rZ8iMlO", "disableCodeGeneration": true, "dsManualSetReady": true, "dsSource": "ksQJCiRFiZWwJ7Nr", "enableSecret": false, "fallbackClaimKeys": ["To5ijlvDF8qBWCQ9", "dLWYyS8zdhMeBXH8", "x6HdVfZVDAiU6iJO"], "immutableStorage": false, "inactiveTimeout": 72, "inviteTimeout": 21, "joinability": "KZFNk2NKy59X8iOg", "maxActiveSessions": 37, "maxPlayers": 97, "minPlayers": 23, "name": "BiCoeC5weXJl7Pei", "persistent": false, "preferredClaimKeys": ["8z8dVej8N2yv6VTn", "OK7xAvM7tuL81lsR", "7xxSVp3Gd2TK0HzY"], "requestedRegions": ["viTgYmx82JVBRLPZ", "6Iz8tne5dbguBF6G", "svvdl8jHz9x7XZIj"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "IK9lOLaZaMphKCqT"}' \
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
    'q3EVheJjoEEXBLIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetConfigurationTemplateV1' test.out

#- 17 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 67, "PSNSupportedPlatforms": ["ylT1YtxIq73aMb48", "jISd97KORRhxSWLW", "LNfHRD3V15QaGGL4"], "SessionTitle": "6LuxJF3sbeqWBdQu", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "5kgSZZNUHbIT9szA", "XboxServiceConfigID": "pmWJO5vzzXZj08a6", "XboxSessionTemplateName": "K1XRVfriSpPFnZBJ", "XboxTitleID": "ZkDnEiyfa2LrnpZx", "localizedSessionName": {"NnLRH36bqS2oFY76": {}, "PU1AziBOHEAj1cT3": {}, "u6Zc2FbrTFznTgDI": {}}}, "PSNBaseUrl": "wZIRWf6T3by2kYSC", "autoJoin": false, "clientVersion": "1SMfQVQa6blj9Rdd", "deployment": "85bdYUumPKVSZCg3", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "k1vT90C6o86cSRL9", "enableSecret": false, "fallbackClaimKeys": ["RCa9JktyBdxkZKrE", "WFw9GYxjiiOQAD77", "ci0vfWVZoRRMPi57"], "immutableStorage": true, "inactiveTimeout": 21, "inviteTimeout": 75, "joinability": "b5aBi9K9zyv6gFZX", "maxActiveSessions": 71, "maxPlayers": 6, "minPlayers": 14, "name": "nXJ7hLi6HweweRmy", "persistent": false, "preferredClaimKeys": ["xpCYME6x21pdX2QS", "PAd9sxoLnWGP1Paf", "IjLX8ce0KbNN7Ycl"], "requestedRegions": ["2JfmQplvGjVQ4aeb", "jfgGu472oWJlfglL", "M4xjfkNL4lU6jaGf"], "textChat": true, "tieTeamsSessionLifetime": true, "type": "D1cfswmeFpvtDtet"}' \
    'oQVFL8LNW11vtpaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminUpdateConfigurationTemplateV1' test.out

#- 18 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'xi7k489jRCn48bvk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteConfigurationTemplateV1' test.out

#- 19 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'CPfKofwXOIZZQAJz' \
    'a84lKKmVOaTS6xBb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetMemberActiveSession' test.out

#- 20 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "NrSUAW2ak7ISDrBV"}' \
    'g6NuDZvPb1kuUfNf' \
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
    '{"UDe4g7q6PHEaqbzH": {}, "vDDl1jiLw3XMGBA6": {}, "JXDpA1tIC45C0oaG": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryGameSessionsByAttributes' test.out

#- 25 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["ouFu4hXONgUwJnUp", "ryDeRcpUvlrw2MwC", "1uuokpaIjL0Vxe5n"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteBulkGameSessions' test.out

#- 26 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'x3QcFo9gxOgvDc7x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminSetDSReady' test.out

#- 27 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'MrRKvw8ISP2WKmCR' \
    'RXBxlalCHtWlKxLp' \
    'S8fLWoQ5nuJhatQP' \
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
    '{"psn": {"clientId": "xR7dvBVC5zgOKLTD", "clientSecret": "mHe8c1eJ9sde7Ryt", "scope": "4udIv22M18uux9xB"}}' \
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
    'omQFPFWy5cwNPI6a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminReadSessionStorage' test.out

#- 33 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'Fo0MVwDZCIXFNEL3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminDeleteUserSessionStorage' test.out

#- 34 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'uWVRz3V7YbJM3bNL' \
    'WHAbCZixe2cQ6O30' \
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
    'lpzcBQMAEcNcJqrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerAttributes' test.out

#- 37 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"xnMzSYoc4ZjiMY4H": {}, "34B6wVd8ipcKDwQe": {}, "UWtjCC2UH6jzMO3A": {}}, "autoJoin": false, "backfillTicketID": "3b3YJ9nJM6vtT27x", "clientVersion": "v85K5MU2qmbeqaVe", "configurationName": "mINdClpF7OvlBIEg", "deployment": "jse5kd6GEDo08yq5", "dsSource": "E5HleLoog4me2NBF", "fallbackClaimKeys": ["p62xlXvVcJerTPW0", "2PWsHiKYArAxnKBf", "BfDlrQQuAc10Djjw"], "inactiveTimeout": 78, "inviteTimeout": 50, "joinability": "v4vrIPRtvhQIyLar", "matchPool": "jaLOKnX51yAB8Pa3", "maxPlayers": 42, "minPlayers": 77, "preferredClaimKeys": ["NGKhaLlJzJMSnJII", "gsAVmaGYxUX1B9oV", "uzG2CnYX2YBF2g7T"], "requestedRegions": ["VtzYEHUodh3iUfBt", "hbepUCTWiZ1uqh7G", "Ai4FEIu44u83ZLRx"], "serverName": "YlYqlpq03BGdIk4o", "teams": [{"UserIDs": ["EogFVGR71rJOBy6l", "sj1AKGBjnHmaAu4Y", "K87DYAWWcbcbGWmK"], "parties": [{"partyID": "gE8CZ4AELr5lraa5", "userIDs": ["v5P5Cj8hgFsqHC9h", "5JPiMEtgKuiGTYgw", "Wv5XldL6rOVGcRAn"]}, {"partyID": "51rVAQSxp4qTB54m", "userIDs": ["KA3V9DKlCeZ7mLYs", "HooOIaxIpb1cIOJP", "S3lJ80YJ41U4ooQ9"]}, {"partyID": "80ywmg1pWpWit1QC", "userIDs": ["7FKe0fnHUlmU1unG", "KM0tgfeWy47bbwMI", "4gGmvK9gW596FwBN"]}]}, {"UserIDs": ["rFXt3TAuKBwBcD12", "ae6r3hHwya4NpdOz", "g3hr6ucHf7dbh2iK"], "parties": [{"partyID": "NUl0qJqzoKMRMG54", "userIDs": ["1PAiNjULsx4SnKNX", "LMUaDSwwQlnNRZJH", "BSB4fZWEFIZs28Ff"]}, {"partyID": "1kZp1Zktx3N7WNMY", "userIDs": ["IfcDKbLu8pnK34oA", "1keYXJvtggDdXjbd", "jMBahFZZGMTcqnWr"]}, {"partyID": "IprOv0BJ9Sgl7H1s", "userIDs": ["dH2RIJz1eI7Q5pu9", "PutLf6IrvZoBGQbO", "4S3rURGWUzPAE6Sd"]}]}, {"UserIDs": ["V4D5jftRl9rZmtQU", "vro8TWwXWsz9TVmd", "MKEohKzuMYDUTLBe"], "parties": [{"partyID": "CidXjuGgx8ncXejm", "userIDs": ["eZtzT0qj0ltsqfiZ", "rthVvyX0OCKDJE3R", "MUddwSSgxCu8zru1"]}, {"partyID": "DhGAYOHR5BWa9VzI", "userIDs": ["kaQEl1iUProNB6hI", "6IpGcToWgFvdRhG9", "NwV3zDuqVlVTypcY"]}, {"partyID": "PK8IxrSZuxWl0Je4", "userIDs": ["fJIyFAm3DQht4Jwn", "PS2urJqerobWMZGV", "L5KLTxahWlS6XdBa"]}]}], "textChat": false, "ticketIDs": ["LCgOOPXM6XTUh2dJ", "90yqHDNacl4F9G6D", "l5TFwBY6HKXAblkT"], "tieTeamsSessionLifetime": false, "type": "VGgSH8MGZGwiVj7e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateGameSession' test.out

#- 38 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"DTaka9ABfX1IByPE": {}, "OuPhGspRi3bhPQvB": {}, "BJI5JxytpcubN4AU": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicQueryGameSessionsByAttributes' test.out

#- 39 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "UPFPscZsXeJOD4DM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicSessionJoinCode' test.out

#- 40 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'tqfIGiGJovgWSRxZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGameSessionByPodName' test.out

#- 41 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '8N4UQ2fg3V1o2x0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetGameSession' test.out

#- 42 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"L5DuBDqMyIAzWze9": {}, "4MEdJFAy2JTllJkR": {}, "GB8jqJEd6eqqsBVy": {}}, "backfillTicketID": "ONV0JRtozI0jpliC", "clientVersion": "FQ6WgJpGPigdc5Vy", "deployment": "C4qvWjVac1cQvSxg", "fallbackClaimKeys": ["TNIUzxDgBlIbuzm7", "DzJ20NFRJIhFXR2d", "YprPmbpuptECGd5c"], "inactiveTimeout": 6, "inviteTimeout": 31, "joinability": "XC2Sesc6y68whNBY", "matchPool": "l9iCqfW6rqGOQny4", "maxPlayers": 17, "minPlayers": 20, "preferredClaimKeys": ["NdEPhNHSH7eKDfRc", "ngEpTnRUQr3RLOM1", "vEx4gqDY6jwyKRxh"], "requestedRegions": ["kLe5zohg9s9utRQt", "28b6o3K0COF74tz6", "aeXZOYwbwjMNdxKW"], "teams": [{"UserIDs": ["lBfnRyFS0Ed7gTM5", "AVrtBQiDTcNnZa6Z", "uxk6u6HXXdiC9ZDj"], "parties": [{"partyID": "4E4mv12FNXypoOLl", "userIDs": ["13j84P0KqirJ4PkM", "FtsnFfz8Ew0X8fBu", "BSKLSQ4GvLtz50D3"]}, {"partyID": "rpBfBovqLwXBuT30", "userIDs": ["EYeRj17xGhaBKoUf", "iHjGmCyPsKCJTv1i", "c9gvagF2cSuztsJ5"]}, {"partyID": "tj64gV7nmDk29mcj", "userIDs": ["Suz9vbNStqPtQmQN", "6eKAGiZFCftT0RWE", "CdjWYrnulxcCKAru"]}]}, {"UserIDs": ["8pOaAVLDB4k3Jwkd", "axR7GJpYmuYCPG18", "1q9GA5DydC2D8UT6"], "parties": [{"partyID": "KOc4VPDUR9ayazqX", "userIDs": ["RqegIUicYXXzxsBF", "rUs9BYp6TgCejBd5", "o7iTST7R3KbbQGER"]}, {"partyID": "MNpqWb51y5RUzvMf", "userIDs": ["TkPy0fGvTGgfLKsg", "0b1Bq78cE5O5pmPn", "biPJ9j4vxmbH3rVa"]}, {"partyID": "auufxkPHElug48Tg", "userIDs": ["fNu0rqXUOyToLPIR", "EGIKlJt3EP9kKwkE", "NQ8VOHGwbADMfuOm"]}]}, {"UserIDs": ["h0lciRhVZ2DeoODX", "MzLSrzoiBnYi5UWs", "3tYlYeMoCimJySoc"], "parties": [{"partyID": "RvUWDOrFZKPNoN9A", "userIDs": ["WtLK9TFgi9j2XMh9", "WpifqjNjLOtNQts2", "yxf6MLZJ2jZfZbpT"]}, {"partyID": "JezzriCDWXT59SRu", "userIDs": ["0YqUxKDc84OMIzvT", "ScdbKBsAyJMz4ILN", "DvhB4Eoes9a6XaJe"]}, {"partyID": "RbzTPwD3jxF7vxRU", "userIDs": ["Y0ilrNoFT98SgtJd", "4Z5f8nfaKqdZFLbZ", "EHxsDxeR6d7r1SQw"]}]}], "ticketIDs": ["80JfMpPrSqYypRUn", "q5o4ETeCUYG9ccTt", "7Wxw8OQ13t3uTw6z"], "tieTeamsSessionLifetime": false, "type": "uoZcXQpoTOxe8y1j", "version": 29}' \
    'hzfCTxxrsRRLee3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateGameSession' test.out

#- 43 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'cJ7DQIi45aCDHN9m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'DeleteGameSession' test.out

#- 44 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"Vug2zkVf6KgpKOcn": {}, "3tMD9UT67bOwugFD": {}, "a6wUQvehKqwCh86X": {}}, "backfillTicketID": "mRkCEcfHDCdl59Wp", "clientVersion": "9A3tXGve6DdK6uvg", "deployment": "8f2cIoByk9fxtvsg", "fallbackClaimKeys": ["eAxo57nKAbZpsbJ4", "Iu5KJ0ynxGBlacDC", "dFe8ATUqVxcSthrp"], "inactiveTimeout": 27, "inviteTimeout": 100, "joinability": "MUBsnUfuQIcSbUt5", "matchPool": "UGkInFGpuUsdtq4d", "maxPlayers": 82, "minPlayers": 62, "preferredClaimKeys": ["wNESzCEW9dUVhZjL", "ftC3sCS8CpLCqPD9", "CeDEdCnnL6Kt1Bjj"], "requestedRegions": ["3b8QM8Rr45ULqXQg", "vwD3PsKDJiWxQBwa", "S7rDBf2S54phbdyG"], "teams": [{"UserIDs": ["Dt47f9GWRlE9hqz6", "rjDNo4rhjxUdMM83", "WekqfWv04vvn9bk5"], "parties": [{"partyID": "qr8qs2mqtnGAqXUj", "userIDs": ["NypF6MMqWpdEJsPo", "aIbYz8cK5jlpJdre", "5ur6yvWJDdvM7T7P"]}, {"partyID": "X2vamIRZHzsIYOCU", "userIDs": ["oiCXNjrdQL2jdx1e", "Iba1sB0HsJ06Dzfb", "zRYt4OVUyumBeIqd"]}, {"partyID": "QGZC5kM03HHijsQR", "userIDs": ["j7N8IAjmsonjj0ZR", "50BQ1U6aFD3O2kXQ", "Sc58zgZVl4gIF7v3"]}]}, {"UserIDs": ["qbZu9M3OxqVAT4H1", "lRZ9Z1JBrHRzEOtI", "xzPqb6n73m0jiaDH"], "parties": [{"partyID": "86d9rsKgzCsMulpB", "userIDs": ["8HZUtVVaJCiLgKOw", "rSfWhT5B4Wedopzw", "SluBtRFPKThyGnbj"]}, {"partyID": "mPDKFS6u9FHuv1M3", "userIDs": ["qfch4SqIV6LQPHla", "eYl4csFq65cU66yJ", "aj4ovoKWE4EW0sw8"]}, {"partyID": "v5peiuxoBJATauyD", "userIDs": ["3XCXVMiyEvMf9yil", "UEujk6oqYo1HQYTF", "zwdOMdupwD4O3uNb"]}]}, {"UserIDs": ["cIDcIyvZbOy1T4hf", "wkuVykH4RpfmjIXF", "GZ5PKdbabJIkNnt9"], "parties": [{"partyID": "P1Tkm08luh4dpPRM", "userIDs": ["DbUXBWTbpAogG2wl", "ZkLhuU5FI8NijFI0", "GKwJ3vfXlsAMy2Zp"]}, {"partyID": "2UAGxHnmSxvkG9UR", "userIDs": ["5q9neoW6JBcGp9Rx", "2RfcRhXpmeeHdvph", "as9S7ivHEoLbUMM4"]}, {"partyID": "7f1UreUpxEkXIbE1", "userIDs": ["ETzRJZKMavu4Ul2I", "aieEbPSE7TGkeHsY", "sW9oGBN1pYMBwbPZ"]}]}], "ticketIDs": ["TlMlUvFEiGprcNSQ", "9kEeXBZ6FVrBzyhy", "hoS6a9oe0JaXFpff"], "tieTeamsSessionLifetime": true, "type": "uYbe4Cf2HEHvVevh", "version": 71}' \
    'j5vyUMAAmIHYbsxG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PatchUpdateGameSession' test.out

#- 45 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "5N066FXb88SbLOa2"}' \
    '1DiSFsm0XXQJWszv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateGameSessionBackfillTicketID' test.out

#- 46 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'TQEuALzDNp1SZ58a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GameSessionGenerateCode' test.out

#- 47 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'DllwzTRHak1MXxj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicRevokeGameSessionCode' test.out

#- 48 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "Esrg7900nml5Bids", "userID": "K9dCEzhVnOv0PQbV"}' \
    'IaKiHfoeorY7A1ot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGameSessionInvite' test.out

#- 49 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'GFyv2SMjbEr50qGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'JoinGameSession' test.out

#- 50 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "CZIc6EFqBKxbS7Q2"}' \
    'OgRucL1jwRXzfjDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPromoteGameSessionLeader' test.out

#- 51 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'ZBmOau6syme06c6S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'LeaveGameSession' test.out

#- 52 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'KLc2mEC3IXl5XCbk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGameSessionReject' test.out

#- 53 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "OfHaGr5kdazlypvt", "userIDs": ["6lSLfU7HByGXPMqx", "j4hBgVY3YAxZLKbc", "Odyjqf6Q4oiwoJca"]}, {"partyID": "RMEb15LBlTVufc5Z", "userIDs": ["yODR2NVyn4PRqf3e", "RbZqBAoKGcVCdMiS", "NV4qBrt1kcLmRv6E"]}, {"partyID": "Jtl5xWnsb8oWq94R", "userIDs": ["ImNWVIJnhhwFDV1V", "itaomvWTzdsW4N70", "wYS4Kj7Yi2VvoQNW"]}], "proposedTeams": [{"UserIDs": ["8Yc481dYdvGxJAMD", "RA1LF7jdWlekFwO9", "4VBCV9qJhWva2FPB"], "parties": [{"partyID": "ujX0geYCpGJM4sqs", "userIDs": ["PNJMiZXXOFwmGWAv", "NF0Z0GkwxUNYyNwG", "iKrknH0Y5mrQgLC6"]}, {"partyID": "D2qsFiQHglUQMZi5", "userIDs": ["WjMZfOadpgegCUjT", "di1Ehr8OtqpNJ9R8", "TuNy4ejmVA3vMCsG"]}, {"partyID": "yPd12B8QNUz0hFFN", "userIDs": ["bH6j2W4roZM2UKAX", "EEsL5D0oiFchQnVe", "q3g2AB2WIRUQmauI"]}]}, {"UserIDs": ["Y5HXCZ0W4XmWP0Hz", "SdiylLhVYszm8xY3", "3OQbumu2QHLyZNuy"], "parties": [{"partyID": "syM4OfCzdQCXMAWn", "userIDs": ["f87YPNOe9Eevf1fh", "Mg1E2k7QLFrVgtX7", "y0fPOieDCow2zXyF"]}, {"partyID": "FVpM87yqEwEacQMT", "userIDs": ["lqN4LKkxJ5v3SBaf", "nKNiMPbFkFGA85W3", "HJkqgS2B37wwoPYO"]}, {"partyID": "HiIsxmsLBPBJuNLn", "userIDs": ["WRrtW870qD88Zcdu", "ZSe7W20UZcDaiq0n", "EZ7PyhqFJkDClOsK"]}]}, {"UserIDs": ["mfsgJdmzsDPsWh1k", "0cQ08NG6dX2TZkil", "67kRngoUa83ECh1g"], "parties": [{"partyID": "qPeS193TNNzot3sV", "userIDs": ["li3GN2XTrFibRAhz", "zEWzWlTY70qdgJRv", "pZrSpWX3KEe2BjV0"]}, {"partyID": "0ReCXFffjJJxlgjz", "userIDs": ["IhpgOoIOD74V21HW", "DAfvXwdxbyp4HAPb", "BbNPStVBUpKgOssF"]}, {"partyID": "kz0F36piDYXeHZ7F", "userIDs": ["Hls3nyvconqbHQqK", "LQKe3xmj6s0GqsWn", "cp5LrqbiKudv9z75"]}]}], "version": 91}' \
    'hmQHQhO9IKBXDFQf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AppendTeamGameSession' test.out

#- 54 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "XFD58sG6uDhFYlrz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyJoinCode' test.out

#- 55 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'JBYSeMuJfQecutjS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGetParty' test.out

#- 56 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"029BiJWOG1m7MKcl": {}, "r5igjNTVItrH2X78": {}, "hxJgaVfw5Vnyq8Oz": {}}, "inactiveTimeout": 94, "inviteTimeout": 5, "joinability": "E89WDNoMcOmbfJrC", "maxPlayers": 73, "minPlayers": 88, "type": "tz8tXxrmzafMUguy", "version": 61}' \
    '9ytpIO8btO3OwNEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateParty' test.out

#- 57 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"SW5TaW4to7QCY2NG": {}, "Gvi9kg3rMIzNmhJT": {}, "NQjKlwjfJ3TJ2xVp": {}}, "inactiveTimeout": 13, "inviteTimeout": 35, "joinability": "e70WsLfgbZieRvJI", "maxPlayers": 23, "minPlayers": 37, "type": "OLAfTXKLzbrddqcK", "version": 76}' \
    'q09bBgPAYxrBE9jl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicPatchUpdateParty' test.out

#- 58 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'nTgtgW33wDwD9RKv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGeneratePartyCode' test.out

#- 59 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'QX4yFQFdrRoM6Foq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicRevokePartyCode' test.out

#- 60 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "CYw7AlxO6qdFpc71", "userID": "sSck3ggZWJlSlCQM"}' \
    'Dji329PfVrvMEPtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicPartyInvite' test.out

#- 61 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "sSNcpK1QkB2Sy8Ww"}' \
    '79LVeVskqeUB7RSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPromotePartyLeader' test.out

#- 62 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'yqGFguhh3bvadRth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicPartyJoin' test.out

#- 63 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'dbVApebRA09rW8i8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicPartyLeave' test.out

#- 64 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'krFWJhe03coRFok5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPartyReject' test.out

#- 65 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'd3AyGrZO8GuoXNSo' \
    'VEBG7VbBPUWipz9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicPartyKick' test.out

#- 66 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"05YabFX4FCK5ucTF": {}, "sAFzaO3yJpA3KMxB": {}, "lrRytER1qdTelFAa": {}}, "configurationName": "dM9y66Drf4SSGGt3", "inactiveTimeout": 80, "inviteTimeout": 28, "joinability": "iBKohow3kKoaP1K4", "maxPlayers": 58, "members": [{"ID": "JRHcn7KaoCEkRdo6", "PlatformID": "qHYIZWnXqQ1oHFJ9", "PlatformUserID": "Q0vqsL9SomqWsGA7"}, {"ID": "6yxi0QzZWfmP2sx0", "PlatformID": "KO5bEJaPnAFjsody", "PlatformUserID": "JQVVBrShGbIIuqK8"}, {"ID": "C403HgoXCR6XOMXw", "PlatformID": "Kdfqk8T4QHK30EX0", "PlatformUserID": "FclpDl5HsuracO5M"}], "minPlayers": 27, "textChat": false, "type": "jnxD1OXkxShFVQTR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateParty' test.out

#- 67 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"ekLfjmy8zosRCRgV": {}, "wbrQKmb01yA7U7dG": {}, "MjupZkZQY8CNyT4k": {}}' \
    '3DIbfT22G5NpE130' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateInsertSessionStorageLeader' test.out

#- 68 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"YWSgxpKWtdtdtVW9": {}, "anENmxb9e7vXZV3i": {}, "g8Jg5VByeI3ycMcY": {}}' \
    'YBixKJXCISQdwec1' \
    'm8BusV9tUh74KVo6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateInsertSessionStorage' test.out

#- 69 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["Xqjz2xUKLNWSmYyV", "vyelIJ8QgaLMqi83", "6ULa7cfZl4VuY6rs"]}' \
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
    '{"crossplayEnabled": true, "currentPlatform": "rR1GSogkewIzTOqK", "data": {"kcjRh3l2gAJOTCbx": {}, "7J3gNLIlTk3Bpclr": {}, "k4hIRn0znIKzAEAH": {}}, "platforms": [{"name": "QpBOgHEP5l94s7Cb", "userID": "IJ7eHnVWOboMkyB7"}, {"name": "FTexsOZ0b2p3b63K", "userID": "rcwIcXMhGy83Xit6"}, {"name": "boOLGCcg16DqwdQP", "userID": "Q9HkSSV8e1MgTTLS"}], "roles": ["2FgarY903INGIyEf", "RBEj7qms9AGQExPh", "gr9gGfC0GjvpgJfu"]}' \
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
