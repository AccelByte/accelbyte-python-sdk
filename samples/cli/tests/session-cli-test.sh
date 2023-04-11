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
session-admin-create-configuration-template-v1 '{"clientVersion": "EAxcVpFr", "deployment": "ttufHIRd", "inactiveTimeout": 68, "inviteTimeout": 59, "joinability": "9UzVRiXb", "maxPlayers": 33, "minPlayers": 1, "name": "lAw7r6W2", "persistent": false, "requestedRegions": ["HpzSn3ZP", "Udc0qh4n", "8mzZ0m8S"], "textChat": true, "type": "cDs8bBZL"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'CXLx8bbg' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "orQeFbQ1", "deployment": "g7qbPngU", "inactiveTimeout": 82, "inviteTimeout": 56, "joinability": "lyzSxwEl", "maxPlayers": 65, "minPlayers": 91, "name": "HHdgs21J", "persistent": true, "requestedRegions": ["7ZQVqGj6", "oDLjWjkY", "1aXlFcDt"], "textChat": false, "type": "8NY4YkHs"}' '1cnz1JSD' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'gY1TXp38' --login_with_auth "Bearer foo"
session-admin-get-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-sync-dsmc-configuration --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-delete-bulk-game-sessions '{"ids": ["zsCTCrbC", "bPOyNQkT", "7NvyE3cw"]}' --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'yALczNIi' 'cXm7agSr' 'jJW2OQNO' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-admin-query-player-attributes --login_with_auth "Bearer foo"
session-admin-get-player-attributes 's1PXhT5F' --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"vdiRilZ7": {}, "oFgx4c8O": {}, "umKtPDKJ": {}}, "backfillTicketID": "DXn7Z4U6", "clientVersion": "8su8Xfql", "configurationName": "qNiTvB6S", "deployment": "dAdIhUDr", "inactiveTimeout": 46, "inviteTimeout": 29, "joinability": "oZ5MecdK", "matchPool": "i5r6QEa1", "maxPlayers": 51, "minPlayers": 74, "requestedRegions": ["sLEzth6m", "XhzkzWkF", "eZSoEAcB"], "serverName": "dW19m4eu", "teams": [{"UserIDs": ["6d5tA5jU", "miTqpyhP", "FdxLzFQN"], "parties": [{"partyID": "05MYzYiK", "userIDs": ["We5dNRlj", "v7IPrDQQ", "Rgat0Sev"]}, {"partyID": "kLGMS0ly", "userIDs": ["uI9a2I9u", "6Vpbsx5w", "8hqUI06U"]}, {"partyID": "pOXGSLmC", "userIDs": ["VuHOPlLl", "kvR8sKgn", "uRkgghGo"]}]}, {"UserIDs": ["YupD391C", "2qtPYoka", "hFjkQsfC"], "parties": [{"partyID": "aTmt1d67", "userIDs": ["FXGk2s9Q", "0mPVo3tw", "u0MesTCf"]}, {"partyID": "9x4rt69l", "userIDs": ["na7qxNeI", "xPz6MbwL", "6IY69z1U"]}, {"partyID": "aLqYSYWy", "userIDs": ["tLPziZMd", "jxcBZufQ", "xGiHPllG"]}]}, {"UserIDs": ["4cYEzfTD", "1ZBm3MqH", "cUmLZZbS"], "parties": [{"partyID": "qb8RwNmn", "userIDs": ["9HrNQy4u", "ZAAiE0mi", "t9RGCCHY"]}, {"partyID": "zUOcEdsc", "userIDs": ["KHPEqgA8", "yu7Vk6Jt", "4Ymos9Jc"]}, {"partyID": "dos4fYcT", "userIDs": ["VU6RBt0z", "YoMcHyCU", "EXlAvxJM"]}]}], "textChat": false, "ticketIDs": ["zr6wfNPX", "2bOItRMv", "qtlB2jJC"], "type": "SQT279ZZ"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"PYGu0rdl": {}, "gdWyOtXi": {}, "3choQrpO": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'sDBU5Sep' --login_with_auth "Bearer foo"
session-get-game-session 'jChB3V0v' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"52Dlym6p": {}, "uQ23xoJ8": {}, "aeCnaLpU": {}}, "backfillTicketID": "Kp44YUDj", "clientVersion": "asWIPUvm", "deployment": "EejtGeoy", "inactiveTimeout": 72, "inviteTimeout": 38, "joinability": "Pa8ZRrvj", "matchPool": "j7il35MX", "maxPlayers": 2, "minPlayers": 80, "requestedRegions": ["jk4Lo0LS", "P0pf4Ixj", "Ukl535X3"], "teams": [{"UserIDs": ["ateEKDpA", "Dz1x3poD", "3Qgb3boL"], "parties": [{"partyID": "QQ1MzH7Q", "userIDs": ["m8bwbmXg", "dAPh1ETh", "G96gAFKK"]}, {"partyID": "2WDgCcxv", "userIDs": ["ONZm3EeE", "RmDnyeFo", "F7VSZ6pf"]}, {"partyID": "3vneSD2T", "userIDs": ["b3g7mSQU", "hAEtrmjq", "U6YE3p4l"]}]}, {"UserIDs": ["Sck0ZHn5", "GI39YBHq", "aTHeKtW1"], "parties": [{"partyID": "8iGeUlc9", "userIDs": ["d9sogWa2", "4CKNS0Gq", "VvUfHQvs"]}, {"partyID": "HXNUNe4m", "userIDs": ["hgo5QB65", "lSAiYnNj", "kfZrQvGg"]}, {"partyID": "bLdLsFzH", "userIDs": ["kBMr1yrO", "MlNFSrUE", "irnjX9fD"]}]}, {"UserIDs": ["mIbeZxzf", "TcyiuATu", "s9hsfpFD"], "parties": [{"partyID": "cSDG8aMV", "userIDs": ["GLiBNrDj", "qoxcwgGL", "XpUL4pp2"]}, {"partyID": "ncYAHdNz", "userIDs": ["DmeIP6rO", "vDz9KOsb", "392k6YmJ"]}, {"partyID": "FfRByjlB", "userIDs": ["iuFM3FIo", "Vk8T3GpA", "nkCmBUqg"]}]}], "ticketIDs": ["2SCnqntX", "9y1aZSWM", "iVi10sG6"], "type": "vxkfUcmq", "version": 90}' '3T5UBJCj' --login_with_auth "Bearer foo"
session-delete-game-session 'fcnLRfxe' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"CSz9WEi8": {}, "KlloeH0J": {}, "T1yduat2": {}}, "backfillTicketID": "vQR3biBf", "clientVersion": "su4jmsRE", "deployment": "2w1yEkLg", "inactiveTimeout": 14, "inviteTimeout": 26, "joinability": "3tIYt4Sq", "matchPool": "YUTLDx9g", "maxPlayers": 70, "minPlayers": 87, "requestedRegions": ["iDandpGT", "2t24aOMh", "5eC3IHeH"], "teams": [{"UserIDs": ["SKLCa3xr", "eNDUWehw", "H3q31A80"], "parties": [{"partyID": "6DJgas4b", "userIDs": ["6z3LNUj7", "fdgLA84Z", "8YYk6QEg"]}, {"partyID": "JjBbEDoN", "userIDs": ["f3n0hEoR", "CAcf80zf", "FyabWAgI"]}, {"partyID": "UXiI07A6", "userIDs": ["8eaqC2J9", "jyEW6GLb", "c0NaKDUL"]}]}, {"UserIDs": ["3sa13lk1", "dQBHO86I", "lBhnetU4"], "parties": [{"partyID": "RwTqUXlT", "userIDs": ["DBzOuYsa", "ZA2yyd4m", "bqoOfADM"]}, {"partyID": "MAXFaY9e", "userIDs": ["Ka699bRV", "hyaKwwrA", "P2aMlu7W"]}, {"partyID": "tjCtoYet", "userIDs": ["OO847g8O", "udOfjnCu", "HZ3c46Ij"]}]}, {"UserIDs": ["Ga23YvYm", "mDg7VYPX", "IuvUYTZB"], "parties": [{"partyID": "RujIUE1T", "userIDs": ["q5jyAZvk", "RCMNFIur", "jh2imdb4"]}, {"partyID": "rbkXj0Zw", "userIDs": ["sVC0gL97", "ZVJSPqJi", "wv1qlYB1"]}, {"partyID": "RSKs6gQx", "userIDs": ["C3Gb7S0o", "4zGYY7KQ", "I1AeFgPq"]}]}], "ticketIDs": ["aOkvo1ao", "lB4lkKB4", "EYOkQ1jM"], "type": "D3cym8xI", "version": 10}' 'On0jJLHC' --login_with_auth "Bearer foo"
session-update-game-session-backfill-ticket-id '{"backfillTicketID": "9LxhvNXT"}' 'wGBCtohL' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "tl9Zuhyt"}' 'm5UDrT6Q' --login_with_auth "Bearer foo"
session-join-game-session 'XCs5SPBb' --login_with_auth "Bearer foo"
session-leave-game-session 'RPZTF6oQ' --login_with_auth "Bearer foo"
session-public-game-session-reject 'AXVG7tns' --login_with_auth "Bearer foo"
session-append-team-game-session '{"additionalMembers": [{"partyID": "Zg5QgXjv", "userIDs": ["yGJPN4eX", "bJE5Vs2G", "cyomQoIX"]}, {"partyID": "imBJehyx", "userIDs": ["lNsjUgxB", "kF6wFPoJ", "eQediogE"]}, {"partyID": "hhM2rIiz", "userIDs": ["GdKvOPdq", "5xrgxSmy", "1DN9LFkY"]}], "proposedTeams": [{"UserIDs": ["W5DQyj4b", "j5Ro2oga", "Kt2ujQSa"], "parties": [{"partyID": "3Zdb65UX", "userIDs": ["my0Zp6iI", "aTIKUkmk", "k9QM0NBM"]}, {"partyID": "A9ORxpzw", "userIDs": ["LR2AK6eX", "UGPJsw1f", "iP80G9Pc"]}, {"partyID": "lxcft2ul", "userIDs": ["IJzPyrVE", "iOG4Ucqs", "uGKHhMRW"]}]}, {"UserIDs": ["LVd3DlhL", "uIpomM8s", "m1MiaI1m"], "parties": [{"partyID": "X2tJoARt", "userIDs": ["dbBe7uds", "Mrok0WvG", "YYnx4V70"]}, {"partyID": "9xbnGezK", "userIDs": ["sDwG2omO", "R2nvYI9T", "VqJdvzcW"]}, {"partyID": "bfUpaXp5", "userIDs": ["JMl5LL4b", "TxBmZjdr", "rIxsB0NR"]}]}, {"UserIDs": ["sB1fPqqR", "Rulpqpym", "DkQhtrHW"], "parties": [{"partyID": "wRVnwVBO", "userIDs": ["qOHi8pWG", "d1juYhiq", "jRJOqB5F"]}, {"partyID": "93zFQbJn", "userIDs": ["dUDpdONn", "eAczbBdH", "b2slt71B"]}, {"partyID": "1SmZp2JZ", "userIDs": ["p50CnPb7", "1ORYcmQb", "TU5JX8cc"]}]}], "version": 77}' 'dQV0TqI8' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "EFnmDbxI"}' --login_with_auth "Bearer foo"
session-public-get-party 'xi4YKlON' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"k2Q5Y4Jv": {}, "aizwiila": {}, "tuUjjt9l": {}}, "inactiveTimeout": 70, "inviteTimeout": 81, "joinability": "MGql5ElE", "maxPlayers": 1, "minPlayers": 13, "type": "9EIIlGcH", "version": 57}' 'xwhRON0b' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"c1eMbEIj": {}, "owLqc3ec": {}, "jXJbZDKK": {}}, "inactiveTimeout": 30, "inviteTimeout": 67, "joinability": "xLE1Y3Dy", "maxPlayers": 26, "minPlayers": 39, "type": "pai0rYaT", "version": 16}' 'yiPX6ues' --login_with_auth "Bearer foo"
session-public-generate-party-code '1Hhhkg1y' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'LVbLFzHE' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "P8cM4NTw"}' 'r0KHaAsm' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "Tej52WKi"}' '6tArAURt' --login_with_auth "Bearer foo"
session-public-party-join '9plCSVq8' --login_with_auth "Bearer foo"
session-public-party-leave 'PdH6hJPU' --login_with_auth "Bearer foo"
session-public-party-reject 'Ac0RVwXg' --login_with_auth "Bearer foo"
session-public-party-kick 'AgntLMCu' 'aXBWQi6B' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"qPg4xr0l": {}, "CancUZGC": {}, "HsZYoLfR": {}}, "configurationName": "1KtOv7Zy", "inactiveTimeout": 26, "inviteTimeout": 3, "joinability": "gBLxh4ij", "maxPlayers": 65, "members": [{"ID": "y0ytZQ7M", "PlatformID": "6Nzy1adn", "PlatformUserID": "SKOLFKx1"}, {"ID": "dX4LuWJu", "PlatformID": "3pDMUAee", "PlatformUserID": "Z97SBROP"}, {"ID": "YuG6XqP6", "PlatformID": "oo7G73zd", "PlatformUserID": "xTgOfnwI"}], "minPlayers": 7, "textChat": false, "type": "lNa29fDL"}' --login_with_auth "Bearer foo"
session-public-get-player-attributes --login_with_auth "Bearer foo"
session-public-store-player-attributes '{"crossplayEnabled": false, "data": {"tafxMSJl": {}, "Heb34sZK": {}, "Hcl5LLLO": {}}, "platforms": [{"name": "exL4fZvW", "userID": "tND2tcBF"}, {"name": "pX8lNtFE", "userID": "J7tnkY6M"}, {"name": "ca5afj12", "userID": "K2IzrBvv"}]}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "Wm4udE0O", "deployment": "XudXgNne", "inactiveTimeout": 20, "inviteTimeout": 83, "joinability": "JATwlc6e", "maxPlayers": 38, "minPlayers": 52, "name": "Up6Sw1I9", "persistent": false, "requestedRegions": ["rzzjrcau", "g6CWVG8S", "WP3glU6m"], "textChat": true, "type": "LOqQGhCU"}' \
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
    'r6iTrjyE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetConfigurationTemplateV1' test.out

#- 8 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "garAdNJO", "deployment": "IG36I6tR", "inactiveTimeout": 3, "inviteTimeout": 47, "joinability": "RcrEveMd", "maxPlayers": 54, "minPlayers": 87, "name": "diPKDUVS", "persistent": true, "requestedRegions": ["rwDTnouj", "QD4IEiH9", "Z5qXn3ao"], "textChat": true, "type": "tlqOECoh"}' \
    'ViHA5Czg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdateConfigurationTemplateV1' test.out

#- 9 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'FSy8X1A3' \
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
    '{"ids": ["PrIfapq5", "AAeMe4L3", "mDWORBVX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteBulkGameSessions' test.out

#- 14 AdminUpdateGameSessionMember
$PYTHON -m $MODULE 'session-admin-update-game-session-member' \
    'TIIJM9Xs' \
    'YIIZxiXN' \
    'MR9BgaWc' \
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
    'FX3SUBhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerAttributes' test.out

#- 18 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"oTsMWPAx": {}, "UMkawaGp": {}, "AyrIwMif": {}}, "backfillTicketID": "3BOdkocV", "clientVersion": "Td4BxqGW", "configurationName": "V6mTJ0sQ", "deployment": "s6XNbjvq", "inactiveTimeout": 15, "inviteTimeout": 21, "joinability": "nUVLWu8o", "matchPool": "lKdxL6oz", "maxPlayers": 90, "minPlayers": 13, "requestedRegions": ["mDD0jJvl", "fV5OemPY", "dYT7DROC"], "serverName": "jtuzFMbA", "teams": [{"UserIDs": ["G9YI89hm", "guB8FOTj", "MLo4b9rI"], "parties": [{"partyID": "zqYkEpst", "userIDs": ["yVTBcrM8", "rG0rH0zc", "swwVeMK6"]}, {"partyID": "MbGIVIu8", "userIDs": ["vvwLc7KY", "3uVoJXTI", "MtpgkieD"]}, {"partyID": "yF97lGdM", "userIDs": ["iHKxbWCY", "zo8yO2KT", "K9tmmOnY"]}]}, {"UserIDs": ["nOpas6gh", "P1y4Zi7s", "7QBlk44Z"], "parties": [{"partyID": "44B1GZgK", "userIDs": ["g4uKxaCg", "cGLuC3br", "WdTYCfHk"]}, {"partyID": "IySok5Di", "userIDs": ["XZtLW87r", "Gysryod3", "dNQrmsAp"]}, {"partyID": "RA6HX3Rw", "userIDs": ["rKt2ecoz", "L0TOg54v", "CE48L5oL"]}]}, {"UserIDs": ["F6M4lNa4", "JUMSHNgq", "RqCV7usa"], "parties": [{"partyID": "mANkZlOX", "userIDs": ["9Sfo95Hg", "XqKhTPkw", "fLM9uSyb"]}, {"partyID": "RzWek2gZ", "userIDs": ["vRrvr0n9", "d9lvccKM", "LhrTrcBE"]}, {"partyID": "2ItBS3Kt", "userIDs": ["KZWe8aoF", "zAyBME74", "HUtipUWY"]}]}], "textChat": false, "ticketIDs": ["DyvpcLYO", "WA8NjxOn", "aEok4nOO"], "type": "Czfsflhj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'CreateGameSession' test.out

