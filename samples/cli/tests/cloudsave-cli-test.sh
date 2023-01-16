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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "5HUNYqai", "updatedAt": "4Z9Mmq5L", "value": {"MCt6dDpO": {}, "JRN5eeTg": {}, "FkbIcgnT": {}}}' 'EWfvWD79' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '43' '47' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'DLhCgWSb' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' '3YbqEWpO' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'Oeu01FS1' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'NKoMXRGi' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["NvHZzgpp", "qMQbAshl", "ovszxzFo"], "user_id": "7uGJxDDE"}, {"keys": ["MIXIy7GT", "nr65WQGv", "Nq03WYGi"], "user_id": "rYnCJ4EA"}, {"keys": ["EngUiQh0", "HC8NXUy0", "DUk7TPHh"], "user_id": "LZYf9ETa"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "Leau88Ts", "updatedAt": "iu2W0oPQ", "value": {"ZaaWhkDV": {}, "S3lQNIPP": {}, "JV1YKU8j": {}}}' 'wHOA4oLZ' 'pGFw9Cve' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "dS8w7YEH", "updatedAt": "7hnf8TYM", "value": {"ckIm87L4": {}, "vg8owXve": {}, "dvIMTJcW": {}}}' 'ZVGyIGWv' 'Km2JyTkp' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'MzRPwUF1' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'kZWk29eK' 'cbZk7tPo' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'StP7xacd' 'iMtRjtBC' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '0cFZCuSU' '8n5Zz90G' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'SsBec3SI' 'ziNOGesC' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'tQm6eS1F' 'cA9TP1v6' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'SsPeDNzy' 'bLGzRfCm' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'kKXV9Mjy' '99JfXY0O' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 '4M2EGQ0U' 'vQUQh96T' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'Ys3oeATt' 'YPqeKcA4' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "4LDyF5Qd", "value": {"Q5EW5gdY": {}, "EI9kom96": {}, "hJSR3yWh": {}}}' 'LsE6jawE' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["51XMIWZV", "Lwv8VaH7", "9Z3yfz8b"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'nfRAC5yu' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' '9BuCthZQ' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'vJHWY5ib' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'AdJSBmUo' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["Q4yqHgiI", "TXhZ9a38", "of272OBW"]}' 'qOLfX9kn' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["bVr6HUsH", "1tHA0tYw", "ki2jl8n1"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'MrWqRWuH' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "jQz8JR7e", "value": {"63Tjzae8": {}, "9k1QCudh": {}, "vx3hKjRr": {}}}' 'pStZtHue' 'xWmvCHDx' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "d1qOW7dN", "value": {"YbSsmyk0": {}, "csSxYyZR": {}, "kRTPth6P": {}}}' '5ct6HhcC' '9zDHp1P8' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'l9rJs3z1' '38P8LnGU' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'rSBMwPrq' 'qD7hZjzU' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'pTqAifB9' '5JKBhCtA' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'ynmP6MxD' 'a9DBRYdS' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'hLHuFC3P' 'J6CZP04n' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' '9HwgEeBz' 'A3PrsqWt' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'fnp3VlZZ' 'xiaMsHi8' --login_with_auth "Bearer foo"
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
echo "1..40"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "dLSRSBL6", "updatedAt": "hIyz9azZ", "value": {"Wh0yPr59": {}, "iJrClF3o": {}, "b6robypI": {}}}' \
    '2SFJ3bgL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '35' \
    '43' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'o89Tgyjl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'Ayo8xSk6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'gAtI8zj2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    '4rNagnXe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["16Tkw98J", "Dd1n7hRu", "NkCGQ5YN"], "user_id": "QehYf4XR"}, {"keys": ["vpCG09aL", "yFFzw1j6", "O4T2FMzJ"], "user_id": "PivQjVKf"}, {"keys": ["SlICKHlC", "QGJChLzR", "pgGmQOxN"], "user_id": "FhgFejFp"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "EbFVn3EN", "updatedAt": "LeJBzLOZ", "value": {"No9kwKnK": {}, "LDOYn7rR": {}, "zmwhxOS8": {}}}' \
    'aY6aERHi' \
    'P56D7pXh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "NhUEKRwY", "updatedAt": "kEZ5yj2A", "value": {"smlu07PE": {}, "5K5x1iGL": {}, "PfsL1ZSY": {}}}' \
    'cFjE4G15' \
    'wwaQrtZW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'M7WzAuRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'lNa5fAsh' \
    '2xiymeKK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'vrDiJSQv' \
    'vs9bfaOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'G79AohP9' \
    'aqK7fUcx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    '4f2CoCIN' \
    'TxgM2NVD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    '0WpHwiq2' \
    '3H6CEeem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    '5OhIaBKT' \
    'nyV9QKDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '4nYiDL23' \
    'ny5Pid6U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'PBk6DxZR' \
    'DnaavZUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'y3M6yj4I' \
    '1QwJwAFU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "iEMQX6G1", "value": {"eim9Om0X": {}, "hlsa8kl9": {}, "zNIOG6ZR": {}}}' \
    '8LBmCVRs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["hf7H5BFV", "W6UrZLnq", "AkiTqinO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'RMh6xDPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'VSF2nQqM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'NxE6yBuH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'DpMqTXta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["ZXH6aq7W", "q8IneFzP", "Ql28yvDA"]}' \
    'ckc4d7iK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 29 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'RetrievePlayerRecords' test.out

#- 30 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["Mm0wDXD3", "2pz15Q7O", "i8wMiOWV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'Ue2aBopr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "II4UJBRt", "value": {"q702hCB1": {}, "ZGqTa1Mf": {}, "X49TO03L": {}}}' \
    'oNnPqBxd' \
    'V6Sy5Qej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "dM5DnV5a", "value": {"U7b4sWcZ": {}, "ZF0RsClR": {}, "aFh5F6AC": {}}}' \
    'JcwQ8dLS' \
    'eKGsK5yA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'Fu3HkGaS' \
    'pGOxozqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'RHXaMfNL' \
    '3i2ne6yU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'Rqc8iGGM' \
    '4vJ5nWjD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    '70as8NZC' \
    'fwHh8uua' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'PXrptdmU' \
    '2qZhxBkS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'eMPkjttz' \
    'QwM2cBN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    '3MdXAycL' \
    'A7eWTzZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
