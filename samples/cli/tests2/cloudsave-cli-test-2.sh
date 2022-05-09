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

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "FtBxyZcD", "updatedAt": "XBpGlsQu", "value": {"Ju8vMf0I": {}}}' 'sJkTrd8I' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '59' '4' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'V2zXnTKj' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'XY1bPqam' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'iBxx9Cs1' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 '8EY84ekI' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "tqRzHU1o", "updatedAt": "h570KQBV", "value": {"aewc72kr": {}}}' 'Sha68n3Y' 'nozp1C2K' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'mIQTuBdN' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'EUsxFb8C' 'J17M7DJZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'aMSxECbZ' 'bygyoarO' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'RoeNHSb8' 'Rh3kgs9q' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'qJbnQsoB' 'giVpP8Cm' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 '3yvASUox' 'dxxFqmAG' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'TJ8IEdag' 'Etp4w29K' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'Ou9c19R6' 'XDqWHkkP' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 '8npLEKMf' 'jiX7jpkV' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "Zk3IaQYE", "value": {"mqGodOEG": {}}}' 't9gPOj0c' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 '6i0JkvIa' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 's73ucYnF' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'AJ3DK5T4' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'Eogg0Y39' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["UoYlpv5b"]}' 'VAgtsDhU' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'TDUscbQD' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "jbTQuPMz", "value": {"2PTRlkyU": {}}}' '89ZPOw6z' 'PFJ42cwm' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'zBBSMNco' 'AAOjKNjf' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'cYHm093a' 'YgBU1sqj' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'yK0XH45P' 'aRSOFQBt' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'u23REZ8h' 'RVX7LGOv' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'DdYiQS9i' '7mV1C91p' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'jG9gpxL6' 'ycTQdvln' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' '2LAuSQWE' 'XL6LFE1Y' --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE