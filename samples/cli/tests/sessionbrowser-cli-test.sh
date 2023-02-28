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
sessionbrowser-admin-query-session 'rV9nKtzO' --login_with_auth "Bearer foo"
sessionbrowser-get-total-active-session --login_with_auth "Bearer foo"
sessionbrowser-get-active-custom-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-get-active-matchmaking-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-admin-get-session 'komtdjiS' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session '2JldY3yX' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '44' '46' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'DuYYP1hj' --login_with_auth "Bearer foo"
sessionbrowser-user-query-session 'tK5IUaM7' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 14, "current_player": 96, "map_name": "8QERXg9F", "max_internal_player": 72, "max_player": 85, "mode": "CpFgK7Hh", "num_bot": 98, "password": "2ypwNtsi", "settings": {"AFTvm10i": {}, "U9Gl38ni": {}, "Ey8vlHKa": {}}}, "game_version": "sVDJm2kq", "namespace": "1iIgHLH9", "session_type": "BXt5ig2s", "username": "YdoFWauj"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'AP2sYiRy' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'G4dCuSIS' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 83}' 'nFbEV4kS' --login_with_auth "Bearer foo"
sessionbrowser-delete-session '6DGtvcOv' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "ApE1IFQA"}' 'i92ielqY' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'c0coc35D' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "oEr65cYO"}' 'HJ7iZi2b' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session '3211Z8m6' 'Z6hc2vtn' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'XqQ3Kpsq' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'rrRo1FtZ' --login_with_auth "Bearer foo"
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
echo "1..21"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminQuerySession
$PYTHON -m $MODULE 'sessionbrowser-admin-query-session' \
    'zHIPTEdu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminQuerySession' test.out

#- 3 GetTotalActiveSession
$PYTHON -m $MODULE 'sessionbrowser-get-total-active-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetTotalActiveSession' test.out

#- 4 GetActiveCustomGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-custom-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetActiveCustomGameSessions' test.out

#- 5 GetActiveMatchmakingGameSessions
$PYTHON -m $MODULE 'sessionbrowser-get-active-matchmaking-game-sessions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetActiveMatchmakingGameSessions' test.out

#- 6 AdminGetSession
$PYTHON -m $MODULE 'sessionbrowser-admin-get-session' \
    'qeZPApho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    'Vw518qgV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '38' \
    '19' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    '5g9lwdSS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
$PYTHON -m $MODULE 'sessionbrowser-user-query-session' \
    'W6VIVNyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 75, "current_player": 87, "map_name": "TIVMAZHL", "max_internal_player": 0, "max_player": 72, "mode": "U3jDmhIn", "num_bot": 36, "password": "cIqElUZm", "settings": {"VIun6ct1": {}, "acNGn6rO": {}, "8C5fxF3Z": {}}}, "game_version": "8IfyWzBa", "namespace": "6AOcIa78", "session_type": "jKeXIcrU", "username": "cGdcPZxn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'kq3LBeNF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'xbywheV7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 45}' \
    'zfyHtgex' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'DQHFZVj4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "pMe7wHF1"}' \
    '7qxIaENH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'gQ7hd0dV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": true, "user_id": "IOW6RaWL"}' \
    'bboQi9Vq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'eDqwnOKc' \
    'ohWguA5l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'UW10Loh5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'j24viPFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
