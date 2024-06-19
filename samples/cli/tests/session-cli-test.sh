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
session-admin-update-global-configuration '{"regionRetryMapping": {"twYCA9kPI6LZrkq6": ["Dc09nIW0Oaiw9B0D", "7eHpzSn3ZPUdc0qh", "4n8mzZ0m8SAMTwE6"], "I56IaRDBXxyaNoMR": ["6hkspInrAip6lyzS", "xwElFHHdgs21Jub7", "4CUkNmKJfh5pUkHO"], "DpoMF78NY4YkHs1c": ["nz1JSDgY1TXp38zs", "CTCrbCbPOyNQkT7N", "vyE3cwyALczNIicX"]}, "regionURLMapping": ["m7agSrjJW2OQNOs1", "PXhT5FvdiRilZ7oF", "gx4c8OumKtPDKJDX"], "testGameMode": "n7Z4U68su8XfqlqN", "testRegionURLMapping": ["iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y", "sLEzth6mXhzkzWkF"], "testTargetUserIDs": ["eZSoEAcBdW19m4eu", "6d5tA5jUmiTqpyhP", "FdxLzFQN05MYzYiK"]}' --login_with_auth "Bearer foo"
session-admin-delete-global-configuration --login_with_auth "Bearer foo"
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 99}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 89}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-handle-upload-xbox-pfx-certificate 'e5dNRljv7IPrDQQR' 'tmp.dat' 'gat0SevkLGMS0lyu' --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 70, "PSNSupportedPlatforms": ["aO35llzQRaT5kPxU", "fofvnnSuB0y5WUlr", "MdI4sNveabntBSxT"], "SessionTitle": "eIv53HGCiljvjKoy", "ShouldSync": true, "XboxAllowCrossPlatform": true, "XboxSandboxID": "6SCwGrncqmLtjQHA", "XboxServiceConfigID": "f8TgoNm03VLisV6z", "XboxSessionTemplateName": "wPuo3td6TC6I3lMj", "XboxTitleID": "GSWN2laRlxfcjHfY", "localizedSessionName": {"akUCTqGkE7wcWfDs": {}, "lpJSqGAXQ0yYoNRK": {}, "d3IL5TAQ6iiPlSC2": {}}}, "PSNBaseUrl": "uE4o5Vwdo3fePqIJ", "attributes": {"A8IHtrkmu0hpDDWV": {}, "Ala2l5BYNtIuS5S5": {}, "XUdjsoqwGyzzWi9g": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "QYv7t1o7TTr1Dmrh", "customURLGRPC": "Zv15T7quIOvBMcaY", "deployment": "mvCkGZ5dAgqxpBFm", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "Loxozr6wfNPX2bOI", "enableSecret": true, "fallbackClaimKeys": ["NyLu0M3VHh2EI8Jl", "DbPWbQ6Q9lNmqRBa", "AkLnvxkT1X68cmDc"], "immutableStorage": false, "inactiveTimeout": 9, "inviteTimeout": 48, "joinability": "pjChB3V0v52Dlym6", "leaderElectionGracePeriod": 31, "manualRejoin": true, "maxActiveSessions": 86, "maxPlayers": 81, "minPlayers": 57, "name": "3xoJ8aeCnaLpUKp4", "persistent": false, "preferredClaimKeys": ["YUDjasWIPUvmEejt", "GeoyIPa8ZRrvjj7i", "l35MXbN9oCMNqq98"], "requestedRegions": ["SjTvhZNkSQ70D0H6", "BXksUC9b6i5lZC9x", "v32e8c5csSovoqsZ"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "wbmXgdAPh1EThG96"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'gAFKK2WDgCcxvONZ' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 25, "PSNSupportedPlatforms": ["ThuwjRHpKKTlmVr9", "XuoJbRFQSKVPHbn4", "Xxtu7LQRENjEEztx"], "SessionTitle": "1WsYSiZqan0nSBJr", "ShouldSync": false, "XboxAllowCrossPlatform": false, "XboxSandboxID": "BHqaTHeKtW18iGeU", "XboxServiceConfigID": "lc9d9sogWa24CKNS", "XboxSessionTemplateName": "0GqVvUfHQvsHXNUN", "XboxTitleID": "e4mhgo5QB65lSAiY", "localizedSessionName": {"nNjkfZrQvGgbLdLs": {}, "FzHkBMr1yrOMlNFS": {}, "rUEirnjX9fDmIbeZ": {}}}, "PSNBaseUrl": "xzfTcyiuATus9hsf", "attributes": {"pFDcSDG8aMVGLiBN": {}, "rDjqoxcwgGLXpUL4": {}, "pp2ncYAHdNzDmeIP": {}}, "autoJoin": false, "autoLeaveSession": true, "clientVersion": "sR5cJcHm3SZLxoRD", "customURLGRPC": "FuuuySj29a9LJE8H", "deployment": "oRS1X2PFAAMwzHPx", "disableCodeGeneration": true, "dsManualSetReady": false, "dsSource": "1UskYs4Yw20DOqOB", "enableSecret": false, "fallbackClaimKeys": ["C2DKHRuPMMWH8Yb3", "3T5UBJCjfcnLRfxe", "CSz9WEi8KlloeH0J"], "immutableStorage": true, "inactiveTimeout": 26, "inviteTimeout": 6, "joinability": "5T50x9WT0GfH2rtO", "leaderElectionGracePeriod": 0, "manualRejoin": false, "maxActiveSessions": 38, "maxPlayers": 62, "minPlayers": 89, "name": "XsXzOXQAk4mqrxzT", "persistent": true, "preferredClaimKeys": ["SqYUTLDx9gIiDand", "pGT2t24aOMh5eC3I", "HeHSKLCa3xreNDUW"], "requestedRegions": ["ehwH3q31A806DJga", "s4b6z3LNUj7fdgLA", "84Z8YYk6QEgJjBbE"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "LdJz4mnRBkMNxvvK"}' 'gAT8mJrYq6hRkloq' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'xM3gpwxcfMy9Xzjj' --login_with_auth "Bearer foo"
session-admin-get-member-active-session 'I5YbsKoADkzJEN2V' 'Hzih3bit0VWn3CO3' --login_with_auth "Bearer foo"
session-admin-reconcile-max-active-session '{"userID": "9PXDNxtXgeO3FgkX"}' 'hjDzaQY3snn2ZkP7' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-query-game-sessions-by-attributes '{"cFdP43e5dC9XIBud": {}, "fZgrbHDIDm4hMzF4": {}, "TxodenSrUTvfqU0b": {}}' --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["foMm5cTtFWbotQyX", "JRcQWsmqPNs92epx", "k0i8VxsZNereSvf9"]}' --login_with_auth "Bearer foo"
session-admin-set-ds-ready '{"ready": true}' '9mCEHThUJkETAsSp' --login_with_auth "Bearer foo"
session-admin-update-game-session-member '7gh4TeUTkOkAYfJB' '8AT9t4Tv207Y2QD3' 'oD5fLCr3OOlXVv8Z' --login_with_auth "Bearer foo"
session-admin-get-list-native-session --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "GF7uYnGzpipNDigN", "clientSecret": "Jma1MbqqZtfNWql4", "scope": "nmwAft4gqkNNlWkD"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-get-recent-player --login_with_auth "Bearer foo"
session-admin-get-recent-team-player --login_with_auth "Bearer foo"
session-admin-read-session-storage '9eOziYRFOn0jJLHC' --login_with_auth "Bearer foo"
session-admin-delete-user-session-storage '9LxhvNXTwGBCtohL' --login_with_auth "Bearer foo"
session-admin-read-user-session-storage 'tl9Zuhytm5UDrT6Q' 'XCs5SPBbRPZTF6oQ' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'AXVG7tnsZg5QgXjv' --login_with_auth "Bearer foo"
session-admin-sync-native-session 'yGJPN4eXbJE5Vs2G' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"cyomQoIXimBJehyx": {}, "lNsjUgxBkF6wFPoJ": {}, "eQediogEhhM2rIiz": {}}, "autoJoin": false, "backfillTicketID": "BHUTrDzZSKscfOcY", "clientVersion": "u3dpCROYqUiGKXVF", "configurationName": "Cmpo6sPwVOEDSJsE", "customURLGRPC": "K5QpNhlI2iS5EpGh", "deployment": "hvXYck0upMzUYnb7", "dsSource": "6tFkEORV3bu1bNCt", "fallbackClaimKeys": ["X7W40V6Do5sYadCC", "FrHHC3DpZxkrQDXu", "NFviMarv8mnfHK8C"], "inactiveTimeout": 59, "inviteTimeout": 6, "joinability": "mE2lPnsbD3SGEdlw", "matchPool": "uUccE536ugBp3HBv", "maxPlayers": 8, "minPlayers": 9, "preferredClaimKeys": ["pnDCjgyJlXe36mgW", "jLfFmteue9nzJ6fH", "24T805tVg8JqU0jZ"], "requestedRegions": ["pjvsugAOS7u8RiWy", "erCSa8SRgwsAj1ik", "1jglaDXTvKCWwNTA"], "serverName": "hd2wrS0uPdjhdinp", "teams": [{"UserIDs": ["ng5BLy8wbhMssAHj", "apIkY9Rf4wP57dBZ", "NR88YbCtmKy8M9zV"], "parties": [{"partyID": "rjfGXZnqAQUoY1Gj", "userIDs": ["lIIk0iKoTTS1j02o", "7JjTXAQN0qdskdQV", "0TqI8EFnmDbxIxi4"]}, {"partyID": "YKlONk2Q5Y4Jvaiz", "userIDs": ["wiilatuUjjt9lIMG", "ql5ElEa9EIIlGcHB", "3CfR3ncDlwi3v3MF"]}, {"partyID": "FJ1KesKoELCpobBE", "userIDs": ["G8X645xpdXpai0rY", "aT5hOPjaf3H0tYig", "hU0VUfcYHJbBfAKS"]}]}, {"UserIDs": ["iPW3VgsZXiR1DJ7H", "VWqMkNSawQUWDFJv", "JBWic7UkBeIXuqDu"], "parties": [{"partyID": "AXI66bQ71w0deoV9", "userIDs": ["Lx5RDA1l2XcrciYN", "EzvSZIPkhSgORcz5", "S5BvmgBLxh4ijFnE"]}, {"partyID": "3Tam69qSZ7PC6f6Q", "userIDs": ["kmZXElW9YfRSse6A", "Az3S4czz0QKFlAVm", "VLu4AOec0z8eBeeo"]}, {"partyID": "ip68J1nsv4W2OJht", "userIDs": ["afxMSJlHeb34sZKH", "cl5LLLOexL4fZvWt", "ND2tcBFpX8lNtFEJ"]}]}, {"UserIDs": ["7tnkY6Mca5afj12K", "2IzrBvvWm4udE0OX", "udXgNne8kJATwlc6"], "parties": [{"partyID": "esUp6Sw1I98jeZQ7", "userIDs": ["hfxnhLd3Knaknoed", "9DHhLOqQGhCUr6iT", "rjyEgarAdNJOIG36"]}, {"partyID": "I6tRbRcrEveMdAdi", "userIDs": ["PKDUVSC00PYeDcag", "ginxnFIna3yddcbs", "PheTH26IUJNvYuGR"]}, {"partyID": "UvpZaHCuESOiIZsM", "userIDs": ["fB4ZH3mtgWgU4pCA", "KxeE70CaunQNxot3", "71W9G4AvQkqsGnmy"]}]}], "textChat": false, "ticketIDs": ["TsMWPAxUMkawaGpA", "yrIwMif3BOdkocVT", "d4BxqGWV6mTJ0sQs"], "tieTeamsSessionLifetime": false, "type": "hqf6kiTdSGv2LFjA"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions-by-attributes '{"KY7CbgsWqFWZX7kP": {}, "Bom8F9GLLTG8phc3": {}, "n4iLoIllKlpO2pqi": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "XJF3WGRaoQomSJC4"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'DdrKF7SUQPLG59e0' --login_with_auth "Bearer foo"
session-get-game-session 'k5ZtX6wK7PpUlcIW' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"32iK7MGt1ixY5rA1": {}, "WoVeJIePF8ZrQzP4": {}, "zvtdxdbZUpd6FJtH": {}}, "backfillTicketID": "J1pyVwyKQLY6FEO6", "clientVersion": "5Rb3z7CYLM8IlsHq", "deployment": "ffnrfsGlfPaZKBwa", "fallbackClaimKeys": ["3Ddb60ufPpzwj1QG", "IFmlVf4jvapseE9L", "N9bvhOrHflIOd6X3"], "inactiveTimeout": 43, "inviteTimeout": 35, "joinability": "iLvtEk4mTIpUA9gx", "matchPool": "o8SV38nEhoXmM2W7", "maxPlayers": 24, "minPlayers": 76, "preferredClaimKeys": ["6jHMA2rG3nakopAy", "welu01nryEJ0NqoT", "ow0qiOiC4j0iktm0"], "requestedRegions": ["ZPLkLOsp0LZ5njN8", "6Hl8kUXzt6bSc6bW", "vgpVyW9dD1kOmvrA"], "teams": [{"UserIDs": ["ejcq2LgkQuaS7RBx", "3vim02jBOxrZDyvp", "cLYOWA8NjxOnaEok"], "parties": [{"partyID": "4nOOCzfsflhjbngJ", "userIDs": ["OUn18G5MlfDTk8aG", "40NlncceIZSwgAIk", "gzh4pTU0Am4DZhl0"]}, {"partyID": "bQxFJ3sWCqQpQ2Fb", "userIDs": ["KPFMycMSQ4qfAacR", "0LgB5BUXvjcu2s6w", "3VifnKqmTSoGH1XE"]}, {"partyID": "fY6QAYn6WQ5UBEU1", "userIDs": ["QAOHfZiGhxOdcuDX", "SxSc3aZPV87pna08", "gxefTYKhuxaEc7M4"]}]}, {"UserIDs": ["P7UckSC6ePeN8i4G", "rFES9z7xueHpATHc", "cee9GXhKcjmSEwdr"], "parties": [{"partyID": "kEnnqKzFsLfYalUl", "userIDs": ["fwEQKjU7eHGebSVu", "0LQ40kepEaC4dfiO", "MZfEhHr39pysFO3Z"]}, {"partyID": "vc1BZG99LyvfvHEs", "userIDs": ["JKQQewVLMUoAnaRc", "Yp7FUjfIGaffoflE", "IByYqeKN0meGelYF"]}, {"partyID": "5wWaDhukU4khGG4v", "userIDs": ["ZFTYnPkmSu4PWam1", "jxR7SETWjteoc8fg", "vZDDhoO05oKqymxL"]}]}, {"UserIDs": ["D1Lcvw6T6mZEiwxx", "ElpMYSWIeVzm7z9n", "oowmlTIKVowi0RY2"], "parties": [{"partyID": "VN4ZONJREdUQ3z9F", "userIDs": ["1BxNNgnke4akncw7", "wu9TmXfJWBPrx9Ns", "8eLzYEvwSWTaLQjc"]}, {"partyID": "tvrK2jhsYpKPlXn7", "userIDs": ["7AtYoFzLAATPY8P8", "P3cfoivvQxevecWw", "7Rry0KK5rgAGO0dW"]}, {"partyID": "8rX2MVUGKSZ4GcLk", "userIDs": ["t4pK32sJxlZcCTpT", "dRtCHvuk6B6XTmSL", "yn50sigBVZxiKdV5"]}]}], "ticketIDs": ["7GvRyd9UuL02Le8H", "SCslsDd4M1F5qRIb", "lS7Nz81GRazPAANj"], "tieTeamsSessionLifetime": false, "type": "Wc9x1aMjgGim51T1", "version": 84}' '7XIZRZ7tZdIs0xf4' --login_with_auth "Bearer foo"
session-delete-game-session 'czdt7zqmSKxOEQlV' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"cx6GqsBq8vdhWVnu": {}, "YLgpZehK0G2nmyuV": {}, "iB9kRTcSQdTnNYGe": {}}, "backfillTicketID": "AfYFG3wSkHKufBdS", "clientVersion": "3ZOokZB4cXnAXyuG", "deployment": "z6LlxHv8SwyagYvD", "fallbackClaimKeys": ["J3w3UNgIGj2jZtEY", "T8sIPSE1XXPzySa0", "sZoFS6xCOWMpyh9p"], "inactiveTimeout": 79, "inviteTimeout": 67, "joinability": "sQgb64ELbzDMwyo4", "matchPool": "nIRysQdbufXjYnSo", "maxPlayers": 71, "minPlayers": 75, "preferredClaimKeys": ["FeouC2m38kXrDZWl", "GVE9sJ4NpUtKp6M9", "I6nEwnZhsjwJeGwa"], "requestedRegions": ["PSDMZz95OYKiqaZD", "63xe5rruJVfLGea0", "ZtlzUcuHAXz0UV31"], "teams": [{"UserIDs": ["MfuGaXsAuGsZaSHe", "vO0TQNEI3kfabxJW", "WSI1ECUo1NPpeFhU"], "parties": [{"partyID": "ztXDgB7n4C97uAPP", "userIDs": ["8PATLpUpxeJlsBJT", "6Hh3OMjAjq2mK8lb", "SEEelxnb5QxWG2HF"]}, {"partyID": "nZlA6HKWW4fI1IQc", "userIDs": ["oBQELcNlZkqTZrKg", "XNwvm4e5GX6H742O", "ixhtAoKiVm6URT95"]}, {"partyID": "XhnUcvWB28Mpusuh", "userIDs": ["hDJ5slzgiWZEtyd5", "6LfxnbY97jjYgXch", "CbkXX26uEdCfQaMA"]}]}, {"UserIDs": ["QuTKfC0I2kNjCMDt", "DMrentgn3DhqciwI", "eShF9RKb9vvxuJlh"], "parties": [{"partyID": "XbWhbwPwToC6knjV", "userIDs": ["wVnzaqSfJiQFC2gX", "oda0kg16yUSpSOAj", "HJWwfCjYwWkLob9g"]}, {"partyID": "KLqs2nEZhpByfHZi", "userIDs": ["nxNfgPAwkMBsznlB", "UqnLT4AbGptKaWNv", "Pbpg7yrRvXfZ6rvg"]}, {"partyID": "vEY3Hht1SwqTsKKK", "userIDs": ["o37NHDOQe91Ps3zt", "UIV0dS6hIH9c4Vfk", "yrwpuXxbaERbfgPm"]}]}, {"UserIDs": ["i0eHkt1mr9EOIFg0", "dnWIYN2NVL70Iw15", "7g00jr9b8MuYmmeK"], "parties": [{"partyID": "TmBNvGYxEQdf3ewo", "userIDs": ["GGoY7xmFNAmjDDCv", "s78mcMdiS76YApGJ", "9ufwLYkqIgLuZS6h"]}, {"partyID": "sQryiEtOAbpeUNf2", "userIDs": ["6UqkCfgCUYBn2xaO", "BdPF0JmX8qwU1cTu", "HHPB5S3DvPRCzBrV"]}, {"partyID": "UxmDOj3cvRFaTC11", "userIDs": ["W0TGTCm4fZWuk6pQ", "xDQpKqxLGeMvr9Ts", "vcMQ7dBsaIecRxIs"]}]}], "ticketIDs": ["ZvD6rmzVr5XT1Nxw", "0v1dMQ9Rrbk6C2cV", "Wf6ttvbU1PO6ApCD"], "tieTeamsSessionLifetime": true, "type": "VXidT7w0Oc15N8WX", "version": 57}' 'htCSHy1ei1fIrPvf' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "HnRN06EjRwEQlNap"}' 'JRfk4f9Zcw1pEHAy' --login_with_auth "Bearer foo"
session-game-session-generate-code 'NFxcVTKuAQTGh5Bx' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'jWOozGoDtsUuYo5p' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "8ED5QZAufwNa8lzf", "userID": "jv9oYMXMjlVHY1AH"}' 'wF3vGoav7MK0PcLn' --login_with_auth "Bearer foo"
session-join-game-session 'EkcokKwcQ0baDT9O' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "yJ2h23GUS2amU7sy"}' 'GlElXdEAOrVSnLoc' --login_with_auth "Bearer foo"
session-leave-game-session 'LVVYamQc4wcG5nDB' --login_with_auth "Bearer foo"
session-public-game-session-reject 'LJoJHbiQ5duE5p4c' --login_with_auth "Bearer foo"
session-get-session-server-secret 'fs2E41cK8QTwiIAv' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "xSvNDlmM5nQFMGzs", "userIDs": ["7fzjgyc44mEh9tRk", "8knYSV30lnroQehM", "Dli6t9unQLYXxm09"]}, {"partyID": "wpGAbpEmDY9vLh3u", "userIDs": ["6EDsUmrV6kH4OotK", "wG3UC6XCnnZxF8Cm", "Qr17W65br34rBBN9"]}, {"partyID": "tU6TDm5GloFSKWM1", "userIDs": ["eym5ydC6p25xCWTq", "UOYZENJ1QHZQxPRX", "H7uxBJEECQE1li3B"]}], "proposedTeams": [{"UserIDs": ["g7Jxc9pUnZmvhidw", "CkZwqjYLfTiCO1ND", "BvQvRPnAz4VzW0Cp"], "parties": [{"partyID": "oBCbyJsF5IjF1c0W", "userIDs": ["338HS6CBgVRyihYN", "Z84CVhziXV8HwSmv", "cvcDKF19yVRafCjO"]}, {"partyID": "uSYht83AdvBaagTi", "userIDs": ["RJ8daGTVX3Bb7jlz", "5IfHgKjI9mwJSrN8", "jkIykR2zbaI6PD7f"]}, {"partyID": "EscShnGUGUtV9GJ2", "userIDs": ["79GDbLNwjm3FK0nn", "X2poMfZ1hDHtbh4H", "tMlFgvh2Dp2SoiIP"]}]}, {"UserIDs": ["p1yvfAHS0VgLu11A", "3HTovFi4tPAGfley", "CA6jEtcqsnzoVILj"], "parties": [{"partyID": "kwW61duF87aUyrdt", "userIDs": ["4XSpWBAetsanzqP8", "oxfrtbECD1CYPwai", "BAxfYL8Avt70ZUT2"]}, {"partyID": "fSk3LL0calqxEewu", "userIDs": ["GS469k2hG0WKt4sU", "manYxM0UHZVNYzGM", "NIpWoSLkUrfuf4U3"]}, {"partyID": "WeYeA9t2ENKKWrFt", "userIDs": ["HIi1CMgKAOG5iDcC", "R5PbCvDLil8wj9cK", "M3Ar6MF35hCER4nG"]}]}, {"UserIDs": ["mWGgTJfHlJl4tHGa", "4XfZcd9CVnGqMX9F", "ieeEssWEUl07bhwn"], "parties": [{"partyID": "tCVqiYOJf5KwMZQj", "userIDs": ["zvjSozv6CTRDl0zp", "9CzHFwinkBNi4gvq", "gl6TZ9TGVPmv34h6"]}, {"partyID": "T7EsufmfxKYB4LM6", "userIDs": ["H6QXmpZ9X3fUSR1l", "9xLPBsmAUrD9L1Ii", "D6MlcEPhMDFzjHZ3"]}, {"partyID": "sIhzOx2CXKlvIomU", "userIDs": ["3pIxM9n8D2eLMe3l", "t9qfx2UDcgVE7L9F", "K6e0MrPc4vtxk9hV"]}]}], "version": 76}' 'a4bkcgepqtxjbrzt' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "ee7QLTGAak7Kaol0"}' --login_with_auth "Bearer foo"
session-public-get-party '1DK97D2xnik42mit' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"eR5eQAe1rzmmgqBP": {}, "Rmd6mO4oI8KDqebm": {}, "83raNBJ5y7axEkvI": {}}, "inactiveTimeout": 9, "inviteTimeout": 29, "joinability": "qGJtWf1Ybgg8rdwY", "maxPlayers": 2, "minPlayers": 58, "type": "mrvHmO07KNqX9LM2", "version": 70}' '5mtqISQ83TTbtefX' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"WznDe4LQdXfFBii2": {}, "RAMEX5RMjBFVZGYz": {}, "QqV8d9mDdUIoiIJF": {}}, "inactiveTimeout": 82, "inviteTimeout": 34, "joinability": "xuNOmUSWw18T1IxV", "maxPlayers": 99, "minPlayers": 22, "type": "CxdvPL9e4P01vxP8", "version": 48}' 'piFK5BtiQ272Uo9U' --login_with_auth "Bearer foo"
session-public-generate-party-code 'BJWodpdwsX1jorcy' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'R0x3YiHF8ITGPRQB' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "CgIs1Q2lzxl0yF5m", "userID": "77TTh4gUoj8u2WRc"}' 'LiEtzVlnkflfn7pH' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "Y48F1dl1q92m3iRl"}' 'fnBAk0CwiAsR65yQ' --login_with_auth "Bearer foo"
session-public-party-join '9ssuHdGmxncCEr0K' --login_with_auth "Bearer foo"
session-public-party-leave 'cgeqzGbruNB72HHM' --login_with_auth "Bearer foo"
session-public-party-reject 'kjzyBB4UFKiaoV0V' --login_with_auth "Bearer foo"
session-public-party-kick 'Oem2yqPsMFxKybPk' 'buS6x9cLJ1APnNls' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"a2bRBr27fVMWuAfD": {}, "qLMR919IZPKOKiAV": {}, "QXXOmqFHLbyXmgCN": {}}, "configurationName": "iXH8uenbC5CphgMw", "inactiveTimeout": 10, "inviteTimeout": 68, "joinability": "exsIAP5vHLjBJ9iq", "maxPlayers": 79, "members": [{"ID": "GvJ4UMS93yOxNInD", "PlatformID": "ByhnoluO6ti0QP2s", "PlatformUserID": "siJ66OzOj84O6tgo"}, {"ID": "hjtC7bzjPpucddXJ", "PlatformID": "5zifF8y959anrNSl", "PlatformUserID": "eywHbHig6IKWVZ77"}, {"ID": "KeRWdECaFGzfZ2hx", "PlatformID": "cJ2Fnemn7M23SzUo", "PlatformUserID": "4hNBDh9ZFP1OW0nX"}], "minPlayers": 84, "textChat": false, "type": "ErQPS4VsRoYIK69y"}' --login_with_auth "Bearer foo"
session-public-get-recent-player --login_with_auth "Bearer foo"
session-public-get-recent-team-player --login_with_auth "Bearer foo"
session-public-update-insert-session-storage-leader '{"g9ADCGiXaLs2xjHk": {}, "inOD975nARHCmhNH": {}, "SXuqIHsxvaUoXDmw": {}}' 'WsukxncuD3QxCXMd' --login_with_auth "Bearer foo"
session-public-update-insert-session-storage '{"00YBWCaVVmM45mfI": {}, "ZsWhkS476dGGJwJ0": {}, "0UH197MJ6zU7JLMQ": {}}' 'yMWzYQCAaPJgoxGJ' 'oJaSzUtY4ZD0Xtb0' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["U4pH16NUsVY21NVI", "s7NRen2Y3Ns0QJQe", "aWytPfds1BYx0EaU"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "ydf8ZyyZeHAWGgJU", "data": {"bUJRMbkcTglbU86F": {}, "yOjApNHBVfNOURcj": {}, "Y3YYT9oTynmfIuBW": {}}, "platforms": [{"name": "gJTNFfM8M0IW4oe8", "userID": "KDgy0xZfAcNg14Ws"}, {"name": "8TIP1LKiFQoLDvum", "userID": "fqrgSfnx2h61X9dN"}, {"name": "1MGRXBJ6mVV7JS9q", "userID": "jNLwvI8JdiY3RRiL"}], "roles": ["ilmOGF6dLLIeIVIj", "McdlbdRXTGIrdNL5", "gJPqTAjgqaTHf1AN"], "simultaneousPlatform": "TJ9Yk997XkGOdC6I"}' --login_with_auth "Bearer foo"
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
echo "1..83"

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
    '{"logLevel": "fatal"}' \
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
    '{"regionRetryMapping": {"EXqvUWDjU1G0EVjV": ["Zw1ToLuPakQN1MpO", "s1RVFrcg2CXxepx7", "8fvsyhE2BKtyTDSI"], "M7mkmvZ7Cmsh4US8": ["o4jfMANPpmZDdMiC", "xmuCCVuFjS1GC1d2", "b92B4vEgj3HOmhcW"], "m428XejRF94NIY9n": ["MrBZo0lNUBDShHD3", "2vvL28FPwTiXfLcx", "DC9Ynd02mECIQhfI"]}, "regionURLMapping": ["hHtADUQ9zimQTQT9", "5pFJUAJsyAfeKOuf", "V4f15NohXu6opxQG"], "testGameMode": "Rt6PqlkL0diRhLC1", "testRegionURLMapping": ["0ih2EQfY3XCv4hdO", "a6FdZhNMd1onFjGR", "bxtABPXDmgNEJBhg"], "testTargetUserIDs": ["Gq5GIDhNC66szbCC", "f73IFbRkPSSITz4T", "jCrJHXGXku2YVuOz"]}' \
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
    '{"durationDays": 16}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationAlertV1' test.out

#- 13 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 72}' \
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
    'xHmnrrV9ZGWrZ05s' \
    'tmp.dat' \
    'xe6A6RpmKDebNkyl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'HandleUploadXboxPFXCertificate' test.out

#- 16 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 3, "PSNSupportedPlatforms": ["ucNmzwOZOK56sDkc", "i5rZ8iMlOuksQJCi", "RFiZWwJ7NrTb1XTB"], "SessionTitle": "9YQzUJ9XlYJ8BzP6", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "zdhMeBXH8x6HdVfZ", "XboxServiceConfigID": "VDAiU6iJOF7JKZFN", "XboxSessionTemplateName": "k2NKy59X8iOg2sVB", "XboxTitleID": "iCoeC5weXJl7PeiM", "localizedSessionName": {"H8z8dVej8N2yv6VT": {}, "nOK7xAvM7tuL81ls": {}, "R7xxSVp3Gd2TK0Hz": {}}}, "PSNBaseUrl": "YviTgYmx82JVBRLP", "attributes": {"Z6Iz8tne5dbguBF6": {}, "Gsvvdl8jHz9x7XZI": {}, "jU4IK9lOLaZaMphK": {}}, "autoJoin": true, "autoLeaveSession": true, "clientVersion": "qTq3EVheJjoEEXBL", "customURLGRPC": "IxGnNuhoJM3WWPvv", "deployment": "CiCf33ViEdqQpoGk", "disableCodeGeneration": false, "dsManualSetReady": true, "dsSource": "fHRD3V15QaGGL46L", "enableSecret": true, "fallbackClaimKeys": ["ZYTYZbzf5aANNNs5", "kgSZZNUHbIT9szAp", "mWJO5vzzXZj08a6K"], "immutableStorage": true, "inactiveTimeout": 90, "inviteTimeout": 84, "joinability": "VfriSpPFnZBJZkDn", "leaderElectionGracePeriod": 62, "manualRejoin": true, "maxActiveSessions": 17, "maxPlayers": 51, "minPlayers": 98, "name": "fa2LrnpZxNnLRH36", "persistent": false, "preferredClaimKeys": ["7A0TuU2aL4bPkk11", "sys6GdkDcos5uVJ0", "BJfZ0jvA54CSqZFD"], "requestedRegions": ["sO1skRjOU1SMfQVQ", "a6blj9Rdd85bdYUu", "mPKVSZCg3XTc9vQe"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "HJfF6KIuvnRCa9Jk"}' \
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
    'tyBdxkZKrEWFw9GY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetConfigurationTemplateV1' test.out

#- 19 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 48, "PSNSupportedPlatforms": ["hrtwSd9QWVMYz7TU", "1TsxsChSclSkb5aB", "i9K9zyv6gFZXI5nX"], "SessionTitle": "J7hLi6HweweRmyo9", "ShouldSync": true, "XboxAllowCrossPlatform": false, "XboxSandboxID": "YME6x21pdX2QSPAd", "XboxServiceConfigID": "9sxoLnWGP1PafIjL", "XboxSessionTemplateName": "X8ce0KbNN7Ycl2Jf", "XboxTitleID": "mQplvGjVQ4aebjfg", "localizedSessionName": {"Gu472oWJlfglLM4x": {}, "jfkNL4lU6jaGfsD1": {}, "cfswmeFpvtDtetoQ": {}}}, "PSNBaseUrl": "VFL8LNW11vtpaTxi", "attributes": {"7k489jRCn48bvkCP": {}, "fKofwXOIZZQAJza8": {}, "4lKKmVOaTS6xBbNr": {}}, "autoJoin": true, "autoLeaveSession": false, "clientVersion": "AW2ak7ISDrBVg6Nu", "customURLGRPC": "DZvPb1kuUfNfUDe4", "deployment": "g7q6PHEaqbzHvDDl", "disableCodeGeneration": false, "dsManualSetReady": false, "dsSource": "4V1OdhH4GVU7Exlk", "enableSecret": false, "fallbackClaimKeys": ["IC45C0oaGouFu4hX", "ONgUwJnUpryDeRcp", "Uvlrw2MwC1uuokpa"], "immutableStorage": false, "inactiveTimeout": 19, "inviteTimeout": 77, "joinability": "CPrFa05Xl5TPC5GO", "leaderElectionGracePeriod": 61, "manualRejoin": true, "maxActiveSessions": 92, "maxPlayers": 83, "minPlayers": 13, "name": "4bmm7jPdKLddfdsU", "persistent": true, "preferredClaimKeys": ["WKmCRRXBxlalCHtW", "lKxLpS8fLWoQ5nuJ", "hatQPxR7dvBVC5zg"], "requestedRegions": ["OKLTDmHe8c1eJ9sd", "e7Ryt4udIv22M18u", "ux9xBomQFPFWy5cw"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "I6aFo0MVwDZCIXFN"}' \
    'EL3uWVRz3V7YbJM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateConfigurationTemplateV1' test.out

