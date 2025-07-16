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
ams-fleet-get '3td6TC6I3lMjGSWN' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": false, "claimKeys": ["laRlxfcjHfYakUCT", "qGkE7wcWfDslpJSq", "GAXQ0yYoNRKd3IL5"], "dsHostConfiguration": {"instanceId": "TAQ6iiPlSC2uE4o5", "serversPerVm": 97}, "fallbackFleet": "1ZBm3MqHcUmLZZbS", "hibernateAfterPeriod": "qb8RwNmn9HrNQy4u", "imageDeploymentProfile": {"commandLine": "ZAAiE0mit9RGCCHY", "imageId": "zUOcEdscKHPEqgA8", "portConfigurations": [{"name": "yu7Vk6Jt4Ymos9Jc", "protocol": "dos4fYcTVU6RBt0z"}, {"name": "YoMcHyCUEXlAvxJM", "protocol": "dalwSyliWMNW5NyL"}, {"name": "u0M3VHh2EI8JlDbP", "protocol": "WbQ6Q9lNmqRBaAkL"}], "timeout": {"claim": 28, "creation": 44, "drain": 5, "session": 48, "unresponsive": 14}}, "name": "kT1X68cmDc3fxU8M", "onDemand": true, "regions": [{"bufferSize": 57, "dynamicBuffer": true, "maxServerCount": 97, "minServerCount": 88, "region": "0v52Dlym6puQ23xo"}, {"bufferSize": 73, "dynamicBuffer": false, "maxServerCount": 33, "minServerCount": 9, "region": "mF51TkhjYnaq6foW"}, {"bufferSize": 44, "dynamicBuffer": false, "maxServerCount": 84, "minServerCount": 96, "region": "bMrXsDr6kILsSSyD"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 37}}, "logs": {"crashed": {"collect": false, "percentage": 44}, "success": {"collect": true, "percentage": 19}, "unclaimed": {"collect": false, "percentage": 20}}}}' 'moPYgc2L4jk4Lo0L' --login_with_auth "Bearer foo"
ams-fleet-delete 'SP0pf4IxjUkl535X' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get '3ateEKDpADz1x3po' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 47}}, "logs": {"crashed": {"collect": true, "percentage": 14}, "success": {"collect": false, "percentage": 9}, "unclaimed": {"collect": false, "percentage": 30}}}' 'c5csSovoqsZNBdte' --login_with_auth "Bearer foo"
ams-fleet-servers '9NDUPVJf6c2Z0QZx' --login_with_auth "Bearer foo"
ams-fleet-server-history 'fgPubTDIHrvqAThu' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get 'wjRHpKKTlmVr9Xuo' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'JbRFQSKVPHbn4Xxt' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["u7LQRENjEEztx1Ws", "YSiZqan0nSBJroav", "91GXlvPG6bFYReVH"], "isProtected": false, "name": "d9sogWa24CKNS0Gq", "removedTags": ["VvUfHQvsHXNUNe4m", "hgo5QB65lSAiYnNj", "kfZrQvGgbLdLsFzH"]}' 'kBMr1yrOMlNFSrUE' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'irnjX9fDmIbeZxzf' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "TcyiuATus9hsfpFD"}' 'cSDG8aMVGLiBNrDj' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'qoxcwgGLXpUL4pp2' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'ncYAHdNzDmeIP6rO' --login_with_auth "Bearer foo"
ams-server-history 'vDz9KOsb392k6YmJ' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "FfRByjlBiuFM3FIo", "sessionId": "Vk8T3GpAnkCmBUqg"}' '2SCnqntX9y1aZSWM' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'iVi10sG6vxkfUcmq' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["RRbceJ5i0EeDxOgB", "nhhqElIaDml48wdN", "FLTm5T50x9WT0GfH"], "regions": ["2rtOa4EXsXzOXQAk", "4mqrxzTtuLl4XlbG", "L8QOxtjzm8y2wNhm"], "sessionId": "woYZyI4EFZKBcYrC"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'EAE7WIsfmx40NLRc' --login_with_auth "Bearer foo"
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
    '{"name": "6m8heKnWhzfe2Nub"}' \
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
    '{"token": "eoKFeIaFQCYoDPIC"}' \
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
    'pnduEEQlULdJz4mn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'RBkMNxvvKgAT8mJr' \
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
    '{"commandLineArguments": "Yq6hRkloqxM3gpwx", "expiresAt": "1972-10-25T00:00:00Z", "imageId": "fMy9XzjjI5YbsKoA", "name": "DkzJEN2VHzih3bit"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    '0VWn3CO39PXDNxtX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'geO3FgkXhjDzaQY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
