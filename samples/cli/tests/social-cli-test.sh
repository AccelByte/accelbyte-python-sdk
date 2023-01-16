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
social-update-namespace-slot-config --body '{"maxSlotSize": 15, "maxSlots": 49}' --login_with_auth "Bearer foo"
social-delete-namespace-slot-config --login_with_auth "Bearer foo"
social-get-user-slot-config 'a6BPltf3' --login_with_auth "Bearer foo"
social-update-user-slot-config 's1w8qzAP' --body '{"maxSlotSize": 25, "maxSlots": 69}' --login_with_auth "Bearer foo"
social-delete-user-slot-config '69JUFgYV' --login_with_auth "Bearer foo"
social-get-user-profiles 'IvECQvkV' --login_with_auth "Bearer foo"
social-get-profile 'lyxVYxVp' 'EYS5fRns' --login_with_auth "Bearer foo"
social-get-user-namespace-slots 'WFDqRBfK' --login_with_auth "Bearer foo"
social-get-slot-data 'EkTNGTdf' '9o9FNrCc' --login_with_auth "Bearer foo"
social-public-get-user-game-profiles '["ER7ktiiF", "CUs0kOa3", "xj5NFOUf"]' --login_with_auth "Bearer foo"
social-public-get-user-profiles 'KzA1eEM7' --login_with_auth "Bearer foo"
social-public-create-profile 'Z4F3RARd' --body '{"achievements": ["eaqjPGdu", "lsdmwY3i", "7uIHD5Sw"], "attributes": {"SuCZjog1": "VoCso6eT", "1OkbEymZ": "GxXtkFYZ", "NXqmh6YJ": "zOfHkNfp"}, "avatarUrl": "ELCwDWhV", "inventories": ["bI0VWLIN", "WC4ri98u", "YsZSkHpZ"], "label": "abe3tQD4", "profileName": "stjahDBA", "statistics": ["diLgxtXn", "a8jMCepZ", "G84AT4UB"], "tags": ["jXv6d8fM", "tEjtlpju", "nxadKgJm"]}' --login_with_auth "Bearer foo"
social-public-get-profile 'lbWtUHNH' 'Ber951fT' --login_with_auth "Bearer foo"
social-public-update-profile 'zGaXfHDp' 'u7fCtNcL' --body '{"achievements": ["EtwPZwrT", "SSKV2dU7", "ZdOMJyK5"], "attributes": {"AYX0oOI0": "fnWU2dzW", "6U8j0FsZ": "yIFo8cHZ", "P4L4jiPY": "uQZXFw1y"}, "avatarUrl": "JTMZlv1D", "inventories": ["JTdkohuV", "JZLBKWQW", "FO04v94R"], "label": "S7JFEwm1", "profileName": "OV7HoNR0", "statistics": ["2vxCsTJP", "KnGWw6bY", "cOTVDpus"], "tags": ["5ko0YSxJ", "Pabpxput", "fEjDZJKN"]}' --login_with_auth "Bearer foo"
social-public-delete-profile 'qWW8cnZ2' '3TeRpnyz' --login_with_auth "Bearer foo"
social-public-get-profile-attribute 'CcZUWZGX' '7hJ6V6t6' 'L4g9Pj0K' --login_with_auth "Bearer foo"
social-public-update-attribute 'fwWbNjCk' 'LTkVzxKS' 'l7nccOsy' --body '{"name": "QwVYUGKR", "value": "xWkbSAwv"}' --login_with_auth "Bearer foo"
social-public-get-user-namespace-slots 'sPONUvmW' --login_with_auth "Bearer foo"
social-public-create-user-namespace-slot '6z7pVjEV' --login_with_auth "Bearer foo"
social-public-get-slot-data 'cuMzvmI8' 'URw3rpF6' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot 'TjIvKIVm' 'ADrPO3P0' --login_with_auth "Bearer foo"
social-public-delete-user-namespace-slot 'PlfDSEwN' 'kTyvHIVi' --login_with_auth "Bearer foo"
social-public-update-user-namespace-slot-metadata 'zE2orZva' 'ngQy4lvW' --body '{"customAttribute": "gFGQ2BLe", "label": "nCoMsunO", "tags": ["zUoL0Uy5", "wCStxkP7", "4mDlXZZT"]}' --login_with_auth "Bearer foo"
social-get-global-stat-items --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code 'U5rIaTT2' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items 'eGWSLMAP' 'AIrFlPUV' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item --body '[{"inc": 0.7170167095375997, "statCode": "mxGXVhVX", "userId": "IRd1BwYX"}, {"inc": 0.16743834522579693, "statCode": "Qfe35pRy", "userId": "bZC6vmiI"}, {"inc": 0.5063121574232071, "statCode": "ro37chgS", "userId": "ejuUIx4D"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value --body '[{"inc": 0.5827829850124384, "statCode": "Mobfey8Y", "userId": "hILrSmdY"}, {"inc": 0.3932051730706587, "statCode": "Wc08pflM", "userId": "9zyf1hqt"}, {"inc": 0.38284377821087534, "statCode": "xCRwBRVf", "userId": "EEl9D94j"}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items 'UDjyeh3x' '["IWKCx5J4", "FHBf1snI", "Co7OgffZ"]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item --body '[{"statCode": "f0FIzvNH", "userId": "KoaT4Mdl"}, {"statCode": "6cfrGogI", "userId": "FwJC024a"}, {"statCode": "bNX5ee3W", "userId": "CXbxiTCK"}]' --login_with_auth "Bearer foo"
social-get-stats --login_with_auth "Bearer foo"
social-create-stat --body '{"defaultValue": 0.3651139737638194, "description": "YKB8J5to", "incrementOnly": false, "maximum": 0.42085785792270836, "minimum": 0.8988217367404904, "name": "jPLNjzxQ", "setAsGlobal": true, "setBy": "SERVER", "statCode": "StlXrFWj", "tags": ["mbS8BGuv", "OWx6DnkX", "poy2NFdI"]}' --login_with_auth "Bearer foo"
social-export-stats --login_with_auth "Bearer foo"
social-import-stats --login_with_auth "Bearer foo"
social-query-stats 'RttP00Rn' --login_with_auth "Bearer foo"
social-get-stat 'n0cEZYzo' --login_with_auth "Bearer foo"
social-delete-stat 'EyvvjX7h' --login_with_auth "Bearer foo"
social-update-stat 'EBs8w8te' --body '{"defaultValue": 0.437687402463084, "description": "cElG4P7J", "name": "Z5CycT1L", "tags": ["7Dv4VjKj", "tEccjXzM", "NwgjOoDI"]}' --login_with_auth "Bearer foo"
social-delete-tied-stat 'c3zfelTw' --login_with_auth "Bearer foo"
social-get-user-stat-items 'QImY94Q3' --login_with_auth "Bearer foo"
social-bulk-create-user-stat-items '9GGFuHcH' --body '[{"statCode": "9ch6WxKG"}, {"statCode": "ilBAvQfL"}, {"statCode": "KKOl2Ggc"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-1 'ssgmkx5S' --body '[{"inc": 0.8302478024753449, "statCode": "u9h7xAMv"}, {"inc": 0.3302394412997536, "statCode": "sjYuHgJC"}, {"inc": 0.027441517341139088, "statCode": "Vnb8YOj5"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-1 'XEqsAHzw' --body '[{"inc": 0.4486592189876589, "statCode": "w5vuBEIV"}, {"inc": 0.7723871853465661, "statCode": "wVI39cyn"}, {"inc": 0.6740041115255017, "statCode": "5Z0dneG8"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-1 'Lw6Sh4U0' --body '[{"statCode": "EA8Z6rXg"}, {"statCode": "Gq4VqFRF"}, {"statCode": "EBzfuh9I"}]' --login_with_auth "Bearer foo"
social-create-user-stat-item 'fMqWgUsa' 'u7WAiLQq' --login_with_auth "Bearer foo"
social-delete-user-stat-items 'fKmI4TIT' 'yIHv0eAk' --login_with_auth "Bearer foo"
social-inc-user-stat-item-value 'hNplqUgs' 'fUAcs47U' --body '{"inc": 0.8781908854787873}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value 'DIoUdHxt' 'wHPAfABI' --body '{"additionalData": {"vfK6cTNS": {}, "CjNFzSYM": {}, "2fffydI0": {}}}' --login_with_auth "Bearer foo"
social-get-global-stat-items-1 --login_with_auth "Bearer foo"
social-get-global-stat-item-by-stat-code-1 'stBreeg3' --login_with_auth "Bearer foo"
social-bulk-fetch-stat-items-1 'GSdn2rYB' 'YaxKUJiZ' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item --body '[{"inc": 0.5151684631369826, "statCode": "ywle2jnK", "userId": "m5DJ2FgU"}, {"inc": 0.047548229225327865, "statCode": "nFAEp0YA", "userId": "rbER3RHq"}, {"inc": 0.6061024771057878, "statCode": "Qy1nO1Cm", "userId": "cCIfnmHd"}]' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-value --body '[{"inc": 0.5192475942710056, "statCode": "CA7pXczv", "userId": "yY48lHIV"}, {"inc": 0.9361700407632148, "statCode": "IOYaRh30", "userId": "dkQSJKzI"}, {"inc": 0.970112288974931, "statCode": "8u8h0TGq", "userId": "tpcojyie"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-2 --body '[{"statCode": "YHF2WLVn", "userId": "VbGXaJGA"}, {"statCode": "GrZLwkDA", "userId": "FjYRJTUI"}, {"statCode": "M0C99cLt", "userId": "VKtCcBSF"}]' --login_with_auth "Bearer foo"
social-create-stat-1 --body '{"defaultValue": 0.3186129570302051, "description": "gk7g3gZp", "incrementOnly": true, "maximum": 0.048664041635256616, "minimum": 0.2547673028273366, "name": "z8HzPxQ9", "setAsGlobal": false, "setBy": "SERVER", "statCode": "iVmftiZY", "tags": ["DqrjP3jU", "5DMPRcVI", "H9cPSSYA"]}' --login_with_auth "Bearer foo"
social-public-query-user-stat-items 'FJKoEFeB' --login_with_auth "Bearer foo"
social-public-bulk-create-user-stat-items 'kp4NUXuc' --body '[{"statCode": "99QLfwQN"}, {"statCode": "nqmI2ZRm"}, {"statCode": "6GPiGxbH"}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-1 'R09Lq9VB' --login_with_auth "Bearer foo"
social-public-bulk-inc-user-stat-item-1 'VUHKjRMa' --body '[{"inc": 0.6946704092023049, "statCode": "45jgHeBq"}, {"inc": 0.7116270969738671, "statCode": "6ahcg9aV"}, {"inc": 0.6843126401304054, "statCode": "XPI1uBdf"}]' --login_with_auth "Bearer foo"
social-bulk-inc-user-stat-item-value-2 '8qLna1DN' --body '[{"inc": 0.8211849339474343, "statCode": "J3o1GmhR"}, {"inc": 0.7794245220560894, "statCode": "GVARZ1Wz"}, {"inc": 0.5972251623298981, "statCode": "7sl9TgHx"}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-3 'uk4Gz3iO' --body '[{"statCode": "xuYWLN4T"}, {"statCode": "HrTStflb"}, {"statCode": "4NlX8zwf"}]' --login_with_auth "Bearer foo"
social-public-create-user-stat-item 'cPXUVW4h' 'NBc7ingF' --login_with_auth "Bearer foo"
social-delete-user-stat-items-1 'tFtR8JCm' '6qUqax7P' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item 'cPD8R8Eo' 'J2kIgfUD' --body '{"inc": 0.10697314294419491}' --login_with_auth "Bearer foo"
social-public-inc-user-stat-item-value 'MdpLZ5n3' 'mTycMQAy' --body '{"inc": 0.766919473155564}' --login_with_auth "Bearer foo"
social-reset-user-stat-item-value-1 'AxRJCFCj' 'qkAoqckW' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-v2 --body '[{"additionalData": {"jrDw4uAf": {}, "CIRTHBTX": {}, "59gbpKyU": {}}, "additionalKey": "hRCB0p5s", "statCode": "HVRzrLfa", "updateStrategy": "OVERRIDE", "userId": "bsIQH6EQ", "value": 0.33647895811113826}, {"additionalData": {"tNWi2RJe": {}, "9aGQhXWf": {}, "PJ68kr8l": {}}, "additionalKey": "nt7j2IcZ", "statCode": "u1NBpnJi", "updateStrategy": "OVERRIDE", "userId": "dVNdZ32e", "value": 0.0071525871372314365}, {"additionalData": {"7ioD2GKs": {}, "x24TZmnJ": {}, "pYSGC4AC": {}}, "additionalKey": "EedQaRPu", "statCode": "aMT8irxz", "updateStrategy": "MIN", "userId": "KDSs9vlu", "value": 0.1116815254608281}]' --login_with_auth "Bearer foo"
social-bulk-fetch-or-default-stat-items-1 'VjFMxScp' '["mSVUU9Bi", "OUcVvro0", "6DYtbOTF"]' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item 'hf7TLSqz' --body '[{"additionalData": {"2foHnEWc": {}, "6FyBfVHE": {}, "RmPiyLZF": {}}, "statCode": "weWEFpsi", "updateStrategy": "MAX", "value": 0.5644844243530032}, {"additionalData": {"5pDTeiaX": {}, "9HfnjllG": {}, "AqGVy2OE": {}}, "statCode": "CSh3LzJr", "updateStrategy": "MAX", "value": 0.06204496096427292}, {"additionalData": {"YOU2JOMS": {}, "vbQgtYD7": {}, "RnahbySG": {}}, "statCode": "c9QPg58S", "updateStrategy": "OVERRIDE", "value": 0.7812974969943974}]' --login_with_auth "Bearer foo"
social-bulk-reset-user-stat-item-values 'nVSukJ4q' --body '[{"additionalData": {"LqtfDmug": {}, "2MxkLujG": {}, "pY9Lgv8k": {}}, "statCode": "cdQQpkGJ"}, {"additionalData": {"4CLq4OkX": {}, "9EsMxq9F": {}, "JyNBn6Ix": {}}, "statCode": "GzFgWuT0"}, {"additionalData": {"CTV5d0Yy": {}, "rHOTavgl": {}, "HNFH9dfC": {}}, "statCode": "HLXPZ0IL"}]' --login_with_auth "Bearer foo"
social-delete-user-stat-items-2 'VjKxCAA2' 'pizaLT23' --login_with_auth "Bearer foo"
social-update-user-stat-item-value 'UYF9APKR' 'XCjhost6' --body '{"additionalData": {"F9L3vb46": {}, "vgrw7xxi": {}, "201LPkEO": {}}, "updateStrategy": "MIN", "value": 0.14842139611039518}' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-1 --body '[{"additionalData": {"8hcpC5EM": {}, "PwBPeb8B": {}, "P0deCmSC": {}}, "additionalKey": "tSvzGAHZ", "statCode": "XseP14SX", "updateStrategy": "MAX", "userId": "TTbQ8rtS", "value": 0.7806255871401614}, {"additionalData": {"WCil9VqB": {}, "Xthnj0vo": {}, "QgjPVJs6": {}}, "additionalKey": "5uX1OZGW", "statCode": "nQ8esjf9", "updateStrategy": "OVERRIDE", "userId": "C50DVykZ", "value": 0.182814989576897}, {"additionalData": {"OTUv2RlZ": {}, "3I7WQFpC": {}, "V2ugD3i4": {}}, "additionalKey": "gLKPAQpz", "statCode": "rFNaVnl8", "updateStrategy": "OVERRIDE", "userId": "MYJyKdjo", "value": 0.006361028623118048}]' --login_with_auth "Bearer foo"
social-public-query-user-stat-items-2 'xqJH0CTZ' --login_with_auth "Bearer foo"
social-bulk-update-user-stat-item-2 'MUTtgRDH' --body '[{"additionalData": {"9TmXhzCD": {}, "AzdPM2He": {}, "ysp620GW": {}}, "statCode": "unOhlNSZ", "updateStrategy": "OVERRIDE", "value": 0.10431645514042454}, {"additionalData": {"EmMs1ref": {}, "TCmNA00R": {}, "BRVCAZAu": {}}, "statCode": "eV7ufvG7", "updateStrategy": "INCREMENT", "value": 0.462916264376085}, {"additionalData": {"nGdCSPkl": {}, "dJhR8mVA": {}, "sTVwMTaG": {}}, "statCode": "KiHY4o5R", "updateStrategy": "OVERRIDE", "value": 0.09631938644384697}]' --login_with_auth "Bearer foo"
social-update-user-stat-item-value-1 'xA0saweP' 'zgUFTk10' --body '{"additionalData": {"abJbTnKw": {}, "NCKALudz": {}, "Hg7dbLJF": {}}, "updateStrategy": "OVERRIDE", "value": 0.1172624629749901}' --login_with_auth "Bearer foo"
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
    --body '{"maxSlotSize": 91, "maxSlots": 36}' \
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
    'icewGd7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetUserSlotConfig' test.out

#- 6 UpdateUserSlotConfig
$PYTHON -m $MODULE 'social-update-user-slot-config' \
    'gq1jMdl2' \
    --body '{"maxSlotSize": 66, "maxSlots": 80}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateUserSlotConfig' test.out

#- 7 DeleteUserSlotConfig
$PYTHON -m $MODULE 'social-delete-user-slot-config' \
    'EA7XlgNr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'DeleteUserSlotConfig' test.out

#- 8 GetUserProfiles
$PYTHON -m $MODULE 'social-get-user-profiles' \
    'DAi45OeW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetUserProfiles' test.out

#- 9 GetProfile
$PYTHON -m $MODULE 'social-get-profile' \
    '1Ng15muC' \
    'oe24WvRc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetProfile' test.out

#- 10 GetUserNamespaceSlots
$PYTHON -m $MODULE 'social-get-user-namespace-slots' \
    'TndXpFOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserNamespaceSlots' test.out

#- 11 GetSlotData
$PYTHON -m $MODULE 'social-get-slot-data' \
    'IymT0BMe' \
    'OOn7ZArp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSlotData' test.out

#- 12 PublicGetUserGameProfiles
$PYTHON -m $MODULE 'social-public-get-user-game-profiles' \
    '["rjlyVpgB", "pIaEjTfs", "wxvAYRj8"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'PublicGetUserGameProfiles' test.out

#- 13 PublicGetUserProfiles
$PYTHON -m $MODULE 'social-public-get-user-profiles' \
    'FdY4cH6d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'PublicGetUserProfiles' test.out

#- 14 PublicCreateProfile
$PYTHON -m $MODULE 'social-public-create-profile' \
    'R43XDIV4' \
    --body '{"achievements": ["YJqwUlnW", "ixsJpY1E", "cB7ggBJJ"], "attributes": {"vWyXoFBI": "18x1dgTw", "6FebBgAd": "V3q0Jy6m", "pdf3kUMV": "4NzdZiSf"}, "avatarUrl": "kV03uBSU", "inventories": ["MWBqOcXN", "9rL4BNfR", "zAcLEHhk"], "label": "qECSUI70", "profileName": "k1zfvNvi", "statistics": ["8mwxXbBB", "lUzR5O10", "LFXUhWQo"], "tags": ["64eyroNQ", "Zj5wZup8", "W29D7LvO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'PublicCreateProfile' test.out

#- 15 PublicGetProfile
$PYTHON -m $MODULE 'social-public-get-profile' \
    'H371WleT' \
    'cCmVtT4D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicGetProfile' test.out

#- 16 PublicUpdateProfile
$PYTHON -m $MODULE 'social-public-update-profile' \
    'DXNFqOqA' \
    'gY2CDfZN' \
    --body '{"achievements": ["IY0BVM6x", "aBXjQM1z", "xmFNUIEJ"], "attributes": {"4PdxapvQ": "1iBdenfZ", "ion7B0OA": "Ln3bVXZO", "Z773SrI4": "91hnWeSZ"}, "avatarUrl": "tyS2SpWc", "inventories": ["J6c05Jk4", "VaXP6lxM", "lOtKrjeY"], "label": "aQdVDJfK", "profileName": "6HIaTfXx", "statistics": ["M52ZWY1l", "H4ctfF4b", "ZBDIThZU"], "tags": ["Q4PstODf", "tjmGFt3J", "xMRdhxxE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicUpdateProfile' test.out

#- 17 PublicDeleteProfile
$PYTHON -m $MODULE 'social-public-delete-profile' \
    'SZMcvlGG' \
    'E7UiRN5j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicDeleteProfile' test.out

#- 18 PublicGetProfileAttribute
$PYTHON -m $MODULE 'social-public-get-profile-attribute' \
    'mpq5cGDt' \
    'l4qkLDFY' \
    'URofvh24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetProfileAttribute' test.out

#- 19 PublicUpdateAttribute
$PYTHON -m $MODULE 'social-public-update-attribute' \
    'QRrMSZB7' \
    'b1rBQNzE' \
    'eQwR0rKl' \
    --body '{"name": "xlr2kWVv", "value": "Wgxryyys"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicUpdateAttribute' test.out

#- 20 PublicGetUserNamespaceSlots
$PYTHON -m $MODULE 'social-public-get-user-namespace-slots' \
    'lmFsRYgT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserNamespaceSlots' test.out

#- 21 PublicCreateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-create-user-namespace-slot' \
    'WO4bVNFt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicCreateUserNamespaceSlot' test.out

#- 22 PublicGetSlotData
$PYTHON -m $MODULE 'social-public-get-slot-data' \
    'MZwwFM4w' \
    'FfcMf6br' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetSlotData' test.out

#- 23 PublicUpdateUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot' \
    'fIqaWl5R' \
    '3W796nI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicUpdateUserNamespaceSlot' test.out

#- 24 PublicDeleteUserNamespaceSlot
$PYTHON -m $MODULE 'social-public-delete-user-namespace-slot' \
    'XIvEFsmb' \
    'eKBM2ITT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicDeleteUserNamespaceSlot' test.out

#- 25 PublicUpdateUserNamespaceSlotMetadata
$PYTHON -m $MODULE 'social-public-update-user-namespace-slot-metadata' \
    'ceTHFfmx' \
    'h16EWyac' \
    --body '{"customAttribute": "hta4eR7t", "label": "K8c7mgLC", "tags": ["41LHYRyP", "BJfgVeH6", "U3mxtA4M"]}' \
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
    'SAUFL9Ba' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetGlobalStatItemByStatCode' test.out

#- 28 BulkFetchStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items' \
    'uh2qDBG7' \
    'FKhp2f8n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'BulkFetchStatItems' test.out

#- 29 BulkIncUserStatItem
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.7765354050045091, "statCode": "uTaa6wY8", "userId": "oDg6Whj1"}, {"inc": 0.028221487580574967, "statCode": "D88sUsud", "userId": "mLsDEXcR"}, {"inc": 0.16431473394721507, "statCode": "3Skall9Y", "userId": "zO6JCNzE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'BulkIncUserStatItem' test.out

#- 30 BulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.24871293749239665, "statCode": "B81AeAY7", "userId": "bgPyCMa4"}, {"inc": 0.45290226864023964, "statCode": "irhTMvjs", "userId": "4k3BeX1F"}, {"inc": 0.21881623435695552, "statCode": "UljTefOA", "userId": "97tbLoWt"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BulkIncUserStatItemValue' test.out

#- 31 BulkFetchOrDefaultStatItems
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items' \
    'KZzXPdoQ' \
    '["09AMVOlU", "p8n3Q7gO", "ABWP3BKt"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'BulkFetchOrDefaultStatItems' test.out

#- 32 BulkResetUserStatItem
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item' \
    --body '[{"statCode": "URs0IWDV", "userId": "VNeC2Lfv"}, {"statCode": "J6fZVyJo", "userId": "MyfMWrtc"}, {"statCode": "ixK6G13Z", "userId": "DzPFRQlh"}]' \
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
    --body '{"defaultValue": 0.672065363741292, "description": "tHmbCM6e", "incrementOnly": true, "maximum": 0.9561706453660211, "minimum": 0.7911885430974505, "name": "KAYd5Gzj", "setAsGlobal": true, "setBy": "SERVER", "statCode": "QQSEi9j5", "tags": ["jxoUL3Cj", "fJgwcN2U", "AQTMoRuP"]}' \
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
    'qqp8D8gV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'QueryStats' test.out

#- 38 GetStat
$PYTHON -m $MODULE 'social-get-stat' \
    'pTBeBPYF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetStat' test.out

#- 39 DeleteStat
$PYTHON -m $MODULE 'social-delete-stat' \
    'k5zendt6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteStat' test.out

#- 40 UpdateStat
$PYTHON -m $MODULE 'social-update-stat' \
    'RqXFWi0t' \
    --body '{"defaultValue": 0.5899926591615724, "description": "REdNcB5T", "name": "nZfgSjlH", "tags": ["tzIb9dOS", "fvE4LBKA", "ycfmCGO2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateStat' test.out

#- 41 DeleteTiedStat
$PYTHON -m $MODULE 'social-delete-tied-stat' \
    'LE0EbLNm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'DeleteTiedStat' test.out

#- 42 GetUserStatItems
$PYTHON -m $MODULE 'social-get-user-stat-items' \
    'AdcDmvLZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetUserStatItems' test.out

#- 43 BulkCreateUserStatItems
$PYTHON -m $MODULE 'social-bulk-create-user-stat-items' \
    'N7pwcCkI' \
    --body '[{"statCode": "sqVvtBR0"}, {"statCode": "QGaItnHO"}, {"statCode": "tBqPR71M"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'BulkCreateUserStatItems' test.out

#- 44 BulkIncUserStatItem1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-1' \
    '0ic04RXn' \
    --body '[{"inc": 0.3686788093201515, "statCode": "AV2jd5Rv"}, {"inc": 0.7875400191616051, "statCode": "qIluEPWG"}, {"inc": 0.03919627951489291, "statCode": "Rda2SiwP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'BulkIncUserStatItem1' test.out

#- 45 BulkIncUserStatItemValue1
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-1' \
    'jQzmF8fp' \
    --body '[{"inc": 0.8496870840145594, "statCode": "3xIUpvny"}, {"inc": 0.22143433619777908, "statCode": "f8hY4xU9"}, {"inc": 0.9430091992325011, "statCode": "gTXatudP"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BulkIncUserStatItemValue1' test.out

#- 46 BulkResetUserStatItem1
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-1' \
    'ExgSYUDs' \
    --body '[{"statCode": "R8G5mFNy"}, {"statCode": "RTXOkuqr"}, {"statCode": "P68Ekmia"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BulkResetUserStatItem1' test.out

#- 47 CreateUserStatItem
$PYTHON -m $MODULE 'social-create-user-stat-item' \
    'qMEgtXZZ' \
    'klRHwbrp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateUserStatItem' test.out

#- 48 DeleteUserStatItems
$PYTHON -m $MODULE 'social-delete-user-stat-items' \
    'zCQSXrIr' \
    '8dXdFTA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteUserStatItems' test.out

#- 49 IncUserStatItemValue
$PYTHON -m $MODULE 'social-inc-user-stat-item-value' \
    '4DHqeqSy' \
    'itZT0muH' \
    --body '{"inc": 0.6864148288342777}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'IncUserStatItemValue' test.out

#- 50 ResetUserStatItemValue
$PYTHON -m $MODULE 'social-reset-user-stat-item-value' \
    'K1uPnE2N' \
    '6DQOm635' \
    --body '{"additionalData": {"76SQdoBi": {}, "HF1y767g": {}, "L9djVUFg": {}}}' \
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
    'qxAirqnY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetGlobalStatItemByStatCode1' test.out

#- 53 BulkFetchStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-stat-items-1' \
    '93QRfdQC' \
    'Y89ul3sB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkFetchStatItems1' test.out

#- 54 PublicBulkIncUserStatItem
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item' \
    --body '[{"inc": 0.9841459769328219, "statCode": "jXlCbRq3", "userId": "Kq2xeI6k"}, {"inc": 0.6910375018351754, "statCode": "JwWYXeni", "userId": "woGEHMzY"}, {"inc": 0.3335645215183701, "statCode": "qUdPkCd2", "userId": "ZxmU3NH5"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicBulkIncUserStatItem' test.out

#- 55 PublicBulkIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-value' \
    --body '[{"inc": 0.6960144604240737, "statCode": "9FwBVwhZ", "userId": "kk5Nxyyf"}, {"inc": 0.47760374006026973, "statCode": "pk9PNazj", "userId": "9DHXa8ER"}, {"inc": 0.5729128246842472, "statCode": "6XqCeZRH", "userId": "aqvnRsdd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicBulkIncUserStatItemValue' test.out

#- 56 BulkResetUserStatItem2
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-2' \
    --body '[{"statCode": "ykhIDxX7", "userId": "SMMeNY1L"}, {"statCode": "QV4amUHx", "userId": "z1U3wHru"}, {"statCode": "LEnyaSyW", "userId": "Lhrqu04D"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkResetUserStatItem2' test.out

#- 57 CreateStat1
$PYTHON -m $MODULE 'social-create-stat-1' \
    --body '{"defaultValue": 0.657446505684572, "description": "dVTMexpN", "incrementOnly": true, "maximum": 0.6095725722185349, "minimum": 0.6263109394883473, "name": "ZM8N5Dhv", "setAsGlobal": true, "setBy": "SERVER", "statCode": "3KpOSXb3", "tags": ["1cr8Prhr", "SzJE2cSo", "g7bG7pdf"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateStat1' test.out

#- 58 PublicQueryUserStatItems
$PYTHON -m $MODULE 'social-public-query-user-stat-items' \
    '6eyK6HUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicQueryUserStatItems' test.out

#- 59 PublicBulkCreateUserStatItems
$PYTHON -m $MODULE 'social-public-bulk-create-user-stat-items' \
    'wpoenebw' \
    --body '[{"statCode": "VrimaOfR"}, {"statCode": "UWVy2DCg"}, {"statCode": "QO4VZ4az"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicBulkCreateUserStatItems' test.out

#- 60 PublicQueryUserStatItems1
$PYTHON -m $MODULE 'social-public-query-user-stat-items-1' \
    'GA76Tz7s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicQueryUserStatItems1' test.out

#- 61 PublicBulkIncUserStatItem1
$PYTHON -m $MODULE 'social-public-bulk-inc-user-stat-item-1' \
    'gkuev5fa' \
    --body '[{"inc": 0.5112079412760313, "statCode": "sej3d2FM"}, {"inc": 0.7067538069284837, "statCode": "uweQrAzs"}, {"inc": 0.03568501293611892, "statCode": "nL3FA0AT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicBulkIncUserStatItem1' test.out

#- 62 BulkIncUserStatItemValue2
$PYTHON -m $MODULE 'social-bulk-inc-user-stat-item-value-2' \
    'W0eAirfR' \
    --body '[{"inc": 0.3389160615432981, "statCode": "wbHnLWfk"}, {"inc": 0.42089064065598036, "statCode": "gHDN9GZ0"}, {"inc": 0.8494119415153629, "statCode": "fdjZBnzm"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'BulkIncUserStatItemValue2' test.out

#- 63 BulkResetUserStatItem3
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-3' \
    'ZEDngE0u' \
    --body '[{"statCode": "RhdjLoYW"}, {"statCode": "1DVnuGDD"}, {"statCode": "kh4dSNdy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkResetUserStatItem3' test.out

#- 64 PublicCreateUserStatItem
$PYTHON -m $MODULE 'social-public-create-user-stat-item' \
    'tjGEbrRe' \
    'S1C9JyUV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserStatItem' test.out

#- 65 DeleteUserStatItems1
$PYTHON -m $MODULE 'social-delete-user-stat-items-1' \
    'vdNEdmt5' \
    'K9nnQK9q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteUserStatItems1' test.out

#- 66 PublicIncUserStatItem
$PYTHON -m $MODULE 'social-public-inc-user-stat-item' \
    'u5TMzeBj' \
    'OrUib61C' \
    --body '{"inc": 0.31800452663007583}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicIncUserStatItem' test.out

#- 67 PublicIncUserStatItemValue
$PYTHON -m $MODULE 'social-public-inc-user-stat-item-value' \
    'ErqPItie' \
    'XHb3KaIe' \
    --body '{"inc": 0.5503942424596854}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicIncUserStatItemValue' test.out

#- 68 ResetUserStatItemValue1
$PYTHON -m $MODULE 'social-reset-user-stat-item-value-1' \
    'HfzT0W4u' \
    'aqVRFYBv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ResetUserStatItemValue1' test.out

#- 69 BulkUpdateUserStatItemV2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-v2' \
    --body '[{"additionalData": {"2f1N2Eha": {}, "ys6oGmvo": {}, "Ld5SqGis": {}}, "additionalKey": "BJ0i7FyV", "statCode": "C2XRgkVW", "updateStrategy": "OVERRIDE", "userId": "pARatYad", "value": 0.08546757705155672}, {"additionalData": {"v602ucgP": {}, "FGXd92G6": {}, "7B3dWNvR": {}}, "additionalKey": "dBvWxquO", "statCode": "Mu0cnJye", "updateStrategy": "MIN", "userId": "z1q0wn27", "value": 0.6670715244071768}, {"additionalData": {"Ib0YtUOG": {}, "7sKg203I": {}, "uBICKxNy": {}}, "additionalKey": "UhR2VY7A", "statCode": "Ry98OSIZ", "updateStrategy": "OVERRIDE", "userId": "4Y12V35F", "value": 0.04497105561237491}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'BulkUpdateUserStatItemV2' test.out

#- 70 BulkFetchOrDefaultStatItems1
$PYTHON -m $MODULE 'social-bulk-fetch-or-default-stat-items-1' \
    'jBC90lTw' \
    '["Ptkrr8u1", "1t2GUK8S", "ZM3KTo0q"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'BulkFetchOrDefaultStatItems1' test.out

#- 71 BulkUpdateUserStatItem
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item' \
    'iDv2622i' \
    --body '[{"additionalData": {"qGTt3nIk": {}, "oDS8Gfit": {}, "yjCDy4KB": {}}, "statCode": "DLxbzeBD", "updateStrategy": "MAX", "value": 0.3654066146985985}, {"additionalData": {"bfLxflLk": {}, "ToeEADHQ": {}, "eTXVK3Vy": {}}, "statCode": "AN4Yc85Q", "updateStrategy": "MIN", "value": 0.8616671275744237}, {"additionalData": {"7ym5e8P7": {}, "oz1gRBhr": {}, "zXRhmGLD": {}}, "statCode": "dOW5a648", "updateStrategy": "INCREMENT", "value": 0.40022419037497403}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'BulkUpdateUserStatItem' test.out

#- 72 BulkResetUserStatItemValues
$PYTHON -m $MODULE 'social-bulk-reset-user-stat-item-values' \
    'UvBGpBaj' \
    --body '[{"additionalData": {"76o2S9mL": {}, "Ie7fd5PN": {}, "N2tHnkwO": {}}, "statCode": "k2TlnVkB"}, {"additionalData": {"LnTLUVbt": {}, "9Tw1nHuk": {}, "QP9B3sNU": {}}, "statCode": "oZEeifcF"}, {"additionalData": {"kfjPj0OE": {}, "MGEyCXCN": {}, "VYCwMUr7": {}}, "statCode": "mCCleagT"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'BulkResetUserStatItemValues' test.out

#- 73 DeleteUserStatItems2
$PYTHON -m $MODULE 'social-delete-user-stat-items-2' \
    '5iEvuf0W' \
    'ZHXDImh6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteUserStatItems2' test.out

#- 74 UpdateUserStatItemValue
$PYTHON -m $MODULE 'social-update-user-stat-item-value' \
    'gsNgQwRn' \
    '9AAkrQDO' \
    --body '{"additionalData": {"y9sYOKc0": {}, "eb3p4j9d": {}, "DKTlyN0b": {}}, "updateStrategy": "MAX", "value": 0.8814415572012612}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'UpdateUserStatItemValue' test.out

#- 75 BulkUpdateUserStatItem1
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-1' \
    --body '[{"additionalData": {"lRuUzSkL": {}, "YXil1pTy": {}, "LdacD12Q": {}}, "additionalKey": "ihzrXLeh", "statCode": "6oIqHKkT", "updateStrategy": "INCREMENT", "userId": "I7gzgG4B", "value": 0.9355287472720926}, {"additionalData": {"xkI6qxVx": {}, "RwEy8ZUA": {}, "VFJe6Woc": {}}, "additionalKey": "6mrjMYhT", "statCode": "uFZdpIOG", "updateStrategy": "MAX", "userId": "a1ll7xRe", "value": 0.33696688787999607}, {"additionalData": {"hsSPfqZv": {}, "dehe4VAL": {}, "wa6fmLmd": {}}, "additionalKey": "nkxY9jzZ", "statCode": "AN8aoR21", "updateStrategy": "OVERRIDE", "userId": "mnfZHZw2", "value": 0.5892039744876998}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'BulkUpdateUserStatItem1' test.out

#- 76 PublicQueryUserStatItems2
$PYTHON -m $MODULE 'social-public-query-user-stat-items-2' \
    'mePRzrIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'PublicQueryUserStatItems2' test.out

#- 77 BulkUpdateUserStatItem2
$PYTHON -m $MODULE 'social-bulk-update-user-stat-item-2' \
    'JAhSP7F8' \
    --body '[{"additionalData": {"zuxEAlkv": {}, "we91REOO": {}, "1FVEjLJt": {}}, "statCode": "OHkDOvja", "updateStrategy": "OVERRIDE", "value": 0.9974068744576207}, {"additionalData": {"GvuWd6SW": {}, "9c6NhAjJ": {}, "wsXrjdV6": {}}, "statCode": "W0XILgUI", "updateStrategy": "OVERRIDE", "value": 0.9159680637073571}, {"additionalData": {"GGzCmiDp": {}, "UzKuqQnI": {}, "KsysMin5": {}}, "statCode": "QyKUnD4k", "updateStrategy": "INCREMENT", "value": 0.8896283678693326}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'BulkUpdateUserStatItem2' test.out

#- 78 UpdateUserStatItemValue1
$PYTHON -m $MODULE 'social-update-user-stat-item-value-1' \
    'X0ijKXd2' \
    'zddF29XX' \
    --body '{"additionalData": {"JBblML5n": {}, "Dv8BbGHl": {}, "oOHKV9Ze": {}}, "updateStrategy": "OVERRIDE", "value": 0.748907086340094}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'UpdateUserStatItemValue1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
