#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
sessionbrowser-get-total-active-session --login_with_auth "Bearer foo"
sessionbrowser-get-active-custom-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-get-active-matchmaking-game-sessions --login_with_auth "Bearer foo"
sessionbrowser-admin-get-session 'FtBxyZcD' --login_with_auth "Bearer foo"
sessionbrowser-query-session 'XBpGlsQu' --login_with_auth "Bearer foo"
sessionbrowser-create-session '{"game_session_setting": {"allow_join_in_progress": true, "current_internal_player": 42, "current_player": 77, "map_name": "f0IsJkTr", "max_internal_player": 6, "max_player": 68, "mode": "DcV2zXnT", "num_bot": 72, "password": "jXY1bPqa", "settings": {"miBxx9Cs": {}}}, "game_version": "18EY84ek", "namespace": "ItqRzHU1", "session_type": "oh570KQB", "username": "Vaewc72k"}' --login_with_auth "Bearer foo"
sessionbrowser-get-session-by-user-i-ds 'rSha68n3' --login_with_auth "Bearer foo"
sessionbrowser-get-session 'Ynozp1C2' --login_with_auth "Bearer foo"
sessionbrowser-update-session '{"game_current_player": 72, "game_max_player": 24}' 'IQTuBdNE' --login_with_auth "Bearer foo"
sessionbrowser-delete-session 'UsxFb8CJ' --login_with_auth "Bearer foo"
sessionbrowser-join-session '{"password": "17M7DJZa"}' 'MSxECbZb' --login_with_auth "Bearer foo"
sessionbrowser-delete-session-local-ds 'ygyoarOR' --login_with_auth "Bearer foo"
sessionbrowser-add-player-to-session '{"as_spectator": false, "user_id": "eNHSb8Rh"}' '3kgs9qqJ' --login_with_auth "Bearer foo"
sessionbrowser-remove-player-from-session 'bnQsoBgi' 'VpP8Cm3y' --login_with_auth "Bearer foo"
sessionbrowser-get-recent-player 'vASUoxdx' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE