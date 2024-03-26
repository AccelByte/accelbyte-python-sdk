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
ams-admin-account-link-token-post '{"token": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
ams-artifact-get --login_with_auth "Bearer foo"
ams-artifact-usage-get --login_with_auth "Bearer foo"
ams-artifact-delete 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
ams-artifact-get-url 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ams-development-server-configuration-list --login_with_auth "Bearer foo"
ams-development-server-configuration-create '{"commandLine": "BZLCXLx8bbgorQeF", "imageId": "bQ1g7qbPngUNB1vR", "name": "odwpzS6DaDpv8N7Z"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'QVqGj6oDLjWjkY1a' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'XlFcDtgOjchIua5t' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": false, "claimKeys": ["EIC32ogW7olvbTgr", "hRTcPiSuL0Sly6XM", "4OI18mAQLnzjMf8G"], "dsHostConfiguration": {"instanceId": "Z2WBZqxYG3aREAu2", "instanceType": "D6QVKNCWP75TB0i7", "serversPerVm": 31}, "imageDeploymentProfile": {"commandLine": "x4c8OumKtPDKJDXn", "imageId": "7Z4U68su8XfqlqNi", "portConfigurations": [{"name": "TvB6SdAdIhUDrwoZ", "protocol": "5MecdKi5r6QEa1ys"}, {"name": "LEzth6mXhzkzWkFe", "protocol": "ZSoEAcBdW19m4eu6"}, {"name": "d5tA5jUmiTqpyhPF", "protocol": "dxLzFQN05MYzYiKW"}], "timeout": {"creation": 9, "drain": 7, "session": 6, "unresponsive": 80}}, "name": "FLIAjGGJddVCvu9v", "regions": [{"bufferSize": 47, "maxServerCount": 91, "minServerCount": 9, "region": "KQ7KYnIuMBvaO35l"}, {"bufferSize": 23, "maxServerCount": 42, "minServerCount": 52, "region": "6Vpbsx5w8hqUI06U"}, {"bufferSize": 32, "maxServerCount": 43, "minServerCount": 83, "region": "B0y5WUlrMdI4sNve"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 89}, "success": {"collect": false, "percentage": 26}}, "logs": {"crashed": {"collect": true, "percentage": 40}, "success": {"collect": true, "percentage": 12}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'SxTeIv53HGCiljvj' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["oyD6SCwGrncqmLtj", "QHAf8TgoNm03VLis", "V6zwPuo3td6TC6I3"], "dsHostConfiguration": {"instanceId": "lMjGSWN2laRlxfcj", "instanceType": "HfYakUCTqGkE7wcW", "serversPerVm": 11}, "imageDeploymentProfile": {"commandLine": "aLqYSYWytLPziZMd", "imageId": "jxcBZufQxGiHPllG", "portConfigurations": [{"name": "4cYEzfTD1ZBm3MqH", "protocol": "cUmLZZbSqb8RwNmn"}, {"name": "9HrNQy4uZAAiE0mi", "protocol": "t9RGCCHYzUOcEdsc"}, {"name": "KHPEqgA8yu7Vk6Jt", "protocol": "4Ymos9Jcdos4fYcT"}], "timeout": {"creation": 98, "drain": 5, "session": 95, "unresponsive": 1}}, "name": "6RBt0zYoMcHyCUEX", "regions": [{"bufferSize": 24, "maxServerCount": 25, "minServerCount": 55, "region": "aLoxozr6wfNPX2bO"}, {"bufferSize": 70, "maxServerCount": 40, "minServerCount": 81, "region": "RMvqtlB2jJCSQT27"}, {"bufferSize": 3, "maxServerCount": 86, "minServerCount": 99, "region": "PYGu0rdlgdWyOtXi"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 5}, "success": {"collect": true, "percentage": 14}}, "logs": {"crashed": {"collect": false, "percentage": 29}, "success": {"collect": true, "percentage": 31}}}}' '68cmDc3fxU8MyKrQ' --login_with_auth "Bearer foo"
ams-fleet-delete 'pM4hkkK6KKXNB3Gv' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get '0IqmF51TkhjYnaq6' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": false, "percentage": 20}, "success": {"collect": false, "percentage": 0}}, "logs": {"crashed": {"collect": true, "percentage": 44}, "success": {"collect": false, "percentage": 84}}}' '3bMrXsDr6kILsSSy' --login_with_auth "Bearer foo"
ams-fleet-servers 'DdmykmoPYgc2L4jk' --login_with_auth "Bearer foo"
ams-fleet-server-history '4Lo0LSP0pf4IxjUk' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get 'l535X3ateEKDpADz' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["1x3poD3Qgb3boLQQ", "1MzH7Qm8bwbmXgdA", "Ph1EThG96gAFKK2W"], "isProtected": true, "name": "bTDIHrvqAThuwjRH", "removedTags": ["pKKTlmVr9XuoJbRF", "QSKVPHbn4Xxtu7LQ", "RENjEEztx1WsYSiZ"]}' 'qan0nSBJroav91GX' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "lvPG6bFYReVHQipc"}' 'Cx9Zw5D2L7vIYhGG' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'SyEW4ZJJ42d3PBdd' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'N8S48l9lyNApflxq' --login_with_auth "Bearer foo"
ams-server-history 'Mrj3oZk03QXcKMDY' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "DDxHSZjtqXyJ58f7", "sessionId": "Gc26SaiGVkydwYWQ"}' 'G26yUZNmTBcvrbYC' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'wZtxFHyPLtI8ilby' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["DPUIj88cekdqCt81", "P1ktfIovmv9gsR5c", "JcHm3SZLxoRDFuuu"], "regions": ["ySj29a9LJE8HoRS1", "X2PFAAMwzHPxB1Us", "kYs4Yw20DOqOBSC2"], "sessionId": "DKHRuPMMWH8Yb33T"}' --login_with_auth "Bearer foo"
ams-watchdog-connect '5UBJCjfcnLRfxeCS' --login_with_auth "Bearer foo"
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
echo "1..42"

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
    '{"name": "z9WEi8KlloeH0JT1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminAccountCreate' test.out

