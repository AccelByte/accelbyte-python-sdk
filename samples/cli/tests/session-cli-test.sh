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
session-admin-create-configuration-template-v1 '{"clientVersion": "V4BchcMT", "deployment": "xslrhz3O", "inactiveTimeout": 56, "inviteTimeout": 32, "joinability": "4Lqyym8f", "maxPlayers": 90, "minPlayers": 0, "name": "6aXIKJE3", "requestedRegions": ["5ARE1ZD8", "TPePGAYJ", "M8kXBsO3"], "textChat": false, "type": "saiS2SaO"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'xo1qwiCh' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "lAKiLqy5", "deployment": "95w8l9nD", "inactiveTimeout": 47, "inviteTimeout": 51, "joinability": "DIUCSZAR", "maxPlayers": 25, "minPlayers": 15, "name": "1hJ83mEu", "requestedRegions": ["PArC0QYh", "le1Il4Bv", "bwSJCpbl"], "textChat": true, "type": "53G9taI0"}' 'W5rTTkiY' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'CKpMxPg8' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'PWZzbc9K' 'W793s0X5' 'ifK54Seb' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 'mmTKsAuQ' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"7S4o78JF": {}, "NMIKXqMV": {}, "aCZprQEY": {}}, "backfillTicketID": "jRCEesxk", "clientVersion": "DjWj7rVx", "configurationName": "AU78v4zZ", "deployment": "0Zmao2PO", "inactiveTimeout": 17, "inviteTimeout": 42, "joinability": "IKf70s87", "matchPool": "TjLMm32h", "maxPlayers": 58, "minPlayers": 89, "requestedRegions": ["koOy7kWT", "BUyabwSP", "JXnjBLs6"], "serverName": "bUIXWoUO", "teams": [{"UserIDs": ["w2QbO9rR", "32nyb7V1", "OAuIE9PK"], "parties": [{"partyID": "BFQyfQhO", "userIDs": ["rIEyp7Fz", "PPkF92AG", "8GZdwb4A"]}, {"partyID": "XhJcHkHK", "userIDs": ["aCRWNcB8", "4KzDrtWW", "IAorzSXN"]}, {"partyID": "gydFy0bG", "userIDs": ["4g6omDNl", "GZ1cNKuD", "8SQvZrPQ"]}]}, {"UserIDs": ["yQg8xyYU", "cgFXZDDJ", "jjAAPYom"], "parties": [{"partyID": "tYxXZg4k", "userIDs": ["n4D78lUI", "YOYMAnl8", "ECjCqYj8"]}, {"partyID": "LksuGbsn", "userIDs": ["Ek6j2ahJ", "aDskzf37", "8fU9RV4e"]}, {"partyID": "AA9x76P0", "userIDs": ["sSsEARpo", "j4Eo9SWJ", "MqJ71oAC"]}]}, {"UserIDs": ["P1FHd2jr", "xlektUX6", "Y4f9LhWY"], "parties": [{"partyID": "COp2pvOE", "userIDs": ["chMl6X6Z", "JBMOPhIJ", "tztldkZY"]}, {"partyID": "wRitdVTo", "userIDs": ["vRIF1Qw0", "TrFeUctX", "c1CvC92P"]}, {"partyID": "TmlTnr8h", "userIDs": ["BdtI8Tsh", "UebwdYtf", "zdEZtfEG"]}]}], "textChat": false, "ticketIDs": ["E3ZjzouU", "IUzF8gCZ", "I0uW3syj"], "type": "UqWPy59E"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"s3igrBes": {}, "NwjxErGu": {}, "S3Qt09s5": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'qYrhVDLt' --login_with_auth "Bearer foo"
session-get-game-session 'QVR2Ccno' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"S24Svo7H": {}, "tgwcMuyx": {}, "RFcWnj3U": {}}, "backfillTicketID": "QCX0QISC", "clientVersion": "3EmGL2YB", "deployment": "zSEQRSdV", "inactiveTimeout": 52, "inviteTimeout": 55, "joinability": "HiAagZxy", "matchPool": "grrk2Mcj", "maxPlayers": 58, "minPlayers": 3, "requestedRegions": ["p8xzWXZj", "Lj7VwlbN", "t14k5n8D"], "teams": [{"UserIDs": ["7AGfjMoN", "sIEPi442", "n0TDt41M"], "parties": [{"partyID": "Oc4GL2QZ", "userIDs": ["NzavDOo4", "6qJrAcVn", "uEH4eCya"]}, {"partyID": "WvPZ1ICn", "userIDs": ["KBdOpxoe", "wPjO4aOF", "dz2JzDM2"]}, {"partyID": "Xrg8rhMK", "userIDs": ["YZuZCHb5", "Im2XTr5P", "3ChKy5YG"]}]}, {"UserIDs": ["ZIgOMsUD", "f76HIZ9S", "T8KXXAOb"], "parties": [{"partyID": "dGs624Sv", "userIDs": ["rPS7AzFP", "MhwdBclD", "csvgyQR8"]}, {"partyID": "AVGUAvSS", "userIDs": ["pyjxFgg1", "3GhN35I6", "UTrCIw0T"]}, {"partyID": "SDe45IeR", "userIDs": ["w4AnLjEa", "36VW9wjN", "4xzTnpZB"]}]}, {"UserIDs": ["U0DFBZVL", "XPLNaO0A", "gIYNb1u2"], "parties": [{"partyID": "i8WJjCXw", "userIDs": ["DW4TLmjz", "cvUL1xRR", "ebhBPPhL"]}, {"partyID": "a647WuPE", "userIDs": ["eykGYmC3", "2LXcjNiv", "yVpiZXGB"]}, {"partyID": "vVavb1DZ", "userIDs": ["OUMTJTDm", "nNdFBCrB", "zL2bn2b6"]}]}], "ticketIDs": ["GPTCqPjI", "Oj0xCzEV", "sfFLpQbt"], "type": "btRGFj07", "version": 94}' 'phWu3tAd' --login_with_auth "Bearer foo"
session-delete-game-session 'ZbSJYy47' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"HcVI2wTu": {}, "pk2Ji4pW": {}, "u9bq3Qe5": {}}, "backfillTicketID": "xcPW9L68", "clientVersion": "6RXMOLuz", "deployment": "pGU1f8Cy", "inactiveTimeout": 27, "inviteTimeout": 95, "joinability": "T7eZeS9t", "matchPool": "vfSjcSYO", "maxPlayers": 10, "minPlayers": 10, "requestedRegions": ["5BRaf3jo", "gN2ZfLZY", "Ec0BUk1G"], "teams": [{"UserIDs": ["WLvS9lLT", "idSGwstu", "ixeCd9bj"], "parties": [{"partyID": "E3QvBeUT", "userIDs": ["S4eZWtxx", "C8XgO73Y", "0PeJi2xM"]}, {"partyID": "ZWFnqphO", "userIDs": ["bxGidiB0", "nyAQKtE5", "KvQOm1Sq"]}, {"partyID": "fy1DdCFJ", "userIDs": ["wNWsltZx", "aWTvDaIS", "yjp7cbPy"]}]}, {"UserIDs": ["MtrqTNIN", "COMYD0WD", "cQMziUVH"], "parties": [{"partyID": "skY9aylj", "userIDs": ["jG8HQ5QO", "sUH6Vk7J", "VvGgVJdB"]}, {"partyID": "ky0KpuGZ", "userIDs": ["B7fDLQfs", "4MHYHEca", "C3g9Y6cW"]}, {"partyID": "59Xwe5Xw", "userIDs": ["zp1EXGEQ", "FdsB3q9O", "whvWGsbl"]}]}, {"UserIDs": ["DNO2L2gR", "a8Zma4BK", "87kyDuEx"], "parties": [{"partyID": "L2ZBlnqX", "userIDs": ["M0VwfvDo", "hY7TwkV0", "h7BjYh48"]}, {"partyID": "CIEpBXAb", "userIDs": ["aHZGIqJz", "fPX6V67V", "OrzdX0DF"]}, {"partyID": "SPzUx3rY", "userIDs": ["ijvwcEOY", "3E82UyQz", "BvJTwFJ9"]}]}], "ticketIDs": ["ht4a8EzF", "kxPmqveg", "z6Fa8lYX"], "type": "EfEZgXKZ", "version": 24}' 'Q6YtQbU4' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "wDnCdcJI"}' '4YyZIw2j' --login_with_auth "Bearer foo"
session-join-game-session '09sQDV36' --login_with_auth "Bearer foo"
session-leave-game-session 'DIjl9F5d' --login_with_auth "Bearer foo"
session-public-game-session-reject 'v8e8ehIp' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "mn8PMnol"}' --login_with_auth "Bearer foo"
session-public-get-party 'aMGFVU4r' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"V9QLtrnD": {}, "lvN0OULS": {}, "AhVtc66F": {}}, "inactiveTimeout": 49, "inviteTimeout": 5, "joinability": "OJy3THlQ", "maxPlayers": 25, "minPlayers": 25, "type": "nczeeCOf", "version": 45}' 'NtL0uFLD' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"IIt7bQl9": {}, "aJF52kvh": {}, "p8es1hKB": {}}, "inactiveTimeout": 89, "inviteTimeout": 91, "joinability": "ck7XNxLf", "maxPlayers": 51, "minPlayers": 31, "type": "cZIehtqw", "version": 99}' 'L5T5eKjB' --login_with_auth "Bearer foo"
session-public-generate-party-code 'mkKcVxnk' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'hFD2DA0s' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "av4De9Om"}' 'idlf2dTK' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "uGWJEkSX"}' 'C60QHr9a' --login_with_auth "Bearer foo"
session-public-party-join '7CdpDuCk' --login_with_auth "Bearer foo"
session-public-party-leave '9f78rpnP' --login_with_auth "Bearer foo"
session-public-party-reject '9StBSSE4' --login_with_auth "Bearer foo"
session-public-party-kick 'TsHXRCeo' 'iM2kbDXZ' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"GdLpZdcy": {}, "jOeNTN9K": {}, "a58R7hVx": {}}, "configurationName": "jhIzEFF5", "inactiveTimeout": 28, "inviteTimeout": 32, "joinability": "o5Afqn6N", "maxPlayers": 45, "members": [{"ID": "Gm9spVNc", "PlatformID": "7rY0mQYS", "PlatformUserID": "3loqvYaj"}, {"ID": "AM7NEI1k", "PlatformID": "HFLrJqZf", "PlatformUserID": "ZslzyCqJ"}, {"ID": "rMYp27vB", "PlatformID": "yWEhNZbu", "PlatformUserID": "jo1xA906"}], "minPlayers": 37, "textChat": false, "type": "1AG0YKtN"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": true, "data": {"hA4S3eyN": {}, "UiNyA6ad": {}, "BvVBe8fo": {}}, "platforms": [{"name": "aCiWHYsH", "userID": "LnGcMcR4"}, {"name": "mjv1Cma6", "userID": "tRG7I34C"}, {"name": "HRekoVuT", "userID": "HkkUbh0k"}]}' --login_with_auth "Bearer foo"
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
echo "1..42"

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

