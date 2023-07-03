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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "PSNSupportedPlatforms": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"], "SessionTitle": "n8mzZ0m8SAMTwE6I", "ShouldSync": true, "XboxServiceConfigID": "IaRDBXxyaNoMR6hk", "XboxSessionTemplateName": "spInrAip6lyzSxwE", "localizedSessionName": {"lFHHdgs21Jub74CU": {}, "kNmKJfh5pUkHODpo": {}, "MF78NY4YkHs1cnz1": {}}}, "PSNBaseUrl": "JSDgY1TXp38zsCTC", "clientVersion": "rbCbPOyNQkT7NvyE", "deployment": "3cwyALczNIicXm7a", "dsSource": "gSrjJW2OQNOs1PXh", "fallbackClaimKeys": ["T5FvdiRilZ7oFgx4", "c8OumKtPDKJDXn7Z", "4U68su8XfqlqNiTv"], "inactiveTimeout": 56, "inviteTimeout": 43, "joinability": "6SdAdIhUDrwoZ5Me", "maxActiveSessions": 4, "maxPlayers": 7, "minPlayers": 31, "name": "Ki5r6QEa1ysLEzth", "persistent": false, "preferredClaimKeys": ["N9A3sNm84hddSpHt", "0P7MIIR7CkyF6C7d", "uuyZ0GhDogqrhBRd"], "requestedRegions": ["8lDR6qVNPRZYdFLI", "AjGGJddVCvu9vx5K", "Q7KYnIuMBvaO35ll"], "textChat": true, "type": "6Vpbsx5w8hqUI06U"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'pOXGSLmCVuHOPlLl' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 20, "PSNSupportedPlatforms": ["eabntBSxTeIv53HG", "CiljvjKoyD6SCwGr", "ncqmLtjQHAf8TgoN"], "SessionTitle": "m03VLisV6zwPuo3t", "ShouldSync": false, "XboxServiceConfigID": "0MesTCf9x4rt69ln", "XboxSessionTemplateName": "a7qxNeIxPz6MbwL6", "localizedSessionName": {"IY69z1UaLqYSYWyt": {}, "LPziZMdjxcBZufQx": {}, "GiHPllG4cYEzfTD1": {}}}, "PSNBaseUrl": "ZBm3MqHcUmLZZbSq", "clientVersion": "b8RwNmn9HrNQy4uZ", "deployment": "AAiE0mit9RGCCHYz", "dsSource": "UOcEdscKHPEqgA8y", "fallbackClaimKeys": ["u7Vk6Jt4Ymos9Jcd", "os4fYcTVU6RBt0zY", "oMcHyCUEXlAvxJMd"], "inactiveTimeout": 1, "inviteTimeout": 36, "joinability": "lwSyliWMNW5NyLu0", "maxActiveSessions": 79, "maxPlayers": 23, "minPlayers": 56, "name": "VHh2EI8JlDbPWbQ6", "persistent": true, "preferredClaimKeys": ["lNmqRBaAkLnvxkT1", "X68cmDc3fxU8MyKr", "QpM4hkkK6KKXNB3G"], "requestedRegions": ["v0IqmF51TkhjYnaq", "6foWvXa3bMrXsDr6", "kILsSSyDdmykmoPY"], "textChat": false, "type": "5MXbN9oCMNqq98Sj"}' 'TvhZNkSQ70D0H6BX' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'ksUC9b6i5lZC9xv3' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["2e8c5csSovoqsZNB", "dte9NDUPVJf6c2Z0", "QZxfgPubTDIHrvqA"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'ThuwjRHpKKTlmVr9' 'XuoJbRFQSKVPHbn4' 'Xxtu7LQRENjEEztx' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-update-platform-credentials '{"psn": {"clientId": "1WsYSiZqan0nSBJr", "clientSecret": "oav91GXlvPG6bFYR", "scope": "eVHQipcCx9Zw5D2L"}}' --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes '7vIYhGGSyEW4ZJJ4' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"2d3PBddN8S48l9ly": {}, "NApflxqMrj3oZk03": {}, "QXcKMDYDDxHSZjtq": {}}, "backfillTicketID": "XyJ58f7Gc26SaiGV", "clientVersion": "kydwYWQG26yUZNmT", "configurationName": "BcvrbYCwZtxFHyPL", "deployment": "tI8ilbyDPUIj88ce", "dsSource": "kdqCt81P1ktfIovm", "fallbackClaimKeys": ["v9gsR5cJcHm3SZLx", "oRDFuuuySj29a9LJ", "E8HoRS1X2PFAAMwz"], "inactiveTimeout": 68, "inviteTimeout": 57, "joinability": "PxB1UskYs4Yw20DO", "matchPool": "qOBSC2DKHRuPMMWH", "maxPlayers": 6, "minPlayers": 25, "preferredClaimKeys": ["b33T5UBJCjfcnLRf", "xeCSz9WEi8KlloeH", "0JT1yduat2vQR3bi"], "requestedRegions": ["Bfsu4jmsRE2w1yEk", "Lgh3tIYt4SqYUTLD", "x9gIiDandpGT2t24"], "serverName": "aOMh5eC3IHeHSKLC", "teams": [{"UserIDs": ["a3xreNDUWehwH3q3", "1A806DJgas4b6z3L", "NUj7fdgLA84Z8YYk"], "parties": [{"partyID": "6QEgJjBbEDoNf3n0", "userIDs": ["hEoRCAcf80zfFyab", "WAgIUXiI07A68eaq", "C2J9jyEW6GLbc0Na"]}, {"partyID": "KDUL3sa13lk1dQBH", "userIDs": ["O86IlBhnetU4RwTq", "UXlTDBzOuYsaZA2y", "yd4mbqoOfADMMAXF"]}, {"partyID": "aY9eKa699bRVhyaK", "userIDs": ["wwrAP2aMlu7WtjCt", "oYetOO847g8OudOf", "jnCuHZ3c46IjGa23"]}]}, {"UserIDs": ["YvYmmDg7VYPXIuvU", "YTZBRujIUE1Tq5jy", "AZvkRCMNFIurjh2i"], "parties": [{"partyID": "mdb4rbkXj0ZwsVC0", "userIDs": ["gL97ZVJSPqJiwv1q", "lYB1RSKs6gQxC3Gb", "7S0o4zGYY7KQI1Ae"]}, {"partyID": "FgPqaOkvo1aolB4l", "userIDs": ["kKB4EYOkQ1jMD3cy", "m8xIfkOVW2grREOL", "x0KOww3HICQLfl7M"]}, {"partyID": "UBG7qtPu64yAtURK", "userIDs": ["LRkb738HGS6rDgMd", "IIlhS1fSiM9331m7", "Ta1PsKc50Kv6ecnE"]}]}, {"UserIDs": ["evcAx2K2zkRenmPZ", "nGBt4P7WnbdSJtjX", "7ZshZyZl5x4bRXBH"], "parties": [{"partyID": "UTrDzZSKscfOcYu3", "userIDs": ["dpCROYqUiGKXVFCm", "po6sPwVOEDSJsEK5", "QpNhlI2iS5EpGhhv"]}, {"partyID": "XYck0upMzUYnb76t", "userIDs": ["FkEORV3bu1bNCtX7", "W40V6Do5sYadCCFr", "HHC3DpZxkrQDXuNF"]}, {"partyID": "viMarv8mnfHK8CCm", "userIDs": ["E2lPnsbD3SGEdlwu", "UccE536ugBp3HBve", "pnDCjgyJlXe36mgW"]}]}], "textChat": false, "ticketIDs": ["4V709xbnGezKsDwG", "2omOR2nvYI9TVqJd", "vzcWbfUpaXp5JMl5"], "type": "LL4bTxBmZjdrrIxs"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"B0NRsB1fPqqRRulp": {}, "qpymDkQhtrHWwRVn": {}, "wVBOqOHi8pWGd1ju": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "YhiqjRJOqB5F93zF"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'QbJndUDpdONneAcz' --login_with_auth "Bearer foo"
session-get-game-session 'bBdHb2slt71B1SmZ' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"p2JZp50CnPb71ORY": {}, "cmQbTU5JX8ccLjMX": {}, "JRk0eaKQDOJvrTef": {}}, "backfillTicketID": "glSs6g4iY9u02aCN", "clientVersion": "YIWekp18lOC3mNqF", "deployment": "7Bl0LcghVHfPEspx", "fallbackClaimKeys": ["whRON0bc1eMbEIjo", "wLqc3ecjXJbZDKKo", "xLE1Y3Dymtj3giPg"], "inactiveTimeout": 94, "inviteTimeout": 49, "joinability": "5hOPjaf3H0tYighU", "matchPool": "0VUfcYHJbBfAKSiP", "maxPlayers": 100, "minPlayers": 46, "preferredClaimKeys": ["3VgsZXiR1DJ7HVWq", "MkNSawQUWDFJvJBW", "ic7UkBeIXuqDuAXI"], "requestedRegions": ["66bQ71w0deoV9Lx5", "RDA1l2XcrciYNEzv", "SZIPkhSgORcz5S5B"], "teams": [{"UserIDs": ["vmgBLxh4ijFnE3Ta", "m69qSZ7PC6f6QkmZ", "XElW9YfRSse6AAz3"], "parties": [{"partyID": "S4czz0QKFlAVmVLu", "userIDs": ["4AOec0z8eBeeoip6", "8J1nsv4W2OJhtafx", "MSJlHeb34sZKHcl5"]}, {"partyID": "LLLOexL4fZvWtND2", "userIDs": ["tcBFpX8lNtFEJ7tn", "kY6Mca5afj12K2Iz", "rBvvWm4udE0OXudX"]}, {"partyID": "gNne8kJATwlc6esU", "userIDs": ["p6Sw1I98jeZQ7hfx", "nhLd3Knaknoed9DH", "hLOqQGhCUr6iTrjy"]}]}, {"UserIDs": ["EgarAdNJOIG36I6t", "RbRcrEveMdAdiPKD", "UVSC00PYeDcaggin"], "parties": [{"partyID": "xnFIna3yddcbsPhe", "userIDs": ["TH26IUJNvYuGRUvp", "ZaHCuESOiIZsMfB4", "ZH3mtgWgU4pCAKxe"]}, {"partyID": "E70CaunQNxot371W", "userIDs": ["9G4AvQkqsGnmyo5J", "JTUVmb8GEXFTlEME", "sFzYqwgK1Np5nodq"]}, {"partyID": "pLm7FhJBNXzAFdO0", "userIDs": ["Khqf6kiTdSGv2LFj", "AKY7CbgsWqFWZX7k", "PBom8F9GLLTG8phc"]}]}, {"UserIDs": ["3n4iLoIllKlpO2pq", "iXJF3WGRaoQomSJC", "4DdrKF7SUQPLG59e"], "parties": [{"partyID": "0k5ZtX6wK7PpUlcI", "userIDs": ["W32iK7MGt1ixY5rA", "1WoVeJIePF8ZrQzP", "4zvtdxdbZUpd6FJt"]}, {"partyID": "HJ1pyVwyKQLY6FEO", "userIDs": ["65Rb3z7CYLM8IlsH", "qffnrfsGlfPaZKBw", "a3Ddb60ufPpzwj1Q"]}, {"partyID": "GIFmlVf4jvapseE9", "userIDs": ["LN9bvhOrHflIOd6X", "3viLvtEk4mTIpUA9", "gxo8SV38nEhoXmM2"]}]}], "ticketIDs": ["W7l6jHMA2rG3nako", "pAywelu01nryEJ0N", "qoTow0qiOiC4j0ik"], "type": "tm0ZPLkLOsp0LZ5n", "version": 20}' 'Wek2gZvRrvr0n9d9' --login_with_auth "Bearer foo"
session-delete-game-session 'lvccKMLhrTrcBE2I' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"tBS3KtKZWe8aoFzA": {}, "yBME74HUtipUWYhW": {}, "V1qx8CzPML52faXU": {}}, "backfillTicketID": "r9Sk4lq2faBcAXXK", "clientVersion": "lhvyH8paOJtxqMPp", "deployment": "cVfRwNj547fH0XrK", "fallbackClaimKeys": ["EDpEY8VnocGAjci0", "V3tBf2jnHGKXphn5", "0c9tNLDljhZ2jxLR"], "inactiveTimeout": 5, "inviteTimeout": 89, "joinability": "z46OCaGBeMfPlNos", "matchPool": "4yBRjrERHEonAZR8", "maxPlayers": 66, "minPlayers": 10, "preferredClaimKeys": ["mEu0q1p6QCyY6vSk", "VFWdsbYuVEGVxYhe", "R3j5mNZ6vwv7K8As"], "requestedRegions": ["vt1j1Rx59hesNWy2", "NvZ85DDKDAF8KDsB", "ZOuYQJ03BAHZ7c53"], "teams": [{"UserIDs": ["q7akMpcmnnx6RVBr", "op9v7aZK3h65hbN1", "5zfQSfQrtfF3TQN0"], "parties": [{"partyID": "OcNDLr36vzohZyjM", "userIDs": ["QAg5mPYhrLTyU8Oh", "gfY9JQYGF4bYXEcE", "Nx9xZlAchob44lON"]}, {"partyID": "DDwMvgI0HlyPR7wZ", "userIDs": ["NiVsF6xG2mXEQdbz", "IVy8alncV7vWgSHd", "fo07UctPErqxyMyO"]}, {"partyID": "K06MqQBErxgjVByc", "userIDs": ["vU4PbmRDcrg0DjQj", "BECXvea7H1m2lJFR", "Z3ZprZ60zMjhTHeh"]}]}, {"UserIDs": ["94TSenE5hCFkIf5w", "eqZ18MH57l2Zsrh9", "0ETtYmGukz3Mnlrj"], "parties": [{"partyID": "cHp6B8Vj7rXFgDnD", "userIDs": ["kdZ9bpjb1tdA3Qhj", "CMW64f4XhIjSoTB2", "NMKtezapPr2QEPx3"]}, {"partyID": "zTxBGtEJIYppuUSs", "userIDs": ["KoHw2hyd12uSE7BE", "v3aevq6iohU1cg4W", "1IS3Uv1BpWoJBaqd"]}, {"partyID": "g2FHcunsS1lnaO2m", "userIDs": ["9vqjhbeK2qN8g6x2", "PyYDo5R3hLiD5sf5", "y1JsxJNGmyt0SQDU"]}]}, {"UserIDs": ["DoWBZVGLlkUetzCA", "Wc9x1aMjgGim51T1", "07XIZRZ7tZdIs0xf"], "parties": [{"partyID": "4czdt7zqmSKxOEQl", "userIDs": ["Vcx6GqsBq8vdhWVn", "uYLgpZehK0G2nmyu", "ViB9kRTcSQdTnNYG"]}, {"partyID": "eAfYFG3wSkHKufBd", "userIDs": ["S3ZOokZB4cXnAXyu", "Gz6LlxHv8SwyagYv", "DJ3w3UNgIGj2jZtE"]}, {"partyID": "YT8sIPSE1XXPzySa", "userIDs": ["0sZoFS6xCOWMpyh9", "pMsQgb64ELbzDMwy", "o4nIRysQdbufXjYn"]}]}], "ticketIDs": ["SoIFeouC2m38kXrD", "ZWlGVE9sJ4NpUtKp", "6M9I6nEwnZhsjwJe"], "type": "GwaPSDMZz95OYKiq", "version": 1}' 'xgRR1DiCqSMzpqIF' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "GLkDs7ACC1RgBfoN"}' 'rHlFi2qJLgmBLE35' --login_with_auth "Bearer foo"
session-game-session-generate-code 'YhyiDV90SeI5yppB' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'HoytVznCgNyx9fbT' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "63ShEh8PbGikLjgj", "userID": "cj34uulU6FYBZsWF"}' 'br3RSP0W9nBhvhf8' --login_with_auth "Bearer foo"
session-join-game-session 'Q0DtJMcYQdN66bsw' --login_with_auth "Bearer foo"
session-public-promote-game-session-leader '{"leaderID": "Agt65X4N1LQZmB61"}' 'JMdtwCVUrYQue84d' --login_with_auth "Bearer foo"
session-leave-game-session 'wmbwFEnAZaWsQJtR' --login_with_auth "Bearer foo"
session-public-game-session-reject 'YoagRJK5PX9UcOvh' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "PyE11TRT2SKseoe8", "userIDs": ["VLie0LBa36KNzjf0", "05CXNGehQ2aTjTDf", "KFDXC7eGL5YhJDWh"]}, {"partyID": "9YWqc0qgV6d9yOfI", "userIDs": ["MLds2DbPcaoMdtRL", "TmSvTkQQgB7exYvm", "HMxr5hPCJJztJBg0"]}, {"partyID": "tTJg46IewOXE2AkC", "userIDs": ["h3QIZsUf8lGFXcmw", "TERHclOdxIwqejxe", "18rNdb8Otq6j1mqU"]}], "proposedTeams": [{"UserIDs": ["av7k05HAQltnSojV", "4jT65yclX2FtAz0v", "JjFIYWOaNdsimmkW"], "parties": [{"partyID": "2miH3xRHAKy4QxZk", "userIDs": ["aXZ7vmiEd0JPxVyQ", "pshaDwNqTbbFMXAM", "fVXe0GZeMgsRsmH1"]}, {"partyID": "EQrYmkPKTPOlhTtS", "userIDs": ["iZNCxuogFteTHJe4", "BhSSQkQD6WmOt6D7", "ufFVTOhvQpfbBke8"]}, {"partyID": "aEdd36xj6wySoltD", "userIDs": ["xsbzxrlaKEfkoYjY", "2o6ouRW9UtNquwC3", "WgumrIz4NhGztZpr"]}]}, {"UserIDs": ["4U4fwQIiLXgmRasv", "jO4lj8m3XEwP2b4g", "d3xOeii8Jnmssep2"], "parties": [{"partyID": "xD2NY0kABeGs9yxa", "userIDs": ["hld1pO0Gyf5PO3CO", "yMvczgEpzZ3Fbtxf", "hcRC7IVYa6iZ5uFR"]}, {"partyID": "YNn3SHiWxF0YbuU5", "userIDs": ["ar5qTLWUCy0Afgc0", "50XIZRW491e94mQj", "VOOBnIWhunElqZUo"]}, {"partyID": "dp3IhtCSHy1ei1fI", "userIDs": ["rPvfHnRN06EjRwEQ", "lNapJRfk4f9Zcw1p", "EHAyNFxcVTKuAQTG"]}]}, {"UserIDs": ["h5BxjWOozGoDtsUu", "Yo5p8ED5QZAufwNa", "8lzfjv9oYMXMjlVH"], "parties": [{"partyID": "Y1AHwF3vGoav7MK0", "userIDs": ["PcLnEkcokKwcQ0ba", "DT9OyJ2h23GUS2am", "U7syGlElXdEAOrVS"]}, {"partyID": "nLocLVVYamQc4wcG", "userIDs": ["5nDBLJoJHbiQ5duE", "5p4cfs2E41cK8QTw", "iIAvxSvNDlmM5nQF"]}, {"partyID": "MGzs7fzjgyc44mEh", "userIDs": ["9tRk8knYSV30lnro", "QehMDli6t9unQLYX", "xm09wpGAbpEmDY9v"]}]}], "version": 77}' 'ZEY8rG0q0Q2Qd2Jz' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "RbkF2I03dIjvBbA6"}' --login_with_auth "Bearer foo"
session-public-get-party 'bfbYaJCJjfk2TUvn' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"95FhO7VW3mbDVMDu": {}, "87t0ldWf7iSGIiKF": {}, "tWtn4Yr2svKM6pqL": {}}, "inactiveTimeout": 67, "inviteTimeout": 86, "joinability": "Z0TBujELAUK6mQ5i", "maxPlayers": 12, "minPlayers": 56, "type": "bwwm5iGzXtcknrgi", "version": 7}' 'CkZwqjYLfTiCO1ND' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"BvQvRPnAz4VzW0Cp": {}, "oBCbyJsF5IjF1c0W": {}, "338HS6CBgVRyihYN": {}}, "inactiveTimeout": 96, "inviteTimeout": 18, "joinability": "4CVhziXV8HwSmvcv", "maxPlayers": 5, "minPlayers": 54, "type": "DKF19yVRafCjOuSY", "version": 16}' 'ejvqklTSvDwuOrP9' --login_with_auth "Bearer foo"
session-public-generate-party-code 'lzpiX0VuFpZum7iz' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'xe7NPzjOa8E7wY76' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "PxLv9HBEUe89AwEw", "userID": "1HO4FnKtx4XLKAml"}' 'Dr19uJ3nq6VerzVC' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "cI8y3Cz0YqCKUh5R"}' 'D9vNAp4jinFpnQ5x' --login_with_auth "Bearer foo"
session-public-party-join 'F9wwbvMZyeDeRnVf' --login_with_auth "Bearer foo"
session-public-party-leave 'PUa6xVVBcq3wZpFI' --login_with_auth "Bearer foo"
session-public-party-reject 'YeAg79HcLJXJ7mpV' --login_with_auth "Bearer foo"
session-public-party-kick 'I6eTYAjdPlCiQQC3' '5cj4KyOVgvnWbfRJ' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"tsB7cUQZ2QUAxJrI": {}, "NPXppPNO3AfmXcgw": {}, "C3IN6tvKgLB9QmJI": {}}, "configurationName": "Oq9dP5szG71utjsQ", "inactiveTimeout": 47, "inviteTimeout": 58, "joinability": "M0UHZVNYzGMNIpWo", "maxPlayers": 91, "members": [{"ID": "dhevfZvyV7AcodcZ", "PlatformID": "wKjYDdmJOlzwm9Su", "PlatformUserID": "4FnS98QqftSjq7sn"}, {"ID": "8yreciPLfkVyyJsb", "PlatformID": "GpO6JgehDJxEN7Jl", "PlatformUserID": "Zc8LMq1o2jZWu4yA"}, {"ID": "3r0u4q1bTHXIjfJK", "PlatformID": "yFlM0u1uuoVdn9yV", "PlatformUserID": "oSlKNchPHNL4X3LL"}], "minPlayers": 0, "textChat": true, "type": "GPGdqLE8SohhhuiT"}' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["nJarYYkHBDdSzBXd", "xapwhd5IQYBQuxLv", "PuWYvE3fsNy9Z9Oh"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "currentPlatform": "9X3fUSR1l9xLPBsm", "data": {"AUrD9L1IiD6MlcEP": {}, "hMDFzjHZ3sIhzOx2": {}, "CXKlvIomU3pIxM9n": {}}, "platforms": [{"name": "8D2eLMe3lt9qfx2U", "userID": "DcgVE7L9FK6e0MrP"}, {"name": "c4vtxk9hVKlG56Hl", "userID": "zGr7XjdyRJunZPkp"}, {"name": "6ccIBnWyPw8mj7gy", "userID": "Q7XdIszGRj46COPi"}], "roles": ["pH1MWVTHG0qHJCWE", "fOJpZm9yEYWNGMy2", "pgSGSUOK68eqGJtW"]}' --login_with_auth "Bearer foo"
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
echo "1..58"

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
    '{"durationDays": 12}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 66}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 17, "PSNSupportedPlatforms": ["Ybgg8rdwY9bmrvHm", "O07KNqX9LM2IwEsd", "OGBXBwnzDX8v3xgC"], "SessionTitle": "1Ge9PdbTTAJ2Gp1r", "ShouldSync": true, "XboxServiceConfigID": "RMjBFVZGYzQqV8d9", "XboxSessionTemplateName": "mDdUIoiIJFNxuNOm", "localizedSessionName": {"USWw18T1IxVWCxdv": {}, "PL9e4P01vxP8xj1L": {}, "yEirURERnEMzpImW": {}}}, "PSNBaseUrl": "6sjAHyCK5tNanGBr", "clientVersion": "kzUvck3xTtmOFMeb", "deployment": "S4AdlNzwog2IhErk", "dsSource": "NhNcECWwchW6zL9S", "fallbackClaimKeys": ["kbLlrNXnGanMazb8", "jvRWenURH48aJuAL", "EcSqcE15u6D31DjO"], "inactiveTimeout": 37, "inviteTimeout": 69, "joinability": "rs3CUYATdqnQGbqi", "maxActiveSessions": 34, "maxPlayers": 67, "minPlayers": 82, "name": "bruNB72HHMkjzyBB", "persistent": true, "preferredClaimKeys": ["KiaoV0VOem2yqPsM", "FxKybPkbuS6x9cLJ", "1APnNlsa2bRBr27f"], "requestedRegions": ["VMWuAfDqLMR919IZ", "PKOKiAVQXXOmqFHL", "byXmgCNiXH8uenbC"], "textChat": true, "type": "koyHjCH5olYLETRp"}' \
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
    'ABAmO2EGvJ4UMS93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 50, "PSNSupportedPlatforms": ["jhKPwbwcvQU5kG8b", "XGFmPAnOkDiJq4xQ", "ye7HqnVK3YVeOWs9"], "SessionTitle": "mfVQh3jLBtn9pxpE", "ShouldSync": false, "XboxServiceConfigID": "BYtzB0B4CxyQrUpI", "XboxSessionTemplateName": "FvORxTi79DpSjb39", "localizedSessionName": {"ukcR6c2E2r3vk3If": {}, "AKEbqcNXSGCCvNow": {}, "NmdpcJgF88ySNq4M": {}}}, "PSNBaseUrl": "j7mulP4tQ6R1OqKV", "clientVersion": "OTniBgLsNhdgQ0JW", "deployment": "ZjNRSzOTqcVNX3ah", "dsSource": "vxw9gwwhTnjN6wKZ", "fallbackClaimKeys": ["GW4y3f0R9s2kndhh", "ZhwAiLsZs4pmLDIQ", "ch4IjDq9aT3qZyI0"], "inactiveTimeout": 35, "inviteTimeout": 95, "joinability": "YsWucAkXsVJbXi7e", "maxActiveSessions": 88, "maxPlayers": 14, "minPlayers": 30, "name": "a7WwIc895ImqK6tV", "persistent": true, "preferredClaimKeys": ["tb0U4pH16NUsVY21", "NVIs7NRen2Y3Ns0Q", "JQeaWytPfds1BYx0"], "requestedRegions": ["EaURydf8ZyyZeHAW", "GgJUbUJRMbkcTglb", "U86FyOjApNHBVfNO"], "textChat": false, "type": "KzLyH1y72L13Orny"}' \
    'x34luLdvtsTKXMji' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'w6gYPvfn2Qt9iyq3' \
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
    '{"ids": ["Nyk8ncu2Z3eDHH9W", "aVO4iKhDcJ7TCcNI", "sQ3PuppUxDSK8aOT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'GMudcxlCV4cNbJGQ' \
    '57lPdinpjS2DRfGt' \
    '9GlyZVQ4X67tPZST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateGameSessionMember' test.out

