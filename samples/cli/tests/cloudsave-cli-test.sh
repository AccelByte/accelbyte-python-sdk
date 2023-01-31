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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "ykN5Ppu1", "updatedAt": "3lk7YFba", "value": {"hd9h8bbL": {}, "9FPYjEKW": {}, "j9VYcWWD": {}}}' 'PRdIL3PN' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '7' '99' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 '7VdC8fkA' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'WFyJ6r2N' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' '8EyKTZTP' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 '5cF6Sjx1' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["eHnDQS9y", "gVghpjl6", "Q3H6T0bZ"], "user_id": "qlkHS1tx"}, {"keys": ["3v28piaU", "o842A1tx", "3kAHj7Gs"], "user_id": "GRZjEBWT"}, {"keys": ["rHWsqVYx", "lhJYuTff", "KLBggOIT"], "user_id": "plcZRuTm"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "dovDm2lA", "updatedAt": "znRXMHkP", "value": {"4vUqDAIw": {}, "ARu9QCFC": {}, "Q9lzKSRR": {}}}' 'nqQPD2c8' 'KJhZdX5Y' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "K1EBBqQr", "updatedAt": "oCAkYJdi", "value": {"gZhWmSk5": {}, "tkoqWiUp": {}, "oH4PKBG1": {}}}' 'cFO6lOrn' 'z328Z6aR' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records '6S6UgG83' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 '7Av65iZ9' 'slrYtuUY' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '0uOCxVS2' 'nRpZ3vME' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'Eua4FovR' 'WSXrZ1RF' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'Aw2e07xH' 'nhtvwVP8' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'BWqw9x8T' 'PGumoPip' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'b6cQu30S' 'jS6o4O4k' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'OxAhkEvI' 'PPLRUHT4' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'lMFLlCDp' 'RuJsbipy' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'C5rHjIUL' 'FmFztePH' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "uXrsWjHz", "value": {"JQotUEWn": {}, "eXjvUDl0": {}, "YotQ1QF0": {}}}' '1u1KNLNI' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["jZyik7wJ", "Eb3gC1wy", "WmDxrcbw"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'g4ANjTsi' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'mzVFvOC7' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' '7IuLL7ft' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'U3BX5dO9' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["gu07noaT", "uTFxjS1e", "0HHHxK9T"]}' 'JAgqmelX' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["yeYofeFB", "QlCQQxVj", "Mnwmevm5"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'lUo6iq2T' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "xx6ZhRij", "value": {"JdZXII1d": {}, "4vJlws0B": {}, "bIGN3NNb": {}}}' 'J2JuHCbS' '3TODn9Ep' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "QMMMxhSf", "value": {"pGjrrgQQ": {}, "vVWTdbcD": {}, "JQqRjdY2": {}}}' 'GdLHkf8f' 'FbOzkzTj' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '7YczFVGU' '97Rzur6s' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'NqjHtTja' 'PuJsHI4a' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'kjzMANTy' '0wNSiA3p' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'q9XkxWwP' 'eHFmru5i' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'JlZJC378' 'KJV1Jb8U' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'KF6R1Wrl' 'FonkmeHR' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'fP54YGCk' '44qu5RgP' --login_with_auth "Bearer foo"
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
    '{"set_by": "UYyPvJkj", "updatedAt": "6cK2Kcyv", "value": {"LaBzn0Ey": {}, "GAVtEwxA": {}, "yv57c25m": {}}}' \
    'olczVpib' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '39' \
    '73' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'LlLiGAev' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'QJjMfIrl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'TrG7WY1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'ixwjLo9j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["iBzuuHZ3", "3YPtSfaH", "12AkU7Hz"], "user_id": "byWNfbVa"}, {"keys": ["v1TSg63G", "smUcsxhw", "hhjfk4NE"], "user_id": "kr1sbPVa"}, {"keys": ["lbDh3Kco", "EPygTJh2", "cqKGq7mI"], "user_id": "pItlAXk1"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "QelpLUC7", "updatedAt": "GzQJy46b", "value": {"mJAzpP8o": {}, "5kUDeSYL": {}, "P1fAlWo9": {}}}' \
    'OnNbaaou' \
    'jUTc0Z28' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "LySmorR6", "updatedAt": "r1ZNmZdS", "value": {"0eYGhj5x": {}, "fsZAgLRj": {}, "pizGmkUl": {}}}' \
    'MQgIhrgE' \
    'KrFgL4HI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'OlWwqTOS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'w8ZhHlnF' \
    'JkqLeDpR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'LJj653fK' \
    'aLtJ0duV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'BEEeJOeb' \
    'KZWSMUJy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'tTzTd6bZ' \
    'uYTZ5bRA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'zWELgfQM' \
    'Cq7AfnvV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'ydFbenJ3' \
    'H24yYfkt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'sKZtSL3w' \
    'xZo4BRjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'qAQZFMga' \
    'wistczE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    '6IjMpDhL' \
    'Tvx5DrV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "8OOVT4qg", "value": {"Nhh9EEqI": {}, "JEB79SUp": {}, "bR0ghrrg": {}}}' \
    'Pk0KI1Uz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["es8a09hQ", "mBFqH7IC", "mO1XSaw2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'fOpaDCVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'eu88nsnu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    '86XmhniS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    '3m9aggaq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["HYvtFsVU", "ylDxbNvb", "kzk1ilM1"]}' \
    'jd2BYYnz' \
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
    '{"keys": ["doaeWVrb", "PEhUGdAF", "YdOweHjz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'BBFPTszC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "CH5RIjw9", "value": {"pyu0MZMC": {}, "rABBEJEi": {}, "ACF5JOOM": {}}}' \
    'dBJVPzvz' \
    'okNtDXML' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "5fcQut8D", "value": {"SX1eGm1N": {}, "x1YCXLmd": {}, "OJCf6O7u": {}}}' \
    'nfGOyVsw' \
    'VeIKdvoT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'k4GndPc3' \
    '3OoEwiYk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'onXdXqPh' \
    '5u7pO5KX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'C37EUESc' \
    'cXgQR2IB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'c2nvbliI' \
    'K0JoeduS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'so4RVGGO' \
    'kHBLlPPf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    '0aLLygUR' \
    '2zROlIYn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    '8fThQC5K' \
    'MQhmrMzW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
