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
ams-fleet-claim-by-id '{"region": "BHqaTHeKtW18iGeU"}' 'lc9d9sogWa24CKNS' --login_with_auth "Bearer foo"
ams-local-watchdog-connect '0GqVvUfHQvsHXNUN' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["e4mhgo5QB65lSAiY", "nNjkfZrQvGgbLdLs", "FzHkBMr1yrOMlNFS"], "regions": ["rUEirnjX9fDmIbeZ", "xzfTcyiuATus9hsf", "pFDcSDG8aMVGLiBN"]}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'rDjqoxcwgGLXpUL4' --login_with_auth "Bearer foo"
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
echo "1..35"

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
    '{"name": "pp2ncYAHdNzDmeIP"}' \
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
    '{"token": "6rOvDz9KOsb392k6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AccountLink' test.out

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
    'YmJFfRByjlBiuFM3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'ArtifactDelete' test.out

#- 11 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'FIoVk8T3GpAnkCmB' \
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
    '{"active": true, "claimKeys": ["qg2SCnqntX9y1aZS", "WMiVi10sG6vxkfUc", "mqRRbceJ5i0EeDxO"], "dsHostConfiguration": {"instanceId": "gBnhhqElIaDml48w", "instanceType": "dNFLTm5T50x9WT0G", "serversPerVm": 11}, "imageDeploymentProfile": {"commandLine": "Bfsu4jmsRE2w1yEk", "imageId": "Lgh3tIYt4SqYUTLD", "portConfigurations": [{"name": "x9gIiDandpGT2t24", "protocol": "aOMh5eC3IHeHSKLC"}, {"name": "a3xreNDUWehwH3q3", "protocol": "1A806DJgas4b6z3L"}, {"name": "NUj7fdgLA84Z8YYk", "protocol": "6QEgJjBbEDoNf3n0"}], "timeout": {"creation": 15, "drain": 26, "session": 62, "unresponsive": 88}}, "name": "oRCAcf80zfFyabWA", "regions": [{"bufferSize": 12, "maxServerCount": 33, "minServerCount": 70, "region": "6hRkloqxM3gpwxcf"}, {"bufferSize": 79, "maxServerCount": 18, "minServerCount": 51, "region": "yEW6GLbc0NaKDUL3"}, {"bufferSize": 37, "maxServerCount": 73, "minServerCount": 0, "region": "EN2VHzih3bit0VWn"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 59}, "success": {"collect": false, "percentage": 83}}, "logs": {"crashed": {"collect": true, "percentage": 94}, "success": {"collect": true, "percentage": 61}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'FleetCreate' test.out

#- 14 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'TqUXlTDBzOuYsaZA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'FleetGet' test.out

#- 15 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["yyd4mbqoOfADMMAX", "FaY9eKa699bRVhya", "KwwrAP2aMlu7WtjC"], "dsHostConfiguration": {"instanceId": "toYetOO847g8OudO", "instanceType": "fjnCuHZ3c46IjGa2", "serversPerVm": 39}, "imageDeploymentProfile": {"commandLine": "YvYmmDg7VYPXIuvU", "imageId": "YTZBRujIUE1Tq5jy", "portConfigurations": [{"name": "AZvkRCMNFIurjh2i", "protocol": "mdb4rbkXj0ZwsVC0"}, {"name": "gL97ZVJSPqJiwv1q", "protocol": "lYB1RSKs6gQxC3Gb"}, {"name": "7S0o4zGYY7KQI1Ae", "protocol": "FgPqaOkvo1aolB4l"}], "timeout": {"creation": 21, "drain": 11, "session": 76, "unresponsive": 39}}, "name": "B4EYOkQ1jMD3cym8", "regions": [{"bufferSize": 49, "maxServerCount": 89, "minServerCount": 71, "region": "FOn0jJLHC9LxhvNX"}, {"bufferSize": 94, "maxServerCount": 45, "minServerCount": 45, "region": "w3HICQLfl7MUBG7q"}, {"bufferSize": 39, "maxServerCount": 84, "minServerCount": 96, "region": "u64yAtURKLRkb738"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 35}, "success": {"collect": true, "percentage": 54}}, "logs": {"crashed": {"collect": false, "percentage": 80}, "success": {"collect": false, "percentage": 66}}}}' \
    'IIlhS1fSiM9331m7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'FleetUpdate' test.out

#- 16 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'Ta1PsKc50Kv6ecnE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'FleetDelete' test.out

#- 17 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'evcAx2K2zkRenmPZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'FleetArtifactSamplingRulesGet' test.out

#- 18 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": false, "percentage": 95}, "success": {"collect": false, "percentage": 56}}, "logs": {"crashed": {"collect": true, "percentage": 39}, "success": {"collect": true, "percentage": 22}}}' \
    'P7WnbdSJtjX7ZshZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'FleetArtifactSamplingRulesSet' test.out

#- 19 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'yZl5x4bRXBHUTrDz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetServers' test.out

#- 20 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'ZSKscfOcYu3dpCRO' \
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
    'YqUiGKXVFCmpo6sP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'ImageGet' test.out

#- 23 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["wVOEDSJsEK5QpNhl", "I2iS5EpGhhvXYck0", "upMzUYnb76tFkEOR"], "isProtected": false, "name": "AK6eXUGPJsw1fiP8", "removedTags": ["0G9Pclxcft2ulIJz", "PyrVEiOG4UcqsuGK", "HhMRWLVd3DlhLuIp"]}' \
    'omM8sm1MiaI1mX2t' \
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
    '{"status": "JoARtdbBe7udsMro"}' \
    'k0WvGYYnx4V709xb' \
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
    'nGezKsDwG2omOR2n' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'FleetServerInfo' test.out

#- 28 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'vYI9TVqJdvzcWbfU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ServerHistory' test.out

#- 29 InfoSupportedInstances
$PYTHON -m $MODULE 'ams-info-supported-instances' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'InfoSupportedInstances' test.out

#- 30 FleetClaimByID
$PYTHON -m $MODULE 'ams-fleet-claim-by-id' \
    '{"region": "paXp5JMl5LL4bTxB"}' \
    'mZjdrrIxsB0NRsB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'FleetClaimByID' test.out

#- 31 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'fPqqRRulpqpymDkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'LocalWatchdogConnect' test.out

#- 32 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["htrHWwRVnwVBOqOH", "i8pWGd1juYhiqjRJ", "OqB5F93zFQbJndUD"], "regions": ["pdONneAczbBdHb2s", "lt71B1SmZp2JZp50", "CnPb71ORYcmQbTU5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'FleetClaimByKeys' test.out

#- 33 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'JX8ccLjMXJRk0eaK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'WatchdogConnect' test.out

#- 34 Func1
$PYTHON -m $MODULE 'ams-func1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'Func1' test.out

#- 35 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
