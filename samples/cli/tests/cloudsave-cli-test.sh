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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "6IE5qI5M", "updatedAt": "igM5w6j1", "value": {"hDqSzyDW": {}, "drbaBRUb": {}, "1ljLAGBE": {}}}' 'nICGhvBg' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '54' '77' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'sdtpydfq' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'd7ZCKcMo' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'ybvZZvv7' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 '8y4VTpKh' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["e6uoDM8h", "5AGLs4M4", "5n96t4w5"], "user_id": "D8Mz26RH"}, {"keys": ["dVQxav7G", "DnvDfn8b", "gJwnzLSB"], "user_id": "5DEnSuF3"}, {"keys": ["vZkollul", "zrDJIShD", "hq0YFAYl"], "user_id": "S6ATIVjm"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "l7DYra4t", "updatedAt": "GEk1eFS0", "value": {"DxrJAgLL": {}, "DANDzGVm": {}, "0uC08Zeq": {}}}' 'c6WCFtFH' 'odqzCy3L' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "e2TY7AG1", "updatedAt": "TLazhAJR", "value": {"qvGpYr7x": {}, "A37xVwnn": {}, "A6f2bdcl": {}}}' 'VIOlDhFU' 'V5Omd2B9' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'wjUDMPPV' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'rUnpRjAG' 'nYC3KUNU' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'zLp9u5F6' 'xrkxqo3m' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'NapezgLk' 'KWzRsl0z' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'snJlQrpu' 'ZUvzthz5' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'CkDL1cM4' 'FuOfTMxn' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'rryTUHt1' 'LjBrPJRA' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'TXTlbzaA' '7gVjL7gI' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'g6ibtNs4' 'HMmDtiHe' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 '8eiacLRG' 'NyjsUEXD' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "qg3KOHAX", "value": {"VAKx13rQ": {}, "yoOXYl0E": {}, "3hagX8lF": {}}}' 'K4XR0XdJ' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'VXO9109s' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'PJRZdVCO' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' '8IARUKw1' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'uzRdCV6X' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["L99Ykc8S", "5C8Re4Le", "G7QyWtCl"]}' 'D9cR9jVa' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'Jt8jwu6D' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "VNrSKkDj", "value": {"dEO2lTqz": {}, "kFoIwg0q": {}, "sxZ0IipA": {}}}' '6dCQy2Py' 'f27D93kt' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "XnUEGppa", "value": {"H5l1xWNz": {}, "mpzFmKmy": {}, "LtFMhh1s": {}}}' 'J5Ny2Xd3' 'cuof7YIC' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'BY4CGikS' 'W4MOzwPw' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'JJv6w2cf' 'mJe0KsYr' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'K2vC56Ie' 'aWIgKxxn' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 '1iK8VFeK' 'P0jlYe3k' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'D6IZqsD1' 'WMlrulHn' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'p9ryCupx' 'PhLRZHwO' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'JnMfXqkm' '41OXXaDP' --login_with_auth "Bearer foo"
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
echo "1..37"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "X0nUCN8i", "updatedAt": "02ttPNwC", "value": {"rdHuOozi": {}, "2BIxrwzH": {}, "O6YQFgfv": {}}}' \
    'SH7x6uuF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '75' \
    '29' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    '5Bb6eE93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'Ogt5R6eE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'r98w2eDH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'DDuBOVHa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["9YM0Eb6c", "DPG9KtrM", "K760oJTZ"], "user_id": "Q86hftJ4"}, {"keys": ["yCvXzXtn", "QLh7lcdY", "JSH1R0xG"], "user_id": "NGbrLKKK"}, {"keys": ["afurC3P9", "GXDMZXde", "WrbptaNh"], "user_id": "tTgRFslJ"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "nMnIR3iG", "updatedAt": "dpKMb1my", "value": {"HDmK0CPl": {}, "mbeNOEao": {}, "ZiFmcyTd": {}}}' \
    'dqhO3ZlM' \
    'p0ygnmwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "laXKWX6V", "updatedAt": "XyhGmOhH", "value": {"16S01ULU": {}, "WQr0gJCg": {}, "YedAlruk": {}}}' \
    'XcsH579N' \
    'HNOBfZ2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'e8PJDGPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'W1NQ0ESh' \
    'BNEQW7tx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'F8xYuUul' \
    'buphr3QX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    '67pXWH83' \
    'Yy7vGUGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'ZLAic8sv' \
    'C1fsZt5T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'Pqmndu8d' \
    '8dVRMSQV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'aiTutSCU' \
    'sPVR8CY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'gsCBAFR4' \
    'BDLxBMI6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'zQGXhQsr' \
    'hWtBbgd1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'ADpOIbfV' \
    'tTUvWlhP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "fXFlR3Ww", "value": {"5z4aezma": {}, "S80MNhj1": {}, "nMkDobxx": {}}}' \
    'ZqHtqLGl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'BpNZdBVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'NoVNhzC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'OZTZERFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    '93jTw1Q6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["VCElwWeD", "98WEpigZ", "EwuegHge"]}' \
    '7Ll52YEH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'gPhnzJZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "KH4CwWlV", "value": {"eJfuv6Wl": {}, "EbSwYLjn": {}, "J5QRegYX": {}}}' \
    'iJK4mV8V' \
    'QbKIMzLB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "7aOYQ8ND", "value": {"36YpqjEh": {}, "fA9FNUD8": {}, "OJjY3ftb": {}}}' \
    'KQW2FMiA' \
    'cMbHK0fR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'i0CVyXJP' \
    'ha4uLpcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'tBMBh82j' \
    'pBb6FRk8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'gQ3N3NaG' \
    '4zFAQQQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    '8IL1Keeu' \
    'WcAPByCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'kNU1CTiU' \
    'slEJoIkW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'FSQ8nuy3' \
    'k6nP1T3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'BmTMYn05' \
    'YcglrnXe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
