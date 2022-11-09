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
session-admin-create-configuration-template-v1 '{"clientVersion": "ncbJMyQE", "deployment": "V24qd8mC", "inactiveTimeout": 69, "inviteTimeout": 34, "joinability": "1JKqx3R2", "maxPlayers": 80, "minPlayers": 84, "name": "pkhssmx8", "requestedRegions": ["fPrc5kfr", "8ZJ4m8YA", "nKG8an1E"], "type": "GzuHcFau"}' --login_with_auth "Bearer foo"
session-admin-get-all-configuration-templates-v1 --login_with_auth "Bearer foo"
session-admin-get-configuration-template-v1 'mevFw7iI' --login_with_auth "Bearer foo"
session-admin-update-configuration-template-v1 '{"clientVersion": "whhpUqjy", "deployment": "Ingvif8d", "inactiveTimeout": 72, "inviteTimeout": 54, "joinability": "nk4BQ4fb", "maxPlayers": 21, "minPlayers": 54, "name": "P9FvdBG9", "requestedRegions": ["pPtRccwQ", "soS6HCs5", "HIBm6LPu"], "type": "tTnEMvex"}' '9QBQp01l' --login_with_auth "Bearer foo"
session-admin-delete-configuration-template-v1 'euELLYFz' --login_with_auth "Bearer foo"
session-admin-query-game-sessions --login_with_auth "Bearer foo"
session-admin-update-game-session-member 'PEknwd22' 'PwN7jh5D' 'CEKuXttd' --login_with_auth "Bearer foo"
session-admin-query-parties --login_with_auth "Bearer foo"
session-create-game-session '{"attributes": {"ZaxLrJt2": {}, "C9FuWk7Y": {}, "hOnqZpB8": {}}, "backfillTicketID": "kODWe95c", "clientVersion": "r8MCvJNM", "configurationName": "dx4TMliu", "deployment": "SFilKpes", "inactiveTimeout": 72, "inviteTimeout": 40, "joinability": "uouSfNSE", "matchPool": "6otYL0Zy", "maxPlayers": 96, "minPlayers": 49, "requestedRegions": ["MscCUN6e", "nThaU3CP", "yCUrBKnG"], "serverName": "GwJhQ36L", "teams": [{"UserIDs": ["USn3GIhV", "5yvXHNvI", "44WnO0Nx"]}, {"UserIDs": ["lqXCMIJd", "W34M1XDL", "Z7jahKaO"]}, {"UserIDs": ["312IeO0j", "Wf6nWeEI", "s3Jm9o4V"]}], "ticketIDs": ["ldsA6CIw", "veEl5Dze", "KUy59x5X"], "type": "UljX9AZD"}' --login_with_auth "Bearer foo"
session-public-query-game-sessions '{"pIi0oLch": {}, "OX4Qp1ji": {}, "wh0ihAFm": {}}' --login_with_auth "Bearer foo"
session-get-game-session-by-pod-name 'bGIgxWjl' --login_with_auth "Bearer foo"
session-get-game-session 'm599I4Gy' --login_with_auth "Bearer foo"
session-update-game-session '{"attributes": {"qvylqd7T": {}, "3TIloNeM": {}, "qVWRbaWP": {}}, "backfillTicketID": "yI7PmYkp", "clientVersion": "VEhjDWOv", "deployment": "H7BS3WVM", "inactiveTimeout": 43, "inviteTimeout": 78, "joinability": "RqXfN4vf", "matchPool": "jp07XJkW", "maxPlayers": 54, "minPlayers": 95, "requestedRegions": ["watn5KuP", "YH4oSMdp", "9NDqB4DV"], "teams": [{"UserIDs": ["kmGyKkqQ", "xgpy22Rw", "NyUemPjW"]}, {"UserIDs": ["o6KvYKu8", "vt7zCYoY", "woLSyDtW"]}, {"UserIDs": ["rlWZtPmg", "9xDCMKkd", "acRWgxJz"]}], "ticketIDs": ["cc17U4ZW", "lUmXl5yz", "p6cxII1O"], "type": "3v1xQHmW", "version": 30}' 'XdZCqWUN' --login_with_auth "Bearer foo"
session-delete-game-session 'XzM33OXx' --login_with_auth "Bearer foo"
session-patch-update-game-session '{"attributes": {"YWdSc5eh": {}, "vAoaJuwT": {}, "pU3sdX0D": {}}, "backfillTicketID": "jlQoJpsf", "clientVersion": "iU8GXGqD", "deployment": "9l37VKbK", "inactiveTimeout": 83, "inviteTimeout": 8, "joinability": "ujan3wDW", "matchPool": "gor2QjXt", "maxPlayers": 99, "minPlayers": 39, "requestedRegions": ["YUmGeQJC", "X7caJ2cb", "dEMJZvlZ"], "teams": [{"UserIDs": ["NEmKkgnz", "YimLMsY7", "sIvvFaPR"]}, {"UserIDs": ["5jAE8fD1", "wdt8Ktfj", "UGWJ4fZo"]}, {"UserIDs": ["c9ulL1zT", "1UJNl0hG", "ks43L3yk"]}], "ticketIDs": ["Iggd6IPb", "WDlr8NCo", "S65GFqco"], "type": "Nd4eCA60", "version": 86}' 'N0W9wYM2' --login_with_auth "Bearer foo"
session-public-game-session-invite '{"userID": "x6vmFcOd"}' 'QfXYpXZs' --login_with_auth "Bearer foo"
session-join-game-session 'qUz5611y' --login_with_auth "Bearer foo"
session-leave-game-session 'NwJ35ced' --login_with_auth "Bearer foo"
session-public-game-session-reject 'WxfCoJsM' --login_with_auth "Bearer foo"
session-public-party-join-code '{"code": "4kprNcOb"}' --login_with_auth "Bearer foo"
session-public-get-party 'ctU1JA6N' --login_with_auth "Bearer foo"
session-public-update-party '{"attributes": {"g9l2Oolh": {}, "23j1eGpB": {}, "ZNfKBpiK": {}}, "inactiveTimeout": 56, "inviteTimeout": 75, "joinability": "pRVqBwlM", "maxPlayers": 87, "minPlayers": 40, "type": "9lEABisY", "version": 32}' 'xRp7KNLS' --login_with_auth "Bearer foo"
session-public-patch-update-party '{"attributes": {"nEhxRuPk": {}, "XlBzBsNo": {}, "5705ES1i": {}}, "inactiveTimeout": 89, "inviteTimeout": 56, "joinability": "4wAdiu32", "maxPlayers": 40, "minPlayers": 3, "type": "9yQI1OkL", "version": 13}' 'C2pQoXGa' --login_with_auth "Bearer foo"
session-public-generate-party-code 'zswjR5uq' --login_with_auth "Bearer foo"
session-public-revoke-party-code 'CDVpqW21' --login_with_auth "Bearer foo"
session-public-party-invite '{"userID": "Rll1dMDe"}' 'UnXBPipI' --login_with_auth "Bearer foo"
session-public-promote-party-leader '{"leaderID": "hrRxkyYq"}' '6imsbYTZ' --login_with_auth "Bearer foo"
session-public-party-join '8FoGyN07' --login_with_auth "Bearer foo"
session-public-party-leave 'mGxX45NC' --login_with_auth "Bearer foo"
session-public-party-reject 'RysShbsh' --login_with_auth "Bearer foo"
session-public-party-kick 'dJmDFrx5' 'Psyh0d05' --login_with_auth "Bearer foo"
session-public-create-party '{"attributes": {"eJQT1AAr": {}, "V8g4e6Mr": {}, "23czXgn3": {}}, "configurationName": "csMPw7wF", "inactiveTimeout": 81, "inviteTimeout": 18, "joinability": "rQQRP5k4", "maxPlayers": 0, "members": [{"ID": "9MopOpM5", "PlatformID": "TYwtYOOX", "PlatformUserID": "wx9hqTRo"}, {"ID": "s1l9kHo6", "PlatformID": "QpnSV53D", "PlatformUserID": "B5yRMzD4"}, {"ID": "K5P6p7N6", "PlatformID": "lVhegtrR", "PlatformUserID": "i7ZmSMPg"}], "minPlayers": 20, "type": "HPHHqpuY"}' --login_with_auth "Bearer foo"
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
    '{"clientVersion": "riRX7DQO", "deployment": "adMzyLzA", "inactiveTimeout": 89, "inviteTimeout": 84, "joinability": "DbaV0bJD", "maxPlayers": 25, "minPlayers": 15, "name": "zyCNVFlg", "requestedRegions": ["0nh8cDtJ", "xDyhtMTd", "wHf11QWM"], "type": "o2OnXeCA"}' \
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
    'piHzIgKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetConfigurationTemplateV1' test.out