#- 19 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminQueryParties' test.out

#- 20 AdminUpdatePlatformCredentials
$PYTHON -m $MODULE 'session-admin-update-platform-credentials' \
    '{"psn": {"clientId": "pPq3xjrElvvDgw0a", "clientSecret": "g7kSWE0Hiqm5IuLr", "scope": "yiEXqvUWDjU1G0EV"}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdatePlatformCredentials' test.out

#- 21 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminQueryPlayerAttributes' test.out

#- 22 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'jVZw1ToLuPakQN1M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetPlayerAttributes' test.out

#- 23 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"pOs1RVFrcg2CXxep": {}, "x78fvsyhE2BKtyTD": {}, "SIM7mkmvZ7Cmsh4U": {}}, "backfillTicketID": "S8o4jfMANPpmZDdM", "clientVersion": "iCxmuCCVuFjS1GC1", "configurationName": "d2b92B4vEgj3HOmh", "deployment": "cWm428XejRF94NIY", "dsSource": "9nMrBZo0lNUBDShH", "fallbackClaimKeys": ["D32vvL28FPwTiXfL", "cxDC9Ynd02mECIQh", "fIhHtADUQ9zimQTQ"], "inactiveTimeout": 92, "inviteTimeout": 55, "joinability": "95pFJUAJsyAfeKOu", "matchPool": "fV4f15NohXu6opxQ", "maxPlayers": 67, "minPlayers": 27, "preferredClaimKeys": ["Rt6PqlkL0diRhLC1", "0ih2EQfY3XCv4hdO", "a6FdZhNMd1onFjGR"], "requestedRegions": ["bxtABPXDmgNEJBhg", "Gq5GIDhNC66szbCC", "f73IFbRkPSSITz4T"], "serverName": "jCrJHXGXku2YVuOz", "teams": [{"UserIDs": ["hxHmnrrV9ZGWrZ05", "sxe6A6RpmKDebNky", "lbynkgT9vayLLiiz"], "parties": [{"partyID": "ac7Ge6zKJdlt7rjF", "userIDs": ["5RaJwvkWVco2LTo5", "ijlvDF8qBWCQ9dLW", "YyS8zdhMeBXH8x6H"]}, {"partyID": "dVfZVDAiU6iJOF7J", "userIDs": ["KZFNk2NKy59X8iOg", "2sVBiCoeC5weXJl7", "PeiMH8z8dVej8N2y"]}, {"partyID": "v6VTnOK7xAvM7tuL", "userIDs": ["81lsR7xxSVp3Gd2T", "K0HzYviTgYmx82JV", "BRLPZ6Iz8tne5dbg"]}]}, {"UserIDs": ["uBF6Gsvvdl8jHz9x", "7XZIjU4IK9lOLaZa", "MphKCqTq3EVheJjo"], "parties": [{"partyID": "EEXBLIxGnNuhoJM3", "userIDs": ["WWPvvCiCf33ViEdq", "QpoGkUWNizk5UcPA", "Gv6c1ESC6hZYTYZb"]}, {"partyID": "zf5aANNNs5kgSZZN", "userIDs": ["UHbIT9szApmWJO5v", "zzXZj08a6K1XRVfr", "iSpPFnZBJZkDnEiy"]}, {"partyID": "fa2LrnpZxNnLRH36", "userIDs": ["bqS2oFY76PU1AziB", "OHEAj1cT3u6Zc2Fb", "rTFznTgDIwZIRWf6"]}]}, {"UserIDs": ["T3by2kYSCdnFKLc0", "xcTjqjdcEfU61OJY", "MnW49rWynp1ck1vT"], "parties": [{"partyID": "90C6o86cSRL9cgbU", "userIDs": ["mulhe98oaFKlQicd", "rxVhrtwSd9QWVMYz", "7TU1TsxsChSclSkb"]}, {"partyID": "5aBi9K9zyv6gFZXI", "userIDs": ["5nXJ7hLi6HweweRm", "yo91dIn7QqXBDXJc", "rqKmXDwoEV6tCdrx"]}, {"partyID": "w1KOPhuvHuYrGWDK", "userIDs": ["41uMOC0mRvSoaGk4", "ktF5wnJDg9Q3WXiy", "dCOInVolsr6CHmj7"]}]}], "textChat": false, "ticketIDs": ["3vLwtYEJTSiXjcY5", "ZPkv90lyKSTWLxSF", "Z0LpupEi5DbkVs3q"], "type": "FTi1t530Wj1WfzIv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'CreateGameSession' test.out

