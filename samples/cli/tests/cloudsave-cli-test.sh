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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "8HOiAYxr", "updatedAt": "RgkSdEvc", "value": {"C5iPdAtB": {}, "jPNRMVpV": {}, "2lMWjxLt": {}}}' 'lpEePH8S' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '43' '63' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'dhxexhnC' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'vRZj8wBM' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'vmJtDnWp' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 '0ppsZxDi' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["nG0I2Okp", "2c7sRqGP", "H3GPmsvG"], "user_id": "06ViWO64"}, {"keys": ["jd9Kgiyq", "o4mEhY3w", "ole34SEE"], "user_id": "pUpz6wfw"}, {"keys": ["snQWH4nQ", "djMKWGSG", "8tPeHek2"], "user_id": "3LX8pPrJ"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "9DNHNxMh", "updatedAt": "628oxjxz", "value": {"4JtstlGr": {}, "ifV9eUIU": {}, "pWOZop3L": {}}}' 'YuXeYdv8' 'z36LBC1S' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "K46wtwLU", "updatedAt": "AZTPRkUu", "value": {"ReztHnA4": {}, "SbyJVUqB": {}, "ccH9SpAY": {}}}' 'TE6PPsXq' 'yVISE48V' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'MpPKobhT' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'Qxak8sha' 'hHahEAwN' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'Tm1Ika2h' 'FOOHxJMG' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'ThJEEzQv' 'm5bhX874' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'J5jgLZbb' 'mjgi6Zha' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'SAM9JO5v' '8oyxp07C' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'T3Jlt5Qb' 'ozkJ5C4b' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' '2pIu00g3' '0wCrF0y2' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'U9pzrBMw' 'Td1cgHKo' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'DaOsqEzV' 'Y20xtDFS' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "CIYPU1Eh", "value": {"VB74hlTy": {}, "OFNfq6r2": {}, "dm0uBS1P": {}}}' 'T4Xvjf7n' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'YKBMGEqU' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'cGFgNpg2' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'KogOR2jU' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'm9uvmVPV' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["tAqs4hFI", "4Hkwybrm", "KsryqHyR"]}' '3O2RTkE5' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'WSyDGyqk' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "3q2w8VCH", "value": {"iKxsZGtB": {}, "dhjFUF0v": {}, "VscUrmNC": {}}}' 'R4VWbWOx' 'FmYn9P9Q' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "1QqDGdxK", "value": {"cfAYF7DM": {}, "2QNrVpbp": {}, "VdU0BTLj": {}}}' 'AQD6CHrh' 'HwhYvfZp' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 '0ikOwNcz' 'MtZADuYF' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'ZDlxhPnw' 'O5PgGDCW' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'Rj3BIaKO' 'PFpy6Wtu' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'xKAdTEgW' '4abDQYtS' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'SGJIxpnT' 'LKphEBH4' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'EiImqVBs' 'npqPMaFX' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'pGWE8O0Z' 'rvR6FN13' --login_with_auth "Bearer foo"
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
    '{"set_by": "UCmBYcYe", "updatedAt": "Y3VorzA7", "value": {"GOQoPqkC": {}, "T1FfTddX": {}, "nMWU68oi": {}}}' \
    'UKoGmZde' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '1' \
    '6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'qBnGIiPE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'GTpit2n1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'p58Fnscx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'TrdwIWrW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["oRYm7xIv", "O44251yU", "85gDjXwO"], "user_id": "J9lH5AYQ"}, {"keys": ["hRmip3Cd", "HFyJM6sG", "0fb9Dtke"], "user_id": "3wd5PRMl"}, {"keys": ["f889LIhM", "22MvJ9ia", "qoKuW8EO"], "user_id": "Xgz25j1l"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "j8wt2EIN", "updatedAt": "M7FktEMr", "value": {"GuQ32xyw": {}, "ctRAkJdc": {}, "Is7JRArX": {}}}' \
    'CqrfptD3' \
    'qTHMIYPv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "0hN8mFoc", "updatedAt": "KgmD5tRM", "value": {"lqvko5GF": {}, "JBl56hWt": {}, "GKm7DUVE": {}}}' \
    '5fWHxLca' \
    'u6lzGdBl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    '6nKYqBO7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    '4jCF6g3E' \
    'tftAZz4G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'dxSxa1t5' \
    'liaQ1GHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'SxdPjAan' \
    'qHbJ2b0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'vHBt0cAi' \
    'L7RFC9lh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'E276tSEb' \
    '0e81Sbxb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'vj5LP78t' \
    'qdagNA6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'EaAqZtAw' \
    '1vXNoucK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'KKcuY17I' \
    '7EKn8LWa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    '4LSpuUgC' \
    'cELAo9xr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "qwPFqvfl", "value": {"A85aahi4": {}, "aOr0Ste5": {}, "eeuRF8sa": {}}}' \
    '2ozSpb3k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'pPCakGE7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'XDEU9I8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'CUAF95VF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'BQW4evRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["jZ0dfXqI", "V6mCSuv9", "WQJ8geEH"]}' \
    'WoPJ5Oa8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'qwqeeghz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "P2wZ3sNG", "value": {"dDw2QPEj": {}, "fZKbZlAS": {}, "CTjUxVhw": {}}}' \
    'xnXJuif2' \
    'P8P9fUm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "VUiYVTlA", "value": {"smRRvvzm": {}, "FrtahCku": {}, "O0lws43Z": {}}}' \
    'FRSIjkjR' \
    'smlnQAmK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'tu9icv3z' \
    'fViMPLjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    '0IpiqrRz' \
    'OmVUjELa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'QshdGcsV' \
    'FS2VF11N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'nGzTOW7R' \
    'YfU1wNBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'bBjN67pN' \
    'VHQK57CH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    '007Uiz12' \
    'kTIRAYkJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'tCotIyoM' \
    'lVWNF0qi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