#- 7 AdminUpdateConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-update-configuration-template-v1' \
    '{"clientVersion": "weDZsu6X", "deployment": "jkjTqRle", "inactiveTimeout": 46, "inviteTimeout": 67, "joinability": "2x2800LB", "maxPlayers": 16, "minPlayers": 55, "name": "y8rAvVEF", "requestedRegions": ["rzm6cTmV", "EnOgDM4S", "BX5tzmjR"], "type": "GwrOa4iy"}' \
    'XMNqqEpM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateConfigurationTemplateV1' test.out

#- 8 AdminDeleteConfigurationTemplateV1
$PYTHON -m $MODULE 'session-admin-delete-configuration-template-v1' \
    'IfQS9ZDr' \
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
    'mvPZTifk' \
    'iQFMGhyw' \
    'bbXe0Uo8' \
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
    '{"attributes": {"vXMSGTBw": {}, "3BfxbAAw": {}, "3nhO1ZIB": {}}, "backfillTicketID": "oPh1e6hK", "clientVersion": "aiCvG3FF", "configurationName": "FbQe8qNl", "deployment": "9ICMsy9o", "inactiveTimeout": 97, "inviteTimeout": 85, "joinability": "au6AiYrm", "matchPool": "k6a9r5N7", "maxPlayers": 62, "minPlayers": 78, "requestedRegions": ["2UurcVCG", "YOVFWzWU", "fzFDG9Z3"], "serverName": "rocItb3D", "teams": [{"UserIDs": ["pGjE7lqz", "7UUAqVCX", "JKPesij5"]}, {"UserIDs": ["0Q33EMZx", "5FQexwYs", "6BjVeY3K"]}, {"UserIDs": ["gW4yDp7t", "CkzOLZIn", "inRuH167"]}], "ticketIDs": ["jcnsyouC", "B1M43Z39", "WlV8g2TS"], "type": "hQDLh4Es"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'CreateGameSession' test.out