#- 24 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"c3VlSXrA3XUGud4t": {}, "VjmxEf4XvVhFJTxF": {}, "HITBg9x4unq3eOMH": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicQueryGameSessions' test.out

#- 25 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "IKeTyBG5dCUoExnK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicSessionJoinCode' test.out

#- 26 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'fV3869IN4V1OdhH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGameSessionByPodName' test.out

#- 27 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'GVU7Exlkmc4xYiLj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGameSession' test.out

#- 28 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"LyZrXr9Bhtzn8jAd": {}, "Tn6xBhrciryLm67r": {}, "kadH5Y41SLjCPrFa": {}}, "backfillTicketID": "05Xl5TPC5GODS44b", "clientVersion": "mm7jPdKLddfdsUqj", "deployment": "XVzW1QqxnWR5sheL", "fallbackClaimKeys": ["gsAF4ctv5guycGiq", "9j2EyIknfLDpgHnM", "On8nc3gUZ8ZFyyEr"], "inactiveTimeout": 89, "inviteTimeout": 75, "joinability": "yt4udIv22M18uux9", "matchPool": "xBomQFPFWy5cwNPI", "maxPlayers": 1, "minPlayers": 58, "preferredClaimKeys": ["Fo0MVwDZCIXFNEL3", "uWVRz3V7YbJM3bNL", "WHAbCZixe2cQ6O30"], "requestedRegions": ["lpzcBQMAEcNcJqrK", "xnMzSYoc4ZjiMY4H", "34B6wVd8ipcKDwQe"], "teams": [{"UserIDs": ["UWtjCC2UH6jzMO3A", "fmOS5mQNyRPZFPNP", "56l1AT6OLKmZhCZx"], "parties": [{"partyID": "xPPdPwOtEuWBSO2j", "userIDs": ["JepUnEEgja2mIE2k", "LTnJwc5XmkCuL5W4", "tKt6G3j9LYdG7xVP"]}, {"partyID": "qBqe9RDQMBSYAFLq", "userIDs": ["p8PF5hCcoukWpnbz", "4ys7j6lxuU3u2HEG", "0qfKegvFTD1sPykS"]}, {"partyID": "8YLmwtYgWGcA0h4G", "userIDs": ["1LZ1HaX5UBMbsF44", "VTsLDRzdq22cbnyK", "3ggFDh2kaZP7pnnV"]}]}, {"UserIDs": ["fxPwc259HF9ejHaI", "LQruAuYyJLYGqMv8", "24ouSgkpK70uJmUL"], "parties": [{"partyID": "0uzElixc023dIvDi", "userIDs": ["A0tQWlHwBcTtztx3", "VAl6tXFbnATCzUOI", "zVcy9k3ie64Vnwa0"]}, {"partyID": "ClGQJultJe32AiwK", "userIDs": ["adEoIVmprwPsa9YD", "92CX0rITajpwHITG", "eHTnqRbzBB9ZFgJb"]}, {"partyID": "Q3Fj1umx4ItzkMJ7", "userIDs": ["cudf4r916GPrhn2e", "tVIQvRkQJAtDUH9t", "x60AehGz1ermJYXs"]}]}, {"UserIDs": ["YgL7TfyIlAwjTZdR", "ZJJzWZwvTX2bamSC", "vX1nwvSWdDwD7WJH"], "parties": [{"partyID": "zgNZUKsI5y0mR3zM", "userIDs": ["yTsftKqnsIJctAdx", "yZVKHA9DkaSOWgtg", "8yw8lHEbVDwBAqan"]}, {"partyID": "OlscRIWw82k5K5VT", "userIDs": ["kdubkOFldMCQ98JH", "4n0JtgqzZv5kVu4S", "95mj8YRvae4f4lhB"]}, {"partyID": "PbarbWEm8bVtZcfV", "userIDs": ["CPdQhim9QKUAFTVY", "elIlGJg9wdc8bihh", "WjfZpfcFBUsnnDJl"]}]}], "ticketIDs": ["mD1iEokbUiYzCQh2", "iNTwtnohddMzMTQ9", "P7sYLDWAJOA75K4B"], "type": "YJ2fkqYJoF2FI3vy", "version": 50}' \
    'QUvro8TWwXWsz9TV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'UpdateGameSession' test.out

