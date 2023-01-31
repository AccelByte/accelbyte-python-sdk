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
dsmc-update-image '{"artifactPath": "RN5eOmpn", "image": "bvcxksye", "namespace": "5aiS3JCJ", "persistent": true, "version": "jGdqoiZI"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "JaOP8pw2", "dockerPath": "1U2ZE9VU", "image": "NsubBAOa", "imageSize": 100, "namespace": "DVaAaDKw", "persistent": true, "version": "QCUd0Crm"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "iUZQugaQ", "dockerPath": "d53xm8Co", "image": "GqcS7WCH", "imageSize": 43, "namespace": "L3NE4Fja", "patchVersion": "OplLuVWv", "persistent": true, "version": "rjXov4oP"}' --login_with_auth "Bearer foo"
dsmc-get-lowest-instance-spec --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 82, "creation_timeout": 60, "default_version": "1pU1PdaY", "port": 81, "ports": {"3yHYCulk": 96, "bzlNxsxw": 44, "1rsrNAat": 20}, "protocol": "TTaYAHlu", "providers": ["Nt9M18fB", "nSl7lBWW", "IbfjUgJO"], "session_timeout": 78, "unreachable_timeout": 29}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 12, "creation_timeout": 99, "default_version": "Jf1eLShy", "port": 38, "protocol": "EnsXVrlm", "providers": ["pUuDrReW", "zw7a99fb", "1FCQWMND"], "session_timeout": 36, "unreachable_timeout": 17}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment '2' '88' --login_with_auth "Bearer foo"
dsmc-get-deployment '4QzrYKeE' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 85, "buffer_percent": 47, "configuration": "3IsYV00F", "enable_region_overrides": true, "game_version": "LQKkwgmd", "max_count": 3, "min_count": 74, "overrides": {"8dLMrgOh": {"buffer_count": 47, "buffer_percent": 67, "configuration": "9ZoslcQl", "enable_region_overrides": false, "game_version": "NB8hjJNS", "max_count": 81, "min_count": 0, "name": "ZBkxTUhD", "region_overrides": {"POyLmcmL": {"buffer_count": 46, "buffer_percent": 41, "max_count": 19, "min_count": 14, "name": "YDKJ5hez", "unlimited": true, "use_buffer_percent": false}, "T44ptuAo": {"buffer_count": 35, "buffer_percent": 51, "max_count": 37, "min_count": 75, "name": "brxfw1DA", "unlimited": true, "use_buffer_percent": false}, "bZucKeL1": {"buffer_count": 92, "buffer_percent": 22, "max_count": 74, "min_count": 49, "name": "oCRAhlwO", "unlimited": true, "use_buffer_percent": true}}, "regions": ["Nyhzsn69", "5qk7TlIg", "foFWPNFA"], "session_timeout": 31, "unlimited": true, "use_buffer_percent": false}, "l2UxYNyH": {"buffer_count": 81, "buffer_percent": 46, "configuration": "saQARufa", "enable_region_overrides": false, "game_version": "ur4zVoI2", "max_count": 19, "min_count": 51, "name": "rPVIn29N", "region_overrides": {"2t0jT2V9": {"buffer_count": 88, "buffer_percent": 96, "max_count": 66, "min_count": 1, "name": "axq5LuvS", "unlimited": false, "use_buffer_percent": true}, "kGbLg3sU": {"buffer_count": 38, "buffer_percent": 68, "max_count": 96, "min_count": 16, "name": "uEUlg4BN", "unlimited": true, "use_buffer_percent": false}, "kM9AyByl": {"buffer_count": 94, "buffer_percent": 7, "max_count": 10, "min_count": 34, "name": "n5BSzGbx", "unlimited": false, "use_buffer_percent": true}}, "regions": ["ej4NS4JO", "eoR3EjFm", "e1q8TGZj"], "session_timeout": 54, "unlimited": true, "use_buffer_percent": true}, "HnJpcQ0j": {"buffer_count": 21, "buffer_percent": 18, "configuration": "DJTHTRuh", "enable_region_overrides": false, "game_version": "iNFjO1AO", "max_count": 89, "min_count": 77, "name": "RBZf8kt6", "region_overrides": {"wnD08UPw": {"buffer_count": 40, "buffer_percent": 61, "max_count": 76, "min_count": 63, "name": "CRzO0f14", "unlimited": true, "use_buffer_percent": false}, "u5Zqdhc8": {"buffer_count": 54, "buffer_percent": 96, "max_count": 93, "min_count": 90, "name": "P8ZfcE5g", "unlimited": true, "use_buffer_percent": false}, "l33HQmHC": {"buffer_count": 10, "buffer_percent": 19, "max_count": 58, "min_count": 85, "name": "joeBLxhL", "unlimited": false, "use_buffer_percent": true}}, "regions": ["FJhK2G8P", "6SO7CvCz", "bYVzJiov"], "session_timeout": 14, "unlimited": true, "use_buffer_percent": false}}, "region_overrides": {"aLHJq6vI": {"buffer_count": 10, "buffer_percent": 39, "max_count": 74, "min_count": 40, "name": "UI3kvAyn", "unlimited": true, "use_buffer_percent": true}, "0qjsPzPC": {"buffer_count": 8, "buffer_percent": 42, "max_count": 46, "min_count": 47, "name": "eGgShd5t", "unlimited": true, "use_buffer_percent": true}, "HlmnHFzD": {"buffer_count": 92, "buffer_percent": 48, "max_count": 52, "min_count": 83, "name": "wuNA86F3", "unlimited": true, "use_buffer_percent": true}}, "regions": ["4XRTNwhA", "4HeBtAkg", "jVv1o2z2"], "session_timeout": 73, "unlimited": false, "use_buffer_percent": true}' 'GyOL8NuM' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'LC8Y92mq' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": false, "buffer_count": 29, "buffer_percent": 59, "configuration": "ZfD2E4PV", "enable_region_overrides": false, "game_version": "zg50dvqi", "max_count": 2, "min_count": 61, "regions": ["CyZBT2S9", "AgbxGL10", "BfLQzO2W"], "session_timeout": 69, "unlimited": false, "use_buffer_percent": true}' 'mvyAYiHc' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 63, "buffer_percent": 90, "max_count": 67, "min_count": 51, "unlimited": true, "use_buffer_percent": true}' 'OOrDLKES' 'WuVPrZbX' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'Res5q6K9' 'NLpMTmow' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 45, "buffer_percent": 86, "max_count": 94, "min_count": 21, "unlimited": false, "use_buffer_percent": true}' 'E8cxRdRk' 'vjwISosG' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 48, "buffer_percent": 33, "configuration": "LBeaHWGG", "enable_region_overrides": false, "game_version": "TPFiqQ45", "max_count": 55, "min_count": 9, "region_overrides": {"DSq7PL3o": {"buffer_count": 84, "buffer_percent": 69, "max_count": 94, "min_count": 46, "name": "vR8mQU2j", "unlimited": false, "use_buffer_percent": false}, "gNlsVTwd": {"buffer_count": 92, "buffer_percent": 98, "max_count": 11, "min_count": 52, "name": "zpMpp9lR", "unlimited": false, "use_buffer_percent": false}, "wcQeoBJk": {"buffer_count": 81, "buffer_percent": 53, "max_count": 60, "min_count": 55, "name": "dnDDmwRI", "unlimited": true, "use_buffer_percent": false}}, "regions": ["P0IpUK6D", "DzFIQJ4Q", "8jy889bP"], "session_timeout": 68, "unlimited": false, "use_buffer_percent": false}' 'MP71zgGy' 'xJPeMGPs' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'U9qBF8bQ' 'YT3B7JzO' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 36, "buffer_percent": 69, "configuration": "TfVn4NfR", "enable_region_overrides": false, "game_version": "dZ0ffbRV", "max_count": 24, "min_count": 24, "regions": ["6NN4H1hs", "2bfPdaTG", "zlBY3EuY"], "session_timeout": 9, "unlimited": false, "use_buffer_percent": true}' 'bVt4D3PD' 'fY6gCJ8y' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 84, "buffer_percent": 68, "max_count": 8, "min_count": 42, "unlimited": false, "use_buffer_percent": true}' 'Okx8ae4z' '65QLXbS9' 'jhhanBGG' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override '7xqLMGzi' 'JVcqtUUO' 'jxabvnNq' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 42, "buffer_percent": 13, "max_count": 33, "min_count": 45, "unlimited": false, "use_buffer_percent": true}' '985t4qB5' '8Ta9R9TK' '5PvjB3VZ' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config '23' '67' --login_with_auth "Bearer foo"
dsmc-get-pod-config '8j8mtfnq' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 43, "mem_limit": 46, "params": "t7SmRnft"}' '8Qn4pPPo' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'NFS930LN' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 8, "mem_limit": 18, "name": "NnAWyMw6", "params": "WeQiE7CL"}' '5oAicBYh' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 19}' 'DAlGSapD' --login_with_auth "Bearer foo"
dsmc-delete-port '2IqCRY0x' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "yZshC4AI", "port": 63}' 'vitKctyP' --login_with_auth "Bearer foo"
dsmc-list-images '55' '75' --login_with_auth "Bearer foo"
dsmc-delete-image '4QjefWng' 'sWjHE2Nm' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'm1bLluqb' 'SnXrSRBt' 'Bg01laja' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'm39bC5rV' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'kKfWkD7H' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'sh6I1LNp' 'JW7emUzy' --login_with_auth "Bearer foo"
dsmc-list-server '36' '70' --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'FA0QKLQq' --login_with_auth "Bearer foo"
dsmc-get-server 'NdYbNhTf' --login_with_auth "Bearer foo"
dsmc-delete-server 'm7aDqStg' --login_with_auth "Bearer foo"
dsmc-list-session '93' '3' --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '4e6tK932' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-limit-client --login_with_auth "Bearer foo"
dsmc-image-detail-client 'eFuWKoNw' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "HdkICfNs"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "rQMUhJIU", "ip": "XouEmd94", "name": "edeSMH81", "port": 60}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "6Aztvxxv", "pod_name": "W2W43pf7"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "WbY9CzlL"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'zf1HTASN' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "rUowqF9W", "configuration": "8KguvPPv", "deployment": "vpInIcTz", "game_mode": "AhXsVyYO", "matching_allies": [{"matching_parties": [{"party_attributes": {"KYPlUucK": {}, "8h37BhPZ": {}, "P2M3sLNj": {}}, "party_id": "M7fgNsJ0", "party_members": [{"user_id": "8JIH7SUn"}, {"user_id": "mIp171SC"}, {"user_id": "LOvR0eEr"}]}, {"party_attributes": {"1P5rsFLK": {}, "NdUgxZBg": {}, "ROWOljys": {}}, "party_id": "TgJeIPJx", "party_members": [{"user_id": "neJIt4uy"}, {"user_id": "3ORr3pac"}, {"user_id": "5mYI2qdH"}]}, {"party_attributes": {"ExjSUH5b": {}, "tTWTikPe": {}, "Va7MI8SX": {}}, "party_id": "jRGhCdxs", "party_members": [{"user_id": "J5S6YkeZ"}, {"user_id": "CIHbNYgm"}, {"user_id": "KlqLaxDC"}]}]}, {"matching_parties": [{"party_attributes": {"pJPECKhi": {}, "WSthzjIB": {}, "tMohWlms": {}}, "party_id": "zMyl7rBy", "party_members": [{"user_id": "F3wWZHF5"}, {"user_id": "ZX1hBTIz"}, {"user_id": "cP9jFfKo"}]}, {"party_attributes": {"IEYBwmBm": {}, "kNjOK8rG": {}, "DuSMlTe9": {}}, "party_id": "QesLkiQL", "party_members": [{"user_id": "PQRcMDcL"}, {"user_id": "i9RuzBZP"}, {"user_id": "meI7G8al"}]}, {"party_attributes": {"QS2iTYcC": {}, "19wAWtLZ": {}, "hQsxuB46": {}}, "party_id": "k0UVyaw9", "party_members": [{"user_id": "KyOAsTi4"}, {"user_id": "TDeNZVq7"}, {"user_id": "YCOiwbDS"}]}]}, {"matching_parties": [{"party_attributes": {"pRpTUOBf": {}, "1XC1gjr4": {}, "gcCN8AEY": {}}, "party_id": "hqTqkV0N", "party_members": [{"user_id": "f5RGXcHN"}, {"user_id": "aeKwsV2U"}, {"user_id": "59m5uP27"}]}, {"party_attributes": {"mKXqtBka": {}, "pbDd8XEJ": {}, "Ua4ZVSaq": {}}, "party_id": "agw2hEYv", "party_members": [{"user_id": "Woej7kwq"}, {"user_id": "BEbE7esz"}, {"user_id": "aclkfwZK"}]}, {"party_attributes": {"2zF6by17": {}, "7USE1PNC": {}, "OdXvSWuI": {}}, "party_id": "fDD1ykDS", "party_members": [{"user_id": "Y3L7ha0W"}, {"user_id": "KP7fPuzT"}, {"user_id": "3xNHN8p7"}]}]}], "namespace": "hcpm76dA", "notification_payload": {}, "pod_name": "syNkhpdN", "region": "fNMQsEFd", "session_id": "yH8AogZe"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "dKgcWicF"}' --login_with_auth "Bearer foo"
dsmc-get-session 'O2oKObM9' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region '3X6cwrNC' --login_with_auth "Bearer foo"
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
    '{"artifactPath": "jhdtQFO3", "image": "fFmi7T0q", "namespace": "PEIm7ZUX", "persistent": false, "version": "QsZIYPUY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateImage' test.out

