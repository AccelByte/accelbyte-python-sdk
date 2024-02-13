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
ams-fleet-list --login_with_auth "Bearer foo"
ams-fleet-create '{"active": true, "claimKeys": ["I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS", "xwElFHHdgs21Jub7"], "dsHostConfiguration": {"instanceId": "4CUkNmKJfh5pUkHO", "instanceType": "DpoMF78NY4YkHs1c", "serversPerVm": 27}, "imageDeploymentProfile": {"commandLine": "EIC32ogW7olvbTgr", "imageId": "hRTcPiSuL0Sly6XM", "portConfigurations": [{"name": "4OI18mAQLnzjMf8G", "protocol": "Z2WBZqxYG3aREAu2"}, {"name": "D6QVKNCWP75TB0i7", "protocol": "pKxR8dl0zRVW4EZG"}, {"name": "9m0XcgGVbMqSszE8", "protocol": "GHavj7AorKsxwkos"}], "timeout": {"creation": 54, "drain": 97, "session": 80, "unresponsive": 10}}, "name": "ecdKi5r6QEa1ysLE", "regions": [{"bufferSize": 53, "maxServerCount": 23, "minServerCount": 39, "region": "3rGN9A3sNm84hddS"}, {"bufferSize": 31, "maxServerCount": 55, "minServerCount": 69, "region": "cBdW19m4eu6d5tA5"}, {"bufferSize": 20, "maxServerCount": 7, "minServerCount": 96, "region": "uuyZ0GhDogqrhBRd"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 59}, "success": {"collect": true, "percentage": 33}}, "logs": {"crashed": {"collect": false, "percentage": 82}, "success": {"collect": false, "percentage": 7}}}}' --login_with_auth "Bearer foo"
ams-fleet-get 'dFLIAjGGJddVCvu9' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["0SevkLGMS0lyuI9a", "2I9u6Vpbsx5w8hqU", "I06UpOXGSLmCVuHO"], "dsHostConfiguration": {"instanceId": "PlLlkvR8sKgnuRkg", "instanceType": "ghGoYupD391C2qtP", "serversPerVm": 59}, "imageDeploymentProfile": {"commandLine": "okahFjkQsfCaTmt1", "imageId": "d67FXGk2s9Q0mPVo", "portConfigurations": [{"name": "3twu0MesTCf9x4rt", "protocol": "69lna7qxNeIxPz6M"}, {"name": "bwL6IY69z1UaLqYS", "protocol": "YWytLPziZMdjxcBZ"}, {"name": "ufQxGiHPllG4cYEz", "protocol": "fTD1ZBm3MqHcUmLZ"}], "timeout": {"creation": 69, "drain": 2, "session": 40, "unresponsive": 91}}, "name": "rkmu0hpDDWVAla2l", "regions": [{"bufferSize": 55, "maxServerCount": 53, "minServerCount": 53, "region": "NtIuS5S5XUdjsoqw"}, {"bufferSize": 66, "maxServerCount": 4, "minServerCount": 49, "region": "EdscKHPEqgA8yu7V"}, {"bufferSize": 22, "maxServerCount": 94, "minServerCount": 35, "region": "Jt4Ymos9Jcdos4fY"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 57}, "success": {"collect": false, "percentage": 95}}, "logs": {"crashed": {"collect": false, "percentage": 90}, "success": {"collect": false, "percentage": 56}}}}' 'vCkGZ5dAgqxpBFma' --login_with_auth "Bearer foo"
ams-fleet-delete 'Loxozr6wfNPX2bOI' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get 'tRMvqtlB2jJCSQT2' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 3}, "success": {"collect": false, "percentage": 86}}, "logs": {"crashed": {"collect": true, "percentage": 88}, "success": {"collect": true, "percentage": 24}}}' 'dlgdWyOtXi3choQr' --login_with_auth "Bearer foo"
ams-fleet-servers 'pOsDBU5SepjChB3V' --login_with_auth "Bearer foo"
ams-fleet-server-history '0v52Dlym6puQ23xo' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-image-get 'J8aeCnaLpUKp44YU' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["DjasWIPUvmEejtGe", "oyIPa8ZRrvjj7il3", "5MXbN9oCMNqq98Sj"], "isProtected": true, "name": "IxjUkl535X3ateEK", "removedTags": ["DpADz1x3poD3Qgb3", "boLQQ1MzH7Qm8bwb", "mXgdAPh1EThG96gA"]}' 'FKK2WDgCcxvONZm3' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "EeERmDnyeFoF7VSZ"}' '6pf3vneSD2Tb3g7m' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'SQUhAEtrmjqU6YE3' --login_with_auth "Bearer foo"
ams-server-history 'p4lSck0ZHn5GI39Y' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "BHqaTHeKtW18iGeU", "sessionId": "lc9d9sogWa24CKNS"}' '0GqVvUfHQvsHXNUN' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'e4mhgo5QB65lSAiY' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["nNjkfZrQvGgbLdLs", "FzHkBMr1yrOMlNFS", "rUEirnjX9fDmIbeZ"], "regions": ["xzfTcyiuATus9hsf", "pFDcSDG8aMVGLiBN", "rDjqoxcwgGLXpUL4"], "sessionId": "pp2ncYAHdNzDmeIP"}' --login_with_auth "Bearer foo"
ams-watchdog-connect '6rOvDz9KOsb392k6' --login_with_auth "Bearer foo"
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
echo "1..37"

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
    '{"name": "YmJFfRByjlBiuFM3"}' \
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
    '{"token": "FIoVk8T3GpAnkCmB"}' \
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
    'Uqg2SCnqntX9y1aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'SWMiVi10sG6vxkfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactGetURL' test.out