#- 4 AdminCreateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-create-configuration-template-v1' \
    '{"clientVersion": "aga3dGem", "deployment": "X2E97mpE", "inactiveTimeout": 2, "inviteTimeout": 36, "joinability": "iZm8jN45", "maxPlayers": 34, "minPlayers": 40, "name": "yl9NOoXj", "requestedRegions": ["lZhvcaFq", "fMWyuO76", "Y5vuXX5b"], "textChat": false, "type": "EA9cUs37"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminCreateConfigurationTemplateV1' test.out

#- 5 AdminGetAllConfigurationTemplatesV1
$PYTHON -m $MODULE 'session-admin-get-all-configuration-templates-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetAllConfigurationTemplatesV1' test.out

#- 6 AdminGetConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-get-configuration-template-v1' \
    'wf328wKb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "fSZKA4Hf", "deployment": "vPDQDZvf", "inactiveTimeout": 76, "inviteTimeout": 42, "joinability": "fCrjeJIi", "maxPlayers": 21, "minPlayers": 11, "name": "kPZcT8Wx", "requestedRegions": ["ZRLENe80", "20rE3SFQ", "ZnRGDaH0"], "textChat": true, "type": "13HBa9gd"}' \
    'pRg54LYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'eNZxKstO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteConfigurationTemplateV1' test.out

