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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 55, "PSNSupportedPlatforms": ["wYCA9kPI6LZrkq6D", "c09nIW0Oaiw9B0D7", "eHpzSn3ZPUdc0qh4"], "SessionTitle": "n8mzZ0m8SAMTwE6I", "ShouldSync": true, "XboxServiceConfigID": "IaRDBXxyaNoMR6hk", "XboxSessionTemplateName": "spInrAip6lyzSxwE"}, "clientVersion": "lFHHdgs21Jub74CU", "deployment": "kNmKJfh5pUkHODpo", "dsSource": "MF78NY4YkHs1cnz1", "fallbackClaimKeys": ["JSDgY1TXp38zsCTC", "rbCbPOyNQkT7NvyE", "3cwyALczNIicXm7a"], "inactiveTimeout": 13, "inviteTimeout": 55, "joinability": "SrjJW2OQNOs1PXhT", "maxActiveSessions": 74, "maxPlayers": 64, "minPlayers": 81, "name": "vdiRilZ7oFgx4c8O", "persistent": true, "preferredClaimKeys": ["l0zRVW4EZG9m0Xcg", "GVbMqSszE8GHavj7", "AorKsxwkosAVerXp"], "requestedRegions": ["c1C8XfwHuKeb9l3r", "GN9A3sNm84hddSpH", "t0P7MIIR7CkyF6C7"], "textChat": false, "type": "UmiTqpyhPFdxLzFQ"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'N05MYzYiKWe5dNRl' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 19, "PSNSupportedPlatforms": ["AjGGJddVCvu9vx5K", "Q7KYnIuMBvaO35ll", "zQRaT5kPxUfofvnn"], "SessionTitle": "SuB0y5WUlrMdI4sN", "ShouldSync": true, "XboxServiceConfigID": "kvR8sKgnuRkgghGo", "XboxSessionTemplateName": "YupD391C2qtPYoka"}, "clientVersion": "hFjkQsfCaTmt1d67", "deployment": "FXGk2s9Q0mPVo3tw", "dsSource": "u0MesTCf9x4rt69l", "fallbackClaimKeys": ["na7qxNeIxPz6MbwL", "6IY69z1UaLqYSYWy", "tLPziZMdjxcBZufQ"], "inactiveTimeout": 48, "inviteTimeout": 54, "joinability": "GiHPllG4cYEzfTD1", "maxActiveSessions": 6, "maxPlayers": 56, "minPlayers": 30, "name": "m3MqHcUmLZZbSqb8", "persistent": true, "preferredClaimKeys": ["hpDDWVAla2l5BYNt", "IuS5S5XUdjsoqwGy", "zzWi9gwQYv7t1o7T"], "requestedRegions": ["Tr1DmrhZv15T7quI", "OvBMcaYmvCkGZ5dA", "gqxpBFmaLoxozr6w"], "textChat": false, "type": "yliWMNW5NyLu0M3V"}' 'Hh2EI8JlDbPWbQ6Q' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 '9lNmqRBaAkLnvxkT' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["1X68cmDc3fxU8MyK", "rQpM4hkkK6KKXNB3", "Gv0IqmF51TkhjYna"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'q6foWvXa3bMrXsDr' '6kILsSSyDdmykmoP' 'Ygc2L4jk4Lo0LSP0' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'pf4IxjUkl535X3at' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"eEKDpADz1x3poD3Q": {}, "gb3boLQQ1MzH7Qm8": {}, "bwbmXgdAPh1EThG9": {}}, "backfillTicketID": "6gAFKK2WDgCcxvON", "clientVersion": "Zm3EeERmDnyeFoF7", "configurationName": "VSZ6pf3vneSD2Tb3", "deployment": "g7mSQUhAEtrmjqU6", "dsSource": "YE3p4lSck0ZHn5GI", "fallbackClaimKeys": ["39YBHqaTHeKtW18i", "GeUlc9d9sogWa24C", "KNS0GqVvUfHQvsHX"], "inactiveTimeout": 81, "inviteTimeout": 95, "joinability": "2d3PBddN8S48l9ly", "matchPool": "NApflxqMrj3oZk03", "maxPlayers": 88, "minPlayers": 39, "preferredClaimKeys": ["XcKMDYDDxHSZjtqX", "yJ58f7Gc26SaiGVk", "ydwYWQG26yUZNmTB"], "requestedRegions": ["cvrbYCwZtxFHyPLt", "I8ilbyDPUIj88cek", "dqCt81P1ktfIovmv"], "serverName": "9gsR5cJcHm3SZLxo", "teams": [{"UserIDs": ["RDFuuuySj29a9LJE", "8HoRS1X2PFAAMwzH", "PxB1UskYs4Yw20DO"], "parties": [{"partyID": "qOBSC2DKHRuPMMWH", "userIDs": ["8Yb33T5UBJCjfcnL", "RfxeCSz9WEi8Kllo", "eH0JT1yduat2vQR3"]}, {"partyID": "biBfsu4jmsRE2w1y", "userIDs": ["EkLgh3tIYt4SqYUT", "LDx9gIiDandpGT2t", "24aOMh5eC3IHeHSK"]}, {"partyID": "LCa3xreNDUWehwH3", "userIDs": ["q31A806DJgas4b6z", "3LNUj7fdgLA84Z8Y", "Yk6QEgJjBbEDoNf3"]}]}, {"UserIDs": ["n0hEoRCAcf80zfFy", "abWAgIUXiI07A68e", "aqC2J9jyEW6GLbc0"], "parties": [{"partyID": "NaKDUL3sa13lk1dQ", "userIDs": ["BHO86IlBhnetU4Rw", "TqUXlTDBzOuYsaZA", "2yyd4mbqoOfADMMA"]}, {"partyID": "XFaY9eKa699bRVhy", "userIDs": ["aKwwrAP2aMlu7Wtj", "CtoYetOO847g8Oud", "OfjnCuHZ3c46IjGa"]}, {"partyID": "23YvYmmDg7VYPXIu", "userIDs": ["vUYTZBRujIUE1Tq5", "jyAZvkRCMNFIurjh", "2imdb4rbkXj0ZwsV"]}]}, {"UserIDs": ["C0gL97ZVJSPqJiwv", "1qlYB1RSKs6gQxC3", "Gb7S0o4zGYY7KQI1"], "parties": [{"partyID": "AeFgPqaOkvo1aolB", "userIDs": ["4lkKB4EYOkQ1jMD3", "cym8xIfkOVW2grRE", "OLx0KOww3HICQLfl"]}, {"partyID": "7MUBG7qtPu64yAtU", "userIDs": ["RKLRkb738HGS6rDg", "MdIIlhS1fSiM9331", "m7Ta1PsKc50Kv6ec"]}, {"partyID": "nEevcAx2K2zkRenm", "userIDs": ["PZnGBt4P7WnbdSJt", "jX7ZshZyZl5x4bRX", "BHUTrDzZSKscfOcY"]}]}], "textChat": true, "ticketIDs": ["N9LFkYW5DQyj4bj5", "Ro2ogaKt2ujQSa3Z", "db65UXmy0Zp6iIaT"], "type": "IKUkmkk9QM0NBMA9"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"ORxpzwLR2AK6eXUG": {}, "PJsw1fiP80G9Pclx": {}, "cft2ulIJzPyrVEiO": {}}' --login_with_auth "Bearer foo"
session-public-session-join-code '{"code": "G4UcqsuGKHhMRWLV"}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'd3DlhLuIpomM8sm1' --login_with_auth "Bearer foo"
session-get-game-session 'MiaI1mX2tJoARtdb' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"Be7udsMrok0WvGYY": {}, "nx4V709xbnGezKsD": {}, "wG2omOR2nvYI9TVq": {}}, "backfillTicketID": "JdvzcWbfUpaXp5JM", "clientVersion": "l5LL4bTxBmZjdrrI", "deployment": "xsB0NRsB1fPqqRRu", "fallbackClaimKeys": ["lpqpymDkQhtrHWwR", "VnwVBOqOHi8pWGd1", "juYhiqjRJOqB5F93"], "inactiveTimeout": 52, "inviteTimeout": 65, "joinability": "NR88YbCtmKy8M9zV", "matchPool": "rjfGXZnqAQUoY1Gj", "maxPlayers": 23, "minPlayers": 31, "preferredClaimKeys": ["IIk0iKoTTS1j02o7", "JjTXAQN0qdskdQV0", "TqI8EFnmDbxIxi4Y"], "requestedRegions": ["KlONk2Q5Y4Jvaizw", "iilatuUjjt9lIMGq", "l5ElEa9EIIlGcHB3"], "teams": [{"UserIDs": ["CfR3ncDlwi3v3MFF", "J1KesKoELCpobBEG", "8X645xpdXpai0rYa"], "parties": [{"partyID": "T5hOPjaf3H0tYigh", "userIDs": ["U0VUfcYHJbBfAKSi", "PW3VgsZXiR1DJ7HV", "WqMkNSawQUWDFJvJ"]}, {"partyID": "BWic7UkBeIXuqDuA", "userIDs": ["XI66bQ71w0deoV9L", "x5RDA1l2XcrciYNE", "zvSZIPkhSgORcz5S"]}, {"partyID": "5BvmgBLxh4ijFnE3", "userIDs": ["Tam69qSZ7PC6f6Qk", "mZXElW9YfRSse6AA", "z3S4czz0QKFlAVmV"]}]}, {"UserIDs": ["Lu4AOec0z8eBeeoi", "p68J1nsv4W2OJhta", "fxMSJlHeb34sZKHc"], "parties": [{"partyID": "l5LLLOexL4fZvWtN", "userIDs": ["D2tcBFpX8lNtFEJ7", "tnkY6Mca5afj12K2", "IzrBvvWm4udE0OXu"]}, {"partyID": "dXgNne8kJATwlc6e", "userIDs": ["sUp6Sw1I98jeZQ7h", "fxnhLd3Knaknoed9", "DHhLOqQGhCUr6iTr"]}, {"partyID": "jyEgarAdNJOIG36I", "userIDs": ["6tRbRcrEveMdAdiP", "KDUVSC00PYeDcagg", "inxnFIna3yddcbsP"]}]}, {"UserIDs": ["heTH26IUJNvYuGRU", "vpZaHCuESOiIZsMf", "B4ZH3mtgWgU4pCAK"], "parties": [{"partyID": "xeE70CaunQNxot37", "userIDs": ["1W9G4AvQkqsGnmyo", "5JJTUVmb8GEXFTlE", "MEsFzYqwgK1Np5no"]}, {"partyID": "dqpLm7FhJBNXzAFd", "userIDs": ["O0Khqf6kiTdSGv2L", "FjAKY7CbgsWqFWZX", "7kPBom8F9GLLTG8p"]}, {"partyID": "hc3n4iLoIllKlpO2", "userIDs": ["pqiXJF3WGRaoQomS", "JC4DdrKF7SUQPLG5", "9e0k5ZtX6wK7PpUl"]}]}], "ticketIDs": ["cIW32iK7MGt1ixY5", "rA1WoVeJIePF8ZrQ", "zP4zvtdxdbZUpd6F"], "type": "JtHJ1pyVwyKQLY6F", "version": 63}' 'nOpas6ghP1y4Zi7s' --login_with_auth "Bearer foo"
session-delete-game-session '7QBlk44Z44B1GZgK' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"g4uKxaCgcGLuC3br": {}, "WdTYCfHkIySok5Di": {}, "XZtLW87rGysryod3": {}}, "backfillTicketID": "dNQrmsApRA6HX3Rw", "clientVersion": "rKt2ecozL0TOg54v", "deployment": "CE48L5oLF6M4lNa4", "fallbackClaimKeys": ["JUMSHNgqRqCV7usa", "mANkZlOX9Sfo95Hg", "XqKhTPkwfLM9uSyb"], "inactiveTimeout": 89, "inviteTimeout": 27, "joinability": "zWek2gZvRrvr0n9d", "matchPool": "9lvccKMLhrTrcBE2", "maxPlayers": 70, "minPlayers": 44, "preferredClaimKeys": ["tBS3KtKZWe8aoFzA", "yBME74HUtipUWYhW", "V1qx8CzPML52faXU"], "requestedRegions": ["r9Sk4lq2faBcAXXK", "lhvyH8paOJtxqMPp", "cVfRwNj547fH0XrK"], "teams": [{"UserIDs": ["EDpEY8VnocGAjci0", "V3tBf2jnHGKXphn5", "0c9tNLDljhZ2jxLR"], "parties": [{"partyID": "X3z46OCaGBeMfPlN", "userIDs": ["os4yBRjrERHEonAZ", "R8GmEu0q1p6QCyY6", "vSkVFWdsbYuVEGVx"]}, {"partyID": "YheR3j5mNZ6vwv7K", "userIDs": ["8Asvt1j1Rx59hesN", "Wy2NvZ85DDKDAF8K", "DsBZOuYQJ03BAHZ7"]}, {"partyID": "c53q7akMpcmnnx6R", "userIDs": ["VBrop9v7aZK3h65h", "bN15zfQSfQrtfF3T", "QN0OcNDLr36vzohZ"]}]}, {"UserIDs": ["yjMQAg5mPYhrLTyU", "8OhgfY9JQYGF4bYX", "EcENx9xZlAchob44"], "parties": [{"partyID": "lONDDwMvgI0HlyPR", "userIDs": ["7wZNiVsF6xG2mXEQ", "dbzIVy8alncV7vWg", "SHdfo07UctPErqxy"]}, {"partyID": "MyOK06MqQBErxgjV", "userIDs": ["BycvU4PbmRDcrg0D", "jQjBECXvea7H1m2l", "JFRZ3ZprZ60zMjhT"]}, {"partyID": "Heh94TSenE5hCFkI", "userIDs": ["f5weqZ18MH57l2Zs", "rh90ETtYmGukz3Mn", "lrjcHp6B8Vj7rXFg"]}]}, {"UserIDs": ["DnDkdZ9bpjb1tdA3", "QhjCMW64f4XhIjSo", "TB2NMKtezapPr2QE"], "parties": [{"partyID": "Px3zTxBGtEJIYppu", "userIDs": ["USsKoHw2hyd12uSE", "7BEv3aevq6iohU1c", "g4W1IS3Uv1BpWoJB"]}, {"partyID": "aqdg2FHcunsS1lna", "userIDs": ["O2m9vqjhbeK2qN8g", "6x2PyYDo5R3hLiD5", "sf5y1JsxJNGmyt0S"]}, {"partyID": "QDUDoWBZVGLlkUet", "userIDs": ["zCAWc9x1aMjgGim5", "1T107XIZRZ7tZdIs", "0xf4czdt7zqmSKxO"]}]}], "ticketIDs": ["EQlVcx6GqsBq8vdh", "WVnuYLgpZehK0G2n", "myuViB9kRTcSQdTn"], "type": "NYGeAfYFG3wSkHKu", "version": 10}' 'o8Zkgk0jS6rDWUwf' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "hKvrf2AaH4yCWrHS"}' 'ppnIZkNnTn3rzH5N' --login_with_auth "Bearer foo"
session-game-session-generate-code 'vAtcvNedgS1fUfKm' --login_with_auth "Bearer foo"
session-public-revoke-game-session-code 'ihDbmu8ePWlQMVDX' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "EHeiGTnwyEw6hIWD", "userID": "ZrpP7rz3ISW510kH"}' 'r4isTKWjmv67nuHC' --login_with_auth "Bearer foo"
session-join-game-session 'XWfwnwGioVwVzmmB' --login_with_auth "Bearer foo"
session-leave-game-session 'VVFfpqx1AeLtzcPJ' --login_with_auth "Bearer foo"
session-public-game-session-reject '3jtDYBo4FUTH7CGf' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "KSyxgRR1DiCqSMzp", "userIDs": ["qIFGLkDs7ACC1RgB", "foNrHlFi2qJLgmBL", "E35YhyiDV90SeI5y"]}, {"partyID": "ppBHoytVznCgNyx9", "userIDs": ["fbT63ShEh8PbGikL", "jgjcj34uulU6FYBZ", "sWFbr3RSP0W9nBhv"]}, {"partyID": "hf8Q0DtJMcYQdN66", "userIDs": ["bswAgt65X4N1LQZm", "B61JMdtwCVUrYQue", "84dwmbwFEnAZaWsQ"]}], "proposedTeams": [{"UserIDs": ["JtRYoagRJK5PX9Uc", "OvhPyE11TRT2SKse", "oe8VLie0LBa36KNz"], "parties": [{"partyID": "jf005CXNGehQ2aTj", "userIDs": ["TDfKFDXC7eGL5YhJ", "DWh9YWqc0qgV6d9y", "OfIMLds2DbPcaoMd"]}, {"partyID": "tRLTmSvTkQQgB7ex", "userIDs": ["YvmHMxr5hPCJJztJ", "Bg0tTJg46IewOXE2", "AkCh3QIZsUf8lGFX"]}, {"partyID": "cmwTERHclOdxIwqe", "userIDs": ["jxe18rNdb8Otq6j1", "mqUav7k05HAQltnS", "ojV4jT65yclX2FtA"]}]}, {"UserIDs": ["z0vJjFIYWOaNdsim", "mkW2miH3xRHAKy4Q", "xZkaXZ7vmiEd0JPx"], "parties": [{"partyID": "VyQpshaDwNqTbbFM", "userIDs": ["XAMfVXe0GZeMgsRs", "mH1EQrYmkPKTPOlh", "TtSiZNCxuogFteTH"]}, {"partyID": "Je4BhSSQkQD6WmOt", "userIDs": ["6D7ufFVTOhvQpfbB", "ke8aEdd36xj6wySo", "ltDxsbzxrlaKEfko"]}, {"partyID": "YjY2o6ouRW9UtNqu", "userIDs": ["wC3WgumrIz4NhGzt", "Zpr4U4fwQIiLXgmR", "asvjO4lj8m3XEwP2"]}]}, {"UserIDs": ["b4gd3xOeii8Jnmss", "ep2xD2NY0kABeGs9", "yxahld1pO0Gyf5PO"], "parties": [{"partyID": "3COyMvczgEpzZ3Fb", "userIDs": ["txfhcRC7IVYa6iZ5", "uFRYNn3SHiWxF0Yb", "uU5ar5qTLWUCy0Af"]}, {"partyID": "gc050XIZRW491e94", "userIDs": ["mQjVOOBnIWhunElq", "ZUodp3IhtCSHy1ei", "1fIrPvfHnRN06EjR"]}, {"partyID": "wEQlNapJRfk4f9Zc", "userIDs": ["w1pEHAyNFxcVTKuA", "QTGh5BxjWOozGoDt", "sUuYo5p8ED5QZAuf"]}]}], "version": 46}' 'GPTBxiFFCrn7djjs' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "69FTFVGUVhvKhJCm"}' --login_with_auth "Bearer foo"
session-public-get-party 'eisql14mUHVbMPim' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"NhcZsU3VAdMDcb4q": {}, "lkiFAamqvZI2Kwjq": {}, "PBiWXade41s3rH34": {}}, "inactiveTimeout": 26, "inviteTimeout": 5, "joinability": "B2yPlRpWjmHZAAvK", "maxPlayers": 93, "minPlayers": 63, "type": "H8MuqIg0CzkguwuJ", "version": 58}' 'iIAvxSvNDlmM5nQF' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"MGzs7fzjgyc44mEh": {}, "9tRk8knYSV30lnro": {}, "QehMDli6t9unQLYX": {}}, "inactiveTimeout": 49, "inviteTimeout": 25, "joinability": "IjGdqthRxTjQ7gkZ", "maxPlayers": 62, "minPlayers": 42, "type": "8rG0q0Q2Qd2JzRbk", "version": 64}' 'wG3UC6XCnnZxF8Cm' --login_with_auth "Bearer foo"
session-public-generate-party-code 'Qr17W65br34rBBN9' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'tU6TDm5GloFSKWM1' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "eym5ydC6p25xCWTq", "userID": "UOYZENJ1QHZQxPRX"}' 'H7uxBJEECQE1li3B' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "g7Jxc9pUnZmvhidw"}' 'CkZwqjYLfTiCO1ND' --login_with_auth "Bearer foo"
session-public-party-join 'BvQvRPnAz4VzW0Cp' --login_with_auth "Bearer foo"
session-public-party-leave 'oBCbyJsF5IjF1c0W' --login_with_auth "Bearer foo"
session-public-party-reject '338HS6CBgVRyihYN' --login_with_auth "Bearer foo"
session-public-party-kick 'Z84CVhziXV8HwSmv' 'cvcDKF19yVRafCjO' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"uSYht83AdvBaagTi": {}, "RJ8daGTVX3Bb7jlz": {}, "5IfHgKjI9mwJSrN8": {}}, "configurationName": "jkIykR2zbaI6PD7f", "inactiveTimeout": 62, "inviteTimeout": 46, "joinability": "scShnGUGUtV9GJ27", "maxPlayers": 25, "members": [{"ID": "GDbLNwjm3FK0nnX2", "PlatformID": "poMfZ1hDHtbh4HtM", "PlatformUserID": "lFgvh2Dp2SoiIPp1"}, {"ID": "yvfAHS0VgLu11A3H", "PlatformID": "TovFi4tPAGfleyCA", "PlatformUserID": "6jEtcqsnzoVILjkw"}, {"ID": "W61duF87aUyrdt4X", "PlatformID": "SpWBAetsanzqP8ox", "PlatformUserID": "frtbECD1CYPwaiBA"}], "minPlayers": 47, "textChat": false, "type": "NPXppPNO3AfmXcgw"}' --login_with_auth "Bearer foo"
session-public-get-bulk-player-current-platform '{"userIDs": ["C3IN6tvKgLB9QmJI", "Oq9dP5szG71utjsQ", "4CrRb9gUCeVz7fWb"]}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "IdhevfZvyV7Acodc", "data": {"ZwKjYDdmJOlzwm9S": {}, "u4FnS98QqftSjq7s": {}, "n8yreciPLfkVyyJs": {}}, "platforms": [{"name": "bGpO6JgehDJxEN7J", "userID": "lZc8LMq1o2jZWu4y"}, {"name": "A3r0u4q1bTHXIjfJ", "userID": "KyFlM0u1uuoVdn9y"}, {"name": "VoSlKNchPHNL4X3L", "userID": "LaGPGdqLE8Sohhhu"}], "roles": ["iTnJarYYkHBDdSzB", "Xdxapwhd5IQYBQux", "LvPuWYvE3fsNy9Z9"]}' --login_with_auth "Bearer foo"
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
echo "1..56"

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
    '{"durationDays": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateConfigurationAlertV1' test.out

#- 7 AdminCreateConfigurationAlertV1
$PYTHON -m $MODULE 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 32}' \
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
    '{"NativeSessionSetting": {"PSNServiceLabel": 14, "PSNSupportedPlatforms": ["Z9X3fUSR1l9xLPBs", "mAUrD9L1IiD6MlcE", "PhMDFzjHZ3sIhzOx"], "SessionTitle": "2CXKlvIomU3pIxM9", "ShouldSync": false, "XboxServiceConfigID": "K5PRMRMwdvl0hv6g", "XboxSessionTemplateName": "62GxBW2tQF5tkTjg"}, "clientVersion": "JaMYvNQOsDa4bkcg", "deployment": "epqtxjbrztee7QLT", "dsSource": "GAak7Kaol01DK97D", "fallbackClaimKeys": ["2xnik42miteR5eQA", "e1rzmmgqBPRmd6mO", "4oI8KDqebm83raNB"], "inactiveTimeout": 72, "inviteTimeout": 31, "joinability": "5y7axEkvI4oxZEDx", "maxActiveSessions": 66, "maxPlayers": 17, "minPlayers": 57, "name": "bgg8rdwY9bmrvHmO", "persistent": true, "preferredClaimKeys": ["7KNqX9LM2IwEsdOG", "BXBwnzDX8v3xgC1G", "e9PdbTTAJ2Gp1r0s"], "requestedRegions": ["VZ6LJAOddIL2l3hP", "jNDKv2LWfXqjr8fS", "79En3wYowBdkaZ3y"], "textChat": false, "type": "9e4P01vxP8xj1LyE"}' \
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
    'irURERnEMzpImW6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetConfigurationTemplateV1' test.out

#- 12 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 19, "PSNSupportedPlatforms": ["dwsX1jorcyR0x3Yi", "HF8ITGPRQBCgIs1Q", "2lzxl0yF5m77TTh4"], "SessionTitle": "gUoj8u2WRcLiEtzV", "ShouldSync": false, "XboxServiceConfigID": "lrNXnGanMazb8jvR", "XboxSessionTemplateName": "WenURH48aJuALEcS"}, "clientVersion": "qcE15u6D31DjOsrs", "deployment": "3CUYATdqnQGbqiqO", "dsSource": "kNeATj7eGjodd7Cc", "fallbackClaimKeys": ["JUrI6MAugK5kypNr", "p2nFe9FmN86sK5LO", "q4ft5jGcMICPUYnf"], "inactiveTimeout": 67, "inviteTimeout": 12, "joinability": "jl9U4jReteIMgzIS", "maxActiveSessions": 29, "maxPlayers": 85, "minPlayers": 26, "name": "KOKiAVQXXOmqFHLb", "persistent": true, "preferredClaimKeys": ["CZbt3Uta5I0uGcL1", "koyHjCH5olYLETRp", "ABAmO2EGvJ4UMS93"], "requestedRegions": ["yOxNInDByhnoluO6", "ti0QP2ssiJ66OzOj", "84O6tgohjtC7bzjP"], "textChat": false, "type": "mfVQh3jLBtn9pxpE"}' \
    '7BYtzB0B4CxyQrUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateConfigurationTemplateV1' test.out

