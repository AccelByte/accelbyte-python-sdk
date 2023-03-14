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
social-bulk-fetch-stat-items 'rvjj7il3' '5MXbN9oC' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.6227068024853574, "statCode": "Nqq98SjT", "userId": "vhZNkSQ7"}, {"inc": 0.8490967372916248, "statCode": "D0H6BXks", "userId": "UC9b6i5l"}, {"inc": 0.8277215752080701, "statCode": "C9xv32e8", "userId": "c5csSovo"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.27063695102091945, "statCode": "sZNBdte9", "userId": "NDUPVJf6"}, {"inc": 0.043303642635736384, "statCode": "2Z0QZxfg", "userId": "PubTDIHr"}, {"inc": 0.34789962046331446, "statCode": "qAThuwjR", "userId": "HpKKTlmV"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'r9XuoJbR' '["FQSKVPHb", "n4Xxtu7L", "QRENjEEz"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "tx1WsYSi", "userId": "Zqan0nSB"}, {"statCode": "Jroav91G", "userId": "XlvPG6bF"}, {"statCode": "YReVHQip", "userId": "cCx9Zw5D"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"cycleIds": ["2L7vIYhG", "GSyEW4ZJ", "J42d3PBd"], "defaultValue": 0.051252933112565846, "description": "N8S48l9l", "incrementOnly": true, "maximum": 0.13862059000749627, "minimum": 0.8109767171013109, "name": "nNjkfZrQ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "gbLdLsFz", "tags": ["OMlNFSrU", "HkBMr1yr", "EirnjX9f"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'DmIbeZxz' --login_with_auth "Bearer foo"
social-get-stat 'fTcyiuAT' --login_with_auth "Bearer foo"
social-delete-stat 'us9hsfpF' --login_with_auth "Bearer foo"
social-update-stat 'DcSDG8aM' --body '{"cycleIds": ["LXpUL4pp", "VGLiBNrD", "jqoxcwgG"], "defaultValue": 0.8812185921624087, "description": "ncYAHdNz", "name": "DmeIP6rO", "tags": ["vDz9KOsb", "392k6YmJ", "FfRByjlB"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'iuFM3FIo' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items 'Vk8T3GpA' 'nkCmBUqg' --login_with_auth "Bearer foo"
social-get-user-stat-items '2SCnqntX' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '9y1aZSWM' --body '[{"statCode": "iVi10sG6"}, {"statCode": "vxkfUcmq"}, {"statCode": "RRbceJ5i"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 '0EeDxOgB' --body '[{"inc": 0.20968845087351928, "statCode": "hhqElIaD"}, {"inc": 0.2021537064921688, "statCode": "l48wdNFL"}, {"inc": 0.7326053708884676, "statCode": "m5T50x9W"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'T0GfH2rt' --body '[{"inc": 0.6465322685008816, "statCode": "a4EXsXzO"}, {"inc": 0.8001487813694237, "statCode": "QAk4mqrx"}, {"inc": 0.41126101701039086, "statCode": "TtuLl4Xl"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'bGL8QOxt' --body '[{"statCode": "jzm8y2wN"}, {"statCode": "hmwoYZyI"}, {"statCode": "4EFZKBcY"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'rCEAE7WI' 'sfmx40NL' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'Rc6m8heK' 'nWhzfe2N' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'ubeoKFeI' 'aFQCYoDP' --body '{"inc": 0.5525469031238478}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'CpnduEEQ' 'lULdJz4m' --body '{"additionalData": {"nRBkMNxv": {}, "vKgAT8mJ": {}, "rYq6hRkl": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'oqxM3gpw' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'xcfMy9Xz' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'jjI5YbsK' 'oADkzJEN' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.8840609131600015, "statCode": "VHzih3bi", "userId": "t0VWn3CO"}, {"inc": 0.8935408572997413, "statCode": "9PXDNxtX", "userId": "geO3FgkX"}, {"inc": 0.11575961865830986, "statCode": "jDzaQY3s", "userId": "nn2ZkP7c"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.512422350254825, "statCode": "dP43e5dC", "userId": "9XIBudfZ"}, {"inc": 0.1040664866361769, "statCode": "rbHDIDm4", "userId": "hMzF4Txo"}, {"inc": 0.05926851522321319, "statCode": "enSrUTvf", "userId": "qU0bfoMm"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "5cTtFWbo", "userId": "tQyXJRcQ"}, {"statCode": "WsmqPNs9", "userId": "2epxk0i8"}, {"statCode": "VxsZNere", "userId": "Svf9699m"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["CEHThUJk", "h4TeUTkO", "ETAsSp7g"], "defaultValue": 0.16434214115653878, "description": "AYfJB8AT", "incrementOnly": false, "maximum": 0.32113046654539534, "minimum": 0.9163011907852563, "name": "Tv207Y2Q", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "3oD5fLCr", "tags": ["zpipNDig", "3OOlXVv8", "ZGF7uYnG"]}' --login_with_auth "Bearer foo"
social-get-user-stat-cycle-items-1 'NJma1Mbq' 'qZtfNWql' --login_with_auth "Bearer foo"
social-public-query-user-stat-items '4nmwAft4' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'gqkNNlWk' --body '[{"statCode": "D9eOziYR"}, {"statCode": "FOn0jJLH"}, {"statCode": "C9LxhvNX"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'TwGBCtoh' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'Ltl9Zuhy' --body '[{"inc": 0.3126554360111864, "statCode": "m5UDrT6Q"}, {"inc": 0.7926669773239001, "statCode": "Cs5SPBbR"}, {"inc": 0.6635420470158827, "statCode": "ZTF6oQAX"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'VG7tnsZg' --body '[{"inc": 0.9240994134230933, "statCode": "QgXjvyGJ"}, {"inc": 0.6647793779918395, "statCode": "N4eXbJE5"}, {"inc": 0.7582042857393838, "statCode": "s2GcyomQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'oIXimBJe' --body '[{"statCode": "hyxlNsjU"}, {"statCode": "gxBkF6wF"}, {"statCode": "PoJeQedi"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'ogEhhM2r' 'IizGdKvO' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'Pdq5xrgx' 'Smy1DN9L' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'FkYW5DQy' 'j4bj5Ro2' --body '{"inc": 0.2401726092984704}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'gaKt2ujQ' 'Sa3Zdb65' --body '{"inc": 0.7506315120843542}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'Xmy0Zp6i' 'IaTIKUkm' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"kk9QM0NB": {}, "MA9ORxpz": {}, "wLR2AK6e": {}}, "additionalKey": "XUGPJsw1", "statCode": "fiP80G9P", "updateStrategy": "INCREMENT", "userId": "CCFrHHC3", "value": 0.47978763699060545}, {"additionalData": {"pZxkrQDX": {}, "uNFviMar": {}, "v8mnfHK8": {}}, "additionalKey": "CCmE2lPn", "statCode": "sbD3SGEd", "updateStrategy": "MAX", "userId": "1MiaI1mX", "value": 0.8867623801637559}, {"additionalData": {"tJoARtdb": {}, "Be7udsMr": {}, "ok0WvGYY": {}}, "additionalKey": "nx4V709x", "statCode": "bnGezKsD", "updateStrategy": "MIN", "userId": "H24T805t", "value": 0.7678686033963876}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'g8JqU0jZ' '["pjvsugAO", "S7u8RiWy", "erCSa8SR"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'gwsAj1ik' --body '[{"additionalData": {"1jglaDXT": {}, "vKCWwNTA": {}, "hd2wrS0u": {}}, "statCode": "Pdjhdinp", "updateStrategy": "MAX", "value": 0.3679480932823531}, {"additionalData": {"VBOqOHi8": {}, "pWGd1juY": {}, "hiqjRJOq": {}}, "statCode": "B5F93zFQ", "updateStrategy": "INCREMENT", "value": 0.9769106252403886}, {"additionalData": {"8YbCtmKy": {}, "8M9zVrjf": {}, "GXZnqAQU": {}}, "statCode": "oY1GjlII", "updateStrategy": "MAX", "value": 0.8276900264802619}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'p50CnPb7' --body '[{"additionalData": {"1ORYcmQb": {}, "TU5JX8cc": {}, "LjMXJRk0": {}}, "statCode": "eaKQDOJv"}, {"additionalData": {"rTefglSs": {}, "6g4iY9u0": {}, "2aCNYIWe": {}}, "statCode": "kp18lOC3"}, {"additionalData": {"mNqF7Bl0": {}, "LcghVHfP": {}, "EspxwhRO": {}}, "statCode": "N0bc1eMb"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'EIjowLqc' '3ecjXJbZ' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'DKKoxLE1' 'Y3Dymtj3' --body '{"additionalData": {"giPg4x4y": {}, "iPX6ues1": {}, "Hhhkg1yL": {}}, "updateStrategy": "INCREMENT", "value": 0.018106751453440317}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"LFzHEP8c": {}, "M4NTwr0K": {}, "HaAsmTej": {}}, "additionalKey": "52WKi6tA", "statCode": "rAURt9pl", "updateStrategy": "OVERRIDE", "userId": "vJBWic7U", "value": 0.170458064416405}, {"additionalData": {"BeIXuqDu": {}, "AXI66bQ7": {}, "1w0deoV9": {}}, "additionalKey": "Lx5RDA1l", "statCode": "2XcrciYN", "updateStrategy": "OVERRIDE", "userId": "ZGCHsZYo", "value": 0.5986448132390705}, {"additionalData": {"fR1KtOv7": {}, "Zy0b65uv": {}, "uKNuy0yt": {}}, "additionalKey": "ZQ7M6Nzy", "statCode": "1adnSKOL", "updateStrategy": "OVERRIDE", "userId": "ElW9YfRS", "value": 0.29517676180647223}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'e6AAz3S4' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'czz0QKFl' --body '[{"additionalData": {"AVmVLu4A": {}, "Oec0z8eB": {}, "eeoip68J": {}}, "statCode": "1nsv4W2O", "updateStrategy": "INCREMENT", "value": 0.11855060097451464}, {"additionalData": {"741IslKH": {}, "zGlLKWUt": {}, "DQs61OQA": {}}, "statCode": "oxyyQpRW", "updateStrategy": "OVERRIDE", "value": 0.6292415196930127}, {"additionalData": {"D2tcBFpX": {}, "8lNtFEJ7": {}, "tnkY6Mca": {}}, "statCode": "5afj12K2", "updateStrategy": "OVERRIDE", "value": 0.1722223407530803}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'E8jKvgat' 'OEBM70Td' --body '{"additionalData": {"lNBJYOmp": {}, "u1VCarzB": {}, "sV6xnZ5J": {}}, "updateStrategy": "MIN", "value": 0.07667599926849034}' --login_with_auth "Bearer foo"
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
echo "1..88"

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
    --body '{"maxSlotSize": 52, "maxSlots": 87}' \
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
    'jrcaug6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'WVG8SWP3' \
    --body '{"maxSlotSize": 12, "maxSlots": 6}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'lU6muswV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'JnNnN7kA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'a7j0riFc' \
    '5HTHQIoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'sGo7dwV9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'DBqFKHQk' \
    'ETJyTlUr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["wDTnoujQ", "D4IEiH9Z", "5qXn3aoR"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'tlqOECoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'ViHA5Czg' \
    --body '{"achievements": ["FSy8X1A3", "PrIfapq5", "AAeMe4L3"], "attributes": {"mDWORBVX": "TIIJM9Xs", "YIIZxiXN": "MR9BgaWc", "FX3SUBhy": "oTsMWPAx"}, "avatarUrl": "UMkawaGp", "inventories": ["AyrIwMif", "3BOdkocV", "Td4BxqGW"], "label": "V6mTJ0sQ", "profileName": "s6XNbjvq", "statistics": ["hnUVLWu8", "olKdxL6o", "zRmDD0jJ"], "tags": ["vlfV5Oem", "PYdYT7DR", "OCjtuzFM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'bAG9YI89' \
    'hmguB8FO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'TjMLo4b9' \
    'rIzqYkEp' \
    --body '{"achievements": ["styVTBcr", "M8rG0rH0", "zcswwVeM"], "attributes": {"K6MbGIVI": "u8vvwLc7", "KY3uVoJX": "TIMtpgki", "eDyF97lG": "dMiHKxbW"}, "avatarUrl": "CYzo8yO2", "inventories": ["KTK9tmmO", "nYnOpas6", "ghP1y4Zi"], "label": "7s7QBlk4", "profileName": "4Z44B1GZ", "statistics": ["gKg4uKxa", "CgcGLuC3", "brWdTYCf"], "tags": ["HkIySok5", "DiXZtLW8", "7rGysryo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'd3dNQrms' \
    'ApRA6HX3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'RwrKt2ec' \
    'ozL0TOg5' \
    '4vCE48L5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'oLF6M4lN' \
    'a4JUMSHN' \
    'gqRqCV7u' \
    --body '{"name": "samANkZl", "value": "OX9Sfo95"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'HgXqKhTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'kwfLM9uS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'ybRzWek2' \
    'gZvRrvr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'n9d9lvcc' \
    'KMLhrTrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'BE2ItBS3' \
    'KtKZWe8a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'oFzAyBME' \
    '74HUtipU' \
    --body '{"customAttribute": "WYhWV1qx", "label": "8CzPML52", "tags": ["faXUr9Sk", "4lq2faBc", "AXXKlhvy"]}' \
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
    'H8paOJtx' \
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
    --body '{"cycleType": "MONTHLY", "description": "DTk8aG40", "end": "1991-11-17T00:00:00Z", "name": "lncceIZS", "resetDate": 46, "resetDay": 35, "resetMonth": 12, "resetTime": "KEDpEY8V", "seasonPeriod": 28, "start": "1994-04-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'U0Am4DZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'l0bQxFJ3' \
    --body '{"cycleType": "MONTHLY", "description": "GKXphn50", "end": "1972-01-10T00:00:00Z", "name": "9tNLDljh", "resetDate": 88, "resetDay": 20, "resetMonth": 33, "resetTime": "xLRX3z46", "seasonPeriod": 84, "start": "1985-08-18T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    '5BUXvjcu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    '2s6w3Vif' \
    --body '{"statCodes": ["nKqmTSoG", "H1XEfY6Q", "AYn6WQ5U"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'BEU1QAOH' \
    'fZiGhxOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.03366542150694796, "statCode": "uDXSxSc3", "userId": "aZPV87pn"}, {"inc": 0.0014089493314545232, "statCode": "08gxefTY", "userId": "KhuxaEc7"}, {"inc": 0.6179768993504271, "statCode": "4P7UckSC", "userId": "6ePeN8i4"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.5286725271358397, "statCode": "rFES9z7x", "userId": "ueHpATHc"}, {"inc": 0.041688705035921036, "statCode": "ee9GXhKc", "userId": "jmSEwdrk"}, {"inc": 0.4983445872088288, "statCode": "nnqKzFsL", "userId": "fYalUlfw"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'EQKjU7eH' \
    '["GebSVu0L", "Q40kepEa", "C4dfiOMZ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "fEhHr39p", "userId": "ysFO3Zvc"}, {"statCode": "1BZG99Ly", "userId": "vfvHEsJK"}, {"statCode": "QQewVLMU", "userId": "oAnaRcYp"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'BulkResetUserStatItem' test.out

#- 39 GetStats
$PYTHON -m $MODULE 'social-get-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetStats' test.out

#- 40 CreateStat
$PYTHON -m $MODULE 'social-create-stat' \
    --body '{"cycleIds": ["7FUjfIGa", "ffoflEIB", "yYqeKN0m"], "defaultValue": 0.06538893879405494, "description": "GelYF5wW", "incrementOnly": false, "maximum": 0.976033616599599, "minimum": 0.005467192276089605, "name": "lncV7vWg", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "ZFTYnPkm", "tags": ["Su4PWam1", "jxR7SETW", "jteoc8fg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'CreateStat' test.out

#- 41 ExportStats
$PYTHON -m $MODULE 'social-export-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'ExportStats' test.out

#- 42 ImportStats
$PYTHON -m $MODULE 'social-import-stats' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'ImportStats' test.out

#- 43 QueryStats
$PYTHON -m $MODULE 'social-query-stats' \
    'vZDDhoO0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    '5oKqymxL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'D1Lcvw6T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    '6mZEiwxx' \
    --body '{"cycleIds": ["oowmlTIK", "ElpMYSWI", "eVzm7z9n"], "defaultValue": 0.7713029915281678, "description": "owi0RY2V", "name": "N4ZONJRE", "tags": ["BxNNgnke", "4akncw7w", "dUQ3z9F1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'u9TmXfJW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatCycleItems
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items' \
    'BPrx9Ns8' \
    'eLzYEvwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatCycleItems' test.out

#- 49 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'WTaLQjct' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetUserStatItems' test.out

#- 50 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'vrK2jhsY' \
    --body '[{"statCode": "pKPlXn77"}, {"statCode": "AtYoFzLA"}, {"statCode": "ATPY8P8P"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkCreateUserStatItems' test.out

#- 51 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '3cfoivvQ' \
    --body '[{"inc": 0.3869360745863937, "statCode": "evecWw7R"}, {"inc": 0.2791737358441022, "statCode": "y0KK5rgA"}, {"inc": 0.5225694455928994, "statCode": "O0dW8rX2"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItem1' test.out

#- 52 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'MVUGKSZ4' \
    --body '[{"inc": 0.5251673760603657, "statCode": "cLkt4pK3"}, {"inc": 0.8764820348330179, "statCode": "sJxlZcCT"}, {"inc": 0.25331433316912655, "statCode": "TdRtCHvu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkIncUserStatItemValue1' test.out

#- 53 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'k6B6XTmS' \
    --body '[{"statCode": "Lyn50sig"}, {"statCode": "BVZxiKdV"}, {"statCode": "57GvRyd9"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkResetUserStatItem1' test.out

#- 54 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'UuL02Le8' \
    'HSCslsDd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateUserStatItem' test.out

#- 55 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    '4M1F5qRI' \
    'blS7Nz81' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteUserStatItems' test.out

#- 56 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    'GRazPAAN' \
    'jfBoldFO' \
    --body '{"inc": 0.3909569543558147}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'IncUserStatItemValue' test.out

#- 57 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'qA2clJ5g' \
    'EOaCgM6Y' \
    --body '{"additionalData": {"n6RugbNE": {}, "IpGBFUjO": {}, "n5mM7k8n": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ResetUserStatItemValue' test.out

#- 58 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItems1' test.out

#- 59 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    'bLzvtCIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetGlobalStatItemByStatCode1' test.out

#- 60 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycles1' test.out

#- 61 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    '5ynMKquU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'GetStatCycle1' test.out

#- 62 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'icAeIVXt' \
    'oWAXhMlW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'BulkFetchStatItems1' test.out

#- 63 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.9098005203469165, "statCode": "tLqX7OIC", "userId": "f5oD1e6o"}, {"inc": 0.5558047922960042, "statCode": "9FmYel0k", "userId": "Ow72o8Zk"}, {"inc": 0.11136742560426738, "statCode": "k0jS6rDW", "userId": "UwfhKvrf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItem' test.out

#- 64 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.8863056719085475, "statCode": "AaH4yCWr", "userId": "HSppnIZk"}, {"inc": 0.6316930643457213, "statCode": "nTn3rzH5", "userId": "NvAtcvNe"}, {"inc": 0.05744065094986528, "statCode": "gS1fUfKm", "userId": "ihDbmu8e"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicBulkIncUserStatItemValue' test.out

#- 65 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "PWlQMVDX", "userId": "EHeiGTnw"}, {"statCode": "yEw6hIWD", "userId": "ZrpP7rz3"}, {"statCode": "ISW510kH", "userId": "r4isTKWj"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'BulkResetUserStatItem2' test.out

#- 66 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["mv67nuHC", "oVwVzmmB", "XWfwnwGi"], "defaultValue": 0.771312911775529, "description": "VFfpqx1A", "incrementOnly": false, "maximum": 0.3684751734954248, "minimum": 0.22000346569329232, "name": "ZhsjwJeG", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "Bo4FUTH7", "tags": ["CGfKSyxg", "RR1DiCqS", "MzpqIFGL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'CreateStat1' test.out

#- 67 GetUserStatCycleItems1
$PYTHON -m $MODULE 'social-get-user-stat-cycle-items-1' \
    'kDs7ACC1' \
    'RgBfoNrH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetUserStatCycleItems1' test.out

#- 68 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'lFi2qJLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems' test.out

#- 69 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'mBLE35Yh' \
    --body '[{"statCode": "yiDV90Se"}, {"statCode": "I5yppBHo"}, {"statCode": "ytVznCgN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkCreateUserStatItems' test.out

#- 70 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'yx9fbT63' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicQueryUserStatItems1' test.out

#- 71 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'ShEh8PbG' \
    --body '[{"inc": 0.13518021933826563, "statCode": "kLjgjcj3"}, {"inc": 0.9155818646719732, "statCode": "uulU6FYB"}, {"inc": 0.8272482571921803, "statCode": "sWFbr3RS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'PublicBulkIncUserStatItem1' test.out

#- 72 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'P0W9nBhv' \
    --body '[{"inc": 0.11771804986232581, "statCode": "f8Q0DtJM"}, {"inc": 0.04732578382825814, "statCode": "YQdN66bs"}, {"inc": 0.3637122949449956, "statCode": "Agt65X4N"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkIncUserStatItemValue2' test.out

#- 73 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    '1LQZmB61' \
    --body '[{"statCode": "JMdtwCVU"}, {"statCode": "rYQue84d"}, {"statCode": "wmbwFEnA"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'BulkResetUserStatItem3' test.out

#- 74 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'ZaWsQJtR' \
    'YoagRJK5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicCreateUserStatItem' test.out

#- 75 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'PX9UcOvh' \
    'PyE11TRT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteUserStatItems1' test.out

#- 76 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    '2SKseoe8' \
    'VLie0LBa' \
    --body '{"inc": 0.8915813818875995}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicIncUserStatItem' test.out

#- 77 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '6KNzjf00' \
    '5CXNGehQ' \
    --body '{"inc": 0.8848320990027103}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'PublicIncUserStatItemValue' test.out

#- 78 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'aTjTDfKF' \
    'DXC7eGL5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'ResetUserStatItemValue1' test.out

#- 79 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"YhJDWh9Y": {}, "Wqc0qgV6": {}, "d9yOfIML": {}}, "additionalKey": "ds2DbPca", "statCode": "oMdtRLTm", "updateStrategy": "INCREMENT", "userId": "vTkQQgB7", "value": 0.0763994108070245}, {"additionalData": {"xYvmHMxr": {}, "5hPCJJzt": {}, "JBg0tTJg": {}}, "additionalKey": "46IewOXE", "statCode": "2AkCh3QI", "updateStrategy": "INCREMENT", "userId": "sUf8lGFX", "value": 0.04785303953951059}, {"additionalData": {"mwTERHcl": {}, "OdxIwqej": {}, "xe18rNdb": {}}, "additionalKey": "8Otq6j1m", "statCode": "qUav7k05", "updateStrategy": "INCREMENT", "userId": "AQltnSoj", "value": 0.7702928723477799}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItemV2' test.out

#- 80 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    '4jT65ycl' \
    '["X2FtAz0v", "JjFIYWOa", "NdsimmkW"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkFetchOrDefaultStatItems1' test.out

#- 81 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    '2miH3xRH' \
    --body '[{"additionalData": {"AKy4QxZk": {}, "aXZ7vmiE": {}, "d0JPxVyQ": {}}, "statCode": "pshaDwNq", "updateStrategy": "INCREMENT", "value": 0.12111764424986804}, {"additionalData": {"IH9c4Vfk": {}, "yrwpuXxb": {}, "aERbfgPm": {}}, "statCode": "i0eHkt1m", "updateStrategy": "MIN", "value": 0.19242678582264638}, {"additionalData": {"hTtSiZNC": {}, "xuogFteT": {}, "HJe4BhSS": {}}, "statCode": "QkQD6WmO", "updateStrategy": "MIN", "value": 0.33729524125776933}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'BulkUpdateUserStatItem' test.out

#- 82 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'YmmeKTmB' \
    --body '[{"additionalData": {"NvGYxEQd": {}, "f3ewoGGo": {}, "Y7xmFNAm": {}}, "statCode": "jDDCvs78"}, {"additionalData": {"mcMdiS76": {}, "YApGJ9uf": {}, "wLYkqIgL": {}}, "statCode": "uZS6hsQr"}, {"additionalData": {"yiEtOAbp": {}, "eUNf26Uq": {}, "kCfgCUYB": {}}, "statCode": "n2xaOBdP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'BulkResetUserStatItemValues' test.out

#- 83 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'F0JmX8qw' \
    'U1cTuHHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'DeleteUserStatItems2' test.out

#- 84 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'B5S3DvPR' \
    'CzBrVUxm' \
    --body '{"additionalData": {"DOj3cvRF": {}, "aTC11W0T": {}, "GTCm4fZW": {}}, "updateStrategy": "MIN", "value": 0.4565783378714109}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateUserStatItemValue' test.out

#- 85 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"OyMvczgE": {}, "pzZ3Fbtx": {}, "fhcRC7IV": {}}, "additionalKey": "Ya6iZ5uF", "statCode": "RYNn3SHi", "updateStrategy": "MAX", "userId": "xF0YbuU5", "value": 0.004866207975241621}, {"additionalData": {"r5qTLWUC": {}, "y0Afgc05": {}, "0XIZRW49": {}}, "additionalKey": "1e94mQjV", "statCode": "OOBnIWhu", "updateStrategy": "MAX", "userId": "w0Oc15N8", "value": 0.7843814856900955}, {"additionalData": {"XBPp17PA": {}, "ewqSm5x3": {}, "B4t7WQnp": {}}, "additionalKey": "8jXZedgt", "statCode": "5cyNe27H", "updateStrategy": "MIN", "userId": "cw1pEHAy", "value": 0.6394159268156873}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem1' test.out

#- 86 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'FxcVTKuA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'PublicQueryUserStatItems2' test.out

#- 87 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'QTGh5Bxj' \
    --body '[{"additionalData": {"WOozGoDt": {}, "sUuYo5p8": {}, "ED5QZAuf": {}}, "statCode": "wNa8lzfj", "updateStrategy": "MIN", "value": 0.4625770001910745}, {"additionalData": {"rn7djjs6": {}, "9FTFVGUV": {}, "hvKhJCme": {}}, "statCode": "isql14mU", "updateStrategy": "MAX", "value": 0.759354056238362}, {"additionalData": {"bMPimNhc": {}, "ZsU3VAdM": {}, "Dcb4qlki": {}}, "statCode": "FAamqvZI", "updateStrategy": "INCREMENT", "value": 0.5853738075850524}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'BulkUpdateUserStatItem2' test.out

#- 88 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'wjqPBiWX' \
    'ade41s3r' \
    --body '{"additionalData": {"H34mB2yP": {}, "lRpWjmHZ": {}, "AAvKTH8M": {}}, "updateStrategy": "MIN", "value": 0.04201286478848931}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
