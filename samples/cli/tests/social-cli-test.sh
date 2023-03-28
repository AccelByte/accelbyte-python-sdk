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
social-get-namespace-slot-config --login_with_auth "Bearer foo"
social-update-namespace-slot-config --body '{"maxSlotSize": 62, "maxSlots": 39}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'AxcVpFrt' --login_with_auth "Bearer foo"
social-update-user-slot-config 'tufHIRdH' --body '{"maxSlotSize": 4, "maxSlots": 95}' --login_with_auth "Bearer foo"
social-delete-user-slot-config '09nIW0Oa' --login_with_auth "Bearer foo"
social-get-user-profiles 'iw9B0D7e' --login_with_auth "Bearer foo"
social-get-profile 'HpzSn3ZP' 'Udc0qh4n' --login_with_auth "Bearer foo"
social-get-user-namespace-slots '8mzZ0m8S' --login_with_auth "Bearer foo"
social-get-slot-data 'AMTwE6I5' '6IaRDBXx' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["yaNoMR6h", "kspInrAi", "p6lyzSxw"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'ElFHHdgs' --login_with_auth "Bearer foo"
social-public-create-profile '21Jub74C' --body '{"achievements": ["UkNmKJfh", "5pUkHODp", "oMF78NY4"], "attributes": {"YkHs1cnz": "1JSDgY1T", "Xp38zsCT": "CrbCbPOy", "NQkT7Nvy": "E3cwyALc"}, "avatarUrl": "zNIicXm7", "inventories": ["agSrjJW2", "OQNOs1PX", "hT5FvdiR"], "label": "ilZ7oFgx", "profileName": "4c8OumKt", "statistics": ["PDKJDXn7", "Z4U68su8", "XfqlqNiT"], "tags": ["vB6SdAdI", "hUDrwoZ5", "MecdKi5r"]}' --login_with_auth "Bearer foo"
social-public-get-profile '6QEa1ysL' 'Ezth6mXh' --login_with_auth "Bearer foo"
social-public-update-profile 'zkzWkFeZ' 'SoEAcBdW' --body '{"achievements": ["19m4eu6d", "5tA5jUmi", "TqpyhPFd"], "attributes": {"xLzFQN05": "MYzYiKWe", "5dNRljv7": "IPrDQQRg", "at0SevkL": "GMS0lyuI"}, "avatarUrl": "9a2I9u6V", "inventories": ["pbsx5w8h", "qUI06UpO", "XGSLmCVu"], "label": "HOPlLlkv", "profileName": "R8sKgnuR", "statistics": ["kgghGoYu", "pD391C2q", "tPYokahF"], "tags": ["jkQsfCaT", "mt1d67FX", "Gk2s9Q0m"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'PVo3twu0' 'MesTCf9x' --login_with_auth "Bearer foo"
social-public-get-profile-attribute '4rt69lna' '7qxNeIxP' 'z6MbwL6I' --login_with_auth "Bearer foo"
social-public-update-attribute 'Y69z1UaL' 'qYSYWytL' 'PziZMdjx' --body '{"name": "cBZufQxG", "value": "iHPllG4c"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'YEzfTD1Z' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'Bm3MqHcU' --login_with_auth "Bearer foo"
social-public-get-slot-data 'mLZZbSqb' '8RwNmn9H' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'rNQy4uZA' 'AiE0mit9' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'RGCCHYzU' 'OcEdscKH' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'PEqgA8yu' '7Vk6Jt4Y' --body '{"customAttribute": "mos9Jcdo", "label": "s4fYcTVU", "tags": ["6RBt0zYo", "McHyCUEX", "lAvxJMda"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'lwSyliWM' --login_with_auth "Bearer foo"
social-get-stat-cycles --login_with_auth "Bearer foo"
social-create-stat-cycle --body '{"cycleType": "WEEKLY", "description": "5NyLu0M3", "end": "1995-09-26T00:00:00Z", "name": "jJCSQT27", "resetDate": 3, "resetDay": 86, "resetMonth": 99, "resetTime": "PYGu0rdl", "seasonPeriod": 13, "start": "1979-01-26T00:00:00Z"}' --login_with_auth "Bearer foo"
social-get-stat-cycle 'RBaAkLnv' --login_with_auth "Bearer foo"
social-update-stat-cycle 'xkT1X68c' --body '{"cycleType": "DAILY", "description": "BU5SepjC", "end": "1974-07-21T00:00:00Z", "name": "B3V0v52D", "resetDate": 22, "resetDay": 21, "resetMonth": 50, "resetTime": "K6KKXNB3", "seasonPeriod": 66, "start": "1978-06-29T00:00:00Z"}' --login_with_auth "Bearer foo"
social-delete-stat-cycle 'J8aeCnaL' --login_with_auth "Bearer foo"
social-bulk-add-stats 'pUKp44YU' --body '{"statCodes": ["DjasWIPU", "vmEejtGe", "oyIPa8ZR"]}' --login_with_auth "Bearer foo"
social-stop-stat-cycle 'rvjj7il3' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items '5MXbN9oC' 'MNqq98Sj' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.7308393859750862, "statCode": "vhZNkSQ7", "userId": "0D0H6BXk"}, {"inc": 0.3058228006294169, "statCode": "UC9b6i5l", "userId": "ZC9xv32e"}, {"inc": 0.9724366533870137, "statCode": "c5csSovo", "userId": "qsZNBdte"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.9889237739650713, "statCode": "NDUPVJf6", "userId": "c2Z0QZxf"}, {"inc": 0.09861189038359253, "statCode": "PubTDIHr", "userId": "vqAThuwj"}, {"inc": 0.7029876127608587, "statCode": "HpKKTlmV", "userId": "r9XuoJbR"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'FQSKVPHb' '["n4Xxtu7L", "QRENjEEz", "tx1WsYSi"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "Zqan0nSB", "userId": "Jroav91G"}, {"statCode": "XlvPG6bF", "userId": "YReVHQip"}, {"statCode": "cCx9Zw5D", "userId": "2L7vIYhG"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["GSyEW4ZJ", "J42d3PBd", "dN8S48l9"], "defaultValue": 0.19141983563225673, "description": "yNApflxq", "incrementOnly": true, "maximum": 0.2796096406318924, "minimum": 0.15070534010752035, "name": "3oZk03QX", "setAsGlobal": false, "setBy": "SERVER", "statCode": "KMDYDDxH", "tags": ["SaiGVkyd", "58f7Gc26", "SZjtqXyJ"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'wYWQG26y' --login_with_auth "Bearer foo"
social-get-stat 'UZNmTBcv' --login_with_auth "Bearer foo"
social-delete-stat 'rbYCwZtx' --login_with_auth "Bearer foo"
social-update-stat 'FHyPLtI8' --body '{"cycleIds": ["ilbyDPUI", "j88cekdq", "Ct81P1kt"], "defaultValue": 0.0865949199580871, "description": "Iovmv9gs", "name": "R5cJcHm3", "tags": ["uuuySj29", "SZLxoRDF", "a9LJE8Ho"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'RS1X2PFA' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'AMwzHPxB' '1UskYs4Y' --login_with_auth "Bearer foo"
social-get-user-stat-items 'w20DOqOB' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'SC2DKHRu' --body '[{"statCode": "PMMWH8Yb"}, {"statCode": "33T5UBJC"}, {"statCode": "jfcnLRfx"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'eCSz9WEi' --body '[{"inc": 0.9815284570408147, "statCode": "KlloeH0J"}, {"inc": 0.7325464085651683, "statCode": "1yduat2v"}, {"inc": 0.6922687052651654, "statCode": "R3biBfsu"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '4jmsRE2w' --body '[{"inc": 0.8549362394687197, "statCode": "yEkLgh3t"}, {"inc": 0.5625663129866331, "statCode": "Yt4SqYUT"}, {"inc": 0.6020581139544352, "statCode": "Dx9gIiDa"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'ndpGT2t2' --body '[{"statCode": "4aOMh5eC"}, {"statCode": "3IHeHSKL"}, {"statCode": "Ca3xreND"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'UWehwH3q' '31A806DJ' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'gas4b6z3' 'LNUj7fdg' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'LA84Z8YY' 'k6QEgJjB' --body '{"inc": 0.019294207459281343}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'EDoNf3n0' 'hEoRCAcf' --body '{"additionalData": {"80zfFyab": {}, "WAgIUXiI": {}, "07A68eaq": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'C2J9jyEW' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-get-stat-cycle-1 '6GLbc0Na' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'KDUL3sa1' '3lk1dQBH' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.6523688966863292, "statCode": "86IlBhne", "userId": "tU4RwTqU"}, {"inc": 0.7974958777040421, "statCode": "lTDBzOuY", "userId": "saZA2yyd"}, {"inc": 0.9139200992274917, "statCode": "mbqoOfAD", "userId": "MMAXFaY9"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.07451685863448043, "statCode": "Ka699bRV", "userId": "hyaKwwrA"}, {"inc": 0.6650064879368071, "statCode": "2aMlu7Wt", "userId": "jCtoYetO"}, {"inc": 0.6574474355729384, "statCode": "847g8Oud", "userId": "OfjnCuHZ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "3c46IjGa", "userId": "23YvYmmD"}, {"statCode": "g7VYPXIu", "userId": "vUYTZBRu"}, {"statCode": "jIUE1Tq5", "userId": "jyAZvkRC"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["MNFIurjh", "kXj0ZwsV", "2imdb4rb"], "defaultValue": 0.45902864435498947, "description": "0gL97ZVJ", "incrementOnly": true, "maximum": 0.6868506340671543, "minimum": 0.47360326448754586, "name": "3oD5fLCr", "setAsGlobal": false, "setBy": "SERVER", "statCode": "XVv8ZGF7", "tags": ["NDigNJma", "uYnGzpip", "1MbqqZtf"]}' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'NWql4nmw' 'Aft4gqkN' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'NlWkD9eO' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'ziYRFOn0' --body '[{"statCode": "jJLHC9Lx"}, {"statCode": "hvNXTwGB"}, {"statCode": "CtohLtl9"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'Zuhytm5U' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'DrT6QXCs' --body '[{"inc": 0.920849394831405, "statCode": "SPBbRPZT"}, {"inc": 0.5014841609753882, "statCode": "6oQAXVG7"}, {"inc": 0.3212431758095995, "statCode": "nsZg5QgX"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'jvyGJPN4' --body '[{"inc": 0.07364827893971226, "statCode": "XbJE5Vs2"}, {"inc": 0.5297275786613862, "statCode": "cyomQoIX"}, {"inc": 0.13986679816038405, "statCode": "mBJehyxl"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'NsjUgxBk' --body '[{"statCode": "F6wFPoJe"}, {"statCode": "QediogEh"}, {"statCode": "hM2rIizG"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'dKvOPdq5' 'xrgxSmy1' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'DN9LFkYW' '5DQyj4bj' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '5Ro2ogaK' 't2ujQSa3' --body '{"inc": 0.838183057164227}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'db65UXmy' '0Zp6iIaT' --body '{"inc": 0.5592892418932938}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'KUkmkk9Q' 'M0NBMA9O' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"RxpzwLR2": {}, "AK6eXUGP": {}, "Jsw1fiP8": {}}, "additionalKey": "0G9Pclxc", "statCode": "ft2ulIJz", "updateStrategy": "MAX", "userId": "yrVEiOG4", "value": 0.7489641020551537}, {"additionalData": {"cqsuGKHh": {}, "MRWLVd3D": {}, "lhLuIpom": {}}, "additionalKey": "M8sm1Mia", "statCode": "I1mX2tJo", "updateStrategy": "OVERRIDE", "userId": "p3HBvepn", "value": 0.47488960661603574}, {"additionalData": {"CjgyJlXe": {}, "36mgWjLf": {}, "Fmteue9n": {}}, "additionalKey": "zJ6fH24T", "statCode": "805tVg8J", "updateStrategy": "MIN", "userId": "TVqJdvzc", "value": 0.7872882510581586}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'bfUpaXp5' '["JMl5LL4b", "TxBmZjdr", "rIxsB0NR"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'sB1fPqqR' --body '[{"additionalData": {"Rulpqpym": {}, "DkQhtrHW": {}, "wRVnwVBO": {}}, "statCode": "qOHi8pWG", "updateStrategy": "INCREMENT", "value": 0.43188755858078565}, {"additionalData": {"HjapIkY9": {}, "Rf4wP57d": {}, "BZNR88Yb": {}}, "statCode": "CtmKy8M9", "updateStrategy": "OVERRIDE", "value": 0.03568193886334792}, {"additionalData": {"zbBdHb2s": {}, "lt71B1Sm": {}, "Zp2JZp50": {}}, "statCode": "CnPb71OR", "updateStrategy": "INCREMENT", "value": 0.5742360219205295}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'jTXAQN0q' --body '[{"additionalData": {"dskdQV0T": {}, "qI8EFnmD": {}, "bxIxi4YK": {}}, "statCode": "lONk2Q5Y"}, {"additionalData": {"4Jvaizwi": {}, "ilatuUjj": {}, "t9lIMGql": {}}, "statCode": "5ElEa9EI"}, {"additionalData": {"IlGcHB3C": {}, "fR3ncDlw": {}, "i3v3MFFJ": {}}, "statCode": "1KesKoEL"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'CpobBEG8' 'X645xpdX' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'pai0rYaT' '5hOPjaf3' --body '{"additionalData": {"H0tYighU": {}, "0VUfcYHJ": {}, "bBfAKSiP": {}}, "updateStrategy": "MIN", "value": 0.9000402113751781}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"VgsZXiR1": {}, "DJ7HVWqM": {}, "kNSawQUW": {}}, "additionalKey": "DFJvJBWi", "statCode": "c7UkBeIX", "updateStrategy": "MIN", "userId": "c0RVwXgA", "value": 0.10583284511480873}, {"additionalData": {"ntLMCuaX": {}, "BWQi6BqP": {}, "g4xr0lCa": {}}, "additionalKey": "ncUZGCHs", "statCode": "ZYoLfR1K", "updateStrategy": "MIN", "userId": "z5S5Bvmg", "value": 0.43837251464411797}, {"additionalData": {"Lxh4ijFn": {}, "E3Tam69q": {}, "SZ7PC6f6": {}}, "additionalKey": "QkmZXElW", "statCode": "9YfRSse6", "updateStrategy": "OVERRIDE", "userId": "DMUAeeZ9", "value": 0.9624599877499999}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'SBROPYuG' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 '6XqP6oo7' --body '[{"additionalData": {"G73zdxTg": {}, "OfnwIdlN": {}, "a29fDLh7": {}}, "statCode": "41IslKHz", "updateStrategy": "INCREMENT", "value": 0.19038054272494198}, {"additionalData": {"LKWUtDQs": {}, "61OQAoxy": {}, "yQpRWCii": {}}, "statCode": "PDGQhNPE", "updateStrategy": "MIN", "value": 0.639925763984793}, {"additionalData": {"tFEJ7tnk": {}, "Y6Mca5af": {}, "j12K2Izr": {}}, "statCode": "BvvWm4ud", "updateStrategy": "OVERRIDE", "value": 0.4899162265926228}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'BM70TdlN' 'BJYOmpu1' --body '{"additionalData": {"VCarzBsV": {}, "6xnZ5Jrz": {}, "zjrcaug6": {}}, "updateStrategy": "OVERRIDE", "value": 0.05890028017517257}' --login_with_auth "Bearer foo"
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
echo "1..89"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaceSlotConfig
$PYTHON -m $MODULE 'social-get-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaceSlotConfig' test.out

#- 3 UpdateNamespaceSlotConfig
$PYTHON -m $MODULE 'social-update-namespace-slot-config' \
    --body '{"maxSlotSize": 97, "maxSlots": 75}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'UpdateNamespaceSlotConfig' test.out

#- 4 DeleteNamespaceSlotConfig
$PYTHON -m $MODULE 'social-delete-namespace-slot-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteNamespaceSlotConfig' test.out

#- 5 GetUserSlotConfig
$PYTHON -m $MODULE 'social-get-user-slot-config' \
    'G8SWP3gl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'U6muswVJ' \
    --body '{"maxSlotSize": 28, "maxSlots": 15}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'NnN7kAa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'j0riFc5H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'THQIoVsG' \
    'o7dwV9DB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'qFKHQkET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'JyTlUrwD' \
    'TnoujQD4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["IEiH9Z5q", "Xn3aoRtl", "qOECohVi"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'HA5CzgFS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'y8X1A3Pr' \
    --body '{"achievements": ["Ifapq5AA", "eMe4L3mD", "WORBVXTI"], "attributes": {"IJM9XsYI": "IZxiXNMR", "9BgaWcFX": "3SUBhyoT", "sMWPAxUM": "kawaGpAy"}, "avatarUrl": "rIwMif3B", "inventories": ["OdkocVTd", "4BxqGWV6", "mTJ0sQs6"], "label": "XNbjvqhn", "profileName": "UVLWu8ol", "statistics": ["KdxL6ozR", "mDD0jJvl", "fV5OemPY"], "tags": ["dYT7DROC", "jtuzFMbA", "G9YI89hm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'guB8FOTj' \
    'MLo4b9rI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'zqYkEpst' \
    'yVTBcrM8' \
    --body '{"achievements": ["rG0rH0zc", "swwVeMK6", "MbGIVIu8"], "attributes": {"vvwLc7KY": "3uVoJXTI", "MtpgkieD": "yF97lGdM", "iHKxbWCY": "zo8yO2KT"}, "avatarUrl": "K9tmmOnY", "inventories": ["nOpas6gh", "P1y4Zi7s", "7QBlk44Z"], "label": "44B1GZgK", "profileName": "g4uKxaCg", "statistics": ["cGLuC3br", "WdTYCfHk", "IySok5Di"], "tags": ["XZtLW87r", "Gysryod3", "dNQrmsAp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'RA6HX3Rw' \
    'rKt2ecoz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'L0TOg54v' \
    'CE48L5oL' \
    'F6M4lNa4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'JUMSHNgq' \
    'RqCV7usa' \
    'mANkZlOX' \
    --body '{"name": "9Sfo95Hg", "value": "XqKhTPkw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'fLM9uSyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'RzWek2gZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'vRrvr0n9' \
    'd9lvccKM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'LhrTrcBE' \
    '2ItBS3Kt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'KZWe8aoF' \
    'zAyBME74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'HUtipUWY' \
    'hWV1qx8C' \
    --body '{"customAttribute": "zPML52fa", "label": "XUr9Sk4l", "tags": ["q2faBcAX", "XKlhvyH8", "paOJtxqM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicUpdateUserNamespaceSlotMetadata' test.out

#- 26 GetGlobalStatItems
$PYTHON -m $MODULE 'social-get-global-stat-items' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetGlobalStatItems' test.out

#- 27 GetGlobalStatItemByStatCode
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code' \
    'PpcVfRwN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 GetStatCycles
$PYTHON -m $MODULE 'social-get-stat-cycles' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetStatCycles' test.out

#- 29 CreateStatCycle
$PYTHON -m $MODULE 'social-create-stat-cycle' \
    --body '{"cycleType": "DAILY", "description": "ncceIZSw", "end": "1974-10-28T00:00:00Z", "name": "AIkgzh4p", "resetDate": 94, "resetDay": 30, "resetMonth": 95, "resetTime": "cGAjci0V", "seasonPeriod": 41, "start": "1971-08-18T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'QxFJ3sWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'qQpQ2FbK' \
    --body '{"cycleType": "WEEKLY", "description": "LDljhZ2j", "end": "1983-02-15T00:00:00Z", "name": "LRX3z46O", "resetDate": 58, "resetDay": 1, "resetMonth": 55, "resetTime": "GBeMfPlN", "seasonPeriod": 29, "start": "1980-07-06T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    '4yBRjrER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'HEonAZR8' \
    --body '{"statCodes": ["GmEu0q1p", "6QCyY6vS", "kVFWdsbY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 StopStatCycle
$PYTHON -m $MODULE 'social-stop-stat-cycle' \
    'uVEGVxYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'StopStatCycle' test.out

#- 35 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'eR3j5mNZ' \
    '6vwv7K8A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'BulkFetchStatItems' test.out

#- 36 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.3036227085385751, "statCode": "vt1j1Rx5", "userId": "9hesNWy2"}, {"inc": 0.6312386912601465, "statCode": "vZ85DDKD", "userId": "AF8KDsBZ"}, {"inc": 0.6525220236826805, "statCode": "uYQJ03BA", "userId": "HZ7c53q7"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItem' test.out

#- 37 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.004840001347482192, "statCode": "kMpcmnnx", "userId": "6RVBrop9"}, {"inc": 0.3488962222510986, "statCode": "7aZK3h65", "userId": "hbN15zfQ"}, {"inc": 0.7208076428287131, "statCode": "fQrtfF3T", "userId": "QN0OcNDL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkIncUserStatItemValue' test.out

#- 38 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'r36vzohZ' \
    '["yjMQAg5m", "PYhrLTyU", "8OhgfY9J"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkFetchOrDefaultStatItems' test.out

#- 39 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "QYGF4bYX", "userId": "EcENx9xZ"}, {"statCode": "lAchob44", "userId": "lONDDwMv"}, {"statCode": "gI0HlyPR", "userId": "7wZNiVsF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'BulkResetUserStatItem' test.out

#- 40 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetStats' test.out

#- 41 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"cycleIds": ["dbzIVy8a", "6xG2mXEQ", "lncV7vWg"], "defaultValue": 0.7126738049981328, "description": "Hdfo07Uc", "incrementOnly": true, "maximum": 0.1944114317543666, "minimum": 0.7156937754677652, "name": "u4PWam1j", "setAsGlobal": true, "setBy": "SERVER", "statCode": "ETWjteoc", "tags": ["oO05oKqy", "8fgvZDDh", "mxLD1Lcv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'CreateStat' test.out

#- 42 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'ExportStats' test.out

#- 43 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'ImportStats' test.out

#- 44 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'w6T6mZEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'QueryStats' test.out

#- 45 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'wxxElpMY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetStat' test.out

#- 46 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'SWIeVzm7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'DeleteStat' test.out

#- 47 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'z9noowml' \
    --body '{"cycleIds": ["TIKVowi0", "NJREdUQ3", "RY2VN4ZO"], "defaultValue": 0.4091477191948064, "description": "9F1BxNNg", "name": "nke4aknc", "tags": ["w7wu9TmX", "Ns8eLzYE", "fJWBPrx9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'UpdateStat' test.out

#- 48 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'vwSWTaLQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteTiedStat' test.out

#- 49 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'jctvrK2j' \
    'hsYpKPlX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatCycleItems' test.out

#- 50 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'n77AtYoF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetUserStatItems' test.out

#- 51 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'zLAATPY8' \
    --body '[{"statCode": "P8P3cfoi"}, {"statCode": "vvQxevec"}, {"statCode": "Ww7Rry0K"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'BulkCreateUserStatItems' test.out

#- 52 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'K5rgAGO0' \
    --body '[{"inc": 0.0497392970116568, "statCode": "W8rX2MVU"}, {"inc": 0.5287246639318656, "statCode": "KSZ4GcLk"}, {"inc": 0.32041665068186076, "statCode": "4pK32sJx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItem1' test.out

#- 53 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'lZcCTpTd' \
    --body '[{"inc": 0.707384890876644, "statCode": "tCHvuk6B"}, {"inc": 0.9466627776046813, "statCode": "XTmSLyn5"}, {"inc": 0.8527406539673671, "statCode": "sigBVZxi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkIncUserStatItemValue1' test.out

#- 54 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'KdV57GvR' \
    --body '[{"statCode": "yd9UuL02"}, {"statCode": "Le8HSCsl"}, {"statCode": "sDd4M1F5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkResetUserStatItem1' test.out

#- 55 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'qRIblS7N' \
    'z81GRazP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'CreateUserStatItem' test.out

#- 56 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'AANjfBol' \
    'dFOyqA2c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteUserStatItems' test.out

#- 57 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'lJ5gEOaC' \
    'gM6Yn6Ru' \
    --body '{"inc": 0.10221643962445282}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'IncUserStatItemValue' test.out

#- 58 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'bNEIpGBF' \
    'UjOn5mM7' \
    --body '{"additionalData": {"k8nbLzvt": {}, "CIW5ynMK": {}, "quUicAeI": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'ResetUserStatItemValue' test.out

#- 59 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItems1' test.out

#- 60 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'VXtoWAXh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetGlobalStatItemByStatCode1' test.out

#- 61 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycles1' test.out

#- 62 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    'MlW4tLqX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetStatCycle1' test.out

#- 63 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    '7OICf5oD' \
    '1e6oI9Fm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkFetchStatItems1' test.out

#- 64 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.8083932364300985, "statCode": "el0kOw72", "userId": "o8Zkgk0j"}, {"inc": 0.7107793601115835, "statCode": "6rDWUwfh", "userId": "Kvrf2AaH"}, {"inc": 0.9093603740909836, "statCode": "yCWrHSpp", "userId": "nIZkNnTn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItem' test.out

#- 65 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.9018050473738652, "statCode": "rzH5NvAt", "userId": "cvNedgS1"}, {"inc": 0.08190680887637614, "statCode": "UfKmihDb", "userId": "mu8ePWlQ"}, {"inc": 0.6185845419008005, "statCode": "VDXEHeiG", "userId": "TnwyEw6h"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicBulkIncUserStatItemValue' test.out

#- 66 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "IWDZrpP7", "userId": "rz3ISW51"}, {"statCode": "0kHr4isT", "userId": "KWjmv67n"}, {"statCode": "uHCXWfwn", "userId": "wGioVwVz"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'BulkResetUserStatItem2' test.out

#- 67 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["mmBVVFfp", "cPJ3jtDY", "qx1AeLtz"], "defaultValue": 0.4445186083687356, "description": "o4FUTH7C", "incrementOnly": false, "maximum": 0.5894759341419679, "minimum": 0.14050112456077923, "name": "qaZD63xe", "setAsGlobal": true, "setBy": "SERVER", "statCode": "qSMzpqIF", "tags": ["C1RgBfoN", "rHlFi2qJ", "GLkDs7AC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateStat1' test.out

#- 68 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'LgmBLE35' \
    'YhyiDV90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetUserStatCycleItems1' test.out

#- 69 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'SeI5yppB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicQueryUserStatItems' test.out

#- 70 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'HoytVznC' \
    --body '[{"statCode": "gNyx9fbT"}, {"statCode": "63ShEh8P"}, {"statCode": "bGikLjgj"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicBulkCreateUserStatItems' test.out

#- 71 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'cj34uulU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicQueryUserStatItems1' test.out

#- 72 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    '6FYBZsWF' \
    --body '[{"inc": 0.025757093527904673, "statCode": "r3RSP0W9"}, {"inc": 0.21065685474309637, "statCode": "Bhvhf8Q0"}, {"inc": 0.4695862361482418, "statCode": "tJMcYQdN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicBulkIncUserStatItem1' test.out

#- 73 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '66bswAgt' \
    --body '[{"inc": 0.950886971007668, "statCode": "5X4N1LQZ"}, {"inc": 0.20809579704612013, "statCode": "B61JMdtw"}, {"inc": 0.4626419729859762, "statCode": "VUrYQue8"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'BulkIncUserStatItemValue2' test.out

#- 74 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '4dwmbwFE' \
    --body '[{"statCode": "nAZaWsQJ"}, {"statCode": "tRYoagRJ"}, {"statCode": "K5PX9UcO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'BulkResetUserStatItem3' test.out

#- 75 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'vhPyE11T' \
    'RT2SKseo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicCreateUserStatItem' test.out

#- 76 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'e8VLie0L' \
    'Ba36KNzj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteUserStatItems1' test.out

#- 77 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'f005CXNG' \
    'ehQ2aTjT' \
    --body '{"inc": 0.4837063558649929}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItem' test.out

#- 78 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'fKFDXC7e' \
    'GL5YhJDW' \
    --body '{"inc": 0.11717002845727575}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'PublicIncUserStatItemValue' test.out

#- 79 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    '9YWqc0qg' \
    'V6d9yOfI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'ResetUserStatItemValue1' test.out

#- 80 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"MLds2DbP": {}, "caoMdtRL": {}, "TmSvTkQQ": {}}, "additionalKey": "gB7exYvm", "statCode": "HMxr5hPC", "updateStrategy": "MIN", "userId": "ztJBg0tT", "value": 0.5713013959607043}, {"additionalData": {"g46IewOX": {}, "E2AkCh3Q": {}, "IZsUf8lG": {}}, "additionalKey": "FXcmwTER", "statCode": "HclOdxIw", "updateStrategy": "MIN", "userId": "WkLob9gK", "value": 0.60507275204439}, {"additionalData": {"qs2nEZhp": {}, "ByfHZinx": {}, "NfgPAwkM": {}}, "additionalKey": "BsznlBUq", "statCode": "nLT4AbGp", "updateStrategy": "MIN", "userId": "z0vJjFIY", "value": 0.7758843683362957}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkUpdateUserStatItemV2' test.out

#- 81 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'OaNdsimm' \
    '["kW2miH3x", "RHAKy4Qx", "ZkaXZ7vm"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkFetchOrDefaultStatItems1' test.out

#- 82 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'iEd0JPxV' \
    --body '[{"additionalData": {"yQpshaDw": {}, "NqTbbFMX": {}, "AMfVXe0G": {}}, "statCode": "ZeMgsRsm", "updateStrategy": "INCREMENT", "value": 0.856305629855329}, {"additionalData": {"EQrYmkPK": {}, "TPOlhTtS": {}, "iZNCxuog": {}}, "statCode": "FteTHJe4", "updateStrategy": "OVERRIDE", "value": 0.8586287730445936}, {"additionalData": {"57g00jr9": {}, "b8MuYmme": {}, "KTmBNvGY": {}}, "statCode": "xEQdf3ew", "updateStrategy": "MAX", "value": 0.061667625030858764}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkUpdateUserStatItem' test.out

#- 83 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'd36xj6wy' \
    --body '[{"additionalData": {"SoltDxsb": {}, "zxrlaKEf": {}, "koYjY2o6": {}}, "statCode": "ouRW9UtN"}, {"additionalData": {"quwC3Wgu": {}, "mrIz4NhG": {}, "ztZpr4U4": {}}, "statCode": "fwQIiLXg"}, {"additionalData": {"mRasvjO4": {}, "lj8m3XEw": {}, "P2b4gd3x": {}}, "statCode": "Oeii8Jnm"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkResetUserStatItemValues' test.out

#- 84 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'ssep2xD2' \
    'NY0kABeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'DeleteUserStatItems2' test.out

#- 85 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    's9yxahld' \
    '1pO0Gyf5' \
    --body '{"additionalData": {"PO3COyMv": {}, "czgEpzZ3": {}, "FbtxfhcR": {}}, "updateStrategy": "OVERRIDE", "value": 0.037712238457124125}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'UpdateUserStatItemValue' test.out

#- 86 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"MQ7dBsaI": {}, "ecRxIsZv": {}, "D6rmzVr5": {}}, "additionalKey": "XT1Nxw0v", "statCode": "1dMQ9Rrb", "updateStrategy": "MAX", "userId": "gc050XIZ", "value": 0.6995447375810669}, {"additionalData": {"W491e94m": {}, "QjVOOBnI": {}, "WhunElqZ": {}}, "additionalKey": "Uodp3Iht", "statCode": "CSHy1ei1", "updateStrategy": "INCREMENT", "userId": "m5x3B4t7", "value": 0.7843049886820924}, {"additionalData": {"Qnp8jXZe": {}, "dgt5cyNe": {}, "27HLtwtV": {}}, "additionalKey": "OaxgP6Jb", "statCode": "ct8puMyb", "updateStrategy": "INCREMENT", "userId": "GxD9IPmm", "value": 0.29299361650076183}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'BulkUpdateUserStatItem1' test.out

#- 87 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'Lmu3kaPj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'PublicQueryUserStatItems2' test.out

#- 88 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '0O4zd8Tb' \
    --body '[{"additionalData": {"7cUNGPTB": {}, "xiFFCrn7": {}, "djjs69FT": {}}, "statCode": "FVGUVhvK", "updateStrategy": "INCREMENT", "value": 0.0022124765486934983}, {"additionalData": {"v7MK0PcL": {}, "nEkcokKw": {}, "cQ0baDT9": {}}, "statCode": "OyJ2h23G", "updateStrategy": "MIN", "value": 0.8731701537088566}, {"additionalData": {"amU7syGl": {}, "ElXdEAOr": {}, "VSnLocLV": {}}, "statCode": "VYamQc4w", "updateStrategy": "INCREMENT", "value": 0.4408986980184152}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'BulkUpdateUserStatItem2' test.out

#- 89 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    '2yPlRpWj' \
    'mHZAAvKT' \
    --body '{"additionalData": {"H8MuqIg0": {}, "CzkguwuJ": {}, "CW7EEFB6": {}}, "updateStrategy": "OVERRIDE", "value": 0.43349467352846593}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
