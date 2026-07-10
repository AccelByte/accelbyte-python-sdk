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
ams-fleet-create '{"active": true, "claimKeys": ["I18mAQLnzjMf8GZ2", "WBZqxYG3aREAu2D6", "QVKNCWP75TB0i7pK"], "dsHostConfiguration": {"instanceId": "xR8dl0zRVW4EZG9m", "serversPerVm": 96}, "fallbackFleet": "cgGVbMqSszE8GHav", "hibernateAfterPeriod": "j7AorKsxwkosAVer", "imageDeploymentProfile": {"commandLine": "Xpc1C8XfwHuKeb9l", "imageId": "3rGN9A3sNm84hddS", "portConfigurations": [{"name": "pHt0P7MIIR7CkyF6", "protocol": "C7duuyZ0GhDogqrh"}, {"name": "BRd8lDR6qVNPRZYd", "protocol": "FLIAjGGJddVCvu9v"}, {"name": "x5KQ7KYnIuMBvaO3", "protocol": "5llzQRaT5kPxUfof"}], "timeout": {"claim": 45, "creation": 28, "drain": 28, "session": 96, "unresponsive": 92}}, "name": "pOXGSLmCVuHOPlLl", "onDemand": false, "regions": [{"bufferSize": 10, "dynamicBuffer": true, "maxServerCount": 1, "minServerCount": 89, "region": "bntBSxTeIv53HGCi", "state": "ljvjKoyD6SCwGrnc"}, {"bufferSize": 34, "dynamicBuffer": false, "maxServerCount": 25, "minServerCount": 87, "region": "LtjQHAf8TgoNm03V", "state": "LisV6zwPuo3td6TC"}, {"bufferSize": 93, "dynamicBuffer": true, "maxServerCount": 10, "minServerCount": 23, "region": "9x4rt69lna7qxNeI", "state": "xPz6MbwL6IY69z1U"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 60}}, "logs": {"crashed": {"collect": true, "percentage": 34}, "success": {"collect": false, "percentage": 31}, "unclaimed": {"collect": true, "percentage": 50}}}}' --login_with_auth "Bearer foo"
ams-bulk-fleet-delete '{"fleetIds": ["GAXQ0yYoNRKd3IL5", "TAQ6iiPlSC2uE4o5", "Vwdo3fePqIJA8IHt"]}' --login_with_auth "Bearer foo"
ams-fleet-get 'rkmu0hpDDWVAla2l' --login_with_auth "Bearer foo"
ams-fleet-update '{"active": true, "claimKeys": ["AAiE0mit9RGCCHYz", "UOcEdscKHPEqgA8y", "u7Vk6Jt4Ymos9Jcd"], "dsHostConfiguration": {"instanceId": "os4fYcTVU6RBt0zY", "serversPerVm": 29}, "fallbackFleet": "5dAgqxpBFmaLoxoz", "hibernateAfterPeriod": "r6wfNPX2bOItRMvq", "imageDeploymentProfile": {"commandLine": "tlB2jJCSQT279ZZP", "imageId": "YGu0rdlgdWyOtXi3", "portConfigurations": [{"name": "choQrpOsDBU5Sepj", "protocol": "ChB3V0v52Dlym6pu"}, {"name": "Q23xoJ8aeCnaLpUK", "protocol": "p44YUDjasWIPUvmE"}, {"name": "ejtGeoyIPa8ZRrvj", "protocol": "j7il35MXbN9oCMNq"}], "timeout": {"claim": 34, "creation": 91, "drain": 84, "session": 92, "unresponsive": 31}}, "name": "jTvhZNkSQ70D0H6B", "onDemand": true, "regions": [{"bufferSize": 22, "dynamicBuffer": true, "maxServerCount": 60, "minServerCount": 95, "region": "pADz1x3poD3Qgb3b", "state": "oLQQ1MzH7Qm8bwbm"}, {"bufferSize": 13, "dynamicBuffer": false, "maxServerCount": 60, "minServerCount": 55, "region": "UPVJf6c2Z0QZxfgP", "state": "ubTDIHrvqAThuwjR"}, {"bufferSize": 69, "dynamicBuffer": true, "maxServerCount": 32, "minServerCount": 28, "region": "KKTlmVr9XuoJbRFQ", "state": "SKVPHbn4Xxtu7LQR"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 35}}, "logs": {"crashed": {"collect": false, "percentage": 19}, "success": {"collect": false, "percentage": 63}, "unclaimed": {"collect": true, "percentage": 62}}}}' 'U6YE3p4lSck0ZHn5' --login_with_auth "Bearer foo"
ams-fleet-delete 'GI39YBHqaTHeKtW1' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-get '8iGeUlc9d9sogWa2' --login_with_auth "Bearer foo"
ams-fleet-artifact-sampling-rules-set '{"coredumps": {"crashed": {"collect": true, "percentage": 59}}, "logs": {"crashed": {"collect": true, "percentage": 70}, "success": {"collect": true, "percentage": 15}, "unclaimed": {"collect": true, "percentage": 67}}}' 'UfHQvsHXNUNe4mhg' --login_with_auth "Bearer foo"
ams-fleet-servers 'o5QB65lSAiYnNjkf' --login_with_auth "Bearer foo"
ams-fleet-server-history 'ZrQvGgbLdLsFzHkB' --login_with_auth "Bearer foo"
ams-image-list --login_with_auth "Bearer foo"
ams-images-storage --login_with_auth "Bearer foo"
ams-image-get 'Mr1yrOMlNFSrUEir' --login_with_auth "Bearer foo"
ams-image-mark-for-deletion 'njX9fDmIbeZxzfTc' --login_with_auth "Bearer foo"
ams-image-patch '{"addedTags": ["yiuATus9hsfpFDcS", "DG8aMVGLiBNrDjqo", "xcwgGLXpUL4pp2nc"], "isProtected": true, "name": "1ktfIovmv9gsR5cJ", "removedTags": ["cHm3SZLxoRDFuuuy", "Sj29a9LJE8HoRS1X", "2PFAAMwzHPxB1Usk"]}' 'Ys4Yw20DOqOBSC2D' --login_with_auth "Bearer foo"
ams-image-unmark-for-deletion 'KHRuPMMWH8Yb33T5' --login_with_auth "Bearer foo"
ams-qo-s-regions-get --login_with_auth "Bearer foo"
ams-qo-s-regions-update '{"status": "UBJCjfcnLRfxeCSz"}' '9WEi8KlloeH0JT1y' --login_with_auth "Bearer foo"
ams-info-regions --login_with_auth "Bearer foo"
ams-fleet-server-info 'duat2vQR3biBfsu4' --login_with_auth "Bearer foo"
ams-fleet-server-connection-info 'jmsRE2w1yEkLgh3t' --login_with_auth "Bearer foo"
ams-server-history 'IYt4SqYUTLDx9gIi' --login_with_auth "Bearer foo"
ams-info-supported-instances --login_with_auth "Bearer foo"
ams-account-get --login_with_auth "Bearer foo"
ams-fleet-claim-by-id '{"region": "DandpGT2t24aOMh5", "sessionId": "eC3IHeHSKLCa3xre"}' 'NDUWehwH3q31A806' --login_with_auth "Bearer foo"
ams-local-watchdog-connect 'DJgas4b6z3LNUj7f' --login_with_auth "Bearer foo"
ams-fleet-claim-by-keys '{"claimKeys": ["dgLA84Z8YYk6QEgJ", "jBbEDoNf3n0hEoRC", "Acf80zfFyabWAgIU"], "regions": ["XiI07A68eaqC2J9j", "yEW6GLbc0NaKDUL3", "sa13lk1dQBHO86Il"], "sessionId": "BhnetU4RwTqUXlTD"}' --login_with_auth "Bearer foo"
ams-watchdog-connect 'BzOuYsaZA2yyd4mb' --login_with_auth "Bearer foo"
ams-upload-url-get --login_with_auth "Bearer foo"
ams-version-info --login_with_auth "Bearer foo"
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
    '{"name": "qoOfADMMAXFaY9eK"}' \
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
    '{"token": "a699bRVhyaKwwrAP"}' \
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
    '2aMlu7WtjCtoYetO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'ArtifactDelete' test.out