#- 13 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'IFvORxTi79DpSjb3' \
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
    '{"ids": ["9ukcR6c2E2r3vk3I", "fAKEbqcNXSGCCvNo", "wNmdpcJgF88ySNq4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteBulkGameSessions' test.out

#- 18 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'Mj7mulP4tQ6R1OqK' \
    'VOTniBgLsNhdgQ0J' \
    'WZjNRSzOTqcVNX3a' \
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
    'hvxw9gwwhTnjN6wK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerAttributes' test.out

#- 22 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"ZGW4y3f0R9s2kndh": {}, "hZhwAiLsZs4pmLDI": {}, "Qch4IjDq9aT3qZyI": {}}, "backfillTicketID": "0rYsWucAkXsVJbXi", "clientVersion": "7eRZa7WwIc895Imq", "configurationName": "K6tVsaUq3stUh5J5", "deployment": "Z9GiBiSAylX5cS0I", "dsSource": "eHpWCugmfOL0QQpx", "fallbackClaimKeys": ["suD8PGqku59eFJrO", "XyDYz9vMUOPG0iHD", "T8QbF7gHPTPQbvLt"], "inactiveTimeout": 98, "inviteTimeout": 82, "joinability": "fNOURcjY3YYT9oTy", "matchPool": "nmfIuBWgJTNFfM8M", "maxPlayers": 76, "minPlayers": 71, "preferredClaimKeys": ["XMjiw6gYPvfn2Qt9", "iyq3Nyk8ncu2Z3eD", "HH9WaVO4iKhDcJ7T"], "requestedRegions": ["CcNIsQ3PuppUxDSK", "8aOTGMudcxlCV4cN", "bJGQ57lPdinpjS2D"], "serverName": "RfGt9GlyZVQ4X67t", "teams": [{"UserIDs": ["PZSTpPq3xjrElvvD", "gw0ag7kSWE0Hiqm5", "IuLryiEXqvUWDjU1"], "parties": [{"partyID": "G0EVjVZw1ToLuPak", "userIDs": ["QN1MpOs1RVFrcg2C", "Xxepx78fvsyhE2BK", "tyTDSIM7mkmvZ7Cm"]}, {"partyID": "sh4US8o4jfMANPpm", "userIDs": ["ZDdMiCxmuCCVuFjS", "1GC1d2b92B4vEgj3", "HOmhcWm428XejRF9"]}, {"partyID": "4NIY9nMrBZo0lNUB", "userIDs": ["DShHD32vvL28FPwT", "iXfLcxDC9Ynd02mE", "CIQhfIhHtADUQ9zi"]}]}, {"UserIDs": ["mQTQT95pFJUAJsyA", "feKOufV4f15NohXu", "6opxQGRt6PqlkL0d"], "parties": [{"partyID": "iRhLC10ih2EQfY3X", "userIDs": ["Cv4hdOa6FdZhNMd1", "onFjGRbxtABPXDmg", "NEJBhgGq5GIDhNC6"]}, {"partyID": "6szbCCf73IFbRkPS", "userIDs": ["SITz4TjCrJHXGXku", "2YVuOzhxHmnrrV9Z", "GWrZ05sxe6A6RpmK"]}, {"partyID": "DebNkylbynkgT9va", "userIDs": ["yLLiizac7Ge6zKJd", "lt7rjF5RaJwvkWVc", "o2LTo5ijlvDF8qBW"]}]}, {"UserIDs": ["CQ9dLWYyS8zdhMeB", "XH8x6HdVfZVDAiU6", "iJOF7JKZFNk2NKy5"], "parties": [{"partyID": "9X8iOg2sVBiCoeC5", "userIDs": ["weXJl7PeiMH8z8dV", "ej8N2yv6VTnOK7xA", "vM7tuL81lsR7xxSV"]}, {"partyID": "p3Gd2TK0HzYviTgY", "userIDs": ["mx82JVBRLPZ6Iz8t", "ne5dbguBF6Gsvvdl", "8jHz9x7XZIjU4IK9"]}, {"partyID": "lOLaZaMphKCqTq3E", "userIDs": ["VheJjoEEXBLIxGnN", "uhoJM3WWPvvCiCf3", "3ViEdqQpoGkUWNiz"]}]}], "textChat": false, "ticketIDs": ["HRD3V15QaGGL46Lu", "xJF3sbeqWBdQuWfg", "BAKx27MSBqabUXOG"], "type": "kkoMUZn1YXj5zFZe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateGameSession' test.out

