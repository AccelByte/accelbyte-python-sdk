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
sessionbrowser-admin-get-session 'GlDuC2wl' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session 'jcJXgJsF' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '69' '76' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'wXuBrG6W' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'llDHinfu' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 68, "current_player": 73, "map_name": "iBGqbJWH", "max_internal_player": 91, "max_player": 93, "mode": "N3m6TCMR", "num_bot": 89, "password": "Gptj324j", "settings": {"z6f0qUyY": {}, "qaXmnwVZ": {}, "bjK0FLEs": {}}}, "game_version": "xLgPwk1c", "namespace": "saRxcNWf", "session_type": "Ps6LiZVm", "username": "hVtKrTeY"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'X7ZcEj3Q' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'l1ie7FwN' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 17}' 'ARF2zjZL' --login_with_auth "Bearer foo"
sessionbrowser-delete-session '6z8q9LTC' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "SHDoF5W2"}' 'wkuP6QwS' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'klVCPOex' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "wmmr1yhO"}' 'sm47JLaO' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'ukMi0ioD' 'ZQURCxIV' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'GAB9d6Pa' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player '6FxV9BCs' --login_with_auth "Bearer foo"
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
    'sYFpgKrW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    'Cpyxja1w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '30' \
    '86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    '0811IQJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'wIVx6pnc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 3, "current_player": 91, "map_name": "gmPoQM6t", "max_internal_player": 36, "max_player": 68, "mode": "NqxsNq1E", "num_bot": 92, "password": "lDqYL5iV", "settings": {"UqXWLLLX": {}, "gEpVCAIG": {}, "vXTpwFAX": {}}}, "game_version": "7sYrjxUZ", "namespace": "MFFUCr2b", "session_type": "pLOk8Aep", "username": "FZ6AIIXn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'FTxsDh8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'XN8pwXdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 3}' \
    'LI2AA3gG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    '8NcZdh6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "EF86AJ3M"}' \
    'BfNSvZ34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    '5C0dHYgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": true, "user_id": "vzPIoOxN"}' \
    'OJsTjdv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'xlypasPl' \
    'NeElsqdp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'vnOyzGNc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'pcWm7Jmu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