#- 12 ArtifactGetURL
$PYTHON -m $MODULE 'ams-artifact-get-url' \
    'O847g8OudOfjnCuH' \
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
    '{"commandLineArguments": "Z3c46IjGa23YvYmm", "expiresAt": "1986-02-20T00:00:00Z", "imageId": "2epxk0i8VxsZNere", "name": "Svf9699mCEHThUJk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DevelopmentServerConfigurationCreate' test.out

#- 15 DevelopmentServerConfigurationGet
$PYTHON -m $MODULE 'ams-development-server-configuration-get' \
    'ETAsSp7gh4TeUTkO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DevelopmentServerConfigurationGet' test.out

#- 16 DevelopmentServerConfigurationDelete
$PYTHON -m $MODULE 'ams-development-server-configuration-delete' \
    'kAYfJB8AT9t4Tv20' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DevelopmentServerConfigurationDelete' test.out

#- 17 DevelopmentServerConfigurationPatch
$PYTHON -m $MODULE 'ams-development-server-configuration-patch' \
    '{"commandLineArguments": "7Y2QD3oD5fLCr3OO", "expiresAt": "1977-05-29T00:00:00Z"}' \
    'XVv8ZGF7uYnGzpip' \
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
    '{"active": true, "claimKeys": ["7KQI1AeFgPqaOkvo", "1aolB4lkKB4EYOkQ", "1jMD3cym8xIfkOVW"], "dsHostConfiguration": {"instanceId": "2grREOLx0KOww3HI", "serversPerVm": 58}, "fallbackFleet": "ohLtl9Zuhytm5UDr", "hibernateAfterPeriod": "T6QXCs5SPBbRPZTF", "imageDeploymentProfile": {"commandLine": "6oQAXVG7tnsZg5Qg", "imageId": "XjvyGJPN4eXbJE5V", "portConfigurations": [{"name": "s2GcyomQoIXimBJe", "protocol": "hyxlNsjUgxBkF6wF"}, {"name": "PoJeQediogEhhM2r", "protocol": "IizGdKvOPdq5xrgx"}, {"name": "Smy1DN9LFkYW5DQy", "protocol": "j4bj5Ro2ogaKt2uj"}], "timeout": {"claim": 88, "creation": 91, "drain": 92, "session": 74, "unresponsive": 0}}, "name": "sEK5QpNhlI2iS5Ep", "onDemand": false, "regions": [{"bufferSize": 14, "dynamicBuffer": false, "maxServerCount": 71, "minServerCount": 43, "region": "KUkmkk9QM0NBMA9O", "state": "RxpzwLR2AK6eXUGP"}, {"bufferSize": 74, "dynamicBuffer": true, "maxServerCount": 45, "minServerCount": 97, "region": "fiP80G9Pclxcft2u", "state": "lIJzPyrVEiOG4Ucq"}, {"bufferSize": 38, "dynamicBuffer": true, "maxServerCount": 43, "minServerCount": 43, "region": "GKHhMRWLVd3DlhLu", "state": "IpomM8sm1MiaI1mX"}], "samplingRules": {"coredumps": {"crashed": {"collect": true, "percentage": 41}}, "logs": {"crashed": {"collect": false, "percentage": 28}, "success": {"collect": true, "percentage": 54}, "unclaimed": {"collect": true, "percentage": 89}}}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'FleetCreate' test.out

