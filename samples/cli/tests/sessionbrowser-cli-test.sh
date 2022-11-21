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
sessionbrowser-admin-get-session 'a66ZwlPj' --login_with_auth "Bearer foo"
sessionbrowser-admin-delete-session 'OMISMPAd' --login_with_auth "Bearer foo"
sessionbrowser-admin-search-sessions-v2 '55' '14' --login_with_auth "Bearer foo"
sessionbrowser-get-session-history-detailed 'WekEt30l' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'wIqqlBdD' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": false, "current_internal_player": 57, "current_player": 0, "map_name": "oeJbKYZ1", "max_internal_player": 97, "max_player": 85, "mode": "fb2jL0io", "num_bot": 73, "password": "4W0Z9KIz", "settings": {"bYo2fOwO": {}, "WrpGcxyx": {}, "RvGZvD29": {}}}, "game_version": "bs2eYRKL", "namespace": "zODTB6BI", "session_type": "MYZuU4qv", "username": "gGY6Vz6J"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'vNiaOVVJ' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'SsaoE8Bz' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_max_player": 50}' '8goKP9vR' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'vuhcd7WZ' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "uLvOqroo"}' '95FyZLXd' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'IMfBYlc5' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": false, "user_id": "fvZIDHR8"}' 'ZDfUvO86' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'eN3ZMR4u' 'SxFi3xbV' --login_with_auth "Bearer foo"
sessionbrowser-update-settings '{}' 'yb2ciiON' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'BRv2HA0Y' --login_with_auth "Bearer foo"
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
    'oCYC5uzT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetSession' test.out

#- 6 AdminDeleteSession
$PYTHON -m $MODULE 'sessionbrowser-admin-delete-session' \
    'TADpjtTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteSession' test.out

#- 7 AdminSearchSessionsV2
$PYTHON -m $MODULE 'sessionbrowser-admin-search-sessions-v2' \
    '89' \
    '90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminSearchSessionsV2' test.out

#- 8 GetSessionHistoryDetailed
$PYTHON -m $MODULE 'sessionbrowser-get-session-history-detailed' \
    'eKLxfXmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetSessionHistoryDetailed' test.out

#- 9 QuerySession
$PYTHON -m $MODULE 'sessionbrowser-query-session' \
    'axPtfZM1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'QuerySession' test.out

#- 10 CreateSession
$PYTHON -m $MODULE 'sessionbrowser-create-session' \
    '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 74, "current_player": 43, "map_name": "Z98y0E7J", "max_internal_player": 11, "max_player": 19, "mode": "NykCiP7r", "num_bot": 63, "password": "JslFCgnF", "settings": {"O9QEvxEK": {}, "gJ4CiPBb": {}, "T47ky0qN": {}}}, "game_version": "zOTYo1PX", "namespace": "uNoP9NVb", "session_type": "mO2MGIbj", "username": "Yd3c0L12"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateSession' test.out

#- 11 GetSessionByUserIDs
$PYTHON -m $MODULE 'sessionbrowser-get-session-by-user-i-ds' \
    'ucxQNquA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSessionByUserIDs' test.out

#- 12 GetSession
$PYTHON -m $MODULE 'sessionbrowser-get-session' \
    'hlp2DZ06' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetSession' test.out

#- 13 UpdateSession
$PYTHON -m $MODULE 'sessionbrowser-update-session' \
    '{"game_max_player": 23}' \
    '222oZzTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateSession' test.out

#- 14 DeleteSession
$PYTHON -m $MODULE 'sessionbrowser-delete-session' \
    'fcNp3o0f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteSession' test.out

#- 15 JoinSession
$PYTHON -m $MODULE 'sessionbrowser-join-session' \
    '{"password": "xx6v0f0n"}' \
    'XT7Pbbk9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'JoinSession' test.out

#- 16 DeleteSessionLocalDS
$PYTHON -m $MODULE 'sessionbrowser-delete-session-local-ds' \
    'eudPK4El' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteSessionLocalDS' test.out

#- 17 AddPlayerToSession
$PYTHON -m $MODULE 'sessionbrowser-add-player-to-session' \
    '{"as_spectator": false, "user_id": "fXgxeJUT"}' \
    'QjEcPY5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddPlayerToSession' test.out

#- 18 RemovePlayerFromSession
$PYTHON -m $MODULE 'sessionbrowser-remove-player-from-session' \
    'kXK7yP3v' \
    'rYkFVHR4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RemovePlayerFromSession' test.out

#- 19 UpdateSettings
$PYTHON -m $MODULE 'sessionbrowser-update-settings' \
    '{}' \
    'gj7QKCLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateSettings' test.out

#- 20 GetRecentPlayer
$PYTHON -m $MODULE 'sessionbrowser-get-recent-player' \
    'h4HOE3m3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetRecentPlayer' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