#- 19 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"bngJOUn1": {}, "8G5MlfDT": {}, "k8aG40Nl": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicQueryGameSessions' test.out

#- 20 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'ncceIZSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetGameSessionByPodName' test.out

#- 21 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'gAIkgzh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGameSession' test.out

#- 22 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"pTU0Am4D": {}, "Zhl0bQxF": {}, "J3sWCqQp": {}}, "backfillTicketID": "Q2FbKPFM", "clientVersion": "ycMSQ4qf", "deployment": "AacR0LgB", "inactiveTimeout": 1, "inviteTimeout": 55, "joinability": "GBeMfPlN", "matchPool": "os4yBRjr", "maxPlayers": 63, "minPlayers": 33, "requestedRegions": ["RHEonAZR", "8GmEu0q1", "p6QCyY6v"], "teams": [{"UserIDs": ["SkVFWdsb", "YuVEGVxY", "heR3j5mN"], "parties": [{"partyID": "Z6vwv7K8", "userIDs": ["Asvt1j1R", "x59hesNW", "y2NvZ85D"]}, {"partyID": "DKDAF8KD", "userIDs": ["sBZOuYQJ", "03BAHZ7c", "53q7akMp"]}, {"partyID": "cmnnx6RV", "userIDs": ["Brop9v7a", "ZK3h65hb", "N15zfQSf"]}]}, {"UserIDs": ["QrtfF3TQ", "N0OcNDLr", "36vzohZy"], "parties": [{"partyID": "jMQAg5mP", "userIDs": ["YhrLTyU8", "OhgfY9JQ", "YGF4bYXE"]}, {"partyID": "cENx9xZl", "userIDs": ["Achob44l", "ONDDwMvg", "I0HlyPR7"]}, {"partyID": "wZNiVsF6", "userIDs": ["xG2mXEQd", "bzIVy8al", "ncV7vWgS"]}]}, {"UserIDs": ["Hdfo07Uc", "tPErqxyM", "yOK06MqQ"], "parties": [{"partyID": "BErxgjVB", "userIDs": ["ycvU4Pbm", "RDcrg0Dj", "QjBECXve"]}, {"partyID": "a7H1m2lJ", "userIDs": ["FRZ3ZprZ", "60zMjhTH", "eh94TSen"]}, {"partyID": "E5hCFkIf", "userIDs": ["5weqZ18M", "H57l2Zsr", "h90ETtYm"]}]}], "ticketIDs": ["Gukz3Mnl", "rjcHp6B8", "Vj7rXFgD"], "type": "nDkdZ9bp", "version": 18}' \
    'wSWTaLQj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'UpdateGameSession' test.out