#- 5 CreateImage
$PYTHON -m $MODULE 'dsmc-create-image' \
    '{"artifactPath": "jwDSHLC3", "dockerPath": "3pr9USKP", "image": "nm04Hy0d", "imageSize": 9, "namespace": "4fi0KC38", "persistent": true, "version": "xczqvPgm"}' \
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
    '{"artifactPath": "kYqxfl2g", "dockerPath": "qJSnS12L", "image": "l8tPrDjP", "imageSize": 32, "namespace": "oOcTd3SQ", "patchVersion": "9ofJ6dko", "persistent": false, "version": "SC1wry6v"}' \
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
    '{"claim_timeout": 47, "creation_timeout": 35, "default_version": "C5ptUb1a", "port": 17, "ports": {"ZavmQZlo": 5, "XudAuXpj": 21, "737pks1F": 25}, "protocol": "dYMJ2FQs", "providers": ["bUvbMejn", "mmxrBivu", "3EUTYd7z"], "session_timeout": 4, "unreachable_timeout": 56}' \
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
    '{"claim_timeout": 98, "creation_timeout": 3, "default_version": "awkMf8op", "port": 91, "protocol": "Mdo0lEyg", "providers": ["uVzUPTCf", "AFoVHSHr", "f0f2j3W6"], "session_timeout": 11, "unreachable_timeout": 19}' \
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
    '11' \
    '40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAllDeployment' test.out

