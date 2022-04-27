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
achievement-admin-list-achievements --login_with_auth "Bearer foo"
achievement-admin-create-new-achievement '{"achievementCode": "FtBxyZcD", "defaultLanguage": "XBpGlsQu", "description": {"Ju8vMf0I": "sJkTrd8I"}, "goalValue": 0.46848625686278056, "hidden": false, "incremental": true, "lockedIcons": [{"slug": "XnTKjXY1", "url": "bPqamiBx"}], "name": {"x9Cs18EY": "84ekItqR"}, "statCode": "zHU1oh57", "tags": ["0KQBVaew"], "unlockedIcons": [{"slug": "c72krSha", "url": "68n3Ynoz"}]}' --login_with_auth "Bearer foo"
achievement-export-achievements --login_with_auth "Bearer foo"
achievement-import-achievements --login_with_auth "Bearer foo"
achievement-admin-get-achievement 'p1C2KmIQ' --login_with_auth "Bearer foo"
achievement-admin-update-achievement '{"defaultLanguage": "TuBdNEUs", "description": {"xFb8CJ17": "M7DJZaMS"}, "goalValue": 0.3723261689885863, "hidden": true, "incremental": false, "lockedIcons": [{"slug": "Zbygyoar", "url": "ORoeNHSb"}], "name": {"8Rh3kgs9": "qqJbnQso"}, "statCode": "BgiVpP8C", "tags": ["m3yvASUo"], "unlockedIcons": [{"slug": "xdxxFqmA", "url": "GTJ8IEda"}]}' 'gEtp4w29' --login_with_auth "Bearer foo"
achievement-admin-delete-achievement 'KOu9c19R' --login_with_auth "Bearer foo"
achievement-admin-update-achievement-list-order '{"targetOrder": 98}' 'DqWHkkP8' --login_with_auth "Bearer foo"
achievement-admin-list-user-achievements 'npLEKMfj' --login_with_auth "Bearer foo"
achievement-admin-unlock-achievement 'iX7jpkVZ' 'k3IaQYEm' --login_with_auth "Bearer foo"
achievement-public-list-achievements 'qGodOEGt' --login_with_auth "Bearer foo"
achievement-public-get-achievement '9gPOj0c6' 'i0JkvIas' --login_with_auth "Bearer foo"
achievement-public-list-user-achievements '73ucYnFA' --login_with_auth "Bearer foo"
achievement-public-unlock-achievement 'J3DK5T4E' 'ogg0Y39U' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE