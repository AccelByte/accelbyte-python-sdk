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
sessionbrowser-admin-query-session 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
sessionbrowser-get-total-active-session --login_with_auth "Bearer foo"
sessionbrowser-get-active-custom-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-get-active-matchmaking-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-admin-get-session 'H9UzVRiXbqlAw7r6' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '0' '27' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed '2WopBJHPtcDs8bBZ' --login_with_auth "Bearer foo"
sessionbrowser-user-query-session 'LCXLx8bbgorQeFbQ' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 13, "current_player": 37, "map_name": "7qbPngUNB1vRodwp", "max_internal_player": 52, "max_player": 65, "mode": "S6DaDpv8N7ZQVqGj", "num_bot": 26, "password": "oDLjWjkY1aXlFcDt", "settings": {"gOjchIua5tWEIC32": {}, "ogW7olvbTgrhRTcP": {}, "iSuL0Sly6XM4OI18": {}}}, "game_version": "mAQLnzjMf8GZ2WBZ", "namespace": "qxYG3aREAu2D6QVK", "session_type": "NCWP75TB0i7pKxR8", "username": "dl0zRVW4EZG9m0Xc"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'gGVbMqSszE8GHavj' --login_with_auth "Bearer foo"
sessionbrowser-get-session '7AorKsxwkosAVerX' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 31}' 'Ki5r6QEa1ysLEzth' --login_with_auth "Bearer foo"
sessionbrowser-delete-session '6mXhzkzWkFeZSoEA' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "cBdW19m4eu6d5tA5"}' 'jUmiTqpyhPFdxLzF' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'QN05MYzYiKWe5dNR' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": false, "user_id": "IAjGGJddVCvu9vx5"}' 'KQ7KYnIuMBvaO35l' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'lzQRaT5kPxUfofvn' 'nSuB0y5WUlrMdI4s' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'NveabntBSxTeIv53' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'HGCiljvjKoyD6SCw' --login_with_auth "Bearer foo"
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
    'GrncqmLtjQHAf8Tg' \
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
    'oNm03VLisV6zwPuo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetSession' test.out

#- 7 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    '3td6TC6I3lMjGSWN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteSession' test.out

#- 8 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '23' \
    '23' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminSearchSessionsV2' test.out

#- 9 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'na7qxNeIxPz6MbwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetSessionHistoryDetailed' test.out

#- 10 UserQuerySession
$PYTHON -m $MODULE 'sessionbrowser-user-query-session' \
    '6IY69z1UaLqYSYWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'UserQuerySession' test.out

#- 11 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 55, "current_player": 77, "map_name": "XQ0yYoNRKd3IL5TA", "max_internal_player": 87, "max_player": 18, "mode": "6iiPlSC2uE4o5Vwd", "num_bot": 30, "password": "m3MqHcUmLZZbSqb8", "settings": {"RwNmn9HrNQy4uZAA": {}, "iE0mit9RGCCHYzUO": {}, "cEdscKHPEqgA8yu7": {}}}, "game_version": "Vk6Jt4Ymos9Jcdos", "namespace": "4fYcTVU6RBt0zYoM", "session_type": "cHyCUEXlAvxJMdal", "username": "wSyliWMNW5NyLu0M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateSession' test.out

#- 12 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    '3VHh2EI8JlDbPWbQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSessionByUserIDs' test.out

#- 13 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    '6Q9lNmqRBaAkLnvx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetSession' test.out

#- 14 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 22}' \
    'oQrpOsDBU5SepjCh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'UpdateSession' test.out

#- 15 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'B3V0v52Dlym6puQ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteSession' test.out

#- 16 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "3xoJ8aeCnaLpUKp4"}' \
    '4YUDjasWIPUvmEej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'JoinSession' test.out

#- 17 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'tGeoyIPa8ZRrvjj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteSessionLocalDS' test.out

#- 18 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "PYgc2L4jk4Lo0LSP"}' \
    '0pf4IxjUkl535X3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AddPlayerToSession' test.out

#- 19 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'teEKDpADz1x3poD3' \
    'Qgb3boLQQ1MzH7Qm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RemovePlayerFromSession' test.out

#- 20 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    '8bwbmXgdAPh1EThG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateSettings' test.out

#- 21 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    '96gAFKK2WDgCcxvO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
