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
ams-fleet-create '{"active": true, "claimKeys": ["I18mAQLnzjMf8GZ2", "WBZqxYG3aREAu2D6", "QVKNCWP75TB0i7pK"], "dsHostConfiguration": {"instanceId": "xR8dl0zRVW4EZG9m", "serversPerVm": 96}, "fallbackFleet": "cgGVbMqSszE8GHav", "hibernateAfterPeriod": "j7AorKsxwkosAVer", "imageDeploymentProfile": {"commandLine": "Xpc1C8XfwHuKeb9l", "imageId": "3rGN9A3sNm84hddS", "portConfigurations": [{"name": "pHt0P7MIIR7CkyF6", "protocol": "C7duuyZ0GhDogqrh"}, {"name": "BRd8lDR6qVNPRZYd", "protocol": "FLIAjGGJddVCvu9v"}, {"name": "x5KQ7KYnIuMBvaO3", "protocol": "5llzQRaT5kPxUfof"}], "timeout": {"claim": 45, "creation": 28, "drain": 28, "session": 96, "unresponsive": 92}}, "name": "pOXGSLmCVuHOPlLl", "onDemand": false, "regions": [{"bufferSize": 10, "dynamicBuffer": true, "maxServerCount": 1, "minServerCount": 89, "region": "bntBSxTeIv53HGCi"}, {"bufferSize": 23, "dynamicBuffer": true, "maxServerCount": 20, "minServerCount": 43, "region": "91C2qtPYokahFjkQ"}, {"bufferSize": 38, "dynamicBuffer": true, "maxServerCount": 12, "minServerCount": 19, "region": "CaTmt1d67FXGk2s9"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 53}}, "logs": {"crashed": {"collect": true, "percentage": 97}, "success": {"collect": false, "percentage": 42}, "unclaimed": {"collect": false, "percentage": 40}}}}' --login_with_auth "Bearer foo"
ams-bulk-fleet-delete '{"fleetIds": ["3td6TC6I3lMjGSWN", "2laRlxfcjHfYakUC", "TqGkE7wcWfDslpJS"]}' --login_with_auth "Bearer foo"
ams-fleet-get 'qGAXQ0yYoNRKd3IL' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["AQ6iiPlSC2uE4o5V", "wdo3fePqIJA8IHtr", "kmu0hpDDWVAla2l5"], "dsHostConfiguration": {"instanceId": "BYNtIuS5S5XUdjso", "serversPerVm": 34}, "fallbackFleet": "UOcEdscKHPEqgA8y", "hibernateAfterPeriod": "u7Vk6Jt4Ymos9Jcd", "imageDeploymentProfile": {"commandLine": "os4fYcTVU6RBt0zY", "imageId": "oMcHyCUEXlAvxJMd", "portConfigurations": [{"name": "alwSyliWMNW5NyLu", "protocol": "0M3VHh2EI8JlDbPW"}, {"name": "bQ6Q9lNmqRBaAkLn", "protocol": "vxkT1X68cmDc3fxU"}, {"name": "8MyKrQpM4hkkK6KK", "protocol": "XNB3Gv0IqmF51Tkh"}], "timeout": {"claim": 19, "creation": 32, "drain": 27, "session": 1, "unresponsive": 34}}, "name": "UDjasWIPUvmEejtG", "onDemand": false, "regions": [{"bufferSize": 22, "dynamicBuffer": false, "maxServerCount": 71, "minServerCount": 51, "region": "LsSSyDdmykmoPYgc"}, {"bufferSize": 76, "dynamicBuffer": false, "maxServerCount": 80, "minServerCount": 18, "region": "9oCMNqq98SjTvhZN"}, {"bufferSize": 21, "dynamicBuffer": false, "maxServerCount": 92, "minServerCount": 23, "region": "Q70D0H6BXksUC9b6"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 49}}, "logs": {"crashed": {"collect": false, "percentage": 32}, "success": {"collect": false, "percentage": 58}, "unclaimed": {"collect": true, "percentage": 47}}}}' 'Qgb3boLQQ1MzH7Qm' --login_with_auth "Bearer foo"
ams-fleet-delete '8bwbmXgdAPh1EThG' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get '96gAFKK2WDgCcxvO' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 54}}, "logs": {"crashed": {"collect": false, "percentage": 94}, "success": {"collect": false, "percentage": 63}, "unclaimed": {"collect": true, "percentage": 10}}}' 'wjRHpKKTlmVr9Xuo' --login_with_auth "Bearer foo"
ams-fleet-servers 'JbRFQSKVPHbn4Xxt' --login_with_auth "Bearer foo"
ams-fleet-server-history 'u7LQRENjEEztx1Ws' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get 'YSiZqan0nSBJroav' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion '91GXlvPG6bFYReVH' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["QipcCx9Zw5D2L7vI", "YhGGSyEW4ZJJ42d3", "PBddN8S48l9lyNAp"], "isProtected": false, "name": "jkfZrQvGgbLdLsFz", "removedTags": ["HkBMr1yrOMlNFSrU", "EirnjX9fDmIbeZxz", "fTcyiuATus9hsfpF"]}' 'DcSDG8aMVGLiBNrD' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'jqoxcwgGLXpUL4pp' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "2ncYAHdNzDmeIP6r"}' 'OvDz9KOsb392k6Ym' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'JFfRByjlBiuFM3FI' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'oVk8T3GpAnkCmBUq' --login_with_auth "Bearer foo"
ams-server-history 'g2SCnqntX9y1aZSW' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "MiVi10sG6vxkfUcm", "sessionId": "qRRbceJ5i0EeDxOg"}' 'BnhhqElIaDml48wd' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'NFLTm5T50x9WT0Gf' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["H2rtOa4EXsXzOXQA", "k4mqrxzTtuLl4Xlb", "GL8QOxtjzm8y2wNh"], "regions": ["mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR", "c6m8heKnWhzfe2Nu"], "sessionId": "beoKFeIaFQCYoDPI"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'CpnduEEQlULdJz4m' --login_with_auth "Bearer foo"
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
echo "1..48"

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
    '{"name": "nRBkMNxvvKgAT8mJ"}' \
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
    '{"token": "rYq6hRkloqxM3gpw"}' \
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
    'xcfMy9XzjjI5YbsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'oADkzJEN2VHzih3b' \
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
    '{"commandLineArguments": "it0VWn3CO39PXDNx", "expiresAt": "1981-04-05T00:00:00Z", "imageId": "geO3FgkXhjDzaQY3", "name": "snn2ZkP7cFdP43e5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'dC9XIBudfZgrbHDI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'Dm4hMzF4TxodenSr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
$PYTHON -m $MODULE 'ams-development-server-configuration-patch' \
    '{"commandLineArguments": "UTvfqU0bfoMm5cTt", "expiresAt": "1987-06-19T00:00:00Z"}' \
    'WbotQyXJRcQWsmqP' \
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
    '{"active": false, "claimKeys": ["s92epxk0i8VxsZNe", "reSvf9699mCEHThU", "JkETAsSp7gh4TeUT"], "dsHostConfiguration": {"instanceId": "kOkAYfJB8AT9t4Tv", "serversPerVm": 97}, "fallbackFleet": "07Y2QD3oD5fLCr3O", "hibernateAfterPeriod": "OlXVv8ZGF7uYnGzp", "imageDeploymentProfile": {"commandLine": "ipNDigNJma1MbqqZ", "imageId": "tfNWql4nmwAft4gq", "portConfigurations": [{"name": "kNNlWkD9eOziYRFO", "protocol": "n0jJLHC9LxhvNXTw"}, {"name": "GBCtohLtl9Zuhytm", "protocol": "5UDrT6QXCs5SPBbR"}, {"name": "PZTF6oQAXVG7tnsZ", "protocol": "g5QgXjvyGJPN4eXb"}], "timeout": {"claim": 74, "creation": 4, "drain": 63, "session": 97, "unresponsive": 75}}, "name": "s2GcyomQoIXimBJe", "onDemand": false, "regions": [{"bufferSize": 89, "dynamicBuffer": true, "maxServerCount": 8, "minServerCount": 48, "region": "nmPZnGBt4P7WnbdS"}, {"bufferSize": 72, "dynamicBuffer": false, "maxServerCount": 40, "minServerCount": 88, "region": "jX7ZshZyZl5x4bRX"}, {"bufferSize": 56, "dynamicBuffer": true, "maxServerCount": 96, "minServerCount": 83, "region": "TrDzZSKscfOcYu3d"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 65}}, "logs": {"crashed": {"collect": true, "percentage": 22}, "success": {"collect": true, "percentage": 61}, "unclaimed": {"collect": false, "percentage": 51}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
$PYTHON -m $MODULE 'ams-bulk-fleet-delete' \
    '{"fleetIds": ["GKXVFCmpo6sPwVOE", "DSJsEK5QpNhlI2iS", "5EpGhhvXYck0upMz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'UYnb76tFkEORV3bu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["eXUGPJsw1fiP80G9", "Pclxcft2ulIJzPyr", "VEiOG4UcqsuGKHhM"], "dsHostConfiguration": {"instanceId": "RWLVd3DlhLuIpomM", "serversPerVm": 63}, "fallbackFleet": "sm1MiaI1mX2tJoAR", "hibernateAfterPeriod": "tdbBe7udsMrok0Wv", "imageDeploymentProfile": {"commandLine": "GYYnx4V709xbnGez", "imageId": "KsDwG2omOR2nvYI9", "portConfigurations": [{"name": "TVqJdvzcWbfUpaXp", "protocol": "5JMl5LL4bTxBmZjd"}, {"name": "rrIxsB0NRsB1fPqq", "protocol": "RRulpqpymDkQhtrH"}, {"name": "WwRVnwVBOqOHi8pW", "protocol": "Gd1juYhiqjRJOqB5"}], "timeout": {"claim": 64, "creation": 6, "drain": 57, "session": 52, "unresponsive": 65}}, "name": "NR88YbCtmKy8M9zV", "onDemand": true, "regions": [{"bufferSize": 2, "dynamicBuffer": false, "maxServerCount": 57, "minServerCount": 11, "region": "dHb2slt71B1SmZp2"}, {"bufferSize": 74, "dynamicBuffer": false, "maxServerCount": 32, "minServerCount": 16, "region": "50CnPb71ORYcmQbT"}, {"bufferSize": 95, "dynamicBuffer": true, "maxServerCount": 6, "minServerCount": 4, "region": "skdQV0TqI8EFnmDb"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 44}}, "logs": {"crashed": {"collect": true, "percentage": 48}, "success": {"collect": false, "percentage": 9}, "unclaimed": {"collect": false, "percentage": 12}}}}' \
    'KlONk2Q5Y4Jvaizw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'iilatuUjjt9lIMGq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'l5ElEa9EIIlGcHB3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 16}}, "logs": {"crashed": {"collect": false, "percentage": 89}, "success": {"collect": false, "percentage": 4}, "unclaimed": {"collect": false, "percentage": 61}}}' \
    'c1eMbEIjowLqc3ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'jXJbZDKKoxLE1Y3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'ymtj3giPg4x4yiPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'FleetServerHistory' test.out

#- 28 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ImageList' test.out

#- 29 ImagesStorage
$PYTHON -m $MODULE 'ams-images-storage' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImagesStorage' test.out

#- 30 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    '6ues1Hhhkg1yLVbL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'FzHEP8cM4NTwr0KH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["aAsmTej52WKi6tAr", "AURt9plCSVq8PdH6", "hJPUAc0RVwXgAgnt"], "isProtected": true, "name": "CuaXBWQi6BqPg4xr", "removedTags": ["0lCancUZGCHsZYoL", "fR1KtOv7Zy0b65uv", "uKNuy0ytZQ7M6Nzy"]}' \
    '1adnSKOLFKx1dX4L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'uWJu3pDMUAeeZ97S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ImageUnmarkForDeletion' test.out

#- 34 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'QoSRegionsGet' test.out

#- 35 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "BROPYuG6XqP6oo7G"}' \
    '73zdxTgOfnwIdlNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'QoSRegionsUpdate' test.out

#- 36 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'InfoRegions' test.out

#- 37 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    '29fDLh741IslKHzG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'lLKWUtDQs61OQAox' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'yyQpRWCiiPDGQhNP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'ServerHistory' test.out

#- 40 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'InfoSupportedInstances' test.out

#- 41 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'AccountGet' test.out

#- 42 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "EwiJCf2XJVrlzqQl", "sessionId": "s1ozhLVA3kE8jKvg"}' \
    'atOEBM70TdlNBJYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'mpu1VCarzBsV6xnZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["5Jrzzjrcaug6CWVG", "8SWP3glU6muswVJn", "NnN7kAa7j0riFc5H"], "regions": ["THQIoVsGo7dwV9DB", "qFKHQkETJyTlUrwD", "TnoujQD4IEiH9Z5q"], "sessionId": "Xn3aoRtlqOECohVi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'HA5CzgFSy8X1A3Pr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'Func1' test.out

#- 48 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
