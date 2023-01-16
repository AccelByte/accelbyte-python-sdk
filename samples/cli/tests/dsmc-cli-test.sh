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
dsmc-list-config --login_with_auth "Bearer foo"
dsmc-update-image '{"artifactPath": "DI8NNsN0", "image": "3mD9gsog", "namespace": "DEPzaofu", "persistent": false, "version": "mYcTEnGZ"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "CXpyu680", "dockerPath": "sZw6BB3h", "image": "My1ZxFzL", "imageSize": 13, "namespace": "34hUuvPh", "persistent": true, "version": "o6L3am8v"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "qxrrUISC", "dockerPath": "j7CHM429", "image": "cmLhuP5n", "imageSize": 54, "namespace": "tvlCVuGU", "patchVersion": "Xwg09R9G", "persistent": true, "version": "P7JAxn5r"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 80, "creation_timeout": 72, "default_version": "quPV5Kr8", "port": 8, "ports": {"9d03U1CO": 79, "qqSLTvnT": 38, "7KmBNtAT": 72}, "protocol": "H0MmM0FG", "providers": ["Wf1uIiBf", "7fBUtkuz", "7BA0Xd6L"], "session_timeout": 97, "unreachable_timeout": 56}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 66, "creation_timeout": 23, "default_version": "4xxGnAUR", "port": 90, "protocol": "cNMCBNlL", "providers": ["VboG5BWh", "YjUI01YK", "DmDYhTjE"], "session_timeout": 79, "unreachable_timeout": 42}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '33' '79' --login_with_auth "Bearer foo"
dsmc-get-deployment 'TUAo4Wff' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 83, "buffer_percent": 7, "configuration": "Q7V3D86w", "enable_region_overrides": false, "game_version": "JrJq1Kz6", "max_count": 30, "min_count": 83, "overrides": {"8nuuyar6": {"buffer_count": 31, "buffer_percent": 49, "configuration": "HquXmDCh", "enable_region_overrides": true, "game_version": "TyLWyfLd", "max_count": 50, "min_count": 3, "name": "LQPT5ern", "region_overrides": {"tULYR6IM": {"buffer_count": 19, "buffer_percent": 93, "max_count": 89, "min_count": 73, "name": "1hjq8E31", "unlimited": false, "use_buffer_percent": false}, "qtjBIEIy": {"buffer_count": 41, "buffer_percent": 15, "max_count": 42, "min_count": 68, "name": "6p1It43O", "unlimited": false, "use_buffer_percent": false}, "SBSjxK59": {"buffer_count": 11, "buffer_percent": 91, "max_count": 66, "min_count": 6, "name": "ovgGFH1V", "unlimited": true, "use_buffer_percent": true}}, "regions": ["zekJbD8O", "ZK8IYqDc", "SzdNoO62"], "session_timeout": 34, "unlimited": false, "use_buffer_percent": false}, "u5Fih1Jq": {"buffer_count": 45, "buffer_percent": 39, "configuration": "GOmbGcCe", "enable_region_overrides": true, "game_version": "LHM4ULSV", "max_count": 78, "min_count": 4, "name": "4Mq9Paie", "region_overrides": {"nx5Pb5ZM": {"buffer_count": 92, "buffer_percent": 77, "max_count": 8, "min_count": 77, "name": "ps2WmxuM", "unlimited": true, "use_buffer_percent": true}, "9F1ymeJa": {"buffer_count": 16, "buffer_percent": 93, "max_count": 64, "min_count": 26, "name": "qKVAD7J2", "unlimited": true, "use_buffer_percent": true}, "PAPBSuq3": {"buffer_count": 19, "buffer_percent": 59, "max_count": 22, "min_count": 58, "name": "bUZR8sz9", "unlimited": false, "use_buffer_percent": true}}, "regions": ["iTSQdKCH", "N9lGym30", "KI15ey8C"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": true}, "gIKaRspL": {"buffer_count": 84, "buffer_percent": 22, "configuration": "ZCnMin87", "enable_region_overrides": false, "game_version": "QARO6tgG", "max_count": 79, "min_count": 65, "name": "ehMnNO8N", "region_overrides": {"5rOmntp4": {"buffer_count": 33, "buffer_percent": 17, "max_count": 68, "min_count": 34, "name": "uL35ryK7", "unlimited": true, "use_buffer_percent": true}, "oS6FWALg": {"buffer_count": 93, "buffer_percent": 60, "max_count": 56, "min_count": 0, "name": "ktjPqdHr", "unlimited": false, "use_buffer_percent": true}, "APWjJOxC": {"buffer_count": 61, "buffer_percent": 63, "max_count": 91, "min_count": 76, "name": "F5Co0xIj", "unlimited": false, "use_buffer_percent": true}}, "regions": ["J3wWR15W", "sLsl915E", "E245qPdo"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"UuWJpwGK": {"buffer_count": 90, "buffer_percent": 62, "max_count": 13, "min_count": 80, "name": "XlLMxLxO", "unlimited": false, "use_buffer_percent": true}, "U4y0BBbt": {"buffer_count": 12, "buffer_percent": 62, "max_count": 30, "min_count": 28, "name": "DZpgBZVX", "unlimited": false, "use_buffer_percent": true}, "2g7z9el0": {"buffer_count": 28, "buffer_percent": 25, "max_count": 75, "min_count": 38, "name": "xZgbUYkw", "unlimited": true, "use_buffer_percent": true}}, "regions": ["p9dzeB4f", "VpC1QCse", "FFOfIBMb"], "session_timeout": 23, "unlimited": false, "use_buffer_percent": true}' '8kjn1S6G' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'O04MZAqi' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 85, "buffer_percent": 36, "configuration": "znqtOln0", "enable_region_overrides": true, "game_version": "alm24gpC", "max_count": 94, "min_count": 51, "regions": ["JmCQGZ48", "zWyt3elw", "c8XEiUn6"], "session_timeout": 100, "unlimited": true, "use_buffer_percent": false}' 'kFxSE8LF' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 75, "buffer_percent": 2, "max_count": 21, "min_count": 52, "unlimited": true, "use_buffer_percent": false}' 'EvQvvQ6D' 'cuMB00Xn' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'T2bSCsGZ' 'pDDUqG8z' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 40, "buffer_percent": 66, "max_count": 82, "min_count": 93, "unlimited": true, "use_buffer_percent": false}' 'ZuFaDdV7' 'qPpMhmKC' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 73, "buffer_percent": 90, "configuration": "dC3sb12C", "enable_region_overrides": true, "game_version": "0EK23z85", "max_count": 86, "min_count": 3, "region_overrides": {"dh7klVnF": {"buffer_count": 23, "buffer_percent": 44, "max_count": 47, "min_count": 64, "name": "Xu2Knz9S", "unlimited": false, "use_buffer_percent": false}, "43M3iXnR": {"buffer_count": 5, "buffer_percent": 67, "max_count": 83, "min_count": 44, "name": "PsFoyT1m", "unlimited": true, "use_buffer_percent": true}, "WuwR8XWp": {"buffer_count": 55, "buffer_percent": 71, "max_count": 71, "min_count": 45, "name": "zOpdCHOB", "unlimited": true, "use_buffer_percent": false}}, "regions": ["TDOglkpw", "GWAh6hiV", "NqDDGvi8"], "session_timeout": 26, "unlimited": true, "use_buffer_percent": false}' 'M4jEmNBo' 'ExKy1qta' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override '7H4NN9hi' 'yaff4pLx' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 96, "buffer_percent": 99, "configuration": "sHWZPiDc", "enable_region_overrides": true, "game_version": "DpFAoUZt", "max_count": 61, "min_count": 24, "regions": ["ktuc4DjP", "4JPFdsCu", "NKhJbYZ7"], "session_timeout": 16, "unlimited": true, "use_buffer_percent": false}' 'gh6927Ca' '3txXni1z' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 30, "buffer_percent": 80, "max_count": 63, "min_count": 14, "unlimited": false, "use_buffer_percent": true}' 'Ye9F4yRU' '9TwUPOeZ' 'xW8uWz6F' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'm8YS8J4x' 'JSpBPYQL' 'yeblYVyi' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 78, "buffer_percent": 80, "max_count": 2, "min_count": 83, "unlimited": true, "use_buffer_percent": false}' 'vfUcseb6' 'HkISwhO4' '8eQiK4JS' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '52' '51' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'z5eAHmqo' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 68, "mem_limit": 30, "params": "Fxqw2qu6"}' 'Oe6a2Nk9' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'OR13ZJMy' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 77, "mem_limit": 81, "name": "6hCqJglK", "params": "S7XCanFL"}' 'ZVcD1i59' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 78}' 'iyddidBc' --login_with_auth "Bearer foo"
dsmc-delete-port 'hnGeYqVH' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "Q1FCByp5", "port": 43}' 'bLrTXzO8' --login_with_auth "Bearer foo"
dsmc-list-images '29' '4' --login_with_auth "Bearer foo"
dsmc-delete-image '3NUxnHkq' 'ayusJyJy' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'L35anSKj' 'kiG0Y15x' 'ecX6dnWV' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'RU2ccX5u' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'iSROf2Sc' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'GRbQLc1v' 'WveTF4Gh' --login_with_auth "Bearer foo"
dsmc-list-server '20' '3' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'DyOna2mU' --login_with_auth "Bearer foo"
dsmc-get-server 'FooPGtzm' --login_with_auth "Bearer foo"
dsmc-delete-server 'c71aIXgA' --login_with_auth "Bearer foo"
dsmc-list-session '1' '14' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '1Hec92TB' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client '2eWBhXq4' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "keOt4PbM"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "yLrdIUIA", "ip": "i2rXJtfH", "name": "VV012nqe", "port": 7}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "PO2IHsUY", "pod_name": "NK4tXTuG"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": true, "pod_name": "TKPbfhZn"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'RMPeJYZz' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "fqGdrzs9", "configuration": "15IokYm7", "deployment": "FrbhUFrM", "game_mode": "Rm5pHbd4", "matching_allies": [{"matching_parties": [{"party_attributes": {"ikKDkfKy": {}, "w0J0nWzF": {}, "rHFqa211": {}}, "party_id": "IT2HELpl", "party_members": [{"user_id": "3XFBCbzQ"}, {"user_id": "VHWTqhX7"}, {"user_id": "WJI7KjZL"}]}, {"party_attributes": {"1KiviguB": {}, "ntEDIwFd": {}, "AHcCBeTG": {}}, "party_id": "fgoZFP7Z", "party_members": [{"user_id": "VIlWdk3G"}, {"user_id": "kfZAbcQX"}, {"user_id": "QelOP2yr"}]}, {"party_attributes": {"hopIpEbs": {}, "AhId0neS": {}, "PSb0nTn5": {}}, "party_id": "VBncv7No", "party_members": [{"user_id": "yl1IKwUB"}, {"user_id": "J8I9ipit"}, {"user_id": "BGarOQzC"}]}]}, {"matching_parties": [{"party_attributes": {"5v93YAFZ": {}, "vUliSPuA": {}, "N0ZnlYsW": {}}, "party_id": "V7B6rTIN", "party_members": [{"user_id": "nopSo1ln"}, {"user_id": "Bq86RIRV"}, {"user_id": "mBG2oNrG"}]}, {"party_attributes": {"N8BNsvdF": {}, "m6pL98yM": {}, "Ei6mlyaW": {}}, "party_id": "fuj7cbQz", "party_members": [{"user_id": "x9Ire91D"}, {"user_id": "4v5xO522"}, {"user_id": "H9Y9rvcG"}]}, {"party_attributes": {"LNWPrA4m": {}, "IOhgA2L7": {}, "cMZBJCwV": {}}, "party_id": "YwD0gQwt", "party_members": [{"user_id": "qjYu23wW"}, {"user_id": "hGsYA7oP"}, {"user_id": "scKP34q3"}]}]}, {"matching_parties": [{"party_attributes": {"Z76WQC1s": {}, "qchtLBbx": {}, "W2Wv2Yok": {}}, "party_id": "iW2TG8Vu", "party_members": [{"user_id": "zhcLE16e"}, {"user_id": "UuXy9EWI"}, {"user_id": "ykjg5W7o"}]}, {"party_attributes": {"NYFKznyv": {}, "FRAoAI4O": {}, "N9phGYjr": {}}, "party_id": "oif6QGIX", "party_members": [{"user_id": "EP938utF"}, {"user_id": "3JFv9fDG"}, {"user_id": "rYEDq6TU"}]}, {"party_attributes": {"mvsCovSZ": {}, "4GzMpzaN": {}, "9fmz95aw": {}}, "party_id": "bs2EyVU0", "party_members": [{"user_id": "YyWwwmz8"}, {"user_id": "8UleQo2F"}, {"user_id": "CcjThWAg"}]}]}], "namespace": "dtCSh5gA", "notification_payload": {}, "pod_name": "NkPnfofM", "region": "Bc4Y0yJt", "session_id": "FWJQcMAM"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "JCzqd30w"}' --login_with_auth "Bearer foo"
dsmc-get-session 'qcE9PBpy' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'DbbIbyhZ' --login_with_auth "Bearer foo"
dsmc-public-get-messages --login_with_auth "Bearer foo"
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
echo "1..69"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListConfig
$PYTHON -m $MODULE 'dsmc-list-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListConfig' test.out

#- 3 SaveConfig
eval_tap 0 3 'SaveConfig # SKIP deprecated' test.out

#- 4 UpdateImage
$PYTHON -m $MODULE 'dsmc-update-image' \
    '{"artifactPath": "lxnZrK0F", "image": "lDLDV5SS", "namespace": "eOBpDZND", "persistent": true, "version": "rY0hpwfn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "pUDqtmUZ", "dockerPath": "xjAr8rHU", "image": "PNvD2XN8", "imageSize": 84, "namespace": "KNrtDYde", "persistent": true, "version": "8A6RZfzx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'CreateImage' test.out

#- 6 ImportImages
$PYTHON -m $MODULE 'dsmc-import-images' \
    'tmp.dat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'ImportImages' test.out

#- 7 CreateImagePatch
$PYTHON -m $MODULE 'dsmc-create-image-patch' \
    '{"artifactPath": "g67DRf1D", "dockerPath": "2FBGSGnL", "image": "BNcvoMtM", "imageSize": 77, "namespace": "EKGyLMXc", "patchVersion": "oWcLWx42", "persistent": false, "version": "F8lP06Ro"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'CreateImagePatch' test.out

#- 8 GetLowestInstanceSpec
$PYTHON -m $MODULE 'dsmc-get-lowest-instance-spec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetLowestInstanceSpec' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'dsmc-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 CreateConfig
$PYTHON -m $MODULE 'dsmc-create-config' \
    '{"claim_timeout": 48, "creation_timeout": 83, "default_version": "t1R6Nh1F", "port": 5, "ports": {"k4UeGPp2": 98, "igBnZ9G4": 54, "A5dz03Ph": 90}, "protocol": "wCaaiyul", "providers": ["XtmYp5Wa", "0GYRsIZO", "zxiMaFs1"], "session_timeout": 32, "unreachable_timeout": 43}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'CreateConfig' test.out

#- 11 DeleteConfig
$PYTHON -m $MODULE 'dsmc-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteConfig' test.out

#- 12 UpdateConfig
$PYTHON -m $MODULE 'dsmc-update-config' \
    '{"claim_timeout": 43, "creation_timeout": 11, "default_version": "eAdWEKIK", "port": 51, "protocol": "QyL7WReF", "providers": ["Sx0mJnBk", "W0kVpnsJ", "0vj0DQUE"], "session_timeout": 62, "unreachable_timeout": 83}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateConfig' test.out

#- 13 ClearCache
$PYTHON -m $MODULE 'dsmc-clear-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'ClearCache' test.out

#- 14 GetAllDeployment
$PYTHON -m $MODULE 'dsmc-get-all-deployment' \
    '17' \
    '39' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'nrVHiZyw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 29, "buffer_percent": 89, "configuration": "29vmy1h5", "enable_region_overrides": false, "game_version": "T56QwFsQ", "max_count": 88, "min_count": 17, "overrides": {"P5iI0a9d": {"buffer_count": 73, "buffer_percent": 45, "configuration": "BL3j531h", "enable_region_overrides": false, "game_version": "YCZKsXXZ", "max_count": 34, "min_count": 99, "name": "X6IPQRMf", "region_overrides": {"jxrLwpm7": {"buffer_count": 81, "buffer_percent": 62, "max_count": 83, "min_count": 49, "name": "iq4PqOnq", "unlimited": true, "use_buffer_percent": true}, "UzxmZsI2": {"buffer_count": 92, "buffer_percent": 68, "max_count": 6, "min_count": 46, "name": "U0IM8moX", "unlimited": false, "use_buffer_percent": false}, "6aZdY7U5": {"buffer_count": 33, "buffer_percent": 8, "max_count": 11, "min_count": 28, "name": "levcvTvK", "unlimited": true, "use_buffer_percent": false}}, "regions": ["pOw59XHz", "kTbu1CzO", "Hc0jL091"], "session_timeout": 68, "unlimited": true, "use_buffer_percent": true}, "lsKOgOij": {"buffer_count": 51, "buffer_percent": 73, "configuration": "0ph3eO4i", "enable_region_overrides": true, "game_version": "YmrviD1P", "max_count": 36, "min_count": 20, "name": "75iLmZaV", "region_overrides": {"CK3DOWvQ": {"buffer_count": 76, "buffer_percent": 94, "max_count": 19, "min_count": 23, "name": "pypJf5mc", "unlimited": false, "use_buffer_percent": false}, "OKpXWlx9": {"buffer_count": 18, "buffer_percent": 16, "max_count": 46, "min_count": 10, "name": "kVbLDocX", "unlimited": false, "use_buffer_percent": true}, "ILBRMA1g": {"buffer_count": 87, "buffer_percent": 37, "max_count": 35, "min_count": 97, "name": "YviEdlpd", "unlimited": false, "use_buffer_percent": false}}, "regions": ["i1psOyp9", "dEeNg4Nj", "cCac7jjU"], "session_timeout": 76, "unlimited": true, "use_buffer_percent": true}, "EM3YW9U5": {"buffer_count": 97, "buffer_percent": 14, "configuration": "I6KPaFQD", "enable_region_overrides": true, "game_version": "J6kq2jfk", "max_count": 33, "min_count": 43, "name": "3a2fe6ST", "region_overrides": {"GNS5EeVd": {"buffer_count": 89, "buffer_percent": 30, "max_count": 93, "min_count": 61, "name": "JS8Kun8d", "unlimited": true, "use_buffer_percent": true}, "WSFm8sTE": {"buffer_count": 9, "buffer_percent": 98, "max_count": 8, "min_count": 35, "name": "PidTtAmT", "unlimited": true, "use_buffer_percent": true}, "TEFKKuWd": {"buffer_count": 20, "buffer_percent": 57, "max_count": 34, "min_count": 1, "name": "TrvLzoYe", "unlimited": true, "use_buffer_percent": true}}, "regions": ["dpV7r26i", "WcEfEqki", "AxAOSbAj"], "session_timeout": 7, "unlimited": true, "use_buffer_percent": true}}, "region_overrides": {"yB84xOee": {"buffer_count": 53, "buffer_percent": 20, "max_count": 94, "min_count": 18, "name": "hKmf1evy", "unlimited": true, "use_buffer_percent": true}, "WDfVFT7c": {"buffer_count": 55, "buffer_percent": 84, "max_count": 29, "min_count": 97, "name": "r70rG5L2", "unlimited": false, "use_buffer_percent": false}, "PeuCCES8": {"buffer_count": 73, "buffer_percent": 57, "max_count": 91, "min_count": 49, "name": "NyIA7Ypz", "unlimited": false, "use_buffer_percent": false}}, "regions": ["zTkHMCAR", "tudyWhoL", "RB63lJ8D"], "session_timeout": 81, "unlimited": true, "use_buffer_percent": false}' \
    'EBGT0PGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'mrrQDcOM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 90, "buffer_percent": 87, "configuration": "eqktDDv6", "enable_region_overrides": true, "game_version": "KWeVdNHu", "max_count": 27, "min_count": 75, "regions": ["owm4y4PK", "BLxFmTma", "7B1by57H"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": true}' \
    'd2vdFC6z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 87, "buffer_percent": 73, "max_count": 99, "min_count": 67, "unlimited": true, "use_buffer_percent": true}' \
    'tSwYERtn' \
    '42i5S7zj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'qGsyr4qL' \
    '2TB28DET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 93, "buffer_percent": 49, "max_count": 21, "min_count": 54, "unlimited": false, "use_buffer_percent": false}' \
    'LICa2F6v' \
    '0mIDE5Dj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 91, "buffer_percent": 44, "configuration": "8J8hV2i4", "enable_region_overrides": false, "game_version": "iDP3Gqyv", "max_count": 41, "min_count": 70, "region_overrides": {"x9JuQbHc": {"buffer_count": 88, "buffer_percent": 32, "max_count": 42, "min_count": 67, "name": "eKs7Bduj", "unlimited": false, "use_buffer_percent": true}, "O4SzGzK9": {"buffer_count": 40, "buffer_percent": 45, "max_count": 36, "min_count": 63, "name": "GKd06EOl", "unlimited": false, "use_buffer_percent": true}, "pgSWGyII": {"buffer_count": 63, "buffer_percent": 39, "max_count": 48, "min_count": 9, "name": "zEREM2SJ", "unlimited": false, "use_buffer_percent": false}}, "regions": ["dnDlAVCi", "M1Xrtpxg", "TcbmjohH"], "session_timeout": 35, "unlimited": true, "use_buffer_percent": false}' \
    'qwOslRh6' \
    'Dn8HNL2e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'puXZa5Q7' \
    'vWqdzybd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 98, "buffer_percent": 51, "configuration": "mejjpxLr", "enable_region_overrides": true, "game_version": "d5Y5uqNL", "max_count": 9, "min_count": 19, "regions": ["WVq0poR4", "tkVWBt6O", "zL5wTnwg"], "session_timeout": 46, "unlimited": false, "use_buffer_percent": false}' \
    'tN60vpQU' \
    'FZSJ0FKC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 71, "buffer_percent": 44, "max_count": 13, "min_count": 65, "unlimited": false, "use_buffer_percent": false}' \
    'PF9Cyall' \
    'rVnWG1dH' \
    '66Ym7rY2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'pq9dP1MP' \
    'yRvuu8mv' \
    'HxSNu8jI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 73, "buffer_percent": 75, "max_count": 66, "min_count": 77, "unlimited": false, "use_buffer_percent": true}' \
    'ku6BbbfB' \
    'PlqOZjqO' \
    'BKV2Kv2y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '62' \
    '82' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'MbdxfWEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 20, "mem_limit": 77, "params": "JbdT6XXG"}' \
    'u9hLFh24' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    '10bKvfCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 13, "mem_limit": 54, "name": "06KXnDRw", "params": "vxUdxDO3"}' \
    'IoaDy3jQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 93}' \
    '2oJrK0Zc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    '6pvRELuw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "AJai8Wdx", "port": 8}' \
    'w6ypBpst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '43' \
    '12' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'vknru7wg' \
    '4AJVyn32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteImage' test.out

#- 38 ExportImages
$PYTHON -m $MODULE 'dsmc-export-images' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'ExportImages' test.out

#- 39 GetImageLimit
$PYTHON -m $MODULE 'dsmc-get-image-limit' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetImageLimit' test.out

#- 40 DeleteImagePatch
$PYTHON -m $MODULE 'dsmc-delete-image-patch' \
    'FqpeRfJJ' \
    'm2Mpnx7D' \
    'Wjjf93gq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'QCDZ1Etz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'J9kbCL9i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'KuwjvsYU' \
    'iV89KGXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '0' \
    '21' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'ListServer' test.out

#- 45 CountServer
$PYTHON -m $MODULE 'dsmc-count-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CountServer' test.out

#- 46 CountServerDetailed
$PYTHON -m $MODULE 'dsmc-count-server-detailed' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'CountServerDetailed' test.out

#- 47 ListLocalServer
$PYTHON -m $MODULE 'dsmc-list-local-server' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'ListLocalServer' test.out

#- 48 DeleteLocalServer
$PYTHON -m $MODULE 'dsmc-delete-local-server' \
    'hfJDeqq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'HmHN7WYA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    '6SylAdq4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '82' \
    '62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ListSession' test.out

#- 52 CountSession
$PYTHON -m $MODULE 'dsmc-count-session' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'CountSession' test.out

#- 53 DeleteSession
$PYTHON -m $MODULE 'dsmc-delete-session' \
    '2BGMkikm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteSession' test.out

#- 54 ExportConfigV1
$PYTHON -m $MODULE 'dsmc-export-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'ExportConfigV1' test.out

#- 55 ImportConfigV1
$PYTHON -m $MODULE 'dsmc-import-config-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'ImportConfigV1' test.out

#- 56 ImageLimitClient
$PYTHON -m $MODULE 'dsmc-image-limit-client' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'ImageLimitClient' test.out

#- 57 ImageDetailClient
$PYTHON -m $MODULE 'dsmc-image-detail-client' \
    'XSC6WGqY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "oiZM0VEM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "esOztH2f", "ip": "Tjib0Hns", "name": "C56dy6xS", "port": 24}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "FLhxHwIk", "pod_name": "hGMbPBF9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "ijK3pnbj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    '4U6qsESU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "D2VVclFz", "configuration": "wYDyMm7w", "deployment": "faRsitTp", "game_mode": "s7u6Zwmx", "matching_allies": [{"matching_parties": [{"party_attributes": {"7dZ3bzBo": {}, "hDuYXbXw": {}, "oEbaj4Ix": {}}, "party_id": "XtSh1JMV", "party_members": [{"user_id": "FMIo7hop"}, {"user_id": "t6iqWVyG"}, {"user_id": "6gU8HzmJ"}]}, {"party_attributes": {"VeFx6roD": {}, "bdQfXxMs": {}, "o7lx5ai9": {}}, "party_id": "waLpDgZ5", "party_members": [{"user_id": "rLNIDovW"}, {"user_id": "HQOTueyN"}, {"user_id": "EqWAGyuN"}]}, {"party_attributes": {"X9GdgBhs": {}, "bAhU3CX3": {}, "1hFclkfR": {}}, "party_id": "rCUhl0mb", "party_members": [{"user_id": "AsZlse0W"}, {"user_id": "9RLP09rG"}, {"user_id": "ATIIYMmj"}]}]}, {"matching_parties": [{"party_attributes": {"GyBff9bO": {}, "Bi9zMqNV": {}, "LQ8EQJCc": {}}, "party_id": "lpeufO5n", "party_members": [{"user_id": "kC49BXDY"}, {"user_id": "snjhbBHq"}, {"user_id": "E756wJVN"}]}, {"party_attributes": {"ZQOWOVId": {}, "cJJXzPez": {}, "WI7UN4sq": {}}, "party_id": "102TSQdv", "party_members": [{"user_id": "3hAeVqPZ"}, {"user_id": "yHBTWu7o"}, {"user_id": "UfQt81nl"}]}, {"party_attributes": {"eJUCAPB5": {}, "G6CEohOD": {}, "UWU443TU": {}}, "party_id": "sjeLLFrz", "party_members": [{"user_id": "o1ArRc5Q"}, {"user_id": "XuTjTI2U"}, {"user_id": "zJAPrhlN"}]}]}, {"matching_parties": [{"party_attributes": {"X9APV8q6": {}, "ost1hTw2": {}, "gZrxjkOD": {}}, "party_id": "VPaNyHEX", "party_members": [{"user_id": "cHuYUJ1W"}, {"user_id": "rnOGKae0"}, {"user_id": "WkVfIznN"}]}, {"party_attributes": {"uToop8BT": {}, "Kzja3Lg0": {}, "8yAIWel6": {}}, "party_id": "degXtv2v", "party_members": [{"user_id": "Z0of5HO7"}, {"user_id": "v6T8qfRC"}, {"user_id": "otmUskoi"}]}, {"party_attributes": {"2Wsj9640": {}, "RJYhXLTB": {}, "8sDCqIbS": {}}, "party_id": "LeZtim0g", "party_members": [{"user_id": "DT9tx1nd"}, {"user_id": "K66NBYqa"}, {"user_id": "mGisucO0"}]}]}], "namespace": "Yvmx3H9o", "notification_payload": {}, "pod_name": "EETeNe4m", "region": "oyupaVuO", "session_id": "QlIvaXkj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "wZwr1GvT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'ZTvGVIda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSession' test.out

#- 66 GetDefaultProvider
$PYTHON -m $MODULE 'dsmc-get-default-provider' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetDefaultProvider' test.out

#- 67 ListProviders
$PYTHON -m $MODULE 'dsmc-list-providers' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'ListProviders' test.out

#- 68 ListProvidersByRegion
$PYTHON -m $MODULE 'dsmc-list-providers-by-region' \
    'kJNhGcdX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'ListProvidersByRegion' test.out

#- 69 PublicGetMessages
$PYTHON -m $MODULE 'dsmc-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetMessages' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