#- 6 AdminAccountLinkTokenGet
$PYTHON -m $MODULE 'ams-admin-account-link-token-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminAccountLinkTokenGet' test.out

#- 7 AdminAccountLinkTokenPost
$PYTHON -m $MODULE 'ams-admin-account-link-token-post' \
    '{"token": "yduat2vQR3biBfsu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

#- 8 ArtifactGet
$PYTHON -m $MODULE 'ams-artifact-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'ArtifactGet' test.out

#- 9 ArtifactUsageGet
$PYTHON -m $MODULE 'ams-artifact-usage-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ArtifactUsageGet' test.out

#- 10 ArtifactDelete
$PYTHON -m $MODULE 'ams-artifact-delete' \
    '4jmsRE2w1yEkLgh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'tIYt4SqYUTLDx9gI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 DevelopmentServerConfigurationList
$PYTHON -m $MODULE 'ams-development-server-configuration-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DevelopmentServerConfigurationList' test.out

#- 13 DevelopmentServerConfigurationCreate
$PYTHON -m $MODULE 'ams-development-server-configuration-create' \
    '{"commandLine": "iDandpGT2t24aOMh", "imageId": "5eC3IHeHSKLCa3xr", "name": "eNDUWehwH3q31A80"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'DevelopmentServerConfigurationCreate' test.out

#- 14 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    '6DJgas4b6z3LNUj7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationGet' test.out

#- 15 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'fdgLA84Z8YYk6QEg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationDelete' test.out

#- 16 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'FleetList' test.out

#- 17 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": true, "claimKeys": ["jBbEDoNf3n0hEoRC", "Acf80zfFyabWAgIU", "XiI07A68eaqC2J9j"], "dsHostConfiguration": {"instanceId": "yEW6GLbc0NaKDUL3", "instanceType": "sa13lk1dQBHO86Il", "serversPerVm": 56}, "imageDeploymentProfile": {"commandLine": "n3CO39PXDNxtXgeO", "imageId": "3FgkXhjDzaQY3snn", "portConfigurations": [{"name": "2ZkP7cFdP43e5dC9", "protocol": "XIBudfZgrbHDIDm4"}, {"name": "hMzF4TxodenSrUTv", "protocol": "fqU0bfoMm5cTtFWb"}, {"name": "otQyXJRcQWsmqPNs", "protocol": "92epxk0i8VxsZNer"}], "timeout": {"creation": 8, "drain": 18, "session": 92, "unresponsive": 72}}, "name": "vf9699mCEHThUJkE", "regions": [{"bufferSize": 93, "maxServerCount": 66, "minServerCount": 54, "region": "Iurjh2imdb4rbkXj"}, {"bufferSize": 10, "maxServerCount": 73, "minServerCount": 47, "region": "B8AT9t4Tv207Y2QD"}, {"bufferSize": 45, "maxServerCount": 29, "minServerCount": 45, "region": "D5fLCr3OOlXVv8ZG"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 43}, "success": {"collect": false, "percentage": 66}}, "logs": {"crashed": {"collect": false, "percentage": 52}, "success": {"collect": false, "percentage": 51}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetCreate' test.out

#- 18 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'ipNDigNJma1MbqqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetGet' test.out

#- 19 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["kvo1aolB4lkKB4EY", "OkQ1jMD3cym8xIfk", "OVW2grREOLx0KOww"], "dsHostConfiguration": {"instanceId": "3HICQLfl7MUBG7qt", "instanceType": "Pu64yAtURKLRkb73", "serversPerVm": 69}, "imageDeploymentProfile": {"commandLine": "TF6oQAXVG7tnsZg5", "imageId": "QgXjvyGJPN4eXbJE", "portConfigurations": [{"name": "5Vs2GcyomQoIXimB", "protocol": "JehyxlNsjUgxBkF6"}, {"name": "wFPoJeQediogEhhM", "protocol": "2rIizGdKvOPdq5xr"}, {"name": "gxSmy1DN9LFkYW5D", "protocol": "Qyj4bj5Ro2ogaKt2"}], "timeout": {"creation": 42, "drain": 62, "session": 20, "unresponsive": 61}}, "name": "QSa3Zdb65UXmy0Zp", "regions": [{"bufferSize": 63, "maxServerCount": 17, "minServerCount": 31, "region": "IaTIKUkmkk9QM0NB"}, {"bufferSize": 79, "maxServerCount": 3, "minServerCount": 54, "region": "76tFkEORV3bu1bNC"}, {"bufferSize": 40, "maxServerCount": 66, "minServerCount": 85, "region": "7W40V6Do5sYadCCF"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 10}, "success": {"collect": true, "percentage": 69}}, "logs": {"crashed": {"collect": true, "percentage": 42}, "success": {"collect": false, "percentage": 61}}}}' \
    'IJzPyrVEiOG4Ucqs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetUpdate' test.out

#- 20 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'uGKHhMRWLVd3DlhL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetDelete' test.out

#- 21 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'uIpomM8sm1MiaI1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetArtifactSamplingRulesGet' test.out

#- 22 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 41}, "success": {"collect": false, "percentage": 28}}, "logs": {"crashed": {"collect": true, "percentage": 54}, "success": {"collect": true, "percentage": 89}}}' \
    '3HBvepnDCjgyJlXe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesSet' test.out

#- 23 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    '36mgWjLfFmteue9n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetServers' test.out

#- 24 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'zJ6fH24T805tVg8J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetServerHistory' test.out

#- 25 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'ImageList' test.out

#- 26 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'qU0jZpjvsugAOS7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ImageGet' test.out

#- 27 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["8RiWyerCSa8SRgws", "Aj1ik1jglaDXTvKC", "WwNTAhd2wrS0uPdj"], "isProtected": false, "name": "WwRVnwVBOqOHi8pW", "removedTags": ["Gd1juYhiqjRJOqB5", "F93zFQbJndUDpdON", "neAczbBdHb2slt71"]}' \
    'B1SmZp2JZp50CnPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImagePatch' test.out

#- 28 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'QoSRegionsGet' test.out

#- 29 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "71ORYcmQbTU5JX8c"}' \
    'cLjMXJRk0eaKQDOJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'QoSRegionsUpdate' test.out

#- 30 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'InfoRegions' test.out

#- 31 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'vrTefglSs6g4iY9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'FleetServerInfo' test.out

#- 32 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    '02aCNYIWekp18lOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'FleetServerConnectionInfo' test.out

#- 33 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    '3mNqF7Bl0LcghVHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ServerHistory' test.out

#- 34 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'InfoSupportedInstances' test.out

#- 35 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'AccountGet' test.out

#- 36 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "PEspxwhRON0bc1eM", "sessionId": "bEIjowLqc3ecjXJb"}' \
    'ZDKKoxLE1Y3Dymtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetClaimByID' test.out

#- 37 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    '3giPg4x4yiPX6ues' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'LocalWatchdogConnect' test.out

#- 38 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["1Hhhkg1yLVbLFzHE", "P8cM4NTwr0KHaAsm", "Tej52WKi6tArAURt"], "regions": ["9plCSVq8PdH6hJPU", "Ac0RVwXgAgntLMCu", "aXBWQi6BqPg4xr0l"], "sessionId": "CancUZGCHsZYoLfR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'FleetClaimByKeys' test.out

#- 39 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '1KtOv7Zy0b65uvuK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'WatchdogConnect' test.out

#- 40 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UploadURLGet' test.out

#- 41 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'Func1' test.out

#- 42 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
