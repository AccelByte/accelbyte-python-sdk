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

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..16"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

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
    'FtBxyZcD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'XBpGlsQu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'QuerySession' test.out

#- 7 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 42, "current_player": 77, "map_name": "f0IsJkTr", "max_internal_player": 6, "max_player": 68, "mode": "DcV2zXnT", "num_bot": 72, "password": "jXY1bPqa", "settings": {"miBxx9Cs": {}}}, "game_version": "18EY84ek", "namespace": "ItqRzHU1", "session_type": "oh570KQB", "username": "Vaewc72k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'CreateSession' test.out

#- 8 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'rSha68n3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionByUserIDs' test.out

#- 9 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'Ynozp1C2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetSession' test.out

#- 10 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_current_player": 72, "game_max_player": 24}' \
    'IQTuBdNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UpdateSession' test.out

#- 11 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'UsxFb8CJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteSession' test.out

#- 12 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "17M7DJZa"}' \
    'MSxECbZb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'JoinSession' test.out

#- 13 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'ygyoarOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteSessionLocalDS' test.out

#- 14 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "eNHSb8Rh"}' \
    '3kgs9qqJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AddPlayerToSession' test.out

#- 15 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'bnQsoBgi' \
    'VpP8Cm3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'RemovePlayerFromSession' test.out

#- 16 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'vASUoxdx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetRecentPlayer' test.out


rm -f "tmp.dat"

exit $EXIT_CODE