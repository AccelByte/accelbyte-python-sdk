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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "FOycMEAR", "updatedAt": "W9zKDktW", "value": {"9PngFGlC": {}, "AZhbkZze": {}, "gLbjNyvD": {}}}' 'MlvmCqmr' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '75' '24' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'mgvpMNji' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'xJZiKz2X' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' '23nJZpZe' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 't6nspS00' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["EcS1XVTM", "REq8FLpR", "D4vGwlKv"], "user_id": "qSjYQ4km"}, {"keys": ["Lv2zbuYp", "d7GaxvxD", "Ze97CHxz"], "user_id": "73WiqoHs"}, {"keys": ["L9bzsL7X", "2JC4ftCf", "gugQmGyk"], "user_id": "SLXqb8fV"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "xIVXTNXn", "updatedAt": "GzVhbS7W", "value": {"00A0qTkY": {}, "q0T4H2kk": {}, "UaAWfUBg": {}}}' 'xC5EEdVF' 'cLeSDCzx' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "3BewGaq5", "updatedAt": "KYzsWRRw", "value": {"c2CzQX7m": {}, "ZZcBHv0V": {}, "Oc941HoY": {}}}' 'eWhZTcUz' 'mlxzunDv' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'SedcvTXq' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'F36xdlyB' '8VIvfBUt' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'OoeJtL70' 'LXoMY4jE' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'ITgxtPb6' 'eVzGoPUR' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'RZh9SdBP' 'RHm1m7rA' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'BeJDT43Q' 'laDEUNQj' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'xcOcPcSo' 'BmxwpDf2' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'STyjSEMa' 'fAj5cZGn' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 's9nEYX9J' 'gShQar9y' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'ViDw3gJB' 'QAl2jLK9' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "0C3pxAe6", "value": {"ALgLnNCU": {}, "6c6j7e5C": {}, "KR9xxAW7": {}}}' 'ZlMtQD7h' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["xsX9g0Uq", "iEc5WRuN", "4epgkmdB"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'kaYh9OL3' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'ooe0LTaT' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'zyQM9nqh' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'L6p8xVx0' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["yF5wVK6O", "kWVhs0gq", "TcpU2AJM"]}' '7ImhVfE2' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["GLMlmSRk", "UqiYHCjy", "9n1wpCe3"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'CYmoEwNV' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "EetyIaoA", "value": {"UoRFj33s": {}, "rVICBwRI": {}, "g4bggZTl": {}}}' 'G6m3jbGT' 'B7nP0ivu' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "X9hB1p8L", "value": {"dVkBQCOn": {}, "KDgFhy6h": {}, "WncqRqC7": {}}}' 'QI7IcVEM' 'O4WqLYdy' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'MaRKmXYl' 'lwiFS8xT' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' '9ks5eO1M' 'nrDHIUKt' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'mXw5m8XT' 'h0Enos40' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'uJ4XuyYR' '4H1OggAh' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 '14HBpHXc' 'BANIkuW7' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'AQqQMKcV' 'AsScNqti' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'gte75m3w' 'LwteX9qK' --login_with_auth "Bearer foo"
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
    '{"set_by": "Kw363V9V", "updatedAt": "CwKpDJ06", "value": {"Hr1EKTnS": {}, "xt9PWTTy": {}, "ofCf98G0": {}}}' \
    '2bqgmWN1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '34' \
    '59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'f7zzySUU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'V7YaPmCw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'Jvs3dTJp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    '1HnpvMia' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["rUFwS4ms", "dWLlII5G", "6MvCrO1B"], "user_id": "hEy7EqQ8"}, {"keys": ["n0nQrDW0", "ySnG7EFa", "jOWTTjhH"], "user_id": "IedxvIYU"}, {"keys": ["tRr4yaLN", "JH8aLWHC", "P3ZHoRyu"], "user_id": "Kxyx2Ocj"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "NSOQK4hf", "updatedAt": "HG22V3Kz", "value": {"Ez9rTpnl": {}, "PtG8bDom": {}, "aGJhJnW4": {}}}' \
    'ylyhwX7E' \
    'iTV2vlEX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "dmx0y1sw", "updatedAt": "9MqDcFPB", "value": {"nujvXESm": {}, "01qyy5jf": {}, "62UrR5O7": {}}}' \
    'ZInKjXzA' \
    '8qjdmLce' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    '2XIScYOH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    '8YSr9AzV' \
    'nlAh0pl9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'PtEJqk5q' \
    'NhR3deFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'cxaOioSP' \
    'Bai9l9bh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'Fe8ETc2T' \
    'WK56rivf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'D0SI0nMk' \
    'hb64Od44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'm7enlhfz' \
    'kTV1iTle' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'vPAMEIIa' \
    'K12fCZHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    '6s3hW31B' \
    'WBFq9MnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'dHoxtulx' \
    'nnKhidIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "KRwOmkmb", "value": {"vlMPWyZD": {}, "BNRas5nX": {}, "UPpqFxLQ": {}}}' \
    'gd57tLb5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["aMYfKVIh", "ENjDtxi6", "QxrK2uU7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'GHK7km8G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '6AnFft8f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'q7Sbj2R0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'GdoAl0wu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["nfd26K3M", "LoodZK3z", "aWHYIqI9"]}' \
    'HnwTmOz1' \
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
    '{"keys": ["qn8ty12W", "Jw87UjxC", "CdoVa002"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'mgYSjjhA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "k9C9RMet", "value": {"DN0wNg81": {}, "ugGFoPZF": {}, "SQBAFecZ": {}}}' \
    'HISIK703' \
    'PoVGNZth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "rfADgN5g", "value": {"YVcBZ3I8": {}, "StZvZfx8": {}, "IpRxxqR1": {}}}' \
    '9jv09xTr' \
    'M5UMRHDA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'SeJFBUyL' \
    'c8FSNvyU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'MB2lwP8B' \
    'F0fluxQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'qqrKNJYk' \
    'WJkCFCj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'dQCgMASF' \
    'oMLs1qGL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'jYgDhRpe' \
    '1Ny4XW5C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'Ke5CCuXP' \
    'hTI2vU1S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'fz4gJRPr' \
    'O53hOEFK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
