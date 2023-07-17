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
cloudsave-list-game-records-handler-v1 '74' '38' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'eb9l3rGN9A3sNm84' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'hddSpHt0P7MIIR7C' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'kyF6C7duuyZ0GhDo' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'gqrhBRd8lDR6qVNP' --login_with_auth "Bearer foo"
cloudsave-bulk-get-admin-player-record-by-user-ids-v1 '{"userIds": ["RZYdFLIAjGGJddVC", "vu9vx5KQ7KYnIuMB", "vaO35llzQRaT5kPx"]}' 'UfofvnnSuB0y5WUl' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["rMdI4sNveabntBSx", "TeIv53HGCiljvjKo", "yD6SCwGrncqmLtjQ"], "user_id": "HAf8TgoNm03VLisV"}, {"keys": ["6zwPuo3td6TC6I3l", "MjGSWN2laRlxfcjH", "fYakUCTqGkE7wcWf"], "user_id": "DslpJSqGAXQ0yYoN"}, {"keys": ["RKd3IL5TAQ6iiPlS", "C2uE4o5Vwdo3fePq", "IJA8IHtrkmu0hpDD"], "user_id": "WVAla2l5BYNtIuS5"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-list-admin-user-records-v1 'S5XUdjsoqwGyzzWi' --login_with_auth "Bearer foo"
cloudsave-admin-bulk-get-admin-player-record-v1 '{"keys": ["9gwQYv7t1o7TTr1D", "mrhZv15T7quIOvBM", "caYmvCkGZ5dAgqxp"]}' 'BFmaLoxozr6wfNPX' --login_with_auth "Bearer foo"
cloudsave-admin-get-admin-player-record-v1 '2bOItRMvqtlB2jJC' 'SQT279ZZPYGu0rdl' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-v1 '{}' 'gdWyOtXi3choQrpO' 'sDBU5SepjChB3V0v' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-admin-record-v1 '{}' '52Dlym6puQ23xoJ8' 'aeCnaLpUKp44YUDj' --login_with_auth "Bearer foo"
cloudsave-admin-delete-admin-player-record-v1 'asWIPUvmEejtGeoy' 'IPa8ZRrvjj7il35M' --login_with_auth "Bearer foo"
cloudsave-admin-put-admin-player-record-concurrent-handler-v1 '{"updatedAt": "XbN9oCMNqq98SjTv", "value": {"hZNkSQ70D0H6BXks": {}, "UC9b6i5lZC9xv32e": {}, "8c5csSovoqsZNBdt": {}}}' 'e9NDUPVJf6c2Z0QZ' 'xfgPubTDIHrvqATh' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "uwjRHpKKTlmVr9Xu", "updatedAt": "oJbRFQSKVPHbn4Xx", "value": {"tu7LQRENjEEztx1W": {}, "sYSiZqan0nSBJroa": {}, "v91GXlvPG6bFYReV": {}}}' 'HQipcCx9Zw5D2L7v' 'IYhGGSyEW4ZJJ42d' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "3PBddN8S48l9lyNA", "updatedAt": "pflxqMrj3oZk03QX", "value": {"cKMDYDDxHSZjtqXy": {}, "J58f7Gc26SaiGVky": {}, "dwYWQG26yUZNmTBc": {}}}' 'vrbYCwZtxFHyPLtI' '8ilbyDPUIj88cekd' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'qCt81P1ktfIovmv9' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'gsR5cJcHm3SZLxoR' 'DFuuuySj29a9LJE8' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'HoRS1X2PFAAMwzHP' 'xB1UskYs4Yw20DOq' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' 'OBSC2DKHRuPMMWH8' 'Yb33T5UBJCjfcnLR' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'fxeCSz9WEi8Klloe' 'H0JT1yduat2vQR3b' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'iBfsu4jmsRE2w1yE' 'kLgh3tIYt4SqYUTL' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'Dx9gIiDandpGT2t2' '4aOMh5eC3IHeHSKL' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'Ca3xreNDUWehwH3q' '31A806DJgas4b6z3' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'LNUj7fdgLA84Z8YY' 'k6QEgJjBbEDoNf3n' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 '0hEoRCAcf80zfFya' 'bWAgIUXiI07A68ea' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "qC2J9jyEW6GLbc0N", "value": {"aKDUL3sa13lk1dQB": {}, "HO86IlBhnetU4RwT": {}, "qUXlTDBzOuYsaZA2": {}}}' 'yyd4mbqoOfADMMAX' --login_with_auth "Bearer foo"
cloudsave-get-game-records-bulk '{"keys": ["FaY9eKa699bRVhya", "KwwrAP2aMlu7WtjC", "toYetOO847g8OudO"]}' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 'fjnCuHZ3c46IjGa2' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' '3YvYmmDg7VYPXIuv' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'UYTZBRujIUE1Tq5j' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'yAZvkRCMNFIurjh2' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["imdb4rbkXj0ZwsVC", "0gL97ZVJSPqJiwv1", "qlYB1RSKs6gQxC3G"]}' 'b7S0o4zGYY7KQI1A' --login_with_auth "Bearer foo"
cloudsave-retrieve-player-records --login_with_auth "Bearer foo"
cloudsave-get-player-records-bulk-handler-v1 '{"keys": ["eFgPqaOkvo1aolB4", "lkKB4EYOkQ1jMD3c", "ym8xIfkOVW2grREO"]}' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'Lx0KOww3HICQLfl7' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "MUBG7qtPu64yAtUR", "value": {"KLRkb738HGS6rDgM": {}, "dIIlhS1fSiM9331m": {}, "7Ta1PsKc50Kv6ecn": {}}}' 'EevcAx2K2zkRenmP' 'ZnGBt4P7WnbdSJtj' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "X7ZshZyZl5x4bRXB", "value": {"HUTrDzZSKscfOcYu": {}, "3dpCROYqUiGKXVFC": {}, "mpo6sPwVOEDSJsEK": {}}}' '5QpNhlI2iS5EpGhh' 'vXYck0upMzUYnb76' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-key-handler-v1 'tFkEORV3bu1bNCtX' --login_with_auth "Bearer foo"
cloudsave-get-other-player-public-record-handler-v1 '{"keys": ["7W40V6Do5sYadCCF", "rHHC3DpZxkrQDXuN", "FviMarv8mnfHK8CC"]}' 'mE2lPnsbD3SGEdlw' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'uUccE536ugBp3HBv' 'epnDCjgyJlXe36mg' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'WjLfFmteue9nzJ6f' 'H24T805tVg8JqU0j' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'ZpjvsugAOS7u8RiW' 'yerCSa8SRgwsAj1i' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'k1jglaDXTvKCWwNT' 'Ahd2wrS0uPdjhdin' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'png5BLy8wbhMssAH' 'japIkY9Rf4wP57dB' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'ZNR88YbCtmKy8M9z' 'VrjfGXZnqAQUoY1G' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'jlIIk0iKoTTS1j02' 'o7JjTXAQN0qdskdQ' --login_with_auth "Bearer foo"
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
echo "1..57"

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
    '{"keys": ["V0TqI8EFnmDbxIxi", "4YKlONk2Q5Y4Jvai", "zwiilatuUjjt9lIM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminBulkGetAdminGameRecordV1' test.out

