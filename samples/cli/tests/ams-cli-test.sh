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
ams-artifact-bulk-delete --login_with_auth "Bearer foo"
ams-artifact-usage-get --login_with_auth "Bearer foo"
ams-artifact-delete 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
ams-artifact-get-url 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
ams-development-server-configuration-list --login_with_auth "Bearer foo"
ams-development-server-configuration-create '{"commandLineArguments": "BZLCXLx8bbgorQeF", "imageId": "bQ1g7qbPngUNB1vR", "name": "odwpzS6DaDpv8N7Z"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'QVqGj6oDLjWjkY1a' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'XlFcDtgOjchIua5t' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": false, "claimKeys": ["EIC32ogW7olvbTgr", "hRTcPiSuL0Sly6XM", "4OI18mAQLnzjMf8G"], "dsHostConfiguration": {"instanceId": "Z2WBZqxYG3aREAu2", "instanceType": "D6QVKNCWP75TB0i7", "serversPerVm": 31}, "imageDeploymentProfile": {"commandLine": "x4c8OumKtPDKJDXn", "imageId": "7Z4U68su8XfqlqNi", "portConfigurations": [{"name": "TvB6SdAdIhUDrwoZ", "protocol": "5MecdKi5r6QEa1ys"}, {"name": "LEzth6mXhzkzWkFe", "protocol": "ZSoEAcBdW19m4eu6"}, {"name": "d5tA5jUmiTqpyhPF", "protocol": "dxLzFQN05MYzYiKW"}], "timeout": {"creation": 9, "drain": 7, "session": 6, "unresponsive": 80}}, "name": "FLIAjGGJddVCvu9v", "onDemand": true, "regions": [{"bufferSize": 91, "maxServerCount": 9, "minServerCount": 76, "region": "vkLGMS0lyuI9a2I9"}, {"bufferSize": 42, "maxServerCount": 52, "minServerCount": 86, "region": "Vpbsx5w8hqUI06Up"}, {"bufferSize": 83, "maxServerCount": 56, "minServerCount": 66, "region": "y5WUlrMdI4sNveab"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 37}, "success": {"collect": true, "percentage": 74}}, "logs": {"crashed": {"collect": true, "percentage": 12}, "success": {"collect": false, "percentage": 47}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'uRkgghGoYupD391C' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["qtPYokahFjkQsfCa", "Tmt1d67FXGk2s9Q0", "mPVo3twu0MesTCf9"], "dsHostConfiguration": {"instanceId": "x4rt69lna7qxNeIx", "instanceType": "Pz6MbwL6IY69z1Ua", "serversPerVm": 78}, "imageDeploymentProfile": {"commandLine": "slpJSqGAXQ0yYoNR", "imageId": "Kd3IL5TAQ6iiPlSC", "portConfigurations": [{"name": "2uE4o5Vwdo3fePqI", "protocol": "JA8IHtrkmu0hpDDW"}, {"name": "VAla2l5BYNtIuS5S", "protocol": "5XUdjsoqwGyzzWi9"}, {"name": "gwQYv7t1o7TTr1Dm", "protocol": "rhZv15T7quIOvBMc"}], "timeout": {"creation": 1, "drain": 90, "session": 25, "unresponsive": 56}}, "name": "vCkGZ5dAgqxpBFma", "onDemand": true, "regions": [{"bufferSize": 29, "maxServerCount": 73, "minServerCount": 49, "region": "MdalwSyliWMNW5Ny"}, {"bufferSize": 77, "maxServerCount": 43, "minServerCount": 41, "region": "qtlB2jJCSQT279ZZ"}, {"bufferSize": 86, "maxServerCount": 3, "minServerCount": 86, "region": "Gu0rdlgdWyOtXi3c"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 22}, "success": {"collect": false, "percentage": 94}}, "logs": {"crashed": {"collect": true, "percentage": 31}, "success": {"collect": true, "percentage": 5}}}}' 'DBU5SepjChB3V0v5' --login_with_auth "Bearer foo"
ams-fleet-delete '2Dlym6puQ23xoJ8a' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get 'eCnaLpUKp44YUDja' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 44}, "success": {"collect": false, "percentage": 84}}, "logs": {"crashed": {"collect": false, "percentage": 44}, "success": {"collect": false, "percentage": 37}}}' 'EejtGeoyIPa8ZRrv' --login_with_auth "Bearer foo"
ams-fleet-servers 'jj7il35MXbN9oCMN' --login_with_auth "Bearer foo"
ams-fleet-server-history 'qq98SjTvhZNkSQ70' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get 'D0H6BXksUC9b6i5l' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'ZC9xv32e8c5csSov' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["oqsZNBdte9NDUPVJ", "f6c2Z0QZxfgPubTD", "IHrvqAThuwjRHpKK"], "isProtected": false, "name": "oF7VSZ6pf3vneSD2", "removedTags": ["Tb3g7mSQUhAEtrmj", "qU6YE3p4lSck0ZHn", "5GI39YBHqaTHeKtW"]}' '18iGeUlc9d9sogWa' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion '24CKNS0GqVvUfHQv' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "sHXNUNe4mhgo5QB6"}' '5lSAiYnNjkfZrQvG' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'gbLdLsFzHkBMr1yr' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'OMlNFSrUEirnjX9f' --login_with_auth "Bearer foo"
ams-server-history 'DmIbeZxzfTcyiuAT' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "us9hsfpFDcSDG8aM", "sessionId": "VGLiBNrDjqoxcwgG"}' 'LXpUL4pp2ncYAHdN' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'zDmeIP6rOvDz9KOs' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["b392k6YmJFfRByjl", "BiuFM3FIoVk8T3Gp", "AnkCmBUqg2SCnqnt"], "regions": ["X9y1aZSWMiVi10sG", "6vxkfUcmqRRbceJ5", "i0EeDxOgBnhhqElI"], "sessionId": "aDml48wdNFLTm5T5"}' --login_with_auth "Bearer foo"
ams-watchdog-connect '0x9WT0GfH2rtOa4E' --login_with_auth "Bearer foo"
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
echo "1..45"

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
    '{"name": "XsXzOXQAk4mqrxzT"}' \
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
    '{"token": "tuLl4XlbGL8QOxtj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminAccountLinkTokenPost' test.out

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
    'zm8y2wNhmwoYZyI4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'EFZKBcYrCEAE7WIs' \
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
    '{"commandLineArguments": "fmx40NLRc6m8heKn", "imageId": "Whzfe2NubeoKFeIa", "name": "FQCYoDPICpnduEEQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'lULdJz4mnRBkMNxv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'vKgAT8mJrYq6hRkl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetList' test.out