#- 29 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'mdMKEohKzuMYDUTL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteGameSession' test.out

#- 30 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"BeCidXjuGgx8ncXe": {}, "jmeZtzT0qj0ltsqf": {}, "iZrthVvyX0OCKDJE": {}}, "backfillTicketID": "3RMUddwSSgxCu8zr", "clientVersion": "u1DhGAYOHR5BWa9V", "deployment": "zIkaQEl1iUProNB6", "fallbackClaimKeys": ["hI6IpGcToWgFvdRh", "G9NwV3zDuqVlVTyp", "cYPK8IxrSZuxWl0J"], "inactiveTimeout": 9, "inviteTimeout": 2, "joinability": "4fJIyFAm3DQht4Jw", "matchPool": "nPS2urJqerobWMZG", "maxPlayers": 98, "minPlayers": 18, "preferredClaimKeys": ["L5KLTxahWlS6XdBa", "KSLCgOOPXM6XTUh2", "dJ90yqHDNacl4F9G"], "requestedRegions": ["6Dl5TFwBY6HKXAbl", "kT8VGgSH8MGZGwiV", "j7eDTaka9ABfX1IB"], "teams": [{"UserIDs": ["yPEOuPhGspRi3bhP", "QvBBJI5JxytpcubN", "4AUUPFPscZsXeJOD"], "parties": [{"partyID": "4DMtqfIGiGJovgWS", "userIDs": ["RxZ8N4UQ2fg3V1o2", "x0hL5DuBDqMyIAzW", "ze94MEdJFAy2JTll"]}, {"partyID": "JkRGB8jqJEd6eqqs", "userIDs": ["BVyONV0JRtozI0jp", "liCFQ6WgJpGPigdc", "5VyC4qvWjVac1cQv"]}, {"partyID": "SxgTNIUzxDgBlIbu", "userIDs": ["zm7DzJ20NFRJIhFX", "R2dYprPmbpuptECG", "d5cdXC2Sesc6y68w"]}]}, {"UserIDs": ["hNBYl9iCqfW6rqGO", "Qny4ij4ysYPonb59", "gQffkNOmubxEJr2q"], "parties": [{"partyID": "EAuJbpZSrcbc4LWf", "userIDs": ["KaY5c1tP5TDuI5f6", "m4KC07CnsZe32hqE", "cB1ExYMBb3ckvoaJ"]}, {"partyID": "YdMqGegcg3eRvBZX", "userIDs": ["N3cjIXmFWRJnj8xN", "7HDPTUEDPN1Kb4UT", "PWDXTSb55g8LSTs7"]}, {"partyID": "Nf95lGlPrf6obIdn", "userIDs": ["I6Ag7eUYcYJ4QzXC", "mqr6gmPGaHP5SVPv", "RLiDi0mNHb6Lx8eq"]}]}, {"UserIDs": ["8SGNwEQO8dYXvBSY", "vJBwb6CjZUMRf2VJ", "etWsokvx3BHuTEcz"], "parties": [{"partyID": "r9KjQ3ttz8MTBt1x", "userIDs": ["k9IyssSA8nP5PQjp", "zk2Tb7iYdmNZWosr", "sVBPZ64j0HUONsco"]}, {"partyID": "fwYLQcDvkaEIIPoJ", "userIDs": ["T83zEGXmVBZLyrH9", "J7BoysmaORLkP5hc", "2Fh04JTsqDTynCew"]}, {"partyID": "qJligLlRxOelKykI", "userIDs": ["CRxF6HtlER2txs4q", "rNARATn6KXOutlYB", "bLhL8KXx25FZfQIo"]}]}], "ticketIDs": ["dVBqQsBpCJBIXLGY", "cwWVRK6UKk5ozrXA", "4HZHNyq9odanhR1Z"], "type": "rm3thUvV87yfkycL", "version": 91}' \
    'g48TgfNu0rqXUOyT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PatchUpdateGameSession' test.out

