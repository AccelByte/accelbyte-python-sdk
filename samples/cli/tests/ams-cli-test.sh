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
ams-auth-check --login_with_auth "Bearer foo"
ams-portal-health-check --login_with_auth "Bearer foo"
ams-admin-account-get --login_with_auth "Bearer foo"
ams-admin-account-create '{"name": "EAxcVpFrttufHIRd"}' --login_with_auth "Bearer foo"
ams-admin-account-link-token-get --login_with_auth "Bearer foo"
ams-admin-account-link '{"token": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ams-artifact-get --login_with_auth "Bearer foo"
ams-artifact-bulk-delete --login_with_auth "Bearer foo"
ams-artifact-usage-get --login_with_auth "Bearer foo"
ams-artifact-delete 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
ams-artifact-get-url 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ams-development-server-configuration-list --login_with_auth "Bearer foo"
ams-development-server-configuration-create '{"commandLineArguments": "BZLCXLx8bbgorQeF", "expiresAt": "1971-12-17T00:00:00Z", "imageId": "hkspInrAip6lyzSx", "name": "wElFHHdgs21Jub74"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'CUkNmKJfh5pUkHOD' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'poMF78NY4YkHs1cn' --login_with_auth "Bearer foo"
ams-development-server-configuration-patch '{"commandLineArguments": "z1JSDgY1TXp38zsC", "expiresAt": "1994-12-23T00:00:00Z"}' 'CrbCbPOyNQkT7Nvy' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": true, "claimKeys": ["I18mAQLnzjMf8GZ2", "WBZqxYG3aREAu2D6", "QVKNCWP75TB0i7pK"], "dsHostConfiguration": {"instanceId": "xR8dl0zRVW4EZG9m", "serversPerVm": 96}, "fallbackFleet": "cgGVbMqSszE8GHav", "imageDeploymentProfile": {"commandLine": "j7AorKsxwkosAVer", "imageId": "Xpc1C8XfwHuKeb9l", "portConfigurations": [{"name": "3rGN9A3sNm84hddS", "protocol": "pHt0P7MIIR7CkyF6"}, {"name": "C7duuyZ0GhDogqrh", "protocol": "BRd8lDR6qVNPRZYd"}, {"name": "FLIAjGGJddVCvu9v", "protocol": "x5KQ7KYnIuMBvaO3"}], "timeout": {"claim": 71, "creation": 23, "drain": 23, "session": 42, "unresponsive": 52}}, "name": "6Vpbsx5w8hqUI06U", "onDemand": true, "regions": [{"bufferSize": 43, "dynamicBuffer": true, "maxServerCount": 66, "minServerCount": 50, "region": "SLmCVuHOPlLlkvR8"}, {"bufferSize": 37, "dynamicBuffer": true, "maxServerCount": 74, "minServerCount": 57, "region": "gnuRkgghGoYupD39"}, {"bufferSize": 75, "dynamicBuffer": true, "maxServerCount": 30, "minServerCount": 49, "region": "qtPYokahFjkQsfCa"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 25}}, "logs": {"crashed": {"collect": false, "percentage": 39}, "success": {"collect": false, "percentage": 12}, "unclaimed": {"collect": false, "percentage": 82}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'FXGk2s9Q0mPVo3tw' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["d6TC6I3lMjGSWN2l", "aRlxfcjHfYakUCTq", "GkE7wcWfDslpJSqG"], "dsHostConfiguration": {"instanceId": "AXQ0yYoNRKd3IL5T", "serversPerVm": 54}, "fallbackFleet": "GiHPllG4cYEzfTD1", "imageDeploymentProfile": {"commandLine": "ZBm3MqHcUmLZZbSq", "imageId": "b8RwNmn9HrNQy4uZ", "portConfigurations": [{"name": "AAiE0mit9RGCCHYz", "protocol": "UOcEdscKHPEqgA8y"}, {"name": "u7Vk6Jt4Ymos9Jcd", "protocol": "os4fYcTVU6RBt0zY"}, {"name": "oMcHyCUEXlAvxJMd", "protocol": "alwSyliWMNW5NyLu"}], "timeout": {"claim": 39, "creation": 79, "drain": 23, "session": 56, "unresponsive": 98}}, "name": "2jJCSQT279ZZPYGu", "onDemand": true, "regions": [{"bufferSize": 24, "dynamicBuffer": false, "maxServerCount": 81, "minServerCount": 22, "region": "mqRBaAkLnvxkT1X6"}, {"bufferSize": 38, "dynamicBuffer": false, "maxServerCount": 61, "minServerCount": 25, "region": "BU5SepjChB3V0v52"}, {"bufferSize": 61, "dynamicBuffer": false, "maxServerCount": 22, "minServerCount": 21, "region": "ym6puQ23xoJ8aeCn"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 78}}, "logs": {"crashed": {"collect": false, "percentage": 22}, "success": {"collect": false, "percentage": 74}, "unclaimed": {"collect": false, "percentage": 32}}}}' 'Ynaq6foWvXa3bMrX' --login_with_auth "Bearer foo"
ams-fleet-delete 'sDr6kILsSSyDdmyk' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get 'moPYgc2L4jk4Lo0L' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": false, "percentage": 19}}, "logs": {"crashed": {"collect": false, "percentage": 93}, "success": {"collect": true, "percentage": 70}, "unclaimed": {"collect": false, "percentage": 49}}}' 'ZNkSQ70D0H6BXksU' --login_with_auth "Bearer foo"
ams-fleet-servers 'C9b6i5lZC9xv32e8' --login_with_auth "Bearer foo"
ams-fleet-server-history 'c5csSovoqsZNBdte' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get '9NDUPVJf6c2Z0QZx' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'fgPubTDIHrvqAThu' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["wjRHpKKTlmVr9Xuo", "JbRFQSKVPHbn4Xxt", "u7LQRENjEEztx1Ws"], "isProtected": false, "name": "SiZqan0nSBJroav9", "removedTags": ["1GXlvPG6bFYReVHQ", "ipcCx9Zw5D2L7vIY", "hGGSyEW4ZJJ42d3P"]}' 'BddN8S48l9lyNApf' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'lxqMrj3oZk03QXcK' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "MDYDDxHSZjtqXyJ5"}' '8f7Gc26SaiGVkydw' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'YWQG26yUZNmTBcvr' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'bYCwZtxFHyPLtI8i' --login_with_auth "Bearer foo"
ams-server-history 'lbyDPUIj88cekdqC' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "t81P1ktfIovmv9gs", "sessionId": "R5cJcHm3SZLxoRDF"}' 'uuuySj29a9LJE8Ho' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'RS1X2PFAAMwzHPxB' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["1UskYs4Yw20DOqOB", "SC2DKHRuPMMWH8Yb", "33T5UBJCjfcnLRfx"], "regions": ["eCSz9WEi8KlloeH0", "JT1yduat2vQR3biB", "fsu4jmsRE2w1yEkL"], "sessionId": "gh3tIYt4SqYUTLDx"}' --login_with_auth "Bearer foo"
ams-watchdog-connect '9gIiDandpGT2t24a' --login_with_auth "Bearer foo"
ams-upload-url-get --login_with_auth "Bearer foo"
ams-func1 --login_with_auth "Bearer foo"
ams-basic-health-check --login_with_auth "Bearer foo"
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
echo "1..47"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AuthCheck
$PYTHON -m $MODULE 'ams-auth-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AuthCheck' test.out

#- 3 PortalHealthCheck
$PYTHON -m $MODULE 'ams-portal-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'PortalHealthCheck' test.out

#- 4 AdminAccountGet
$PYTHON -m $MODULE 'ams-admin-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminAccountGet' test.out

#- 5 AdminAccountCreate
$PYTHON -m $MODULE 'ams-admin-account-create' \
    '{"name": "OMh5eC3IHeHSKLCa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
$PYTHON -m $MODULE 'ams-admin-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLink
$PYTHON -m $MODULE 'ams-admin-account-link' \
    '{"token": "3xreNDUWehwH3q31"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLink' test.out

#- 8 ArtifactGet
$PYTHON -m $MODULE 'ams-artifact-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactBulkDelete
$PYTHON -m $MODULE 'ams-artifact-bulk-delete' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ArtifactBulkDelete' test.out

#- 10 ArtifactUsageGet
$PYTHON -m $MODULE 'ams-artifact-usage-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactUsageGet' test.out

#- 11 ArtifactDelete
$PYTHON -m $MODULE 'ams-artifact-delete' \
    'A806DJgas4b6z3LN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'Uj7fdgLA84Z8YYk6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'ArtifactGetURL' test.out

#- 13 DevelopmentServerConfigurationList
$PYTHON -m $MODULE 'ams-development-server-configuration-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationList' test.out

#- 14 DevelopmentServerConfigurationCreate
$PYTHON -m $MODULE 'ams-development-server-configuration-create' \
    '{"commandLineArguments": "QEgJjBbEDoNf3n0h", "expiresAt": "1986-12-19T00:00:00Z", "imageId": "oRCAcf80zfFyabWA", "name": "gIUXiI07A68eaqC2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'J9jyEW6GLbc0NaKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'UL3sa13lk1dQBHO8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
$PYTHON -m $MODULE 'ams-development-server-configuration-patch' \
    '{"commandLineArguments": "6IlBhnetU4RwTqUX", "expiresAt": "1977-02-21T00:00:00Z"}' \
    'TDBzOuYsaZA2yyd4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DevelopmentServerConfigurationPatch' test.out

#- 18 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetList' test.out

#- 19 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["nn2ZkP7cFdP43e5d", "C9XIBudfZgrbHDID", "m4hMzF4TxodenSrU"], "dsHostConfiguration": {"instanceId": "TvfqU0bfoMm5cTtF", "serversPerVm": 100}, "fallbackFleet": "HZ3c46IjGa23YvYm", "imageDeploymentProfile": {"commandLine": "mDg7VYPXIuvUYTZB", "imageId": "RujIUE1Tq5jyAZvk", "portConfigurations": [{"name": "RCMNFIurjh2imdb4", "protocol": "rbkXj0ZwsVC0gL97"}, {"name": "ZVJSPqJiwv1qlYB1", "protocol": "RSKs6gQxC3Gb7S0o"}, {"name": "4zGYY7KQI1AeFgPq", "protocol": "aOkvo1aolB4lkKB4"}], "timeout": {"claim": 62, "creation": 33, "drain": 20, "session": 82, "unresponsive": 81}}, "name": "kQ1jMD3cym8xIfkO", "onDemand": false, "regions": [{"bufferSize": 100, "dynamicBuffer": false, "maxServerCount": 68, "minServerCount": 37, "region": "C9LxhvNXTwGBCtoh"}, {"bufferSize": 76, "dynamicBuffer": false, "maxServerCount": 39, "minServerCount": 23, "region": "l9Zuhytm5UDrT6QX"}, {"bufferSize": 58, "dynamicBuffer": true, "maxServerCount": 75, "minServerCount": 77, "region": "SPBbRPZTF6oQAXVG"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 24}}, "logs": {"crashed": {"collect": false, "percentage": 15}, "success": {"collect": true, "percentage": 92}, "unclaimed": {"collect": false, "percentage": 11}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    '5QgXjvyGJPN4eXbJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["50Kv6ecnEevcAx2K", "2zkRenmPZnGBt4P7", "WnbdSJtjX7ZshZyZ"], "dsHostConfiguration": {"instanceId": "l5x4bRXBHUTrDzZS", "serversPerVm": 76}, "fallbackFleet": "gxSmy1DN9LFkYW5D", "imageDeploymentProfile": {"commandLine": "Qyj4bj5Ro2ogaKt2", "imageId": "ujQSa3Zdb65UXmy0", "portConfigurations": [{"name": "Zp6iIaTIKUkmkk9Q", "protocol": "M0NBMA9ORxpzwLR2"}, {"name": "AK6eXUGPJsw1fiP8", "protocol": "0G9Pclxcft2ulIJz"}, {"name": "PyrVEiOG4UcqsuGK", "protocol": "HhMRWLVd3DlhLuIp"}], "timeout": {"claim": 29, "creation": 25, "drain": 92, "session": 79, "unresponsive": 66}}, "name": "8sm1MiaI1mX2tJoA", "onDemand": true, "regions": [{"bufferSize": 69, "dynamicBuffer": false, "maxServerCount": 57, "minServerCount": 2, "region": "vepnDCjgyJlXe36m"}, {"bufferSize": 13, "dynamicBuffer": false, "maxServerCount": 100, "minServerCount": 48, "region": "jLfFmteue9nzJ6fH"}, {"bufferSize": 29, "dynamicBuffer": false, "maxServerCount": 83, "minServerCount": 89, "region": "5tVg8JqU0jZpjvsu"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 10}}, "logs": {"crashed": {"collect": true, "percentage": 95}, "success": {"collect": false, "percentage": 91}, "unclaimed": {"collect": false, "percentage": 41}}}}' \
    'p5JMl5LL4bTxBmZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'drrIxsB0NRsB1fPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'qRRulpqpymDkQhtr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": false, "percentage": 99}}, "logs": {"crashed": {"collect": false, "percentage": 46}, "success": {"collect": false, "percentage": 89}, "unclaimed": {"collect": false, "percentage": 97}}}' \
    'png5BLy8wbhMssAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'japIkY9Rf4wP57dB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'ZNR88YbCtmKy8M9z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'FleetServerHistory' test.out

