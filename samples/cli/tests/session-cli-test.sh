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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "PSNSupportedPlatforms": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"], "SessionTitle": "n8mzZ0m8SAMTwE6I", "ShouldSync": true, "XboxServiceConfigID": "IaRDBXxyaNoMR6hk", "XboxSessionTemplateName": "spInrAip6lyzSxwE", "localizedSessionName": {"lFHHdgs21Jub74CU": {}, "kNmKJfh5pUkHODpo": {}, "MF78NY4YkHs1cnz1": {}}}, "PSNBaseUrl": "JSDgY1TXp38zsCTC", "autoJoin": true, "clientVersion": "cPiSuL0Sly6XM4OI", "deployment": "18mAQLnzjMf8GZ2W", "dsSource": "BZqxYG3aREAu2D6Q", "fallbackClaimKeys": ["VKNCWP75TB0i7pKx", "R8dl0zRVW4EZG9m0", "XcgGVbMqSszE8GHa"], "inactiveTimeout": 43, "inviteTimeout": 20, "joinability": "SdAdIhUDrwoZ5Mec", "maxActiveSessions": 7, "maxPlayers": 31, "minPlayers": 76, "name": "c1C8XfwHuKeb9l3r", "persistent": false, "preferredClaimKeys": ["N9A3sNm84hddSpHt", "0P7MIIR7CkyF6C7d", "uuyZ0GhDogqrhBRd"], "requestedRegions": ["8lDR6qVNPRZYdFLI", "AjGGJddVCvu9vx5K", "Q7KYnIuMBvaO35ll"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "aT5kPxUfofvnnSuB"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 '0y5WUlrMdI4sNvea' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 2, "PSNSupportedPlatforms": ["8sKgnuRkgghGoYup", "D391C2qtPYokahFj", "kQsfCaTmt1d67FXG"], "SessionTitle": "k2s9Q0mPVo3twu0M", "ShouldSync": false, "XboxServiceConfigID": "C6I3lMjGSWN2laRl", "XboxSessionTemplateName": "xfcjHfYakUCTqGkE", "localizedSessionName": {"7wcWfDslpJSqGAXQ": {}, "0yYoNRKd3IL5TAQ6": {}, "iiPlSC2uE4o5Vwdo": {}}}, "PSNBaseUrl": "3fePqIJA8IHtrkmu", "autoJoin": true, "clientVersion": "hpDDWVAla2l5BYNt", "deployment": "IuS5S5XUdjsoqwGy", "dsSource": "zzWi9gwQYv7t1o7T", "fallbackClaimKeys": ["Tr1DmrhZv15T7quI", "OvBMcaYmvCkGZ5dA", "gqxpBFmaLoxozr6w"], "inactiveTimeout": 10, "inviteTimeout": 50, "joinability": "NPX2bOItRMvqtlB2", "maxActiveSessions": 19, "maxPlayers": 16, "minPlayers": 72, "name": "2EI8JlDbPWbQ6Q9l", "persistent": false, "preferredClaimKeys": ["mqRBaAkLnvxkT1X6", "8cmDc3fxU8MyKrQp", "M4hkkK6KKXNB3Gv0"], "requestedRegions": ["IqmF51TkhjYnaq6f", "oWvXa3bMrXsDr6kI", "LsSSyDdmykmoPYgc"], "textChat": false, "tieTeamsSessionLifetime": false, "type": "9oCMNqq98SjTvhZN"}' 'kSQ70D0H6BXksUC9' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'b6i5lZC9xv32e8c5' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["csSovoqsZNBdte9N", "DUPVJf6c2Z0QZxfg", "PubTDIHrvqAThuwj"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'RHpKKTlmVr9XuoJb' 'RFQSKVPHbn4Xxtu7' 'LQRENjEEztx1WsYS' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-get-platform-credentials --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "iZqan0nSBJroav91", "clientSecret": "GXlvPG6bFYReVHQi", "scope": "pcCx9Zw5D2L7vIYh"}}' --login_with_auth "Bearer foo"
session-admin-delete-platform-credentials --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'GGSyEW4ZJJ42d3PB' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"ddN8S48l9lyNApfl": {}, "xqMrj3oZk03QXcKM": {}, "DYDDxHSZjtqXyJ58": {}}, "autoJoin": false, "backfillTicketID": "rnjX9fDmIbeZxzfT", "clientVersion": "cyiuATus9hsfpFDc", "configurationName": "SDG8aMVGLiBNrDjq", "deployment": "oxcwgGLXpUL4pp2n", "dsSource": "cYAHdNzDmeIP6rOv", "fallbackClaimKeys": ["Dz9KOsb392k6YmJF", "fRByjlBiuFM3FIoV", "k8T3GpAnkCmBUqg2"], "inactiveTimeout": 91, "inviteTimeout": 38, "joinability": "CnqntX9y1aZSWMiV", "matchPool": "i10sG6vxkfUcmqRR", "maxPlayers": 4, "minPlayers": 5, "preferredClaimKeys": ["UBJCjfcnLRfxeCSz", "9WEi8KlloeH0JT1y", "duat2vQR3biBfsu4"], "requestedRegions": ["jmsRE2w1yEkLgh3t", "IYt4SqYUTLDx9gIi", "DandpGT2t24aOMh5"], "serverName": "eC3IHeHSKLCa3xre", "teams": [{"UserIDs": ["NDUWehwH3q31A806", "DJgas4b6z3LNUj7f", "dgLA84Z8YYk6QEgJ"], "parties": [{"partyID": "jBbEDoNf3n0hEoRC", "userIDs": ["Acf80zfFyabWAgIU", "XiI07A68eaqC2J9j", "yEW6GLbc0NaKDUL3"]}, {"partyID": "sa13lk1dQBHO86Il", "userIDs": ["BhnetU4RwTqUXlTD", "BzOuYsaZA2yyd4mb", "qoOfADMMAXFaY9eK"]}, {"partyID": "a699bRVhyaKwwrAP", "userIDs": ["2aMlu7WtjCtoYetO", "O847g8OudOfjnCuH", "Z3c46IjGa23YvYmm"]}]}, {"UserIDs": ["Dg7VYPXIuvUYTZBR", "ujIUE1Tq5jyAZvkR", "CMNFIurjh2imdb4r"], "parties": [{"partyID": "bkXj0ZwsVC0gL97Z", "userIDs": ["VJSPqJiwv1qlYB1R", "SKs6gQxC3Gb7S0o4", "zGYY7KQI1AeFgPqa"]}, {"partyID": "Okvo1aolB4lkKB4E", "userIDs": ["YOkQ1jMD3cym8xIf", "kOVW2grREOLx0KOw", "w3HICQLfl7MUBG7q"]}, {"partyID": "tPu64yAtURKLRkb7", "userIDs": ["38HGS6rDgMdIIlhS", "1fSiM9331m7Ta1Ps", "Kc50Kv6ecnEevcAx"]}]}, {"UserIDs": ["2K2zkRenmPZnGBt4", "P7WnbdSJtjX7ZshZ", "yZl5x4bRXBHUTrDz"], "parties": [{"partyID": "ZSKscfOcYu3dpCRO", "userIDs": ["YqUiGKXVFCmpo6sP", "wVOEDSJsEK5QpNhl", "I2iS5EpGhhvXYck0"]}, {"partyID": "upMzUYnb76tFkEOR", "userIDs": ["V3bu1bNCtX7W40V6", "Do5sYadCCFrHHC3D", "pZxkrQDXuNFviMar"]}, {"partyID": "v8mnfHK8CCmE2lPn", "userIDs": ["sbD3SGEdlwuUccE5", "36ugBp3HBvepnDCj", "gyJlXe36mgWjLfFm"]}]}], "textChat": true, "ticketIDs": ["xbnGezKsDwG2omOR", "2nvYI9TVqJdvzcWb", "fUpaXp5JMl5LL4bT"], "tieTeamsSessionLifetime": true, "type": "SRgwsAj1ik1jglaD"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"XTvKCWwNTAhd2wrS": {}, "0uPdjhdinpng5BLy": {}, "8wbhMssAHjapIkY9": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "Rf4wP57dBZNR88Yb"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'CtmKy8M9zVrjfGXZ' --login_with_auth "Bearer foo"
session-get-game-session 'nqAQUoY1GjlIIk0i' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"KoTTS1j02o7JjTXA": {}, "QN0qdskdQV0TqI8E": {}, "FnmDbxIxi4YKlONk": {}}, "backfillTicketID": "2Q5Y4Jvaizwiilat", "clientVersion": "uUjjt9lIMGql5ElE", "deployment": "a9EIIlGcHB3CfR3n", "fallbackClaimKeys": ["cDlwi3v3MFFJ1Kes", "KoELCpobBEG8X645", "xpdXpai0rYaT5hOP"], "inactiveTimeout": 18, "inviteTimeout": 1, "joinability": "6ues1Hhhkg1yLVbL", "matchPool": "FzHEP8cM4NTwr0KH", "maxPlayers": 0, "minPlayers": 54, "preferredClaimKeys": ["iR1DJ7HVWqMkNSaw", "QUWDFJvJBWic7UkB", "eIXuqDuAXI66bQ71"], "requestedRegions": ["w0deoV9Lx5RDA1l2", "XcrciYNEzvSZIPkh", "SgORcz5S5BvmgBLx"], "teams": [{"UserIDs": ["h4ijFnE3Tam69qSZ", "7PC6f6QkmZXElW9Y", "fRSse6AAz3S4czz0"], "parties": [{"partyID": "QKFlAVmVLu4AOec0", "userIDs": ["z8eBeeoip68J1nsv", "4W2OJhtafxMSJlHe", "b34sZKHcl5LLLOex"]}, {"partyID": "L4fZvWtND2tcBFpX", "userIDs": ["8lNtFEJ7tnkY6Mca", "5afj12K2IzrBvvWm", "4udE0OXudXgNne8k"]}, {"partyID": "JATwlc6esUp6Sw1I", "userIDs": ["98jeZQ7hfxnhLd3K", "naknoed9DHhLOqQG", "hCUr6iTrjyEgarAd"]}]}, {"UserIDs": ["NJOIG36I6tRbRcrE", "veMdAdiPKDUVSC00", "PYeDcagginxnFIna"], "parties": [{"partyID": "3yddcbsPheTH26IU", "userIDs": ["JNvYuGRUvpZaHCuE", "SOiIZsMfB4ZH3mtg", "WgU4pCAKxeE70Cau"]}, {"partyID": "nQNxot371W9G4AvQ", "userIDs": ["kqsGnmyo5JJTUVmb", "8GEXFTlEMEsFzYqw", "gK1Np5nodqpLm7Fh"]}, {"partyID": "JBNXzAFdO0Khqf6k", "userIDs": ["iTdSGv2LFjAKY7Cb", "gsWqFWZX7kPBom8F", "9GLLTG8phc3n4iLo"]}]}, {"UserIDs": ["IllKlpO2pqiXJF3W", "GRaoQomSJC4DdrKF", "7SUQPLG59e0k5ZtX"], "parties": [{"partyID": "6wK7PpUlcIW32iK7", "userIDs": ["MGt1ixY5rA1WoVeJ", "IePF8ZrQzP4zvtdx", "dbZUpd6FJtHJ1pyV"]}, {"partyID": "wyKQLY6FEO65Rb3z", "userIDs": ["7CYLM8IlsHqffnrf", "sGlfPaZKBwa3Ddb6", "0ufPpzwj1QGIFmlV"]}, {"partyID": "f4jvapseE9LN9bvh", "userIDs": ["OrHflIOd6X3viLvt", "Ek4mTIpUA9gxo8SV", "38nEhoXmM2W7l6jH"]}]}], "ticketIDs": ["MA2rG3nakopAywel", "u01nryEJ0NqoTow0", "qiOiC4j0iktm0ZPL"], "tieTeamsSessionLifetime": false, "type": "fLM9uSybRzWek2gZ", "version": 45}' 'kUXzt6bSc6bWvgpV' --login_with_auth "Bearer foo"
session-delete-game-session 'yW9dD1kOmvrAejcq' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"2LgkQuaS7RBx3vim": {}, "02jBOxrZDyvpcLYO": {}, "WA8NjxOnaEok4nOO": {}}, "backfillTicketID": "CzfsflhjbngJOUn1", "clientVersion": "8G5MlfDTk8aG40Nl", "deployment": "ncceIZSwgAIkgzh4", "fallbackClaimKeys": ["pTU0Am4DZhl0bQxF", "J3sWCqQpQ2FbKPFM", "ycMSQ4qfAacR0LgB"], "inactiveTimeout": 1, "inviteTimeout": 55, "joinability": "GBeMfPlNos4yBRjr", "matchPool": "ERHEonAZR8GmEu0q", "maxPlayers": 27, "minPlayers": 32, "preferredClaimKeys": ["6WQ5UBEU1QAOHfZi", "GhxOdcuDXSxSc3aZ", "PV87pna08gxefTYK"], "requestedRegions": ["huxaEc7M4P7UckSC", "6ePeN8i4GrFES9z7", "xueHpATHccee9GXh"], "teams": [{"UserIDs": ["KcjmSEwdrkEnnqKz", "FsLfYalUlfwEQKjU", "7eHGebSVu0LQ40ke"], "parties": [{"partyID": "pEaC4dfiOMZfEhHr", "userIDs": ["39pysFO3Zvc1BZG9", "9LyvfvHEsJKQQewV", "LMUoAnaRcYp7FUjf"]}, {"partyID": "IGaffoflEIByYqeK", "userIDs": ["N0meGelYF5wWaDhu", "kU4khGG4vZFTYnPk", "mSu4PWam1jxR7SET"]}, {"partyID": "Wjteoc8fgvZDDhoO", "userIDs": ["05oKqymxLD1Lcvw6", "T6mZEiwxxElpMYSW", "IeVzm7z9noowmlTI"]}]}, {"UserIDs": ["KVowi0RY2VN4ZONJ", "REdUQ3z9F1BxNNgn", "ke4akncw7wu9TmXf"], "parties": [{"partyID": "JWBPrx9Ns8eLzYEv", "userIDs": ["wSWTaLQjctvrK2jh", "sYpKPlXn77AtYoFz", "LAATPY8P8P3cfoiv"]}, {"partyID": "vQxevecWw7Rry0KK", "userIDs": ["5rgAGO0dW8rX2MVU", "GKSZ4GcLkt4pK32s", "JxlZcCTpTdRtCHvu"]}, {"partyID": "k6B6XTmSLyn50sig", "userIDs": ["BVZxiKdV57GvRyd9", "UuL02Le8HSCslsDd", "4M1F5qRIblS7Nz81"]}]}, {"UserIDs": ["GRazPAANjfBoldFO", "yqA2clJ5gEOaCgM6", "Yn6RugbNEIpGBFUj"], "parties": [{"partyID": "On5mM7k8nbLzvtCI", "userIDs": ["W5ynMKquUicAeIVX", "toWAXhMlW4tLqX7O", "ICf5oD1e6oI9FmYe"]}, {"partyID": "l0kOw72o8Zkgk0jS", "userIDs": ["6rDWUwfhKvrf2AaH", "4yCWrHSppnIZkNnT", "n3rzH5NvAtcvNedg"]}, {"partyID": "S1fUfKmihDbmu8eP", "userIDs": ["WlQMVDXEHeiGTnwy", "Ew6hIWDZrpP7rz3I", "SW510kHr4isTKWjm"]}]}], "ticketIDs": ["v67nuHCXWfwnwGio", "VwVzmmBVVFfpqx1A", "eLtzcPJ3jtDYBo4F"], "tieTeamsSessionLifetime": true, "type": "H7CGfKSyxgRR1DiC", "version": 33}' 'ruJVfLGea0ZtlzUc' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "uHAXz0UV31MfuGaX"}' 'sAuGsZaSHevO0TQN' --login_with_auth "Bearer foo"
session-game-session-generate-code 'EI3kfabxJWWSI1EC' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'Uo1NPpeFhUztXDgB' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "7n4C97uAPP8PATLp", "userID": "UpxeJlsBJT6Hh3OM"}' 'jAjq2mK8lbSEEelx' --login_with_auth "Bearer foo"
session-join-game-session 'nb5QxWG2HFnZlA6H' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "KWW4fI1IQcoBQELc"}' 'NlZkqTZrKgXNwvm4' --login_with_auth "Bearer foo"
session-leave-game-session 'e5GX6H742OixhtAo' --login_with_auth "Bearer foo"
session-public-game-session-reject 'KiVm6URT95XhnUcv' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "WB28MpusuhhDJ5sl", "userIDs": ["zgiWZEtyd56Lfxnb", "Y97jjYgXchCbkXX2", "6uEdCfQaMAQuTKfC"]}, {"partyID": "0I2kNjCMDtDMrent", "userIDs": ["gn3DhqciwIeShF9R", "Kb9vvxuJlhXbWhbw", "PwToC6knjVwVnzaq"]}, {"partyID": "SfJiQFC2gXoda0kg", "userIDs": ["16yUSpSOAjHJWwfC", "jYwWkLob9gKLqs2n", "EZhpByfHZinxNfgP"]}], "proposedTeams": [{"UserIDs": ["AwkMBsznlBUqnLT4", "AbGptKaWNvPbpg7y", "rRvXfZ6rvgvEY3Hh"], "parties": [{"partyID": "t1SwqTsKKKo37NHD", "userIDs": ["OQe91Ps3ztUIV0dS", "6hIH9c4VfkyrwpuX", "xbaERbfgPmi0eHkt"]}, {"partyID": "1mr9EOIFg0dnWIYN", "userIDs": ["2NVL70Iw157g00jr", "9b8MuYmmeKTmBNvG", "YxEQdf3ewoGGoY7x"]}, {"partyID": "mFNAmjDDCvs78mcM", "userIDs": ["diS76YApGJ9ufwLY", "kqIgLuZS6hsQryiE", "tOAbpeUNf26UqkCf"]}]}, {"UserIDs": ["gCUYBn2xaOBdPF0J", "mX8qwU1cTuHHPB5S", "3DvPRCzBrVUxmDOj"], "parties": [{"partyID": "3cvRFaTC11W0TGTC", "userIDs": ["m4fZWuk6pQxDQpKq", "xLGeMvr9TsvcMQ7d", "BsaIecRxIsZvD6rm"]}, {"partyID": "zVr5XT1Nxw0v1dMQ", "userIDs": ["9Rrbk6C2cVWf6ttv", "bU1PO6ApCD2VXidT", "7w0Oc15N8WXBPp17"]}, {"partyID": "PAewqSm5x3B4t7WQ", "userIDs": ["np8jXZedgt5cyNe2", "7HLtwtVOaxgP6Jbc", "t8puMybYGxD9IPmm"]}]}, {"UserIDs": ["sLmu3kaPj0O4zd8T", "b7cUNGPTBxiFFCrn", "7djjs69FTFVGUVhv"], "parties": [{"partyID": "KhJCmeisql14mUHV", "userIDs": ["bMPimNhcZsU3VAdM", "Dcb4qlkiFAamqvZI", "2KwjqPBiWXade41s"]}, {"partyID": "3rH34mB2yPlRpWjm", "userIDs": ["HZAAvKTH8MuqIg0C", "zkguwuJCW7EEFB67", "AODbi9BzupBsFpYc"]}, {"partyID": "77GtRUcCFeY5g4Xg", "userIDs": ["BsbfzqxBPNe8ae1I", "l4aAtEbu4IjGdqth", "RxTjQ7gkZEY8rG0q"]}]}], "version": 24}' 'Q2Qd2JzRbkF2I03d' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "IjvBbA6bfbYaJCJj"}' --login_with_auth "Bearer foo"
session-public-get-party 'fk2TUvn95FhO7VW3' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"mbDVMDu87t0ldWf7": {}, "iSGIiKFtWtn4Yr2s": {}, "vKM6pqLGZ0TBujEL": {}}, "inactiveTimeout": 54, "inviteTimeout": 63, "joinability": "UK6mQ5iZgbwwm5iG", "maxPlayers": 51, "minPlayers": 95, "type": "XtcknrgidKupvXO6", "version": 0}' 'fTiCO1NDBvQvRPnA' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"z4VzW0CpoBCbyJsF": {}, "5IjF1c0W338HS6CB": {}, "gVRyihYNZ84CVhzi": {}}, "inactiveTimeout": 97, "inviteTimeout": 36, "joinability": "8HwSmvcvcDKF19yV", "maxPlayers": 89, "minPlayers": 81, "type": "afCjOuSYht83AdvB", "version": 1}' 'vDwuOrP9lzpiX0Vu' --login_with_auth "Bearer foo"
session-public-generate-party-code 'FpZum7izxe7NPzjO' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'a8E7wY76PxLv9HBE' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "Ue89AwEw1HO4FnKt", "userID": "x4XLKAmlDr19uJ3n"}' 'q6VerzVCcI8y3Cz0' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "YqCKUh5RD9vNAp4j"}' 'inFpnQ5xF9wwbvMZ' --login_with_auth "Bearer foo"
session-public-party-join 'yeDeRnVfPUa6xVVB' --login_with_auth "Bearer foo"
session-public-party-leave 'cq3wZpFIYeAg79Hc' --login_with_auth "Bearer foo"
session-public-party-reject 'LJXJ7mpVI6eTYAjd' --login_with_auth "Bearer foo"
session-public-party-kick 'PlCiQQC35cj4KyOV' 'gvnWbfRJtsB7cUQZ' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"2QUAxJrINPXppPNO": {}, "3AfmXcgwC3IN6tvK": {}, "gLB9QmJIOq9dP5sz": {}}, "configurationName": "G71utjsQ4CrRb9gU", "inactiveTimeout": 58, "inviteTimeout": 9, "joinability": "zGMNIpWoSLkUrfuf", "maxPlayers": 99, "members": [{"ID": "U3WeYeA9t2ENKKWr", "PlatformID": "FtHIi1CMgKAOG5iD", "PlatformUserID": "cCR5PbCvDLil8wj9"}, {"ID": "cKM3Ar6MF35hCER4", "PlatformID": "nGmWGgTJfHlJl4tH", "PlatformUserID": "Ga4XfZcd9CVnGqMX"}, {"ID": "9FieeEssWEUl07bh", "PlatformID": "wntCVqiYOJf5KwMZ", "PlatformUserID": "QjzvjSozv6CTRDl0"}], "minPlayers": 53, "textChat": false, "type": "ohhhuiTnJarYYkHB"}' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["DdSzBXdxapwhd5IQ", "YBQuxLvPuWYvE3fs", "Ny9Z9OhxXvCp9y7f"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "xLPBsmAUrD9L1IiD", "data": {"6MlcEPhMDFzjHZ3s": {}, "IhzOx2CXKlvIomU3": {}, "pIxM9n8D2eLMe3lt": {}}, "platforms": [{"name": "9qfx2UDcgVE7L9FK", "userID": "6e0MrPc4vtxk9hVK"}, {"name": "lG56HlzGr7XjdyRJ", "userID": "unZPkp6ccIBnWyPw"}, {"name": "8mj7gyQ7XdIszGRj", "userID": "46COPipH1MWVTHG0"}], "roles": ["qHJCWEfOJpZm9yEY", "WNGMy2pgSGSUOK68", "eqGJtWf1Ybgg8rdw"]}' --login_with_auth "Bearer foo"
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
echo "1..61"

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
    '{"durationDays": 11}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationAlertV1' test.out

#- 8 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 2}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 58, "PSNSupportedPlatforms": ["mrvHmO07KNqX9LM2", "IwEsdOGBXBwnzDX8", "v3xgC1Ge9PdbTTAJ"], "SessionTitle": "2Gp1r0sVZ6LJAOdd", "ShouldSync": true, "XboxServiceConfigID": "2l3hPjNDKv2LWfXq", "XboxSessionTemplateName": "jr8fS79En3wYowBd", "localizedSessionName": {"kaZ3y6i38XQjLDRq": {}, "kpiFK5BtiQ272Uo9": {}, "UBJWodpdwsX1jorc": {}}}, "PSNBaseUrl": "yR0x3YiHF8ITGPRQ", "autoJoin": true, "clientVersion": "FMebS4AdlNzwog2I", "deployment": "hErkNhNcECWwchW6", "dsSource": "zL9SkbLlrNXnGanM", "fallbackClaimKeys": ["azb8jvRWenURH48a", "JuALEcSqcE15u6D3", "1DjOsrs3CUYATdqn"], "inactiveTimeout": 87, "inviteTimeout": 5, "joinability": "GbqiqOkNeATj7eGj", "maxActiveSessions": 29, "maxPlayers": 19, "minPlayers": 7, "name": "zyBB4UFKiaoV0VOe", "persistent": false, "preferredClaimKeys": ["ypNrp2nFe9FmN86s", "K5LOq4ft5jGcMICP", "UYnfG6jl9U4jRete"], "requestedRegions": ["IMgzISomCsodJrhQ", "W41q2OspCZbt3Uta", "5I0uGcL1koyHjCH5"], "textChat": false, "tieTeamsSessionLifetime": true, "type": "lYLETRpABAmO2EGv"}' \
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
    'J4UMS93yOxNInDBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetConfigurationTemplateV1' test.out

