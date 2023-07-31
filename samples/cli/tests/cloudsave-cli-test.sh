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
cloudsave-admin-list-admin-game-record-v1 --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-game-record-v1 '{"keys": ["EAxcVpFrttufHIRd", "H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR"]}' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-game-record-v1 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-v1 '{}' 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
cloudsave-admin-post-admin-game-record-v1 '{}' 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-game-record-v1 'odwpzS6DaDpv8N7Z' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-game-record-concurrent-handler-v1 '{"updatedAt": "QVqGj6oDLjWjkY1a", "value": {"XlFcDtgOjchIua5t": {}, "WEIC32ogW7olvbTg": {}, "rhRTcPiSuL0Sly6X": {}}}' 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "GZ2WBZqxYG3aREAu", "updatedAt": "2D6QVKNCWP75TB0i", "value": {"7pKxR8dl0zRVW4EZ": {}, "G9m0XcgGVbMqSszE": {}, "8GHavj7AorKsxwko": {}}}' 'sAVerXpc1C8XfwHu' --login_with_auth "Bearer foo"
cloudsave-get-plugin-config --login_with_auth "Bearer foo"
cloudsave-create-plugin-config '{"appConfig": {"appName": "Keb9l3rGN9A3sNm8"}, "customConfig": {"GRPCAddress": "4hddSpHt0P7MIIR7"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": false, "afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": true, "afterReadAdminGameRecord": true, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": true}, "extendType": "APP"}' --login_with_auth "Bearer foo"
cloudsave-delete-plugin-config --login_with_auth "Bearer foo"
cloudsave-update-plugin-config '{"appConfig": {"appName": "yZ0GhDogqrhBRd8l"}, "customConfig": {"GRPCAddress": "DR6qVNPRZYdFLIAj"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": false, "afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": true, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": false, "afterReadPlayerRecord": true, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '76' '44' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'Q7KYnIuMBvaO35ll' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'zQRaT5kPxUfofvnn' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'SuB0y5WUlrMdI4sN' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'veabntBSxTeIv53H' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["GCiljvjKoyD6SCwG", "rncqmLtjQHAf8Tgo", "Nm03VLisV6zwPuo3"]}' 'td6TC6I3lMjGSWN2' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["laRlxfcjHfYakUCT", "qGkE7wcWfDslpJSq", "GAXQ0yYoNRKd3IL5"], "user_id": "TAQ6iiPlSC2uE4o5"}, {"keys": ["Vwdo3fePqIJA8IHt", "rkmu0hpDDWVAla2l", "5BYNtIuS5S5XUdjs"], "user_id": "oqwGyzzWi9gwQYv7"}, {"keys": ["t1o7TTr1DmrhZv15", "T7quIOvBMcaYmvCk", "GZ5dAgqxpBFmaLox"], "user_id": "ozr6wfNPX2bOItRM"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'vqtlB2jJCSQT279Z' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["ZPYGu0rdlgdWyOtX", "i3choQrpOsDBU5Se", "pjChB3V0v52Dlym6"]}' 'puQ23xoJ8aeCnaLp' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 'UKp44YUDjasWIPUv' 'mEejtGeoyIPa8ZRr' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'vjj7il35MXbN9oCM' 'Nqq98SjTvhZNkSQ7' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' '0D0H6BXksUC9b6i5' 'lZC9xv32e8c5csSo' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'voqsZNBdte9NDUPV' 'Jf6c2Z0QZxfgPubT' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"updatedAt": "DIHrvqAThuwjRHpK", "value": {"KTlmVr9XuoJbRFQS": {}, "KVPHbn4Xxtu7LQRE": {}, "NjEEztx1WsYSiZqa": {}}}' 'n0nSBJroav91GXlv' 'PG6bFYReVHQipcCx' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "9Zw5D2L7vIYhGGSy", "updatedAt": "EW4ZJJ42d3PBddN8", "value": {"S48l9lyNApflxqMr": {}, "j3oZk03QXcKMDYDD": {}, "xHSZjtqXyJ58f7Gc": {}}}' '26SaiGVkydwYWQG2' '6yUZNmTBcvrbYCwZ' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "txFHyPLtI8ilbyDP", "updatedAt": "UIj88cekdqCt81P1", "value": {"ktfIovmv9gsR5cJc": {}, "Hm3SZLxoRDFuuuyS": {}, "j29a9LJE8HoRS1X2": {}}}' 'PFAAMwzHPxB1UskY' 's4Yw20DOqOBSC2DK' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'HRuPMMWH8Yb33T5U' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'BJCjfcnLRfxeCSz9' 'WEi8KlloeH0JT1yd' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'uat2vQR3biBfsu4j' 'msRE2w1yEkLgh3tI' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'Yt4SqYUTLDx9gIiD' 'andpGT2t24aOMh5e' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'C3IHeHSKLCa3xreN' 'DUWehwH3q31A806D' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'Jgas4b6z3LNUj7fd' 'gLA84Z8YYk6QEgJj' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'BbEDoNf3n0hEoRCA' 'cf80zfFyabWAgIUX' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'iI07A68eaqC2J9jy' 'EW6GLbc0NaKDUL3s' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'a13lk1dQBHO86IlB' 'hnetU4RwTqUXlTDB' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'zOuYsaZA2yyd4mbq' 'oOfADMMAXFaY9eKa' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "699bRVhyaKwwrAP2", "value": {"aMlu7WtjCtoYetOO": {}, "847g8OudOfjnCuHZ": {}, "3c46IjGa23YvYmmD": {}}}' 'g7VYPXIuvUYTZBRu' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["jIUE1Tq5jyAZvkRC", "MNFIurjh2imdb4rb", "kXj0ZwsVC0gL97ZV"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'JSPqJiwv1qlYB1RS' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'Ks6gQxC3Gb7S0o4z' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'GYY7KQI1AeFgPqaO' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'kvo1aolB4lkKB4EY' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["OkQ1jMD3cym8xIfk", "OVW2grREOLx0KOww", "3HICQLfl7MUBG7qt"]}' 'Pu64yAtURKLRkb73' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["8HGS6rDgMdIIlhS1", "fSiM9331m7Ta1PsK", "c50Kv6ecnEevcAx2"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'K2zkRenmPZnGBt4P' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "7WnbdSJtjX7ZshZy", "value": {"Zl5x4bRXBHUTrDzZ": {}, "SKscfOcYu3dpCROY": {}, "qUiGKXVFCmpo6sPw": {}}}' 'VOEDSJsEK5QpNhlI' '2iS5EpGhhvXYck0u' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "pMzUYnb76tFkEORV", "value": {"3bu1bNCtX7W40V6D": {}, "o5sYadCCFrHHC3Dp": {}, "ZxkrQDXuNFviMarv": {}}}' '8mnfHK8CCmE2lPns' 'bD3SGEdlwuUccE53' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 '6ugBp3HBvepnDCjg' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["yJlXe36mgWjLfFmt", "eue9nzJ6fH24T805", "tVg8JqU0jZpjvsug"]}' 'AOS7u8RiWyerCSa8' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'SRgwsAj1ik1jglaD' 'XTvKCWwNTAhd2wrS' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' '0uPdjhdinpng5BLy' '8wbhMssAHjapIkY9' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'Rf4wP57dBZNR88Yb' 'CtmKy8M9zVrjfGXZ' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'nqAQUoY1GjlIIk0i' 'KoTTS1j02o7JjTXA' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'QN0qdskdQV0TqI8E' 'FnmDbxIxi4YKlONk' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' '2Q5Y4Jvaizwiilat' 'uUjjt9lIMGql5ElE' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'a9EIIlGcHB3CfR3n' 'cDlwi3v3MFFJ1Kes' --login_with_auth "Bearer foo"
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
echo "1..61"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminListAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-game-record-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminListAdminGameRecordV1' test.out