#- 23 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'ctvrK2jh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteGameSession' test.out

#- 24 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"sYpKPlXn": {}, "77AtYoFz": {}, "LAATPY8P": {}}, "backfillTicketID": "8P3cfoiv", "clientVersion": "vQxevecW", "deployment": "w7Rry0KK", "inactiveTimeout": 7, "inviteTimeout": 36, "joinability": "12uSE7BE", "matchPool": "v3aevq6i", "maxPlayers": 30, "minPlayers": 91, "requestedRegions": ["hU1cg4W1", "IS3Uv1Bp", "WoJBaqdg"], "teams": [{"UserIDs": ["2FHcunsS", "1lnaO2m9", "vqjhbeK2"], "parties": [{"partyID": "qN8g6x2P", "userIDs": ["yYDo5R3h", "LiD5sf5y", "1JsxJNGm"]}, {"partyID": "yt0SQDUD", "userIDs": ["oWBZVGLl", "kUetzCAW", "c9x1aMjg"]}, {"partyID": "Gim51T10", "userIDs": ["7XIZRZ7t", "ZdIs0xf4", "czdt7zqm"]}]}, {"UserIDs": ["SKxOEQlV", "cx6GqsBq", "8vdhWVnu"], "parties": [{"partyID": "YLgpZehK", "userIDs": ["0G2nmyuV", "iB9kRTcS", "QdTnNYGe"]}, {"partyID": "AfYFG3wS", "userIDs": ["kHKufBdS", "3ZOokZB4", "cXnAXyuG"]}, {"partyID": "z6LlxHv8", "userIDs": ["SwyagYvD", "J3w3UNgI", "Gj2jZtEY"]}]}, {"UserIDs": ["T8sIPSE1", "XXPzySa0", "sZoFS6xC"], "parties": [{"partyID": "OWMpyh9p", "userIDs": ["MsQgb64E", "LbzDMwyo", "4nIRysQd"]}, {"partyID": "bufXjYnS", "userIDs": ["oIFeouC2", "m38kXrDZ", "WlGVE9sJ"]}, {"partyID": "4NpUtKp6", "userIDs": ["M9I6nEwn", "ZhsjwJeG", "waPSDMZz"]}]}], "ticketIDs": ["95OYKiqa", "ZD63xe5r", "ruJVfLGe"], "type": "a0ZtlzUc", "version": 42}' \
    '1RgBfoNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PatchUpdateGameSession' test.out