#- 23 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"OCOR9NvBQZSJPOIK": {}, "rRBrYVzi9ui3lvoz": {}, "Tt9TsH7A0TuU2aL4": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicQueryGameSessions' test.out

#- 24 PublicSessionJoinCode
$PYTHON -m $MODULE 'session-public-session-join-code' \
    '{"code": "bPkk11sys6GdkDco"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicSessionJoinCode' test.out

#- 25 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    's5uVJ0BJfZ0jvA54' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetGameSessionByPodName' test.out

#- 26 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'CSqZFDsO1skRjOU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGameSession' test.out

#- 27 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"SMfQVQa6blj9Rdd8": {}, "5bdYUumPKVSZCg3X": {}, "Tc9vQe0dHJfF6KIu": {}}, "backfillTicketID": "vnRCa9JktyBdxkZK", "clientVersion": "rEWFw9GYxjiiOQAD", "deployment": "77ci0vfWVZoRRMPi", "fallbackClaimKeys": ["57HyKKz5nyI6ulKN", "KoXa0dgx1JgjC56p", "da3YhtQxpCYME6x2"], "inactiveTimeout": 57, "inviteTimeout": 32, "joinability": "DXJcrqKmXDwoEV6t", "matchPool": "Cdrxw1KOPhuvHuYr", "maxPlayers": 67, "minPlayers": 81, "preferredClaimKeys": ["WDK41uMOC0mRvSoa", "Gk4ktF5wnJDg9Q3W", "XiydCOInVolsr6CH"], "requestedRegions": ["mj763vLwtYEJTSiX", "jcY5ZPkv90lyKSTW", "LxSFZ0LpupEi5Dbk"], "teams": [{"UserIDs": ["Vs3qFTi1t530Wj1W", "fzIvc3VlSXrA3XUG", "ud4tVjmxEf4XvVhF"], "parties": [{"partyID": "JTxFHITBg9x4unq3", "userIDs": ["eOMHIKeTyBG5dCUo", "ExnKfV3869IN4V1O", "dhH4GVU7Exlkmc4x"]}, {"partyID": "YiLjLyZrXr9Bhtzn", "userIDs": ["8jAdTn6xBhrciryL", "m67rkadH5Y41SLjC", "PrFa05Xl5TPC5GOD"]}, {"partyID": "S44bmm7jPdKLddfd", "userIDs": ["sUqjXVzW1QqxnWR5", "sheLgsAF4ctv5guy", "cGiq9j2EyIknfLDp"]}]}, {"UserIDs": ["gHnMOn8nc3gUZ8ZF", "yyEr0KBXuJBqK4Qt", "EydPWLPBYiR3UbJc"], "parties": [{"partyID": "1ZYapx7C477etqgf", "userIDs": ["OJDUT0uKAPrARya2", "IMlNiXpF4qvsUUpH", "qi33TcBGkc0HjUcn"]}, {"partyID": "kpU9oVzl2kBuLFXI", "userIDs": ["eCEKZUTz3GvCAZ5j", "24acYHbrryHB6GO9", "zP3FaepA3b3YJ9nJ"]}, {"partyID": "M6vtT27xv85K5MU2", "userIDs": ["qmbeqaVemINdClpF", "7OvlBIEgjse5kd6G", "EDo08yq5E5HleLoo"]}]}, {"UserIDs": ["g4me2NBFp62xlXvV", "cJerTPW02PWsHiKY", "ArAxnKBfBfDlrQQu"], "parties": [{"partyID": "Ac10DjjwMv4vrIPR", "userIDs": ["tvhQIyLarjaLOKnX", "51yAB8Pa3uNGKhaL", "lJzJMSnJIIgsAVma"]}, {"partyID": "GYxUX1B9oVuzG2Cn", "userIDs": ["YX2YBF2g7TVtzYEH", "Uodh3iUfBthbepUC", "TWiZ1uqh7GAi4FEI"]}, {"partyID": "u44u83ZLRxYlYqlp", "userIDs": ["q03BGdIk4oEogFVG", "R71rJOBy6lsj1AKG", "BjnHmaAu4YK87DYA"]}]}], "ticketIDs": ["WWcbcbGWmKgE8CZ4", "AELr5lraa5v5P5Cj", "8hgFsqHC9h5JPiME"], "type": "tgKuiGTYgwWv5Xld", "version": 78}' \
    'jpwHITGeHTnqRbzB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateGameSession' test.out