#- 9 AdminQueryGameSessions
$PYTHON -m $MODULE 'session-admin-query-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminQueryGameSessions' test.out

#- 10 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    '9dccevY6' \
    'nesbYWhO' \
    'pUeICPI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 AdminQueryPlayerAttributes
$PYTHON -m $MODULE 'session-admin-query-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminQueryPlayerAttributes' test.out

#- 13 AdminGetPlayerAttributes
$PYTHON -m $MODULE 'session-admin-get-player-attributes' \
    'xO16eL7G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerAttributes' test.out

#- 14 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"9IXfR6M0": {}, "ShAhO6yH": {}, "eYBqEAYf": {}}, "backfillTicketID": "5w9bZF7i", "clientVersion": "4qDT6Bmq", "configurationName": "HdR0Ozsp", "deployment": "LLQnirey", "inactiveTimeout": 11, "inviteTimeout": 37, "joinability": "NDI49frL", "matchPool": "Qe9YMx8J", "maxPlayers": 69, "minPlayers": 57, "requestedRegions": ["OeARRr2V", "65wzhIM8", "boFMPHB8"], "serverName": "glLThCTZ", "teams": [{"UserIDs": ["LJuUEov4", "9Y2PzVXQ", "Lc6DSGcE"], "parties": [{"partyID": "SIyfwrjJ", "userIDs": ["OBnSmiGl", "3wRaFAMN", "SMq4TTDa"]}, {"partyID": "ZUy63bqz", "userIDs": ["C2phtzN8", "ELyi4q5A", "VqihLqL1"]}, {"partyID": "PV5Kdx8g", "userIDs": ["0aoCPyXP", "QQdTH3fY", "8H49hhEW"]}]}, {"UserIDs": ["u7KaITPw", "LO0TCmWY", "8WWCEucc"], "parties": [{"partyID": "gO3dZHHf", "userIDs": ["6nj6rUzZ", "oPG5blP9", "h9YjmtlG"]}, {"partyID": "PGdwcSad", "userIDs": ["t4g72Jkj", "60XIYIi1", "6Ao43DsE"]}, {"partyID": "bNvt3DNV", "userIDs": ["qYT6mjyB", "vBGL478F", "vxFl7i2K"]}]}, {"UserIDs": ["n63RLdfx", "A6lPrrjL", "6dhbdVo0"], "parties": [{"partyID": "MMitOwmK", "userIDs": ["GpjlyQVK", "fvQSFE7p", "VxO1wODu"]}, {"partyID": "dxMAHNjS", "userIDs": ["uk6qfvWE", "Ik22cmHM", "JCDpxXBE"]}, {"partyID": "0LC1tChk", "userIDs": ["pyl20BMG", "PIrLuES0", "CNTX3yxl"]}]}], "textChat": false, "ticketIDs": ["RpuSQHvX", "PE6xA9r5", "wRLYhVjK"], "type": "8p7yR7KR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateGameSession' test.out

