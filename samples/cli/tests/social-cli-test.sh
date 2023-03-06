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
social-create-stat --body '{"cycleIds": ["2L7vIYhG", "GSyEW4ZJ", "J42d3PBd"], "defaultValue": 0.051252933112565846, "description": "N8S48l9l", "incrementOnly": true, "maximum": 0.13862059000749627, "minimum": 0.8109767171013109, "name": "nNjkfZrQ", "setAsGlobal": true, "setBy": "CLIENT", "statCode": "gbLdLsFz", "tags": ["EirnjX9f", "HkBMr1yr", "OMlNFSrU"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'DmIbeZxz' --login_with_auth "Bearer foo"
social-get-stat 'fTcyiuAT' --login_with_auth "Bearer foo"
social-delete-stat 'us9hsfpF' --login_with_auth "Bearer foo"
social-update-stat 'DcSDG8aM' --body '{"cycleIds": ["LXpUL4pp", "jqoxcwgG", "VGLiBNrD"], "defaultValue": 0.8812185921624087, "description": "ncYAHdNz", "name": "DmeIP6rO", "tags": ["vDz9KOsb", "392k6YmJ", "FfRByjlB"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'iuFM3FIo' --login_with_auth "Bearer foo"
social-get-user-stat-items 'Vk8T3GpA' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items 'nkCmBUqg' --body '[{"statCode": "2SCnqntX"}, {"statCode": "9y1aZSWM"}, {"statCode": "iVi10sG6"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'vxkfUcmq' --body '[{"inc": 0.7081599525226285, "statCode": "RbceJ5i0"}, {"inc": 0.4983149471813486, "statCode": "eDxOgBnh"}, {"inc": 0.12818840449476754, "statCode": "qElIaDml"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 '48wdNFLT' --body '[{"inc": 0.20882636345954309, "statCode": "5T50x9WT"}, {"inc": 0.8533796521015341, "statCode": "GfH2rtOa"}, {"inc": 0.9112399541107568, "statCode": "EXsXzOXQ"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'Ak4mqrxz' --body '[{"statCode": "TtuLl4Xl"}, {"statCode": "bGL8QOxt"}, {"statCode": "jzm8y2wN"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'hmwoYZyI' '4EFZKBcY' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'rCEAE7WI' 'sfmx40NL' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'Rc6m8heK' 'nWhzfe2N' --body '{"inc": 0.3332714112912154}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'beoKFeIa' 'FQCYoDPI' --body '{"additionalData": {"CpnduEEQ": {}, "lULdJz4m": {}, "nRBkMNxv": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'vKgAT8mJ' --login_with_auth "Bearer foo"
social-get-stat-cycles-1 --login_with_auth "Bearer foo"
social-get-stat-cycle-1 'rYq6hRkl' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'oqxM3gpw' 'xcfMy9Xz' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.15435811528742316, "statCode": "jI5YbsKo", "userId": "ADkzJEN2"}, {"inc": 0.7716760051401861, "statCode": "Hzih3bit", "userId": "0VWn3CO3"}, {"inc": 0.9974927597695511, "statCode": "PXDNxtXg", "userId": "eO3FgkXh"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.14579033722764922, "statCode": "DzaQY3sn", "userId": "n2ZkP7cF"}, {"inc": 0.06346052457946583, "statCode": "P43e5dC9", "userId": "XIBudfZg"}, {"inc": 0.2805088610052118, "statCode": "bHDIDm4h", "userId": "MzF4Txod"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "enSrUTvf", "userId": "qU0bfoMm"}, {"statCode": "5cTtFWbo", "userId": "tQyXJRcQ"}, {"statCode": "WsmqPNs9", "userId": "2epxk0i8"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"cycleIds": ["VxsZNere", "CEHThUJk", "Svf9699m"], "defaultValue": 0.48649943343581703, "description": "TAsSp7gh", "incrementOnly": false, "maximum": 0.729905225743802, "minimum": 0.07061883820266113, "name": "UTkOkAYf", "setAsGlobal": true, "setBy": "SERVER", "statCode": "sVC0gL97", "tags": ["ZVJSPqJi", "RSKs6gQx", "wv1qlYB1"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'C3Gb7S0o' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items '4zGYY7KQ' --body '[{"statCode": "I1AeFgPq"}, {"statCode": "aOkvo1ao"}, {"statCode": "lB4lkKB4"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'EYOkQ1jM' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'D3cym8xI' --body '[{"inc": 0.08489159978660565, "statCode": "kOVW2grR"}, {"inc": 0.4939512357764626, "statCode": "OLx0KOww"}, {"inc": 0.8880902561349101, "statCode": "HICQLfl7"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 'MUBG7qtP' --body '[{"inc": 0.33314442248126386, "statCode": "64yAtURK"}, {"inc": 0.6044461333099963, "statCode": "Rkb738HG"}, {"inc": 0.7141028713463164, "statCode": "6rDgMdII"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'lhS1fSiM' --body '[{"statCode": "9331m7Ta"}, {"statCode": "1PsKc50K"}, {"statCode": "v6ecnEev"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'cAx2K2zk' 'RenmPZnG' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'Bt4P7Wnb' 'dSJtjX7Z' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'shZyZl5x' '4bRXBHUT' --body '{"inc": 0.28685267312083695}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'DzZSKscf' 'OcYu3dpC' --body '{"inc": 0.7010163948481458}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'OYqUiGKX' 'VFCmpo6s' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"PwVOEDSJ": {}, "sEK5QpNh": {}, "lI2iS5Ep": {}}, "additionalKey": "GhhvXYck", "statCode": "0upMzUYn", "updateStrategy": "INCREMENT", "userId": "A9ORxpzw", "value": 0.6090011281435734}, {"additionalData": {"R2AK6eXU": {}, "GPJsw1fi": {}, "P80G9Pcl": {}}, "additionalKey": "xcft2ulI", "statCode": "JzPyrVEi", "updateStrategy": "MIN", "userId": "UcqsuGKH", "value": 0.12128633322004834}, {"additionalData": {"MRWLVd3D": {}, "lhLuIpom": {}, "M8sm1Mia": {}}, "additionalKey": "I1mX2tJo", "statCode": "ARtdbBe7", "updateStrategy": "MIN", "userId": "DCjgyJlX", "value": 0.06655966002451463}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 '36mgWjLf' '["Fmteue9n", "zJ6fH24T", "805tVg8J"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'qU0jZpjv' --body '[{"additionalData": {"sugAOS7u": {}, "8RiWyerC": {}, "Sa8SRgws": {}}, "statCode": "Aj1ik1jg", "updateStrategy": "MAX", "value": 0.6959137917398707}, {"additionalData": {"sB1fPqqR": {}, "Rulpqpym": {}, "DkQhtrHW": {}}, "statCode": "wRVnwVBO", "updateStrategy": "MIN", "value": 0.4020363216166313}, {"additionalData": {"8wbhMssA": {}, "HjapIkY9": {}, "Rf4wP57d": {}}, "statCode": "BZNR88Yb", "updateStrategy": "OVERRIDE", "value": 0.47907006973824817}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'pdONneAc' --body '[{"additionalData": {"zbBdHb2s": {}, "lt71B1Sm": {}, "Zp2JZp50": {}}, "statCode": "CnPb71OR"}, {"additionalData": {"YcmQbTU5": {}, "JX8ccLjM": {}, "XJRk0eaK": {}}, "statCode": "QDOJvrTe"}, {"additionalData": {"fglSs6g4": {}, "iY9u02aC": {}, "NYIWekp1": {}}, "statCode": "8lOC3mNq"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'F7Bl0Lcg' 'hVHfPEsp' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'xwhRON0b' 'c1eMbEIj' --body '{"additionalData": {"owLqc3ec": {}, "jXJbZDKK": {}, "oxLE1Y3D": {}}, "updateStrategy": "OVERRIDE", "value": 0.04876572048530958}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"Xpai0rYa": {}, "T5hOPjaf": {}, "3H0tYigh": {}}, "additionalKey": "U0VUfcYH", "statCode": "JbBfAKSi", "updateStrategy": "MIN", "userId": "3VgsZXiR", "value": 0.861297828956718}, {"additionalData": {"DJ7HVWqM": {}, "kNSawQUW": {}, "DFJvJBWi": {}}, "additionalKey": "c7UkBeIX", "statCode": "uqDuAXI6", "updateStrategy": "INCREMENT", "userId": "bQ71w0de", "value": 0.23803960862574214}, {"additionalData": {"V9Lx5RDA": {}, "1l2Xcrci": {}, "YNEzvSZI": {}}, "additionalKey": "PkhSgORc", "statCode": "z5S5Bvmg", "updateStrategy": "OVERRIDE", "userId": "5uvuKNuy", "value": 0.8427895045801302}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'ytZQ7M6N' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'zy1adnSK' --body '[{"additionalData": {"OLFKx1dX": {}, "4LuWJu3p": {}, "DMUAeeZ9": {}}, "statCode": "7SBROPYu", "updateStrategy": "MIN", "value": 0.2701893144471288}, {"additionalData": {"P6oo7G73": {}, "zdxTgOfn": {}, "wIdlNa29": {}}, "statCode": "fDLh741I", "updateStrategy": "MIN", "value": 0.7201033844542121}, {"additionalData": {"JlHeb34s": {}, "ZKHcl5LL": {}, "LOexL4fZ": {}}, "statCode": "vWtND2tc", "updateStrategy": "OVERRIDE", "value": 0.6895604916783981}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'hNPEwiJC' 'f2XJVrlz' --body '{"additionalData": {"qQls1ozh": {}, "LVA3kE8j": {}, "KvgatOEB": {}}, "updateStrategy": "MIN", "value": 0.8483560238690896}' --login_with_auth "Bearer foo"
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
echo "1..86"

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
    --body '{"maxSlotSize": 94, "maxSlots": 6}' \
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
    'gNne8kJA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'Twlc6esU' \
    --body '{"maxSlotSize": 32, "maxSlots": 37}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    '6Sw1I98j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'eZQ7hfxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    'hLd3Knak' \
    'noed9DHh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'LOqQGhCU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'r6iTrjyE' \
    'garAdNJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["IG36I6tR", "bRcrEveM", "dAdiPKDU"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'VSC00PYe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'Dcagginx' \
    --body '{"achievements": ["nFIna3yd", "dcbsPheT", "H26IUJNv"], "attributes": {"YuGRUvpZ": "aHCuESOi", "IZsMfB4Z": "H3mtgWgU", "4pCAKxeE": "70CaunQN"}, "avatarUrl": "xot371W9", "inventories": ["G4AvQkqs", "Gnmyo5JJ", "TUVmb8GE"], "label": "XFTlEMEs", "profileName": "FzYqwgK1", "statistics": ["Np5nodqp", "Lm7FhJBN", "XzAFdO0K"], "tags": ["hqf6kiTd", "SGv2LFjA", "KY7CbgsW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'qFWZX7kP' \
    'Bom8F9GL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'LTG8phc3' \
    'n4iLoIll' \
    --body '{"achievements": ["KlpO2pqi", "XJF3WGRa", "oQomSJC4"], "attributes": {"DdrKF7SU": "QPLG59e0", "k5ZtX6wK": "7PpUlcIW", "32iK7MGt": "1ixY5rA1"}, "avatarUrl": "WoVeJIeP", "inventories": ["F8ZrQzP4", "zvtdxdbZ", "Upd6FJtH"], "label": "J1pyVwyK", "profileName": "QLY6FEO6", "statistics": ["5Rb3z7CY", "LM8IlsHq", "ffnrfsGl"], "tags": ["fPaZKBwa", "3Ddb60uf", "Ppzwj1QG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'IFmlVf4j' \
    'vapseE9L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'N9bvhOrH' \
    'flIOd6X3' \
    'viLvtEk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'mTIpUA9g' \
    'xo8SV38n' \
    'EhoXmM2W' \
    --body '{"name": "7l6jHMA2", "value": "rG3nakop"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'Aywelu01' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'nryEJ0Nq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'oTow0qiO' \
    'iC4j0ikt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'm0ZPLkLO' \
    'sp0LZ5nj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'N86Hl8kU' \
    'Xzt6bSc6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'bWvgpVyW' \
    '9dD1kOmv' \
    --body '{"customAttribute": "rAejcq2L", "label": "gkQuaS7R", "tags": ["Bx3vim02", "jBOxrZDy", "vpcLYOWA"]}' \
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
    '8NjxOnaE' \
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
    --body '{"cycleType": "DAILY", "description": "9Sk4lq2f", "end": "1971-05-31T00:00:00Z", "name": "BcAXXKlh", "resetDate": 45, "resetDay": 83, "resetMonth": 49, "resetTime": "Un18G5Ml", "seasonPeriod": 11, "start": "1979-08-29T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'CreateStatCycle' test.out

#- 30 GetStatCycle
$PYTHON -m $MODULE 'social-get-stat-cycle' \
    'MPpcVfRw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetStatCycle' test.out

#- 31 UpdateStatCycle
$PYTHON -m $MODULE 'social-update-stat-cycle' \
    'Nj547fH0' \
    --body '{"cycleType": "MONTHLY", "description": "rKEDpEY8", "end": "1995-05-03T00:00:00Z", "name": "nocGAjci", "resetDate": 14, "resetDay": 98, "resetMonth": 23, "resetTime": "3tBf2jnH", "seasonPeriod": 67, "start": "1995-10-25T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateStatCycle' test.out

#- 32 DeleteStatCycle
$PYTHON -m $MODULE 'social-delete-stat-cycle' \
    'CqQpQ2Fb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteStatCycle' test.out

#- 33 BulkAddStats
$PYTHON -m $MODULE 'social-bulk-add-stats' \
    'KPFMycMS' \
    --body '{"statCodes": ["Q4qfAacR", "0LgB5BUX", "vjcu2s6w"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAddStats' test.out

#- 34 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    '3VifnKqm' \
    'TSoGH1XE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'BulkFetchStatItems' test.out

#- 35 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.08334001304869565, "statCode": "Y6QAYn6W", "userId": "Q5UBEU1Q"}, {"inc": 0.43297741201202256, "statCode": "OHfZiGhx", "userId": "OdcuDXSx"}, {"inc": 0.7231097233153746, "statCode": "c3aZPV87", "userId": "pna08gxe"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'BulkIncUserStatItem' test.out

#- 36 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.086899527553567, "statCode": "TYKhuxaE", "userId": "c7M4P7Uc"}, {"inc": 0.17129338483709555, "statCode": "SC6ePeN8", "userId": "i4GrFES9"}, {"inc": 0.41799401920200074, "statCode": "7xueHpAT", "userId": "Hccee9GX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'BulkIncUserStatItemValue' test.out

#- 37 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'hKcjmSEw' \
    '["drkEnnqK", "zFsLfYal", "UlfwEQKj"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BulkFetchOrDefaultStatItems' test.out

#- 38 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "U7eHGebS", "userId": "Vu0LQ40k"}, {"statCode": "epEaC4df", "userId": "iOMZfEhH"}, {"statCode": "r39pysFO", "userId": "3Zvc1BZG"}]' \
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
    --body '{"cycleIds": ["VLMUoAna", "99LyvfvH", "EsJKQQew"], "defaultValue": 0.7062814433952812, "description": "cYp7FUjf", "incrementOnly": false, "maximum": 0.1846236890968176, "minimum": 0.3932304836410565, "name": "PR7wZNiV", "setAsGlobal": true, "setBy": "SERVER", "statCode": "F6xG2mXE", "tags": ["alncV7vW", "gSHdfo07", "QdbzIVy8"]}' \
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
    'UctPErqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'QueryStats' test.out

#- 44 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'yMyOK06M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetStat' test.out

#- 45 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'qQBErxgj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'DeleteStat' test.out

#- 46 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'VBycvU4P' \
    --body '{"cycleIds": ["bmRDcrg0", "vea7H1m2", "DjQjBECX"], "defaultValue": 0.17760794132354207, "description": "JFRZ3Zpr", "name": "Z60zMjhT", "tags": ["nE5hCFkI", "Heh94TSe", "f5weqZ18"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UpdateStat' test.out

#- 47 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'MH57l2Zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteTiedStat' test.out

#- 48 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'rh90ETtY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetUserStatItems' test.out

#- 49 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'mGukz3Mn' \
    --body '[{"statCode": "lrjcHp6B"}, {"statCode": "8Vj7rXFg"}, {"statCode": "DnDkdZ9b"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'BulkCreateUserStatItems' test.out

#- 50 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    'pjb1tdA3' \
    --body '[{"inc": 0.6888073693827187, "statCode": "hjCMW64f"}, {"inc": 0.9054040260701465, "statCode": "XhIjSoTB"}, {"inc": 0.882531463843417, "statCode": "NMKtezap"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'BulkIncUserStatItem1' test.out

#- 51 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'Pr2QEPx3' \
    --body '[{"inc": 0.4046862787857456, "statCode": "TxBGtEJI"}, {"inc": 0.8122243066848257, "statCode": "ppuUSsKo"}, {"inc": 0.5422675638588322, "statCode": "w2hyd12u"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'BulkIncUserStatItemValue1' test.out

#- 52 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'SE7BEv3a' \
    --body '[{"statCode": "evq6iohU"}, {"statCode": "1cg4W1IS"}, {"statCode": "3Uv1BpWo"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'BulkResetUserStatItem1' test.out

#- 53 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'JBaqdg2F' \
    'HcunsS1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'CreateUserStatItem' test.out

#- 54 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'naO2m9vq' \
    'jhbeK2qN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'DeleteUserStatItems' test.out

#- 55 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '8g6x2PyY' \
    'Do5R3hLi' \
    --body '{"inc": 0.46872602856942724}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'IncUserStatItemValue' test.out

#- 56 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    '5sf5y1Js' \
    'xJNGmyt0' \
    --body '{"additionalData": {"SQDUDoWB": {}, "ZVGLlkUe": {}, "tzCAWc9x": {}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ResetUserStatItemValue' test.out

#- 57 GetGlobalStatItems1
$PYTHON -m $MODULE 'social-get-global-stat-items-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGlobalStatItems1' test.out

#- 58 GetGlobalStatItemByStatCode1
$PYTHON -m $MODULE 'social-get-global-stat-item-by-stat-code-1' \
    '1aMjgGim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGlobalStatItemByStatCode1' test.out

#- 59 GetStatCycles1
$PYTHON -m $MODULE 'social-get-stat-cycles-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetStatCycles1' test.out

#- 60 GetStatCycle1
$PYTHON -m $MODULE 'social-get-stat-cycle-1' \
    '51T107XI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetStatCycle1' test.out

#- 61 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    'ZRZ7tZdI' \
    's0xf4czd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'BulkFetchStatItems1' test.out

#- 62 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.30831781584108586, "statCode": "7zqmSKxO", "userId": "EQlVcx6G"}, {"inc": 0.25827762150187183, "statCode": "sBq8vdhW", "userId": "VnuYLgpZ"}, {"inc": 0.07205485790148947, "statCode": "hK0G2nmy", "userId": "uViB9kRT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicBulkIncUserStatItem' test.out

#- 63 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.03514094247427402, "statCode": "SQdTnNYG", "userId": "eAfYFG3w"}, {"inc": 0.7187388179757251, "statCode": "kHKufBdS", "userId": "3ZOokZB4"}, {"inc": 0.04782377763271539, "statCode": "XnAXyuGz", "userId": "6LlxHv8S"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicBulkIncUserStatItemValue' test.out

#- 64 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "wyagYvDJ", "userId": "3w3UNgIG"}, {"statCode": "j2jZtEYT", "userId": "8sIPSE1X"}, {"statCode": "XPzySa0s", "userId": "ZoFS6xCO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'BulkResetUserStatItem2' test.out

#- 65 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"cycleIds": ["WMpyh9pM", "sQgb64EL", "bzDMwyo4"], "defaultValue": 0.21100112262572557, "description": "IRysQdbu", "incrementOnly": false, "maximum": 0.16908724457810775, "minimum": 0.5363702562242504, "name": "r4isTKWj", "setAsGlobal": false, "setBy": "SERVER", "statCode": "v67nuHCX", "tags": ["VFfpqx1A", "VwVzmmBV", "WfwnwGio"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'CreateStat1' test.out

#- 66 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    'eLtzcPJ3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicQueryUserStatItems' test.out

#- 67 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'jtDYBo4F' \
    --body '[{"statCode": "UTH7CGfK"}, {"statCode": "SyxgRR1D"}, {"statCode": "iCqSMzpq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicBulkCreateUserStatItems' test.out

#- 68 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'IFGLkDs7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicQueryUserStatItems1' test.out

#- 69 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'ACC1RgBf' \
    --body '[{"inc": 0.23548553703117203, "statCode": "NrHlFi2q"}, {"inc": 0.5696590080263538, "statCode": "LgmBLE35"}, {"inc": 0.8164146656874905, "statCode": "hyiDV90S"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicBulkIncUserStatItem1' test.out

#- 70 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'eI5yppBH' \
    --body '[{"inc": 0.22817127995370423, "statCode": "ytVznCgN"}, {"inc": 0.3907963027404031, "statCode": "x9fbT63S"}, {"inc": 0.12261168152742763, "statCode": "Eh8PbGik"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkIncUserStatItemValue2' test.out

#- 71 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'Ljgjcj34' \
    --body '[{"statCode": "uulU6FYB"}, {"statCode": "ZsWFbr3R"}, {"statCode": "SP0W9nBh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkResetUserStatItem3' test.out

#- 72 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'vhf8Q0Dt' \
    'JMcYQdN6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'PublicCreateUserStatItem' test.out

#- 73 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    '6bswAgt6' \
    '5X4N1LQZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems1' test.out

#- 74 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'mB61JMdt' \
    'wCVUrYQu' \
    --body '{"inc": 0.07019419426200002}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'PublicIncUserStatItem' test.out

#- 75 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    '84dwmbwF' \
    'EnAZaWsQ' \
    --body '{"inc": 0.5662121887424187}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'PublicIncUserStatItemValue' test.out

#- 76 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'tRYoagRJ' \
    'K5PX9UcO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'ResetUserStatItemValue1' test.out

#- 77 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"vhPyE11T": {}, "RT2SKseo": {}, "e8VLie0L": {}}, "additionalKey": "Ba36KNzj", "statCode": "f005CXNG", "updateStrategy": "INCREMENT", "userId": "nbY97jjY", "value": 0.10335882823705034}, {"additionalData": {"XchCbkXX": {}, "26uEdCfQ": {}, "aMAQuTKf": {}}, "additionalKey": "C0I2kNjC", "statCode": "MDtDMren", "updateStrategy": "MIN", "userId": "caoMdtRL", "value": 0.7330207777649405}, {"additionalData": {"mSvTkQQg": {}, "B7exYvmH": {}, "Mxr5hPCJ": {}}, "additionalKey": "JztJBg0t", "statCode": "TJg46Iew", "updateStrategy": "INCREMENT", "userId": "XE2AkCh3", "value": 0.6834837587736867}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItemV2' test.out

#- 78 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'IZsUf8lG' \
    '["FXcmwTER", "HclOdxIw", "qejxe18r"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'BulkFetchOrDefaultStatItems1' test.out

#- 79 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'Ndb8Otq6' \
    --body '[{"additionalData": {"j1mqUav7": {}, "k05HAQlt": {}, "nSojV4jT": {}}, "statCode": "65yclX2F", "updateStrategy": "MIN", "value": 0.24414838420592344}, {"additionalData": {"tKaWNvPb": {}, "pg7yrRvX": {}, "fZ6rvgvE": {}}, "statCode": "Y3Hht1Sw", "updateStrategy": "MIN", "value": 0.3848836998379821}, {"additionalData": {"ZkaXZ7vm": {}, "iEd0JPxV": {}, "yQpshaDw": {}}, "statCode": "NqTbbFMX", "updateStrategy": "OVERRIDE", "value": 0.9067502664286594}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'BulkUpdateUserStatItem' test.out

#- 80 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'Vfkyrwpu' \
    --body '[{"additionalData": {"XxbaERbf": {}, "gPmi0eHk": {}, "t1mr9EOI": {}}, "statCode": "Fg0dnWIY"}, {"additionalData": {"N2NVL70I": {}, "w157g00j": {}, "r9b8MuYm": {}}, "statCode": "meKTmBNv"}, {"additionalData": {"GYxEQdf3": {}, "ewoGGoY7": {}, "xmFNAmjD": {}}, "statCode": "DCvs78mc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'BulkResetUserStatItemValues' test.out

#- 81 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    'MdiS76YA' \
    'pGJ9ufwL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'DeleteUserStatItems2' test.out

#- 82 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'YkqIgLuZ' \
    'S6hsQryi' \
    --body '{"additionalData": {"EtOAbpeU": {}, "Nf26UqkC": {}, "fgCUYBn2": {}}, "updateStrategy": "OVERRIDE", "value": 0.14713019134454497}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'UpdateUserStatItemValue' test.out

#- 83 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"O4lj8m3X": {}, "EwP2b4gd": {}, "3xOeii8J": {}}, "additionalKey": "nmssep2x", "statCode": "D2NY0kAB", "updateStrategy": "INCREMENT", "userId": "cvRFaTC1", "value": 0.855174504692959}, {"additionalData": {"W0TGTCm4": {}, "fZWuk6pQ": {}, "xDQpKqxL": {}}, "additionalKey": "GeMvr9Ts", "statCode": "vcMQ7dBs", "updateStrategy": "INCREMENT", "userId": "Z5uFRYNn", "value": 0.8878476720198079}, {"additionalData": {"SHiWxF0Y": {}, "buU5ar5q": {}, "TLWUCy0A": {}}, "additionalKey": "fgc050XI", "statCode": "ZRW491e9", "updateStrategy": "MAX", "userId": "6ApCD2VX", "value": 0.14415898010575845}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'BulkUpdateUserStatItem1' test.out

#- 84 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'dT7w0Oc1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'PublicQueryUserStatItems2' test.out

#- 85 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    '5N8WXBPp' \
    --body '[{"additionalData": {"17PAewqS": {}, "m5x3B4t7": {}, "WQnp8jXZ": {}}, "statCode": "edgt5cyN", "updateStrategy": "INCREMENT", "value": 0.16191829645872102}, {"additionalData": {"4f9Zcw1p": {}, "EHAyNFxc": {}, "VTKuAQTG": {}}, "statCode": "h5BxjWOo", "updateStrategy": "OVERRIDE", "value": 0.29299361650076183}, {"additionalData": {"Lmu3kaPj": {}, "0O4zd8Tb": {}, "7cUNGPTB": {}}, "statCode": "xiFFCrn7", "updateStrategy": "INCREMENT", "value": 0.80422457417028}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'BulkUpdateUserStatItem2' test.out

#- 86 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'MjlVHY1A' \
    'HwF3vGoa' \
    --body '{"additionalData": {"v7MK0PcL": {}, "nEkcokKw": {}, "cQ0baDT9": {}}, "updateStrategy": "OVERRIDE", "value": 0.7651957390327576}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