#- 28 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'B9ZFgJbQ3Fj1umx4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteGameSession' test.out

#- 29 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"ItzkMJ7cudf4r916": {}, "GPrhn2etVIQvRkQJ": {}, "AtDUH9tx60AehGz1": {}}, "backfillTicketID": "ermJYXsYgL7TfyIl", "clientVersion": "AwjTZdRZJJzWZwvT", "deployment": "X2bamSCvX1nwvSWd", "fallbackClaimKeys": ["DwD7WJHzgNZUKsI5", "y0mR3zMyTsftKqns", "IJctAdxyZVKHA9Dk"], "inactiveTimeout": 1, "inviteTimeout": 70, "joinability": "SOWgtg8yw8lHEbVD", "matchPool": "wBAqanOlscRIWw82", "maxPlayers": 22, "minPlayers": 37, "preferredClaimKeys": ["5K5VTkdubkOFldMC", "Q98JH4n0JtgqzZv5", "kVu4S95mj8YRvae4"], "requestedRegions": ["f4lhBPbarbWEm8bV", "tZcfVCPdQhim9QKU", "AFTVYelIlGJg9wdc"], "teams": [{"UserIDs": ["8bihhWjfZpfcFBUs", "nnDJlmD1iEokbUiY", "zCQh2iNTwtnohddM"], "parties": [{"partyID": "zMTQ9P7sYLDWAJOA", "userIDs": ["75K4BYJ2fkqYJoF2", "FI3vyyqRzc20O7Fd", "sJP1G9tyBTfERXdv"]}, {"partyID": "gD1Qf7Ot2DkUt3ye", "userIDs": ["xZBRvxYnEBhXtAVx", "Cd3meTrT7cF9oVCh", "89wNOkKYssVejcL3"]}, {"partyID": "kR3hCGNgaJmuALlM", "userIDs": ["Ql9RLrthbfp0Vgwe", "LlT2sY3SsTnDQY7k", "KU2u06Q4veujxtyQ"]}]}, {"UserIDs": ["ENvJrBCqeg67d4RW", "OqO4U0bitNQLzwRo", "WnR0AbkCPY70Fmvv"], "parties": [{"partyID": "iVIBbcujF8Vk5qb8", "userIDs": ["NhWWwaxyMchkt8l5", "IPSrwrJl7wYIVw13", "NCo9yXlbQ52FTHTC"]}, {"partyID": "j6SEAzT7TOpyiuvv", "userIDs": ["QUm29Iacq4XRLaA6", "43nTMtXSAyejnny0", "Ju13b6o5uB2XM6IH"]}, {"partyID": "y7EEvHyLmcvrZZOd", "userIDs": ["we1x8RjU6Bi8JXE5", "2sUBBq2SimQQoLbe", "5YOJvxGRxUzrTwag"]}]}, {"UserIDs": ["H7BMT1IZKTdNFVBQ", "1crBXAupATO8uXsq", "VpdiWo8SjDAM0Riw"], "parties": [{"partyID": "8wLYW3n4F3LD1EDw", "userIDs": ["BXw5uBYeQZOzATNS", "V9E9yyNb7yaLXzAV", "YymOuhCkZu4htrsf"]}, {"partyID": "8eIFSovTGXaMsq8e", "userIDs": ["PN1oco2jx8Upe8Sj", "MvpqM8puggOEdG47", "gD5i2Ni6AnWn3NdE"]}, {"partyID": "PhNHSH7eKDfRcngE", "userIDs": ["pTnRUQr3RLOM1vEx", "4gqDY6jwyKRxhkLe", "5zohg9s9utRQt28b"]}]}], "ticketIDs": ["6o3K0COF74tz6aeX", "ZOYwbwjMNdxKWlBf", "nRyFS0Ed7gTM5AVr"], "type": "tBQiDTcNnZa6Zuxk", "version": 80}' \
    'u6HXXdiC9ZDj4E4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PatchUpdateGameSession' test.out

