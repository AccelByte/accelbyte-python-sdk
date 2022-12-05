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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "dKr8iyfN", "updatedAt": "GoDKqj04", "value": {"Rx4keDvY": {}, "pIAiQNlO": {}, "kOxxv4zZ": {}}}' 'sJbd6VVo' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '93' '6' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 '2uXLGVCg' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'vqWJITsD' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'Uz0dEanT' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'T6CQKPx7' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["4poUusL0", "OCEJhDr1", "ftsYTQAd"], "user_id": "43qUEeZ7"}, {"keys": ["dChPeMx3", "Z2UUVDGu", "QXsqeUJ3"], "user_id": "NQIZeGVF"}, {"keys": ["xQCQL146", "KStZDh1Z", "JD7gBA4R"], "user_id": "RGszi2Bl"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "uLrpzTYk", "updatedAt": "T4BVQbLx", "value": {"ia2283Ot": {}, "J6p3Jy8o": {}, "rVnuHvjn": {}}}' 'F7u4pKXT' 'lXxT1bpd' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "3ykm9rEB", "updatedAt": "E4bQp0g8", "value": {"sWmiDC5T": {}, "yQHMv6V7": {}, "w5OPYR4j": {}}}' 'Yh82JEnw' 'iCOdNvyj' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'IS7VXGAS' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'k443KTZI' '40rQrw6w' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' '5FlasFNm' 'MlNIshrM' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'O4grddD4' 'EPwzVLCq' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'jC5Ayu96' 'z9vFKNxn' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'LIImffGw' 'F9xTUuib' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' '5prTQDdM' 'MzYsJhd0' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'kaUiT4F3' 'L7rx6o9F' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'sNhfux2l' '3cxTlgmS' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'ro9MV1nE' 'KN5ZKBte' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "iHxGGtVx", "value": {"NnMUpxqa": {}, "Ay7OSraO": {}, "v50vtyI7": {}}}' 'o808jZ2H' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'YTupvpbI' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'f55uO0Yz' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'L0R04NJD' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'Aqw8KLUp' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["rEvU5KLP", "wfBUDlZj", "uGjHk2u2"]}' 'fdl0X2xS' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 '7w4go6ie' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "zCN9u37D", "value": {"hPPOpw6w": {}, "Sw1OQsvz": {}, "UeH3YBz2": {}}}' 'kkcf7s1P' 'eclh9AQV' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "7IFgmgcv", "value": {"3UYodmvi": {}, "EYaAkfcU": {}, "3B388gd6": {}}}' 'tObYUbS3' 'dYHImafn' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '7RansbmV' 'WqUI2Pcq' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'nD5LWeE5' 'yvPFcdNB' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' '0QjO0WQo' 'gPu0fo8z' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'nRHRhw8E' 'XCzFhoy2' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'vJ6dLCGB' 'E6SrFNBL' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'NdnMGr3e' '54AKfITu' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'wFtU9HMf' 'sxwU0LCq' --login_with_auth "Bearer foo"
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
    '{"set_by": "ybEOhLWT", "updatedAt": "sD1O8bwQ", "value": {"p2hhaLQv": {}, "BrWIhYvW": {}, "TZQtpr3q": {}}}' \
    'GDIeUZeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '6' \
    '86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'FBoOzrhZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'aqMqUbN0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'ryeWuPCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'gP8KiMtX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["K2dnrIbP", "FH1zUzNk", "l6WHlgMg"], "user_id": "NdbDwcQG"}, {"keys": ["4bJ5zzcr", "gbp2UV26", "2Fin95a1"], "user_id": "eWIicqJp"}, {"keys": ["230q5DmF", "gkUT8VZF", "nOshB4xb"], "user_id": "bnDsg1pw"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "JPQuj9nU", "updatedAt": "t1bSBZwJ", "value": {"AvSgo4H2": {}, "PufxzCrr": {}, "wOsvUUFV": {}}}' \
    'L0Co4lI5' \
    'XIuVvm5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "8f5pdukm", "updatedAt": "DG0eAreU", "value": {"twDqI0Ja": {}, "469Bt9dJ": {}, "TdJaon86": {}}}' \
    'BnkCLUkI' \
    'KGVIi2PI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'TF8ZMmxl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'cV6s28Iq' \
    'BOQzdCNU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'kkP7sB5N' \
    '4ybrBuwg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'OzY9r0hZ' \
    'urHbLOjW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'FKPQY2N1' \
    'pok5uxMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    '9G3bSCEb' \
    '4krgcgfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'REI02hKJ' \
    'mcQiGhv3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '533pZjgc' \
    'G3NGe1QI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'HTLpLXWz' \
    'D4UMDxkB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'JAt6GHzd' \
    '0rhj2qzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "jePe0lWE", "value": {"XKxnJC8I": {}, "JyKq3AlO": {}, "7NeSqIws": {}}}' \
    'F8Gp3VNi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'dsmMFBld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    '8dVaikNW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'jku4yLlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'zR6BCXoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["erXVwmDy", "XzylvVXd", "rguws72N"]}' \
    'OZsbYQgh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'avbw0mEZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "ANl8hkeh", "value": {"pGsPg4u6": {}, "ka8hDIJj": {}, "j2Ymtb9E": {}}}' \
    'HPOMFR7M' \
    'u1aeBXjj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "lOTwvNMq", "value": {"GKID424p": {}, "bdKRyevb": {}, "448f0J8S": {}}}' \
    'Huyzcr7C' \
    'V4JPrSFO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'd8chNkkf' \
    'fkdn5TTQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'dmlCRaQt' \
    'zKxzbC74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'DSH8IHQy' \
    'kG4HLdVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'Yxzp5ntJ' \
    'rNp2pzYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'cp7IDVaJ' \
    'EG1EXT0X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'PLFgm5Ke' \
    'QRqf4Tjk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'hLPbk9kT' \
    'vvoItang' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