#- 20 BulkFleetDelete
$PYTHON -m $MODULE 'ams-bulk-fleet-delete' \
    '{"fleetIds": ["3HBvepnDCjgyJlXe", "36mgWjLfFmteue9n", "zJ6fH24T805tVg8J"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'BulkFleetDelete' test.out

#- 21 FleetGet
$PYTHON -m $MODULE 'ams-fleet-get' \
    'qU0jZpjvsugAOS7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'FleetGet' test.out

#- 22 FleetUpdate
$PYTHON -m $MODULE 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["Ml5LL4bTxBmZjdrr", "IxsB0NRsB1fPqqRR", "ulpqpymDkQhtrHWw"], "dsHostConfiguration": {"instanceId": "RVnwVBOqOHi8pWGd", "serversPerVm": 69}, "fallbackFleet": "juYhiqjRJOqB5F93", "hibernateAfterPeriod": "zFQbJndUDpdONneA", "imageDeploymentProfile": {"commandLine": "czbBdHb2slt71B1S", "imageId": "mZp2JZp50CnPb71O", "portConfigurations": [{"name": "RYcmQbTU5JX8ccLj", "protocol": "MXJRk0eaKQDOJvrT"}, {"name": "efglSs6g4iY9u02a", "protocol": "CNYIWekp18lOC3mN"}, {"name": "qF7Bl0LcghVHfPEs", "protocol": "pxwhRON0bc1eMbEI"}], "timeout": {"claim": 19, "creation": 65, "drain": 29, "session": 64, "unresponsive": 47}}, "name": "J1KesKoELCpobBEG", "onDemand": true, "regions": [{"bufferSize": 47, "dynamicBuffer": true, "maxServerCount": 31, "minServerCount": 50, "region": "dXpai0rYaT5hOPja", "state": "f3H0tYighU0VUfcY"}, {"bufferSize": 68, "dynamicBuffer": true, "maxServerCount": 74, "minServerCount": 68, "region": "bBfAKSiPW3VgsZXi", "state": "R1DJ7HVWqMkNSawQ"}, {"bufferSize": 95, "dynamicBuffer": true, "maxServerCount": 100, "minServerCount": 60, "region": "plCSVq8PdH6hJPUA", "state": "c0RVwXgAgntLMCua"}], "samplingRules": {"coredumps": {"crashed": {"collect": false, "percentage": 56}}, "logs": {"crashed": {"collect": false, "percentage": 48}, "success": {"collect": true, "percentage": 90}, "unclaimed": {"collect": true, "percentage": 61}}}}' \
    'Pg4xr0lCancUZGCH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'FleetUpdate' test.out

#- 23 FleetDelete
$PYTHON -m $MODULE 'ams-fleet-delete' \
    'sZYoLfR1KtOv7Zy0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'FleetDelete' test.out

#- 24 FleetArtifactSamplingRulesGet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-get' \
    'b65uvuKNuy0ytZQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'FleetArtifactSamplingRulesGet' test.out

#- 25 FleetArtifactSamplingRulesSet
$PYTHON -m $MODULE 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {"crashed": {"collect": true, "percentage": 81}}, "logs": {"crashed": {"collect": true, "percentage": 50}, "success": {"collect": false, "percentage": 58}, "unclaimed": {"collect": false, "percentage": 27}}}' \
    'f6QkmZXElW9YfRSs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'FleetArtifactSamplingRulesSet' test.out

#- 26 FleetServers
$PYTHON -m $MODULE 'ams-fleet-servers' \
    'e6AAz3S4czz0QKFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'FleetServers' test.out

#- 27 FleetServerHistory
$PYTHON -m $MODULE 'ams-fleet-server-history' \
    'AVmVLu4AOec0z8eB' \
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
    'eeoip68J1nsv4W2O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ImageGet' test.out

#- 31 ImageMarkForDeletion
$PYTHON -m $MODULE 'ams-image-mark-for-deletion' \
    'JhtafxMSJlHeb34s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'ImageMarkForDeletion' test.out

#- 32 ImagePatch
$PYTHON -m $MODULE 'ams-image-patch' \
    '{"addedTags": ["ZKHcl5LLLOexL4fZ", "vWtND2tcBFpX8lNt", "FEJ7tnkY6Mca5afj"], "isProtected": false, "name": "2K2IzrBvvWm4udE0", "removedTags": ["OXudXgNne8kJATwl", "c6esUp6Sw1I98jeZ", "Q7hfxnhLd3Knakno"]}' \
    'ed9DHhLOqQGhCUr6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ImagePatch' test.out

#- 33 ImageUnmarkForDeletion
$PYTHON -m $MODULE 'ams-image-unmark-for-deletion' \
    'iTrjyEgarAdNJOIG' \
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
    '{"status": "36I6tRbRcrEveMdA"}' \
    'diPKDUVSC00PYeDc' \
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
    'agginxnFIna3yddc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'FleetServerInfo' test.out

#- 38 FleetServerConnectionInfo
$PYTHON -m $MODULE 'ams-fleet-server-connection-info' \
    'bsPheTH26IUJNvYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'FleetServerConnectionInfo' test.out

#- 39 ServerHistory
$PYTHON -m $MODULE 'ams-server-history' \
    'GRUvpZaHCuESOiIZ' \
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
    '{"region": "sMfB4ZH3mtgWgU4p", "sessionId": "CAKxeE70CaunQNxo"}' \
    't371W9G4AvQkqsGn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'FleetClaimByID' test.out

#- 43 LocalWatchdogConnect
$PYTHON -m $MODULE 'ams-local-watchdog-connect' \
    'myo5JJTUVmb8GEXF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'LocalWatchdogConnect' test.out

#- 44 FleetClaimByKeys
$PYTHON -m $MODULE 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["TlEMEsFzYqwgK1Np", "5nodqpLm7FhJBNXz", "AFdO0Khqf6kiTdSG"], "regions": ["v2LFjAKY7CbgsWqF", "WZX7kPBom8F9GLLT", "G8phc3n4iLoIllKl"], "sessionId": "pO2pqiXJF3WGRaoQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'FleetClaimByKeys' test.out

#- 45 WatchdogConnect
$PYTHON -m $MODULE 'ams-watchdog-connect' \
    'omSJC4DdrKF7SUQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'WatchdogConnect' test.out

#- 46 UploadURLGet
$PYTHON -m $MODULE 'ams-upload-url-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UploadURLGet' test.out

#- 47 VersionInfo
$PYTHON -m $MODULE 'ams-version-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'VersionInfo' test.out

#- 48 BasicHealthCheck
$PYTHON -m $MODULE 'ams-basic-health-check' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'BasicHealthCheck' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
