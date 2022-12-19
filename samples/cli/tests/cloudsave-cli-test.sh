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
cloudsave-admin-put-game-record-concurrent-handler-v1 '{"set_by": "dPy6kSux", "updatedAt": "jlfHKjG7", "value": {"ygXCzooT": {}, "B4TR4xvJ": {}, "kPQFzVgP": {}}}' 'MPWxg9u0' --login_with_auth "Bearer foo"
cloudsave-list-game-records-handler-v1 '58' '20' --login_with_auth "Bearer foo"
cloudsave-admin-get-game-record-handler-v1 'BQt4D4NY' --login_with_auth "Bearer foo"
cloudsave-admin-put-game-record-handler-v1 '{}' 'jujmg9Od' --login_with_auth "Bearer foo"
cloudsave-admin-post-game-record-handler-v1 '{}' 'Ga9dBeUl' --login_with_auth "Bearer foo"
cloudsave-admin-delete-game-record-handler-v1 'p5ZdQj5S' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-record-size-handler-v1 '{"data": [{"keys": ["jD6PI64v", "7ycvGfTB", "NWcVt8n2"], "user_id": "RCm4fM1S"}, {"keys": ["IRoNMlJU", "nhqAokRV", "WUdtFqG1"], "user_id": "adj8NcI5"}, {"keys": ["CFM7NgLQ", "XhhVUf05", "J9VGgLUL"], "user_id": "AIqQtaRj"}]}' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-concurrent-handler-v1 '{"set_by": "NkaaAJaB", "updatedAt": "ovJnSaeK", "value": {"OTqweguJ": {}, "cnPe4Xep": {}, "XugAvOWR": {}}}' '4YDxSBdl' '5s6wr6oN' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-concurrent-handler-v1 '{"set_by": "YPQmM9qg", "updatedAt": "288bqCMS", "value": {"FNNJfUEn": {}, "ktx1WOAF": {}, "DPbgdLdN": {}}}' 'y5U8R0pL' 'v1mTtWxi' --login_with_auth "Bearer foo"
cloudsave-admin-retrieve-player-records 'ibA9kpWa' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-handler-v1 'NC114RcR' '7UBvm0z6' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-record-handler-v1 '{}' 'RCblTMj9' '4S06FCnT' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-record-handler-v1 '{}' '5XGBb8DU' 'LwovMD3w' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-record-handler-v1 'SJUIPwd7' 'vrde69Su' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-public-record-handler-v1 'tpjzrXER' 'tXOBzbfR' --login_with_auth "Bearer foo"
cloudsave-admin-put-player-public-record-handler-v1 '{}' 'TjgS6uFC' 'zDI86HAM' --login_with_auth "Bearer foo"
cloudsave-admin-post-player-public-record-handler-v1 '{}' 'XtDu5J1O' 'ljoaJuyX' --login_with_auth "Bearer foo"
cloudsave-admin-delete-player-public-record-handler-v1 'eIsFUuvo' 'PwJf6UqX' --login_with_auth "Bearer foo"
cloudsave-admin-get-player-record-size-handler-v1 'g0whAxbE' 'q5wWzB4j' --login_with_auth "Bearer foo"
cloudsave-put-game-record-concurrent-handler-v1 '{"updatedAt": "wEVj6ajs", "value": {"ArGQsbUL": {}, "oRiASNML": {}, "EWu8BuJx": {}}}' '2ACAf9ti' --login_with_auth "Bearer foo"
cloudsave-get-game-record-handler-v1 '9QFN0POn' --login_with_auth "Bearer foo"
cloudsave-put-game-record-handler-v1 '{}' 'mK915tFs' --login_with_auth "Bearer foo"
cloudsave-post-game-record-handler-v1 '{}' 'WsgXM4cn' --login_with_auth "Bearer foo"
cloudsave-delete-game-record-handler-v1 'I40Yu21A' --login_with_auth "Bearer foo"
cloudsave-bulk-get-player-public-record-handler-v1 '{"userIds": ["tbS9I4i8", "T3UdfBgc", "PDlAWhwJ"]}' 'GDDEs2Ot' --login_with_auth "Bearer foo"
cloudsave-public-delete-player-public-record-handler-v1 'UPoKlTyV' --login_with_auth "Bearer foo"
cloudsave-put-player-record-concurrent-handler-v1 '{"updatedAt": "DKi3MKeD", "value": {"1NSdxaJi": {}, "1W8WOStz": {}, "xEAlxfX7": {}}}' 'W5kYSLXO' 'KilCSOLH' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-concurrent-handler-v1 '{"updatedAt": "GW1wyMQi", "value": {"KeRdzEaF": {}, "0CgvRzsH": {}, "vEBG6GCn": {}}}' 'FCDPcYYX' 'jacvvAoT' --login_with_auth "Bearer foo"
cloudsave-get-player-record-handler-v1 'S9niXs8r' 'oyKdgAXY' --login_with_auth "Bearer foo"
cloudsave-put-player-record-handler-v1 '{}' 'xcS6eFZe' 'dJZoDrvr' --login_with_auth "Bearer foo"
cloudsave-post-player-record-handler-v1 '{}' 'KeEtEWnP' 'sJ6miMc0' --login_with_auth "Bearer foo"
cloudsave-delete-player-record-handler-v1 'PrzaKFCi' 'HheuO6u5' --login_with_auth "Bearer foo"
cloudsave-get-player-public-record-handler-v1 'Q1uOVJt5' 'NC4C04od' --login_with_auth "Bearer foo"
cloudsave-put-player-public-record-handler-v1 '{}' 'w3QRFrUS' 'valzviyr' --login_with_auth "Bearer foo"
cloudsave-post-player-public-record-handler-v1 '{}' 'hKZ4aIIa' 'I7bf3SEc' --login_with_auth "Bearer foo"
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
    '{"set_by": "0pX1pdQu", "updatedAt": "QVw90dB5", "value": {"FgRbffW5": {}, "Tm6djD0O": {}, "SPLeW4b3": {}}}' \
    'EnWV09Yr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminPutGameRecordConcurrentHandlerV1' test.out