#- 12 FleetList
$PYTHON -m $MODULE 'ams-fleet-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'FleetList' test.out

#- 13 FleetCreate
$PYTHON -m $MODULE 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["Yb33T5UBJCjfcnLR", "fxeCSz9WEi8Klloe", "H0JT1yduat2vQR3b"], "dsHostConfiguration": {"instanceId": "iBfsu4jmsRE2w1yE", "instanceType": "kLgh3tIYt4SqYUTL", "serversPerVm": 61}, "imageDeploymentProfile": {"commandLine": "bGL8QOxtjzm8y2wN", "imageId": "hmwoYZyI4EFZKBcY", "portConfigurations": [{"name": "rCEAE7WIsfmx40NL", "protocol": "Rc6m8heKnWhzfe2N"}, {"name": "ubeoKFeIaFQCYoDP", "protocol": "ICpnduEEQlULdJz4"}, {"name": "mnRBkMNxvvKgAT8m", "protocol": "JrYq6hRkloqxM3gp"}], "timeout": {"creation": 46, "drain": 59, "session": 48, "unresponsive": 4}}, "name": "J9jyEW6GLbc0NaKD", "regions": [{"bufferSize": 95, "maxServerCount": 61, "minServerCount": 77, "region": "kzJEN2VHzih3bit0"}, {"bufferSize": 97, "maxServerCount": 23, "minServerCount": 100, "region": "BhnetU4RwTqUXlTD"}, {"bufferSize": 55, "maxServerCount": 52, "minServerCount": 64, "region": "OuYsaZA2yyd4mbqo"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 12}, "success": {"collect": true, "percentage": 61}}, "logs": {"crashed": {"collect": false, "percentage": 79}, "success": {"collect": false, "percentage": 54}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'P43e5dC9XIBudfZg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": true, "claimKeys": ["aKwwrAP2aMlu7Wtj", "CtoYetOO847g8Oud", "OfjnCuHZ3c46IjGa"], "dsHostConfiguration": {"instanceId": "23YvYmmDg7VYPXIu", "instanceType": "vUYTZBRujIUE1Tq5", "serversPerVm": 20}, "imageDeploymentProfile": {"commandLine": "CEHThUJkETAsSp7g", "imageId": "h4TeUTkOkAYfJB8A", "portConfigurations": [{"name": "T9t4Tv207Y2QD3oD", "protocol": "5fLCr3OOlXVv8ZGF"}, {"name": "7uYnGzpipNDigNJm", "protocol": "a1MbqqZtfNWql4nm"}, {"name": "wAft4gqkNNlWkD9e", "protocol": "OziYRFOn0jJLHC9L"}], "timeout": {"creation": 48, "drain": 77, "session": 15, "unresponsive": 48}}, "name": "vNXTwGBCtohLtl9Z", "regions": [{"bufferSize": 42, "maxServerCount": 56, "minServerCount": 15, "region": "G7qtPu64yAtURKLR"}, {"bufferSize": 21, "maxServerCount": 56, "minServerCount": 2, "region": "bRPZTF6oQAXVG7tn"}, {"bufferSize": 39, "maxServerCount": 92, "minServerCount": 12, "region": "fSiM9331m7Ta1PsK"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 63}, "success": {"collect": true, "percentage": 43}}, "logs": {"crashed": {"collect": false, "percentage": 4}, "success": {"collect": false, "percentage": 51}}}}' \
    'nEevcAx2K2zkRenm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'PZnGBt4P7WnbdSJt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'jX7ZshZyZl5x4bRX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 75}, "success": {"collect": true, "percentage": 96}}, "logs": {"crashed": {"collect": true, "percentage": 7}, "success": {"collect": true, "percentage": 33}}}' \
    'zZSKscfOcYu3dpCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'OYqUiGKXVFCmpo6s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'PwVOEDSJsEK5QpNh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'FleetServerHistory' test.out

#- 21 ImageList
$PYTHON -m $MODULE 'ams-image-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'ImageList' test.out

#- 22 ImageGet
$PYTHON -m $MODULE 'ams-image-get' \
    'lI2iS5EpGhhvXYck' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["0upMzUYnb76tFkEO", "RV3bu1bNCtX7W40V", "6Do5sYadCCFrHHC3"], "isProtected": true, "name": "IJzPyrVEiOG4Ucqs", "removedTags": ["uGKHhMRWLVd3DlhL", "uIpomM8sm1MiaI1m", "X2tJoARtdbBe7uds"]}' \
    'Mrok0WvGYYnx4V70' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'ImagePatch' test.out

#- 24 QoSRegionsGet
$PYTHON -m $MODULE 'ams-qo-s-regions-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'QoSRegionsGet' test.out

#- 25 QoSRegionsUpdate
$PYTHON -m $MODULE 'ams-qo-s-regions-update' \
    '{"status": "9xbnGezKsDwG2omO"}' \
    'R2nvYI9TVqJdvzcW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'QoSRegionsUpdate' test.out

#- 26 InfoRegions
$PYTHON -m $MODULE 'ams-info-regions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'InfoRegions' test.out

#- 27 FleetServerInfo
$PYTHON -m $MODULE 'ams-fleet-server-info' \
    'bfUpaXp5JMl5LL4b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'TxBmZjdrrIxsB0NR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 AccountGet
$PYTHON -m $MODULE 'ams-account-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AccountGet' test.out

#- 31 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "sB1fPqqRRulpqpym", "sessionId": "DkQhtrHWwRVnwVBO"}' \
    'qOHi8pWGd1juYhiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'FleetClaimByID' test.out

#- 32 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'jRJOqB5F93zFQbJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'LocalWatchdogConnect' test.out

#- 33 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["dUDpdONneAczbBdH", "b2slt71B1SmZp2JZ", "p50CnPb71ORYcmQb"], "regions": ["TU5JX8ccLjMXJRk0", "eaKQDOJvrTefglSs", "6g4iY9u02aCNYIWe"], "sessionId": "kp18lOC3mNqF7Bl0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'FleetClaimByKeys' test.out

#- 34 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'LcghVHfPEspxwhRO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'WatchdogConnect' test.out

#- 35 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UploadURLGet' test.out

#- 36 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'Func1' test.out

#- 37 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