#- 15 GetDeployment
$PYTHON -m $MODULE 'dsmc-get-deployment' \
    'dFXX89wK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetDeployment' test.out

#- 16 CreateDeployment
$PYTHON -m $MODULE 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 77, "buffer_percent": 22, "configuration": "6noFLkrf", "enable_region_overrides": false, "game_version": "G56FFu30", "max_count": 96, "min_count": 86, "overrides": {"gtGUxVDz": {"buffer_count": 89, "buffer_percent": 59, "configuration": "S6o32xSf", "enable_region_overrides": false, "game_version": "LNxMrN8G", "max_count": 52, "min_count": 3, "name": "f4mcHRQg", "region_overrides": {"W8B1npFG": {"buffer_count": 19, "buffer_percent": 6, "max_count": 11, "min_count": 32, "name": "ik1KnAio", "unlimited": true, "use_buffer_percent": false}, "LkNsN6Hu": {"buffer_count": 75, "buffer_percent": 99, "max_count": 87, "min_count": 92, "name": "6gPD3Feg", "unlimited": false, "use_buffer_percent": true}, "PMSJMrvz": {"buffer_count": 5, "buffer_percent": 98, "max_count": 59, "min_count": 24, "name": "0h9KJHyj", "unlimited": true, "use_buffer_percent": false}}, "regions": ["W0GVLAeu", "hUBbTOUU", "t0ff1bOT"], "session_timeout": 7, "unlimited": false, "use_buffer_percent": false}, "PcxCG5jC": {"buffer_count": 63, "buffer_percent": 43, "configuration": "jtnGgF2Y", "enable_region_overrides": false, "game_version": "pKkW7H0A", "max_count": 96, "min_count": 0, "name": "TZIkxPjs", "region_overrides": {"K9D2kAB8": {"buffer_count": 29, "buffer_percent": 4, "max_count": 51, "min_count": 18, "name": "HtPJqnQK", "unlimited": false, "use_buffer_percent": true}, "oFVNsruP": {"buffer_count": 20, "buffer_percent": 81, "max_count": 98, "min_count": 99, "name": "nsopsOrz", "unlimited": false, "use_buffer_percent": false}, "aWQDHmTx": {"buffer_count": 85, "buffer_percent": 9, "max_count": 84, "min_count": 6, "name": "H1dEsYAo", "unlimited": true, "use_buffer_percent": false}}, "regions": ["sB5PthoW", "y5pXviG4", "BKSubFNh"], "session_timeout": 67, "unlimited": true, "use_buffer_percent": true}, "tD7BkeQE": {"buffer_count": 77, "buffer_percent": 98, "configuration": "LSVJ1T4F", "enable_region_overrides": true, "game_version": "qAFZsGHS", "max_count": 8, "min_count": 20, "name": "R9Bmz3vm", "region_overrides": {"ZMMgRKRI": {"buffer_count": 26, "buffer_percent": 58, "max_count": 62, "min_count": 4, "name": "WKBp3GpC", "unlimited": false, "use_buffer_percent": true}, "VOanRp9x": {"buffer_count": 58, "buffer_percent": 57, "max_count": 62, "min_count": 12, "name": "sQaDVp7o", "unlimited": true, "use_buffer_percent": false}, "gOPSzhNa": {"buffer_count": 41, "buffer_percent": 98, "max_count": 87, "min_count": 28, "name": "HEMN82cb", "unlimited": true, "use_buffer_percent": false}}, "regions": ["AvASHL8c", "GNR2oYHR", "oqUMTz6w"], "session_timeout": 6, "unlimited": false, "use_buffer_percent": true}}, "region_overrides": {"PKeEXkQ0": {"buffer_count": 54, "buffer_percent": 67, "max_count": 5, "min_count": 94, "name": "PoypEspl", "unlimited": true, "use_buffer_percent": false}, "0sBFv0cK": {"buffer_count": 74, "buffer_percent": 83, "max_count": 84, "min_count": 88, "name": "ipHCStNz", "unlimited": true, "use_buffer_percent": true}, "YR9d0Ua1": {"buffer_count": 84, "buffer_percent": 87, "max_count": 95, "min_count": 87, "name": "KokX2lqK", "unlimited": true, "use_buffer_percent": true}}, "regions": ["VwDQy8S1", "Xnr1KZwP", "5HrfcGFu"], "session_timeout": 24, "unlimited": true, "use_buffer_percent": true}' \
    'abbRrMkK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'CreateDeployment' test.out