#- 20 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'bNLWHAbCZixe2cQ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteConfigurationTemplateV1' test.out

#- 21 AdminGetMemberActiveSession
$PYTHON -m $MODULE 'session-admin-get-member-active-session' \
    'O30lpzcBQMAEcNcJ' \
    'qrKxnMzSYoc4ZjiM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetMemberActiveSession' test.out

#- 22 AdminReconcileMaxActiveSession
$PYTHON -m $MODULE 'session-admin-reconcile-max-active-session' \
    '{"userID": "Y4H34B6wVd8ipcKD"}' \
    'wQeUWtjCC2UH6jzM' \
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
    '{"O3AfmOS5mQNyRPZF": {}, "PNP56l1AT6OLKmZh": {}, "CZxxPPdPwOtEuWBS": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminQueryGameSessionsByAttributes' test.out

#- 27 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["O2jJepUnEEgja2mI", "E2kLTnJwc5XmkCuL", "5W4tKt6G3j9LYdG7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteBulkGameSessions' test.out

#- 28 AdminSetDSReady
$PYTHON -m $MODULE 'session-admin-set-ds-ready' \
    '{"ready": true}' \
    'PW02PWsHiKYArAxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminSetDSReady' test.out

#- 29 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'KBfBfDlrQQuAc10D' \
    'jjwMv4vrIPRtvhQI' \
    'yLarjaLOKnX51yAB' \
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
    '{"psn": {"clientId": "8Pa3uNGKhaLlJzJM", "clientSecret": "SnJIIgsAVmaGYxUX", "scope": "1B9oVuzG2CnYX2YB"}}' \
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
    'F2g7TVtzYEHUodh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminReadSessionStorage' test.out

