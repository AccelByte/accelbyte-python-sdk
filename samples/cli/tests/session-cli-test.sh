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
session-admin-create-configuration-template-v1 '{"clientVersion": "PqXAxcGw", "deployment": "p2LftunE", "inactiveTimeout": 46, "inviteTimeout": 49, "joinability": "OsRKfbXN", "maxPlayers": 58, "minPlayers": 32, "name": "cWCGTcYv", "requestedRegions": ["vNHCAyBy", "WvW0ruju", "7PKWbRII"], "textChat": true, "type": "7isvzYHi"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'mmoL8DIj' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "EkNCFYOi", "deployment": "kJlQk5uL", "inactiveTimeout": 15, "inviteTimeout": 37, "joinability": "wVOlw1Od", "maxPlayers": 36, "minPlayers": 13, "name": "ZCIRBaUD", "requestedRegions": ["ch6x6TQD", "I3QySlP1", "Z8ivEXS0"], "textChat": false, "type": "bhFwBcFm"}' 'pc7pcckb' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'kvzA1v3h' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'ZPXlwZLH' 'tLDqteDy' 'Lnr7Tnsb' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"3Fou2zCh": {}, "dHQLxUV3": {}, "GvHmlxVx": {}}, "backfillTicketID": "bJMc2zZv", "clientVersion": "fTZzUqWT", "configurationName": "HUjWUnlE", "deployment": "4aKSqci1", "inactiveTimeout": 92, "inviteTimeout": 10, "joinability": "q9DNi3eM", "matchPool": "Qk6CBoig", "maxPlayers": 15, "minPlayers": 72, "requestedRegions": ["F6O0opku", "UWmnMlWV", "SOeSuzvl"], "serverName": "mNh2Pvda", "teams": [{"UserIDs": ["YlHx17In", "Q5VI2ind", "doA34OUn"]}, {"UserIDs": ["I3Nh9trQ", "LcdbMgzn", "y1guCX7x"]}, {"UserIDs": ["f0Eam5NO", "O7xonNEo", "yIOrVjnG"]}], "textChat": true, "ticketIDs": ["0tG6o34u", "loLYH0Kw", "CH6y19bV"], "type": "MULwpehT"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"g29uBRD8": {}, "dmBYCfQH": {}, "XXOzbagp": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'NcgleK8P' --login_with_auth "Bearer foo"
session-get-game-session 'KVq2unua' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"jgbFqYuM": {}, "YFEU5Z5B": {}, "sIGX9YwI": {}}, "backfillTicketID": "mjpx254r", "clientVersion": "0pQluHXG", "deployment": "zMAutOwT", "inactiveTimeout": 68, "inviteTimeout": 81, "joinability": "jXMKOkWg", "matchPool": "jQHJ7JlO", "maxPlayers": 88, "minPlayers": 35, "requestedRegions": ["6CtYHETT", "4J4E1rs8", "T4XAci6W"], "teams": [{"UserIDs": ["v31zRhUH", "GvRmM97a", "jIkbEqnf"]}, {"UserIDs": ["CurkXtT2", "4fXoGpzy", "wH6W9o5M"]}, {"UserIDs": ["CIRZRtn5", "YRr9BqCs", "8Hs0Xkwi"]}], "ticketIDs": ["ukHVUbTo", "ppbrrdWq", "mL0rDBWD"], "type": "ZylLwmwL", "version": 68}' 'tXDYoZO1' --login_with_auth "Bearer foo"
session-delete-game-session 'DXrl9g6n' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"AAffYnVN": {}, "bK6MQ7Se": {}, "gjXM6V60": {}}, "backfillTicketID": "iIQajArB", "clientVersion": "ebe3Sh4l", "deployment": "KENtX7fd", "inactiveTimeout": 59, "inviteTimeout": 39, "joinability": "ZW892Flb", "matchPool": "OmP3rutC", "maxPlayers": 4, "minPlayers": 64, "requestedRegions": ["22IBlqtc", "SMhygBuf", "3bsk1B3W"], "teams": [{"UserIDs": ["tnkm2PRQ", "GRRZn2dn", "FU4cgVc1"]}, {"UserIDs": ["PyDKh68x", "gbrLtHV0", "W3KMDkzE"]}, {"UserIDs": ["qwLhzfvw", "pLqGRy6N", "AXFaWuAt"]}], "ticketIDs": ["AdOILyEd", "t2LKVTaO", "XgE9qOTd"], "type": "0TFDKKhq", "version": 36}' 'qSl58xjw' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "L7gfXuNs"}' 'mxfSrDfO' --login_with_auth "Bearer foo"
session-join-game-session 'RdSAFjWA' --login_with_auth "Bearer foo"
session-leave-game-session 'sEr2r7Gt' --login_with_auth "Bearer foo"
session-public-game-session-reject '1e3XzWoj' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "wUvsJKCG"}' --login_with_auth "Bearer foo"
session-public-get-party 'q9sXGLmd' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"rJrBc2uw": {}, "wxkHdXvz": {}, "VJqf3Ei7": {}}, "inactiveTimeout": 8, "inviteTimeout": 79, "joinability": "80Zuo74X", "maxPlayers": 16, "minPlayers": 16, "type": "GvKTVFf3", "version": 35}' 'VYoLXT0l' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"EYF63aHX": {}, "MlmAreED": {}, "eOGmXsLK": {}}, "inactiveTimeout": 28, "inviteTimeout": 90, "joinability": "IiYqmMe2", "maxPlayers": 74, "minPlayers": 73, "type": "7CBgmTaE", "version": 8}' 'raTnCw2D' --login_with_auth "Bearer foo"
session-public-generate-party-code 's8NGVIIL' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'WwG6aiIe' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "O2MTiDba"}' 'TOXT6sCB' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "DXluMmhx"}' 'RTVlaWRx' --login_with_auth "Bearer foo"
session-public-party-join 'uD96Og2Y' --login_with_auth "Bearer foo"
session-public-party-leave 'ytObh5sc' --login_with_auth "Bearer foo"
session-public-party-reject '2Cw5yH6E' --login_with_auth "Bearer foo"
session-public-party-kick 'WGOjqgIi' 'j2Nd3CcO' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"fjkNnlp6": {}, "X1mN0M1s": {}, "YmPGnpfU": {}}, "configurationName": "9jwd7uTx", "inactiveTimeout": 13, "inviteTimeout": 24, "joinability": "oFkikriO", "maxPlayers": 68, "members": [{"ID": "I70JpNVA", "PlatformID": "llMg8BWv", "PlatformUserID": "l86o1NyV"}, {"ID": "qCqPfYiq", "PlatformID": "Ngqxtl3X", "PlatformUserID": "JybJHGeE"}, {"ID": "11MZYG67", "PlatformID": "AiutKBUS", "PlatformUserID": "8ZZZSZkQ"}], "minPlayers": 64, "textChat": false, "type": "EygG5ZuL"}' --login_with_auth "Bearer foo"
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
echo "1..37"

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
    '{"clientVersion": "VrX152ni", "deployment": "EQFzAmd7", "inactiveTimeout": 9, "inviteTimeout": 87, "joinability": "R8HwDCP2", "maxPlayers": 37, "minPlayers": 39, "name": "GV5Z3hfb", "requestedRegions": ["BntXBw0d", "RAQJrbyD", "EHdwTRf3"], "textChat": true, "type": "92zK8CDM"}' \
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
    'bwpNWeeL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "tUHAiY09", "deployment": "cp5XF0Sd", "inactiveTimeout": 20, "inviteTimeout": 19, "joinability": "f3bcm71z", "maxPlayers": 6, "minPlayers": 87, "name": "GY5zbEw5", "requestedRegions": ["q1fEODhP", "RtYljHNL", "bAymaAxh"], "textChat": true, "type": "CA5CvmCQ"}' \
    'JVMjEAIu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'MVsWhS12' \
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
    '42Fxtuhh' \
    'apjzE0mn' \
    'fEGab8RO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGameSessionMember' test.out

#- 11 AdminQueryParties
$PYTHON -m $MODULE 'session-admin-query-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminQueryParties' test.out

#- 12 CreateGameSession
$PYTHON -m $MODULE 'session-create-game-session' \
    '{"attributes": {"NpuvHa1G": {}, "tqIi7YM5": {}, "a8C7vIsv": {}}, "backfillTicketID": "aucGp2Zj", "clientVersion": "MsV2cA7k", "configurationName": "ifwwkPGu", "deployment": "ptSdEbBT", "inactiveTimeout": 24, "inviteTimeout": 9, "joinability": "phNEL6cw", "matchPool": "KyEukfwj", "maxPlayers": 41, "minPlayers": 100, "requestedRegions": ["8e4TOJjg", "vIEBMtqh", "YHVEJWvk"], "serverName": "oK4zTvKo", "teams": [{"UserIDs": ["fnTgkuTA", "VbU7pGSD", "rSg4HgAp"]}, {"UserIDs": ["8OJinnWS", "dfGXWHFB", "axyZOwLI"]}, {"UserIDs": ["WkqH0l3b", "AEB4OguP", "VsQmDINX"]}], "textChat": false, "ticketIDs": ["r5WdU6cE", "6MdJWyPj", "RleGZz42"], "type": "S996UjFB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"jlGaEaCe": {}, "mjNOp5o2": {}, "TpK95pku": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'P9x2JVvY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    '37Bml5dh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"9gXEYAqH": {}, "v61oRpWp": {}, "0aWbx1Qq": {}}, "backfillTicketID": "oba5t2G4", "clientVersion": "J8ZdzLlV", "deployment": "tJ8aKYHi", "inactiveTimeout": 89, "inviteTimeout": 96, "joinability": "szIkm3uT", "matchPool": "Ce4ZrOfC", "maxPlayers": 0, "minPlayers": 62, "requestedRegions": ["H9uGexcx", "gP062sLd", "AXZAkojg"], "teams": [{"UserIDs": ["4iyb63aS", "Bn5O5l8k", "Q4Xwxkm2"]}, {"UserIDs": ["OKj3iI8Q", "Rdznu1Fo", "YzS3Ah4p"]}, {"UserIDs": ["2ryldo98", "t4Du8cbV", "eiYuzRLG"]}], "ticketIDs": ["580vuF8e", "3dznwB7d", "fZAw07AS"], "type": "znnPRyQg", "version": 98}' \
    'K2Yj1hrC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'fnYgsVDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"lu7PnZsQ": {}, "f3uuLwmU": {}, "EG5SlGCr": {}}, "backfillTicketID": "oOSGTXHV", "clientVersion": "2eo5Yjwx", "deployment": "z1EqlQmv", "inactiveTimeout": 28, "inviteTimeout": 99, "joinability": "t0XxKbsK", "matchPool": "YuK5cegK", "maxPlayers": 67, "minPlayers": 70, "requestedRegions": ["a4C56Xam", "UwwlD06t", "rIWa37C4"], "teams": [{"UserIDs": ["9QzRyzun", "QS6GtwnF", "KgtraJU6"]}, {"UserIDs": ["9JksFfGM", "T6yIf9Wx", "aPFUNsaT"]}, {"UserIDs": ["Xlv8KrUi", "eC0hYlSg", "o9MhO4m3"]}], "ticketIDs": ["KdsRkX7K", "e2P94t6A", "Bx4lOJGz"], "type": "uAXh6eb9", "version": 79}' \
    'r7LpPF9G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "XDPQZ7LX"}' \
    'DAJoWEu2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'KaacVa9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'KrUcoI6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'iKLqubWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "5KM4sVY5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'l35AR9Ne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"G0X9CyDQ": {}, "HuG5NkIm": {}, "s4227Eqs": {}}, "inactiveTimeout": 93, "inviteTimeout": 67, "joinability": "KNZfUBJD", "maxPlayers": 84, "minPlayers": 95, "type": "SHTu6qZk", "version": 85}' \
    'etgLaoZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"jTo6BlZn": {}, "VLIgT4dY": {}, "upl24dip": {}}, "inactiveTimeout": 36, "inviteTimeout": 59, "joinability": "GEZOPyGK", "maxPlayers": 10, "minPlayers": 84, "type": "3b1NbQJ5", "version": 85}' \
    'GC5ARLfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    '0Jx2ZQ3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    'LCQCFonU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "QUQPIhHV"}' \
    'uNEOuBE8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "2vbnKGx1"}' \
    'rEWdvXWt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'aYlm9Kk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'nXyEaZ2w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'YeqgcxCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    '8N7nAnOw' \
    'UwZd126v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"X9oESDDl": {}, "64SpFY2z": {}, "jYXI6jJw": {}}, "configurationName": "BlnYBSQ3", "inactiveTimeout": 26, "inviteTimeout": 71, "joinability": "QvptQF3f", "maxPlayers": 44, "members": [{"ID": "hNRC9z6Y", "PlatformID": "SFvnrFqb", "PlatformUserID": "vNSA1ERV"}, {"ID": "XP3Rc6Nw", "PlatformID": "Ed20VR4P", "PlatformUserID": "7rjWW4nh"}, {"ID": "XE9oqTrp", "PlatformID": "9FEsX9mN", "PlatformUserID": "xLYLI7fM"}], "minPlayers": 93, "textChat": false, "type": "YhKTKL2Y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicCreateParty' test.out

#- 36 PublicQueryMyGameSessions
$PYTHON -m $MODULE 'session-public-query-my-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicQueryMyGameSessions' test.out

#- 37 PublicQueryMyParties
$PYTHON -m $MODULE 'session-public-query-my-parties' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicQueryMyParties' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
