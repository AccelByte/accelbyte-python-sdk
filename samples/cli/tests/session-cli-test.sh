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
session-admin-get-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-update-configuration-alert-v1 '{"durationDays": 62}' --login_with_auth "Bearer foo"
session-admin-create-configuration-alert-v1 '{"durationDays": 39}' --login_with_auth "Bearer foo"
session-admin-delete-configuration-alert-v1 --login_with_auth "Bearer foo"
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "SessionTitle": "wYCA9kPI6LZrkq6D", "ShouldSync": false, "XboxServiceConfigID": "UzVRiXbqlAw7r6W2", "XboxSessionTemplateName": "ktQG0h5JAav5kRa6"}, "clientVersion": "2WopBJHPtcDs8bBZ", "deployment": "LCXLx8bbgorQeFbQ", "dsSource": "1g7qbPngUNB1vRod", "fallbackClaimKeys": ["wpzS6DaDpv8N7ZQV", "qGj6oDLjWjkY1aXl", "FcDtgOjchIua5tWE"], "inactiveTimeout": 71, "inviteTimeout": 59, "joinability": "JSDgY1TXp38zsCTC", "maxPlayers": 36, "minPlayers": 5, "name": "bCbPOyNQkT7NvyE3", "persistent": false, "preferredClaimKeys": ["8mAQLnzjMf8GZ2WB", "ZqxYG3aREAu2D6QV", "KNCWP75TB0i7pKxR"], "requestedRegions": ["8dl0zRVW4EZG9m0X", "cgGVbMqSszE8GHav", "j7AorKsxwkosAVer"], "textChat": false, "type": "pc1C8XfwHuKeb9l3"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'rGN9A3sNm84hddSp' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 69, "SessionTitle": "cBdW19m4eu6d5tA5", "ShouldSync": false, "XboxServiceConfigID": "duuyZ0GhDogqrhBR", "XboxSessionTemplateName": "d8lDR6qVNPRZYdFL"}, "clientVersion": "IAjGGJddVCvu9vx5", "deployment": "KQ7KYnIuMBvaO35l", "dsSource": "lzQRaT5kPxUfofvn", "fallbackClaimKeys": ["nSuB0y5WUlrMdI4s", "NveabntBSxTeIv53", "HGCiljvjKoyD6SCw"], "inactiveTimeout": 67, "inviteTimeout": 1, "joinability": "rncqmLtjQHAf8Tgo", "maxPlayers": 82, "minPlayers": 65, "name": "m03VLisV6zwPuo3t", "persistent": false, "preferredClaimKeys": ["0MesTCf9x4rt69ln", "a7qxNeIxPz6MbwL6", "IY69z1UaLqYSYWyt"], "requestedRegions": ["LPziZMdjxcBZufQx", "GiHPllG4cYEzfTD1", "ZBm3MqHcUmLZZbSq"], "textChat": false, "type": "mu0hpDDWVAla2l5B"}' 'YNtIuS5S5XUdjsoq' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'wGyzzWi9gwQYv7t1' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["o7TTr1DmrhZv15T7", "quIOvBMcaYmvCkGZ", "5dAgqxpBFmaLoxoz"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'r6wfNPX2bOItRMvq' 'tlB2jJCSQT279ZZP' 'YGu0rdlgdWyOtXi3' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'choQrpOsDBU5Sepj' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"ChB3V0v52Dlym6pu": {}, "Q23xoJ8aeCnaLpUK": {}, "p44YUDjasWIPUvmE": {}}, "backfillTicketID": "ejtGeoyIPa8ZRrvj", "clientVersion": "j7il35MXbN9oCMNq", "configurationName": "q98SjTvhZNkSQ70D", "deployment": "0H6BXksUC9b6i5lZ", "dsSource": "C9xv32e8c5csSovo", "fallbackClaimKeys": ["qsZNBdte9NDUPVJf", "6c2Z0QZxfgPubTDI", "HrvqAThuwjRHpKKT"], "inactiveTimeout": 24, "inviteTimeout": 29, "joinability": "mVr9XuoJbRFQSKVP", "matchPool": "Hbn4Xxtu7LQRENjE", "maxPlayers": 62, "minPlayers": 95, "preferredClaimKeys": ["ztx1WsYSiZqan0nS", "BJroav91GXlvPG6b", "FYReVHQipcCx9Zw5"], "requestedRegions": ["D2L7vIYhGGSyEW4Z", "JJ42d3PBddN8S48l", "9lyNApflxqMrj3oZ"], "serverName": "k03QXcKMDYDDxHSZ", "teams": [{"UserIDs": ["jtqXyJ58f7Gc26Sa", "iGVkydwYWQG26yUZ", "NmTBcvrbYCwZtxFH"], "parties": [{"partyID": "yPLtI8ilbyDPUIj8", "userIDs": ["8cekdqCt81P1ktfI", "ovmv9gsR5cJcHm3S", "ZLxoRDFuuuySj29a"]}, {"partyID": "9LJE8HoRS1X2PFAA", "userIDs": ["MwzHPxB1UskYs4Yw", "20DOqOBSC2DKHRuP", "MMWH8Yb33T5UBJCj"]}, {"partyID": "fcnLRfxeCSz9WEi8", "userIDs": ["KlloeH0JT1yduat2", "vQR3biBfsu4jmsRE", "2w1yEkLgh3tIYt4S"]}]}, {"UserIDs": ["qYUTLDx9gIiDandp", "GT2t24aOMh5eC3IH", "eHSKLCa3xreNDUWe"], "parties": [{"partyID": "hwH3q31A806DJgas", "userIDs": ["4b6z3LNUj7fdgLA8", "4Z8YYk6QEgJjBbED", "oNf3n0hEoRCAcf80"]}, {"partyID": "zfFyabWAgIUXiI07", "userIDs": ["A68eaqC2J9jyEW6G", "Lbc0NaKDUL3sa13l", "k1dQBHO86IlBhnet"]}, {"partyID": "U4RwTqUXlTDBzOuY", "userIDs": ["saZA2yyd4mbqoOfA", "DMMAXFaY9eKa699b", "RVhyaKwwrAP2aMlu"]}]}, {"UserIDs": ["7WtjCtoYetOO847g", "8OudOfjnCuHZ3c46", "IjGa23YvYmmDg7VY"], "parties": [{"partyID": "PXIuvUYTZBRujIUE", "userIDs": ["1Tq5jyAZvkRCMNFI", "urjh2imdb4rbkXj0", "ZwsVC0gL97ZVJSPq"]}, {"partyID": "Jiwv1qlYB1RSKs6g", "userIDs": ["QxC3Gb7S0o4zGYY7", "KQI1AeFgPqaOkvo1", "aolB4lkKB4EYOkQ1"]}, {"partyID": "jMD3cym8xIfkOVW2", "userIDs": ["grREOLx0KOww3HIC", "QLfl7MUBG7qtPu64", "yAtURKLRkb738HGS"]}]}], "textChat": false, "ticketIDs": ["rDgMdIIlhS1fSiM9", "331m7Ta1PsKc50Kv", "6ecnEevcAx2K2zkR"], "type": "enmPZnGBt4P7Wnbd"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"SJtjX7ZshZyZl5x4": {}, "bRXBHUTrDzZSKscf": {}, "OcYu3dpCROYqUiGK": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'XVFCmpo6sPwVOEDS' --login_with_auth "Bearer foo"
session-get-game-session 'JsEK5QpNhlI2iS5E' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"pGhhvXYck0upMzUY": {}, "nb76tFkEORV3bu1b": {}, "NCtX7W40V6Do5sYa": {}}, "backfillTicketID": "dCCFrHHC3DpZxkrQ", "clientVersion": "DXuNFviMarv8mnfH", "deployment": "K8CCmE2lPnsbD3SG", "fallbackClaimKeys": ["EdlwuUccE536ugBp", "3HBvepnDCjgyJlXe", "36mgWjLfFmteue9n"], "inactiveTimeout": 52, "inviteTimeout": 75, "joinability": "J6fH24T805tVg8Jq", "matchPool": "U0jZpjvsugAOS7u8", "maxPlayers": 90, "minPlayers": 73, "preferredClaimKeys": ["iWyerCSa8SRgwsAj", "1ik1jglaDXTvKCWw", "NTAhd2wrS0uPdjhd"], "requestedRegions": ["inpng5BLy8wbhMss", "AHjapIkY9Rf4wP57", "dBZNR88YbCtmKy8M"], "teams": [{"UserIDs": ["9zVrjfGXZnqAQUoY", "1GjlIIk0iKoTTS1j", "02o7JjTXAQN0qdsk"], "parties": [{"partyID": "dQV0TqI8EFnmDbxI", "userIDs": ["xi4YKlONk2Q5Y4Jv", "aizwiilatuUjjt9l", "IMGql5ElEa9EIIlG"]}, {"partyID": "cHB3CfR3ncDlwi3v", "userIDs": ["3MFFJ1KesKoELCpo", "bBEG8X645xpdXpai", "0rYaT5hOPjaf3H0t"]}, {"partyID": "YighU0VUfcYHJbBf", "userIDs": ["AKSiPW3VgsZXiR1D", "J7HVWqMkNSawQUWD", "FJvJBWic7UkBeIXu"]}]}, {"UserIDs": ["qDuAXI66bQ71w0de", "oV9Lx5RDA1l2Xcrc", "iYNEzvSZIPkhSgOR"], "parties": [{"partyID": "cz5S5BvmgBLxh4ij", "userIDs": ["FnE3Tam69qSZ7PC6", "f6QkmZXElW9YfRSs", "e6AAz3S4czz0QKFl"]}, {"partyID": "AVmVLu4AOec0z8eB", "userIDs": ["eeoip68J1nsv4W2O", "JhtafxMSJlHeb34s", "ZKHcl5LLLOexL4fZ"]}, {"partyID": "vWtND2tcBFpX8lNt", "userIDs": ["FEJ7tnkY6Mca5afj", "12K2IzrBvvWm4udE", "0OXudXgNne8kJATw"]}]}, {"UserIDs": ["lc6esUp6Sw1I98je", "ZQ7hfxnhLd3Knakn", "oed9DHhLOqQGhCUr"], "parties": [{"partyID": "6iTrjyEgarAdNJOI", "userIDs": ["G36I6tRbRcrEveMd", "AdiPKDUVSC00PYeD", "cagginxnFIna3ydd"]}, {"partyID": "cbsPheTH26IUJNvY", "userIDs": ["uGRUvpZaHCuESOiI", "ZsMfB4ZH3mtgWgU4", "pCAKxeE70CaunQNx"]}, {"partyID": "ot371W9G4AvQkqsG", "userIDs": ["nmyo5JJTUVmb8GEX", "FTlEMEsFzYqwgK1N", "p5nodqpLm7FhJBNX"]}]}], "ticketIDs": ["zAFdO0Khqf6kiTdS", "Gv2LFjAKY7CbgsWq", "FWZX7kPBom8F9GLL"], "type": "TG8phc3n4iLoIllK", "version": 24}' '89hmguB8FOTjMLo4' --login_with_auth "Bearer foo"
session-delete-game-session 'b9rIzqYkEpstyVTB' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"crM8rG0rH0zcswwV": {}, "eMK6MbGIVIu8vvwL": {}, "c7KY3uVoJXTIMtpg": {}}, "backfillTicketID": "kieDyF97lGdMiHKx", "clientVersion": "bWCYzo8yO2KTK9tm", "deployment": "mOnYnOpas6ghP1y4", "fallbackClaimKeys": ["Zi7s7QBlk44Z44B1", "GZgKg4uKxaCgcGLu", "C3brWdTYCfHkIySo"], "inactiveTimeout": 20, "inviteTimeout": 32, "joinability": "5DiXZtLW87rGysry", "matchPool": "od3dNQrmsApRA6HX", "maxPlayers": 31, "minPlayers": 89, "preferredClaimKeys": ["UA9gxo8SV38nEhoX", "mM2W7l6jHMA2rG3n", "akopAywelu01nryE"], "requestedRegions": ["J0NqoTow0qiOiC4j", "0iktm0ZPLkLOsp0L", "Z5njN86Hl8kUXzt6"], "teams": [{"UserIDs": ["bSc6bWvgpVyW9dD1", "kOmvrAejcq2LgkQu", "aS7RBx3vim02jBOx"], "parties": [{"partyID": "rZDyvpcLYOWA8Njx", "userIDs": ["OnaEok4nOOCzfsfl", "hjbngJOUn18G5Mlf", "DTk8aG40NlncceIZ"]}, {"partyID": "SwgAIkgzh4pTU0Am", "userIDs": ["4DZhl0bQxFJ3sWCq", "QpQ2FbKPFMycMSQ4", "qfAacR0LgB5BUXvj"]}, {"partyID": "cu2s6w3VifnKqmTS", "userIDs": ["oGH1XEfY6QAYn6WQ", "5UBEU1QAOHfZiGhx", "OdcuDXSxSc3aZPV8"]}]}, {"UserIDs": ["7pna08gxefTYKhux", "aEc7M4P7UckSC6eP", "eN8i4GrFES9z7xue"], "parties": [{"partyID": "HpATHccee9GXhKcj", "userIDs": ["mSEwdrkEnnqKzFsL", "fYalUlfwEQKjU7eH", "GebSVu0LQ40kepEa"]}, {"partyID": "C4dfiOMZfEhHr39p", "userIDs": ["ysFO3Zvc1BZG99Ly", "vfvHEsJKQQewVLMU", "oAnaRcYp7FUjfIGa"]}, {"partyID": "ffoflEIByYqeKN0m", "userIDs": ["eGelYF5wWaDhukU4", "khGG4vZFTYnPkmSu", "4PWam1jxR7SETWjt"]}]}, {"UserIDs": ["eoc8fgvZDDhoO05o", "KqymxLD1Lcvw6T6m", "ZEiwxxElpMYSWIeV"], "parties": [{"partyID": "zm7z9noowmlTIKVo", "userIDs": ["wi0RY2VN4ZONJREd", "UQ3z9F1BxNNgnke4", "akncw7wu9TmXfJWB"]}, {"partyID": "Prx9Ns8eLzYEvwSW", "userIDs": ["TaLQjctvrK2jhsYp", "KPlXn77AtYoFzLAA", "TPY8P8P3cfoivvQx"]}, {"partyID": "evecWw7Rry0KK5rg", "userIDs": ["AGO0dW8rX2MVUGKS", "Z4GcLkt4pK32sJxl", "ZcCTpTdRtCHvuk6B"]}]}], "ticketIDs": ["6XTmSLyn50sigBVZ", "xiKdV57GvRyd9UuL", "02Le8HSCslsDd4M1"], "type": "F5qRIblS7Nz81GRa", "version": 53}' 'UetzCAWc9x1aMjgG' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "im51T107XIZRZ7tZ"}' 'dIs0xf4czdt7zqmS' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "KxOEQlVcx6GqsBq8", "userID": "vdhWVnuYLgpZehK0"}' 'G2nmyuViB9kRTcSQ' --login_with_auth "Bearer foo"
session-join-game-session 'dTnNYGeAfYFG3wSk' --login_with_auth "Bearer foo"
session-leave-game-session 'HKufBdS3ZOokZB4c' --login_with_auth "Bearer foo"
session-public-game-session-reject 'XnAXyuGz6LlxHv8S' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "wyagYvDJ3w3UNgIG", "userIDs": ["j2jZtEYT8sIPSE1X", "XPzySa0sZoFS6xCO", "WMpyh9pMsQgb64EL"]}, {"partyID": "bzDMwyo4nIRysQdb", "userIDs": ["ufXjYnSoIFeouC2m", "38kXrDZWlGVE9sJ4", "NpUtKp6M9I6nEwnZ"]}, {"partyID": "hsjwJeGwaPSDMZz9", "userIDs": ["5OYKiqaZD63xe5rr", "uJVfLGea0ZtlzUcu", "HAXz0UV31MfuGaXs"]}], "proposedTeams": [{"UserIDs": ["AuGsZaSHevO0TQNE", "I3kfabxJWWSI1ECU", "o1NPpeFhUztXDgB7"], "parties": [{"partyID": "n4C97uAPP8PATLpU", "userIDs": ["pxeJlsBJT6Hh3OMj", "Ajq2mK8lbSEEelxn", "b5QxWG2HFnZlA6HK"]}, {"partyID": "WW4fI1IQcoBQELcN", "userIDs": ["lZkqTZrKgXNwvm4e", "5GX6H742OixhtAoK", "iVm6URT95XhnUcvW"]}, {"partyID": "B28MpusuhhDJ5slz", "userIDs": ["giWZEtyd56LfxnbY", "97jjYgXchCbkXX26", "uEdCfQaMAQuTKfC0"]}]}, {"UserIDs": ["I2kNjCMDtDMrentg", "n3DhqciwIeShF9RK", "b9vvxuJlhXbWhbwP"], "parties": [{"partyID": "wToC6knjVwVnzaqS", "userIDs": ["fJiQFC2gXoda0kg1", "6yUSpSOAjHJWwfCj", "YwWkLob9gKLqs2nE"]}, {"partyID": "ZhpByfHZinxNfgPA", "userIDs": ["wkMBsznlBUqnLT4A", "bGptKaWNvPbpg7yr", "RvXfZ6rvgvEY3Hht"]}, {"partyID": "1SwqTsKKKo37NHDO", "userIDs": ["Qe91Ps3ztUIV0dS6", "hIH9c4VfkyrwpuXx", "baERbfgPmi0eHkt1"]}]}, {"UserIDs": ["mr9EOIFg0dnWIYN2", "NVL70Iw157g00jr9", "b8MuYmmeKTmBNvGY"], "parties": [{"partyID": "xEQdf3ewoGGoY7xm", "userIDs": ["FNAmjDDCvs78mcMd", "iS76YApGJ9ufwLYk", "qIgLuZS6hsQryiEt"]}, {"partyID": "OAbpeUNf26UqkCfg", "userIDs": ["CUYBn2xaOBdPF0Jm", "X8qwU1cTuHHPB5S3", "DvPRCzBrVUxmDOj3"]}, {"partyID": "cvRFaTC11W0TGTCm", "userIDs": ["4fZWuk6pQxDQpKqx", "LGeMvr9TsvcMQ7dB", "saIecRxIsZvD6rmz"]}]}], "version": 97}' '0YbuU5ar5qTLWUCy' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "0Afgc050XIZRW491"}' --login_with_auth "Bearer foo"
session-public-get-party 'e94mQjVOOBnIWhun' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"ElqZUodp3IhtCSHy": {}, "1ei1fIrPvfHnRN06": {}, "EjRwEQlNapJRfk4f": {}}, "inactiveTimeout": 76, "inviteTimeout": 39, "joinability": "cw1pEHAyNFxcVTKu", "maxPlayers": 54, "minPlayers": 78, "type": "QTGh5BxjWOozGoDt", "version": 39}' 'kaPj0O4zd8Tb7cUN' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"GPTBxiFFCrn7djjs": {}, "69FTFVGUVhvKhJCm": {}, "eisql14mUHVbMPim": {}}, "inactiveTimeout": 81, "inviteTimeout": 3, "joinability": "hcZsU3VAdMDcb4ql", "maxPlayers": 21, "minPlayers": 26, "type": "iFAamqvZI2KwjqPB", "version": 18}' 'nLocLVVYamQc4wcG' --login_with_auth "Bearer foo"
session-public-generate-party-code '5nDBLJoJHbiQ5duE' --login_with_auth "Bearer foo"
session-public-revoke-party-code '5p4cfs2E41cK8QTw' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "iIAvxSvNDlmM5nQF", "userID": "MGzs7fzjgyc44mEh"}' '9tRk8knYSV30lnro' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "QehMDli6t9unQLYX"}' 'xm09wpGAbpEmDY9v' --login_with_auth "Bearer foo"
session-public-party-join 'Lh3u6EDsUmrV6kH4' --login_with_auth "Bearer foo"
session-public-party-leave 'OotKwG3UC6XCnnZx' --login_with_auth "Bearer foo"
session-public-party-reject 'F8CmQr17W65br34r' --login_with_auth "Bearer foo"
session-public-party-kick 'BBN9tU6TDm5GloFS' 'KWM1eym5ydC6p25x' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"CWTqUOYZENJ1QHZQ": {}, "xPRXH7uxBJEECQE1": {}, "li3Bg7Jxc9pUnZmv": {}}, "configurationName": "hidwCkZwqjYLfTiC", "inactiveTimeout": 83, "inviteTimeout": 26, "joinability": "1NDBvQvRPnAz4VzW", "maxPlayers": 26, "members": [{"ID": "CpoBCbyJsF5IjF1c", "PlatformID": "0W338HS6CBgVRyih", "PlatformUserID": "YNZ84CVhziXV8HwS"}, {"ID": "mvcvcDKF19yVRafC", "PlatformID": "jOuSYht83AdvBaag", "PlatformUserID": "TiRJ8daGTVX3Bb7j"}, {"ID": "lz5IfHgKjI9mwJSr", "PlatformID": "N8jkIykR2zbaI6PD", "PlatformUserID": "7fEscShnGUGUtV9G"}], "minPlayers": 72, "textChat": true, "type": "9GDbLNwjm3FK0nnX"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "CcI8y3Cz0YqCKUh5", "data": {"RD9vNAp4jinFpnQ5": {}, "xF9wwbvMZyeDeRnV": {}, "fPUa6xVVBcq3wZpF": {}}, "platforms": [{"name": "IYeAg79HcLJXJ7mp", "userID": "VI6eTYAjdPlCiQQC"}, {"name": "35cj4KyOVgvnWbfR", "userID": "JtsB7cUQZ2QUAxJr"}, {"name": "INPXppPNO3AfmXcg", "userID": "wC3IN6tvKgLB9QmJ"}], "roles": ["IOq9dP5szG71utjs", "Q4CrRb9gUCeVz7fW", "bZIdhevfZvyV7Aco"]}' --login_with_auth "Bearer foo"
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
echo "1..52"

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

#- 5 AdminGetConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-get-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetConfigurationAlertV1' test.out

#- 6 AdminUpdateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 8}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 9}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminCreateConfigurationAlertV1' test.out

#- 8 AdminDeleteConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-alert-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationAlertV1' test.out

#- 9 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 5, "SessionTitle": "A9t2ENKKWrFtHIi1", "ShouldSync": true, "XboxServiceConfigID": "u4FnS98QqftSjq7s", "XboxSessionTemplateName": "n8yreciPLfkVyyJs"}, "clientVersion": "bGpO6JgehDJxEN7J", "deployment": "lZc8LMq1o2jZWu4y", "dsSource": "A3r0u4q1bTHXIjfJ", "fallbackClaimKeys": ["KyFlM0u1uuoVdn9y", "VoSlKNchPHNL4X3L", "LaGPGdqLE8Sohhhu"], "inactiveTimeout": 18, "inviteTimeout": 45, "joinability": "TnJarYYkHBDdSzBX", "maxPlayers": 8, "minPlayers": 93, "name": "xapwhd5IQYBQuxLv", "persistent": false, "preferredClaimKeys": ["uWYvE3fsNy9Z9Ohx", "XvCp9y7fLD2qfCXn", "lUnqxT1WsRNMZcA9"], "requestedRegions": ["2hzC7MNa8vVe4MHX", "6AgMep90AyyUJyAK", "5PRMRMwdvl0hv6g6"], "textChat": false, "type": "GxBW2tQF5tkTjgJa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateConfigurationTemplateV1' test.out

#- 10 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetAllConfigurationTemplatesV1' test.out

#- 11 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'MYvNQOsDa4bkcgep' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 34, "SessionTitle": "r7XjdyRJunZPkp6c", "ShouldSync": false, "XboxServiceConfigID": "k7Kaol01DK97D2xn", "XboxSessionTemplateName": "ik42miteR5eQAe1r"}, "clientVersion": "zmmgqBPRmd6mO4oI", "deployment": "8KDqebm83raNBJ5y", "dsSource": "7axEkvI4oxZEDxGi", "fallbackClaimKeys": ["BnNbn0zaf7CaOSlH", "XrUSA6sMJzA5mtqI", "SQ83TTbtefXWznDe"], "inactiveTimeout": 66, "inviteTimeout": 76, "joinability": "e9PdbTTAJ2Gp1r0s", "maxPlayers": 97, "minPlayers": 80, "name": "Z6LJAOddIL2l3hPj", "persistent": false, "preferredClaimKeys": ["DKv2LWfXqjr8fS79", "En3wYowBdkaZ3y6i", "38XQjLDRqkpiFK5B"], "requestedRegions": ["tiQ272Uo9UBJWodp", "dwsX1jorcyR0x3Yi", "HF8ITGPRQBCgIs1Q"], "textChat": false, "type": "lzxl0yF5m77TTh4g"}' \
    'Uoj8u2WRcLiEtzVl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'nkflfn7pHY48F1dl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteConfigurationTemplateV1' test.out

#- 14 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetDSMCConfiguration' test.out

#- 15 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminSyncDSMCConfiguration' test.out

#- 16 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryGameSessions' test.out

#- 17 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["1q92m3iRlfnBAk0C", "wiAsR65yQ9ssuHdG", "mxncCEr0KcgeqzGb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'ruNB72HHMkjzyBB4' \
    'UFKiaoV0VOem2yqP' \
    'sMFxKybPkbuS6x9c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminQueryPlayerAttributes' test.out

#- 21 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'LJ1APnNlsa2bRBr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"7fVMWuAfDqLMR919": {}, "IZPKOKiAVQXXOmqF": {}, "HLbyXmgCNiXH8uen": {}}, "backfillTicketID": "bC5CphgMweexsIAP", "clientVersion": "5vHLjBJ9iqMcBL4B", "configurationName": "zhDUjhKPwbwcvQU5", "deployment": "kG8bXGFmPAnOkDiJ", "dsSource": "q4xQye7HqnVK3YVe", "fallbackClaimKeys": ["OWs9mfVQh3jLBtn9", "pxpE7BYtzB0B4Cxy", "QrUpIFvORxTi79Dp"], "inactiveTimeout": 91, "inviteTimeout": 59, "joinability": "jb39ukcR6c2E2r3v", "matchPool": "k3IfAKEbqcNXSGCC", "maxPlayers": 44, "minPlayers": 80, "preferredClaimKeys": ["FP1OW0nXOErQPS4V", "sRoYIK69yg9ADCGi", "XaLs2xjHkinOD975"], "requestedRegions": ["nARHCmhNHSXuqIHs", "xvaUoXDmwWsukxnc", "uD3QxCXMd00YBWCa"], "serverName": "VVmM45mfIZsWhkS4", "teams": [{"UserIDs": ["76dGGJwJ00UH197M", "J6zU7JLMQyMWzYQC", "AaPJgoxGJoJaSzUt"], "parties": [{"partyID": "Y4ZD0Xtb0U4pH16N", "userIDs": ["UsVY21NVIs7NRen2", "Y3Ns0QJQeaWytPfd", "s1BYx0EaURydf8Zy"]}, {"partyID": "yZeHAWGgJUbUJRMb", "userIDs": ["kcTglbU86FyOjApN", "HBVfNOURcjY3YYT9", "oTynmfIuBWgJTNFf"]}, {"partyID": "M8M0IW4oe8KDgy0x", "userIDs": ["ZfAcNg14Ws8TIP1L", "KiFQoLDvumfqrgSf", "nx2h61X9dN1MGRXB"]}]}, {"UserIDs": ["J6mVV7JS9qjNLwvI", "8JdiY3RRiLilmOGF", "6dLLIeIVIjMcdlbd"], "parties": [{"partyID": "RXTGIrdNL5gJPqTA", "userIDs": ["jgqaTHf1ANTJ9Yk9", "97XkGOdC6ItxDT8p", "4n4XCFkD1AJLCwsz"]}, {"partyID": "bZxuHSgDOK8bjoF7", "userIDs": ["bL2635KbtZTGJpqg", "l2IzNXGTuQPIDpor", "7t1aJLNNz6QIVC9M"]}, {"partyID": "fuc8VOsnmnlVljdW", "userIDs": ["YmELe74p38vumnxA", "nYBTxaTIz0jcgDI8", "Pkz96vd80msqIm5b"]}]}, {"UserIDs": ["ufnBqrpLeqhwVhjn", "njKMEmtbiWsAQHbM", "rKYi0Zxs5SWCqZXH"], "parties": [{"partyID": "LLa31oQf7BULnZDh", "userIDs": ["utDM6BqguqD5xxGx", "BWtnTKUe2znsqPzP", "kwCBo2SwCUsTag4M"]}, {"partyID": "LAo3m61P2xaNfmn8", "userIDs": ["Onb1a9gMz0F2UBRm", "MhAbUWmFhdYLWzMu", "v3zkUY0n0BAZkwbY"]}, {"partyID": "kBLyO6A0FqfhnaB3", "userIDs": ["YxKNdOTacCcJfIfX", "shuLUk5WdpxjZx5n", "oXPhPUTKbonoucNm"]}]}], "textChat": true, "ticketIDs": ["T9vayLLiizac7Ge6", "zKJdlt7rjF5RaJwv", "kWVco2LTo5ijlvDF"], "type": "8qBWCQ9dLWYyS8zd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"hMeBXH8x6HdVfZVD": {}, "AiU6iJOF7JKZFNk2": {}, "NKy59X8iOg2sVBiC": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'oeC5weXJl7PeiMH8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameSessionByPodName' test.out

#- 25 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'z8dVej8N2yv6VTnO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetGameSession' test.out

#- 26 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"K7xAvM7tuL81lsR7": {}, "xxSVp3Gd2TK0HzYv": {}, "iTgYmx82JVBRLPZ6": {}}, "backfillTicketID": "Iz8tne5dbguBF6Gs", "clientVersion": "vvdl8jHz9x7XZIjU", "deployment": "4IK9lOLaZaMphKCq", "fallbackClaimKeys": ["Tq3EVheJjoEEXBLI", "xGnNuhoJM3WWPvvC", "iCf33ViEdqQpoGkU"], "inactiveTimeout": 100, "inviteTimeout": 100, "joinability": "Nizk5UcPAGv6c1ES", "matchPool": "C6hZYTYZbzf5aANN", "maxPlayers": 82, "minPlayers": 100, "preferredClaimKeys": ["s5kgSZZNUHbIT9sz", "ApmWJO5vzzXZj08a", "6K1XRVfriSpPFnZB"], "requestedRegions": ["JZkDnEiyfa2LrnpZ", "xNnLRH36bqS2oFY7", "6PU1AziBOHEAj1cT"], "teams": [{"UserIDs": ["3u6Zc2FbrTFznTgD", "IwZIRWf6T3by2kYS", "CdnFKLc0xcTjqjdc"], "parties": [{"partyID": "EfU61OJYMnW49rWy", "userIDs": ["np1ck1vT90C6o86c", "SRL9cgbUmulhe98o", "aFKlQicdrxVhrtwS"]}, {"partyID": "d9QWVMYz7TU1Tsxs", "userIDs": ["ChSclSkb5aBi9K9z", "yv6gFZXI5nXJ7hLi", "6HweweRmyo91dIn7"]}, {"partyID": "QqXBDXJcrqKmXDwo", "userIDs": ["EV6tCdrxw1KOPhuv", "HuYrGWDK41uMOC0m", "RvSoaGk4ktF5wnJD"]}]}, {"UserIDs": ["g9Q3WXiydCOInVol", "sr6CHmj763vLwtYE", "JTSiXjcY5ZPkv90l"], "parties": [{"partyID": "yKSTWLxSFZ0LpupE", "userIDs": ["i5DbkVs3qFTi1t53", "0Wj1WfzIvc3VlSXr", "A3XUGud4tVjmxEf4"]}, {"partyID": "XvVhFJTxFHITBg9x", "userIDs": ["4unq3eOMHIKeTyBG", "5dCUoExnKfV3869I", "N4V1OdhH4GVU7Exl"]}, {"partyID": "kmc4xYiLjLyZrXr9", "userIDs": ["Bhtzn8jAdTn6xBhr", "ciryLm67rkadH5Y4", "1SLjCPrFa05Xl5TP"]}]}, {"UserIDs": ["C5GODS44bmm7jPdK", "LddfdsUqjXVzW1Qq", "xnWR5sheLgsAF4ct"], "parties": [{"partyID": "v5guycGiq9j2EyIk", "userIDs": ["nfLDpgHnMOn8nc3g", "UZ8ZFyyEr0KBXuJB", "qK4QtEydPWLPBYiR"]}, {"partyID": "3UbJc1ZYapx7C477", "userIDs": ["etqgfOJDUT0uKAPr", "ARya2IMlNiXpF4qv", "sUUpHqi33TcBGkc0"]}, {"partyID": "HjUcnkpU9oVzl2kB", "userIDs": ["uLFXIeCEKZUTz3Gv", "CAZ5j24acYHbrryH", "B6GO9zP3FaepA3b3"]}]}], "ticketIDs": ["YJ9nJM6vtT27xv85", "K5MU2qmbeqaVemIN", "dClpF7OvlBIEgjse"], "type": "5kd6GEDo08yq5E5H", "version": 23}' \
    'wc5XmkCuL5W4tKt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGameSession' test.out

#- 27 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'G3j9LYdG7xVPqBqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameSession' test.out

#- 28 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"9RDQMBSYAFLqp8PF": {}, "5hCcoukWpnbz4ys7": {}, "j6lxuU3u2HEG0qfK": {}}, "backfillTicketID": "egvFTD1sPykS8YLm", "clientVersion": "wtYgWGcA0h4G1LZ1", "deployment": "HaX5UBMbsF44VTsL", "fallbackClaimKeys": ["DRzdq22cbnyK3ggF", "Dh2kaZP7pnnVfxPw", "c259HF9ejHaILQru"], "inactiveTimeout": 55, "inviteTimeout": 42, "joinability": "FEIu44u83ZLRxYlY", "matchPool": "qlpq03BGdIk4oEog", "maxPlayers": 64, "minPlayers": 49, "preferredClaimKeys": ["VGR71rJOBy6lsj1A", "KGBjnHmaAu4YK87D", "YAWWcbcbGWmKgE8C"], "requestedRegions": ["Z4AELr5lraa5v5P5", "Cj8hgFsqHC9h5JPi", "MEtgKuiGTYgwWv5X"], "teams": [{"UserIDs": ["ldL6rOVGcRAn51rV", "AQSxp4qTB54mKA3V", "9DKlCeZ7mLYsHooO"], "parties": [{"partyID": "IaxIpb1cIOJPS3lJ", "userIDs": ["80YJ41U4ooQ980yw", "mg1pWpWit1QC7FKe", "0fnHUlmU1unGKM0t"]}, {"partyID": "gfeWy47bbwMI4gGm", "userIDs": ["vK9gW596FwBNrFXt", "3TAuKBwBcD12ae6r", "3hHwya4NpdOzg3hr"]}, {"partyID": "6ucHf7dbh2iKNUl0", "userIDs": ["qJqzoKMRMG541PAi", "NjULsx4SnKNXLMUa", "DSwwQlnNRZJHBSB4"]}]}, {"UserIDs": ["fZWEFIZs28Ff1kZp", "1Zktx3N7WNMYIfcD", "KbLu8pnK34oA1keY"], "parties": [{"partyID": "XJvtggDdXjbdjMBa", "userIDs": ["hFZZGMTcqnWrIprO", "v0BJ9Sgl7H1sdH2R", "IJz1eI7Q5pu9PutL"]}, {"partyID": "f6IrvZoBGQbO4S3r", "userIDs": ["URGWUzPAE6SdV4D5", "jftRl9rZmtQUvro8", "TWwXWsz9TVmdMKEo"]}, {"partyID": "hKzuMYDUTLBeCidX", "userIDs": ["juGgx8ncXejmeZtz", "T0qj0ltsqfiZrthV", "vyX0OCKDJE3RMUdd"]}]}, {"UserIDs": ["wSSgxCu8zru1DhGA", "YOHR5BWa9VzIkaQE", "l1iUProNB6hI6IpG"], "parties": [{"partyID": "cToWgFvdRhG9NwV3", "userIDs": ["zDuqVlVTypcYPK8I", "xrSZuxWl0Je4fJIy", "FAm3DQht4JwnPS2u"]}, {"partyID": "rJqerobWMZGVL5KL", "userIDs": ["TxahWlS6XdBaKSLC", "gOOPXM6XTUh2dJ90", "yqHDNacl4F9G6Dl5"]}, {"partyID": "TFwBY6HKXAblkT8V", "userIDs": ["GgSH8MGZGwiVj7eD", "Taka9ABfX1IByPEO", "uPhGspRi3bhPQvBB"]}]}], "ticketIDs": ["JI5JxytpcubN4AUU", "PFPscZsXeJOD4DMt", "qfIGiGJovgWSRxZ8"], "type": "N4UQ2fg3V1o2x0hL", "version": 94}' \
    'DuBDqMyIAzWze94M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PatchUpdateGameSession' test.out

#- 29 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "EdJFAy2JTllJkRGB"}' \
    '8jqJEd6eqqsBVyON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateGameSessionBackfillTicketID' test.out

#- 30 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "V0JRtozI0jpliCFQ", "userID": "6WgJpGPigdc5VyC4"}' \
    'qvWjVac1cQvSxgTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGameSessionInvite' test.out

#- 31 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'IUzxDgBlIbuzm7Dz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'JoinGameSession' test.out

#- 32 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'J20NFRJIhFXR2dYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'LeaveGameSession' test.out

#- 33 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'rPmbpuptECGd5cdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionReject' test.out

#- 34 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "C2Sesc6y68whNBYl", "userIDs": ["9iCqfW6rqGOQny4i", "j4ysYPonb59gQffk", "NOmubxEJr2qEAuJb"]}, {"partyID": "pZSrcbc4LWfKaY5c", "userIDs": ["1tP5TDuI5f6m4KC0", "7CnsZe32hqEcB1Ex", "YMBb3ckvoaJYdMqG"]}, {"partyID": "egcg3eRvBZXN3cjI", "userIDs": ["XmFWRJnj8xN7HDPT", "UEDPN1Kb4UTPWDXT", "Sb55g8LSTs7Nf95l"]}], "proposedTeams": [{"UserIDs": ["GlPrf6obIdnI6Ag7", "eUYcYJ4QzXCmqr6g", "mPGaHP5SVPvRLiDi"], "parties": [{"partyID": "0mNHb6Lx8eq8SGNw", "userIDs": ["EQO8dYXvBSYvJBwb", "6CjZUMRf2VJetWso", "kvx3BHuTEczr9KjQ"]}, {"partyID": "3ttz8MTBt1xk9Iys", "userIDs": ["sSA8nP5PQjpzk2Tb", "7iYdmNZWosrsVBPZ", "64j0HUONscofwYLQ"]}, {"partyID": "cDvkaEIIPoJT83zE", "userIDs": ["GXmVBZLyrH9J7Boy", "smaORLkP5hc2Fh04", "JTsqDTynCewqJlig"]}]}, {"UserIDs": ["LlRxOelKykICRxF6", "HtlER2txs4qrNARA", "Tn6KXOutlYBbLhL8"], "parties": [{"partyID": "KXx25FZfQIodVBqQ", "userIDs": ["sBpCJBIXLGYcwWVR", "K6UKk5ozrXA4HZHN", "yq9odanhR1Zrm3th"]}, {"partyID": "UvV87yfkycLSVdle", "userIDs": ["SaAylsmLYe2phYOg", "T5kDTyPl3dKF7NXE", "jrJMki8jvc3P8Gwj"]}, {"partyID": "g3IOH0SDHgYKqxJi", "userIDs": ["FJdrmj5vhzgsJwex", "7wq8ZPlXNaUNgdY2", "vfJuje5cPnmGjTvY"]}]}, {"UserIDs": ["a5Pqx1K7qcAoijBP", "Ap6EPb988NzxrDKV", "pULjjiw3NeVG4DJi"], "parties": [{"partyID": "9DaMrc0WFgKjE945", "userIDs": ["x2CPVYYG9WvoGmAm", "vaVV5YfxnUNcwjr7", "gSGhnfuF4WZiQVIC"]}, {"partyID": "VpWd3UM08gMXhdf3", "userIDs": ["juXW4JprIb3CJCAt", "vSG8Cfa9dzOJDGCT", "HIOFjeXbsSgR43kI"]}, {"partyID": "DzxBwqRJTzrHNZWU", "userIDs": ["sq5lQo2jy29EJigq", "YhyVhURx1yPeczRp", "dk0HATGylx2JG2KN"]}]}], "version": 66}' \
    'jorNsg9ZKYCKoISy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AppendTeamGameSession' test.out

#- 35 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "XtHzoWGdYohxMp3u"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyJoinCode' test.out

#- 36 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'OQIybqWfG9BJ6FVK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetParty' test.out

#- 37 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"lbYHtbPtaxvagSlp": {}, "GgVTF6VeDAPOGBww": {}, "eyFfXEOEAEtbag82": {}}, "inactiveTimeout": 74, "inviteTimeout": 32, "joinability": "gBgyCd5vjkfz3eR4", "maxPlayers": 61, "minPlayers": 40, "type": "f2cIoByk9fxtvsge", "version": 54}' \
    't0DzmkJq1sml5bYt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicUpdateParty' test.out

#- 38 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"76BNsi4giR9434Wp": {}, "KKdzxoufCNlFoOcW": {}, "QQy4bjmQeEweoBHT": {}}, "inactiveTimeout": 6, "inviteTimeout": 67, "joinability": "wAk7ZQnbqY1cQwVE", "maxPlayers": 40, "minPlayers": 80, "type": "Ar5kKKAo9MM2Cqm8", "version": 58}' \
    'jVi9kIpqgrzpUkNO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPatchUpdateParty' test.out

#- 39 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'BWydXV0Fi02aFr8C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGeneratePartyCode' test.out

#- 40 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'DapjwNOl4k8rVNrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicRevokePartyCode' test.out

#- 41 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "8drv8QD2JOe2Ntz7", "userID": "EFvowPgIGuetxFMq"}' \
    'XCQMAqQ2ZRGzNtrT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyInvite' test.out

#- 42 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "hFa9XU8mosluiHZJ"}' \
    '7O8sAQ32wj9uaDzs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicPromotePartyLeader' test.out

#- 43 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'r9xYiWRuuzQJiLc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicPartyJoin' test.out

#- 44 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'eI9w3JEhxPGbEk7s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyLeave' test.out

#- 45 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '7gw07FlounC3vJKB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicPartyReject' test.out

#- 46 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'C7SwgoViPeIB4Ehy' \
    '0Y5aSJVDginxAM77' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyKick' test.out

#- 47 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"eY9C14FbfiI2NPvl": {}, "1kCY5bEokxXxkWZb": {}, "jf7GZxaossQmjo69": {}}, "configurationName": "wohJFyTNk5FGUPhR", "inactiveTimeout": 78, "inviteTimeout": 70, "joinability": "EZvz3EjFR7996Ug5", "maxPlayers": 25, "members": [{"ID": "U6aFD3O2kXQSc58z", "PlatformID": "gZVl4gIF7v3qbZu9", "PlatformUserID": "M3OxqVAT4H1lRZ9Z"}, {"ID": "1JBrHRzEOtIxzPqb", "PlatformID": "6n73m0jiaDH86d9r", "PlatformUserID": "sKgzCsMulpB8HZUt"}, {"ID": "VVaJCiLgKOwrSfWh", "PlatformID": "T5B4WedopzwSluBt", "PlatformUserID": "RFPKThyGnbjmPDKF"}], "minPlayers": 91, "textChat": true, "type": "u9FHuv1M3qfch4Sq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicCreateParty' test.out

#- 48 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGetPlayerAttributes' test.out

#- 49 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "6LQPHlaeYl4csFq6", "data": {"5cU66yJaj4ovoKWE": {}, "4EW0sw8v5peiuxoB": {}, "JATauyD3XCXVMiyE": {}}, "platforms": [{"name": "vMf9yilUEujk6oqY", "userID": "o1HQYTFzwdOMdupw"}, {"name": "D4O3uNbcIDcIyvZb", "userID": "Oy1T4hfwkuVykH4R"}, {"name": "pfmjIXFGZ5PKdbab", "userID": "JIkNnt9P1Tkm08lu"}], "roles": ["h4dpPRMDbUXBWTbp", "AogG2wlZkLhuU5FI", "8NijFI0GKwJ3vfXl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicStorePlayerAttributes' test.out

#- 50 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicDeletePlayerAttributes' test.out

#- 51 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicQueryMyGameSessions' test.out

#- 52 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