#- 38 AdminDeleteUserSessionStorage
$PYTHON -m $MODULE 'session-admin-delete-user-session-storage' \
    'iUfBthbepUCTWiZ1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminDeleteUserSessionStorage' test.out

#- 39 AdminReadUserSessionStorage
$PYTHON -m $MODULE 'session-admin-read-user-session-storage' \
    'uqh7GAi4FEIu44u8' \
    '3ZLRxYlYqlpq03BG' \
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
    'dIk4oEogFVGR71rJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AdminGetPlayerAttributes' test.out

#- 42 AdminSyncNativeSession
$PYTHON -m $MODULE 'session-admin-sync-native-session' \
    'OBy6lsj1AKGBjnHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AdminSyncNativeSession' test.out

#- 43 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"aAu4YK87DYAWWcbc": {}, "bGWmKgE8CZ4AELr5": {}, "lraa5v5P5Cj8hgFs": {}}, "autoJoin": true, "backfillTicketID": "wKadEoIVmprwPsa9", "clientVersion": "YD92CX0rITajpwHI", "configurationName": "TGeHTnqRbzBB9ZFg", "customURLGRPC": "JbQ3Fj1umx4ItzkM", "deployment": "J7cudf4r916GPrhn", "dsSource": "2etVIQvRkQJAtDUH", "fallbackClaimKeys": ["9tx60AehGz1ermJY", "XsYgL7TfyIlAwjTZ", "dRZJJzWZwvTX2bam"], "inactiveTimeout": 91, "inviteTimeout": 2, "joinability": "CvX1nwvSWdDwD7WJ", "matchPool": "HzgNZUKsI5y0mR3z", "maxPlayers": 79, "minPlayers": 60, "preferredClaimKeys": ["yTsftKqnsIJctAdx", "yZVKHA9DkaSOWgtg", "8yw8lHEbVDwBAqan"], "requestedRegions": ["OlscRIWw82k5K5VT", "kdubkOFldMCQ98JH", "4n0JtgqzZv5kVu4S"], "serverName": "95mj8YRvae4f4lhB", "teams": [{"UserIDs": ["PbarbWEm8bVtZcfV", "CPdQhim9QKUAFTVY", "elIlGJg9wdc8bihh"], "parties": [{"partyID": "WjfZpfcFBUsnnDJl", "userIDs": ["mD1iEokbUiYzCQh2", "iNTwtnohddMzMTQ9", "P7sYLDWAJOA75K4B"]}, {"partyID": "YJ2fkqYJoF2FI3vy", "userIDs": ["yqRzc20O7FdsJP1G", "9tyBTfERXdvgD1Qf", "7Ot2DkUt3yexZBRv"]}, {"partyID": "xYnEBhXtAVxCd3me", "userIDs": ["TrT7cF9oVCh89wNO", "kKYssVejcL3kR3hC", "GNgaJmuALlMQl9RL"]}]}, {"UserIDs": ["rthbfp0VgweLlT2s", "Y3SsTnDQY7kKU2u0", "6Q4veujxtyQENvJr"], "parties": [{"partyID": "BCqeg67d4RWOqO4U", "userIDs": ["0bitNQLzwRoWnR0A", "bkCPY70FmvviVIBb", "cujF8Vk5qb8NhWWw"]}, {"partyID": "axyMchkt8l5IPSrw", "userIDs": ["rJl7wYIVw13NCo9y", "XlbQ52FTHTCj6SEA", "zT7TOpyiuvvQUm29"]}, {"partyID": "Iacq4XRLaA643nTM", "userIDs": ["tXSAyejnny0Ju13b", "6o5uB2XM6IHy7EEv", "HyLmcvrZZOdwe1x8"]}]}, {"UserIDs": ["RjU6Bi8JXE52sUBB", "q2SimQQoLbe5YOJv", "xGRxUzrTwagH7BMT"], "parties": [{"partyID": "1IZKTdNFVBQ1crBX", "userIDs": ["AupATO8uXsqVpdiW", "o8SjDAM0Riw8wLYW", "3n4F3LD1EDwBXw5u"]}, {"partyID": "BYeQZOzATNSV9E9y", "userIDs": ["yNb7yaLXzAVYymOu", "hCkZu4htrsf8eIFS", "ovTGXaMsq8ePN1oc"]}, {"partyID": "o2jx8Upe8SjMvpqM", "userIDs": ["8puggOEdG47gD5i2", "Ni6AnWn3NdEPhNHS", "H7eKDfRcngEpTnRU"]}]}], "textChat": true, "ticketIDs": ["qEAuJbpZSrcbc4LW", "fKaY5c1tP5TDuI5f", "6m4KC07CnsZe32hq"], "tieTeamsSessionLifetime": true, "type": "F74tz6aeXZOYwbwj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'CreateGameSession' test.out