#- 27 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImageList' test.out

#- 28 ImagesStorage
$PYTHON -m $MODULE 'ams-images-storage' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ImagesStorage' test.out

#- 29 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'VrjfGXZnqAQUoY1G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'jlIIk0iKoTTS1j02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["o7JjTXAQN0qdskdQ", "V0TqI8EFnmDbxIxi", "4YKlONk2Q5Y4Jvai"], "isProtected": true, "name": "NYIWekp18lOC3mNq", "removedTags": ["F7Bl0LcghVHfPEsp", "xwhRON0bc1eMbEIj", "owLqc3ecjXJbZDKK"]}' \
    'oxLE1Y3Dymtj3giP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'g4x4yiPX6ues1Hhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ImageUnmarkForDeletion' test.out

#- 33 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsGet' test.out

#- 34 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "kg1yLVbLFzHEP8cM"}' \
    '4NTwr0KHaAsmTej5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsUpdate' test.out

#- 35 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'InfoRegions' test.out

#- 36 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    '2WKi6tArAURt9plC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'SVq8PdH6hJPUAc0R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'VwXgAgntLMCuaXBW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'ServerHistory' test.out

#- 39 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'InfoSupportedInstances' test.out

#- 40 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AccountGet' test.out

#- 41 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "Qi6BqPg4xr0lCanc", "sessionId": "UZGCHsZYoLfR1KtO"}' \
    'v7Zy0b65uvuKNuy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'ytZQ7M6Nzy1adnSK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["OLFKx1dX4LuWJu3p", "DMUAeeZ97SBROPYu", "G6XqP6oo7G73zdxT"], "regions": ["gOfnwIdlNa29fDLh", "741IslKHzGlLKWUt", "DQs61OQAoxyyQpRW"], "sessionId": "CiiPDGQhNPEwiJCf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '2XJVrlzqQls1ozhL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'WatchdogConnect' test.out

#- 45 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UploadURLGet' test.out

#- 46 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'Func1' test.out

#- 47 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