#- 31 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "oLPIREGIKlJt3EP9"}' \
    'kKwkENQ8VOHGwbAD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateGameSessionBackfillTicketID' test.out

#- 32 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'MfuOmh0lciRhVZ2D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GameSessionGenerateCode' test.out

#- 33 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'eoODXMzLSrzoiBnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicRevokeGameSessionCode' test.out

#- 34 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "i5UWs3tYlYeMoCim", "userID": "JySocRvUWDOrFZKP"}' \
    'NoN9AWtLK9TFgi9j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGameSessionInvite' test.out

#- 35 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '2XMh9WpifqjNjLOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'JoinGameSession' test.out

#- 36 PublicPromoteGameSessionLeader
$PYTHON -m $MODULE 'session-public-promote-game-session-leader' \
    '{"leaderID": "NQts2yxf6MLZJ2jZ"}' \
    'fZbpTJezzriCDWXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPromoteGameSessionLeader' test.out

#- 37 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    '59SRu0YqUxKDc84O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'LeaveGameSession' test.out

#- 38 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'MIzvTScdbKBsAyJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGameSessionReject' test.out

#- 39 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "z4ILNDvhB4Eoes9a", "userIDs": ["6XaJeRbzTPwD3jxF", "7vxRUY0ilrNoFT98", "SgtJd4Z5f8nfaKqd"]}, {"partyID": "ZFLbZEHxsDxeR6d7", "userIDs": ["r1SQw80JfMpPrSqY", "ypRUnq5o4ETeCUYG", "9ccTt7Wxw8OQ13t3"]}, {"partyID": "uTw6zQuoZcXQpoTO", "userIDs": ["xe8y1jorNsg9ZKYC", "KoISyXtHzoWGdYoh", "xMp3uOQIybqWfG9B"]}], "proposedTeams": [{"UserIDs": ["J6FVKlbYHtbPtaxv", "agSlpGgVTF6VeDAP", "OGBwweyFfXEOEAEt"], "parties": [{"partyID": "bag82KgBgyCd5vjk", "userIDs": ["fz3eR4DtNp129hzB", "w3xLUcCEt0DzmkJq", "1sml5bYt76BNsi4g"]}, {"partyID": "iR9434WpKKdzxouf", "userIDs": ["CNlFoOcWQQy4bjmQ", "eEweoBHTdwAk7ZQn", "bqY1cQwVEtAr5kKK"]}, {"partyID": "Ao9MM2Cqm84jVi9k", "userIDs": ["IpqgrzpUkNOBWydX", "V0Fi02aFr8CDapjw", "NOl4k8rVNrm8drv8"]}]}, {"UserIDs": ["QD2JOe2Ntz7EFvow", "PgIGuetxFMqXCQMA", "qQ2ZRGzNtrThFa9X"], "parties": [{"partyID": "U8mosluiHZJ7O8sA", "userIDs": ["Q32wj9uaDzsr9xYi", "WRuuzQJiLc1eI9w3", "JEhxPGbEk7s7gw07"]}, {"partyID": "FlounC3vJKBC7Swg", "userIDs": ["oViPeIB4Ehy0Y5aS", "JVDginxAM77eY9C1", "4FbfiI2NPvl1kCY5"]}, {"partyID": "bEokxXxkWZbjf7GZ", "userIDs": ["xaossQmjo69wohJF", "yTNk5FGUPhR4LEZv", "z3EjFR7996Ug5m4a"]}]}, {"UserIDs": ["xDV5uTcYsoahUrEL", "Q1btjJOqQMgZWAU6", "E92nHJzvw7tnYtGf"], "parties": [{"partyID": "v0EJyjBu4EzwRjD7", "userIDs": ["jmQJeFPghqamSc5y", "0X48eT7Mluexk87b", "9Z5BTsEA3EdmW8sa"]}, {"partyID": "abP4xRowfNojzPXI", "userIDs": ["2v0prR3OEey0MkZw", "S6TYwNN3UYhic03q", "GEg5fNzBVrjo3g8C"]}, {"partyID": "fRwtyl1HeT7VEPgG", "userIDs": ["40QyXzsOzgck078I", "ghoQBp2mWAOYkscz", "xBS0OBCa2vWadLmQ"]}]}], "version": 40}' \
    'Yo1HQYTFzwdOMdup' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AppendTeamGameSession' test.out