#- 44 PublicQueryGameSessionsByAttributes
$PYTHON -m $MODULE 'session-public-query-game-sessions-by-attributes' \
    '{"MNdxKWlBfnRyFS0E": {}, "d7gTM5AVrtBQiDTc": {}, "NnZa6Zuxk6u6HXXd": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicQueryGameSessionsByAttributes' test.out

#- 45 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "iC9ZDj4E4mv12FNX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicSessionJoinCode' test.out

#- 46 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'ypoOLl13j84P0Kqi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetGameSessionByPodName' test.out

#- 47 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'rJ4PkMFtsnFfz8Ew' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetGameSession' test.out

#- 48 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"0X8fBuBSKLSQ4GvL": {}, "tz50D3rpBfBovqLw": {}, "XBuT30EYeRj17xGh": {}}, "backfillTicketID": "aBKoUfiHjGmCyPsK", "clientVersion": "CJTv1ic9gvagF2cS", "deployment": "uztsJ5tj64gV7nmD", "fallbackClaimKeys": ["k29mcjSuz9vbNStq", "PtQmQN6eKAGiZFCf", "tT0RWECdjWYrnulx"], "inactiveTimeout": 5, "inviteTimeout": 11, "joinability": "CKAru8pOaAVLDB4k", "matchPool": "3JwkdaxR7GJpYmuY", "maxPlayers": 57, "minPlayers": 85, "preferredClaimKeys": ["BoysmaORLkP5hc2F", "h04JTsqDTynCewqJ", "ligLlRxOelKykICR"], "requestedRegions": ["xF6HtlER2txs4qrN", "ARATn6KXOutlYBbL", "hL8KXx25FZfQIodV"], "teams": [{"UserIDs": ["BqQsBpCJBIXLGYcw", "WVRK6UKk5ozrXA4H", "ZHNyq9odanhR1Zrm"], "parties": [{"partyID": "3thUvV87yfkycLSV", "userIDs": ["dleSaAylsmLYe2ph", "YOgT5kDTyPl3dKF7", "NXEjrJMki8jvc3P8"]}, {"partyID": "Gwjg3IOH0SDHgYKq", "userIDs": ["xJiFJdrmj5vhzgsJ", "wex7wq8ZPlXNaUNg", "dY2vfJuje5cPnmGj"]}, {"partyID": "TvYa5Pqx1K7qcAoi", "userIDs": ["jBPAp6EPb988Nzxr", "DKVpULjjiw3NeVG4", "DJi9DaMrc0WFgKjE"]}]}, {"UserIDs": ["945x2CPVYYG9WvoG", "mAmvaVV5YfxnUNcw", "jr7gSGhnfuF4WZiQ"], "parties": [{"partyID": "VICVpWd3UM08gMXh", "userIDs": ["df3juXW4JprIb3CJ", "CAtvSG8Cfa9dzOJD", "GCTHIOFjeXbsSgR4"]}, {"partyID": "3kIDzxBwqRJTzrHN", "userIDs": ["ZWUsq5lQo2jy29EJ", "igqYhyVhURx1yPec", "zRpdk0HATGylx2JG"]}, {"partyID": "2KNGfhzfCTxxrsRR", "userIDs": ["Lee3TcJ7DQIi45aC", "DHN9mVug2zkVf6Kg", "pKOcn3tMD9UT67bO"]}]}, {"UserIDs": ["wugFDa6wUQvehKqw", "Ch86XmRkCEcfHDCd", "l59Wp9A3tXGve6Dd"], "parties": [{"partyID": "K6uvg8f2cIoByk9f", "userIDs": ["xtvsgeAxo57nKAbZ", "psbJ4Iu5KJ0ynxGB", "lacDCdFe8ATUqVxc"]}, {"partyID": "SthrpnMUBsnUfuQI", "userIDs": ["cSbUt5UGkInFGpuU", "sdtq4dOwNESzCEW9", "dUVhZjLftC3sCS8C"]}, {"partyID": "pLCqPD9CeDEdCnnL", "userIDs": ["6Kt1Bjj3b8QM8Rr4", "5ULqXQgvwD3PsKDJ", "iWxQBwaS7rDBf2S5"]}]}], "ticketIDs": ["4phbdyGDt47f9GWR", "lE9hqz6rjDNo4rhj", "xUdMM83WekqfWv04"], "tieTeamsSessionLifetime": true, "type": "2wj9uaDzsr9xYiWR", "version": 42}' \
    'GAqXUjNypF6MMqWp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateGameSession' test.out

#- 49 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'dEJsPoaIbYz8cK5j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteGameSession' test.out

#- 50 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"lpJdre5ur6yvWJDd": {}, "vM7T7PX2vamIRZHz": {}, "sIYOCUoiCXNjrdQL": {}}, "backfillTicketID": "2jdx1eIba1sB0HsJ", "clientVersion": "06DzfbzRYt4OVUyu", "deployment": "mBeIqdQGZC5kM03H", "fallbackClaimKeys": ["HijsQRj7N8IAjmso", "njj0ZR50BQ1U6aFD", "3O2kXQSc58zgZVl4"], "inactiveTimeout": 14, "inviteTimeout": 39, "joinability": "IF7v3qbZu9M3OxqV", "matchPool": "AT4H1lRZ9Z1JBrHR", "maxPlayers": 53, "minPlayers": 50, "preferredClaimKeys": ["EOtIxzPqb6n73m0j", "iaDH86d9rsKgzCsM", "ulpB8HZUtVVaJCiL"], "requestedRegions": ["gKOwrSfWhT5B4Wed", "opzwSluBtRFPKThy", "GnbjmPDKFS6u9FHu"], "teams": [{"UserIDs": ["v1M3qfch4SqIV6LQ", "PHlaeYl4csFq65cU", "66yJaj4ovoKWE4EW"], "parties": [{"partyID": "0sw8v5peiuxoBJAT", "userIDs": ["auyD3XCXVMiyEvMf", "9yilUEujk6oqYo1H", "QYTFzwdOMdupwD4O"]}, {"partyID": "3uNbcIDcIyvZbOy1", "userIDs": ["T4hfwkuVykH4Rpfm", "jIXFGZ5PKdbabJIk", "Nnt9P1Tkm08luh4d"]}, {"partyID": "pPRMDbUXBWTbpAog", "userIDs": ["G2wlZkLhuU5FI8Ni", "jFI0GKwJ3vfXlsAM", "y2Zp2UAGxHnmSxvk"]}]}, {"UserIDs": ["G9UR5q9neoW6JBcG", "p9Rx2RfcRhXpmeeH", "dvphas9S7ivHEoLb"], "parties": [{"partyID": "UMM47f1UreUpxEkX", "userIDs": ["IbE1ETzRJZKMavu4", "Ul2IaieEbPSE7TGk", "eHsYsW9oGBN1pYMB"]}, {"partyID": "wbPZTlMlUvFEiGpr", "userIDs": ["cNSQ9kEeXBZ6FVrB", "zyhyhoS6a9oe0JaX", "Fpff28uYbe4Cf2HE"]}, {"partyID": "HvVevhISjbtBJUK5", "userIDs": ["fE3OufPSX3PdOU2V", "9yw94oa8UJ34TIed", "V3HyoX4VnO2LpBU0"]}]}, {"UserIDs": ["8wfnlHBXFIqFUmgU", "SMM5au8GJT0mkVPI", "6zUtf3QaJPGrTNcX"], "parties": [{"partyID": "XTUIggoH89QNmI17", "userIDs": ["UDb19R6H7r1ta3m7", "jK5pxe82pgFiAS6p", "iIzmc8rKrKEPGSAc"]}, {"partyID": "ong6eNERUf8kjci1", "userIDs": ["Ctccv9Gv4tOcbnuC", "qf0lm6WBkIzjoSV3", "1tvmMB6jzrpRGESm"]}, {"partyID": "ooHiCV4GUOnXpapX", "userIDs": ["QGRakUbcG7PcR4ei", "U3Idi55jNrGNT2VH", "TKuIT5FwwHj0Ur5F"]}]}], "ticketIDs": ["2PWGTTD81xhNP4t6", "kYBUjyXAn3bWQF6Q", "cAiJpXIrgroixptZ"], "tieTeamsSessionLifetime": false, "type": "oWq94RImNWVIJnhh", "version": 46}' \
    'Kyi8ZFvGcV8DY0XO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PatchUpdateGameSession' test.out

#- 51 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "kDstxZcY1HgAnZV4"}' \
    'IOglVLqb9lGAJUg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateGameSessionBackfillTicketID' test.out

#- 52 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    '1Lt7JwgwMUSuC3Ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GameSessionGenerateCode' test.out

#- 53 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'jy3BcEMCtQs2FcEc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicRevokeGameSessionCode' test.out

#- 54 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "vVAyId6Cp85HVDsZ", "userID": "BQgOnXuXsGThYZrm"}' \
    'm0wrFMnPpWgrQD4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGameSessionInvite' test.out

#- 55 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'Ek0OLjYsnignE7Kc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'JoinGameSession' test.out

#- 56 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "MF7fuDbzRRYMNXWU"}' \
    'sp1tOibJY9aL9ie6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicPromoteGameSessionLeader' test.out

#- 57 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'vvMbiNURrlm88QlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'LeaveGameSession' test.out

#- 58 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'yuoya4JgakZyUV7t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGameSessionReject' test.out

#- 59 GetSessionServerSecret
$PYTHON -m $MODULE 'session-get-session-server-secret' \
    '73VnSFbuxd4KYZ0j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetSessionServerSecret' test.out

#- 60 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "k0UZdhtnKu9oTc8p", "userIDs": ["VkiyGsj5JdXzRxfN", "EjUMTs8WIObJBTsv", "sw76uISRX0bKVoWt"]}, {"partyID": "oUW1P7ocuBAldDSU", "userIDs": ["S7Haa6unq1yQOSRv", "yiLBRVtIDi2piIQF", "VmzMidw70KSahpYZ"]}, {"partyID": "dKZRyR9AX7JjxvNZ", "userIDs": ["hM84DiZk6ySrB9SV", "FctW7YS0OkL78XeE", "AtALFI3v8yha4pd5"]}], "proposedTeams": [{"UserIDs": ["A7MYcpBD6lKNb8Rx", "vN2u5J7baOeLH19f", "qBwNbNe1ffYRtIvQ"], "parties": [{"partyID": "aKyevWYtZjK6J29v", "userIDs": ["8MpBSpo3AKRmnJkz", "JHAckUyBksYQfDm0", "RNFwiz70tRVLMlHi"]}, {"partyID": "8i9gOVqajUWrgEsW", "userIDs": ["DtaKzn8dZwnnGeZs", "ZVgbPzPFbrOMZMgW", "kFN7Tpkx6GcfyOg6"]}, {"partyID": "ZUrrp9ubg9mndW2J", "userIDs": ["KmQafUs2bxYztOEy", "VbKIf1ZbzgUwd8DH", "oCQykmXHYmkRlg7g"]}]}, {"UserIDs": ["Ys6unPYQ9jNQN1di", "1ldhOh6HvjnYuV7N", "fC4A2ODiZhbfb8Qq"], "parties": [{"partyID": "CyK1XH9D6vl5eFdF", "userIDs": ["fgK46GjCWaP8huTm", "nq3FGQn3Ahu5wxq6", "oJq4mChmQHQhO9IK"]}, {"partyID": "BXDFQfXFD58sG6uD", "userIDs": ["hFYlrzJBYSeMuJfQ", "ecutjS029BiJWOG1", "m7MKclr5igjNTVIt"]}, {"partyID": "rH2X78hxJgaVfw5V", "userIDs": ["nyq8OzTE89WDNoMc", "OmbfJrCJQIj1haAo", "sKglqaCXE9ytpIO8"]}]}, {"UserIDs": ["btO3OwNEGSW5TaW4", "to7QCY2NGGvi9kg3", "rMIzNmhJTNQjKlwj"], "parties": [{"partyID": "fJ3TJ2xVpge70WsL", "userIDs": ["fgbZieRvJI5sT9DH", "3DfLCv8q4Thmq09b", "BgPAYxrBE9jlnTgt"]}, {"partyID": "gW33wDwD9RKvQX4y", "userIDs": ["FQFdrRoM6FoqCYw7", "AlxO6qdFpc71sSck", "3ggZWJlSlCQMDji3"]}, {"partyID": "29PfVrvMEPtpsSNc", "userIDs": ["pK1QkB2Sy8Ww79LV", "eVskqeUB7RSayqGF", "guhh3bvadRthdbVA"]}]}], "version": 32}' \
    'ydVw0zCqoMZvpIOO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'AppendTeamGameSession' test.out

#- 61 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "97DmQ5ZOzx6iCJTu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicPartyJoinCode' test.out

#- 62 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '60IifzMhkk5Pxsjq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetParty' test.out

#- 63 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"bCKpMv2Yky9DYkD2": {}, "sIllFtBtXJKG3rqB": {}, "mILhtWm8RQvRUbUD": {}}, "inactiveTimeout": 92, "inviteTimeout": 63, "joinability": "iefGEdLucrtO2gCQ", "maxPlayers": 59, "minPlayers": 60, "type": "057DrDlgC2nzS9Si", "version": 66}' \
    'w3kKoaP1K4CDuH1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateParty' test.out

#- 64 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"MIfOCDyVAHrHncR5": {}, "dShqiBUI9esSsXeg": {}, "SEhrPpK2q8kxR4Bu": {}}, "inactiveTimeout": 62, "inviteTimeout": 53, "joinability": "ksS2A9VOA8H9VeHv", "maxPlayers": 85, "minPlayers": 76, "type": "nAFjsodyJQVVBrSh", "version": 66}' \
    '8xs1WId9WlalqshF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicPatchUpdateParty' test.out

#- 65 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '9Rh2o7GCQGPCxwEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGeneratePartyCode' test.out

#- 66 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'kyuT3MgzReRq0112' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicRevokePartyCode' test.out

#- 67 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "ISArROIodcmM6v2A", "userID": "EozWWaYvBLE46bpu"}' \
    'Jip8JyxJ39vrtuWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicPartyInvite' test.out

#- 68 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "rqTZbSqBSKp8Amgw"}' \
    'hYzk33J34fiTxK63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicPromotePartyLeader' test.out

#- 69 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'OHpnUCGBVfpctNFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicPartyJoin' test.out

#- 70 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'sUQ6ZXQcb2o1J5eu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicPartyLeave' test.out

#- 71 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'LAbBgejqc0apxqZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicPartyReject' test.out

#- 72 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '09BySn8aUaGlAyvI' \
    'slt7N1qcxKs4nlf1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicPartyKick' test.out

#- 73 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"MfqUZXkjHvcUOTlx": {}, "Nf09pefgFIiJssSh": {}, "BKsQjXvfQgQDt6ce": {}}, "configurationName": "8NDMErA82FrR1GSo", "inactiveTimeout": 13, "inviteTimeout": 27, "joinability": "kewIzTOqKkcjRh3l", "maxPlayers": 46, "members": [{"ID": "gAJOTCbx7J3gNLIl", "PlatformID": "Tk3Bpclrk4hIRn0z", "PlatformUserID": "nIKzAEAHQpBOgHEP"}, {"ID": "5l94s7CbIJ7eHnVW", "PlatformID": "OboMkyB7FTexsOZ0", "PlatformUserID": "b2p3b63KrcwIcXMh"}, {"ID": "Gy83Xit6boOLGCcg", "PlatformID": "16DqwdQPQ9HkSSV8", "PlatformUserID": "e1MgTTLS2FgarY90"}], "minPlayers": 44, "textChat": true, "type": "NGIyEfRBEj7qms9A"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'PublicCreateParty' test.out

#- 74 PublicGetRecentPlayer
$PYTHON -m $MODULE 'session-public-get-recent-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicGetRecentPlayer' test.out

#- 75 PublicGetRecentTeamPlayer
$PYTHON -m $MODULE 'session-public-get-recent-team-player' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicGetRecentTeamPlayer' test.out

#- 76 PublicUpdateInsertSessionStorageLeader
$PYTHON -m $MODULE 'session-public-update-insert-session-storage-leader' \
    '{"GQExPhgr9gGfC0Gj": {}, "vpgJfuBs1Vpqn47G": {}, "VghTH2wToOnq9U5l": {}}' \
    'yW89Xwt3wmRTrDCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicUpdateInsertSessionStorageLeader' test.out

#- 77 PublicUpdateInsertSessionStorage
$PYTHON -m $MODULE 'session-public-update-insert-session-storage' \
    '{"hnKvsHezWTqgYPix": {}, "tHk6lWq6tEeUmU96": {}, "FLEak0mJqjRYldcT": {}}' \
    'pdeCD9XPRi4bAQL7' \
    'VE2wL8Y4JFVUdzA8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicUpdateInsertSessionStorage' test.out

#- 78 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["bvXlDhG7BrorbKIK", "uOXJPm5ztrr09CDA", "8Ij5bGKSuopWQbaC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 79 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'PublicGetPlayerAttributes' test.out

#- 80 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "0hG9xmSnzd7zgUxA", "data": {"ogcnGkXk17QPkJHR": {}, "hmLKQuQVFSKiXl8G": {}, "2uf6E8EajXLSAS8M": {}}, "platforms": [{"name": "KMaxQ1QyJCpKedhu", "userID": "zI7G9NCKKXu1bqI2"}, {"name": "M5PmXfKnQ7BYGjCU", "userID": "DMOrbmoRvWnfmGFy"}, {"name": "0eUoOBd90h9EDqST", "userID": "OfoNewWjwMWDKEt6"}], "roles": ["JhbJ0fwTDaq6b5Rp", "MwhWPtndriXU9loO", "xpmEuwDVc12r0DVU"], "simultaneousPlatform": "GgGHkapTCafFMdvY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'PublicStorePlayerAttributes' test.out

#- 81 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'PublicDeletePlayerAttributes' test.out

#- 82 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'PublicQueryMyGameSessions' test.out

#- 83 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