#- 25 UpdateGameSessionBackfillTicketID
$PYTHON -m $MODULE 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "HlFi2qJL"}' \
    'gmBLE35Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateGameSessionBackfillTicketID' test.out

#- 26 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "hyiDV90S"}' \
    'eI5yppBH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGameSessionInvite' test.out

#- 27 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'oytVznCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'JoinGameSession' test.out

#- 28 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'Nyx9fbT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'LeaveGameSession' test.out

#- 29 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    '3ShEh8Pb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGameSessionReject' test.out

#- 30 AppendTeamGameSession
$PYTHON -m $MODULE 'session-append-team-game-session' \
    '{"additionalMembers": [{"partyID": "GikLjgjc", "userIDs": ["j34uulU6", "FYBZsWFb", "r3RSP0W9"]}, {"partyID": "nBhvhf8Q", "userIDs": ["0DtJMcYQ", "dN66bswA", "gt65X4N1"]}, {"partyID": "LQZmB61J", "userIDs": ["MdtwCVUr", "YQue84dw", "mbwFEnAZ"]}], "proposedTeams": [{"UserIDs": ["aWsQJtRY", "oagRJK5P", "X9UcOvhP"], "parties": [{"partyID": "yE11TRT2", "userIDs": ["SKseoe8V", "Lie0LBa3", "6KNzjf00"]}, {"partyID": "5CXNGehQ", "userIDs": ["2aTjTDfK", "FDXC7eGL", "5YhJDWh9"]}, {"partyID": "YWqc0qgV", "userIDs": ["6d9yOfIM", "Lds2DbPc", "aoMdtRLT"]}]}, {"UserIDs": ["mSvTkQQg", "B7exYvmH", "Mxr5hPCJ"], "parties": [{"partyID": "JztJBg0t", "userIDs": ["TJg46Iew", "OXE2AkCh", "3QIZsUf8"]}, {"partyID": "lGFXcmwT", "userIDs": ["ERHclOdx", "Iwqejxe1", "8rNdb8Ot"]}, {"partyID": "q6j1mqUa", "userIDs": ["v7k05HAQ", "ltnSojV4", "jT65yclX"]}]}, {"UserIDs": ["2FtAz0vJ", "jFIYWOaN", "dsimmkW2"], "parties": [{"partyID": "miH3xRHA", "userIDs": ["Ky4QxZka", "XZ7vmiEd", "0JPxVyQp"]}, {"partyID": "shaDwNqT", "userIDs": ["bbFMXAMf", "VXe0GZeM", "gsRsmH1E"]}, {"partyID": "QrYmkPKT", "userIDs": ["POlhTtSi", "ZNCxuogF", "teTHJe4B"]}]}], "version": 14}' \
    '57g00jr9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AppendTeamGameSession' test.out