#- 15 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"WT6MTlq0": {}, "sKJCx84W": {}, "IlelmJns": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicQueryGameSessions' test.out

#- 16 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'bHdzThpE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetGameSessionByPodName' test.out

#- 17 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'qeCmJv3q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameSession' test.out

#- 18 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"l71Z06Tu": {}, "ksMFEGZv": {}, "rb8GRH7K": {}}, "backfillTicketID": "tgIEE67y", "clientVersion": "opeY07HA", "deployment": "GMBeiVD7", "inactiveTimeout": 37, "inviteTimeout": 32, "joinability": "pzfSIAee", "matchPool": "Q061XewL", "maxPlayers": 87, "minPlayers": 71, "requestedRegions": ["jnieDxfv", "qzoqsdkh", "1z9wGvCW"], "teams": [{"UserIDs": ["F6qHjgFh", "rC96spQc", "Rg54VAFt"], "parties": [{"partyID": "WAqdHnGr", "userIDs": ["Uy1JHJR7", "iLqyIGgW", "pYAFLBB8"]}, {"partyID": "k848Nj2W", "userIDs": ["ENLotZGQ", "hgowGATF", "w5PoNUfw"]}, {"partyID": "zBSfHVs7", "userIDs": ["IkjkJCiL", "ayUKUd5j", "ArXyhLwa"]}]}, {"UserIDs": ["U3S9gGM0", "0XQung8F", "RaFfX41I"], "parties": [{"partyID": "oiwXqpDf", "userIDs": ["AX3OAg48", "kERpDk4l", "bxsrTagX"]}, {"partyID": "EJ02ps8a", "userIDs": ["jN47egWa", "RKlMad7h", "iowtJNGI"]}, {"partyID": "agNlHZ0x", "userIDs": ["SXugRIh4", "GpHI3DUR", "rGRm4hGH"]}]}, {"UserIDs": ["aAKc3kNz", "42exEnpH", "izD8YRpP"], "parties": [{"partyID": "TY61skXn", "userIDs": ["avdTTMlt", "UE27xKxM", "etFbXgcj"]}, {"partyID": "fkXdQmvE", "userIDs": ["3Eaafhd2", "liH19XLY", "7njVfCKE"]}, {"partyID": "s4G5407E", "userIDs": ["7KwGNjAy", "AueihUK1", "dieKz8p4"]}]}], "ticketIDs": ["buBp7kWN", "r9ojbzWz", "B5lhAcIL"], "type": "lzm7PHvE", "version": 69}' \
    'UH4idupR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateGameSession' test.out

