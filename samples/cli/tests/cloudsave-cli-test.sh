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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "EAxcVpFr", "updatedAt": "ttufHIRd", "value": {"H9UzVRiX": {}, "bqlAw7r6": {}, "W2ktQG0h": {}}}' '5JAav5kR' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '0' '27' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 '2WopBJHP' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'tcDs8bBZ' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'LCXLx8bb' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'gorQeFbQ' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["1g7qbPng", "UNB1vRod", "wpzS6DaD"], "user_id": "pv8N7ZQV"}, {"keys": ["qGj6oDLj", "WjkY1aXl", "FcDtgOjc"], "user_id": "hIua5tWE"}, {"keys": ["IC32ogW7", "olvbTgrh", "RTcPiSuL"], "user_id": "0Sly6XM4"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "OI18mAQL", "updatedAt": "nzjMf8GZ", "value": {"2WBZqxYG": {}, "3aREAu2D": {}, "6QVKNCWP": {}}}' '75TB0i7p' 'KxR8dl0z' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "RVW4EZG9", "updatedAt": "m0XcgGVb", "value": {"MqSszE8G": {}, "Havj7Aor": {}, "KsxwkosA": {}}}' 'VerXpc1C' '8XfwHuKe' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'b9l3rGN9' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'A3sNm84h' 'ddSpHt0P' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '7MIIR7Ck' 'yF6C7duu' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'yZ0GhDog' 'qrhBRd8l' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'DR6qVNPR' 'ZYdFLIAj' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'GGJddVCv' 'u9vx5KQ7' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'KYnIuMBv' 'aO35llzQ' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'RaT5kPxU' 'fofvnnSu' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'B0y5WUlr' 'MdI4sNve' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'abntBSxT' 'eIv53HGC' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "iljvjKoy", "value": {"D6SCwGrn": {}, "cqmLtjQH": {}, "Af8TgoNm": {}}}' '03VLisV6' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["zwPuo3td", "6TC6I3lM", "jGSWN2la"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'RlxfcjHf' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'YakUCTqG' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'kE7wcWfD' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'slpJSqGA' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["XQ0yYoNR", "Kd3IL5TA", "Q6iiPlSC"]}' '2uE4o5Vw' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["do3fePqI", "JA8IHtrk", "mu0hpDDW"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'VAla2l5B' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "YNtIuS5S", "value": {"5XUdjsoq": {}, "wGyzzWi9": {}, "gwQYv7t1": {}}}' 'o7TTr1Dm' 'rhZv15T7' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "quIOvBMc", "value": {"aYmvCkGZ": {}, "5dAgqxpB": {}, "FmaLoxoz": {}}}' 'r6wfNPX2' 'bOItRMvq' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'tlB2jJCS' 'QT279ZZP' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'YGu0rdlg' 'dWyOtXi3' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'choQrpOs' 'DBU5Sepj' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'ChB3V0v5' '2Dlym6pu' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'Q23xoJ8a' 'eCnaLpUK' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'p44YUDja' 'sWIPUvmE' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'ejtGeoyI' 'Pa8ZRrvj' --login_with_auth "Bearer foo"
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
    '{"set_by": "j7il35MX", "updatedAt": "bN9oCMNq", "value": {"q98SjTvh": {}, "ZNkSQ70D": {}, "0H6BXksU": {}}}' \
    'C9b6i5lZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '58' \
    '60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    '9xv32e8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    '5csSovoq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'sZNBdte9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'NDUPVJf6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["c2Z0QZxf", "gPubTDIH", "rvqAThuw"], "user_id": "jRHpKKTl"}, {"keys": ["mVr9XuoJ", "bRFQSKVP", "Hbn4Xxtu"], "user_id": "7LQRENjE"}, {"keys": ["Eztx1WsY", "SiZqan0n", "SBJroav9"], "user_id": "1GXlvPG6"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "bFYReVHQ", "updatedAt": "ipcCx9Zw", "value": {"5D2L7vIY": {}, "hGGSyEW4": {}, "ZJJ42d3P": {}}}' \
    'BddN8S48' \
    'l9lyNApf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "lxqMrj3o", "updatedAt": "Zk03QXcK", "value": {"MDYDDxHS": {}, "ZjtqXyJ5": {}, "8f7Gc26S": {}}}' \
    'aiGVkydw' \
    'YWQG26yU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'ZNmTBcvr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'bYCwZtxF' \
    'HyPLtI8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'lbyDPUIj' \
    '88cekdqC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    't81P1ktf' \
    'Iovmv9gs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'R5cJcHm3' \
    'SZLxoRDF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'uuuySj29' \
    'a9LJE8Ho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'RS1X2PFA' \
    'AMwzHPxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '1UskYs4Y' \
    'w20DOqOB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'SC2DKHRu' \
    'PMMWH8Yb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    '33T5UBJC' \
    'jfcnLRfx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "eCSz9WEi", "value": {"8KlloeH0": {}, "JT1yduat": {}, "2vQR3biB": {}}}' \
    'fsu4jmsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["E2w1yEkL", "gh3tIYt4", "SqYUTLDx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    '9gIiDand' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'pGT2t24a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'OMh5eC3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'HeHSKLCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["3xreNDUW", "ehwH3q31", "A806DJga"]}' \
    's4b6z3LN' \
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
    '{"keys": ["Uj7fdgLA", "84Z8YYk6", "QEgJjBbE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'DoNf3n0h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "EoRCAcf8", "value": {"0zfFyabW": {}, "AgIUXiI0": {}, "7A68eaqC": {}}}' \
    '2J9jyEW6' \
    'GLbc0NaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "DUL3sa13", "value": {"lk1dQBHO": {}, "86IlBhne": {}, "tU4RwTqU": {}}}' \
    'XlTDBzOu' \
    'YsaZA2yy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'd4mbqoOf' \
    'ADMMAXFa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'Y9eKa699' \
    'bRVhyaKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'wrAP2aMl' \
    'u7WtjCto' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'YetOO847' \
    'g8OudOfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'nCuHZ3c4' \
    '6IjGa23Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'vYmmDg7V' \
    'YPXIuvUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'TZBRujIU' \
    'E1Tq5jyA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