#- 13 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 15, "PSNSupportedPlatforms": ["QU5kG8bXGFmPAnOk", "DiJq4xQye7HqnVK3", "YVeOWs9mfVQh3jLB"], "SessionTitle": "tn9pxpE7BYtzB0B4", "ShouldSync": true, "XboxServiceConfigID": "HbHig6IKWVZ77KeR", "XboxSessionTemplateName": "WdECaFGzfZ2hxcJ2", "localizedSessionName": {"Fnemn7M23SzUo4hN": {}, "BDh9ZFP1OW0nXOEr": {}, "QPS4VsRoYIK69yg9": {}}}, "PSNBaseUrl": "ADCGiXaLs2xjHkin", "autoJoin": false, "clientVersion": "D975nARHCmhNHSXu", "deployment": "qIHsxvaUoXDmwWsu", "dsSource": "kxncuD3QxCXMd00Y", "fallbackClaimKeys": ["BWCaVVmM45mfIZsW", "hkS476dGGJwJ00UH", "197MJ6zU7JLMQyMW"], "inactiveTimeout": 51, "inviteTimeout": 97, "joinability": "YQCAaPJgoxGJoJaS", "maxActiveSessions": 52, "maxPlayers": 96, "minPlayers": 72, "name": "tY4ZD0Xtb0U4pH16", "persistent": true, "preferredClaimKeys": ["Z9GiBiSAylX5cS0I", "eHpWCugmfOL0QQpx", "suD8PGqku59eFJrO"], "requestedRegions": ["XyDYz9vMUOPG0iHD", "T8QbF7gHPTPQbvLt", "2NRqJGIKzLyH1y72"], "textChat": true, "tieTeamsSessionLifetime": false, "type": "3Ornyx34luLdvtsT"}' \
    'KXMjiw6gYPvfn2Qt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminUpdateConfigurationTemplateV1' test.out

#- 14 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    '9iyq3Nyk8ncu2Z3e' \
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

#- 18 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["DHH9WaVO4iKhDcJ7", "TCcNIsQ3PuppUxDS", "K8aOTGMudcxlCV4c"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteBulkGameSessions' test.out

#- 19 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'NbJGQ57lPdinpjS2' \
    'DRfGt9GlyZVQ4X67' \
    'tPZSTpPq3xjrElvv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateGameSessionMember' test.out

#- 20 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryParties' test.out

#- 21 AdminGetPlatformCredentials
$PYTHON -m $MODULE 'session-admin-get-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlatformCredentials' test.out

#- 22 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "Dgw0ag7kSWE0Hiqm", "clientSecret": "5IuLryiEXqvUWDjU", "scope": "1G0EVjVZw1ToLuPa"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminUpdatePlatformCredentials' test.out

#- 23 AdminDeletePlatformCredentials
$PYTHON -m $MODULE 'session-admin-delete-platform-credentials' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminDeletePlatformCredentials' test.out

#- 24 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminQueryPlayerAttributes' test.out

#- 25 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'kQN1MpOs1RVFrcg2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetPlayerAttributes' test.out

#- 26 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"CXxepx78fvsyhE2B": {}, "KtyTDSIM7mkmvZ7C": {}, "msh4US8o4jfMANPp": {}}, "autoJoin": false, "backfillTicketID": "VOsnmnlVljdWYmEL", "clientVersion": "e74p38vumnxAnYBT", "configurationName": "xaTIz0jcgDI8Pkz9", "deployment": "6vd80msqIm5bufnB", "dsSource": "qrpLeqhwVhjnnjKM", "fallbackClaimKeys": ["EmtbiWsAQHbMrKYi", "0Zxs5SWCqZXHLLa3", "1oQf7BULnZDhutDM"], "inactiveTimeout": 10, "inviteTimeout": 55, "joinability": "eKOufV4f15NohXu6", "matchPool": "opxQGRt6PqlkL0di", "maxPlayers": 88, "minPlayers": 91, "preferredClaimKeys": ["hLC10ih2EQfY3XCv", "4hdOa6FdZhNMd1on", "FjGRbxtABPXDmgNE"], "requestedRegions": ["JBhgGq5GIDhNC66s", "zbCCf73IFbRkPSSI", "Tz4TjCrJHXGXku2Y"], "serverName": "VuOzhxHmnrrV9ZGW", "teams": [{"UserIDs": ["rZ05sxe6A6RpmKDe", "bNkylbynkgT9vayL", "Liizac7Ge6zKJdlt"], "parties": [{"partyID": "7rjF5RaJwvkWVco2", "userIDs": ["LTo5ijlvDF8qBWCQ", "9dLWYyS8zdhMeBXH", "8x6HdVfZVDAiU6iJ"]}, {"partyID": "OF7JKZFNk2NKy59X", "userIDs": ["8iOg2sVBiCoeC5we", "XJl7PeiMH8z8dVej", "8N2yv6VTnOK7xAvM"]}, {"partyID": "7tuL81lsR7xxSVp3", "userIDs": ["Gd2TK0HzYviTgYmx", "82JVBRLPZ6Iz8tne", "5dbguBF6Gsvvdl8j"]}]}, {"UserIDs": ["Hz9x7XZIjU4IK9lO", "LaZaMphKCqTq3EVh", "eJjoEEXBLIxGnNuh"], "parties": [{"partyID": "oJM3WWPvvCiCf33V", "userIDs": ["iEdqQpoGkUWNizk5", "UcPAGv6c1ESC6hZY", "TYZbzf5aANNNs5kg"]}, {"partyID": "SZZNUHbIT9szApmW", "userIDs": ["JO5vzzXZj08a6K1X", "RVfriSpPFnZBJZkD", "nEiyfa2LrnpZxNnL"]}, {"partyID": "RH36bqS2oFY76PU1", "userIDs": ["AziBOHEAj1cT3u6Z", "c2FbrTFznTgDIwZI", "RWf6T3by2kYSCdnF"]}]}, {"UserIDs": ["KLc0xcTjqjdcEfU6", "1OJYMnW49rWynp1c", "k1vT90C6o86cSRL9"], "parties": [{"partyID": "cgbUmulhe98oaFKl", "userIDs": ["QicdrxVhrtwSd9QW", "VMYz7TU1TsxsChSc", "lSkb5aBi9K9zyv6g"]}, {"partyID": "FZXI5nXJ7hLi6Hwe", "userIDs": ["weRmyo91dIn7QqXB", "DXJcrqKmXDwoEV6t", "Cdrxw1KOPhuvHuYr"]}, {"partyID": "GWDK41uMOC0mRvSo", "userIDs": ["aGk4ktF5wnJDg9Q3", "WXiydCOInVolsr6C", "Hmj763vLwtYEJTSi"]}]}], "textChat": true, "ticketIDs": ["jcY5ZPkv90lyKSTW", "LxSFZ0LpupEi5Dbk", "Vs3qFTi1t530Wj1W"], "tieTeamsSessionLifetime": false, "type": "ZQAJza84lKKmVOaT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'CreateGameSession' test.out

#- 27 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"S6xBbNrSUAW2ak7I": {}, "SDrBVg6NuDZvPb1k": {}, "uUfNfUDe4g7q6PHE": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicQueryGameSessions' test.out

#- 28 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "aqbzHvDDl1jiLw3X"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicSessionJoinCode' test.out

#- 29 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'MGBA6JXDpA1tIC45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetGameSessionByPodName' test.out

#- 30 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'C0oaGouFu4hXONgU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetGameSession' test.out

#- 31 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"wJnUpryDeRcpUvlr": {}, "w2MwC1uuokpaIjL0": {}, "Vxe5n9Lx3QcFo9gx": {}}, "backfillTicketID": "OgvDc7xMrRKvw8IS", "clientVersion": "P2WKmCRRXBxlalCH", "deployment": "tWlKxLpS8fLWoQ5n", "fallbackClaimKeys": ["uJhatQPxR7dvBVC5", "zgOKLTDmHe8c1eJ9", "sde7Ryt4udIv22M1"], "inactiveTimeout": 50, "inviteTimeout": 42, "joinability": "dPWLPBYiR3UbJc1Z", "matchPool": "Yapx7C477etqgfOJ", "maxPlayers": 60, "minPlayers": 65, "preferredClaimKeys": ["UT0uKAPrARya2IMl", "NiXpF4qvsUUpHqi3", "3TcBGkc0HjUcnkpU"], "requestedRegions": ["9oVzl2kBuLFXIeCE", "KZUTz3GvCAZ5j24a", "cYHbrryHB6GO9zP3"], "teams": [{"UserIDs": ["FaepA3b3YJ9nJM6v", "tT27xv85K5MU2qmb", "eqaVemINdClpF7Ov"], "parties": [{"partyID": "lBIEgjse5kd6GEDo", "userIDs": ["08yq5E5HleLoog4m", "e2NBFp62xlXvVcJe", "rTPW02PWsHiKYArA"]}, {"partyID": "xnKBfBfDlrQQuAc1", "userIDs": ["0DjjwMv4vrIPRtvh", "QIyLarjaLOKnX51y", "AB8Pa3uNGKhaLlJz"]}, {"partyID": "JMSnJIIgsAVmaGYx", "userIDs": ["UX1B9oVuzG2CnYX2", "YBF2g7TVtzYEHUod", "h3iUfBthbepUCTWi"]}]}, {"UserIDs": ["Z1uqh7GAi4FEIu44", "u83ZLRxYlYqlpq03", "BGdIk4oEogFVGR71"], "parties": [{"partyID": "rJOBy6lsj1AKGBjn", "userIDs": ["HmaAu4YK87DYAWWc", "bcbGWmKgE8CZ4AEL", "r5lraa5v5P5Cj8hg"]}, {"partyID": "FsqHC9h5JPiMEtgK", "userIDs": ["uiGTYgwWv5XldL6r", "OVGcRAn51rVAQSxp", "4qTB54mKA3V9DKlC"]}, {"partyID": "eZ7mLYsHooOIaxIp", "userIDs": ["b1cIOJPS3lJ80YJ4", "1U4ooQ980ywmg1pW", "pWit1QC7FKe0fnHU"]}]}, {"UserIDs": ["lmU1unGKM0tgfeWy", "47bbwMI4gGmvK9gW", "596FwBNrFXt3TAuK"], "parties": [{"partyID": "BwBcD12ae6r3hHwy", "userIDs": ["a4NpdOzg3hr6ucHf", "7dbh2iKNUl0qJqzo", "KMRMG541PAiNjULs"]}, {"partyID": "x4SnKNXLMUaDSwwQ", "userIDs": ["lnNRZJHBSB4fZWEF", "IZs28Ff1kZp1Zktx", "3N7WNMYIfcDKbLu8"]}, {"partyID": "pnK34oA1keYXJvtg", "userIDs": ["gDdXjbdjMBahFZZG", "MTcqnWrIprOv0BJ9", "Sgl7H1sdH2RIJz1e"]}]}], "ticketIDs": ["I7Q5pu9PutLf6Irv", "ZoBGQbO4S3rURGWU", "zPAE6SdV4D5jftRl"], "tieTeamsSessionLifetime": true, "type": "3vyyqRzc20O7FdsJ", "version": 84}' \
    '9TVmdMKEohKzuMYD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateGameSession' test.out

#- 32 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'UTLBeCidXjuGgx8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteGameSession' test.out

#- 33 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"cXejmeZtzT0qj0lt": {}, "sqfiZrthVvyX0OCK": {}, "DJE3RMUddwSSgxCu": {}}, "backfillTicketID": "8zru1DhGAYOHR5BW", "clientVersion": "a9VzIkaQEl1iUPro", "deployment": "NB6hI6IpGcToWgFv", "fallbackClaimKeys": ["dRhG9NwV3zDuqVlV", "TypcYPK8IxrSZuxW", "l0Je4fJIyFAm3DQh"], "inactiveTimeout": 40, "inviteTimeout": 54, "joinability": "JwnPS2urJqerobWM", "matchPool": "ZGVL5KLTxahWlS6X", "maxPlayers": 6, "minPlayers": 0, "preferredClaimKeys": ["BaKSLCgOOPXM6XTU", "h2dJ90yqHDNacl4F", "9G6Dl5TFwBY6HKXA"], "requestedRegions": ["blkT8VGgSH8MGZGw", "iVj7eDTaka9ABfX1", "IByPEOuPhGspRi3b"], "teams": [{"UserIDs": ["hPQvBBJI5Jxytpcu", "bN4AUUPFPscZsXeJ", "OD4DMtqfIGiGJovg"], "parties": [{"partyID": "WSRxZ8N4UQ2fg3V1", "userIDs": ["o2x0hL5DuBDqMyIA", "zWze94MEdJFAy2JT", "llJkRGB8jqJEd6eq"]}, {"partyID": "qsBVyONV0JRtozI0", "userIDs": ["jpliCFQ6WgJpGPig", "dc5VyC4qvWjVac1c", "QvSxgTNIUzxDgBlI"]}, {"partyID": "buzm7DzJ20NFRJIh", "userIDs": ["FXR2dYprPmbpuptE", "CGd5cdXC2Sesc6y6", "8whNBYl9iCqfW6rq"]}]}, {"UserIDs": ["GOQny4ij4ysYPonb", "59gQffkNOmubxEJr", "2qEAuJbpZSrcbc4L"], "parties": [{"partyID": "WfKaY5c1tP5TDuI5", "userIDs": ["f6m4KC07CnsZe32h", "qEcB1ExYMBb3ckvo", "aJYdMqGegcg3eRvB"]}, {"partyID": "ZXN3cjIXmFWRJnj8", "userIDs": ["xN7HDPTUEDPN1Kb4", "UTPWDXTSb55g8LST", "s7Nf95lGlPrf6obI"]}, {"partyID": "dnI6Ag7eUYcYJ4Qz", "userIDs": ["XCmqr6gmPGaHP5SV", "PvRLiDi0mNHb6Lx8", "eq8SGNwEQO8dYXvB"]}]}, {"UserIDs": ["SYvJBwb6CjZUMRf2", "VJetWsokvx3BHuTE", "czr9KjQ3ttz8MTBt"], "parties": [{"partyID": "1xk9IyssSA8nP5PQ", "userIDs": ["jpzk2Tb7iYdmNZWo", "srsVBPZ64j0HUONs", "cofwYLQcDvkaEIIP"]}, {"partyID": "oJT83zEGXmVBZLyr", "userIDs": ["H9J7BoysmaORLkP5", "hc2Fh04JTsqDTynC", "ewqJligLlRxOelKy"]}, {"partyID": "kICRxF6HtlER2txs", "userIDs": ["4qrNARATn6KXOutl", "YBbLhL8KXx25FZfQ", "IodVBqQsBpCJBIXL"]}]}], "ticketIDs": ["GYcwWVRK6UKk5ozr", "XA4HZHNyq9odanhR", "1Zrm3thUvV87yfky"], "tieTeamsSessionLifetime": false, "type": "lug48TgfNu0rqXUO", "version": 50}' \
    '2phYOgT5kDTyPl3d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PatchUpdateGameSession' test.out