#- 13 PublicQueryGameSessions
$PYTHON -m $MODULE 'session-public-query-game-sessions' \
    '{"t5vgY7ib": {}, "vN5kaNZJ": {}, "ZwCRmPW5": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicQueryGameSessions' test.out

#- 14 GetGameSessionByPodName
$PYTHON -m $MODULE 'session-get-game-session-by-pod-name' \
    'X7wdopIm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameSessionByPodName' test.out

#- 15 GetGameSession
$PYTHON -m $MODULE 'session-get-game-session' \
    'pGad6SWe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetGameSession' test.out

#- 16 UpdateGameSession
$PYTHON -m $MODULE 'session-update-game-session' \
    '{"attributes": {"GdLTZKU1": {}, "vN79oSDz": {}, "LLCEwCEH": {}}, "backfillTicketID": "Ineco5pd", "clientVersion": "4DJMJLVf", "deployment": "KwUWrFL1", "inactiveTimeout": 25, "inviteTimeout": 91, "joinability": "bFK2dEFo", "matchPool": "UF16ksnr", "maxPlayers": 66, "minPlayers": 72, "requestedRegions": ["WQ6mJuPi", "I8uKRcN1", "n2ocw4fv"], "teams": [{"UserIDs": ["xGtc3WNd", "xZMgXFxp", "oO9RAT44"]}, {"UserIDs": ["Jt3c8uYu", "9WN38biL", "ClFEX6oa"]}, {"UserIDs": ["X6Kr33iW", "inTS28h3", "zLULVdcS"]}], "ticketIDs": ["gIKpvIUp", "4NFtN5GM", "Q6OUCf02"], "type": "NJ6Us5uw", "version": 66}' \
    'txtEN14x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateGameSession' test.out

#- 17 DeleteGameSession
$PYTHON -m $MODULE 'session-delete-game-session' \
    'im7uy0sS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteGameSession' test.out

#- 18 PatchUpdateGameSession
$PYTHON -m $MODULE 'session-patch-update-game-session' \
    '{"attributes": {"HhKCLa8q": {}, "AkJOPyTK": {}, "vchfUbLN": {}}, "backfillTicketID": "RFPYMQyD", "clientVersion": "1fFHnMtT", "deployment": "E2Nc6a4g", "inactiveTimeout": 30, "inviteTimeout": 65, "joinability": "ty3uvZvl", "matchPool": "DdzOw8IU", "maxPlayers": 65, "minPlayers": 38, "requestedRegions": ["CNve9LNu", "WiuRRSLD", "qIN12NGl"], "teams": [{"UserIDs": ["E47tNw9t", "tNvbFosV", "NcBsquOW"]}, {"UserIDs": ["D1NxvnDO", "oLUdliax", "hW3MjjTO"]}, {"UserIDs": ["csvgaTfB", "EeC4ZmoY", "RN9tikg9"]}], "ticketIDs": ["ow9NyiSL", "rpA45et9", "joUxF72N"], "type": "VV2H1lht", "version": 47}' \
    'tow7yduC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PatchUpdateGameSession' test.out