#- 17 DeleteDeployment
$PYTHON -m $MODULE 'dsmc-delete-deployment' \
    'z16TFVzx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteDeployment' test.out

#- 18 UpdateDeployment
$PYTHON -m $MODULE 'dsmc-update-deployment' \
    '{"allow_version_override": true, "buffer_count": 27, "buffer_percent": 20, "configuration": "xEjlj3Sg", "enable_region_overrides": true, "game_version": "vbySMAwz", "max_count": 40, "min_count": 65, "regions": ["ESXm3U2v", "YRiMEeW5", "OC8soDGK"], "session_timeout": 71, "unlimited": true, "use_buffer_percent": true}' \
    'oXTfoKHZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateDeployment' test.out

#- 19 CreateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-create-root-region-override' \
    '{"buffer_count": 59, "buffer_percent": 84, "max_count": 38, "min_count": 59, "unlimited": false, "use_buffer_percent": true}' \
    'v1svQHOT' \
    'BFbdb8NE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreateRootRegionOverride' test.out

#- 20 DeleteRootRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-root-region-override' \
    'irCdEiYs' \
    'DTOdaKg5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteRootRegionOverride' test.out

#- 21 UpdateRootRegionOverride
$PYTHON -m $MODULE 'dsmc-update-root-region-override' \
    '{"buffer_count": 53, "buffer_percent": 6, "max_count": 96, "min_count": 62, "unlimited": false, "use_buffer_percent": true}' \
    's5xg34xv' \
    'hGT5ORTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateRootRegionOverride' test.out