#- 3 ListGameRecordsHandlerV1
$PYTHON -m $MODULE 'cloudsave-list-game-records-handler-v1' \
    '16' \
    '86' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'ListGameRecordsHandlerV1' test.out

#- 4 AdminGetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-game-record-handler-v1' \
    'INDE0rWv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetGameRecordHandlerV1' test.out

#- 5 AdminPutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    '2SpOdJmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminPutGameRecordHandlerV1' test.out

#- 6 AdminPostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    '71UBZI2c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminPostGameRecordHandlerV1' test.out

#- 7 AdminDeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-game-record-handler-v1' \
    'pU2irGWn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteGameRecordHandlerV1' test.out

#- 8 BulkGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{"keys": ["oKGTavS2", "EHCs0Qe8", "G6YGR4q8"], "user_id": "5or7BFv5"}, {"keys": ["0xiw85V8", "bM3Gyfk3", "aQ4RKvPG"], "user_id": "AwPdb3oI"}, {"keys": ["zzF96KNS", "hyvoXWLG", "VoaB5SH3"], "user_id": "FB8GhnUi"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'BulkGetPlayerRecordSizeHandlerV1' test.out

#- 9 ListPlayerRecordHandlerV1
eval_tap 0 9 'ListPlayerRecordHandlerV1 # SKIP deprecated' test.out

#- 10 AdminPutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "3SnSNGhO", "updatedAt": "9QMxQ5B3", "value": {"6dUpUeKK": {}, "zFR02KVE": {}, "8XezliZB": {}}}' \
    '0vWPV05N' \
    'xwQw3yld' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminPutPlayerRecordConcurrentHandlerV1' test.out

#- 11 AdminPutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "o8WH10sd", "updatedAt": "LVS7VdVD", "value": {"BlmKwVVf": {}, "qK4ezCbX": {}, "9PHpiz6Y": {}}}' \
    '2SITqy2A' \
    '1O5aUl9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminPutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 12 AdminRetrievePlayerRecords
$PYTHON -m $MODULE 'cloudsave-admin-retrieve-player-records' \
    '8xphl2mh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRetrievePlayerRecords' test.out

#- 13 AdminGetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-handler-v1' \
    'w5cQLEHW' \
    '2krO8igQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPlayerRecordHandlerV1' test.out

#- 14 AdminPutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'k4pv4j6a' \
    'H74lCKvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminPutPlayerRecordHandlerV1' test.out

#- 15 AdminPostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'vRJuPowa' \
    'M85ZU0g1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminPostPlayerRecordHandlerV1' test.out

#- 16 AdminDeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-record-handler-v1' \
    'Apyg5NFw' \
    '94yXkaBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminDeletePlayerRecordHandlerV1' test.out

#- 17 AdminGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-public-record-handler-v1' \
    'gfzW16ZI' \
    'cIQHYHqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlayerPublicRecordHandlerV1' test.out

#- 18 AdminPutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'pzgD5ZHk' \
    'yXzNsqGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminPutPlayerPublicRecordHandlerV1' test.out

#- 19 AdminPostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'NMWU4jbJ' \
    'ledYikrH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminPostPlayerPublicRecordHandlerV1' test.out

#- 20 AdminDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'vLHo3BOH' \
    '9LONrEXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeletePlayerPublicRecordHandlerV1' test.out

#- 21 AdminGetPlayerRecordSizeHandlerV1
$PYTHON -m $MODULE 'cloudsave-admin-get-player-record-size-handler-v1' \
    'QDwJyGJB' \
    'lklAdEd8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetPlayerRecordSizeHandlerV1' test.out

#- 22 PutGameRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "YohruJnp", "value": {"uvrqCpHG": {}, "JO9YmzxV": {}, "W2mD9iiZ": {}}}' \
    'Pl6xcAr1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PutGameRecordConcurrentHandlerV1' test.out

#- 23 GetGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-game-record-handler-v1' \
    '2EYJwP5e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameRecordHandlerV1' test.out

#- 24 PutGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'VBinb0Km' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PutGameRecordHandlerV1' test.out

#- 25 PostGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'z4yqNGa2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PostGameRecordHandlerV1' test.out

#- 26 DeleteGameRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-game-record-handler-v1' \
    'XuP5lRxz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteGameRecordHandlerV1' test.out

#- 27 BulkGetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["XKS0EJqV", "Jv9H56s4", "CWPRz0cR"]}' \
    'F9vnwgrR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BulkGetPlayerPublicRecordHandlerV1' test.out

#- 28 PublicDeletePlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-public-delete-player-public-record-handler-v1' \
    'r29Kmtjg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicDeletePlayerPublicRecordHandlerV1' test.out

#- 29 PutPlayerRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "WdNk1lei", "value": {"4r1uv5FM": {}, "piK781RG": {}, "0TUmO9N3": {}}}' \
    'Mu9gmO82' \
    '9MRgiIVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PutPlayerRecordConcurrentHandlerV1' test.out

#- 30 PutPlayerPublicRecordConcurrentHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "rn6wZyCF", "value": {"atXRTrhh": {}, "N6ZrX6Ho": {}, "MfIZRse0": {}}}' \
    'F31tF1oL' \
    'pnxdcEHq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PutPlayerPublicRecordConcurrentHandlerV1' test.out

#- 31 GetPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-record-handler-v1' \
    'zWBFw3BL' \
    'YJOWSu7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetPlayerRecordHandlerV1' test.out

#- 32 PutPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'FLwnMn9s' \
    'HLWFH5ah' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PutPlayerRecordHandlerV1' test.out

#- 33 PostPlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    '3sXrwm1R' \
    'Xxo550XI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PostPlayerRecordHandlerV1' test.out

#- 34 DeletePlayerRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-delete-player-record-handler-v1' \
    'ww9zTO9J' \
    'rfuWSdZ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePlayerRecordHandlerV1' test.out

#- 35 GetPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-get-player-public-record-handler-v1' \
    '78vjjdpl' \
    'rjJalG8c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPlayerPublicRecordHandlerV1' test.out

#- 36 PutPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'pFHONOBd' \
    'N4jca1AL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PutPlayerPublicRecordHandlerV1' test.out

#- 37 PostPlayerPublicRecordHandlerV1
$PYTHON -m $MODULE 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'WX70NbJa' \
    'k7Akb7ZJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PostPlayerPublicRecordHandlerV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
