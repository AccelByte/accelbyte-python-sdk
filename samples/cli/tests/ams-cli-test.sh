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
ams-development-server-configuration-create '{"commandLineArguments": "BZLCXLx8bbgorQeF", "expiresAt": "1971-12-17T00:00:00Z", "imageId": "hkspInrAip6lyzSx", "name": "wElFHHdgs21Jub74"}' --login_with_auth "Bearer foo"
ams-development-server-configuration-get 'CUkNmKJfh5pUkHOD' --login_with_auth "Bearer foo"
ams-development-server-configuration-delete 'poMF78NY4YkHs1cn' --login_with_auth "Bearer foo"
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": true, "claimKeys": ["IC32ogW7olvbTgrh", "RTcPiSuL0Sly6XM4", "OI18mAQLnzjMf8GZ"], "dsHostConfiguration": {"instanceId": "2WBZqxYG3aREAu2D", "serversPerVm": 15}, "imageDeploymentProfile": {"commandLine": "QVKNCWP75TB0i7pK", "imageId": "xR8dl0zRVW4EZG9m", "portConfigurations": [{"name": "0XcgGVbMqSszE8GH", "protocol": "avj7AorKsxwkosAV"}, {"name": "erXpc1C8XfwHuKeb", "protocol": "9l3rGN9A3sNm84hd"}, {"name": "dSpHt0P7MIIR7Cky", "protocol": "F6C7duuyZ0GhDogq"}], "timeout": {"creation": 36, "drain": 77, "session": 16, "unresponsive": 51}}, "name": "BRd8lDR6qVNPRZYd", "onDemand": false, "regions": [{"bufferSize": 70, "dynamicBuffer": false, "maxServerCount": 54, "minServerCount": 45, "region": "jGGJddVCvu9vx5KQ"}, {"bufferSize": 76, "dynamicBuffer": false, "maxServerCount": 91, "minServerCount": 70, "region": "0lyuI9a2I9u6Vpbs"}, {"bufferSize": 47, "dynamicBuffer": false, "maxServerCount": 85, "minServerCount": 46, "region": "xUfofvnnSuB0y5WU"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 98}, "success": {"collect": true, "percentage": 41}}, "logs": {"crashed": {"collect": false, "percentage": 84}, "success": {"collect": false, "percentage": 37}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'LlkvR8sKgnuRkggh' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": false, "claimKeys": ["GCiljvjKoyD6SCwG", "rncqmLtjQHAf8Tgo", "Nm03VLisV6zwPuo3"], "dsHostConfiguration": {"instanceId": "td6TC6I3lMjGSWN2", "serversPerVm": 23}, "imageDeploymentProfile": {"commandLine": "na7qxNeIxPz6MbwL", "imageId": "6IY69z1UaLqYSYWy", "portConfigurations": [{"name": "tLPziZMdjxcBZufQ", "protocol": "xGiHPllG4cYEzfTD"}, {"name": "1ZBm3MqHcUmLZZbS", "protocol": "qb8RwNmn9HrNQy4u"}, {"name": "ZAAiE0mit9RGCCHY", "protocol": "zUOcEdscKHPEqgA8"}], "timeout": {"creation": 50, "drain": 42, "session": 30, "unresponsive": 98}}, "name": "TTr1DmrhZv15T7qu", "onDemand": false, "regions": [{"bufferSize": 83, "dynamicBuffer": true, "maxServerCount": 5, "minServerCount": 57, "region": "TVU6RBt0zYoMcHyC"}, {"bufferSize": 96, "dynamicBuffer": false, "maxServerCount": 62, "minServerCount": 55, "region": "XlAvxJMdalwSyliW"}, {"bufferSize": 79, "dynamicBuffer": false, "maxServerCount": 81, "minServerCount": 84, "region": "W5NyLu0M3VHh2EI8"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 60}, "success": {"collect": false, "percentage": 86}}, "logs": {"crashed": {"collect": false, "percentage": 86}, "success": {"collect": true, "percentage": 88}}}}' '0rdlgdWyOtXi3cho' --login_with_auth "Bearer foo"
ams-fleet-delete 'QrpOsDBU5SepjChB' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get '3V0v52Dlym6puQ23' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 66}, "success": {"collect": false, "percentage": 45}}, "logs": {"crashed": {"collect": false, "percentage": 33}, "success": {"collect": false, "percentage": 26}}}' 'CnaLpUKp44YUDjas' --login_with_auth "Bearer foo"
ams-fleet-servers 'WIPUvmEejtGeoyIP' --login_with_auth "Bearer foo"
ams-fleet-server-history 'a8ZRrvjj7il35MXb' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get 'N9oCMNqq98SjTvhZ' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'NkSQ70D0H6BXksUC' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["9b6i5lZC9xv32e8c", "5csSovoqsZNBdte9", "NDUPVJf6c2Z0QZxf"], "isProtected": false, "name": "2WDgCcxvONZm3EeE", "removedTags": ["RmDnyeFoF7VSZ6pf", "3vneSD2Tb3g7mSQU", "hAEtrmjqU6YE3p4l"]}' 'Sck0ZHn5GI39YBHq' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'aTHeKtW18iGeUlc9' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "d9sogWa24CKNS0Gq"}' 'VvUfHQvsHXNUNe4m' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'hgo5QB65lSAiYnNj' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'kfZrQvGgbLdLsFzH' --login_with_auth "Bearer foo"
ams-server-history 'kBMr1yrOMlNFSrUE' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "irnjX9fDmIbeZxzf", "sessionId": "TcyiuATus9hsfpFD"}' 'cSDG8aMVGLiBNrDj' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'qoxcwgGLXpUL4pp2' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["ncYAHdNzDmeIP6rO", "vDz9KOsb392k6YmJ", "FfRByjlBiuFM3FIo"], "regions": ["Vk8T3GpAnkCmBUqg", "2SCnqntX9y1aZSWM", "iVi10sG6vxkfUcmq"], "sessionId": "RRbceJ5i0EeDxOgB"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'nhhqElIaDml48wdN' --login_with_auth "Bearer foo"
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
echo "1..46"

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
    '{"name": "FLTm5T50x9WT0GfH"}' \
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
    '{"token": "2rtOa4EXsXzOXQAk"}' \
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
    '4mqrxzTtuLl4XlbG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'L8QOxtjzm8y2wNhm' \
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
    '{"commandLineArguments": "woYZyI4EFZKBcYrC", "expiresAt": "1986-07-12T00:00:00Z", "imageId": "AE7WIsfmx40NLRc6", "name": "m8heKnWhzfe2Nube"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'oKFeIaFQCYoDPICp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'nduEEQlULdJz4mnR' \
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
    '{"active": true, "claimKeys": ["RCAcf80zfFyabWAg", "IUXiI07A68eaqC2J", "9jyEW6GLbc0NaKDU"], "dsHostConfiguration": {"instanceId": "L3sa13lk1dQBHO86", "serversPerVm": 71}, "imageDeploymentProfile": {"commandLine": "VWn3CO39PXDNxtXg", "imageId": "eO3FgkXhjDzaQY3s", "portConfigurations": [{"name": "nn2ZkP7cFdP43e5d", "protocol": "C9XIBudfZgrbHDID"}, {"name": "m4hMzF4TxodenSrU", "protocol": "TvfqU0bfoMm5cTtF"}, {"name": "WbotQyXJRcQWsmqP", "protocol": "Ns92epxk0i8VxsZN"}], "timeout": {"creation": 9, "drain": 89, "session": 35, "unresponsive": 42}}, "name": "eSvf9699mCEHThUJ", "onDemand": false, "regions": [{"bufferSize": 79, "dynamicBuffer": true, "maxServerCount": 80, "minServerCount": 93, "region": "FIurjh2imdb4rbkX"}, {"bufferSize": 20, "dynamicBuffer": false, "maxServerCount": 73, "minServerCount": 47, "region": "B8AT9t4Tv207Y2QD"}, {"bufferSize": 45, "dynamicBuffer": false, "maxServerCount": 45, "minServerCount": 61, "region": "1qlYB1RSKs6gQxC3"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 43}, "success": {"collect": false, "percentage": 66}}, "logs": {"crashed": {"collect": false, "percentage": 52}, "success": {"collect": false, "percentage": 51}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetCreate' test.out

