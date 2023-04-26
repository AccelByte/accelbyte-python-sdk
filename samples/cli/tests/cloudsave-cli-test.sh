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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "EAxcVpFrttufHIRd", "updatedAt": "H9UzVRiXbqlAw7r6", "value": {"W2ktQG0h5JAav5kR": {}, "a62WopBJHPtcDs8b": {}, "BZLCXLx8bbgorQeF": {}}}' 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '29' '47' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'dwpzS6DaDpv8N7ZQ' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'VqGj6oDLjWjkY1aX' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'lFcDtgOjchIua5tW' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["hRTcPiSuL0Sly6XM", "4OI18mAQLnzjMf8G", "Z2WBZqxYG3aREAu2"], "user_id": "D6QVKNCWP75TB0i7"}, {"keys": ["pKxR8dl0zRVW4EZG", "9m0XcgGVbMqSszE8", "GHavj7AorKsxwkos"], "user_id": "AVerXpc1C8XfwHuK"}, {"keys": ["eb9l3rGN9A3sNm84", "hddSpHt0P7MIIR7C", "kyF6C7duuyZ0GhDo"], "user_id": "gqrhBRd8lDR6qVNP"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "RZYdFLIAjGGJddVC", "updatedAt": "vu9vx5KQ7KYnIuMB", "value": {"vaO35llzQRaT5kPx": {}, "UfofvnnSuB0y5WUl": {}, "rMdI4sNveabntBSx": {}}}' 'TeIv53HGCiljvjKo' 'yD6SCwGrncqmLtjQ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "HAf8TgoNm03VLisV", "updatedAt": "6zwPuo3td6TC6I3l", "value": {"MjGSWN2laRlxfcjH": {}, "fYakUCTqGkE7wcWf": {}, "DslpJSqGAXQ0yYoN": {}}}' 'RKd3IL5TAQ6iiPlS' 'C2uE4o5Vwdo3fePq' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'IJA8IHtrkmu0hpDD' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'WVAla2l5BYNtIuS5' 'S5XUdjsoqwGyzzWi' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '9gwQYv7t1o7TTr1D' 'mrhZv15T7quIOvBM' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'caYmvCkGZ5dAgqxp' 'BFmaLoxozr6wfNPX' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 '2bOItRMvqtlB2jJC' 'SQT279ZZPYGu0rdl' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'gdWyOtXi3choQrpO' 'sDBU5SepjChB3V0v' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' '52Dlym6puQ23xoJ8' 'aeCnaLpUKp44YUDj' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'asWIPUvmEejtGeoy' 'IPa8ZRrvjj7il35M' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'XbN9oCMNqq98SjTv' 'hZNkSQ70D0H6BXks' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'UC9b6i5lZC9xv32e' '8c5csSovoqsZNBdt' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "e9NDUPVJf6c2Z0QZ", "value": {"xfgPubTDIHrvqATh": {}, "uwjRHpKKTlmVr9Xu": {}, "oJbRFQSKVPHbn4Xx": {}}}' 'tu7LQRENjEEztx1W' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["sYSiZqan0nSBJroa", "v91GXlvPG6bFYReV", "HQipcCx9Zw5D2L7v"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'IYhGGSyEW4ZJJ42d' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' '3PBddN8S48l9lyNA' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'pflxqMrj3oZk03QX' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'cKMDYDDxHSZjtqXy' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["J58f7Gc26SaiGVky", "dwYWQG26yUZNmTBc", "vrbYCwZtxFHyPLtI"]}' '8ilbyDPUIj88cekd' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["qCt81P1ktfIovmv9", "gsR5cJcHm3SZLxoR", "DFuuuySj29a9LJE8"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'HoRS1X2PFAAMwzHP' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "xB1UskYs4Yw20DOq", "value": {"OBSC2DKHRuPMMWH8": {}, "Yb33T5UBJCjfcnLR": {}, "fxeCSz9WEi8Klloe": {}}}' 'H0JT1yduat2vQR3b' 'iBfsu4jmsRE2w1yE' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "kLgh3tIYt4SqYUTL", "value": {"Dx9gIiDandpGT2t2": {}, "4aOMh5eC3IHeHSKL": {}, "Ca3xreNDUWehwH3q": {}}}' '31A806DJgas4b6z3' 'LNUj7fdgLA84Z8YY' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'k6QEgJjBbEDoNf3n' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["0hEoRCAcf80zfFya", "bWAgIUXiI07A68ea", "qC2J9jyEW6GLbc0N"]}' 'aKDUL3sa13lk1dQB' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'HO86IlBhnetU4RwT' 'qUXlTDBzOuYsaZA2' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'yyd4mbqoOfADMMAX' 'FaY9eKa699bRVhya' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'KwwrAP2aMlu7WtjC' 'toYetOO847g8OudO' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'fjnCuHZ3c46IjGa2' '3YvYmmDg7VYPXIuv' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'UYTZBRujIUE1Tq5j' 'yAZvkRCMNFIurjh2' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'imdb4rbkXj0ZwsVC' '0gL97ZVJSPqJiwv1' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'qlYB1RSKs6gQxC3G' 'b7S0o4zGYY7KQI1A' --login_with_auth "Bearer foo"
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
echo "1..42"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "eFgPqaOkvo1aolB4", "updatedAt": "lkKB4EYOkQ1jMD3c", "value": {"ym8xIfkOVW2grREO": {}, "Lx0KOww3HICQLfl7": {}, "MUBG7qtPu64yAtUR": {}}}' \
    'KLRkb738HGS6rDgM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '7' \
    '66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'IIlhS1fSiM9331m7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'Ta1PsKc50Kv6ecnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'evcAx2K2zkRenmPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'nGBt4P7WnbdSJtjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["7ZshZyZl5x4bRXBH", "UTrDzZSKscfOcYu3", "dpCROYqUiGKXVFCm"], "user_id": "po6sPwVOEDSJsEK5"}, {"keys": ["QpNhlI2iS5EpGhhv", "XYck0upMzUYnb76t", "FkEORV3bu1bNCtX7"], "user_id": "W40V6Do5sYadCCFr"}, {"keys": ["HHC3DpZxkrQDXuNF", "viMarv8mnfHK8CCm", "E2lPnsbD3SGEdlwu"], "user_id": "UccE536ugBp3HBve"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "pnDCjgyJlXe36mgW", "updatedAt": "jLfFmteue9nzJ6fH", "value": {"24T805tVg8JqU0jZ": {}, "pjvsugAOS7u8RiWy": {}, "erCSa8SRgwsAj1ik": {}}}' \
    '1jglaDXTvKCWwNTA' \
    'hd2wrS0uPdjhdinp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "ng5BLy8wbhMssAHj", "updatedAt": "apIkY9Rf4wP57dBZ", "value": {"NR88YbCtmKy8M9zV": {}, "rjfGXZnqAQUoY1Gj": {}, "lIIk0iKoTTS1j02o": {}}}' \
    '7JjTXAQN0qdskdQV' \
    '0TqI8EFnmDbxIxi4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'YKlONk2Q5Y4Jvaiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'wiilatuUjjt9lIMG' \
    'ql5ElEa9EIIlGcHB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    '3CfR3ncDlwi3v3MF' \
    'FJ1KesKoELCpobBE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'G8X645xpdXpai0rY' \
    'aT5hOPjaf3H0tYig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'hU0VUfcYHJbBfAKS' \
    'iPW3VgsZXiR1DJ7H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'VWqMkNSawQUWDFJv' \
    'JBWic7UkBeIXuqDu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'AXI66bQ71w0deoV9' \
    'Lx5RDA1l2XcrciYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'EzvSZIPkhSgORcz5' \
    'S5BvmgBLxh4ijFnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    '3Tam69qSZ7PC6f6Q' \
    'kmZXElW9YfRSse6A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'Az3S4czz0QKFlAVm' \
    'VLu4AOec0z8eBeeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "ip68J1nsv4W2OJht", "value": {"afxMSJlHeb34sZKH": {}, "cl5LLLOexL4fZvWt": {}, "ND2tcBFpX8lNtFEJ": {}}}' \
    '7tnkY6Mca5afj12K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["2IzrBvvWm4udE0OX", "udXgNne8kJATwlc6", "esUp6Sw1I98jeZQ7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'hfxnhLd3Knaknoed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '9DHhLOqQGhCUr6iT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'rjyEgarAdNJOIG36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'I6tRbRcrEveMdAdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["PKDUVSC00PYeDcag", "ginxnFIna3yddcbs", "PheTH26IUJNvYuGR"]}' \
    'UvpZaHCuESOiIZsM' \
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
    '{"keys": ["fB4ZH3mtgWgU4pCA", "KxeE70CaunQNxot3", "71W9G4AvQkqsGnmy"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'o5JJTUVmb8GEXFTl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "EMEsFzYqwgK1Np5n", "value": {"odqpLm7FhJBNXzAF": {}, "dO0Khqf6kiTdSGv2": {}, "LFjAKY7CbgsWqFWZ": {}}}' \
    'X7kPBom8F9GLLTG8' \
    'phc3n4iLoIllKlpO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "2pqiXJF3WGRaoQom", "value": {"SJC4DdrKF7SUQPLG": {}, "59e0k5ZtX6wK7PpU": {}, "lcIW32iK7MGt1ixY": {}}}' \
    '5rA1WoVeJIePF8Zr' \
    'QzP4zvtdxdbZUpd6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'FJtHJ1pyVwyKQLY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 35 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["FEO65Rb3z7CYLM8I", "lsHqffnrfsGlfPaZ", "KBwa3Ddb60ufPpzw"]}' \
    'j1QGIFmlVf4jvaps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 36 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'eE9LN9bvhOrHflIO' \
    'd6X3viLvtEk4mTIp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPlayerRecordHandlerV1' test.out

#- 37 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'UA9gxo8SV38nEhoX' \
    'mM2W7l6jHMA2rG3n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PutPlayerRecordHandlerV1' test.out

#- 38 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'akopAywelu01nryE' \
    'J0NqoTow0qiOiC4j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PostPlayerRecordHandlerV1' test.out

#- 39 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    '0iktm0ZPLkLOsp0L' \
    'Z5njN86Hl8kUXzt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeletePlayerRecordHandlerV1' test.out

#- 40 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'bSc6bWvgpVyW9dD1' \
    'kOmvrAejcq2LgkQu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetPlayerPublicRecordHandlerV1' test.out

#- 41 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'aS7RBx3vim02jBOx' \
    'rZDyvpcLYOWA8Njx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PutPlayerPublicRecordHandlerV1' test.out

#- 42 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'OnaEok4nOOCzfsfl' \
    'hjbngJOUn18G5Mlf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