#- 3 AdminBulkGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-game-record-v1' \
    '{"keys": ["KoELCpobBEG8X645", "xpdXpai0rYaT5hOP", "jaf3H0tYighU0VUf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'cYHJbBfAKSiPW3Vg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'sZXiR1DJ7HVWqMkN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'SawQUWDFJvJBWic7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'UkBeIXuqDuAXI66b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "Q71w0deoV9Lx5RDA", "value": {"1l2XcrciYNEzvSZI": {}, "PkhSgORcz5S5Bvmg": {}, "BLxh4ijFnE3Tam69": {}}}' \
    'qSZ7PC6f6QkmZXEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 9 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "W9YfRSse6AAz3S4c", "updatedAt": "zz0QKFlAVmVLu4AO", "value": {"ec0z8eBeeoip68J1": {}, "nsv4W2OJhtafxMSJ": {}, "lHeb34sZKHcl5LLL": {}}}' \
    'OexL4fZvWtND2tcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 10 GetPluginConfig
$PYTHON -m $MODULE 'cloudsave-get-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetPluginConfig' test.out

#- 11 CreatePluginConfig
$PYTHON -m $MODULE 'cloudsave-create-plugin-config' \
    '{"appConfig": {"appName": "FpX8lNtFEJ7tnkY6"}, "customConfig": {"GRPCAddress": "Mca5afj12K2IzrBv"}, "customFunction": {"afterBulkReadAdminGameRecord": true, "afterBulkReadAdminPlayerRecord": true, "afterBulkReadGameRecord": false, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": false, "afterReadAdminPlayerRecord": true, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": true, "beforeWriteAdminPlayerRecord": true, "beforeWriteGameRecord": true, "beforeWritePlayerRecord": true}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreatePluginConfig' test.out