#- 19 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'ipNDigNJma1MbqqZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetGet' test.out

#- 20 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["kvo1aolB4lkKB4EY", "OkQ1jMD3cym8xIfk", "OVW2grREOLx0KOww"], "dsHostConfiguration": {"instanceId": "3HICQLfl7MUBG7qt", "serversPerVm": 84}, "imageDeploymentProfile": {"commandLine": "UDrT6QXCs5SPBbRP", "imageId": "ZTF6oQAXVG7tnsZg", "portConfigurations": [{"name": "5QgXjvyGJPN4eXbJ", "protocol": "E5Vs2GcyomQoIXim"}, {"name": "BJehyxlNsjUgxBkF", "protocol": "6wFPoJeQediogEhh"}, {"name": "M2rIizGdKvOPdq5x", "protocol": "rgxSmy1DN9LFkYW5"}], "timeout": {"creation": 61, "drain": 95, "session": 88, "unresponsive": 18}}, "name": "yj4bj5Ro2ogaKt2u", "onDemand": false, "regions": [{"bufferSize": 61, "dynamicBuffer": false, "maxServerCount": 38, "minServerCount": 62, "region": "Zdb65UXmy0Zp6iIa"}, {"bufferSize": 94, "dynamicBuffer": false, "maxServerCount": 71, "minServerCount": 43, "region": "KUkmkk9QM0NBMA9O"}, {"bufferSize": 88, "dynamicBuffer": true, "maxServerCount": 21, "minServerCount": 32, "region": "EORV3bu1bNCtX7W4"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 16}, "success": {"collect": true, "percentage": 85}}, "logs": {"crashed": {"collect": false, "percentage": 37}, "success": {"collect": false, "percentage": 86}}}}' \
    'dCCFrHHC3DpZxkrQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetUpdate' test.out

#- 21 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'DXuNFviMarv8mnfH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetDelete' test.out

#- 22 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'K8CCmE2lPnsbD3SG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetArtifactSamplingRulesGet' test.out

#- 23 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 38}, "success": {"collect": false, "percentage": 25}}, "logs": {"crashed": {"collect": false, "percentage": 47}, "success": {"collect": true, "percentage": 16}}}' \
    'UccE536ugBp3HBve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesSet' test.out

#- 24 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'pnDCjgyJlXe36mgW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetServers' test.out

#- 25 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'jLfFmteue9nzJ6fH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetServerHistory' test.out

#- 26 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ImageList' test.out

#- 27 ImagesStorage
$PYTHON -m $MODULE 'ams-images-storage' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ImagesStorage' test.out

#- 28 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    '24T805tVg8JqU0jZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ImageGet' test.out

#- 29 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'pjvsugAOS7u8RiWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImageMarkForDeletion' test.out

#- 30 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["erCSa8SRgwsAj1ik", "1jglaDXTvKCWwNTA", "hd2wrS0uPdjhdinp"], "isProtected": false, "name": "wVBOqOHi8pWGd1ju", "removedTags": ["YhiqjRJOqB5F93zF", "QbJndUDpdONneAcz", "bBdHb2slt71B1SmZ"]}' \
    'p2JZp50CnPb71ORY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImagePatch' test.out

#- 31 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'cmQbTU5JX8ccLjMX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImageUnmarkForDeletion' test.out

#- 32 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'QoSRegionsGet' test.out

#- 33 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "JRk0eaKQDOJvrTef"}' \
    'glSs6g4iY9u02aCN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'QoSRegionsUpdate' test.out

#- 34 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'InfoRegions' test.out

#- 35 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'YIWekp18lOC3mNqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'FleetServerInfo' test.out

#- 36 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    '7Bl0LcghVHfPEspx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetServerConnectionInfo' test.out

#- 37 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'whRON0bc1eMbEIjo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'ServerHistory' test.out

#- 38 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'InfoSupportedInstances' test.out

#- 39 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'AccountGet' test.out

#- 40 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "wLqc3ecjXJbZDKKo", "sessionId": "xLE1Y3Dymtj3giPg"}' \
    '4x4yiPX6ues1Hhhk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'FleetClaimByID' test.out

#- 41 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'g1yLVbLFzHEP8cM4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'LocalWatchdogConnect' test.out

#- 42 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["NTwr0KHaAsmTej52", "WKi6tArAURt9plCS", "Vq8PdH6hJPUAc0RV"], "regions": ["wXgAgntLMCuaXBWQ", "i6BqPg4xr0lCancU", "ZGCHsZYoLfR1KtOv"], "sessionId": "7Zy0b65uvuKNuy0y"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByKeys' test.out

#- 43 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'tZQ7M6Nzy1adnSKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'WatchdogConnect' test.out

#- 44 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UploadURLGet' test.out

#- 45 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'Func1' test.out

#- 46 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