#- 22 CreateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-create-deployment-override' \
    '{"buffer_count": 69, "buffer_percent": 5, "configuration": "OQi1Km3Q", "enable_region_overrides": true, "game_version": "qQgWFL9K", "max_count": 46, "min_count": 39, "region_overrides": {"rTqtWLiL": {"buffer_count": 100, "buffer_percent": 95, "max_count": 42, "min_count": 67, "name": "Xg3aOLgk", "unlimited": true, "use_buffer_percent": true}, "uHPSbzyL": {"buffer_count": 74, "buffer_percent": 91, "max_count": 37, "min_count": 32, "name": "owuLxala", "unlimited": false, "use_buffer_percent": false}, "6r9BnPVJ": {"buffer_count": 54, "buffer_percent": 97, "max_count": 84, "min_count": 70, "name": "ykrgIJuE", "unlimited": false, "use_buffer_percent": false}}, "regions": ["SMWUxIlR", "qs1bQwGM", "Co08bv3w"], "session_timeout": 96, "unlimited": false, "use_buffer_percent": false}' \
    '6p83RphR' \
    'me5DdKby' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateDeploymentOverride' test.out

#- 23 DeleteDeploymentOverride
$PYTHON -m $MODULE 'dsmc-delete-deployment-override' \
    'rITCKI9q' \
    'Ejp1RSkZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'DeleteDeploymentOverride' test.out

#- 24 UpdateDeploymentOverride
$PYTHON -m $MODULE 'dsmc-update-deployment-override' \
    '{"buffer_count": 59, "buffer_percent": 26, "configuration": "W5BVzvGx", "enable_region_overrides": true, "game_version": "6hdVGf3m", "max_count": 7, "min_count": 21, "regions": ["uwrCpXTH", "fOZTlxa9", "LwWl6taM"], "session_timeout": 13, "unlimited": false, "use_buffer_percent": true}' \
    'ACTx0CXQ' \
    '4GoOzwdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'UpdateDeploymentOverride' test.out

#- 25 CreateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-create-override-region-override' \
    '{"buffer_count": 76, "buffer_percent": 10, "max_count": 33, "min_count": 6, "unlimited": false, "use_buffer_percent": true}' \
    'qPRw86GJ' \
    'eKufgZ4J' \
    'pKx8y1fz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateOverrideRegionOverride' test.out

#- 26 DeleteOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-delete-override-region-override' \
    'hI528AYm' \
    '60oWq5US' \
    'fbx5WeTp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteOverrideRegionOverride' test.out

#- 27 UpdateOverrideRegionOverride
$PYTHON -m $MODULE 'dsmc-update-override-region-override' \
    '{"buffer_count": 56, "buffer_percent": 87, "max_count": 73, "min_count": 95, "unlimited": false, "use_buffer_percent": false}' \
    'y96uDf7i' \
    'CjltMXrS' \
    'lzR4Grtp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateOverrideRegionOverride' test.out

