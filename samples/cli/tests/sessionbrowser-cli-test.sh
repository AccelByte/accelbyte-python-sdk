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
sessionbrowser-admin-get-session 'FtBxyZcD' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '98' '55' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'pGlsQuJu' --login_with_auth "Bearer foo"
sessionbrowser-query-session '8vMf0IsJ' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 90, "current_player": 34, "map_name": "d8IDcV2z", "max_internal_player": 98, "max_player": 27, "mode": "TKjXY1bP", "num_bot": 33, "password": "amiBxx9C", "settings": {"s18EY84e": {}}}, "game_version": "kItqRzHU", "namespace": "1oh570KQ", "session_type": "BVaewc72", "username": "krSha68n"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds '3Ynozp1C' --login_with_auth "Bearer foo"
sessionbrowser-get-session '2KmIQTuB' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 6}' 'NEUsxFb8' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'CJ17M7DJ' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "ZaMSxECb"}' 'Zbygyoar' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'ORoeNHSb' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": false, "user_id": "3kgs9qqJ"}' 'bnQsoBgi' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'VpP8Cm3y' 'vASUoxdx' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'xFqmAGTJ' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player '8IEdagEt' --login_with_auth "Bearer foo"
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
echo "1..19"

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
    'p4w29KOu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '4' \
    '87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminSearchSessionsV2' test.out

#- 7 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    '6XDqWHkk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetSessionHistoryDetailed' test.out

#- 8 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'P8npLEKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'QuerySession' test.out

#- 9 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 19, "current_player": 16, "map_name": "X7jpkVZk", "max_internal_player": 69, "max_player": 1, "mode": "QYEmqGod", "num_bot": 80, "password": "EGt9gPOj", "settings": {"0c6i0Jkv": {}}}, "game_version": "Ias73ucY", "namespace": "nFAJ3DK5", "session_type": "T4Eogg0Y", "username": "39UoYlpv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateSession' test.out

#- 10 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    '5bVAgtsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetSessionByUserIDs' test.out

#- 11 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'hUTDUscb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSession' test.out

#- 12 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 85}' \
    'DjbTQuPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateSession' test.out

#- 13 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'z2PTRlky' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DeleteSession' test.out

#- 14 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "U89ZPOw6"}' \
    'zPFJ42cw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'JoinSession' test.out

#- 15 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'mzBBSMNc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteSessionLocalDS' test.out

#- 16 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "AAOjKNjf"}' \
    'cYHm093a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AddPlayerToSession' test.out

#- 17 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'YgBU1sqj' \
    'yK0XH45P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RemovePlayerFromSession' test.out

#- 18 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'aRSOFQBt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateSettings' test.out

#- 19 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'u23REZ8h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