#- 4 AdminGetAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-game-record-v1' \
    'Gql5ElEa9EIIlGcH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetAdminGameRecordV1' test.out

#- 5 AdminPutAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'B3CfR3ncDlwi3v3M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutAdminGameRecordV1' test.out

#- 6 AdminPostAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'FFJ1KesKoELCpobB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostAdminGameRecordV1' test.out

#- 7 AdminDeleteAdminGameRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-game-record-v1' \
    'EG8X645xpdXpai0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteAdminGameRecordV1' test.out

#- 8 AdminPutAdminGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"updatedAt": "YaT5hOPjaf3H0tYi", "value": {"ghU0VUfcYHJbBfAK": {}, "SiPW3VgsZXiR1DJ7": {}, "HVWqMkNSawQUWDFJ": {}}}' \
    'vJBWic7UkBeIXuqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminPutAdminGameRecordConcurrentHandlerV1' test.out

#- 9 AdminPutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "uAXI66bQ71w0deoV", "updatedAt": "9Lx5RDA1l2XcrciY", "value": {"NEzvSZIPkhSgORcz": {}, "5S5BvmgBLxh4ijFn": {}, "E3Tam69qSZ7PC6f6": {}}}' \
    'QkmZXElW9YfRSse6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 10 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '54' \
    '60' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ListGameRecordsHandlerV1' test.out

#- 11 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'Az3S4czz0QKFlAVm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGameRecordHandlerV1' test.out

#- 12 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'VLu4AOec0z8eBeeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminPutGameRecordHandlerV1' test.out

#- 13 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'ip68J1nsv4W2OJht' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminPostGameRecordHandlerV1' test.out

#- 14 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'afxMSJlHeb34sZKH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteGameRecordHandlerV1' test.out

#- 15 BulkGetAdminPlayerRecordByUserIdsV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["cl5LLLOexL4fZvWt", "ND2tcBFpX8lNtFEJ", "7tnkY6Mca5afj12K"]}' \
    '2IzrBvvWm4udE0OX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'BulkGetAdminPlayerRecordByUserIdsV1' test.out

#- 16 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["udXgNne8kJATwlc6", "esUp6Sw1I98jeZQ7", "hfxnhLd3Knaknoed"], "user_id": "9DHhLOqQGhCUr6iT"}, {"keys": ["rjyEgarAdNJOIG36", "I6tRbRcrEveMdAdi", "PKDUVSC00PYeDcag"], "user_id": "ginxnFIna3yddcbs"}, {"keys": ["PheTH26IUJNvYuGR", "UvpZaHCuESOiIZsM", "fB4ZH3mtgWgU4pCA"], "user_id": "KxeE70CaunQNxot3"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 17 ListPlayerRecordHandlerV1
eval_tap 0 17 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 18 AdminListAdminUserRecordsV1
$PYTHON -m $MODULE 'cloudsave-admin-list-admin-user-records-v1' \
    '71W9G4AvQkqsGnmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListAdminUserRecordsV1' test.out

#- 19 AdminBulkGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["o5JJTUVmb8GEXFTl", "EMEsFzYqwgK1Np5n", "odqpLm7FhJBNXzAF"]}' \
    'dO0Khqf6kiTdSGv2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminBulkGetAdminPlayerRecordV1' test.out

#- 20 AdminGetAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-get-admin-player-record-v1' \
    'LFjAKY7CbgsWqFWZ' \
    'X7kPBom8F9GLLTG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminGetAdminPlayerRecordV1' test.out

#- 21 AdminPutAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'phc3n4iLoIllKlpO' \
    '2pqiXJF3WGRaoQom' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminPutAdminPlayerRecordV1' test.out

#- 22 AdminPostPlayerAdminRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'SJC4DdrKF7SUQPLG' \
    '59e0k5ZtX6wK7PpU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminPostPlayerAdminRecordV1' test.out

#- 23 AdminDeleteAdminPlayerRecordV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-admin-player-record-v1' \
    'lcIW32iK7MGt1ixY' \
    '5rA1WoVeJIePF8Zr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminDeleteAdminPlayerRecordV1' test.out

#- 24 AdminPutAdminPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"updatedAt": "QzP4zvtdxdbZUpd6", "value": {"FJtHJ1pyVwyKQLY6": {}, "FEO65Rb3z7CYLM8I": {}, "lsHqffnrfsGlfPaZ": {}}}' \
    'KBwa3Ddb60ufPpzw' \
    'j1QGIFmlVf4jvaps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminPutAdminPlayerRecordConcurrentHandlerV1' test.out

#- 25 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "eE9LN9bvhOrHflIO", "updatedAt": "d6X3viLvtEk4mTIp", "value": {"UA9gxo8SV38nEhoX": {}, "mM2W7l6jHMA2rG3n": {}, "akopAywelu01nryE": {}}}' \
    'J0NqoTow0qiOiC4j' \
    '0iktm0ZPLkLOsp0L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 26 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "Z5njN86Hl8kUXzt6", "updatedAt": "bSc6bWvgpVyW9dD1", "value": {"kOmvrAejcq2LgkQu": {}, "aS7RBx3vim02jBOx": {}, "rZDyvpcLYOWA8Njx": {}}}' \
    'OnaEok4nOOCzfsfl' \
    'hjbngJOUn18G5Mlf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 27 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    'DTk8aG40NlncceIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminRetrievePlayerRecords' test.out

#- 28 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'SwgAIkgzh4pTU0Am' \
    '4DZhl0bQxFJ3sWCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetPlayerRecordHandlerV1' test.out

#- 29 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'QpQ2FbKPFMycMSQ4' \
    'qfAacR0LgB5BUXvj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminPutPlayerRecordHandlerV1' test.out

#- 30 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'cu2s6w3VifnKqmTS' \
    'oGH1XEfY6QAYn6WQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminPostPlayerRecordHandlerV1' test.out

#- 31 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    '5UBEU1QAOHfZiGhx' \
    'OdcuDXSxSc3aZPV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminDeletePlayerRecordHandlerV1' test.out

#- 32 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    '7pna08gxefTYKhux' \
    'aEc7M4P7UckSC6eP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 33 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'eN8i4GrFES9z7xue' \
    'HpATHccee9GXhKcj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 34 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'mSEwdrkEnnqKzFsL' \
    'fYalUlfwEQKjU7eH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 35 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'GebSVu0LQ40kepEa' \
    'C4dfiOMZfEhHr39p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 36 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'ysFO3Zvc1BZG99Ly' \
    'vfvHEsJKQQewVLMU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 37 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "oAnaRcYp7FUjfIGa", "value": {"ffoflEIByYqeKN0m": {}, "eGelYF5wWaDhukU4": {}, "khGG4vZFTYnPkmSu": {}}}' \
    '4PWam1jxR7SETWjt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PutGameRecordConcurrentHandlerV1' test.out

#- 38 GetGameRecordsBulk
$PYTHON -m $MODULE 'cloudsave-get-game-records-bulk' \
    '{"keys": ["eoc8fgvZDDhoO05o", "KqymxLD1Lcvw6T6m", "ZEiwxxElpMYSWIeV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetGameRecordsBulk' test.out

#- 39 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    'zm7z9noowmlTIKVo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetGameRecordHandlerV1' test.out

#- 40 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'wi0RY2VN4ZONJREd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PutGameRecordHandlerV1' test.out

#- 41 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'UQ3z9F1BxNNgnke4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PostGameRecordHandlerV1' test.out

#- 42 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'akncw7wu9TmXfJWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteGameRecordHandlerV1' test.out

#- 43 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["Prx9Ns8eLzYEvwSW", "TaLQjctvrK2jhsYp", "KPlXn77AtYoFzLAA"]}' \
    'TPY8P8P3cfoivvQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 44 RetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-retrieve-player-records' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RetrievePlayerRecords' test.out

#- 45 GetPlayerRecordsBulkHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["evecWw7Rry0KK5rg", "AGO0dW8rX2MVUGKS", "Z4GcLkt4pK32sJxl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetPlayerRecordsBulkHandlerV1' test.out

#- 46 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'ZcCTpTdRtCHvuk6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 47 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "6XTmSLyn50sigBVZ", "value": {"xiKdV57GvRyd9UuL": {}, "02Le8HSCslsDd4M1": {}, "F5qRIblS7Nz81GRa": {}}}' \
    'zPAANjfBoldFOyqA' \
    '2clJ5gEOaCgM6Yn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 48 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "RugbNEIpGBFUjOn5", "value": {"mM7k8nbLzvtCIW5y": {}, "nMKquUicAeIVXtoW": {}, "AXhMlW4tLqX7OICf": {}}}' \
    '5oD1e6oI9FmYel0k' \
    'Ow72o8Zkgk0jS6rD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 49 GetOtherPlayerPublicRecordKeyHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'WUwfhKvrf2AaH4yC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetOtherPlayerPublicRecordKeyHandlerV1' test.out

#- 50 GetOtherPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["WrHSppnIZkNnTn3r", "zH5NvAtcvNedgS1f", "UfKmihDbmu8ePWlQ"]}' \
    'MVDXEHeiGTnwyEw6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetOtherPlayerPublicRecordHandlerV1' test.out

#- 51 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'hIWDZrpP7rz3ISW5' \
    '10kHr4isTKWjmv67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetPlayerRecordHandlerV1' test.out

#- 52 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'nuHCXWfwnwGioVwV' \
    'zmmBVVFfpqx1AeLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PutPlayerRecordHandlerV1' test.out

#- 53 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'zcPJ3jtDYBo4FUTH' \
    '7CGfKSyxgRR1DiCq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PostPlayerRecordHandlerV1' test.out

#- 54 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'SMzpqIFGLkDs7ACC' \
    '1RgBfoNrHlFi2qJL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeletePlayerRecordHandlerV1' test.out

#- 55 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    'gmBLE35YhyiDV90S' \
    'eI5yppBHoytVznCg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetPlayerPublicRecordHandlerV1' test.out

#- 56 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'Nyx9fbT63ShEh8Pb' \
    'GikLjgjcj34uulU6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PutPlayerPublicRecordHandlerV1' test.out

#- 57 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'FYBZsWFbr3RSP0W9' \
    'nBhvhf8Q0DtJMcYQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