#- 31 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "b8MuYmme"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoinCode' test.out

#- 32 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'KTmBNvGY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicGetParty' test.out

#- 33 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"xEQdf3ew": {}, "oGGoY7xm": {}, "FNAmjDDC": {}}, "inactiveTimeout": 44, "inviteTimeout": 3, "joinability": "s78mcMdi", "maxPlayers": 92, "minPlayers": 20, "type": "76YApGJ9", "version": 42}' \
    'uRW9UtNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicUpdateParty' test.out

#- 34 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"uwC3Wgum": {}, "rIz4NhGz": {}, "tZpr4U4f": {}}, "inactiveTimeout": 46, "inviteTimeout": 33, "joinability": "QIiLXgmR", "maxPlayers": 0, "minPlayers": 28, "type": "svjO4lj8", "version": 25}' \
    '0JmX8qwU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPatchUpdateParty' test.out

#- 35 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '1cTuHHPB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGeneratePartyCode' test.out

#- 36 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '5S3DvPRC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicRevokePartyCode' test.out

#- 37 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "zBrVUxmD"}' \
    'Oj3cvRFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicPartyInvite' test.out

#- 38 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "TC11W0TG"}' \
    'TCm4fZWu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicPromotePartyLeader' test.out

#- 39 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'k6pQxDQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicPartyJoin' test.out