#- 19 PublicGameSessionInvite
$PYTHON -m $MODULE 'session-public-game-session-invite' \
    '{"userID": "Fvoub3oN"}' \
    '8nPFXTtZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGameSessionInvite' test.out

#- 20 JoinGameSession
$PYTHON -m $MODULE 'session-join-game-session' \
    'K5lbfYA3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'JoinGameSession' test.out

#- 21 LeaveGameSession
$PYTHON -m $MODULE 'session-leave-game-session' \
    'TcLNboC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'LeaveGameSession' test.out

#- 22 PublicGameSessionReject
$PYTHON -m $MODULE 'session-public-game-session-reject' \
    'IcJYFi3x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGameSessionReject' test.out

#- 23 PublicPartyJoinCode
$PYTHON -m $MODULE 'session-public-party-join-code' \
    '{"code": "6TCvNjBY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicPartyJoinCode' test.out

#- 24 PublicGetParty
$PYTHON -m $MODULE 'session-public-get-party' \
    'uyJxU9Pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetParty' test.out

#- 25 PublicUpdateParty
$PYTHON -m $MODULE 'session-public-update-party' \
    '{"attributes": {"DnNnGgh4": {}, "0eCBSI2r": {}, "WgVtvPXt": {}}, "inactiveTimeout": 84, "inviteTimeout": 38, "joinability": "mK7VNvTe", "maxPlayers": 73, "minPlayers": 4, "type": "eLqttOxX", "version": 9}' \
    'sor4SvyL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateParty' test.out

#- 26 PublicPatchUpdateParty
$PYTHON -m $MODULE 'session-public-patch-update-party' \
    '{"attributes": {"9bnzEiwo": {}, "P0VCjIE3": {}, "whaO2MPf": {}}, "inactiveTimeout": 68, "inviteTimeout": 56, "joinability": "PpQkz1pe", "maxPlayers": 46, "minPlayers": 2, "type": "b8Klta75", "version": 83}' \
    'qy4a8YlT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicPatchUpdateParty' test.out

#- 27 PublicGeneratePartyCode
$PYTHON -m $MODULE 'session-public-generate-party-code' \
    'LdMVjRo9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGeneratePartyCode' test.out

#- 28 PublicRevokePartyCode
$PYTHON -m $MODULE 'session-public-revoke-party-code' \
    '40m1d6IF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicRevokePartyCode' test.out

#- 29 PublicPartyInvite
$PYTHON -m $MODULE 'session-public-party-invite' \
    '{"userID": "prxxCF1W"}' \
    '8xIBEIhV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicPartyInvite' test.out

#- 30 PublicPromotePartyLeader
$PYTHON -m $MODULE 'session-public-promote-party-leader' \
    '{"leaderID": "mLsBKs9M"}' \
    'fnTV8t7C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicPromotePartyLeader' test.out

#- 31 PublicPartyJoin
$PYTHON -m $MODULE 'session-public-party-join' \
    'F4JVHIFd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicPartyJoin' test.out

#- 32 PublicPartyLeave
$PYTHON -m $MODULE 'session-public-party-leave' \
    'jLksBVhJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicPartyLeave' test.out

#- 33 PublicPartyReject
$PYTHON -m $MODULE 'session-public-party-reject' \
    'dv2qM4vP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicPartyReject' test.out

#- 34 PublicPartyKick
$PYTHON -m $MODULE 'session-public-party-kick' \
    'YmANY1Fo' \
    'sQs6kvi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicPartyKick' test.out

#- 35 PublicCreateParty
$PYTHON -m $MODULE 'session-public-create-party' \
    '{"attributes": {"MgVJXv8z": {}, "KbKVa0n0": {}, "ybSI3bff": {}}, "configurationName": "zfT4zUE1", "inactiveTimeout": 11, "inviteTimeout": 36, "joinability": "QpPAo2bZ", "maxPlayers": 33, "members": [{"ID": "Lok86BKD", "PlatformID": "uSKLX7cZ", "PlatformUserID": "uUcx1NKu"}, {"ID": "W9XWCT0R", "PlatformID": "hRIHtRjJ", "PlatformUserID": "y9UiQzTz"}, {"ID": "EnwTN3Xp", "PlatformID": "MGlqL5dq", "PlatformUserID": "qk7Ik0nO"}], "minPlayers": 30, "type": "I1Ur4DX8"}' \
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
