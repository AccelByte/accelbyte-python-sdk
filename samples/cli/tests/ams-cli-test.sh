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
ams-func2 --login_with_auth "Bearer foo"
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
ams-fleet-claim-by-keys '{"claimKeys": ["hG96gAFKK2WDgCcx", "vONZm3EeERmDnyeF", "oF7VSZ6pf3vneSD2"], "regions": ["Tb3g7mSQUhAEtrmj", "qU6YE3p4lSck0ZHn", "5GI39YBHqaTHeKtW"]}' --login_with_auth "Bearer foo"
ams-watchdog-connect '18iGeUlc9d9sogWa' --login_with_auth "Bearer foo"
ams-func3 --login_with_auth "Bearer foo"
ams-portal-health-check --login_with_auth "Bearer foo"
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
echo "1..25"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 Func2
$PYTHON -m $MODULE 'ams-func2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'Func2' test.out

#- 3 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AccountGet' test.out

#- 4 AccountCreate
$PYTHON -m $MODULE 'ams-account-create' \
    '{"name": "24CKNS0GqVvUfHQv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AccountCreate' test.out

#- 5 AccountLinkTokenGet
$PYTHON -m $MODULE 'ams-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AccountLinkTokenGet' test.out

#- 6 AccountLink
$PYTHON -m $MODULE 'ams-account-link' \
    '{"token": "sHXNUNe4mhgo5QB6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AccountLink' test.out

#- 7 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'FleetList' test.out

#- 8 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["lSAiYnNjkfZrQvGg", "bLdLsFzHkBMr1yrO", "MlNFSrUEirnjX9fD"], "dsHostConfiguration": {"instanceId": "mIbeZxzfTcyiuATu", "instanceType": "s9hsfpFDcSDG8aMV", "serversPerVm": 67}, "imageDeploymentProfile": {"commandLine": "yPLtI8ilbyDPUIj8", "imageId": "8cekdqCt81P1ktfI", "portConfigurations": [{"name": "ovmv9gsR5cJcHm3S", "protocol": "ZLxoRDFuuuySj29a"}, {"name": "9LJE8HoRS1X2PFAA", "protocol": "MwzHPxB1UskYs4Yw"}, {"name": "20DOqOBSC2DKHRuP", "protocol": "MMWH8Yb33T5UBJCj"}], "timeout": {"creation": 12, "drain": 63, "session": 5, "unresponsive": 9}}, "name": "nLRfxeCSz9WEi8Kl", "regions": [{"bufferSize": 23, "maxServerCount": 29, "minServerCount": 9, "region": "wdNFLTm5T50x9WT0"}, {"bufferSize": 66, "maxServerCount": 16, "minServerCount": 11, "region": "Bfsu4jmsRE2w1yEk"}, {"bufferSize": 78, "maxServerCount": 22, "minServerCount": 13, "region": "4mqrxzTtuLl4XlbG"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'FleetCreate' test.out

#- 9 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'L8QOxtjzm8y2wNhm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'FleetGet' test.out

#- 10 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["Mh5eC3IHeHSKLCa3", "xreNDUWehwH3q31A", "806DJgas4b6z3LNU"], "dsHostConfiguration": {"instanceId": "j7fdgLA84Z8YYk6Q", "instanceType": "EgJjBbEDoNf3n0hE", "serversPerVm": 30}, "imageDeploymentProfile": {"commandLine": "BkMNxvvKgAT8mJrY", "imageId": "q6hRkloqxM3gpwxc", "portConfigurations": [{"name": "fMy9XzjjI5YbsKoA", "protocol": "DkzJEN2VHzih3bit"}, {"name": "0VWn3CO39PXDNxtX", "protocol": "geO3FgkXhjDzaQY3"}, {"name": "snn2ZkP7cFdP43e5", "protocol": "dC9XIBudfZgrbHDI"}], "timeout": {"creation": 61, "drain": 54, "session": 24, "unresponsive": 85}}, "name": "4hMzF4TxodenSrUT", "regions": [{"bufferSize": 44, "maxServerCount": 84, "minServerCount": 10, "region": "847g8OudOfjnCuHZ"}, {"bufferSize": 39, "maxServerCount": 4, "minServerCount": 87, "region": "46IjGa23YvYmmDg7"}, {"bufferSize": 98, "maxServerCount": 31, "minServerCount": 47, "region": "PXIuvUYTZBRujIUE"}]}' \
    '1Tq5jyAZvkRCMNFI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'FleetUpdate' test.out

#- 11 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'urjh2imdb4rbkXj0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'FleetDelete' test.out

#- 12 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'ZwsVC0gL97ZVJSPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'FleetServers' test.out

#- 13 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'Jiwv1qlYB1RSKs6g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'FleetServerHistory' test.out

#- 14 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'ImageList' test.out

#- 15 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'QxC3Gb7S0o4zGYY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ImageGet' test.out

#- 16 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["KQI1AeFgPqaOkvo1", "aolB4lkKB4EYOkQ1", "jMD3cym8xIfkOVW2"], "isProtected": false, "name": "HC9LxhvNXTwGBCto", "removedTags": ["hLtl9Zuhytm5UDrT", "6QXCs5SPBbRPZTF6", "oQAXVG7tnsZg5QgX"]}' \
    'jvyGJPN4eXbJE5Vs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'ImagePatch' test.out

#- 17 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'InfoRegions' test.out

#- 18 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    '2GcyomQoIXimBJeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetServerInfo' test.out

#- 19 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'yxlNsjUgxBkF6wFP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'ServerHistory' test.out

#- 20 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'InfoSupportedInstances' test.out

#- 21 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "oJeQediogEhhM2rI"}' \
    'izGdKvOPdq5xrgxS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetClaimByID' test.out

#- 22 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["my1DN9LFkYW5DQyj", "4bj5Ro2ogaKt2ujQ", "Sa3Zdb65UXmy0Zp6"], "regions": ["iIaTIKUkmkk9QM0N", "BMA9ORxpzwLR2AK6", "eXUGPJsw1fiP80G9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByKeys' test.out

#- 23 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'Pclxcft2ulIJzPyr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'WatchdogConnect' test.out

#- 24 Func3
$PYTHON -m $MODULE 'ams-func3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'Func3' test.out

#- 25 PortalHealthCheck
$PYTHON -m $MODULE 'ams-portal-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PortalHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
