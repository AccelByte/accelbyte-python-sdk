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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "nyyePVnm", "updatedAt": "YNOSECGA", "value": {"e02E7nnq": {}, "WbQYXSCl": {}, "78jUGZSA": {}}}' 'mim4umJG' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '54' '35' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'XT3h2Mbg' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'VzBHlVyb' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'fDoyFlpJ' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'nNHaIBWP' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["TAXtrGyJ", "ylO7B6Bc", "kApKYhqa"], "user_id": "83REN8TE"}, {"keys": ["iMlel1Ui", "C1on7ECZ", "7zHDtNx1"], "user_id": "geSjIeaY"}, {"keys": ["0beIgixk", "xmQyh8ZK", "xog69iYg"], "user_id": "PYIoJsx1"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "nttg8yuN", "updatedAt": "NkzA71iQ", "value": {"RGPaJyhg": {}, "sycAws1d": {}, "bFRIj4eA": {}}}' 'BjXlq62V' 'nlYYnfPP' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "ohNVHXav", "updatedAt": "OzxlU56b", "value": {"Vg0cXIM7": {}, "Qf302U3N": {}, "tYDtD5Aw": {}}}' 'aFXqMmas' 'tzc1CZgU' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'Oc81qm4b' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'pkOLjESS' 'h30Ds2Zd' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'iVWMBlEk' 'Y2I3EIIK' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'T54nMl3c' 'KYzdtKpp' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 '6pvrqysY' 'QHllmMmF' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'DIxzNlPd' 'rmmUQbJ9' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' '1YL2fGvL' 'gYcC45Cg' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' '5nrcZJ9X' 'o0HLVMVw' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 's7sjBQY5' '0ArgqR3D' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'Hue8Uopv' 'MGnPtKNZ' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "XWexdzJu", "value": {"uiOQsVuB": {}, "jW7abqC8": {}, "x6Ovzbgv": {}}}' '5thGgQbL' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["9e2vA4si", "RBULLdzx", "hFrugPl6"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'nqRzvDFU' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'F1zW9Ti3' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'yZo9Vvly' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 '3lDOJedL' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["usZ1dL8T", "9SHEpqXN", "mSMT4Kdr"]}' 'OclEnMGJ' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["IG2wUi1n", "fdfpI2bc", "zS9J0b6P"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'mZvTuC0C' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "RyFAG3FX", "value": {"0psY8vsi": {}, "gw1Q4DYc": {}, "bJMSsQCx": {}}}' 'ubijwdOq' 'F4tfMd61' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "LYgqA8as", "value": {"DRLVKkEK": {}, "aV8DdW44": {}, "3TZdfCeP": {}}}' 'cpCEavHZ' 'u5kyhpvW' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'FMsb9PMv' 'LRffbIkh' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'drWvbh0o' 'yMv3VCvu' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'r67LDDV6' 'uKVphT5B' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'XKVhHPfZ' 'gC52NzJR' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'wzSQWJ2o' 'ABl8wRaf' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'bKCy4roM' 'E3IS5XfB' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'ntHFrlxd' 'jsQQi42E' --login_with_auth "Bearer foo"
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
    '{"set_by": "bb0QLYmi", "updatedAt": "dJofeeoU", "value": {"hynpE2oj": {}, "XgWSBWgJ": {}, "7hXZNlVM": {}}}' \
    'jYEYGgXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '97' \
    '85' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'XmjNmHHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'BRpSTIvH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'LGJGkQ2Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'idfojHAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["7056Z0P2", "4QnYQ6vy", "Z5gyd7yS"], "user_id": "XuY5XYBg"}, {"keys": ["6xd4jbYZ", "GalhVRsK", "yEZOKKTC"], "user_id": "8m8hIWO9"}, {"keys": ["raQQocTp", "0z0QqIGn", "s6cbYDgW"], "user_id": "uWXfjaAY"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "dJVyDW2j", "updatedAt": "HJQjZYPQ", "value": {"ItpyPE4g": {}, "g7esZ8w9": {}, "0IJXAESs": {}}}' \
    'F19u53BT' \
    'A7PP16hi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "VymwPlBp", "updatedAt": "T4jmC9eo", "value": {"WSVthmOD": {}, "aetQuCzd": {}, "h7pXwbOH": {}}}' \
    'y6TD2nhK' \
    'CzvlUtcE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'CLWIPOY6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'q1vyK6Qn' \
    'BfgrS0Kx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'vShGFXxh' \
    'm8cY2xV0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    '5BajqOjO' \
    'wx6VMv60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'nluUdZ4E' \
    'ynL4Ugbu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'vVGnqhyS' \
    '8LADMeAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'QRhOZ5KL' \
    'AWnpNt4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'Nv3NDvMw' \
    '0vWbxWuQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'H0cUVGrP' \
    'A2Wy1Cr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'yWu1Om2G' \
    'D9ehsczH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "gJX5LtGl", "value": {"6KwaSuQf": {}, "r3L7GeiG": {}, "GaHtsV0e": {}}}' \
    'fmc5UzKk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["Hq36z57h", "LzzH1D8K", "Vnom61e4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordsBulk' test.out

#- 24 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'Oq1fpnpn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetGameRecordHandlerV1' test.out

#- 25 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'ta90bYt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PutGameRecordHandlerV1' test.out

#- 26 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'OzYKFYF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PostGameRecordHandlerV1' test.out

#- 27 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'CQ6lKCSk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'DeleteGameRecordHandlerV1' test.out

#- 28 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["66nqQNj4", "a8yV3Dvu", "MWjt47gE"]}' \
    'PTt1lAUJ' \
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
    '{"keys": ["ZMDkNnul", "KdqZLhtN", "OTYE8LF4"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetPlayerRecordsBulkHandlerV1' test.out

#- 31 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'ZXudZU0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 32 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "wSaXoEI4", "value": {"nQAeq3oG": {}, "engwtS0d": {}, "9DH6Qr0B": {}}}' \
    'DF0Fkg93' \
    'cKS1J2GW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 33 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "wwsIi62w", "value": {"SDR2NVxs": {}, "1GTEUFvR": {}, "sK307mwe": {}}}' \
    'wsKDcgPf' \
    'WO6toECG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 34 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'bkuXKmgd' \
    'Guum8Hiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPlayerRecordHandlerV1' test.out

#- 35 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'VBCkr2Oy' \
    'bGGU08fr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PutPlayerRecordHandlerV1' test.out

#- 36 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'elYIwzmC' \
    'mbMr9C5p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PostPlayerRecordHandlerV1' test.out

#- 37 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'piOKUcRv' \
    'MUdIisWA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeletePlayerRecordHandlerV1' test.out

#- 38 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'hbNaa4Ho' \
    'F4ci5pwi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetPlayerPublicRecordHandlerV1' test.out

#- 39 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'FesE87NX' \
    'nrnyP6Ez' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PutPlayerPublicRecordHandlerV1' test.out

#- 40 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'VHjcOvqy' \
    'nuRopUpt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