#- 12 DeletePluginConfig
$PYTHON -m $MODULE 'cloudsave-delete-plugin-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeletePluginConfig' test.out

#- 13 UpdatePluginConfig
$PYTHON -m $MODULE 'cloudsave-update-plugin-config' \
    '{"appConfig": {"appName": "TdlNBJYOmpu1VCar"}, "customConfig": {"GRPCAddress": "zBsV6xnZ5Jrzzjrc"}, "customFunction": {"afterBulkReadAdminGameRecord": false, "afterBulkReadAdminPlayerRecord": true, "afterBulkReadGameRecord": true, "afterBulkReadPlayerRecord": false, "afterReadAdminGameRecord": false, "afterReadAdminPlayerRecord": false, "afterReadGameRecord": true, "afterReadPlayerRecord": false, "beforeWriteAdminGameRecord": false, "beforeWriteAdminPlayerRecord": false, "beforeWriteGameRecord": false, "beforeWritePlayerRecord": false}, "extendType": "APP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdatePluginConfig' test.out

#- 14 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '9' \
    '12' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'ListGameRecordsHandlerV1' test.out

#- 15 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'd9DHhLOqQGhCUr6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetGameRecordHandlerV1' test.out

#- 16 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'TrjyEgarAdNJOIG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminPutGameRecordHandlerV1' test.out

#- 17 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    '6I6tRbRcrEveMdAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminPostGameRecordHandlerV1' test.out

#- 18 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'iPKDUVSC00PYeDca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteGameRecordHandlerV1' test.out

#- 19 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["gginxnFIna3yddcb", "sPheTH26IUJNvYuG", "RUvpZaHCuESOiIZs"]}' \
    'MfB4ZH3mtgWgU4pC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 20 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["AKxeE70CaunQNxot", "371W9G4AvQkqsGnm", "yo5JJTUVmb8GEXFT"], "user_id": "lEMEsFzYqwgK1Np5"}, {"keys": ["nodqpLm7FhJBNXzA", "FdO0Khqf6kiTdSGv", "2LFjAKY7CbgsWqFW"], "user_id": "ZX7kPBom8F9GLLTG"}, {"keys": ["8phc3n4iLoIllKlp", "O2pqiXJF3WGRaoQo", "mSJC4DdrKF7SUQPL"], "user_id": "G59e0k5ZtX6wK7Pp"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 21 ListPlayerRecordHandlerV1
eval_tap 0 21 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 22 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    'UlcIW32iK7MGt1ix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminListAdminUserRecordsV1' test.out

#- 23 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["Y5rA1WoVeJIePF8Z", "rQzP4zvtdxdbZUpd", "6FJtHJ1pyVwyKQLY"]}' \
    '6FEO65Rb3z7CYLM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 24 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'IlsHqffnrfsGlfPa' \
    'ZKBwa3Ddb60ufPpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetAdminPlayerRecordV1' test.out

#- 25 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'wj1QGIFmlVf4jvap' \
    'seE9LN9bvhOrHflI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPutAdminPlayerRecordV1' test.out

#- 26 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'Od6X3viLvtEk4mTI' \
    'pUA9gxo8SV38nEho' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminPostPlayerAdminRecordV1' test.out

#- 27 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'XmM2W7l6jHMA2rG3' \
    'nakopAywelu01nry' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminDeleteAdminPlayerRecordV1' test.out

#- 28 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "EJ0NqoTow0qiOiC4", "value": {"j0iktm0ZPLkLOsp0": {}, "LZ5njN86Hl8kUXzt": {}, "6bSc6bWvgpVyW9dD": {}}}' \
    '1kOmvrAejcq2LgkQ' \
    'uaS7RBx3vim02jBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 29 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "xrZDyvpcLYOWA8Nj", "updatedAt": "xOnaEok4nOOCzfsf", "value": {"lhjbngJOUn18G5Ml": {}, "fDTk8aG40NlncceI": {}, "ZSwgAIkgzh4pTU0A": {}}}' \
    'm4DZhl0bQxFJ3sWC' \
    'qQpQ2FbKPFMycMSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 30 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "4qfAacR0LgB5BUXv", "updatedAt": "jcu2s6w3VifnKqmT", "value": {"SoGH1XEfY6QAYn6W": {}, "Q5UBEU1QAOHfZiGh": {}, "xOdcuDXSxSc3aZPV": {}}}' \
    '87pna08gxefTYKhu' \
    'xaEc7M4P7UckSC6e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'PeN8i4GrFES9z7xu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminRetrievePlayerRecords' test.out

