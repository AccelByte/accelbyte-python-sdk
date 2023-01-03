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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "AWacyQnA", "updatedAt": "4JdnbaB9", "value": {"0nkTl4rc": {}, "ZJ6g60Wp": {}, "kn9MDIHY": {}}}' '7t3ZZCRv' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '23' '6' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 '7oZWurfm' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'MkMVj2Fu' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' '0GH2h7Dk' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'lhPsipi9' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["YUXx68Hj", "qTRtPFoo", "HfFapz9k"], "user_id": "NkfWepJp"}, {"keys": ["1UeLliqR", "tT12QXQt", "20dfW01m"], "user_id": "2cpRY1bF"}, {"keys": ["zEemc4YL", "biFUihiz", "1EQ79jEK"], "user_id": "XyvDiHKB"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "leuU98bQ", "updatedAt": "gOZ9IP9a", "value": {"E6cbXAwa": {}, "RoYZNbE3": {}, "Y8LV8Dq4": {}}}' 'zzojSwrO' 'j6qRyOrE' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "C8LwrnHr", "updatedAt": "CjQr9JYO", "value": {"nSXDhAv0": {}, "JPoYOfHO": {}, "9NBbbP2z": {}}}' 'LOHSBW0Q' 'oc4emW12' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'i5ZXcPwy' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 '9ZTJCKk4' '5n697hso' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'xkg9zsP2' 'p3nocEAB' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '9R983KT4' 'k4UZBpCq' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'Q8coubLb' 'GtnC3xHx' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'uQH8RzjI' 'g0SuVXgM' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'VeIry6Ub' 'qm1yrUWR' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'zLQJVYZw' 'ChXaJWqh' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'gGh2fLAQ' '7SxhVJyO' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'ZFf44Pfy' 'lX8bnS6I' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "4m8fpCZh", "value": {"CQNoDH3b": {}, "y75slKVX": {}, "yu2A01mO": {}}}' 'Ultvywwp' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'YIZsHA8T' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'CaPUprRp' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'mxlHoE1s' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'X0NI6YVH' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["jQ9LdJ6C", "jxtTMkDC", "W17JZnTW"]}' '0IF2LxOK' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'NrdFChCB' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "kYTBNGIX", "value": {"EZFFqKCV": {}, "taBpMXs9": {}, "W7f17acg": {}}}' 'BjCC5B7M' 'mxb5mvYC' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "wTftHQEg", "value": {"wIWt6A6Q": {}, "HJGpFRza": {}, "TgpaokZ8": {}}}' 'Iqc51BZ8' 'zoKMAoaO' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'l8mnMOAr' 'Rr9Z2FDT' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'gWdq6UF2' 'c1ZYDtOt' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'bJ3oMlAm' 'nGixI5YY' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'BP4A0c0C' 'qXf6UVyd' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 '8BwLxSkD' '3AFiMIFK' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'YmKiV1d5' 'WFxHjlwP' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' '5xKjtWrj' 'fFv3RODF' --login_with_auth "Bearer foo"
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
    '{"set_by": "LO7092Fh", "updatedAt": "OZ5vmDu7", "value": {"F4YnhB7O": {}, "lNwGB41j": {}, "flQGjGTP": {}}}' \
    'EjZYhncb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '17' \
    '38' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'rlOo5ggP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    '6YgDvomV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'ZG5VwsWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'ER6S7EPU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["gg1lvjhm", "wiOJe3th", "gOviDw1G"], "user_id": "05oZdsfH"}, {"keys": ["YKQfKreC", "Nctjshgm", "wVSGykKy"], "user_id": "iC0aaw3n"}, {"keys": ["Z66y8rIQ", "fujtJUuL", "GMMaatKd"], "user_id": "mMmNP6cJ"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "Kj3Iskkm", "updatedAt": "0hO2iZSg", "value": {"AmNy1VuY": {}, "CoTU9fsU": {}, "PTa488on": {}}}' \
    'aqasmD69' \
    '5FgpsTSp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "z5yFPcKy", "updatedAt": "r3o1NTrP", "value": {"YejtZOI2": {}, "3dgQJKO5": {}, "pvXtHw0u": {}}}' \
    'pT3Le9VA' \
    'ZkyVjSSl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'LFJhYBLl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'b1UleBKa' \
    'AA3ud7Nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    't5ELArpl' \
    '1dIj06YD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'UB5hOoDq' \
    'aodnr4Li' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'mp2rSTBH' \
    '7FuNi3Nd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'l16lM6lt' \
    's7uoqcAP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'hrHOdd3Z' \
    'BSKxs1vd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    '3cfpsvjW' \
    'gfgnXBJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'ct1exnAS' \
    '2rjA21H8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'sjBJ7jex' \
    'gyFJ8Zb6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "gVJmRz0J", "value": {"C2tgHrfe": {}, "kyMM0GQR": {}, "jRgfAs0X": {}}}' \
    'pkD9TdTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'oCw8x1oe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'iMshD0t3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'eHGtRsrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'HFxrERjE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["QFWIVcSC", "3Zn8tXUt", "V9FjwzFV"]}' \
    'kikH0Xi6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'in6lI29Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "VnujaTyT", "value": {"NsoSHxvX": {}, "5fwv1Oke": {}, "6G2p8XTU": {}}}' \
    'hJcymwll' \
    'wNskt0Yi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "YKxMMQov", "value": {"GDgXPxOM": {}, "luxQIp8C": {}, "269e6KDg": {}}}' \
    '2qYDhO91' \
    'XYcFG8bX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    '4DXVLfzC' \
    'Hhn6SCzZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'JeTCui8k' \
    'u2vgjtEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'oRDEPrOx' \
    'PBPUxPvb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'pTfJ6egP' \
    'ihi4AdLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'OVCmUU8L' \
    'CtOcBvk2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    '42T0zLSe' \
    'Uy45kGSX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'j7dEzs6C' \
    'YFrLNov2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