#- 40 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "wD4O3uNbcIDcIyvZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyJoinCode' test.out

#- 41 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'bOy1T4hfwkuVykH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetParty' test.out

#- 42 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"RpfmjIXFGZ5PKdba": {}, "bJIkNnt9P1Tkm08l": {}, "uh4dpPRMDbUXBWTb": {}}, "inactiveTimeout": 32, "inviteTimeout": 54, "joinability": "9LzNeJnBurh54CWb", "maxPlayers": 81, "minPlayers": 3, "type": "ijFI0GKwJ3vfXlsA", "version": 79}' \
    'izsFUgYwbaLvqvQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicUpdateParty' test.out

#- 43 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"NbmDITuymTBjn3d2": {}, "sFzMS3QaVjZF7Ax6": {}, "115Kg9U8vrQJXQxo": {}}, "inactiveTimeout": 71, "inviteTimeout": 96, "joinability": "bVi2CLEk277Ivjj1", "maxPlayers": 54, "minPlayers": 2, "type": "647XQ3koaAfZIim0", "version": 37}' \
    '2IaieEbPSE7TGkeH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicPatchUpdateParty' test.out

#- 44 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'sYsW9oGBN1pYMBwb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGeneratePartyCode' test.out

#- 45 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'PZTlMlUvFEiGprcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicRevokePartyCode' test.out