#- 18 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["7A68eaqC2J9jyEW6", "GLbc0NaKDUL3sa13", "lk1dQBHO86IlBhne"], "dsHostConfiguration": {"instanceId": "tU4RwTqUXlTDBzOu", "instanceType": "YsaZA2yyd4mbqoOf", "serversPerVm": 55}, "imageDeploymentProfile": {"commandLine": "7cFdP43e5dC9XIBu", "imageId": "dfZgrbHDIDm4hMzF", "portConfigurations": [{"name": "4TxodenSrUTvfqU0", "protocol": "bfoMm5cTtFWbotQy"}, {"name": "XJRcQWsmqPNs92ep", "protocol": "xk0i8VxsZNereSvf"}, {"name": "9699mCEHThUJkETA", "protocol": "sSp7gh4TeUTkOkAY"}], "timeout": {"creation": 10, "drain": 73, "session": 47, "unresponsive": 56}}, "name": "sVC0gL97ZVJSPqJi", "onDemand": true, "regions": [{"bufferSize": 29, "maxServerCount": 45, "minServerCount": 61, "region": "1qlYB1RSKs6gQxC3"}, {"bufferSize": 67, "maxServerCount": 3, "minServerCount": 43, "region": "7S0o4zGYY7KQI1Ae"}, {"bufferSize": 64, "maxServerCount": 80, "minServerCount": 12, "region": "bqqZtfNWql4nmwAf"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 57}, "success": {"collect": false, "percentage": 62}}, "logs": {"crashed": {"collect": true, "percentage": 20}, "success": {"collect": false, "percentage": 80}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'Q1jMD3cym8xIfkOV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["HC9LxhvNXTwGBCto", "hLtl9Zuhytm5UDrT", "6QXCs5SPBbRPZTF6"], "dsHostConfiguration": {"instanceId": "oQAXVG7tnsZg5QgX", "instanceType": "jvyGJPN4eXbJE5Vs", "serversPerVm": 67}, "imageDeploymentProfile": {"commandLine": "ecnEevcAx2K2zkRe", "imageId": "nmPZnGBt4P7WnbdS", "portConfigurations": [{"name": "JtjX7ZshZyZl5x4b", "protocol": "RXBHUTrDzZSKscfO"}, {"name": "cYu3dpCROYqUiGKX", "protocol": "VFCmpo6sPwVOEDSJ"}, {"name": "sEK5QpNhlI2iS5Ep", "protocol": "GhhvXYck0upMzUYn"}], "timeout": {"creation": 3, "drain": 54, "session": 82, "unresponsive": 40}}, "name": "RxpzwLR2AK6eXUGP", "onDemand": true, "regions": [{"bufferSize": 45, "maxServerCount": 97, "minServerCount": 11, "region": "6Do5sYadCCFrHHC3"}, {"bufferSize": 61, "maxServerCount": 71, "minServerCount": 31, "region": "JzPyrVEiOG4Ucqsu"}, {"bufferSize": 67, "maxServerCount": 75, "minServerCount": 25, "region": "HhMRWLVd3DlhLuIp"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 25}, "success": {"collect": true, "percentage": 38}}, "logs": {"crashed": {"collect": false, "percentage": 25}, "success": {"collect": false, "percentage": 47}}}}' \
    'MiaI1mX2tJoARtdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'Be7udsMrok0WvGYY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'nx4V709xbnGezKsD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 68}, "success": {"collect": false, "percentage": 93}}, "logs": {"crashed": {"collect": false, "percentage": 83}, "success": {"collect": true, "percentage": 26}}}' \
    'Vg8JqU0jZpjvsugA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'OS7u8RiWyerCSa8S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'RgwsAj1ik1jglaDX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'TvKCWwNTAhd2wrS0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImageGet' test.out