#- 34 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "KF7NXEjrJMki8jvc"}' \
    '3P8Gwjg3IOH0SDHg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGameSessionBackfillTicketID' test.out

#- 35 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'YKqxJiFJdrmj5vhz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GameSessionGenerateCode' test.out

#- 36 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'gsJwex7wq8ZPlXNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokeGameSessionCode' test.out

#- 37 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "UNgdY2vfJuje5cPn", "userID": "mGjTvYa5Pqx1K7qc"}' \
    'AoijBPAp6EPb988N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGameSessionInvite' test.out

#- 38 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'zxrDKVpULjjiw3Ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'JoinGameSession' test.out

#- 39 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "VG4DJi9DaMrc0WFg"}' \
    'KjE945x2CPVYYG9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicPromoteGameSessionLeader' test.out

#- 40 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'voGmAmvaVV5YfxnU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'LeaveGameSession' test.out

#- 41 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'Ncwjr7gSGhnfuF4W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGameSessionReject' test.out

#- 42 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "ZiQVICVpWd3UM08g", "userIDs": ["MXhdf3juXW4JprIb", "3CJCAtvSG8Cfa9dz", "OJDGCTHIOFjeXbsS"]}, {"partyID": "gR43kIDzxBwqRJTz", "userIDs": ["rHNZWUsq5lQo2jy2", "9EJigqYhyVhURx1y", "PeczRpdk0HATGylx"]}, {"partyID": "2JG2KNGfhzfCTxxr", "userIDs": ["sRRLee3TcJ7DQIi4", "5aCDHN9mVug2zkVf", "6KgpKOcn3tMD9UT6"]}], "proposedTeams": [{"UserIDs": ["7bOwugFDa6wUQveh", "KqwCh86XmRkCEcfH", "DCdl59Wp9A3tXGve"], "parties": [{"partyID": "6DdK6uvg8f2cIoBy", "userIDs": ["k9fxtvsgeAxo57nK", "AbZpsbJ4Iu5KJ0yn", "xGBlacDCdFe8ATUq"]}, {"partyID": "VxcSthrpnMUBsnUf", "userIDs": ["uQIcSbUt5UGkInFG", "puUsdtq4dOwNESzC", "EW9dUVhZjLftC3sC"]}, {"partyID": "S8CpLCqPD9CeDEdC", "userIDs": ["nnL6Kt1Bjj3b8QM8", "Rr45ULqXQgvwD3Ps", "KDJiWxQBwaS7rDBf"]}]}, {"UserIDs": ["2S54phbdyGDt47f9", "GWRlE9hqz6rjDNo4", "rhjxUdMM83WekqfW"], "parties": [{"partyID": "v04vvn9bk5qr8qs2", "userIDs": ["mqtnGAqXUjNypF6M", "MqWpdEJsPoaIbYz8", "cK5jlpJdre5ur6yv"]}, {"partyID": "WJDdvM7T7PX2vamI", "userIDs": ["RZHzsIYOCUoiCXNj", "rdQL2jdx1eIba1sB", "0HsJ06DzfbzRYt4O"]}, {"partyID": "VUyumBeIqdQGZC5k", "userIDs": ["M03HHijsQRj7N8IA", "jmsonjj0ZR50BQ1U", "6aFD3O2kXQSc58zg"]}]}, {"UserIDs": ["ZVl4gIF7v3qbZu9M", "3OxqVAT4H1lRZ9Z1", "JBrHRzEOtIxzPqb6"], "parties": [{"partyID": "n73m0jiaDH86d9rs", "userIDs": ["KgzCsMulpB8HZUtV", "VaJCiLgKOwrSfWhT", "5B4WedopzwSluBtR"]}, {"partyID": "FPKThyGnbjmPDKFS", "userIDs": ["6u9FHuv1M3qfch4S", "qIV6LQPHlaeYl4cs", "Fq65cU66yJaj4ovo"]}, {"partyID": "KWE4EW0sw8v5peiu", "userIDs": ["xoBJATauyD3XCXVM", "iyEvMf9yilUEujk6", "oqYo1HQYTFzwdOMd"]}]}], "version": 42}' \
    'RiW8dLTCBfGUdVEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'AppendTeamGameSession' test.out

