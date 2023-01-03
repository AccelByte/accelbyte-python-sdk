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
social-update-namespace-slot-config --body '{"maxSlotSize": 85, "maxSlots": 12}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'igHuZK3U' --login_with_auth "Bearer foo"
social-update-user-slot-config 'GzGrjSUk' --body '{"maxSlotSize": 8, "maxSlots": 99}' --login_with_auth "Bearer foo"
social-delete-user-slot-config 'EnYw4wMZ' --login_with_auth "Bearer foo"
social-get-user-profiles 'Z5ru8Lgc' --login_with_auth "Bearer foo"
social-get-profile 'zPqbP40H' 'r7xnxwB4' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'ENDcf9Bs' --login_with_auth "Bearer foo"
social-get-slot-data '0AxkWCnK' 'QjuSvgvm' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["d9HR7N2N", "oqRkdeYF", "jUsJTJbS"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'KPefjYwL' --login_with_auth "Bearer foo"
social-public-create-profile 'RoUL5Ad6' --body '{"achievements": ["cPnyYNzB", "AJTe9yc9", "rdw4byiz"], "attributes": {"dmOVAiI5": "IFsDBL5H", "TfRxY6xp": "xtbFgRaT", "vSXCg379": "NkO7Ck4U"}, "avatarUrl": "4wciJAO9", "inventories": ["FZPuhJ0H", "15z7SbC6", "jDkbO7Ce"], "label": "s0zMB2JZ", "profileName": "ugxcZL2d", "statistics": ["FrPLYqCs", "x3ujL9hs", "LmYBPut8"], "tags": ["1ak9HbL7", "CaNyqp2J", "vP29dfzl"]}' --login_with_auth "Bearer foo"
social-public-get-profile '6A8lkJmF' 'DA6GYmsF' --login_with_auth "Bearer foo"
social-public-update-profile 'BnWwCW2T' 'utKgc0eX' --body '{"achievements": ["dqGMUdtX", "Tl48yBQX", "F9JPhhHL"], "attributes": {"s7N9jg3v": "fQD7A0sC", "smi9RKcj": "MOpBunk3", "mhjafK7B": "6Kd5sq6X"}, "avatarUrl": "9Y7mz9rk", "inventories": ["2uz5ZbC5", "v6WBnY5o", "WpxubJME"], "label": "nyfGNVzI", "profileName": "CQVAb7dD", "statistics": ["fl9zf3Xw", "omMHjlpY", "1kjhE2K1"], "tags": ["4kLhF689", "mSRgXM3c", "kFc7XHvU"]}' --login_with_auth "Bearer foo"
social-public-delete-profile '1AAz7aqS' '2ZuGRdUp' --login_with_auth "Bearer foo"
social-public-get-profile-attribute '4TEqIPfm' 'hSSLEEb9' 'szMm9R3G' --login_with_auth "Bearer foo"
social-public-update-attribute 'VhiTOwk9' 's04M8BND' '2o0Ph25X' --body '{"name": "37xKdq5N", "value": "cKaMhnwH"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'SjO8tOih' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot 'fmQ4DvIc' --login_with_auth "Bearer foo"
social-public-get-slot-data 'WUkRSCS8' 'DAH38nNj' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'sE8nQgNH' 'HMbHc1vZ' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'o7uCb4G6' 'vMX3b6PO' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'wPjHpPs0' 'mYhWfsCQ' --body '{"customAttribute": "8ClZg8gg", "label": "qmwoNQnz", "tags": ["ojfXJM4f", "vU79qp3M", "n0Gh4Txo"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code '1HE6GpRf' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'UcK84Fcy' 'VXgdSU9u' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.09005687222680603, "statCode": "Vsz6Q2TD", "userId": "dwFp63bp"}, {"inc": 0.3352501222784239, "statCode": "ZvzNEg79", "userId": "mxZjdhF6"}, {"inc": 0.7581050399295899, "statCode": "TSNpQfUd", "userId": "GOp7nHIq"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.4435675174068754, "statCode": "xPiq6h40", "userId": "zJ6KwsQW"}, {"inc": 0.5537835001300356, "statCode": "i9Ow4QCY", "userId": "odyBSwpk"}, {"inc": 0.4610383782336007, "statCode": "ETBDKlZj", "userId": "UDc1lIQF"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'DMX1kStl' '["3c9lM397", "7fzP9gx3", "pvwIZV82"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "0ZM2TNAN", "userId": "gkxvjr9H"}, {"statCode": "sBHgNEB8", "userId": "P8TEVPPC"}, {"statCode": "gG5HXwCh", "userId": "BpjMCteo"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.9768690574591617, "description": "EYZ86dmz", "incrementOnly": false, "maximum": 0.4328255563026153, "minimum": 0.8613263269175744, "name": "r1dADE5x", "setAsGlobal": true, "setBy": "SERVER", "statCode": "sCDIPC4G", "tags": ["GewVsCin", "HwFykxVN", "qfVunopj"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'wWp6Lq9g' --login_with_auth "Bearer foo"
social-get-stat '8k6QWZYo' --login_with_auth "Bearer foo"
social-delete-stat 'oeIVfWDw' --login_with_auth "Bearer foo"
social-update-stat 'Lv2SrLvy' --body '{"defaultValue": 0.015405810241600038, "description": "gVfL9CLL", "name": "0tVHLYuJ", "tags": ["tFgmPWLj", "wzVRGXgY", "TeYdbAzM"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'yOGCmMoC' --login_with_auth "Bearer foo"
social-get-user-stat-items 'B4MydoME' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'nQZ9vTvZ' --body '[{"statCode": "6qfRGWpu"}, {"statCode": "teM1Ahn3"}, {"statCode": "LhbM5MpQ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'C64nHnZP' --body '[{"inc": 0.3466273464563052, "statCode": "SZbhGXuh"}, {"inc": 0.6034002764626294, "statCode": "efyoQZZU"}, {"inc": 0.22041518528717918, "statCode": "kc0FE7vJ"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'R1OOVkN0' --body '[{"inc": 0.3918376896464326, "statCode": "dOlUamCV"}, {"inc": 0.4473928260295086, "statCode": "99vZnJxv"}, {"inc": 0.6300394230789431, "statCode": "8czlPvd7"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'VQ3COkmT' --body '[{"statCode": "pOpamuTf"}, {"statCode": "likBDrih"}, {"statCode": "I8wX8ya3"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'XXdkvKtV' 'L7KQ4GPc' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'PieFTxpu' 'A0ljuOhH' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'FlnZyubU' 'xq6lLQRT' --body '{"inc": 0.5435409096230306}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'OPgxq6O8' '97JEKtWv' --body '{"additionalData": {"3w5KHp3g": {}, "CkpCcOrb": {}, "LmUqb1ON": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'Lfucji0I' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'sAqFHf2Y' 'pgca9g20' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.36380845793830996, "statCode": "Mx1dv1El", "userId": "QIoDcqWH"}, {"inc": 0.6709068380749686, "statCode": "EYqrlthG", "userId": "ZLx0gN3g"}, {"inc": 0.02845261918573272, "statCode": "uWuL4IBl", "userId": "e80j8NRp"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.6877060222217399, "statCode": "I6gOcmvO", "userId": "JIhodWf2"}, {"inc": 0.9447286456225802, "statCode": "kg6ehxKM", "userId": "MUeCSV7T"}, {"inc": 0.8592355298905735, "statCode": "p5gfQkme", "userId": "dvF7Sip6"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "wAFsPunz", "userId": "PD8MSl5n"}, {"statCode": "kHZjRtSj", "userId": "Srm92pPw"}, {"statCode": "Q16YDjLK", "userId": "W0kKis25"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.5720898681923343, "description": "7LpAZ5h7", "incrementOnly": false, "maximum": 0.2127179306922501, "minimum": 0.6176186497708321, "name": "brdjyR5R", "setAsGlobal": false, "setBy": "SERVER", "statCode": "YhyQj72z", "tags": ["XRb7sSl2", "6vuyo6dh", "OVsOFO9W"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'jff0r134' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'IdhklRUc' --body '[{"statCode": "ev8hnzVA"}, {"statCode": "90AMDeUm"}, {"statCode": "kZptChPv"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'kz3ZmjHe' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 '2z7O7zFd' --body '[{"inc": 0.2697113891689986, "statCode": "CMSzjSVv"}, {"inc": 0.8049759235081222, "statCode": "wU3pPfcc"}, {"inc": 0.22789295458969216, "statCode": "tKIgCBX0"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'VCuGb5W6' --body '[{"inc": 0.42163239357010684, "statCode": "6oILu3Re"}, {"inc": 0.32525016804570683, "statCode": "W1mJ765F"}, {"inc": 0.6884397521334095, "statCode": "5Wk1HQxS"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'YjghHkIb' --body '[{"statCode": "t235HFbY"}, {"statCode": "FGPnRRba"}, {"statCode": "B1qcdxhV"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item '34CDeQwn' '22NBykzt' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'b4h4UuEl' 'h7LWCQ0A' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item '6Lo6NS0w' 'dPiVBMAQ' --body '{"inc": 0.8440967865053827}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'f0fq5c7w' 'bAqw3pVz' --body '{"inc": 0.21577984540649908}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'wCdX0qHD' 'e0eG9ZNh' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"7erGbmkF": {}, "D1LAvlGj": {}, "RVt2PG4p": {}}, "additionalKey": "8ndghKYJ", "statCode": "BQSKQMqZ", "updateStrategy": "MAX", "userId": "kGL3O4We", "value": 0.7090451864545922}, {"additionalData": {"89LYAfvB": {}, "qZvxiXBP": {}, "sZGTlq2p": {}}, "additionalKey": "VnPBUWjr", "statCode": "kYGlCjlD", "updateStrategy": "OVERRIDE", "userId": "hyLBs6vA", "value": 0.8703900089463684}, {"additionalData": {"rvsBySFy": {}, "p5RXB9ZV": {}, "tXkGSllp": {}}, "additionalKey": "QZn8YVAg", "statCode": "GCtjPhwf", "updateStrategy": "INCREMENT", "userId": "Qd4WHYDO", "value": 0.935184358237649}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'KB0fS3d7' '["2CErSXRq", "cLoQiwXN", "uoTsTCIN"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'kQVe3SX8' --body '[{"additionalData": {"KYGvPVes": {}, "8zn5PLq2": {}, "nR3luwZ5": {}}, "statCode": "DnEP3stk", "updateStrategy": "INCREMENT", "value": 0.8654711273707938}, {"additionalData": {"W2j29jta": {}, "mMZSo7ps": {}, "YQseCyY1": {}}, "statCode": "Ng7btahC", "updateStrategy": "INCREMENT", "value": 0.9570285103976852}, {"additionalData": {"AtXsqId9": {}, "wijzEtq1": {}, "7DDNmk19": {}}, "statCode": "WbDS3YYm", "updateStrategy": "INCREMENT", "value": 0.9252565404522238}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'LkpPcMRn' --body '[{"additionalData": {"DZKzLOQ5": {}, "e0H6MJp5": {}, "FeTzlZqE": {}}, "statCode": "eGjJy2N9"}, {"additionalData": {"Ovm5Lvx8": {}, "NiCLAaQn": {}, "uGeGAA9q": {}}, "statCode": "ukWZ5PhS"}, {"additionalData": {"oxBI05Zy": {}, "ZRfiNCWs": {}, "5B3jb8tR": {}}, "statCode": "yGxI0WeX"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'SfPHMyWU' 'zTLAfloU' --login_with_auth "Bearer foo"
social-update-user-stat-item-value '0LHbRTjj' 'bFnApqvG' --body '{"additionalData": {"AMP609fL": {}, "iSrMw5yg": {}, "GRNBMlUy": {}}, "updateStrategy": "INCREMENT", "value": 0.8694667025188164}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"ZQzmjEKz": {}, "wDoD1hK2": {}, "fN7Xgbu2": {}}, "additionalKey": "7wOrb74n", "statCode": "zHH2e5wo", "updateStrategy": "MIN", "userId": "KV0UY93V", "value": 0.1528039310573145}, {"additionalData": {"HU84l5S7": {}, "n9rfczVq": {}, "o8yLkFeW": {}}, "additionalKey": "sy8HguNO", "statCode": "cMHRPjgI", "updateStrategy": "MAX", "userId": "1KNUeFlP", "value": 0.9644368478041607}, {"additionalData": {"2uOXeFPJ": {}, "wJ1MQbpR": {}, "NuE0uXm7": {}}, "additionalKey": "aRgkUsuI", "statCode": "gy0Ocq77", "updateStrategy": "MAX", "userId": "87HzYFK8", "value": 0.38779641327886794}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'ek6BjU4g' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'CxKfSHv3' --body '[{"additionalData": {"yJpNBYSe": {}, "0Wt0j3sg": {}, "Q3i3OvY1": {}}, "statCode": "aBSEEzbx", "updateStrategy": "MIN", "value": 0.8326743051774198}, {"additionalData": {"QNaA5DMS": {}, "W4hSNT5A": {}, "ObfM1hK9": {}}, "statCode": "0c5UoGhe", "updateStrategy": "MAX", "value": 0.09599377445438773}, {"additionalData": {"JdOE1Ba9": {}, "yBh7DeWf": {}, "Ywt0LJrJ": {}}, "statCode": "s6Xynz1B", "updateStrategy": "MAX", "value": 0.2319062450262921}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'r7CtTZV8' 'cuqrRbX9' --body '{"additionalData": {"TPdogHXe": {}, "RF8XrBK1": {}, "QXE7HUMk": {}}, "updateStrategy": "MIN", "value": 0.2731792852746886}' --login_with_auth "Bearer foo"
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
echo "1..78"

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
    --body '{"maxSlotSize": 46, "maxSlots": 3}' \
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
    'RaLcrzkt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'zcd9plva' \
    --body '{"maxSlotSize": 31, "maxSlots": 21}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'PZYr5jna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    '0a3aUOdc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '5hcfL2ws' \
    '2FuVhJsl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'NNxSpDdR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'TP2Zkm3G' \
    'JSjj5rud' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["FFrM4EQL", "S8qhgfWQ", "x5EoOOt2"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'OtFAyyLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'KaMy7Jxy' \
    --body '{"achievements": ["3KRAwQXj", "o8vfFFro", "xnClsd2z"], "attributes": {"YyDVDgJb": "zoHDtP6v", "FJTJljoH": "YEm7GIRo", "FuC5bD6c": "PwlPbxNe"}, "avatarUrl": "hu8wyUZV", "inventories": ["CjKKxNX4", "Gn52b3Om", "VOBctfGC"], "label": "4FRKXDO8", "profileName": "OQmfNxBJ", "statistics": ["RyJu2PQw", "IOyR3T1n", "U6c9sFps"], "tags": ["Zm7A2Ne8", "JevKwSkl", "DLPlCJrG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'pB60Wci6' \
    'vuWyh1pR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'tn0wFJ7m' \
    '6K57EhuQ' \
    --body '{"achievements": ["ntdfjUMY", "mAJnJH3w", "VCW77qZl"], "attributes": {"3nfUdwyb": "nWQWKmz9", "sIkb7IOZ": "NZ1kOl9T", "Y29huz3g": "ZMNAYFtj"}, "avatarUrl": "5dIGXNET", "inventories": ["6iMBachO", "eCeCau4p", "G7lwJUau"], "label": "bu2uAOY1", "profileName": "eRONswf7", "statistics": ["Z0wo1o6j", "Fx8gS5zi", "TCrk0KV7"], "tags": ["16TOCfjz", "eLPTVb97", "1K44ZCUm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'S2r8JgT6' \
    'XQA7r1ma' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'SDzMGEVl' \
    'R5C4ggPP' \
    'VvAyftRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'LhaSyqeb' \
    'Ws5YN3C6' \
    'WoK0Pe87' \
    --body '{"name": "jzdjQOQr", "value": "6HoBVcuS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    '8HRm77ZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    '8NHgrGyZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'R8ubf36X' \
    'BufWDefQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    '1WqkxdJq' \
    'QJPliIGU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'VMt8v0Ue' \
    'lzNewNXD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    '4tVt67L1' \
    'CeRlr6Fw' \
    --body '{"customAttribute": "ZUDU7Pft", "label": "NLzhiXuZ", "tags": ["ct8tcEqQ", "vurLvi0I", "2kruDhyk"]}' \
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
    'SR4tBx91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'QMR3i1Mt' \
    'rglDZzPg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.9703231374378327, "statCode": "AY4rNRjC", "userId": "q2t2vsKJ"}, {"inc": 0.6646691191500379, "statCode": "yaYLKyPu", "userId": "J12yNT1r"}, {"inc": 0.36436187848298796, "statCode": "o81fUXxY", "userId": "OufO7AGr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6452070552461044, "statCode": "anWQwKUm", "userId": "CMoln92q"}, {"inc": 0.3384936607692294, "statCode": "wGxl0ah2", "userId": "nLxKVV0Q"}, {"inc": 0.1124349802941107, "statCode": "e08hAVoJ", "userId": "tKRnLk7v"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'Vq0OXgGz' \
    '["gjQg0oRE", "BRfyTf7H", "7Ckhb3H3"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "JbfsU2DG", "userId": "JtxP0bMp"}, {"statCode": "sYKihfis", "userId": "FqlBckeS"}, {"statCode": "mXdVd84L", "userId": "OUqXvjka"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'BulkResetUserStatItem' test.out

#- 33 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetStats' test.out

#- 34 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"defaultValue": 0.7554492722578267, "description": "c4Om0S2F", "incrementOnly": true, "maximum": 0.46822262922985125, "minimum": 0.20555864275703872, "name": "FxRoTMR2", "setAsGlobal": false, "setBy": "SERVER", "statCode": "MPOf5Isa", "tags": ["vaJjToPV", "hAzcoQ48", "xAroC203"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreateStat' test.out

#- 35 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ExportStats' test.out

#- 36 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ImportStats' test.out

#- 37 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'WghZC0fC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'VzuYqWwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'sMcNXwzC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'MrKdeS0o' \
    --body '{"defaultValue": 0.3156112829880554, "description": "9PnxW0K0", "name": "dA3teo4y", "tags": ["83MMrM2T", "YbMEYVfp", "J6NKB5td"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'I3yuUs4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    '4dSPwjFY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'ELdCyMUB' \
    --body '[{"statCode": "0ewfqkMG"}, {"statCode": "SkKJZmiE"}, {"statCode": "BVxktYQu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'x0t15anL' \
    --body '[{"inc": 0.02768235772737926, "statCode": "oXNWH3rx"}, {"inc": 0.5875658948105541, "statCode": "chbTB9nZ"}, {"inc": 0.41159572330401195, "statCode": "4Ww0Ejfc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'JwojWXUD' \
    --body '[{"inc": 0.1306527338746517, "statCode": "eHPjIpkK"}, {"inc": 0.805582624057711, "statCode": "sDGvSoar"}, {"inc": 0.15086886244923325, "statCode": "V9evPerb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'a3kl4J1g' \
    --body '[{"statCode": "iOo5FXDY"}, {"statCode": "bpGQPJok"}, {"statCode": "zXIhyHzQ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'oh03jGg6' \
    'JpDlaunb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    '3quRX0Y5' \
    '4I1ejptg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'aHdqYmGJ' \
    'ytgvmOhs' \
    --body '{"inc": 0.7697145039048334}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'dzKgHhNn' \
    '4RVHKjrY' \
    --body '{"additionalData": {"w1ditwYE": {}, "RCbBbgWf": {}, "Y0XdX1S5": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'ResetUserStatItemValue' test.out

#- 51 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetGlobalStatItems1' test.out

#- 52 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'MDPZTdXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'Ft3vbXwN' \
    'VY87SFvf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.7808388526507537, "statCode": "YYoQKIbr", "userId": "j6p5NexY"}, {"inc": 0.2106206349183981, "statCode": "PNgpu7HZ", "userId": "eJdxRyGX"}, {"inc": 0.5490386664208744, "statCode": "HZrw0lK1", "userId": "LOwJ4qSc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.21398836077399452, "statCode": "HgCumIjH", "userId": "ZdrrhMoB"}, {"inc": 0.022245917083733024, "statCode": "HMLASlEd", "userId": "JfVtoYP4"}, {"inc": 0.38223055374634207, "statCode": "Z9xFEUd3", "userId": "l220D04f"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "BP9kRM2o", "userId": "2w4qOUOi"}, {"statCode": "T7nmQhyb", "userId": "zNkdDKXW"}, {"statCode": "lnqehVbd", "userId": "aYsFgLsW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.23231981206543895, "description": "0vY6dI3l", "incrementOnly": false, "maximum": 0.9326181353979693, "minimum": 0.8720571836104188, "name": "LaG1j6qN", "setAsGlobal": false, "setBy": "SERVER", "statCode": "y257MTw8", "tags": ["P0eCucQN", "goaqLd8j", "7jv8V6iI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'MQagu6yJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'WRfoq5Fq' \
    --body '[{"statCode": "o1uXeuEX"}, {"statCode": "whNOWP2x"}, {"statCode": "V5l2ooEu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'hZVrerdG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'v3DniQuH' \
    --body '[{"inc": 0.641359819731977, "statCode": "41wn9Rcr"}, {"inc": 0.25191104527255126, "statCode": "aZbTmfrm"}, {"inc": 0.4681173639422572, "statCode": "hThUBUCG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    '6rmsjM7j' \
    --body '[{"inc": 0.7289070649294281, "statCode": "BJhiLY6Y"}, {"inc": 0.20442376085760228, "statCode": "A706E6hm"}, {"inc": 0.03033837921443705, "statCode": "jHq6Gx2L"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '9dVAe9nv' \
    --body '[{"statCode": "vHgf2BLE"}, {"statCode": "fOMcl9lX"}, {"statCode": "ePND3ty1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'ZtZbVZjQ' \
    'M0LBIB4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '5NMx0s8J' \
    'HR4iAA0m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'BaLPadQe' \
    'dINC5bqk' \
    --body '{"inc": 0.6898635667491475}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'BJYB2kJu' \
    'tK0fQJUI' \
    --body '{"inc": 0.45301941854244443}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'x9gLbB6V' \
    '2vTDJvy8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"PVlubSPS": {}, "ilKDOFia": {}, "4xPEZsfe": {}}, "additionalKey": "Mo3dgADc", "statCode": "3VW9M95B", "updateStrategy": "OVERRIDE", "userId": "Nz69gN52", "value": 0.010888413583460155}, {"additionalData": {"rStVbJn9": {}, "BsshGlB1": {}, "azT3RXzF": {}}, "additionalKey": "UCSWWIgW", "statCode": "cIgVL4fS", "updateStrategy": "INCREMENT", "userId": "cp815X3l", "value": 0.26768859179534266}, {"additionalData": {"0RnlGq2v": {}, "VwNfclon": {}, "BNAfzKyB": {}}, "additionalKey": "4TW7bCdb", "statCode": "Mwmd3l7U", "updateStrategy": "MAX", "userId": "vDL9JHLo", "value": 0.9398353835483144}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'cUdUDayj' \
    '["wM3LVMMl", "snyrvFWr", "zlP5U0Qh"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'xQr4OtKA' \
    --body '[{"additionalData": {"JARn6dTc": {}, "jjQco7D3": {}, "rTwNMgm5": {}}, "statCode": "6D6BiFgm", "updateStrategy": "OVERRIDE", "value": 0.3881305763888214}, {"additionalData": {"hTtpAnKR": {}, "hjz67SXi": {}, "yvBxnr5N": {}}, "statCode": "n7sjfGLD", "updateStrategy": "MAX", "value": 0.35367471111994986}, {"additionalData": {"dHDUzOkJ": {}, "N7XE5JGh": {}, "3SNZKWqN": {}}, "statCode": "dQSzrgKj", "updateStrategy": "MAX", "value": 0.1582098964886185}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'QI5P8Lge' \
    --body '[{"additionalData": {"N7icdqU0": {}, "9Hguk7s8": {}, "BOzmQdJ7": {}}, "statCode": "3Redxh6B"}, {"additionalData": {"LJWVVs5s": {}, "RSsQ7TDU": {}, "odpSGcYO": {}}, "statCode": "CevIes7e"}, {"additionalData": {"8zzvNzjg": {}, "XAWyz3tB": {}, "sk59tsS1": {}}, "statCode": "KUz47w3y"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'SmLBOrqU' \
    'Xg8RYpNd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'VZ3Qk9We' \
    'kAtngWRb' \
    --body '{"additionalData": {"kr3wzw75": {}, "2jdEK6sB": {}, "F1EnfNzd": {}}, "updateStrategy": "OVERRIDE", "value": 0.3765561524158627}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"OVhLSFGz": {}, "3dEDm0ag": {}, "N01yJBgo": {}}, "additionalKey": "mbdeRuhU", "statCode": "K9APEpML", "updateStrategy": "MIN", "userId": "2OPfQKB6", "value": 0.6396590783446404}, {"additionalData": {"YMDMJ0mT": {}, "8x6937Td": {}, "3tQuVR3H": {}}, "additionalKey": "YYojXTH3", "statCode": "vPZ5B0Wf", "updateStrategy": "INCREMENT", "userId": "EvGkhOIv", "value": 0.4018703421986687}, {"additionalData": {"4oyQxzez": {}, "DqBbnX8F": {}, "QsaTjBSk": {}}, "additionalKey": "dHyLDDD6", "statCode": "jrvyXMZH", "updateStrategy": "INCREMENT", "userId": "j9aeMKd6", "value": 0.02599432368631216}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'B5PRyeIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'SIlnCOkS' \
    --body '[{"additionalData": {"a09zIU6h": {}, "PSLPmAvd": {}, "gInWKVSh": {}}, "statCode": "X5BJgpeT", "updateStrategy": "MAX", "value": 0.8641913910939971}, {"additionalData": {"dCzXOQBD": {}, "qZt0M5RJ": {}, "JvTR0yfy": {}}, "statCode": "dkasU0C4", "updateStrategy": "OVERRIDE", "value": 0.3633267514124122}, {"additionalData": {"VwSm3wOp": {}, "CuUfDFxc": {}, "FqCVPT3H": {}}, "statCode": "AstZCCNQ", "updateStrategy": "OVERRIDE", "value": 0.3538605794497369}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'OGXyvNj5' \
    'V9Lf7pvd' \
    --body '{"additionalData": {"60Mho0zW": {}, "yExF3qcK": {}, "hhpGCmw7": {}}, "updateStrategy": "INCREMENT", "value": 0.6321940126489266}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
