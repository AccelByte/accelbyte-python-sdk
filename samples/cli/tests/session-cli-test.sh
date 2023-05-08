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
session-admin-create-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 62, "SessionTitle": "twYCA9kPI6LZrkq6", "ShouldSync": true, "XboxServiceConfigID": "9UzVRiXbqlAw7r6W", "XboxSessionTemplateName": "2ktQG0h5JAav5kRa"}, "clientVersion": "62WopBJHPtcDs8bB", "deployment": "ZLCXLx8bbgorQeFb", "inactiveTimeout": 87, "inviteTimeout": 14, "joinability": "1g7qbPngUNB1vRod", "maxPlayers": 46, "minPlayers": 63, "name": "pzS6DaDpv8N7ZQVq", "persistent": false, "requestedRegions": ["j6oDLjWjkY1aXlFc", "DtgOjchIua5tWEIC", "32ogW7olvbTgrhRT"], "textChat": false, "type": "bCbPOyNQkT7NvyE3"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'cwyALczNIicXm7ag' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"NativeSessionSetting": {"PSNServiceLabel": 92, "SessionTitle": "ZqxYG3aREAu2D6QV", "ShouldSync": true, "XboxServiceConfigID": "CWP75TB0i7pKxR8d", "XboxSessionTemplateName": "l0zRVW4EZG9m0Xcg"}, "clientVersion": "GVbMqSszE8GHavj7", "deployment": "AorKsxwkosAVerXp", "inactiveTimeout": 5, "inviteTimeout": 17, "joinability": "1C8XfwHuKeb9l3rG", "maxPlayers": 81, "minPlayers": 16, "name": "A3sNm84hddSpHt0P", "persistent": false, "requestedRegions": ["IR7CkyF6C7duuyZ0", "GhDogqrhBRd8lDR6", "qVNPRZYdFLIAjGGJ"], "textChat": false, "type": "DQQRgat0SevkLGMS"}' '0lyuI9a2I9u6Vpbs' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'x5w8hqUI06UpOXGS' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["LmCVuHOPlLlkvR8s", "KgnuRkgghGoYupD3", "91C2qtPYokahFjkQ"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'sfCaTmt1d67FXGk2' 's9Q0mPVo3twu0Mes' 'TCf9x4rt69lna7qx' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'NeIxPz6MbwL6IY69' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"z1UaLqYSYWytLPzi": {}, "ZMdjxcBZufQxGiHP": {}, "llG4cYEzfTD1ZBm3": {}}, "backfillTicketID": "MqHcUmLZZbSqb8Rw", "clientVersion": "Nmn9HrNQy4uZAAiE", "configurationName": "0mit9RGCCHYzUOcE", "deployment": "dscKHPEqgA8yu7Vk", "inactiveTimeout": 35, "inviteTimeout": 72, "joinability": "1DmrhZv15T7quIOv", "matchPool": "BMcaYmvCkGZ5dAgq", "maxPlayers": 48, "minPlayers": 96, "requestedRegions": ["pBFmaLoxozr6wfNP", "X2bOItRMvqtlB2jJ", "CSQT279ZZPYGu0rd"], "serverName": "lgdWyOtXi3choQrp", "teams": [{"UserIDs": ["OsDBU5SepjChB3V0", "v52Dlym6puQ23xoJ", "8aeCnaLpUKp44YUD"], "parties": [{"partyID": "jasWIPUvmEejtGeo", "userIDs": ["yIPa8ZRrvjj7il35", "MXbN9oCMNqq98SjT", "vhZNkSQ70D0H6BXk"]}, {"partyID": "sUC9b6i5lZC9xv32", "userIDs": ["e8c5csSovoqsZNBd", "te9NDUPVJf6c2Z0Q", "ZxfgPubTDIHrvqAT"]}, {"partyID": "huwjRHpKKTlmVr9X", "userIDs": ["uoJbRFQSKVPHbn4X", "xtu7LQRENjEEztx1", "WsYSiZqan0nSBJro"]}]}, {"UserIDs": ["av91GXlvPG6bFYRe", "VHQipcCx9Zw5D2L7", "vIYhGGSyEW4ZJJ42"], "parties": [{"partyID": "d3PBddN8S48l9lyN", "userIDs": ["ApflxqMrj3oZk03Q", "XcKMDYDDxHSZjtqX", "yJ58f7Gc26SaiGVk"]}, {"partyID": "ydwYWQG26yUZNmTB", "userIDs": ["cvrbYCwZtxFHyPLt", "I8ilbyDPUIj88cek", "dqCt81P1ktfIovmv"]}, {"partyID": "9gsR5cJcHm3SZLxo", "userIDs": ["RDFuuuySj29a9LJE", "8HoRS1X2PFAAMwzH", "PxB1UskYs4Yw20DO"]}]}, {"UserIDs": ["qOBSC2DKHRuPMMWH", "8Yb33T5UBJCjfcnL", "RfxeCSz9WEi8Kllo"], "parties": [{"partyID": "eH0JT1yduat2vQR3", "userIDs": ["biBfsu4jmsRE2w1y", "EkLgh3tIYt4SqYUT", "LDx9gIiDandpGT2t"]}, {"partyID": "24aOMh5eC3IHeHSK", "userIDs": ["LCa3xreNDUWehwH3", "q31A806DJgas4b6z", "3LNUj7fdgLA84Z8Y"]}, {"partyID": "Yk6QEgJjBbEDoNf3", "userIDs": ["n0hEoRCAcf80zfFy", "abWAgIUXiI07A68e", "aqC2J9jyEW6GLbc0"]}]}], "textChat": true, "ticketIDs": ["aKDUL3sa13lk1dQB", "HO86IlBhnetU4RwT", "qUXlTDBzOuYsaZA2"], "type": "yyd4mbqoOfADMMAX"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"FaY9eKa699bRVhya": {}, "KwwrAP2aMlu7WtjC": {}, "toYetOO847g8OudO": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'fjnCuHZ3c46IjGa2' --login_with_auth "Bearer foo"
session-get-game-session '3YvYmmDg7VYPXIuv' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"UYTZBRujIUE1Tq5j": {}, "yAZvkRCMNFIurjh2": {}, "imdb4rbkXj0ZwsVC": {}}, "backfillTicketID": "0gL97ZVJSPqJiwv1", "clientVersion": "qlYB1RSKs6gQxC3G", "deployment": "b7S0o4zGYY7KQI1A", "inactiveTimeout": 9, "inviteTimeout": 64, "joinability": "MbqqZtfNWql4nmwA", "matchPool": "ft4gqkNNlWkD9eOz", "maxPlayers": 17, "minPlayers": 49, "requestedRegions": ["RFOn0jJLHC9LxhvN", "XTwGBCtohLtl9Zuh", "ytm5UDrT6QXCs5SP"], "teams": [{"UserIDs": ["BbRPZTF6oQAXVG7t", "nsZg5QgXjvyGJPN4", "eXbJE5Vs2GcyomQo"], "parties": [{"partyID": "IXimBJehyxlNsjUg", "userIDs": ["xBkF6wFPoJeQedio", "gEhhM2rIizGdKvOP", "dq5xrgxSmy1DN9LF"]}, {"partyID": "kYW5DQyj4bj5Ro2o", "userIDs": ["gaKt2ujQSa3Zdb65", "UXmy0Zp6iIaTIKUk", "mkk9QM0NBMA9ORxp"]}, {"partyID": "zwLR2AK6eXUGPJsw", "userIDs": ["1fiP80G9Pclxcft2", "ulIJzPyrVEiOG4Uc", "qsuGKHhMRWLVd3Dl"]}]}, {"UserIDs": ["hLuIpomM8sm1MiaI", "1mX2tJoARtdbBe7u", "dsMrok0WvGYYnx4V"], "parties": [{"partyID": "709xbnGezKsDwG2o", "userIDs": ["mOR2nvYI9TVqJdvz", "cWbfUpaXp5JMl5LL", "4bTxBmZjdrrIxsB0"]}, {"partyID": "NRsB1fPqqRRulpqp", "userIDs": ["ymDkQhtrHWwRVnwV", "BOqOHi8pWGd1juYh", "iqjRJOqB5F93zFQb"]}, {"partyID": "JndUDpdONneAczbB", "userIDs": ["dHb2slt71B1SmZp2", "JZp50CnPb71ORYcm", "QbTU5JX8ccLjMXJR"]}]}, {"UserIDs": ["k0eaKQDOJvrTefgl", "Ss6g4iY9u02aCNYI", "Wekp18lOC3mNqF7B"], "parties": [{"partyID": "l0LcghVHfPEspxwh", "userIDs": ["RON0bc1eMbEIjowL", "qc3ecjXJbZDKKoxL", "E1Y3Dymtj3giPg4x"]}, {"partyID": "4yiPX6ues1Hhhkg1", "userIDs": ["yLVbLFzHEP8cM4NT", "wr0KHaAsmTej52WK", "i6tArAURt9plCSVq"]}, {"partyID": "8PdH6hJPUAc0RVwX", "userIDs": ["gAgntLMCuaXBWQi6", "BqPg4xr0lCancUZG", "CHsZYoLfR1KtOv7Z"]}]}], "ticketIDs": ["y0b65uvuKNuy0ytZ", "Q7M6Nzy1adnSKOLF", "Kx1dX4LuWJu3pDMU"], "type": "AeeZ97SBROPYuG6X", "version": 34}' '4AOec0z8eBeeoip6' --login_with_auth "Bearer foo"
session-delete-game-session '8J1nsv4W2OJhtafx' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"MSJlHeb34sZKHcl5": {}, "LLLOexL4fZvWtND2": {}, "tcBFpX8lNtFEJ7tn": {}}, "backfillTicketID": "kY6Mca5afj12K2Iz", "clientVersion": "rBvvWm4udE0OXudX", "deployment": "gNne8kJATwlc6esU", "inactiveTimeout": 32, "inviteTimeout": 37, "joinability": "6Sw1I98jeZQ7hfxn", "matchPool": "hLd3Knaknoed9DHh", "maxPlayers": 78, "minPlayers": 39, "requestedRegions": ["OqQGhCUr6iTrjyEg", "arAdNJOIG36I6tRb", "RcrEveMdAdiPKDUV"], "teams": [{"UserIDs": ["SC00PYeDcagginxn", "FIna3yddcbsPheTH", "26IUJNvYuGRUvpZa"], "parties": [{"partyID": "HCuESOiIZsMfB4ZH", "userIDs": ["3mtgWgU4pCAKxeE7", "0CaunQNxot371W9G", "4AvQkqsGnmyo5JJT"]}, {"partyID": "UVmb8GEXFTlEMEsF", "userIDs": ["zYqwgK1Np5nodqpL", "m7FhJBNXzAFdO0Kh", "qf6kiTdSGv2LFjAK"]}, {"partyID": "Y7CbgsWqFWZX7kPB", "userIDs": ["om8F9GLLTG8phc3n", "4iLoIllKlpO2pqiX", "JF3WGRaoQomSJC4D"]}]}, {"UserIDs": ["drKF7SUQPLG59e0k", "5ZtX6wK7PpUlcIW3", "2iK7MGt1ixY5rA1W"], "parties": [{"partyID": "oVeJIePF8ZrQzP4z", "userIDs": ["vtdxdbZUpd6FJtHJ", "1pyVwyKQLY6FEO65", "Rb3z7CYLM8IlsHqf"]}, {"partyID": "fnrfsGlfPaZKBwa3", "userIDs": ["Ddb60ufPpzwj1QGI", "FmlVf4jvapseE9LN", "9bvhOrHflIOd6X3v"]}, {"partyID": "iLvtEk4mTIpUA9gx", "userIDs": ["o8SV38nEhoXmM2W7", "l6jHMA2rG3nakopA", "ywelu01nryEJ0Nqo"]}]}, {"UserIDs": ["Tow0qiOiC4j0iktm", "0ZPLkLOsp0LZ5njN", "86Hl8kUXzt6bSc6b"], "parties": [{"partyID": "WvgpVyW9dD1kOmvr", "userIDs": ["Aejcq2LgkQuaS7RB", "x3vim02jBOxrZDyv", "pcLYOWA8NjxOnaEo"]}, {"partyID": "k4nOOCzfsflhjbng", "userIDs": ["JOUn18G5MlfDTk8a", "G40NlncceIZSwgAI", "kgzh4pTU0Am4DZhl"]}, {"partyID": "0bQxFJ3sWCqQpQ2F", "userIDs": ["bKPFMycMSQ4qfAac", "R0LgB5BUXvjcu2s6", "w3VifnKqmTSoGH1X"]}]}], "ticketIDs": ["EfY6QAYn6WQ5UBEU", "1QAOHfZiGhxOdcuD", "XSxSc3aZPV87pna0"], "type": "8gxefTYKhuxaEc7M", "version": 85}' 'NvZ85DDKDAF8KDsB' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "ZOuYQJ03BAHZ7c53"}' 'q7akMpcmnnx6RVBr' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"platformID": "op9v7aZK3h65hbN1", "userID": "5zfQSfQrtfF3TQN0"}' 'OcNDLr36vzohZyjM' --login_with_auth "Bearer foo"
session-join-game-session 'QAg5mPYhrLTyU8Oh' --login_with_auth "Bearer foo"
session-leave-game-session 'gfY9JQYGF4bYXEcE' --login_with_auth "Bearer foo"
session-public-game-session-reject 'Nx9xZlAchob44lON' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "DDwMvgI0HlyPR7wZ", "userIDs": ["NiVsF6xG2mXEQdbz", "IVy8alncV7vWgSHd", "fo07UctPErqxyMyO"]}, {"partyID": "K06MqQBErxgjVByc", "userIDs": ["vU4PbmRDcrg0DjQj", "BECXvea7H1m2lJFR", "Z3ZprZ60zMjhTHeh"]}, {"partyID": "94TSenE5hCFkIf5w", "userIDs": ["eqZ18MH57l2Zsrh9", "0ETtYmGukz3Mnlrj", "cHp6B8Vj7rXFgDnD"]}], "proposedTeams": [{"UserIDs": ["kdZ9bpjb1tdA3Qhj", "CMW64f4XhIjSoTB2", "NMKtezapPr2QEPx3"], "parties": [{"partyID": "zTxBGtEJIYppuUSs", "userIDs": ["KoHw2hyd12uSE7BE", "v3aevq6iohU1cg4W", "1IS3Uv1BpWoJBaqd"]}, {"partyID": "g2FHcunsS1lnaO2m", "userIDs": ["9vqjhbeK2qN8g6x2", "PyYDo5R3hLiD5sf5", "y1JsxJNGmyt0SQDU"]}, {"partyID": "DoWBZVGLlkUetzCA", "userIDs": ["Wc9x1aMjgGim51T1", "07XIZRZ7tZdIs0xf", "4czdt7zqmSKxOEQl"]}]}, {"UserIDs": ["Vcx6GqsBq8vdhWVn", "uYLgpZehK0G2nmyu", "ViB9kRTcSQdTnNYG"], "parties": [{"partyID": "eAfYFG3wSkHKufBd", "userIDs": ["S3ZOokZB4cXnAXyu", "Gz6LlxHv8SwyagYv", "DJ3w3UNgIGj2jZtE"]}, {"partyID": "YT8sIPSE1XXPzySa", "userIDs": ["0sZoFS6xCOWMpyh9", "pMsQgb64ELbzDMwy", "o4nIRysQdbufXjYn"]}, {"partyID": "SoIFeouC2m38kXrD", "userIDs": ["ZWlGVE9sJ4NpUtKp", "6M9I6nEwnZhsjwJe", "GwaPSDMZz95OYKiq"]}]}, {"UserIDs": ["aZD63xe5rruJVfLG", "ea0ZtlzUcuHAXz0U", "V31MfuGaXsAuGsZa"], "parties": [{"partyID": "SHevO0TQNEI3kfab", "userIDs": ["xJWWSI1ECUo1NPpe", "FhUztXDgB7n4C97u", "APP8PATLpUpxeJls"]}, {"partyID": "BJT6Hh3OMjAjq2mK", "userIDs": ["8lbSEEelxnb5QxWG", "2HFnZlA6HKWW4fI1", "IQcoBQELcNlZkqTZ"]}, {"partyID": "rKgXNwvm4e5GX6H7", "userIDs": ["42OixhtAoKiVm6UR", "T95XhnUcvWB28Mpu", "suhhDJ5slzgiWZEt"]}]}], "version": 49}' '05CXNGehQ2aTjTDf' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "KFDXC7eGL5YhJDWh"}' --login_with_auth "Bearer foo"
session-public-get-party '9YWqc0qgV6d9yOfI' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"MLds2DbPcaoMdtRL": {}, "TmSvTkQQgB7exYvm": {}, "HMxr5hPCJJztJBg0": {}}, "inactiveTimeout": 39, "inviteTimeout": 18, "joinability": "TJg46IewOXE2AkCh", "maxPlayers": 87, "minPlayers": 29, "type": "IZsUf8lGFXcmwTER", "version": 69}' 'JWwfCjYwWkLob9gK' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"Lqs2nEZhpByfHZin": {}, "xNfgPAwkMBsznlBU": {}, "qnLT4AbGptKaWNvP": {}}, "inactiveTimeout": 3, "inviteTimeout": 32, "joinability": "WOaNdsimmkW2miH3", "maxPlayers": 47, "minPlayers": 90, "type": "Hht1SwqTsKKKo37N", "version": 69}' 'Ed0JPxVyQpshaDwN' --login_with_auth "Bearer foo"
session-public-generate-party-code 'qTbbFMXAMfVXe0GZ' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'eMgsRsmH1EQrYmkP' --login_with_auth "Bearer foo"
session-public-party-invite '{"platformID": "KTPOlhTtSiZNCxuo", "userID": "gFteTHJe4BhSSQkQ"}' 'D6WmOt6D7ufFVTOh' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "vQpfbBke8aEdd36x"}' 'j6wySoltDxsbzxrl' --login_with_auth "Bearer foo"
session-public-party-join 'aKEfkoYjY2o6ouRW' --login_with_auth "Bearer foo"
session-public-party-leave '9UtNquwC3WgumrIz' --login_with_auth "Bearer foo"
session-public-party-reject '4NhGztZpr4U4fwQI' --login_with_auth "Bearer foo"
session-public-party-kick 'iLXgmRasvjO4lj8m' '3XEwP2b4gd3xOeii' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"8Jnmssep2xD2NY0k": {}, "ABeGs9yxahld1pO0": {}, "Gyf5PO3COyMvczgE": {}}, "configurationName": "pzZ3FbtxfhcRC7IV", "inactiveTimeout": 6, "inviteTimeout": 0, "joinability": "BsaIecRxIsZvD6rm", "maxPlayers": 52, "members": [{"ID": "F0YbuU5ar5qTLWUC", "PlatformID": "y0Afgc050XIZRW49", "PlatformUserID": "1e94mQjVOOBnIWhu"}, {"ID": "nElqZUodp3IhtCSH", "PlatformID": "y1ei1fIrPvfHnRN0", "PlatformUserID": "6EjRwEQlNapJRfk4"}, {"ID": "f9Zcw1pEHAyNFxcV", "PlatformID": "TKuAQTGh5BxjWOoz", "PlatformUserID": "GoDtsUuYo5p8ED5Q"}], "minPlayers": 54, "textChat": false, "type": "ufwNa8lzfjv9oYMX"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "currentPlatform": "jlVHY1AHwF3vGoav", "data": {"7MK0PcLnEkcokKwc": {}, "Q0baDT9OyJ2h23GU": {}, "S2amU7syGlElXdEA": {}}, "platforms": [{"name": "OrVSnLocLVVYamQc", "userID": "4wcG5nDBLJoJHbiQ"}, {"name": "5duE5p4cfs2E41cK", "userID": "8QTwiIAvxSvNDlmM"}, {"name": "5nQFMGzs7fzjgyc4", "userID": "4mEh9tRk8knYSV30"}]}' --login_with_auth "Bearer foo"
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
echo "1..48"

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