#- 46 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "SQ9kEeXBZ6FVrBzy", "userID": "hyhoS6a9oe0JaXFp"}' \
    'ff28uYbe4Cf2HEHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyInvite' test.out

#- 47 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "VevhISjbtBJUK5fE"}' \
    '3OufPSX3PdOU2V9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicPromotePartyLeader' test.out

#- 48 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'w94oa8UJ34TIedV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyJoin' test.out

#- 49 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'HyoX4VnO2LpBU08w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyLeave' test.out

#- 50 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'fnlHBXFIqFUmgUSM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicPartyReject' test.out

#- 51 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'M5au8GJT0mkVPI6z' \
    'Utf3QaJPGrTNcXXT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicPartyKick' test.out

#- 52 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"UIggoH89QNmI17UD": {}, "b19R6H7r1ta3m7jK": {}, "5pxe82pgFiAS6piI": {}}, "configurationName": "zmc8rKrKEPGSAcon", "inactiveTimeout": 13, "inviteTimeout": 10, "joinability": "6eNERUf8kjci1Ctc", "maxPlayers": 4, "members": [{"ID": "c6SKLc2mEC3IXl5X", "PlatformID": "CbkOfHaGr5kdazly", "PlatformUserID": "pvt6lSLfU7HByGXP"}, {"ID": "Mqxj4hBgVY3YAxZL", "PlatformID": "KbcOdyjqf6Q4oiwo", "PlatformUserID": "JcaRMEb15LBlTVuf"}, {"ID": "c5ZyODR2NVyn4PRq", "PlatformID": "f3eRbZqBAoKGcVCd", "PlatformUserID": "MiSNV4qBrt1kcLmR"}], "minPlayers": 43, "textChat": true, "type": "6EJtl5xWnsb8oWq9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicCreateParty' test.out

#- 53 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["4RImNWVIJnhhwFDV", "1VitaomvWTzdsW4N", "70wYS4Kj7Yi2VvoQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 54 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetPlayerAttributes' test.out

#- 55 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "Yc481dYdvGxJAMDR", "data": {"A1LF7jdWlekFwO94": {}, "VBCV9qJhWva2FPBu": {}, "jX0geYCpGJM4sqsP": {}}, "platforms": [{"name": "NJMiZXXOFwmGWAvN", "userID": "F0Z0GkwxUNYyNwGi"}, {"name": "KrknH0Y5mrQgLC6D", "userID": "2qsFiQHglUQMZi5W"}, {"name": "jMZfOadpgegCUjTd", "userID": "i1Ehr8OtqpNJ9R8T"}], "roles": ["uNy4ejmVA3vMCsGy", "Pd12B8QNUz0hFFNb", "H6j2W4roZM2UKAXE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicStorePlayerAttributes' test.out

#- 56 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicDeletePlayerAttributes' test.out

#- 57 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicQueryMyGameSessions' test.out

#- 58 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