#- 28 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'uPdjhdinpng5BLy8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ImageMarkForDeletion' test.out

#- 29 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["wbhMssAHjapIkY9R", "f4wP57dBZNR88YbC", "tmKy8M9zVrjfGXZn"], "isProtected": true, "name": "lt71B1SmZp2JZp50", "removedTags": ["CnPb71ORYcmQbTU5", "JX8ccLjMXJRk0eaK", "QDOJvrTefglSs6g4"]}' \
    'iY9u02aCNYIWekp1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImagePatch' test.out

#- 30 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    '8lOC3mNqF7Bl0Lcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImageUnmarkForDeletion' test.out

#- 31 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'QoSRegionsGet' test.out

#- 32 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "hVHfPEspxwhRON0b"}' \
    'c1eMbEIjowLqc3ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsUpdate' test.out

#- 33 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'InfoRegions' test.out

#- 34 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'jXJbZDKKoxLE1Y3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'FleetServerInfo' test.out

#- 35 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'ymtj3giPg4x4yiPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'FleetServerConnectionInfo' test.out

#- 36 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    '6ues1Hhhkg1yLVbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'ServerHistory' test.out

#- 37 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'InfoSupportedInstances' test.out

#- 38 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AccountGet' test.out

#- 39 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "FzHEP8cM4NTwr0KH", "sessionId": "aAsmTej52WKi6tAr"}' \
    'AURt9plCSVq8PdH6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'FleetClaimByID' test.out

#- 40 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'hJPUAc0RVwXgAgnt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'LocalWatchdogConnect' test.out

#- 41 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["LMCuaXBWQi6BqPg4", "xr0lCancUZGCHsZY", "oLfR1KtOv7Zy0b65"], "regions": ["uvuKNuy0ytZQ7M6N", "zy1adnSKOLFKx1dX", "4LuWJu3pDMUAeeZ9"], "sessionId": "7SBROPYuG6XqP6oo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByKeys' test.out

#- 42 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '7G73zdxTgOfnwIdl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'WatchdogConnect' test.out

#- 43 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UploadURLGet' test.out

#- 44 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'Func1' test.out

#- 45 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
