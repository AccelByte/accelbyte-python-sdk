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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "FtBxyZcD", "updatedAt": "XBpGlsQu", "value": {"Ju8vMf0I": {}}}' 'sJkTrd8I' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '59' '4' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'V2zXnTKj' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'XY1bPqam' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'iBxx9Cs1' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 '8EY84ekI' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "tqRzHU1o", "updatedAt": "h570KQBV", "value": {"aewc72kr": {}}}' 'Sha68n3Y' 'nozp1C2K' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "mIQTuBdN", "updatedAt": "EUsxFb8C", "value": {"J17M7DJZ": {}}}' 'aMSxECbZ' 'bygyoarO' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'RoeNHSb8' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'Rh3kgs9q' 'qJbnQsoB' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'giVpP8Cm' '3yvASUox' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'dxxFqmAG' 'TJ8IEdag' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'Etp4w29K' 'Ou9c19R6' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'XDqWHkkP' '8npLEKMf' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'jiX7jpkV' 'Zk3IaQYE' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'mqGodOEG' 't9gPOj0c' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 '6i0JkvIa' 's73ucYnF' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "AJ3DK5T4", "value": {"Eogg0Y39": {}}}' 'UoYlpv5b' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'VAgtsDhU' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'TDUscbQD' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'jbTQuPMz' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 '2PTRlkyU' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["89ZPOw6z"]}' 'PFJ42cwm' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'zBBSMNco' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "AAOjKNjf", "value": {"cYHm093a": {}}}' 'YgBU1sqj' 'yK0XH45P' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "aRSOFQBt", "value": {"u23REZ8h": {}}}' 'RVX7LGOv' 'DdYiQS9i' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '7mV1C91p' 'jG9gpxL6' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'ycTQdvln' '2LAuSQWE' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'XL6LFE1Y' 'Ho9m126Z' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'Wc8hHtWv' 'bNYqgUqs' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'lArFPiHU' 'IvaCv8kU' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' '9dBBpdsJ' 'LhsVyExr' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'kxoot0B7' 'WOfercZd' --login_with_auth "Bearer foo"
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
echo "1..35"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "pMci37Ds", "updatedAt": "7YSfExaI", "value": {"3uzLteMb": {}}}' \
    'FAlt4hr7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '67' \
    '25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'OYiBA5lt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'AOXmlG6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'h1dTdoTF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'pBIcuC1d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 ListPlayerRecordHandlerV1
eval_tap 0 8 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 9 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "QY93OJnJ", "updatedAt": "6Te9vD8l", "value": {"dz7Hu8AD": {}}}' \
    '79kdWunv' \
    'izU0q1pH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 10 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "yhhERoGg", "updatedAt": "drysMizB", "value": {"GSRdP2l7": {}}}' \
    'DNSZ8Aq0' \
    'XiPLQXSe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 11 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    '07ZddOGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminRetrievePlayerRecords' test.out

#- 12 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'MlJjBwj9' \
    'HJHQKseE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPlayerRecordHandlerV1' test.out

#- 13 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'dSXRDSvg' \
    'uauw1xT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPutPlayerRecordHandlerV1' test.out

#- 14 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'eMwSl9ML' \
    'H0NnTJ2u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPostPlayerRecordHandlerV1' test.out

#- 15 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'lNzBvwJa' \
    'Qa547Jll' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDeletePlayerRecordHandlerV1' test.out

#- 16 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'vA8RWSpa' \
    'bUt7xk6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 17 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'xyWhfqoW' \
    'fJw2o8oW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'UqvPCZ2H' \
    'zT7NXmWD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 19 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'lXsuNIdQ' \
    'JR5lsNOl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 20 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "vkfwaSbn", "value": {"suLCgTox": {}}}' \
    'uVTekJgv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PutGameRecordConcurrentHandlerV1' test.out

#- 21 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'g6h5HIpH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGameRecordHandlerV1' test.out

#- 22 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '0DviplEk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordHandlerV1' test.out

#- 23 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    '4vj3LDp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PostGameRecordHandlerV1' test.out

#- 24 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'yqDt8QUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGameRecordHandlerV1' test.out

#- 25 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["DpxlHasi"]}' \
    'nGcjrkmR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 26 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'MttgjDSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 27 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "IVBmft3U", "value": {"dg7p9PGm": {}}}' \
    'Y2H5kX4M' \
    'sisSX28n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 28 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "ARxWRpv5", "value": {"ou5xtvd2": {}}}' \
    '8OUfCt8U' \
    'JC5flNyj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 29 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    '6HsTtX8P' \
    '3llnaaS9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPlayerRecordHandlerV1' test.out

#- 30 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'lqyygPcf' \
    'kJIxfQZz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerRecordHandlerV1' test.out

#- 31 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'a8kNVbDx' \
    'VMq7HJk0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PostPlayerRecordHandlerV1' test.out

#- 32 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'F89xAc3Y' \
    'VfaENtrl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeletePlayerRecordHandlerV1' test.out

#- 33 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    '0pTKZTXq' \
    'zHuBMYQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetPlayerPublicRecordHandlerV1' test.out

#- 34 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'A2jz1ZOp' \
    'dOjSyMdd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PutPlayerPublicRecordHandlerV1' test.out

#- 35 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'B41JuMf7' \
    'RUyBHRj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