#- 28 GetAllPodConfig
$PYTHON -m $MODULE 'dsmc-get-all-pod-config' \
    '75' \
    '40' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetAllPodConfig' test.out

#- 29 GetPodConfig
$PYTHON -m $MODULE 'dsmc-get-pod-config' \
    'FZpP2irq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetPodConfig' test.out

#- 30 CreatePodConfig
$PYTHON -m $MODULE 'dsmc-create-pod-config' \
    '{"cpu_limit": 39, "mem_limit": 65, "params": "4Okwny9E"}' \
    'wnRaHorU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreatePodConfig' test.out

#- 31 DeletePodConfig
$PYTHON -m $MODULE 'dsmc-delete-pod-config' \
    '7OSZZH9D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeletePodConfig' test.out

#- 32 UpdatePodConfig
$PYTHON -m $MODULE 'dsmc-update-pod-config' \
    '{"cpu_limit": 53, "mem_limit": 92, "name": "2hYTlpvL", "params": "SoKjBLAC"}' \
    'QW3Xidio' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePodConfig' test.out

#- 33 AddPort
$PYTHON -m $MODULE 'dsmc-add-port' \
    '{"port": 4}' \
    'iH994FaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AddPort' test.out

#- 34 DeletePort
$PYTHON -m $MODULE 'dsmc-delete-port' \
    'kLkhIsIN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeletePort' test.out

#- 35 UpdatePort
$PYTHON -m $MODULE 'dsmc-update-port' \
    '{"name": "pSLx3YAi", "port": 84}' \
    'o8THg9Nl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePort' test.out

#- 36 ListImages
$PYTHON -m $MODULE 'dsmc-list-images' \
    '39' \
    '78' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ListImages' test.out

#- 37 DeleteImage
$PYTHON -m $MODULE 'dsmc-delete-image' \
    'Hy7pBvDq' \
    'RABFlNXE' \
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
    'tlCtEIrQ' \
    'VqYedhG3' \
    'LRysYRc9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteImagePatch' test.out

#- 41 GetImageDetail
$PYTHON -m $MODULE 'dsmc-get-image-detail' \
    '4jaMElKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetImageDetail' test.out

#- 42 GetImagePatches
$PYTHON -m $MODULE 'dsmc-get-image-patches' \
    'KZ2MT1q6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetImagePatches' test.out

#- 43 GetImagePatchDetail
$PYTHON -m $MODULE 'dsmc-get-image-patch-detail' \
    'Dcrdn3nt' \
    'VCmOzgW0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetImagePatchDetail' test.out

#- 44 ListServer
$PYTHON -m $MODULE 'dsmc-list-server' \
    '93' \
    '67' \
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
    'PHFQmJRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'DeleteLocalServer' test.out

#- 49 GetServer
$PYTHON -m $MODULE 'dsmc-get-server' \
    '4OUqYa93' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetServer' test.out

#- 50 DeleteServer
$PYTHON -m $MODULE 'dsmc-delete-server' \
    'dR0W0OnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteServer' test.out

#- 51 ListSession
$PYTHON -m $MODULE 'dsmc-list-session' \
    '39' \
    '13' \
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
    'kc3ZkmwZ' \
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
    'igQ8pNqy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'ImageDetailClient' test.out

#- 58 DeregisterLocalServer
$PYTHON -m $MODULE 'dsmc-deregister-local-server' \
    '{"name": "tSQLMC5I"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeregisterLocalServer' test.out

#- 59 RegisterLocalServer
$PYTHON -m $MODULE 'dsmc-register-local-server' \
    '{"custom_attribute": "UuJy2RX3", "ip": "FS4GxOha", "name": "NiDQK8ke", "port": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RegisterLocalServer' test.out

#- 60 RegisterServer
$PYTHON -m $MODULE 'dsmc-register-server' \
    '{"custom_attribute": "l5DaYIt2", "pod_name": "ymvHjD9Q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RegisterServer' test.out