#- 40 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'KqxLGeMv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicPartyLeave' test.out

#- 41 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'r9TsvcMQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicPartyReject' test.out

#- 42 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '7dBsaIec' \
    'RxIsZvD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicPartyKick' test.out

#- 43 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"rmzVr5XT": {}, "1Nxw0v1d": {}, "MQ9Rrbk6": {}}, "configurationName": "C2cVWf6t", "inactiveTimeout": 40, "inviteTimeout": 44, "joinability": "91e94mQj", "maxPlayers": 97, "members": [{"ID": "CD2VXidT", "PlatformID": "7w0Oc15N", "PlatformUserID": "8WXBPp17"}, {"ID": "PAewqSm5", "PlatformID": "x3B4t7WQ", "PlatformUserID": "np8jXZed"}, {"ID": "gt5cyNe2", "PlatformID": "7HLtwtVO", "PlatformUserID": "axgP6Jbc"}], "minPlayers": 40, "textChat": false, "type": "uAQTGh5B"}' \
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
    '{"crossplayEnabled": true, "data": {"9IPmmsLm": {}, "u3kaPj0O": {}, "4zd8Tb7c": {}}, "platforms": [{"name": "UNGPTBxi", "userID": "FFCrn7dj"}, {"name": "js69FTFV", "userID": "GUVhvKhJ"}, {"name": "Cmeisql1", "userID": "4mUHVbMP"}]}' \
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
