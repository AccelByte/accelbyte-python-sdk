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
ams-local-watchdog-connect 'hG96gAFKK2WDgCcx' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["vONZm3EeERmDnyeF", "oF7VSZ6pf3vneSD2", "Tb3g7mSQUhAEtrmj"], "regions": ["qU6YE3p4lSck0ZHn", "5GI39YBHqaTHeKtW", "18iGeUlc9d9sogWa"]}' --login_with_auth "Bearer foo"
ams-watchdog-connect '24CKNS0GqVvUfHQv' --login_with_auth "Bearer foo"
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
echo "1..27"

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

#- 4 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AccountGet' test.out

#- 5 AccountCreate
$PYTHON -m $MODULE 'ams-account-create' \
    '{"name": "sHXNUNe4mhgo5QB6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AccountCreate' test.out

#- 6 AccountLinkTokenGet
$PYTHON -m $MODULE 'ams-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AccountLinkTokenGet' test.out

#- 7 AccountLink
$PYTHON -m $MODULE 'ams-account-link' \
    '{"token": "5lSAiYnNjkfZrQvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

#- 8 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'FleetList' test.out

#- 9 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["Zk03QXcKMDYDDxHS", "ZjtqXyJ58f7Gc26S", "aiGVkydwYWQG26yU"], "dsHostConfiguration": {"instanceId": "ZNmTBcvrbYCwZtxF", "instanceType": "HyPLtI8ilbyDPUIj", "serversPerVm": 32}, "imageDeploymentProfile": {"commandLine": "cekdqCt81P1ktfIo", "imageId": "vmv9gsR5cJcHm3SZ", "portConfigurations": [{"name": "LxoRDFuuuySj29a9", "protocol": "LJE8HoRS1X2PFAAM"}, {"name": "wzHPxB1UskYs4Yw2", "protocol": "0DOqOBSC2DKHRuPM"}, {"name": "MWH8Yb33T5UBJCjf", "protocol": "cnLRfxeCSz9WEi8K"}], "timeout": {"creation": 24, "drain": 23, "session": 23, "unresponsive": 29}}, "name": "8wdNFLTm5T50x9WT", "regions": [{"bufferSize": 3, "maxServerCount": 66, "minServerCount": 16, "region": "fH2rtOa4EXsXzOXQ"}, {"bufferSize": 55, "maxServerCount": 78, "minServerCount": 22, "region": "gh3tIYt4SqYUTLDx"}, {"bufferSize": 78, "maxServerCount": 13, "minServerCount": 70, "region": "QOxtjzm8y2wNhmwo"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'YZyI4EFZKBcYrCEA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["eNDUWehwH3q31A80", "6DJgas4b6z3LNUj7", "fdgLA84Z8YYk6QEg"], "dsHostConfiguration": {"instanceId": "JjBbEDoNf3n0hEoR", "instanceType": "CAcf80zfFyabWAgI", "serversPerVm": 95}, "imageDeploymentProfile": {"commandLine": "hRkloqxM3gpwxcfM", "imageId": "y9XzjjI5YbsKoADk", "portConfigurations": [{"name": "zJEN2VHzih3bit0V", "protocol": "Wn3CO39PXDNxtXge"}, {"name": "O3FgkXhjDzaQY3sn", "protocol": "n2ZkP7cFdP43e5dC"}, {"name": "9XIBudfZgrbHDIDm", "protocol": "4hMzF4TxodenSrUT"}], "timeout": {"creation": 44, "drain": 84, "session": 10, "unresponsive": 33}}, "name": "47g8OudOfjnCuHZ3", "regions": [{"bufferSize": 4, "maxServerCount": 87, "minServerCount": 50, "region": "6IjGa23YvYmmDg7V"}, {"bufferSize": 47, "maxServerCount": 85, "minServerCount": 21, "region": "XIuvUYTZBRujIUE1"}, {"bufferSize": 94, "maxServerCount": 34, "minServerCount": 25, "region": "jyAZvkRCMNFIurjh"}]}' \
    '2imdb4rbkXj0ZwsV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'C0gL97ZVJSPqJiwv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    '1qlYB1RSKs6gQxC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'FleetServers' test.out

#- 14 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'Gb7S0o4zGYY7KQI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'FleetServerHistory' test.out

#- 15 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'ImageList' test.out

#- 16 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'AeFgPqaOkvo1aolB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'ImageGet' test.out

#- 17 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["4lkKB4EYOkQ1jMD3", "cym8xIfkOVW2grRE", "OLx0KOww3HICQLfl"], "isProtected": true, "name": "BG7qtPu64yAtURKL", "removedTags": ["Rkb738HGS6rDgMdI", "IlhS1fSiM9331m7T", "a1PsKc50Kv6ecnEe"]}' \
    'vcAx2K2zkRenmPZn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'ImagePatch' test.out

#- 18 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'InfoRegions' test.out

#- 19 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'GBt4P7WnbdSJtjX7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetServerInfo' test.out

#- 20 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'ZshZyZl5x4bRXBHU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'ServerHistory' test.out

#- 21 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'InfoSupportedInstances' test.out

#- 22 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "TrDzZSKscfOcYu3d"}' \
    'pCROYqUiGKXVFCmp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetClaimByID' test.out

#- 23 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'o6sPwVOEDSJsEK5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'LocalWatchdogConnect' test.out

#- 24 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["pNhlI2iS5EpGhhvX", "Yck0upMzUYnb76tF", "kEORV3bu1bNCtX7W"], "regions": ["40V6Do5sYadCCFrH", "HC3DpZxkrQDXuNFv", "iMarv8mnfHK8CCmE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByKeys' test.out

#- 25 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '2lPnsbD3SGEdlwuU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'WatchdogConnect' test.out

#- 26 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'Func1' test.out

#- 27 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
