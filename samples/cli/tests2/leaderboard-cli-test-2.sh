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
leaderboard-get-leaderboard-configurations-admin-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "FtBxyZcD"}, "descending": true, "iconURL": "pGlsQuJu", "leaderboardCode": "8vMf0IsJ", "monthly": {"resetDate": 20, "resetTime": "Trd8IDcV"}, "name": "2zXnTKjX", "seasonPeriod": 3, "startTime": "PqamiBxx", "statCode": "9Cs18EY8", "weekly": {"resetDay": 9, "resetTime": "kItqRzHU"}}' --login_with_auth "Bearer foo"
leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler '1oh570KQ' --login_with_auth "Bearer foo"
leaderboard-create-archived-leaderboard-ranking-data-v1-handler '{"leaderboardCodes": ["BVaewc72"], "limit": 21, "slug": "rSha68n3"}' --login_with_auth "Bearer foo"
leaderboard-delete-bulk-leaderboard-configuration-admin-v1 '{"leaderboardCodes": ["Ynozp1C2"]}' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configuration-admin-v1 'KmIQTuBd' --login_with_auth "Bearer foo"
leaderboard-update-leaderboard-configuration-admin-v1 '{"daily": {"resetTime": "NEUsxFb8"}, "descending": true, "iconURL": "J17M7DJZ", "monthly": {"resetDate": 0, "resetTime": "MSxECbZb"}, "name": "ygyoarOR", "seasonPeriod": 29, "startTime": "eNHSb8Rh", "statCode": "3kgs9qqJ", "weekly": {"resetDay": 2, "resetTime": "nQsoBgiV"}}' 'pP8Cm3yv' --login_with_auth "Bearer foo"
leaderboard-delete-leaderboard-configuration-admin-v1 'ASUoxdxx' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-admin-v1 'FqmAGTJ8' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-admin-v1 'IEdagEtp' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-admin-v1 '4w29KOu9' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-admin-v1 'c19R6XDq' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-admin-v1 'WHkkP8np' 'LEKMfjiX' --login_with_auth "Bearer foo"
leaderboard-update-user-point-admin-v1 '{"inc": 0.9319948639373902, "latestValue": 0.2472405520592631}' 'VZk3IaQY' 'EmqGodOE' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-admin-v1 'Gt9gPOj0' 'c6i0JkvI' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-admin-v1 'as73ucYn' --login_with_auth "Bearer foo"
leaderboard-delete-user-rankings-admin-v1 'FAJ3DK5T' '["4Eogg0Y3"]' --login_with_auth "Bearer foo"
leaderboard-get-user-leaderboard-rankings-admin-v1 '9UoYlpv5' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v1 --login_with_auth "Bearer foo"
leaderboard-create-leaderboard-configuration-public-v1 '{"daily": {"resetTime": "bVAgtsDh"}, "descending": true, "iconURL": "UscbQDjb", "leaderboardCode": "TQuPMz2P", "monthly": {"resetDate": 91, "resetTime": "RlkyU89Z"}, "name": "POw6zPFJ", "seasonPeriod": 5, "startTime": "wmzBBSMN", "statCode": "coAAOjKN", "weekly": {"resetDay": 18, "resetTime": "fcYHm093"}}' --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v1 'aYgBU1sq' --login_with_auth "Bearer foo"
leaderboard-get-archived-leaderboard-ranking-data-v1-handler 'jyK0XH45' 'PaRSOFQB' --login_with_auth "Bearer foo"
leaderboard-get-current-month-leaderboard-ranking-public-v1 'tu23REZ8' --login_with_auth "Bearer foo"
leaderboard-get-current-season-leaderboard-ranking-public-v1 'hRVX7LGO' --login_with_auth "Bearer foo"
leaderboard-get-today-leaderboard-ranking-public-v1 'vDdYiQS9' --login_with_auth "Bearer foo"
leaderboard-get-user-ranking-public-v1 'i7mV1C91' 'pjG9gpxL' --login_with_auth "Bearer foo"
leaderboard-delete-user-ranking-public-v1 '6ycTQdvl' 'n2LAuSQW' --login_with_auth "Bearer foo"
leaderboard-get-current-week-leaderboard-ranking-public-v1 'EXL6LFE1' --login_with_auth "Bearer foo"
leaderboard-get-hidden-users-v2 'YHo9m126' --login_with_auth "Bearer foo"
leaderboard-get-user-visibility-status-v2 'ZWc8hHtW' 'vbNYqgUq' --login_with_auth "Bearer foo"
leaderboard-set-user-leaderboard-visibility-status-v2 '{"visibility": true}' 'lArFPiHU' 'IvaCv8kU' --login_with_auth "Bearer foo"
leaderboard-set-user-visibility-status-v2 '{"visibility": false}' 'BBpdsJLh' --login_with_auth "Bearer foo"
leaderboard-get-leaderboard-configurations-public-v2 --login_with_auth "Bearer foo"
leaderboard-get-all-time-leaderboard-ranking-public-v2 'sVyExrkx' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE