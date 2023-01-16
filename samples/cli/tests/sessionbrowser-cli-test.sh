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
sessionbrowser-admin-query-session 'hU9o8HiX' --login_with_auth "Bearer foo"
sessionbrowser-get-total-active-session --login_with_auth "Bearer foo"
sessionbrowser-get-active-custom-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-get-active-matchmaking-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-admin-get-session 'AVogQrvp' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session '8bSsunzS' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '5' '5' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'EXhucf2i' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'O6yCmIXR' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 85, "current_player": 55, "map_name": "8oKmOvy2", "max_internal_player": 41, "max_player": 0, "mode": "M7IYJ4yS", "num_bot": 48, "password": "8KzBD2LZ", "settings": {"aXu4nMdZ": {}, "kj3k0dZn": {}, "Q94c7vS9": {}}}, "game_version": "TMQ6MC3m", "namespace": "boKRoJYh", "session_type": "Wjc6sJ5S", "username": "23AxxEbL"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'PkyC7ozQ' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'pqznYEeZ' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 5}' 'UXvCSPkq' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'qECuQdFN' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "KKkI7aQ4"}' 'RW1Crmtb' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds '90oR5VBk' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "FBEr89Ni"}' 'Amub316o' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'mVPwwtoQ' 'GAroU6JG' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'jooWwrH3' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'PC4NfY09' --login_with_auth "Bearer foo"
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
    'OkAU46yc' \
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
    'GKCH8YdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    '3L1zGG1D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '99' \
    '15' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'mU7ywV0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'fgCIdinv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'QuerySession' test.out

#- 11 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 56, "current_player": 30, "map_name": "VmAQXcUh", "max_internal_player": 3, "max_player": 48, "mode": "oxU5sdJJ", "num_bot": 60, "password": "s99h685S", "settings": {"cS59TWJZ": {}, "9EbwplZy": {}, "VTy8PeoM": {}}}, "game_version": "pxCpXziZ", "namespace": "NZiv2t6A", "session_type": "RiSbqCrf", "username": "7JfJ7kMV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'KVAwePki' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    '3R7Fud8o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 79}' \
    'bhcrPY7v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'XO16LgGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "CyYotXWT"}' \
    'r6O5bo2c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    '8yj6inwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": true, "user_id": "8aadEkbu"}' \
    'nUPmSgPh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'lloUT45m' \
    'DjxLInyH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'cJUMubLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    '3mufNUNF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