#- 32 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'eHpATHccee9GXhKc' \
    'jmSEwdrkEnnqKzFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerRecordHandlerV1' test.out

#- 33 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'LfYalUlfwEQKjU7e' \
    'HGebSVu0LQ40kepE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPutPlayerRecordHandlerV1' test.out

#- 34 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'aC4dfiOMZfEhHr39' \
    'pysFO3Zvc1BZG99L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminPostPlayerRecordHandlerV1' test.out

#- 35 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'yvfvHEsJKQQewVLM' \
    'UoAnaRcYp7FUjfIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlayerRecordHandlerV1' test.out

#- 36 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'affoflEIByYqeKN0' \
    'meGelYF5wWaDhukU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 37 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    '4khGG4vZFTYnPkmS' \
    'u4PWam1jxR7SETWj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 38 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'teoc8fgvZDDhoO05' \
    'oKqymxLD1Lcvw6T6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 39 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'mZEiwxxElpMYSWIe' \
    'Vzm7z9noowmlTIKV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 40 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'owi0RY2VN4ZONJRE' \
    'dUQ3z9F1BxNNgnke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 41 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "4akncw7wu9TmXfJW", "value": {"BPrx9Ns8eLzYEvwS": {}, "WTaLQjctvrK2jhsY": {}, "pKPlXn77AtYoFzLA": {}}}' \
    'ATPY8P8P3cfoivvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PutGameRecordConcurrentHandlerV1' test.out

#- 42 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["xevecWw7Rry0KK5r", "gAGO0dW8rX2MVUGK", "SZ4GcLkt4pK32sJx"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetGameRecordsBulk' test.out

#- 43 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'lZcCTpTdRtCHvuk6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetGameRecordHandlerV1' test.out

#- 44 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'B6XTmSLyn50sigBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PutGameRecordHandlerV1' test.out

#- 45 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'ZxiKdV57GvRyd9Uu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PostGameRecordHandlerV1' test.out

#- 46 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'L02Le8HSCslsDd4M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DeleteGameRecordHandlerV1' test.out

#- 47 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["1F5qRIblS7Nz81GR", "azPAANjfBoldFOyq", "A2clJ5gEOaCgM6Yn"]}' \
    '6RugbNEIpGBFUjOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 48 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'RetrievePlayerRecords' test.out

#- 49 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["5mM7k8nbLzvtCIW5", "ynMKquUicAeIVXto", "WAXhMlW4tLqX7OIC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetPlayerRecordsBulkHandlerV1' test.out

#- 50 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'f5oD1e6oI9FmYel0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 51 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "kOw72o8Zkgk0jS6r", "value": {"DWUwfhKvrf2AaH4y": {}, "CWrHSppnIZkNnTn3": {}, "rzH5NvAtcvNedgS1": {}}}' \
    'fUfKmihDbmu8ePWl' \
    'QMVDXEHeiGTnwyEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 52 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "6hIWDZrpP7rz3ISW", "value": {"510kHr4isTKWjmv6": {}, "7nuHCXWfwnwGioVw": {}, "VzmmBVVFfpqx1AeL": {}}}' \
    'tzcPJ3jtDYBo4FUT' \
    'H7CGfKSyxgRR1DiC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 53 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'qSMzpqIFGLkDs7AC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 54 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["C1RgBfoNrHlFi2qJ", "LgmBLE35YhyiDV90", "SeI5yppBHoytVznC"]}' \
    'gNyx9fbT63ShEh8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 55 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'bGikLjgjcj34uulU' \
    '6FYBZsWFbr3RSP0W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetPlayerRecordHandlerV1' test.out

#- 56 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    '9nBhvhf8Q0DtJMcY' \
    'QdN66bswAgt65X4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PutPlayerRecordHandlerV1' test.out

#- 57 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    '1LQZmB61JMdtwCVU' \
    'rYQue84dwmbwFEnA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PostPlayerRecordHandlerV1' test.out

#- 58 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'ZaWsQJtRYoagRJK5' \
    'PX9UcOvhPyE11TRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeletePlayerRecordHandlerV1' test.out

#- 59 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    '2SKseoe8VLie0LBa' \
    '36KNzjf005CXNGeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetPlayerPublicRecordHandlerV1' test.out

#- 60 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'Q2aTjTDfKFDXC7eG' \
    'L5YhJDWh9YWqc0qg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PutPlayerPublicRecordHandlerV1' test.out

#- 61 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'V6d9yOfIMLds2DbP' \
    'caoMdtRLTmSvTkQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
