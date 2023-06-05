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
ams-account-get --login_with_auth "Bearer foo"
ams-account-create '{"name": "EAxcVpFrttufHIRd"}' --login_with_auth "Bearer foo"
ams-account-link-token-get --login_with_auth "Bearer foo"
ams-account-link '{"token": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": false, "claimKeys": ["ktQG0h5JAav5kRa6", "2WopBJHPtcDs8bBZ", "LCXLx8bbgorQeFbQ"], "dsHostConfiguration": {"instanceId": "1g7qbPngUNB1vRod", "instanceType": "wpzS6DaDpv8N7ZQV", "serversPerVm": 33}, "imageDeploymentProfile": {"commandLine": "UkNmKJfh5pUkHODp", "imageId": "oMF78NY4YkHs1cnz", "portConfigurations": [{"name": "1JSDgY1TXp38zsCT", "protocol": "CrbCbPOyNQkT7Nvy"}, {"name": "E3cwyALczNIicXm7", "protocol": "agSrjJW2OQNOs1PX"}, {"name": "hT5FvdiRilZ7oFgx", "protocol": "4c8OumKtPDKJDXn7"}], "timeout": {"creation": 96, "drain": 4, "session": 14, "unresponsive": 66}}, "name": "su8XfqlqNiTvB6Sd", "regions": [{"bufferSize": 55, "maxServerCount": 30, "minServerCount": 6, "region": "rKsxwkosAVerXpc1"}, {"bufferSize": 58, "maxServerCount": 36, "minServerCount": 88, "region": "fwHuKeb9l3rGN9A3"}, {"bufferSize": 38, "maxServerCount": 52, "minServerCount": 81, "region": "WkFeZSoEAcBdW19m"}]}' --login_with_auth "Bearer foo"
ams-fleet-get '4eu6d5tA5jUmiTqp' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["hDogqrhBRd8lDR6q", "VNPRZYdFLIAjGGJd", "dVCvu9vx5KQ7KYnI"], "dsHostConfiguration": {"instanceId": "uMBvaO35llzQRaT5", "instanceType": "kPxUfofvnnSuB0y5", "serversPerVm": 99}, "imageDeploymentProfile": {"commandLine": "mCVuHOPlLlkvR8sK", "imageId": "gnuRkgghGoYupD39", "portConfigurations": [{"name": "1C2qtPYokahFjkQs", "protocol": "fCaTmt1d67FXGk2s"}, {"name": "9Q0mPVo3twu0MesT", "protocol": "Cf9x4rt69lna7qxN"}, {"name": "eIxPz6MbwL6IY69z", "protocol": "1UaLqYSYWytLPziZ"}], "timeout": {"creation": 80, "drain": 30, "session": 7, "unresponsive": 81}}, "name": "jxcBZufQxGiHPllG", "regions": [{"bufferSize": 59, "maxServerCount": 5, "minServerCount": 42, "region": "EzfTD1ZBm3MqHcUm"}, {"bufferSize": 76, "maxServerCount": 70, "minServerCount": 69, "region": "bSqb8RwNmn9HrNQy"}, {"bufferSize": 24, "maxServerCount": 43, "minServerCount": 55, "region": "AAiE0mit9RGCCHYz"}]}' 'UOcEdscKHPEqgA8y' --login_with_auth "Bearer foo"
ams-fleet-delete 'u7Vk6Jt4Ymos9Jcd' --login_with_auth "Bearer foo"
ams-fleet-servers 'os4fYcTVU6RBt0zY' --login_with_auth "Bearer foo"
ams-fleet-server-history 'oMcHyCUEXlAvxJMd' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get 'alwSyliWMNW5NyLu' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["0M3VHh2EI8JlDbPW", "bQ6Q9lNmqRBaAkLn", "vxkT1X68cmDc3fxU"], "isProtected": true, "name": "MyKrQpM4hkkK6KKX", "removedTags": ["NB3Gv0IqmF51Tkhj", "Ynaq6foWvXa3bMrX", "sDr6kILsSSyDdmyk"]}' 'moPYgc2L4jk4Lo0L' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'SP0pf4IxjUkl535X' --login_with_auth "Bearer foo"
ams-server-history '3ateEKDpADz1x3po' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "D3Qgb3boLQQ1MzH7"}' 'Qm8bwbmXgdAPh1ET' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"region": "hG96gAFKK2WDgCcx"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'vONZm3EeERmDnyeF' --login_with_auth "Bearer foo"
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
echo "1..24"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AccountGet' test.out

#- 3 AccountCreate
$PYTHON -m $MODULE 'ams-account-create' \
    '{"name": "oF7VSZ6pf3vneSD2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AccountCreate' test.out

#- 4 AccountLinkTokenGet
$PYTHON -m $MODULE 'ams-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AccountLinkTokenGet' test.out

#- 5 AccountLink
$PYTHON -m $MODULE 'ams-account-link' \
    '{"token": "Tb3g7mSQUhAEtrmj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AccountLink' test.out

#- 6 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'FleetList' test.out

#- 7 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": true, "claimKeys": ["Eztx1WsYSiZqan0n", "SBJroav91GXlvPG6", "bFYReVHQipcCx9Zw"], "dsHostConfiguration": {"instanceId": "5D2L7vIYhGGSyEW4", "instanceType": "ZJJ42d3PBddN8S48", "serversPerVm": 23}, "imageDeploymentProfile": {"commandLine": "lSAiYnNjkfZrQvGg", "imageId": "bLdLsFzHkBMr1yrO", "portConfigurations": [{"name": "MlNFSrUEirnjX9fD", "protocol": "mIbeZxzfTcyiuATu"}, {"name": "s9hsfpFDcSDG8aMV", "protocol": "GLiBNrDjqoxcwgGL"}, {"name": "XpUL4pp2ncYAHdNz", "protocol": "DmeIP6rOvDz9KOsb"}], "timeout": {"creation": 77, "drain": 49, "session": 21, "unresponsive": 29}}, "name": "6YmJFfRByjlBiuFM", "regions": [{"bufferSize": 65, "maxServerCount": 70, "minServerCount": 71, "region": "oRS1X2PFAAMwzHPx"}, {"bufferSize": 55, "maxServerCount": 12, "minServerCount": 96, "region": "SCnqntX9y1aZSWMi"}, {"bufferSize": 98, "maxServerCount": 18, "minServerCount": 60, "region": "10sG6vxkfUcmqRRb"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'FleetCreate' test.out

#- 8 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'ceJ5i0EeDxOgBnhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'FleetGet' test.out

#- 9 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["9WEi8KlloeH0JT1y", "duat2vQR3biBfsu4", "jmsRE2w1yEkLgh3t"], "dsHostConfiguration": {"instanceId": "IYt4SqYUTLDx9gIi", "instanceType": "DandpGT2t24aOMh5", "serversPerVm": 8}, "imageDeploymentProfile": {"commandLine": "yI4EFZKBcYrCEAE7", "imageId": "WIsfmx40NLRc6m8h", "portConfigurations": [{"name": "eKnWhzfe2NubeoKF", "protocol": "eIaFQCYoDPICpndu"}, {"name": "EEQlULdJz4mnRBkM", "protocol": "NxvvKgAT8mJrYq6h"}, {"name": "RkloqxM3gpwxcfMy", "protocol": "9XzjjI5YbsKoADkz"}], "timeout": {"creation": 73, "drain": 0, "session": 62, "unresponsive": 82}}, "name": "3lk1dQBHO86IlBhn", "regions": [{"bufferSize": 10, "maxServerCount": 83, "minServerCount": 41, "region": "39PXDNxtXgeO3Fgk"}, {"bufferSize": 38, "maxServerCount": 14, "minServerCount": 1, "region": "jDzaQY3snn2ZkP7c"}, {"bufferSize": 65, "maxServerCount": 80, "minServerCount": 8, "region": "AXFaY9eKa699bRVh"}]}' \
    'yaKwwrAP2aMlu7Wt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'FleetUpdate' test.out

#- 10 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'jCtoYetOO847g8Ou' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'FleetDelete' test.out

#- 11 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'dOfjnCuHZ3c46IjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'FleetServers' test.out

#- 12 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'a23YvYmmDg7VYPXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'FleetServerHistory' test.out

#- 13 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'ImageList' test.out

#- 14 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'uvUYTZBRujIUE1Tq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'ImageGet' test.out

#- 15 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["5jyAZvkRCMNFIurj", "h2imdb4rbkXj0Zws", "VC0gL97ZVJSPqJiw"], "isProtected": true, "name": "D5fLCr3OOlXVv8ZG", "removedTags": ["F7uYnGzpipNDigNJ", "ma1MbqqZtfNWql4n", "mwAft4gqkNNlWkD9"]}' \
    'eOziYRFOn0jJLHC9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ImagePatch' test.out

#- 16 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'InfoRegions' test.out

#- 17 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'LxhvNXTwGBCtohLt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetServerInfo' test.out

#- 18 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'l9Zuhytm5UDrT6QX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'ServerHistory' test.out

#- 19 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'InfoSupportedInstances' test.out

#- 20 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "Cs5SPBbRPZTF6oQA"}' \
    'XVG7tnsZg5QgXjvy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetClaimByID' test.out

#- 21 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"region": "GJPN4eXbJE5Vs2Gc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByKeys' test.out

#- 22 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'yomQoIXimBJehyxl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'WatchdogConnect' test.out

#- 23 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'Func1' test.out

#- 24 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