#- 19 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'ZBTcaPDy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteGameSession' test.out

#- 20 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"TQ1FSEN8": {}, "8T5Xx2fR": {}, "O7DzSSG8": {}}, "backfillTicketID": "x7gmBCA4", "clientVersion": "JrF5v0BL", "deployment": "nhlTTjLd", "inactiveTimeout": 91, "inviteTimeout": 85, "joinability": "F72CdBr6", "matchPool": "JnWvCxr7", "maxPlayers": 79, "minPlayers": 50, "requestedRegions": ["RemATFpF", "aobGWMPj", "ONJfMt8A"], "teams": [{"UserIDs": ["DSfcyD0Q", "LXqP0tVL", "q2SpbFpU"], "parties": [{"partyID": "EwJkez8l", "userIDs": ["p8a4HCrN", "XeKhYhAR", "UxnhxrKK"]}, {"partyID": "971K8q0J", "userIDs": ["DSB2qqru", "w2zCQVx6", "EgLfzzhv"]}, {"partyID": "TDZGhG1S", "userIDs": ["xqm24YvX", "mxZy97rf", "bDhje2CG"]}]}, {"UserIDs": ["fAqvV0qu", "7aHweBFh", "555cq3uY"], "parties": [{"partyID": "gAohS6tP", "userIDs": ["pHGUZhDE", "rgZlNG12", "hBItHRVU"]}, {"partyID": "KzX4x2nt", "userIDs": ["kcySX6FN", "WJQEjy1J", "vvNRBNyo"]}, {"partyID": "zOsK6pBm", "userIDs": ["EndBADZ5", "90EvXpku", "hXF2kHCp"]}]}, {"UserIDs": ["dYgmBIP8", "zdlQ1FeU", "DHPA9MhU"], "parties": [{"partyID": "6Y1xOJy8", "userIDs": ["5Ph1KLxH", "Tqr0bfmR", "EOxqPKRR"]}, {"partyID": "NYMCVF0I", "userIDs": ["NnKPVRum", "3lwa611B", "5t5yUk9e"]}, {"partyID": "uWV7tl3M", "userIDs": ["RJWwouqe", "KsVx4CVM", "uh2iKrjX"]}]}], "ticketIDs": ["GJN8YhGU", "Xuy0K7Mv", "kjZEAqoL"], "type": "nqDiiOaf", "version": 57}' \
    'aP4Wi3tN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PatchUpdateGameSession' test.out

