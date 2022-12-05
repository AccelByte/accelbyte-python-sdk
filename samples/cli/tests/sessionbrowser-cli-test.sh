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
sessionbrowser-admin-get-session 'VF15AcKz' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session '86VDkRVX' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '46' '60' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'KflBaqnC' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'IFt8hTd8' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 78, "current_player": 73, "map_name": "M633Tdbj", "max_internal_player": 97, "max_player": 4, "mode": "wtIvUgzV", "num_bot": 90, "password": "qX4YYbWt", "settings": {"LyMGWAp7": {}, "EshAOJFb": {}, "AySdwOS4": {}}}, "game_version": "88NaCNm6", "namespace": "7VzqxVjX", "session_type": "GG3oqvGr", "username": "Nuo7tCuS"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds '6At1iveo' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'i0tNC71k' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 21}' 'VA2DTVCs' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'BYoKx4UR' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "OahSnrwd"}' 'u5fN3eMy' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'dxM0883Y' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "PR1UCgOS"}' '9hLqsqB8' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'jAKga1Fa' 'jatNZXW1' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'EhHuMtMq' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'ZuxNuf5p' --login_with_auth "Bearer foo"
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
    'wbaDHzMM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    '87kd1BJZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '67' \
    '14' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'vn7VkGz8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'TfB32r6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 63, "current_player": 8, "map_name": "63CVD1Z0", "max_internal_player": 10, "max_player": 17, "mode": "16jEG0y7", "num_bot": 4, "password": "bkAIGTcV", "settings": {"NUTibQOT": {}, "THwSGyZb": {}, "89qivenm": {}}}, "game_version": "v9XKk12C", "namespace": "iPgBU8DA", "session_type": "lTeZylw2", "username": "q3NHQbuz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    '4UHGnv1B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'yGOj6DBi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 5}' \
    'pbYhn6EA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    '483riXpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "fwSTn4K5"}' \
    'CNgSmfY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'LYs2T1lc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "igUdgonV"}' \
    'zKYqKiHG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'hQxlS3Zm' \
    'e1q6LRwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    '9Fz1fQVR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'kWKUUPfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