#- 5 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 22, "SessionTitle": "zqxBPNe8ae1Il4aA", "ShouldSync": true, "XboxServiceConfigID": "LYXxm09wpGAbpEmD", "XboxSessionTemplateName": "Y9vLh3u6EDsUmrV6"}, "clientVersion": "kH4OotKwG3UC6XCn", "deployment": "nZxF8CmQr17W65br", "inactiveTimeout": 96, "inviteTimeout": 44, "joinability": "rBBN9tU6TDm5GloF", "maxPlayers": 92, "minPlayers": 41, "name": "KWM1eym5ydC6p25x", "persistent": true, "requestedRegions": ["tWtn4Yr2svKM6pqL", "GZ0TBujELAUK6mQ5", "iZgbwwm5iGzXtckn"], "textChat": true, "type": "idwCkZwqjYLfTiCO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateConfigurationTemplateV1' test.out

#- 6 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetAllConfigurationTemplatesV1' test.out

#- 7 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    '1NDBvQvRPnAz4VzW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {"PSNServiceLabel": 26, "SessionTitle": "CpoBCbyJsF5IjF1c", "ShouldSync": true, "XboxServiceConfigID": "338HS6CBgVRyihYN", "XboxSessionTemplateName": "Z84CVhziXV8HwSmv"}, "clientVersion": "cvcDKF19yVRafCjO", "deployment": "uSYht83AdvBaagTi", "inactiveTimeout": 90, "inviteTimeout": 35, "joinability": "J8daGTVX3Bb7jlz5", "maxPlayers": 70, "minPlayers": 17, "name": "fHgKjI9mwJSrN8jk", "persistent": true, "requestedRegions": ["PxLv9HBEUe89AwEw", "1HO4FnKtx4XLKAml", "Dr19uJ3nq6VerzVC"], "textChat": false, "type": "MfZ1hDHtbh4HtMlF"}' \
    'gvh2Dp2SoiIPp1yv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'fAHS0VgLu11A3HTo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeleteConfigurationTemplateV1' test.out

#- 10 AdminGetDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-get-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetDSMCConfiguration' test.out

#- 11 AdminSyncDSMCConfiguration
$PYTHON -m $MODULE 'session-admin-sync-dsmc-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminSyncDSMCConfiguration' test.out

#- 12 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryGameSessions' test.out

#- 13 AdminDeleteBulkGameSessions
$PYTHON -m $MODULE 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["vFi4tPAGfleyCA6j", "EtcqsnzoVILjkwW6", "1duF87aUyrdt4XSp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'WBAetsanzqP8oxfr' \
    'tbECD1CYPwaiBAxf' \
    'YL8Avt70ZUT2fSk3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminUpdateGameSessionMember' test.out

#- 15 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminQueryParties' test.out

#- 16 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminQueryPlayerAttributes' test.out

#- 17 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'LL0calqxEewuGS46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"9k2hG0WKt4sUmanY": {}, "xM0UHZVNYzGMNIpW": {}, "oSLkUrfuf4U3WeYe": {}}, "backfillTicketID": "A9t2ENKKWrFtHIi1", "clientVersion": "CMgKAOG5iDcCR5Pb", "configurationName": "CvDLil8wj9cKM3Ar", "deployment": "6MF35hCER4nGmWGg", "inactiveTimeout": 94, "inviteTimeout": 23, "joinability": "JfHlJl4tHGa4XfZc", "matchPool": "d9CVnGqMX9FieeEs", "maxPlayers": 37, "minPlayers": 51, "requestedRegions": ["WEUl07bhwntCVqiY", "OJf5KwMZQjzvjSoz", "v6CTRDl0zp9CzHFw"], "serverName": "inkBNi4gvqgl6TZ9", "teams": [{"UserIDs": ["TGVPmv34h6T7Esuf", "mfxKYB4LM6H6QXmp", "Z9X3fUSR1l9xLPBs"], "parties": [{"partyID": "mAUrD9L1IiD6MlcE", "userIDs": ["PhMDFzjHZ3sIhzOx", "2CXKlvIomU3pIxM9", "n8D2eLMe3lt9qfx2"]}, {"partyID": "UDcgVE7L9FK6e0Mr", "userIDs": ["Pc4vtxk9hVKlG56H", "lzGr7XjdyRJunZPk", "p6ccIBnWyPw8mj7g"]}, {"partyID": "yQ7XdIszGRj46COP", "userIDs": ["ipH1MWVTHG0qHJCW", "EfOJpZm9yEYWNGMy", "2pgSGSUOK68eqGJt"]}]}, {"UserIDs": ["Wf1Ybgg8rdwY9bmr", "vHmO07KNqX9LM2Iw", "EsdOGBXBwnzDX8v3"], "parties": [{"partyID": "xgC1Ge9PdbTTAJ2G", "userIDs": ["p1r0sVZ6LJAOddIL", "2l3hPjNDKv2LWfXq", "jr8fS79En3wYowBd"]}, {"partyID": "kaZ3y6i38XQjLDRq", "userIDs": ["kpiFK5BtiQ272Uo9", "UBJWodpdwsX1jorc", "yR0x3YiHF8ITGPRQ"]}, {"partyID": "BCgIs1Q2lzxl0yF5", "userIDs": ["m77TTh4gUoj8u2WR", "cLiEtzVlnkflfn7p", "HY48F1dl1q92m3iR"]}]}, {"UserIDs": ["lfnBAk0CwiAsR65y", "Q9ssuHdGmxncCEr0", "KcgeqzGbruNB72HH"], "parties": [{"partyID": "MkjzyBB4UFKiaoV0", "userIDs": ["VOem2yqPsMFxKybP", "kbuS6x9cLJ1APnNl", "sa2bRBr27fVMWuAf"]}, {"partyID": "DqLMR919IZPKOKiA", "userIDs": ["VQXXOmqFHLbyXmgC", "NiXH8uenbC5CphgM", "weexsIAP5vHLjBJ9"]}, {"partyID": "iqMcBL4BzhDUjhKP", "userIDs": ["wbwcvQU5kG8bXGFm", "PAnOkDiJq4xQye7H", "qnVK3YVeOWs9mfVQ"]}]}], "textChat": false, "ticketIDs": ["XJ5zifF8y959anrN", "SleywHbHig6IKWVZ", "77KeRWdECaFGzfZ2"], "type": "hxcJ2Fnemn7M23Sz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"Uo4hNBDh9ZFP1OW0": {}, "nXOErQPS4VsRoYIK": {}, "69yg9ADCGiXaLs2x": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'jHkinOD975nARHCm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'hNHSXuqIHsxvaUoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"DmwWsukxncuD3QxC": {}, "XMd00YBWCaVVmM45": {}, "mfIZsWhkS476dGGJ": {}}, "backfillTicketID": "wJ00UH197MJ6zU7J", "clientVersion": "LMQyMWzYQCAaPJgo", "deployment": "xGJoJaSzUtY4ZD0X", "inactiveTimeout": 39, "inviteTimeout": 0, "joinability": "b0U4pH16NUsVY21N", "matchPool": "VIs7NRen2Y3Ns0QJ", "maxPlayers": 87, "minPlayers": 12, "requestedRegions": ["eaWytPfds1BYx0Ea", "URydf8ZyyZeHAWGg", "JUbUJRMbkcTglbU8"], "teams": [{"UserIDs": ["6FyOjApNHBVfNOUR", "cjY3YYT9oTynmfIu", "BWgJTNFfM8M0IW4o"], "parties": [{"partyID": "e8KDgy0xZfAcNg14", "userIDs": ["Ws8TIP1LKiFQoLDv", "umfqrgSfnx2h61X9", "dN1MGRXBJ6mVV7JS"]}, {"partyID": "9qjNLwvI8JdiY3RR", "userIDs": ["iLilmOGF6dLLIeIV", "IjMcdlbdRXTGIrdN", "L5gJPqTAjgqaTHf1"]}, {"partyID": "ANTJ9Yk997XkGOdC", "userIDs": ["6ItxDT8p4n4XCFkD", "1AJLCwszbZxuHSgD", "OK8bjoF7bL2635Kb"]}]}, {"UserIDs": ["tZTGJpqgl2IzNXGT", "uQPIDpor7t1aJLNN", "z6QIVC9Mfuc8VOsn"], "parties": [{"partyID": "mnlVljdWYmELe74p", "userIDs": ["38vumnxAnYBTxaTI", "z0jcgDI8Pkz96vd8", "0msqIm5bufnBqrpL"]}, {"partyID": "eqhwVhjnnjKMEmtb", "userIDs": ["iWsAQHbMrKYi0Zxs", "5SWCqZXHLLa31oQf", "7BULnZDhutDM6Bqg"]}, {"partyID": "uqD5xxGxBWtnTKUe", "userIDs": ["2znsqPzPkwCBo2Sw", "CUsTag4MLAo3m61P", "2xaNfmn8Onb1a9gM"]}]}, {"UserIDs": ["z0F2UBRmMhAbUWmF", "hdYLWzMuv3zkUY0n", "0BAZkwbYkBLyO6A0"], "parties": [{"partyID": "FqfhnaB3YxKNdOTa", "userIDs": ["cCcJfIfXshuLUk5W", "dpxjZx5noXPhPUTK", "bonoucNmzwOZOK56"]}, {"partyID": "sDkci5rZ8iMlOuks", "userIDs": ["QJCiRFiZWwJ7NrTb", "1XTB9YQzUJ9XlYJ8", "BzP6EUmUXGM5anIl"]}, {"partyID": "oyj9lhbvuQdW2jwK", "userIDs": ["Uckc794ryY91lX8D", "D4MYXlrJ81lHvv9r", "qvEoM8YmVjAkO3HK"]}]}], "ticketIDs": ["sEp6KlqwW4djrexc", "bHdEtoQvpV344Rct", "mTozCi8HeV6jbalH"], "type": "mqBBfi7sSF5BoGiT", "version": 57}' \
    'bguBF6Gsvvdl8jHz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    '9x7XZIjU4IK9lOLa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"ZaMphKCqTq3EVheJ": {}, "joEEXBLIxGnNuhoJ": {}, "M3WWPvvCiCf33ViE": {}}, "backfillTicketID": "dqQpoGkUWNizk5Uc", "clientVersion": "PAGv6c1ESC6hZYTY", "deployment": "Zbzf5aANNNs5kgSZ", "inactiveTimeout": 81, "inviteTimeout": 96, "joinability": "MSBqabUXOGkkoMUZ", "matchPool": "n1YXj5zFZeOCOR9N", "maxPlayers": 44, "minPlayers": 91, "requestedRegions": ["BQZSJPOIKrRBrYVz", "i9ui3lvozTt9TsH7", "A0TuU2aL4bPkk11s"], "teams": [{"UserIDs": ["ys6GdkDcos5uVJ0B", "JfZ0jvA54CSqZFDs", "O1skRjOU1SMfQVQa"], "parties": [{"partyID": "6blj9Rdd85bdYUum", "userIDs": ["PKVSZCg3XTc9vQe0", "dHJfF6KIuvnRCa9J", "ktyBdxkZKrEWFw9G"]}, {"partyID": "YxjiiOQAD77ci0vf", "userIDs": ["WVZoRRMPi57HyKKz", "5nyI6ulKNKoXa0dg", "x1JgjC56pda3YhtQ"]}, {"partyID": "xpCYME6x21pdX2QS", "userIDs": ["PAd9sxoLnWGP1Paf", "IjLX8ce0KbNN7Ycl", "2JfmQplvGjVQ4aeb"]}]}, {"UserIDs": ["jfgGu472oWJlfglL", "M4xjfkNL4lU6jaGf", "sD1cfswmeFpvtDte"], "parties": [{"partyID": "toQVFL8LNW11vtpa", "userIDs": ["Txi7k489jRCn48bv", "kCPfKofwXOIZZQAJ", "za84lKKmVOaTS6xB"]}, {"partyID": "bNrSUAW2ak7ISDrB", "userIDs": ["Vg6NuDZvPb1kuUfN", "fUDe4g7q6PHEaqbz", "HvDDl1jiLw3XMGBA"]}, {"partyID": "6JXDpA1tIC45C0oa", "userIDs": ["GouFu4hXONgUwJnU", "pryDeRcpUvlrw2Mw", "C1uuokpaIjL0Vxe5"]}]}, {"UserIDs": ["n9Lx3QcFo9gxOgvD", "c7xMrRKvw8ISP2WK", "mCRRXBxlalCHtWlK"], "parties": [{"partyID": "xLpS8fLWoQ5nuJha", "userIDs": ["tQPxR7dvBVC5zgOK", "LTDmHe8c1eJ9sde7", "Ryt4udIv22M18uux"]}, {"partyID": "9xBomQFPFWy5cwNP", "userIDs": ["I6aFo0MVwDZCIXFN", "EL3uWVRz3V7YbJM3", "bNLWHAbCZixe2cQ6"]}, {"partyID": "O30lpzcBQMAEcNcJ", "userIDs": ["qrKxnMzSYoc4ZjiM", "Y4H34B6wVd8ipcKD", "wQeUWtjCC2UH6jzM"]}]}], "ticketIDs": ["O3AfmOS5mQNyRPZF", "PNP56l1AT6OLKmZh", "CZxxPPdPwOtEuWBS"], "type": "O2jJepUnEEgja2mI", "version": 61}' \
    'yq5E5HleLoog4me2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "NBFp62xlXvVcJerT"}' \
    'PW02PWsHiKYArAxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"platformID": "KBfBfDlrQQuAc10D", "userID": "jjwMv4vrIPRtvhQI"}' \
    'yLarjaLOKnX51yAB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    '8Pa3uNGKhaLlJzJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'SnJIIgsAVmaGYxUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '1B9oVuzG2CnYX2YB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "F2g7TVtzYEHUodh3", "userIDs": ["iUfBthbepUCTWiZ1", "uqh7GAi4FEIu44u8", "3ZLRxYlYqlpq03BG"]}, {"partyID": "dIk4oEogFVGR71rJ", "userIDs": ["OBy6lsj1AKGBjnHm", "aAu4YK87DYAWWcbc", "bGWmKgE8CZ4AELr5"]}, {"partyID": "lraa5v5P5Cj8hgFs", "userIDs": ["qHC9h5JPiMEtgKui", "GTYgwWv5XldL6rOV", "GcRAn51rVAQSxp4q"]}], "proposedTeams": [{"UserIDs": ["TB54mKA3V9DKlCeZ", "7mLYsHooOIaxIpb1", "cIOJPS3lJ80YJ41U"], "parties": [{"partyID": "4ooQ980ywmg1pWpW", "userIDs": ["it1QC7FKe0fnHUlm", "U1unGKM0tgfeWy47", "bbwMI4gGmvK9gW59"]}, {"partyID": "6FwBNrFXt3TAuKBw", "userIDs": ["BcD12ae6r3hHwya4", "NpdOzg3hr6ucHf7d", "bh2iKNUl0qJqzoKM"]}, {"partyID": "RMG541PAiNjULsx4", "userIDs": ["SnKNXLMUaDSwwQln", "NRZJHBSB4fZWEFIZ", "s28Ff1kZp1Zktx3N"]}]}, {"UserIDs": ["7WNMYIfcDKbLu8pn", "K34oA1keYXJvtggD", "dXjbdjMBahFZZGMT"], "parties": [{"partyID": "cqnWrIprOv0BJ9Sg", "userIDs": ["l7H1sdH2RIJz1eI7", "Q5pu9PutLf6IrvZo", "BGQbO4S3rURGWUzP"]}, {"partyID": "AE6SdV4D5jftRl9r", "userIDs": ["ZmtQUvro8TWwXWsz", "9TVmdMKEohKzuMYD", "UTLBeCidXjuGgx8n"]}, {"partyID": "cXejmeZtzT0qj0lt", "userIDs": ["sqfiZrthVvyX0OCK", "DJE3RMUddwSSgxCu", "8zru1DhGAYOHR5BW"]}]}, {"UserIDs": ["a9VzIkaQEl1iUPro", "NB6hI6IpGcToWgFv", "dRhG9NwV3zDuqVlV"], "parties": [{"partyID": "TypcYPK8IxrSZuxW", "userIDs": ["l0Je4fJIyFAm3DQh", "t4JwnPS2urJqerob", "WMZGVL5KLTxahWlS"]}, {"partyID": "6XdBaKSLCgOOPXM6", "userIDs": ["XTUh2dJ90yqHDNac", "l4F9G6Dl5TFwBY6H", "KXAblkT8VGgSH8MG"]}, {"partyID": "ZGwiVj7eDTaka9AB", "userIDs": ["fX1IByPEOuPhGspR", "i3bhPQvBBJI5Jxyt", "pcubN4AUUPFPscZs"]}]}], "version": 47}' \
    'eJOD4DMtqfIGiGJo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "vgWSRxZ8N4UQ2fg3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'V1o2x0hL5DuBDqMy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"IAzWze94MEdJFAy2": {}, "JTllJkRGB8jqJEd6": {}, "eqqsBVyONV0JRtoz": {}}, "inactiveTimeout": 72, "inviteTimeout": 100, "joinability": "0jpliCFQ6WgJpGPi", "maxPlayers": 12, "minPlayers": 57, "type": "dc5VyC4qvWjVac1c", "version": 87}' \
    'Nb7yaLXzAVYymOuh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"CkZu4htrsf8eIFSo": {}, "vTGXaMsq8ePN1oco": {}, "2jx8Upe8SjMvpqM8": {}}, "inactiveTimeout": 31, "inviteTimeout": 46, "joinability": "uggOEdG47gD5i2Ni", "maxPlayers": 88, "minPlayers": 54, "type": "ny4ij4ysYPonb59g", "version": 87}' \
    'DfRcngEpTnRUQr3R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'LOM1vEx4gqDY6jwy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'KRxhkLe5zohg9s9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"platformID": "tRQt28b6o3K0COF7", "userID": "4tz6aeXZOYwbwjMN"}' \
    'dxKWlBfnRyFS0Ed7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "gTM5AVrtBQiDTcNn"}' \
    'Za6Zuxk6u6HXXdiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '9ZDj4E4mv12FNXyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'oOLl13j84P0KqirJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    '4PkMFtsnFfz8Ew0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '8fBuBSKLSQ4GvLtz' \
    '50D3rpBfBovqLwXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"uT30EYeRj17xGhaB": {}, "KoUfiHjGmCyPsKCJ": {}, "Tv1ic9gvagF2cSuz": {}}, "configurationName": "tsJ5tj64gV7nmDk2", "inactiveTimeout": 70, "inviteTimeout": 25, "joinability": "yssSA8nP5PQjpzk2", "maxPlayers": 94, "members": [{"ID": "QN6eKAGiZFCftT0R", "PlatformID": "WECdjWYrnulxcCKA", "PlatformUserID": "ru8pOaAVLDB4k3Jw"}, {"ID": "kdaxR7GJpYmuYCPG", "PlatformID": "181q9GA5DydC2D8U", "PlatformUserID": "T6KOc4VPDUR9ayaz"}, {"ID": "qXRqegIUicYXXzxs", "PlatformID": "BFrUs9BYp6TgCejB", "PlatformUserID": "d5o7iTST7R3KbbQG"}], "minPlayers": 62, "textChat": true, "type": "pqWb51y5RUzvMfTk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicCreateParty' test.out

#- 44 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetPlayerAttributes' test.out

#- 45 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": true, "currentPlatform": "y0fGvTGgfLKsg0b1", "data": {"Bq78cE5O5pmPnbiP": {}, "J9j4vxmbH3rVaauu": {}, "fxkPHElug48TgfNu": {}}, "platforms": [{"name": "0rqXUOyToLPIREGI", "userID": "KlJt3EP9kKwkENQ8"}, {"name": "VOHGwbADMfuOmh0l", "userID": "ciRhVZ2DeoODXMzL"}, {"name": "SrzoiBnYi5UWs3tY", "userID": "lYeMoCimJySocRvU"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicStorePlayerAttributes' test.out

#- 46 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerAttributes' test.out

#- 47 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicQueryMyGameSessions' test.out

#- 48 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
