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
sessionbrowser-admin-get-session 'Yl3oK5it' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session 'k3lCVdOf' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '30' '36' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed '8Wy7ND3r' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'BRiM5ak5' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 23, "current_player": 46, "map_name": "NEjHHTlf", "max_internal_player": 40, "max_player": 80, "mode": "roHHinHM", "num_bot": 17, "password": "gPyRCky3", "settings": {"0nxuViEB": {}, "u0TivQ9z": {}, "c2yOIv1I": {}}}, "game_version": "uwiFWRr5", "namespace": "JpLBNEWx", "session_type": "khPmaD7G", "username": "ykons2n9"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'gp5SOMft' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'UbKJ0eKm' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 12}' 'PYmCOlCh' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'ggVxZxcM' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "bRqkkMqe"}' 'r2w6gI7e' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'Uv50zbZ6' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": true, "user_id": "Pe1aLTrY"}' 'ZfTKaUwI' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'be8zTu5W' 'Hac4JaDE' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' '9WqiEIMq' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player '40vbaDCn' --login_with_auth "Bearer foo"
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
    '81BpIoAp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    '4Kjo3ylC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '32' \
    '35' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'Tu9NGKwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'WhGMmN28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 74, "current_player": 45, "map_name": "z1ivcQfY", "max_internal_player": 29, "max_player": 20, "mode": "SMYkBqwj", "num_bot": 41, "password": "pzTiqNMR", "settings": {"bbZ1hbyw": {}, "3dEwUKfx": {}, "9Aa66wFA": {}}}, "game_version": "jDxcNhB9", "namespace": "KImKG2B2", "session_type": "aAHU8B2u", "username": "6tdtC2ir"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'Bvd8l6mX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'G24apPUN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 13}' \
    'Q1tAELH3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'nlkKEQDG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "LIGmvpJ2"}' \
    '4MTbipZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'ERFHheLK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "iMjzLNw7"}' \
    '8XcbXuSL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'Tm04ujnS' \
    'A6lUmPfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'HNFwV7RX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'H8J1hWGS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
