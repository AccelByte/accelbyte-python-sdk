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
dsmc-update-image '{"artifactPath": "8NZn9zSU", "image": "Em9JMA3b", "namespace": "OGDHRNj3", "persistent": false, "version": "pBWM3y9g"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "aTUFF3zS", "dockerPath": "dPhhs8O7", "image": "LiGEYFgP", "imageSize": 20, "namespace": "fDn3bVzD", "persistent": true, "version": "UCXNwMfo"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "Xj8lC8AX", "dockerPath": "qVmN9Iib", "image": "vM4qu4It", "imageSize": 83, "namespace": "ee4Vme8G", "patchVersion": "q7PNQKIo", "persistent": true, "version": "9IUZw1wH"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 78, "creation_timeout": 35, "default_version": "EDmoHfC2", "port": 32, "ports": {"ac8qllUJ": 41, "6twIyMKY": 6, "ostqyEYJ": 78}, "protocol": "77vcsgGw", "providers": ["YrSC5vEF", "JlAOYx3w", "hGpziXck"], "session_timeout": 14, "unreachable_timeout": 47}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 80, "creation_timeout": 73, "default_version": "3qIeCkoO", "port": 10, "protocol": "fVT5bmFR", "providers": ["wn5Dzsya", "3BL3k7uV", "j0Ly4yaL"], "session_timeout": 97, "unreachable_timeout": 40}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '84' '50' --login_with_auth "Bearer foo"
dsmc-get-deployment 'Cho1b72u' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": true, "buffer_count": 26, "buffer_percent": 6, "configuration": "0iW2mhn9", "enable_region_overrides": true, "game_version": "Gx1w6YCy", "max_count": 80, "min_count": 36, "overrides": {"0YuieAnY": {"buffer_count": 17, "buffer_percent": 61, "configuration": "3AXASb1N", "enable_region_overrides": false, "game_version": "iNb2hg3S", "max_count": 93, "min_count": 50, "name": "SjTfxWyA", "region_overrides": {"TVDs9qTh": {"buffer_count": 57, "buffer_percent": 58, "max_count": 4, "min_count": 72, "name": "prOQNoq3", "unlimited": false, "use_buffer_percent": false}, "BO11C9VQ": {"buffer_count": 86, "buffer_percent": 88, "max_count": 74, "min_count": 31, "name": "0ojnoW9g", "unlimited": false, "use_buffer_percent": true}, "Y4qH6AQY": {"buffer_count": 54, "buffer_percent": 29, "max_count": 80, "min_count": 97, "name": "h0vdQrfM", "unlimited": false, "use_buffer_percent": true}}, "regions": ["YFQZdrpB", "6necJRni", "2fGpB8nm"], "session_timeout": 59, "unlimited": true, "use_buffer_percent": false}, "495JFmR0": {"buffer_count": 29, "buffer_percent": 76, "configuration": "Z4R5La4d", "enable_region_overrides": true, "game_version": "jEeTKOeD", "max_count": 76, "min_count": 86, "name": "4VbCitpR", "region_overrides": {"KZe0Ji3I": {"buffer_count": 75, "buffer_percent": 93, "max_count": 88, "min_count": 35, "name": "H0617iOW", "unlimited": true, "use_buffer_percent": true}, "r8nU5jnw": {"buffer_count": 25, "buffer_percent": 49, "max_count": 83, "min_count": 64, "name": "lgfyJSWE", "unlimited": false, "use_buffer_percent": false}, "uH0XmjlP": {"buffer_count": 93, "buffer_percent": 67, "max_count": 2, "min_count": 78, "name": "g0zkF5IA", "unlimited": false, "use_buffer_percent": true}}, "regions": ["Cxcoh5Xp", "nMDOKzJV", "KpG4MNoM"], "session_timeout": 57, "unlimited": true, "use_buffer_percent": true}, "9WKGCQsV": {"buffer_count": 40, "buffer_percent": 67, "configuration": "KlZkyRoI", "enable_region_overrides": true, "game_version": "7KE70g0v", "max_count": 59, "min_count": 99, "name": "bI3HHH64", "region_overrides": {"QI68WuW5": {"buffer_count": 71, "buffer_percent": 49, "max_count": 3, "min_count": 42, "name": "CWcd1vi1", "unlimited": true, "use_buffer_percent": true}, "xfWmmIXN": {"buffer_count": 71, "buffer_percent": 14, "max_count": 34, "min_count": 9, "name": "QACcUfpq", "unlimited": true, "use_buffer_percent": false}, "YmoPetkz": {"buffer_count": 99, "buffer_percent": 34, "max_count": 64, "min_count": 0, "name": "oaMcIpRi", "unlimited": false, "use_buffer_percent": true}}, "regions": ["JUdCqnpJ", "BoT7gNWu", "GWO1wCie"], "session_timeout": 85, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"IEoOwxLf": {"buffer_count": 74, "buffer_percent": 68, "max_count": 90, "min_count": 100, "name": "GD5PpT4Y", "unlimited": true, "use_buffer_percent": false}, "W0H18bpa": {"buffer_count": 82, "buffer_percent": 27, "max_count": 9, "min_count": 44, "name": "gm1WwoLu", "unlimited": false, "use_buffer_percent": false}, "n5XWLHW3": {"buffer_count": 59, "buffer_percent": 75, "max_count": 6, "min_count": 86, "name": "fNiNJmAP", "unlimited": false, "use_buffer_percent": false}}, "regions": ["DKR0vuEO", "CfhFzL8X", "arW4fREQ"], "session_timeout": 65, "unlimited": false, "use_buffer_percent": true}' 'I7VHHh8H' --login_with_auth "Bearer foo"
dsmc-delete-deployment '3Ex7NUtc' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 18, "buffer_percent": 86, "configuration": "4hT1LACc", "enable_region_overrides": true, "game_version": "5biS746d", "max_count": 21, "min_count": 13, "regions": ["Z4l8mNQS", "UEgbt365", "3EhTEZ4O"], "session_timeout": 99, "unlimited": false, "use_buffer_percent": false}' 'yVSfcoAO' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 79, "buffer_percent": 3, "max_count": 5, "min_count": 69, "unlimited": true, "use_buffer_percent": true}' 'j08Vfc33' '2KsU8C6U' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'RDm0XQnW' 'p2XMFpwc' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 92, "buffer_percent": 99, "max_count": 45, "min_count": 23, "unlimited": true, "use_buffer_percent": false}' 'ic6O1XHE' 'd7qtH7tP' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 17, "buffer_percent": 7, "configuration": "5IqZzFZ1", "enable_region_overrides": true, "game_version": "EB11Dcsx", "max_count": 52, "min_count": 42, "region_overrides": {"A9JwDPp7": {"buffer_count": 27, "buffer_percent": 53, "max_count": 43, "min_count": 76, "name": "pCwMVfo2", "unlimited": false, "use_buffer_percent": false}, "VVIHjoeK": {"buffer_count": 71, "buffer_percent": 50, "max_count": 40, "min_count": 97, "name": "hzToxsJn", "unlimited": true, "use_buffer_percent": true}, "1pGWl8Ec": {"buffer_count": 4, "buffer_percent": 16, "max_count": 8, "min_count": 0, "name": "3r8jQGpx", "unlimited": true, "use_buffer_percent": true}}, "regions": ["0HnY7NzB", "dUJuXZCH", "kiAGZij4"], "session_timeout": 15, "unlimited": false, "use_buffer_percent": false}' 'PwNQO2Q8' 'Ox7ymf7W' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override '0bSWjkgw' 'mP4abRIF' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 89, "buffer_percent": 28, "configuration": "dWjgoOzl", "enable_region_overrides": false, "game_version": "s2GZLAjT", "max_count": 25, "min_count": 67, "regions": ["1AXgwAh1", "aJvcL18P", "yd7RKtlT"], "session_timeout": 3, "unlimited": true, "use_buffer_percent": false}' 'UAb2Q3Zf' 'IyRmNqPY' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 81, "buffer_percent": 64, "max_count": 90, "min_count": 93, "unlimited": false, "use_buffer_percent": false}' '3RebyS1u' 'Sm0fa8M2' '4RSll0HO' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'HbvIrKK2' 'ZR686RLI' 'sauEBdrc' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 31, "buffer_percent": 24, "max_count": 89, "min_count": 73, "unlimited": true, "use_buffer_percent": false}' 'kndEIn9d' '8gzOnTeA' 'jhOSsStQ' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '19' '39' --login_with_auth "Bearer foo"
dsmc-get-pod-config 'prHo8gFr' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 24, "mem_limit": 22, "params": "g5RG8GuZ"}' 'B1I4HJQh' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'vGWH7q95' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 89, "mem_limit": 0, "name": "LbjviwOV", "params": "ZxQEcciI"}' 'ilc1xhSI' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 46}' 'N3cQz6Uj' --login_with_auth "Bearer foo"
dsmc-delete-port 'GSlZfs7w' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "ujTa7gGW", "port": 48}' '6Upz7gI6' --login_with_auth "Bearer foo"
dsmc-list-images '7' '31' --login_with_auth "Bearer foo"
dsmc-delete-image 'fcfdJK7n' 'OVw7SVeQ' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch '8IUFT4Le' 'zm1CD1C0' 'bHzh6UXg' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'jR5alyRk' --login_with_auth "Bearer foo"
dsmc-get-image-patches '407GBQpv' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'Y2GziWaU' '37IJ6vkH' --login_with_auth "Bearer foo"
dsmc-list-server '26' '10' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'GmwX3MWV' --login_with_auth "Bearer foo"
dsmc-get-server 'Ekz8AGVD' --login_with_auth "Bearer foo"
dsmc-delete-server 'DyqVOzS1' --login_with_auth "Bearer foo"
dsmc-list-session '38' '77' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '6dCzGg4P' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'euV1c3XI' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "dTUvQgMe"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "PM8wp1TW", "ip": "FI79Y2km", "name": "3GxeaNKN", "port": 47}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "Hwg0JCmo", "pod_name": "6CSvKZZA"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "7hvxQUjg"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'iuQsGtFf' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "3TUbZRPV", "configuration": "e19fQQzN", "deployment": "bVqv6nFN", "game_mode": "CXtQbG29", "matching_allies": [{"matching_parties": [{"party_attributes": {"m8RltADW": {}, "VV4AbmIV": {}, "qUTNlL5I": {}}, "party_id": "XQwd3bQw", "party_members": [{"user_id": "5DjbXU1V"}, {"user_id": "aOP8clYP"}, {"user_id": "WcHWsvNL"}]}, {"party_attributes": {"1xJISEyt": {}, "6hzwmStm": {}, "eKNW7wfi": {}}, "party_id": "0JzXpp4K", "party_members": [{"user_id": "bR5h4CGL"}, {"user_id": "aCzCgiyN"}, {"user_id": "yvLRDJMs"}]}, {"party_attributes": {"0IIdcquO": {}, "AA7XsByk": {}, "PSs3rNna": {}}, "party_id": "nSlMhSXN", "party_members": [{"user_id": "lwTMuzXg"}, {"user_id": "Cj22nGMZ"}, {"user_id": "0r09Vbfa"}]}]}, {"matching_parties": [{"party_attributes": {"dt6LFpKy": {}, "sLoyjbre": {}, "eVhFnwMd": {}}, "party_id": "oOkqGPk9", "party_members": [{"user_id": "umZKJBwl"}, {"user_id": "FizzVian"}, {"user_id": "8ILv9VVP"}]}, {"party_attributes": {"grcq3SAi": {}, "mcBT59AI": {}, "pWP5jCTY": {}}, "party_id": "01XsJ95Z", "party_members": [{"user_id": "lZ45JTaj"}, {"user_id": "WkzuHAVs"}, {"user_id": "muD4CChX"}]}, {"party_attributes": {"POFDHeNk": {}, "u9bhRELb": {}, "DT5mnQs9": {}}, "party_id": "LqksnxcK", "party_members": [{"user_id": "PQVep2tv"}, {"user_id": "PB19afFD"}, {"user_id": "NmExYskQ"}]}]}, {"matching_parties": [{"party_attributes": {"moog084j": {}, "yUdSeeiI": {}, "eKeW86t1": {}}, "party_id": "dJhBMhUt", "party_members": [{"user_id": "LPlx6Hp2"}, {"user_id": "HzbSaVeh"}, {"user_id": "0zdLVOGE"}]}, {"party_attributes": {"LPMROn8V": {}, "fGQjkDLL": {}, "LlZ0Ym3h": {}}, "party_id": "U0kbLz0m", "party_members": [{"user_id": "qykUWZON"}, {"user_id": "UT704aF5"}, {"user_id": "w5mUklHB"}]}, {"party_attributes": {"O224Q2pf": {}, "8AvRYKii": {}, "7chxC9CK": {}}, "party_id": "hgeEFygp", "party_members": [{"user_id": "kh3BYfnQ"}, {"user_id": "gnRRmkEw"}, {"user_id": "JOoE5Eih"}]}]}], "namespace": "RqkwEUEn", "notification_payload": {}, "pod_name": "B1iwJijM", "region": "vTf9H6c9", "session_id": "gK7MAyfU"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "NkAK7xHD"}' --login_with_auth "Bearer foo"
dsmc-get-session 'tAUVj063' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'dn0w929f' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "I2fWHgDU", "image": "aSd6cNaf", "namespace": "L73ihz5z", "persistent": true, "version": "ARaJw6FM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "9frHZXM8", "dockerPath": "EEugYKuK", "image": "jk8LyJEh", "imageSize": 18, "namespace": "OTX93IZg", "persistent": true, "version": "GkD2owST"}' \
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
    '{"artifactPath": "3ZzdNMEy", "dockerPath": "Qnah8Ug7", "image": "3hBzQjRY", "imageSize": 57, "namespace": "uzSTj4Jd", "patchVersion": "N5KgZFLH", "persistent": true, "version": "eDTbb2Yh"}' \
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
    '{"claim_timeout": 13, "creation_timeout": 57, "default_version": "K4ks0eon", "port": 8, "ports": {"rVbhpfCT": 41, "RUF4U4Zd": 25, "ZxDvB7xY": 20}, "protocol": "9w4buQZO", "providers": ["GKIvpy1g", "4u23OPQg", "8YJVpvEP"], "session_timeout": 32, "unreachable_timeout": 40}' \
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
    '{"claim_timeout": 33, "creation_timeout": 1, "default_version": "XAraZYVa", "port": 67, "protocol": "V6FkK5g6", "providers": ["KC0rPJea", "sZuv4mWK", "lXctGUjQ"], "session_timeout": 67, "unreachable_timeout": 17}' \
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
    '88' \
    '20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'YhayCTnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": true, "buffer_count": 51, "buffer_percent": 95, "configuration": "Gp4DH14Q", "enable_region_overrides": true, "game_version": "nrmosuM4", "max_count": 60, "min_count": 95, "overrides": {"MBuDONPe": {"buffer_count": 40, "buffer_percent": 64, "configuration": "lUEzCKZl", "enable_region_overrides": false, "game_version": "pHvKrvQ3", "max_count": 14, "min_count": 68, "name": "wZ9wD2Ti", "region_overrides": {"rUtpRc48": {"buffer_count": 77, "buffer_percent": 58, "max_count": 36, "min_count": 40, "name": "wTSVuYdY", "unlimited": false, "use_buffer_percent": true}, "bI9ItC17": {"buffer_count": 5, "buffer_percent": 17, "max_count": 3, "min_count": 22, "name": "a12x4s90", "unlimited": true, "use_buffer_percent": true}, "cm8bIgHq": {"buffer_count": 73, "buffer_percent": 78, "max_count": 10, "min_count": 19, "name": "fC6MxW9I", "unlimited": true, "use_buffer_percent": true}}, "regions": ["SNgzGdAE", "2UAFjzgT", "CGNUjaXG"], "session_timeout": 24, "unlimited": false, "use_buffer_percent": false}, "uyZt1hqP": {"buffer_count": 18, "buffer_percent": 78, "configuration": "CZrQWcvj", "enable_region_overrides": false, "game_version": "RJLRvFQr", "max_count": 91, "min_count": 84, "name": "hGcn2Qvb", "region_overrides": {"AUW3LgeN": {"buffer_count": 73, "buffer_percent": 9, "max_count": 100, "min_count": 56, "name": "jGkEcAsi", "unlimited": false, "use_buffer_percent": true}, "T7QXhDgC": {"buffer_count": 8, "buffer_percent": 69, "max_count": 73, "min_count": 47, "name": "lRfmxUPI", "unlimited": false, "use_buffer_percent": true}, "m1ObJsnz": {"buffer_count": 52, "buffer_percent": 89, "max_count": 6, "min_count": 33, "name": "Z3kfXHUJ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["EfBKcmr1", "1XAqEbZw", "sHgzuztL"], "session_timeout": 95, "unlimited": true, "use_buffer_percent": true}, "jWUn777V": {"buffer_count": 40, "buffer_percent": 45, "configuration": "w6NHFNu8", "enable_region_overrides": false, "game_version": "IFPh0jQF", "max_count": 16, "min_count": 50, "name": "Dy8pQRtT", "region_overrides": {"Ua52PmdZ": {"buffer_count": 93, "buffer_percent": 80, "max_count": 74, "min_count": 73, "name": "k09cjIL6", "unlimited": true, "use_buffer_percent": false}, "BHU8gE6a": {"buffer_count": 84, "buffer_percent": 20, "max_count": 21, "min_count": 43, "name": "qpxcmhZJ", "unlimited": false, "use_buffer_percent": false}, "eVVwAjzx": {"buffer_count": 4, "buffer_percent": 17, "max_count": 8, "min_count": 18, "name": "X3AmpTfZ", "unlimited": true, "use_buffer_percent": true}}, "regions": ["NgwZxFyl", "yTQD8g2x", "hN1FvLTt"], "session_timeout": 58, "unlimited": false, "use_buffer_percent": false}}, "region_overrides": {"MfBv5Wi8": {"buffer_count": 31, "buffer_percent": 77, "max_count": 48, "min_count": 57, "name": "SSqU2PaP", "unlimited": true, "use_buffer_percent": false}, "7maAWbEm": {"buffer_count": 3, "buffer_percent": 13, "max_count": 43, "min_count": 42, "name": "jLtcaQDb", "unlimited": true, "use_buffer_percent": false}, "v24SU9it": {"buffer_count": 87, "buffer_percent": 0, "max_count": 36, "min_count": 45, "name": "GJHRx1b8", "unlimited": true, "use_buffer_percent": false}}, "regions": ["WYzknsBA", "h0XyRW59", "Yriw14Au"], "session_timeout": 21, "unlimited": true, "use_buffer_percent": false}' \
    '6IuKTrtw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'gpqbPTA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 80, "buffer_percent": 27, "configuration": "fGWqt1BC", "enable_region_overrides": false, "game_version": "tKlzRuO9", "max_count": 44, "min_count": 90, "regions": ["F5Rntua4", "7vq9eitO", "ODHICmwO"], "session_timeout": 88, "unlimited": false, "use_buffer_percent": true}' \
    '3vOxOMX4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 83, "buffer_percent": 97, "max_count": 27, "min_count": 76, "unlimited": true, "use_buffer_percent": false}' \
    'KizWwSt1' \
    'tBESXG1H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'zGyjeq4M' \
    'bHGlglOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 24, "buffer_percent": 80, "max_count": 89, "min_count": 25, "unlimited": false, "use_buffer_percent": false}' \
    'Vbt7iR7W' \
    'UpguIq6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 74, "buffer_percent": 18, "configuration": "3vh8neQp", "enable_region_overrides": true, "game_version": "NsZp029v", "max_count": 39, "min_count": 90, "region_overrides": {"QRx4b59k": {"buffer_count": 6, "buffer_percent": 0, "max_count": 41, "min_count": 55, "name": "lQYlKcON", "unlimited": false, "use_buffer_percent": true}, "F9zBbvMp": {"buffer_count": 46, "buffer_percent": 67, "max_count": 77, "min_count": 59, "name": "ZRZ90GLe", "unlimited": false, "use_buffer_percent": false}, "dJcMbA4w": {"buffer_count": 80, "buffer_percent": 1, "max_count": 89, "min_count": 87, "name": "4I9l2wdb", "unlimited": true, "use_buffer_percent": false}}, "regions": ["QinWETLf", "yyYPatmZ", "rQCL9lv7"], "session_timeout": 19, "unlimited": true, "use_buffer_percent": false}' \
    'WyU0ZQ4p' \
    'TfLYS3Nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'BT1PqpPk' \
    'booivi7Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 96, "buffer_percent": 24, "configuration": "8XgiIN17", "enable_region_overrides": false, "game_version": "LhLllfVo", "max_count": 14, "min_count": 63, "regions": ["PT08Cfa3", "NdRhpu0r", "j35wIVET"], "session_timeout": 29, "unlimited": true, "use_buffer_percent": true}' \
    'jur9Zio7' \
    'Jz1fdDzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 34, "buffer_percent": 44, "max_count": 32, "min_count": 30, "unlimited": true, "use_buffer_percent": false}' \
    '77xNasu5' \
    'c7JP3hyC' \
    'HIWhR0Qu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'URRAJpo0' \
    'CZk3Xels' \
    'Mg0Ypwlg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 57, "buffer_percent": 1, "max_count": 46, "min_count": 91, "unlimited": true, "use_buffer_percent": true}' \
    'DIycVCVa' \
    'JXyypQJm' \
    'kPiowl9l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '23' \
    '75' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'jr9Jyn6j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 29, "mem_limit": 71, "params": "bhjTxB35"}' \
    'Jf1Ao6Qf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    'dsIkivis' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 94, "mem_limit": 94, "name": "wQT4Pj5Y", "params": "UM9mOtZJ"}' \
    'DTdJw0cT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 82}' \
    'T1Pqc4TJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    's462VLy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "YjHcya5H", "port": 94}' \
    'Hg58dKzM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '26' \
    '93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'x7adZEya' \
    'WioQNMpJ' \
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
    '0Wjis8xq' \
    'dEEPEP03' \
    'Ozv2cTAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    'htrgZHxP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'bbdw83vW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'fHpji8vv' \
    'vTbDPcSk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '78' \
    '8' \
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
    'd1BO7RXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    'mwBBEDNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'atb2AWE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '92' \
    '94' \
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
    'fptmNSNj' \
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
    'gV5yIV4S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "Os6jRt6h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "vMGZFGwo", "ip": "hJgdZPER", "name": "A0ANDvdZ", "port": 2}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "dZh5Bo6k", "pod_name": "g9HpZD5J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "AkZTWIbm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'rQCEluWs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "tq6OlHtx", "configuration": "gG1wmV5E", "deployment": "Nh75xlYz", "game_mode": "52k3X8Mq", "matching_allies": [{"matching_parties": [{"party_attributes": {"l5icg5Vx": {}, "ol9T8lgO": {}, "Df08kql8": {}}, "party_id": "DPB7YFZr", "party_members": [{"user_id": "1GZBMz2s"}, {"user_id": "6LCWeeui"}, {"user_id": "FYmLULu2"}]}, {"party_attributes": {"dOb4Z0Ey": {}, "Jpv54dJI": {}, "8XyBFNAZ": {}}, "party_id": "YAa3Vupt", "party_members": [{"user_id": "DnLOHl4x"}, {"user_id": "dYWVu1FW"}, {"user_id": "Z3cxvLKG"}]}, {"party_attributes": {"LitkQmhK": {}, "UtPQdJhB": {}, "1B90nVTt": {}}, "party_id": "HXsUWznW", "party_members": [{"user_id": "i8OopZJq"}, {"user_id": "jXnNa0lK"}, {"user_id": "4kjt1bl5"}]}]}, {"matching_parties": [{"party_attributes": {"XQx1FjHs": {}, "EF7toTZA": {}, "M93XHVkf": {}}, "party_id": "VsfChChT", "party_members": [{"user_id": "TkgE0fpO"}, {"user_id": "sXOiVWZy"}, {"user_id": "v7y96nKT"}]}, {"party_attributes": {"LmsXkB2Q": {}, "MlffNI9K": {}, "heVGfokQ": {}}, "party_id": "3te7eHJl", "party_members": [{"user_id": "iOSRjqF1"}, {"user_id": "gn3L2Vcb"}, {"user_id": "rOkx6wfH"}]}, {"party_attributes": {"AxwyvSh7": {}, "KTSU7HZq": {}, "m2bwQRo9": {}}, "party_id": "NIH6C7ey", "party_members": [{"user_id": "alGo62m5"}, {"user_id": "lk6bPa87"}, {"user_id": "5rcaRY6p"}]}]}, {"matching_parties": [{"party_attributes": {"FULREizT": {}, "d7LCxhGH": {}, "PmqrI7oR": {}}, "party_id": "0t9yzQSh", "party_members": [{"user_id": "iDyWj1zL"}, {"user_id": "H9TKDyYa"}, {"user_id": "F00UeycS"}]}, {"party_attributes": {"bz8Wa85B": {}, "2E0f3rMr": {}, "71d7UKpP": {}}, "party_id": "nV0AnpwY", "party_members": [{"user_id": "Z2LYziQP"}, {"user_id": "juzexwpO"}, {"user_id": "xZvV3xFx"}]}, {"party_attributes": {"NkthUwqp": {}, "Rm42vJMM": {}, "xV7IlYBn": {}}, "party_id": "xlmW1o61", "party_members": [{"user_id": "BjjruVE0"}, {"user_id": "OwaKvrpU"}, {"user_id": "6a14ueZ1"}]}]}], "namespace": "t4YqqcHz", "notification_payload": {}, "pod_name": "9nxpJzYk", "region": "twDDPaqB", "session_id": "bL8AG0xb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "JaXipB8t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'JOBa87KP' \
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
    'FWbin8yK' \
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
