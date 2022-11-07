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
sessionbrowser-get-total-active-session --login_with_auth "Bearer foo"
sessionbrowser-get-active-custom-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-get-active-matchmaking-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-admin-get-session 'ZmDQnsYm' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session 'QfKFRCyy' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '42' '65' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'K89prA9I' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'AeTmkVeZ' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 19, "current_player": 72, "map_name": "tthnq9Du", "max_internal_player": 21, "max_player": 96, "mode": "DTk4fDXR", "num_bot": 29, "password": "XqO2o9aT", "settings": {"KvMxnJ42": {}, "1D3dDky3": {}, "ni7pfdwl": {}}}, "game_version": "WmZdaYuE", "namespace": "vwKePJmO", "session_type": "wlSWP5mk", "username": "58z2Imip"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'cIXlH2Ej' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'ce0JIFt4' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 44}' 'CSqifyzE' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'YZo02VuG' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "WsC4O0Hl"}' 'nuI3HZ84' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'W4SZUkT1' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "vKFSQjbm"}' '4DqNMIQR' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'KkjIDeSX' 'O2IuIhyh' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'c8y5R84S' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player '3YUxUpCi' --login_with_auth "Bearer foo"
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
echo "1..20"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetTotalActiveSession
$PYTHON -m $MODULE 'sessionbrowser-get-total-active-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetTotalActiveSession' test.out

#- 3 GetActiveCustomGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-custom-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetActiveCustomGameSessions' test.out

#- 4 GetActiveMatchmakingGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-matchmaking-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetActiveMatchmakingGameSessions' test.out

#- 5 AdminGetSession
$PYTHON -m $MODULE 'sessionbrowser-admin-get-session' \
    '34BuOgmv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    'r2XjmzSD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '89' \
    '59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'rH9Xc2u7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'burTMuwe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 23, "current_player": 23, "map_name": "bgPGNQg0", "max_internal_player": 73, "max_player": 61, "mode": "jO6fr5rQ", "num_bot": 46, "password": "E4Jn4zps", "settings": {"em3NNfq7": {}, "7phUl6VC": {}, "ME8J8SEp": {}}}, "game_version": "g89rvWqQ", "namespace": "NTFXYmYE", "session_type": "sanV0Uxk", "username": "SD6mgPkU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'vpG67bwz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    '90rjFKTN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 20}' \
    'cwyGy2tx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'YcuTcb7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "Vd9Ji5MI"}' \
    'K3PJnNxH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'UBYTqNn2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": true, "user_id": "6rPgeVUs"}' \
    '8JbX4RRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    '1VvnJzIj' \
    'q1j6P0Xj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    '8Dtulpg8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'zBF8kAQI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