#- 30 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "v12FNXypoOLl13j8"}' \
    '4P0KqirJ4PkMFtsn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateGameSessionBackfillTicketID' test.out

#- 31 GameSessionGenerateCode
$PYTHON -m $MODULE 'session-game-session-generate-code' \
    'Ffz8Ew0X8fBuBSKL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GameSessionGenerateCode' test.out

#- 32 PublicRevokeGameSessionCode
$PYTHON -m $MODULE 'session-public-revoke-game-session-code' \
    'SQ4GvLtz50D3rpBf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicRevokeGameSessionCode' test.out

#- 33 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "BovqLwXBuT30EYeR", "userID": "j17xGhaBKoUfiHjG"}' \
    'mCyPsKCJTv1ic9gv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicGameSessionInvite' test.out

#- 34 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'agF2cSuztsJ5tj64' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'JoinGameSession' test.out

#- 35 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'gV7nmDk29mcjSuz9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'LeaveGameSession' test.out

#- 36 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'vbNStqPtQmQN6eKA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGameSessionReject' test.out

#- 37 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "GiZFCftT0RWECdjW", "userIDs": ["YrnulxcCKAru8pOa", "AVLDB4k3JwkdaxR7", "GJpYmuYCPG181q9G"]}, {"partyID": "A5DydC2D8UT6KOc4", "userIDs": ["VPDUR9ayazqXRqeg", "IUicYXXzxsBFrUs9", "BYp6TgCejBd5o7iT"]}, {"partyID": "ST7R3KbbQGERMNpq", "userIDs": ["Wb51y5RUzvMfTkPy", "0fGvTGgfLKsg0b1B", "q78cE5O5pmPnbiPJ"]}], "proposedTeams": [{"UserIDs": ["9j4vxmbH3rVaauuf", "xkPHElug48TgfNu0", "rqXUOyToLPIREGIK"], "parties": [{"partyID": "lJt3EP9kKwkENQ8V", "userIDs": ["OHGwbADMfuOmh0lc", "iRhVZ2DeoODXMzLS", "rzoiBnYi5UWs3tYl"]}, {"partyID": "YeMoCimJySocRvUW", "userIDs": ["DOrFZKPNoN9AWtLK", "9TFgi9j2XMh9Wpif", "qjNjLOtNQts2yxf6"]}, {"partyID": "MLZJ2jZfZbpTJezz", "userIDs": ["riCDWXT59SRu0YqU", "xKDc84OMIzvTScdb", "KBsAyJMz4ILNDvhB"]}]}, {"UserIDs": ["4Eoes9a6XaJeRbzT", "PwD3jxF7vxRUY0il", "rNoFT98SgtJd4Z5f"], "parties": [{"partyID": "8nfaKqdZFLbZEHxs", "userIDs": ["DxeR6d7r1SQw80Jf", "MpPrSqYypRUnq5o4", "ETeCUYG9ccTt7Wxw"]}, {"partyID": "8OQ13t3uTw6zQuoZ", "userIDs": ["cXQpoTOxe8y1jorN", "sg9ZKYCKoISyXtHz", "oWGdYohxMp3uOQIy"]}, {"partyID": "bqWfG9BJ6FVKlbYH", "userIDs": ["tbPtaxvagSlpGgVT", "F6VeDAPOGBwweyFf", "XEOEAEtbag82KgBg"]}]}, {"UserIDs": ["yCd5vjkfz3eR4DtN", "p129hzBw3xLUcCEt", "0DzmkJq1sml5bYt7"], "parties": [{"partyID": "6BNsi4giR9434WpK", "userIDs": ["KdzxoufCNlFoOcWQ", "Qy4bjmQeEweoBHTd", "wAk7ZQnbqY1cQwVE"]}, {"partyID": "tAr5kKKAo9MM2Cqm", "userIDs": ["84jVi9kIpqgrzpUk", "NOBWydXV0Fi02aFr", "8CDapjwNOl4k8rVN"]}, {"partyID": "rm8drv8QD2JOe2Nt", "userIDs": ["z7EFvowPgIGuetxF", "MqXCQMAqQ2ZRGzNt", "rThFa9XU8mosluiH"]}]}], "version": 10}' \
    'J7O8sAQ32wj9uaDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AppendTeamGameSession' test.out