#- 61 ShutdownServer
$PYTHON -m $MODULE 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "41gTybgb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'ShutdownServer' test.out

#- 62 GetServerSession
$PYTHON -m $MODULE 'dsmc-get-server-session' \
    'LDddaDO1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetServerSession' test.out

#- 63 CreateSession
$PYTHON -m $MODULE 'dsmc-create-session' \
    '{"client_version": "QK9TSSy6", "configuration": "w3xctAsm", "deployment": "cp5NnYTf", "game_mode": "8M0j8450", "matching_allies": [{"matching_parties": [{"party_attributes": {"YVfeUv1J": {}, "w2em4Hfb": {}, "9Pyynoni": {}}, "party_id": "PvJQ3OIF", "party_members": [{"user_id": "XhGF7S9u"}, {"user_id": "TbqjgRtA"}, {"user_id": "CDQQbNjS"}]}, {"party_attributes": {"G7cUwSdg": {}, "9TfW0tcU": {}, "ODIZtpqe": {}}, "party_id": "9VjTr1BJ", "party_members": [{"user_id": "pMKaR0Pr"}, {"user_id": "uuBYkHJi"}, {"user_id": "2bKunOIq"}]}, {"party_attributes": {"Pud7gMyw": {}, "HD8x2Lic": {}, "HGqZjumn": {}}, "party_id": "n9tEVpFe", "party_members": [{"user_id": "EOTxcjd3"}, {"user_id": "7IMh0Kdq"}, {"user_id": "8kx4KgDP"}]}]}, {"matching_parties": [{"party_attributes": {"ydykVwc9": {}, "gmuFRZSA": {}, "YB8hY3B4": {}}, "party_id": "ypOJ5zDH", "party_members": [{"user_id": "P1pu42RK"}, {"user_id": "27GQxsRU"}, {"user_id": "xFjrWLNC"}]}, {"party_attributes": {"z3H0BEzo": {}, "YgA7nZev": {}, "tvweWF7r": {}}, "party_id": "zx8s4xYV", "party_members": [{"user_id": "9iyM9dhZ"}, {"user_id": "envGaYXC"}, {"user_id": "IrsbuX95"}]}, {"party_attributes": {"SyIEcFT2": {}, "ZjBfpcW4": {}, "CDLzq2RB": {}}, "party_id": "HSBc2UcU", "party_members": [{"user_id": "bLfnAota"}, {"user_id": "yVVYU0uA"}, {"user_id": "Phzo00YW"}]}]}, {"matching_parties": [{"party_attributes": {"s612y6QB": {}, "bPkknbiv": {}, "Nd5GpXiw": {}}, "party_id": "qDiU1OdA", "party_members": [{"user_id": "EtaZJxNW"}, {"user_id": "ehjbLHbd"}, {"user_id": "jVD4VAMG"}]}, {"party_attributes": {"LZDQUWcX": {}, "h1BQhZqh": {}, "KqaWAxcW": {}}, "party_id": "LEkOHrnA", "party_members": [{"user_id": "1BpLkjCA"}, {"user_id": "F33fWwJ2"}, {"user_id": "JoFoxEki"}]}, {"party_attributes": {"yAkV3PH9": {}, "Mi5BoRqQ": {}, "1CBBcJq3": {}}, "party_id": "NbXGwP4G", "party_members": [{"user_id": "LNkODYmy"}, {"user_id": "WJ41d7pj"}, {"user_id": "9n6ESbKC"}]}]}], "namespace": "Tl3AvloI", "notification_payload": {}, "pod_name": "Vax4WCI7", "region": "7Tq9olMo", "session_id": "PnTNS0KP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CreateSession' test.out

#- 64 ClaimServer
$PYTHON -m $MODULE 'dsmc-claim-server' \
    '{"session_id": "F32Ou6jQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'ClaimServer' test.out

#- 65 GetSession
$PYTHON -m $MODULE 'dsmc-get-session' \
    'pvshTICv' \
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
    '51nsjFLY' \
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