#- 21 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "Hbl5t2HP"}' \
    'f3PYHqnB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGameSessionInvite' test.out

#- 22 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'EM0QYkWL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'JoinGameSession' test.out

#- 23 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'uRGT3Clx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'LeaveGameSession' test.out

#- 24 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'BlkkPHM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGameSessionReject' test.out

#- 25 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "7hRSglLQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicPartyJoinCode' test.out

#- 26 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'UMuqzAUS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetParty' test.out

#- 27 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"J4x6ekoe": {}, "mLe6VtBq": {}, "TdIy69Nr": {}}, "inactiveTimeout": 74, "inviteTimeout": 24, "joinability": "M9u7xwJ4", "maxPlayers": 19, "minPlayers": 66, "type": "1bsPOzHq", "version": 99}' \
    'rqt6hDIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicUpdateParty' test.out

#- 28 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"U0n2oXsK": {}, "UA1y8rHv": {}, "XoSxHGQD": {}}, "inactiveTimeout": 21, "inviteTimeout": 42, "joinability": "gr6QqfYA", "maxPlayers": 84, "minPlayers": 29, "type": "dc3d2qRU", "version": 32}' \
    'm7SH8H8w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicPatchUpdateParty' test.out

#- 29 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'umkuZR9y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGeneratePartyCode' test.out

#- 30 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '5bjKuKD1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicRevokePartyCode' test.out

#- 31 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "8ME9c121"}' \
    'Lt9jtGNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyInvite' test.out

#- 32 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "0fyGVB7a"}' \
    'yn2vMzIc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPromotePartyLeader' test.out

#- 33 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    '0MZToul4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyJoin' test.out

#- 34 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'EJVCxcPz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyLeave' test.out

#- 35 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'LIp2dyOt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicPartyReject' test.out

#- 36 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'tYCXYpxf' \
    'p8mbUS9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicPartyKick' test.out

#- 37 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"1Lcxcn0R": {}, "2yza71Mq": {}, "0mnfi18T": {}}, "configurationName": "WLxKEEDj", "inactiveTimeout": 52, "inviteTimeout": 52, "joinability": "UybsKD3N", "maxPlayers": 54, "members": [{"ID": "ptJ6xTW7", "PlatformID": "G4RMzvX5", "PlatformUserID": "JssAxbiU"}, {"ID": "LQXcXUB6", "PlatformID": "tXZktcp0", "PlatformUserID": "X9xMBidb"}, {"ID": "MZS7B3gK", "PlatformID": "mXhyvRFi", "PlatformUserID": "qu22dBny"}], "minPlayers": 74, "textChat": false, "type": "vp8tC93m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicCreateParty' test.out

#- 38 PublicGetPlayerAttributes
$PYTHON -m $MODULE 'session-public-get-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetPlayerAttributes' test.out

#- 39 PublicStorePlayerAttributes
$PYTHON -m $MODULE 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "data": {"xRYz3Gz0": {}, "Lx0tTv3I": {}, "pAklTiEb": {}}, "platforms": [{"name": "oIt7ryRw", "userID": "JGpYVfu5"}, {"name": "7qcZwtsU", "userID": "78muzGL5"}, {"name": "crXlm2Uf", "userID": "E3Q5invZ"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicStorePlayerAttributes' test.out

#- 40 PublicDeletePlayerAttributes
$PYTHON -m $MODULE 'session-public-delete-player-attributes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicDeletePlayerAttributes' test.out

#- 41 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicQueryMyGameSessions' test.out

#- 42 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