#- 38 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "sr9xYiWRuuzQJiLc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPartyJoinCode' test.out

#- 39 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    '1eI9w3JEhxPGbEk7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetParty' test.out

#- 40 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"s7gw07FlounC3vJK": {}, "BC7SwgoViPeIB4Eh": {}, "y0Y5aSJVDginxAM7": {}}, "inactiveTimeout": 59, "inviteTimeout": 8, "joinability": "XNjrdQL2jdx1eIba", "maxPlayers": 22, "minPlayers": 38, "type": "CY5bEokxXxkWZbjf", "version": 83}' \
    'GZxaossQmjo69woh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicUpdateParty' test.out

#- 41 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"JFyTNk5FGUPhR4LE": {}, "Zvz3EjFR7996Ug5m": {}, "4axDV5uTcYsoahUr": {}}, "inactiveTimeout": 62, "inviteTimeout": 77, "joinability": "Vl4gIF7v3qbZu9M3", "maxPlayers": 83, "minPlayers": 63, "type": "xqVAT4H1lRZ9Z1JB", "version": 36}' \
    '0EJyjBu4EzwRjD7j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPatchUpdateParty' test.out

#- 42 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'mQJeFPghqamSc5y0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGeneratePartyCode' test.out

#- 43 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'X48eT7Mluexk87b9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicRevokePartyCode' test.out

#- 44 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "Z5BTsEA3EdmW8saa", "userID": "bP4xRowfNojzPXI2"}' \
    'v0prR3OEey0MkZwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicPartyInvite' test.out

#- 45 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "6TYwNN3UYhic03qG"}' \
    'Eg5fNzBVrjo3g8Cf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicPromotePartyLeader' test.out

#- 46 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'Rwtyl1HeT7VEPgG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicPartyJoin' test.out

#- 47 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    '0QyXzsOzgck078Ig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicPartyLeave' test.out

#- 48 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'hoQBp2mWAOYksczx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicPartyReject' test.out

#- 49 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'BS0OBCa2vWadLmQt' \
    'YKmEMzicbuL2S3Ri' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicPartyKick' test.out

#- 50 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"W8dLTCBfGUdVEdvd": {}, "QL7sVwcZ2PofaJoS": {}, "qtrEOqxH46fRTSZo": {}}, "configurationName": "DdT0fefo74eg3Nt2", "inactiveTimeout": 5, "inviteTimeout": 14, "joinability": "0r4GqF0NHglOVuNZ", "maxPlayers": 29, "members": [{"ID": "LzNeJnBurh54CWbY", "PlatformID": "b0Pebyt8b4DGscjw", "PlatformUserID": "rizsFUgYwbaLvqvQ"}, {"ID": "2NbmDITuymTBjn3d", "PlatformID": "2sFzMS3QaVjZF7Ax", "PlatformUserID": "6115Kg9U8vrQJXQx"}, {"ID": "oIbVi2CLEk277Ivj", "PlatformID": "j1A647XQ3koaAfZI", "PlatformUserID": "im0sFPm1YN27bojD"}], "minPlayers": 97, "textChat": false, "type": "aZLpx4kEWYkO6KrK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicCreateParty' test.out

#- 51 PublicGetBulkPlayerCurrentPlatform
$PYTHON -m $MODULE 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["UMhJrASBh61hmWKS", "SrF35anDGvur19V1", "8oIrUKXttgAI2QdW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGetBulkPlayerCurrentPlatform' test.out

#- 52 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGetPlayerAttributes' test.out

#- 53 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "LmoPEgd8EMspOs8n", "data": {"kic9gj5vyUMAAmIH": {}, "YbsxG5N066FXb88S": {}, "bLOa21DiSFsm0XXQ": {}}, "platforms": [{"name": "JWszvTQEuALzDNp1", "userID": "SZ58aDllwzTRHak1"}, {"name": "MXxj7Esrg7900nml", "userID": "5BidsK9dCEzhVnOv"}, {"name": "0PQbVIaKiHfoeorY", "userID": "7A1otGFyv2SMjbEr"}], "roles": ["50qGdCZIc6EFqBKx", "bS7Q2OgRucL1jwRX", "zfjDZZBmOau6syme"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicStorePlayerAttributes' test.out

#- 54 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicDeletePlayerAttributes' test.out

#- 55 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicQueryMyGameSessions' test.out

#- 56 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