$PYTHON -m $MODULE 'ams-development-server-configuration-patch' \
    '{"commandLineArguments": "snn2ZkP7cFdP43e5", "expiresAt": "1972-02-09T00:00:00Z"}' \
    'C9XIBudfZgrbHDID' \
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
    '{"active": false, "claimKeys": ["P2aMlu7WtjCtoYet", "OO847g8OudOfjnCu", "HZ3c46IjGa23YvYm"], "dsHostConfiguration": {"instanceId": "mDg7VYPXIuvUYTZB", "serversPerVm": 89}, "fallbackFleet": "reSvf9699mCEHThU", "hibernateAfterPeriod": "JkETAsSp7gh4TeUT", "imageDeploymentProfile": {"commandLine": "kOkAYfJB8AT9t4Tv", "imageId": "207Y2QD3oD5fLCr3", "portConfigurations": [{"name": "OOlXVv8ZGF7uYnGz", "protocol": "pipNDigNJma1Mbqq"}, {"name": "ZtfNWql4nmwAft4g", "protocol": "qkNNlWkD9eOziYRF"}, {"name": "On0jJLHC9LxhvNXT", "protocol": "wGBCtohLtl9Zuhyt"}], "timeout": {"claim": 25, "creation": 39, "drain": 84, "session": 96, "unresponsive": 42}}, "name": "DrT6QXCs5SPBbRPZ", "onDemand": false, "regions": [{"bufferSize": 35, "dynamicBuffer": true, "maxServerCount": 54, "minServerCount": 12, "region": "XVG7tnsZg5QgXjvy"}, {"bufferSize": 67, "dynamicBuffer": false, "maxServerCount": 73, "minServerCount": 85, "region": "Ta1PsKc50Kv6ecnE"}, {"bufferSize": 9, "dynamicBuffer": true, "maxServerCount": 30, "minServerCount": 5, "region": "IXimBJehyxlNsjUg"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 39}}, "logs": {"crashed": {"collect": true, "percentage": 22}, "success": {"collect": true, "percentage": 27}, "unclaimed": {"collect": false, "percentage": 86}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'dSJtjX7ZshZyZl5x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetGet' test.out

#- 21 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["bRXBHUTrDzZSKscf", "OcYu3dpCROYqUiGK", "XVFCmpo6sPwVOEDS"], "dsHostConfiguration": {"instanceId": "JsEK5QpNhlI2iS5E", "serversPerVm": 31}, "fallbackFleet": "IaTIKUkmkk9QM0NB", "hibernateAfterPeriod": "MA9ORxpzwLR2AK6e", "imageDeploymentProfile": {"commandLine": "XUGPJsw1fiP80G9P", "imageId": "clxcft2ulIJzPyrV", "portConfigurations": [{"name": "EiOG4UcqsuGKHhMR", "protocol": "WLVd3DlhLuIpomM8"}, {"name": "sm1MiaI1mX2tJoAR", "protocol": "tdbBe7udsMrok0Wv"}, {"name": "GYYnx4V709xbnGez", "protocol": "KsDwG2omOR2nvYI9"}], "timeout": {"claim": 94, "creation": 96, "drain": 97, "session": 34, "unresponsive": 18}}, "name": "JdvzcWbfUpaXp5JM", "onDemand": false, "regions": [{"bufferSize": 50, "dynamicBuffer": false, "maxServerCount": 77, "minServerCount": 35, "region": "L4bTxBmZjdrrIxsB"}, {"bufferSize": 12, "dynamicBuffer": false, "maxServerCount": 89, "minServerCount": 1, "region": "sB1fPqqRRulpqpym"}, {"bufferSize": 60, "dynamicBuffer": false, "maxServerCount": 88, "minServerCount": 42, "region": "htrHWwRVnwVBOqOH"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 2}}, "logs": {"crashed": {"collect": false, "percentage": 31}, "success": {"collect": true, "percentage": 67}, "unclaimed": {"collect": true, "percentage": 6}}}}' \
    'AHjapIkY9Rf4wP57' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetUpdate' test.out

#- 22 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'dBZNR88YbCtmKy8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetDelete' test.out

#- 23 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    '9zVrjfGXZnqAQUoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetArtifactSamplingRulesGet' test.out

#- 24 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": false, "percentage": 20}}, "logs": {"crashed": {"collect": false, "percentage": 31}, "success": {"collect": false, "percentage": 32}, "unclaimed": {"collect": false, "percentage": 74}}}' \
    '0CnPb71ORYcmQbTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesSet' test.out

#- 25 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    '5JX8ccLjMXJRk0ea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetServers' test.out

#- 26 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'KQDOJvrTefglSs6g' \
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
    '4iY9u02aCNYIWekp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'ImageGet' test.out

#- 30 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    '18lOC3mNqF7Bl0Lc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImageMarkForDeletion' test.out

#- 31 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["ghVHfPEspxwhRON0", "bc1eMbEIjowLqc3e", "cjXJbZDKKoxLE1Y3"], "isProtected": true, "name": "pdXpai0rYaT5hOPj", "removedTags": ["af3H0tYighU0VUfc", "YHJbBfAKSiPW3Vgs", "ZXiR1DJ7HVWqMkNS"]}' \
    'awQUWDFJvJBWic7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImagePatch' test.out

#- 32 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'kBeIXuqDuAXI66bQ' \
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
    '{"status": "71w0deoV9Lx5RDA1"}' \
    'l2XcrciYNEzvSZIP' \
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
    'khSgORcz5S5BvmgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'FleetServerInfo' test.out

#- 37 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'Lxh4ijFnE3Tam69q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'FleetServerConnectionInfo' test.out

#- 38 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'SZ7PC6f6QkmZXElW' \
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
    '{"region": "9YfRSse6AAz3S4cz", "sessionId": "z0QKFlAVmVLu4AOe"}' \
    'c0z8eBeeoip68J1n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'FleetClaimByID' test.out

#- 42 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'sv4W2OJhtafxMSJl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'LocalWatchdogConnect' test.out

#- 43 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["Heb34sZKHcl5LLLO", "exL4fZvWtND2tcBF", "pX8lNtFEJ7tnkY6M"], "regions": ["ca5afj12K2IzrBvv", "Wm4udE0OXudXgNne", "8kJATwlc6esUp6Sw"], "sessionId": "1I98jeZQ7hfxnhLd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'FleetClaimByKeys' test.out

#- 44 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    '3Knaknoed9DHhLOq' \
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