#- 43 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "vdQL7sVwcZ2PofaJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicPartyJoinCode' test.out

#- 44 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'oSqtrEOqxH46fRTS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetParty' test.out

#- 45 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"ZoDdT0fefo74eg3N": {}, "t2c0r4GqF0NHglOV": {}, "uNZ9LzNeJnBurh54": {}}, "inactiveTimeout": 59, "inviteTimeout": 65, "joinability": "WbYb0Pebyt8b4DGs", "maxPlayers": 4, "minPlayers": 23, "type": "jwrizsFUgYwbaLvq", "version": 44}' \
    'xvkG9UR5q9neoW6J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicUpdateParty' test.out

#- 46 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"BcGp9Rx2RfcRhXpm": {}, "eeHdvphas9S7ivHE": {}, "oLbUMM47f1UreUpx": {}}, "inactiveTimeout": 63, "inviteTimeout": 19, "joinability": "kXIbE1ETzRJZKMav", "maxPlayers": 43, "minPlayers": 18, "type": "4Ul2IaieEbPSE7TG", "version": 22}' \
    'aZLpx4kEWYkO6KrK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPatchUpdateParty' test.out

#- 47 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'UMhJrASBh61hmWKS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGeneratePartyCode' test.out

#- 48 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'SrF35anDGvur19V1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicRevokePartyCode' test.out

#- 49 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "8oIrUKXttgAI2QdW", "userID": "JFLmoPEgd8EMspOs"}' \
    '8nkic9gj5vyUMAAm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyInvite' test.out

#- 50 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "IHYbsxG5N066FXb8"}' \
    '8SbLOa21DiSFsm0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPromotePartyLeader' test.out

#- 51 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'XQJWszvTQEuALzDN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyJoin' test.out

#- 52 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'p1SZ58aDllwzTRHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicPartyLeave' test.out

#- 53 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'k1MXxj7Esrg7900n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicPartyReject' test.out

#- 54 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'ml5BidsK9dCEzhVn' \
    'Ov0PQbVIaKiHfoeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicPartyKick' test.out

#- 55 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"rY7A1otGFyv2SMjb": {}, "Er50qGdCZIc6EFqB": {}, "KxbS7Q2OgRucL1jw": {}}, "configurationName": "RXzfjDZZBmOau6sy", "inactiveTimeout": 25, "inviteTimeout": 58, "joinability": "e06c6SKLc2mEC3IX", "maxPlayers": 23, "members": [{"ID": "f0lm6WBkIzjoSV31", "PlatformID": "tvmMB6jzrpRGESmo", "PlatformUserID": "oHiCV4GUOnXpapXQ"}, {"ID": "GRakUbcG7PcR4eiU", "PlatformID": "3Idi55jNrGNT2VHT", "PlatformUserID": "KuIT5FwwHj0Ur5F2"}, {"ID": "PWGTTD81xhNP4t6k", "PlatformID": "YBUjyXAn3bWQF6Qc", "PlatformUserID": "AiJpXIrgroixptZh"}], "minPlayers": 5, "textChat": false, "type": "q94RImNWVIJnhhwF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicCreateParty' test.out

#- 56 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["DV1VitaomvWTzdsW", "4N70wYS4Kj7Yi2Vv", "oQNW8Yc481dYdvGx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 57 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetPlayerAttributes' test.out

#- 58 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "AMDRA1LF7jdWlekF", "data": {"wO94VBCV9qJhWva2": {}, "FPBujX0geYCpGJM4": {}, "sqsPNJMiZXXOFwmG": {}}, "platforms": [{"name": "WAvNF0Z0GkwxUNYy", "userID": "NwGiKrknH0Y5mrQg"}, {"name": "LC6D2qsFiQHglUQM", "userID": "Zi5WjMZfOadpgegC"}, {"name": "UjTdi1Ehr8OtqpNJ", "userID": "9R8TuNy4ejmVA3vM"}], "roles": ["CsGyPd12B8QNUz0h", "FFNbH6j2W4roZM2U", "KAXEEsL5D0oiFchQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicStorePlayerAttributes' test.out

#- 59 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicDeletePlayerAttributes' test.out

#- 60 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryMyGameSessions' test.out

#- 61 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
