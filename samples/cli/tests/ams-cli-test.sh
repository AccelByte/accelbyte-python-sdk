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
ams-fleet-artifact-sampling-rules-get 'os4fYcTVU6RBt0zY' --login_with_auth "Bearer foo"
ams-fleet-servers 'oMcHyCUEXlAvxJMd' --login_with_auth "Bearer foo"
ams-fleet-server-history 'alwSyliWMNW5NyLu' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get '0M3VHh2EI8JlDbPW' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["bQ6Q9lNmqRBaAkLn", "vxkT1X68cmDc3fxU", "8MyKrQpM4hkkK6KK"], "isProtected": true, "name": "3xoJ8aeCnaLpUKp4", "removedTags": ["4YUDjasWIPUvmEej", "tGeoyIPa8ZRrvjj7", "il35MXbN9oCMNqq9"]}' '8SjTvhZNkSQ70D0H' --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "6BXksUC9b6i5lZC9"}' 'xv32e8c5csSovoqs' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'ZNBdte9NDUPVJf6c' --login_with_auth "Bearer foo"
ams-server-history '2Z0QZxfgPubTDIHr' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "vqAThuwjRHpKKTlm"}' 'Vr9XuoJbRFQSKVPH' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'bn4Xxtu7LQRENjEE' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["ztx1WsYSiZqan0nS", "BJroav91GXlvPG6b", "FYReVHQipcCx9Zw5"], "regions": ["D2L7vIYhGGSyEW4Z", "JJ42d3PBddN8S48l", "9lyNApflxqMrj3oZ"]}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'k03QXcKMDYDDxHSZ' --login_with_auth "Bearer foo"
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
echo "1..30"

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
    '{"name": "jtqXyJ58f7Gc26Sa"}' \
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
    '{"token": "iGVkydwYWQG26yUZ"}' \
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
    '{"active": false, "claimKeys": ["hsfpFDcSDG8aMVGL", "iBNrDjqoxcwgGLXp", "UL4pp2ncYAHdNzDm"], "dsHostConfiguration": {"instanceId": "eIP6rOvDz9KOsb39", "instanceType": "2k6YmJFfRByjlBiu", "serversPerVm": 65}, "imageDeploymentProfile": {"commandLine": "JE8HoRS1X2PFAAMw", "imageId": "zHPxB1UskYs4Yw20", "portConfigurations": [{"name": "DOqOBSC2DKHRuPMM", "protocol": "WH8Yb33T5UBJCjfc"}, {"name": "nLRfxeCSz9WEi8Kl", "protocol": "loeH0JT1yduat2vQ"}, {"name": "R3biBfsu4jmsRE2w", "protocol": "1yEkLgh3tIYt4SqY"}], "timeout": {"creation": 95, "drain": 93, "session": 77, "unresponsive": 22}}, "name": "Dx9gIiDandpGT2t2", "regions": [{"bufferSize": 15, "maxServerCount": 1, "minServerCount": 25, "region": "OMh5eC3IHeHSKLCa"}, {"bufferSize": 62, "maxServerCount": 48, "minServerCount": 55, "region": "reNDUWehwH3q31A8"}, {"bufferSize": 15, "maxServerCount": 60, "minServerCount": 9, "region": "Jgas4b6z3LNUj7fd"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'FleetCreate' test.out

#- 10 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'gLA84Z8YYk6QEgJj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'FleetGet' test.out

#- 11 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["EQlULdJz4mnRBkMN", "xvvKgAT8mJrYq6hR", "kloqxM3gpwxcfMy9"], "dsHostConfiguration": {"instanceId": "XzjjI5YbsKoADkzJ", "instanceType": "EN2VHzih3bit0VWn", "serversPerVm": 27}, "imageDeploymentProfile": {"commandLine": "CO39PXDNxtXgeO3F", "imageId": "gkXhjDzaQY3snn2Z", "portConfigurations": [{"name": "kP7cFdP43e5dC9XI", "protocol": "BudfZgrbHDIDm4hM"}, {"name": "zF4TxodenSrUTvfq", "protocol": "U0bfoMm5cTtFWbot"}, {"name": "QyXJRcQWsmqPNs92", "protocol": "epxk0i8VxsZNereS"}], "timeout": {"creation": 44, "drain": 95, "session": 10, "unresponsive": 63}}, "name": "9699mCEHThUJkETA", "regions": [{"bufferSize": 37, "maxServerCount": 42, "minServerCount": 91, "region": "rjh2imdb4rbkXj0Z"}, {"bufferSize": 47, "maxServerCount": 56, "minServerCount": 38, "region": "8AT9t4Tv207Y2QD3"}, {"bufferSize": 29, "maxServerCount": 45, "minServerCount": 61, "region": "1qlYB1RSKs6gQxC3"}]}' \
    'Gb7S0o4zGYY7KQI1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'FleetUpdate' test.out

#- 12 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'AeFgPqaOkvo1aolB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'FleetDelete' test.out

#- 13 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    '4lkKB4EYOkQ1jMD3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'FleetArtifactSamplingRulesGet' test.out

#- 14 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'cym8xIfkOVW2grRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'FleetServers' test.out

#- 15 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'OLx0KOww3HICQLfl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'FleetServerHistory' test.out

#- 16 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'ImageList' test.out

#- 17 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    '7MUBG7qtPu64yAtU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'ImageGet' test.out

#- 18 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["RKLRkb738HGS6rDg", "MdIIlhS1fSiM9331", "m7Ta1PsKc50Kv6ec"], "isProtected": false, "name": "omQoIXimBJehyxlN", "removedTags": ["sjUgxBkF6wFPoJeQ", "ediogEhhM2rIizGd", "KvOPdq5xrgxSmy1D"]}' \
    'N9LFkYW5DQyj4bj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'ImagePatch' test.out

#- 19 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "Ro2ogaKt2ujQSa3Z"}' \
    'db65UXmy0Zp6iIaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'QoSRegionsUpdate' test.out

#- 20 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'InfoRegions' test.out

#- 21 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'IKUkmkk9QM0NBMA9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetServerInfo' test.out

#- 22 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'ORxpzwLR2AK6eXUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ServerHistory' test.out

#- 23 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'InfoSupportedInstances' test.out

#- 24 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "PJsw1fiP80G9Pclx"}' \
    'cft2ulIJzPyrVEiO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetClaimByID' test.out

#- 25 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'G4UcqsuGKHhMRWLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'LocalWatchdogConnect' test.out

#- 26 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'QoSRegionsGet' test.out

#- 27 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["d3DlhLuIpomM8sm1", "MiaI1mX2tJoARtdb", "Be7udsMrok0WvGYY"], "regions": ["nx4V709xbnGezKsD", "wG2omOR2nvYI9TVq", "JdvzcWbfUpaXp5JM"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'FleetClaimByKeys' test.out

#- 28 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'l5LL4bTxBmZjdrrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'WatchdogConnect' test.out

#- 29 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'Func1' test.out

#- 30 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
