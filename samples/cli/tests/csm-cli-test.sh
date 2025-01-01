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
csm-get-app-release-v1 'EAxcVpFrttufHIRd' --login_with_auth "Bearer foo"
csm-public-get-messages --login_with_auth "Bearer foo"
csm-get-app-list-v2 '{"appNames": ["H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR", "a62WopBJHPtcDs8b"], "appStatuses": ["BZLCXLx8bbgorQeF", "bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z"], "fuzzyAppName": "QVqGj6oDLjWjkY1a", "scenario": "XlFcDtgOjchIua5t"}' --login_with_auth "Bearer foo"
csm-get-app-v2 'WEIC32ogW7olvbTg' --login_with_auth "Bearer foo"
csm-create-app-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 36}, "cpu": {"requestCPU": 58}, "description": "hRTcPiSuL0Sly6XM", "memory": {"requestMemory": 50}, "replica": {"maxReplica": 83, "minReplica": 63}, "scenario": "I18mAQLnzjMf8GZ2"}' 'WBZqxYG3aREAu2D6' --login_with_auth "Bearer foo"
csm-delete-app-v2 'QVKNCWP75TB0i7pK' --login_with_auth "Bearer foo"
csm-update-app-v2 '{"description": "xR8dl0zRVW4EZG9m"}' '0XcgGVbMqSszE8GH' --login_with_auth "Bearer foo"
csm-create-deployment-v2 '{"imageTag": "avj7AorKsxwkosAV"}' 'erXpc1C8XfwHuKeb' --login_with_auth "Bearer foo"
csm-get-app-image-list-v2 '9l3rGN9A3sNm84hd' --login_with_auth "Bearer foo"
csm-delete-app-images-v2 '{"imageTags": ["dSpHt0P7MIIR7Cky", "F6C7duuyZ0GhDogq", "rhBRd8lDR6qVNPRZ"]}' 'YdFLIAjGGJddVCvu' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 40}, "cpu": {"requestCPU": 44}, "memory": {"requestMemory": 47}, "replica": {"maxReplica": 91, "minReplica": 9}}' 'KQ7KYnIuMBvaO35l' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "lzQRaT5kPxUfofvn", "preferredLimitReplica": 28, "requestReason": "UpOXGSLmCVuHOPlL"}' 'lkvR8sKgnuRkgghG' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 'oYupD391C2qtPYok' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"applyMask": false, "configName": "rncqmLtjQHAf8Tgo", "description": "Nm03VLisV6zwPuo3", "source": "td6TC6I3lMjGSWN2", "value": "laRlxfcjHfYakUCT"}' 'qGkE7wcWfDslpJSq' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"applyMask": true, "description": "AXQ0yYoNRKd3IL5T", "value": "AQ6iiPlSC2uE4o5V"}' 'wdo3fePqIJA8IHtr' 'kmu0hpDDWVAla2l5' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'BYNtIuS5S5XUdjso' 'qwGyzzWi9gwQYv7t' --login_with_auth "Bearer foo"
csm-start-app-v2 '1o7TTr1DmrhZv15T' --login_with_auth "Bearer foo"
csm-stop-app-v2 '7quIOvBMcaYmvCkG' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 'Z5dAgqxpBFmaLoxo' 'zr6wfNPX2bOItRMv' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"notificationType": {"qtlB2jJCSQT279ZZ": false, "YGu0rdlgdWyOtXi3": false, "xkT1X68cmDc3fxU8": false}, "userId": "yKrQpM4hkkK6KKXN"}, {"notificationType": {"B3Gv0IqmF51TkhjY": false, "4YUDjasWIPUvmEej": true, "r6kILsSSyDdmykmo": false}, "userId": "Ygc2L4jk4Lo0LSP0"}, {"notificationType": {"pf4IxjUkl535X3at": false, "XksUC9b6i5lZC9xv": false, "2e8c5csSovoqsZNB": false}, "userId": "bmXgdAPh1EThG96g"}]}' 'AFKK2WDgCcxvONZm' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "3EeERmDnyeFoF7VS", "subscribers": [{"userId": "Z6pf3vneSD2Tb3g7"}, {"userId": "mSQUhAEtrmjqU6YE"}, {"userId": "3p4lSck0ZHn5GI39"}]}' 'YBHqaTHeKtW18iGe' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'Ulc9d9sogWa24CKN' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "S0GqVvUfHQvsHXNU"}' 'Ne4mhgo5QB65lSAi' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'YnNjkfZrQvGgbLdL' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'sFzHkBMr1yrOMlNF' 'SrUEirnjX9fDmIbe' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'ZxzfTcyiuATus9hs' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": false, "configName": "cvrbYCwZtxFHyPLt", "description": "I8ilbyDPUIj88cek", "source": "dqCt81P1ktfIovmv", "value": "9gsR5cJcHm3SZLxo"}' 'RDFuuuySj29a9LJE' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": false, "description": "oVk8T3GpAnkCmBUq", "value": "g2SCnqntX9y1aZSW"}' 'MiVi10sG6vxkfUcm' 'qRRbceJ5i0EeDxOg' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'BnhhqElIaDml48wd' 'NFLTm5T50x9WT0Gf' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["H2rtOa4EXsXzOXQA", "k4mqrxzTtuLl4Xlb", "GL8QOxtjzm8y2wNh"], "deploymentIds": ["mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR", "c6m8heKnWhzfe2Nu"], "statuses": ["beoKFeIaFQCYoDPI", "CpnduEEQlULdJz4m", "nRBkMNxvvKgAT8mJ"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'rYq6hRkloqxM3gpw' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'xcfMy9XzjjI5YbsK' --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
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
echo "1..56"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetAppListV1
eval_tap 0 2 'GetAppListV1 # SKIP deprecated' test.out

#- 3 GetAppV1
eval_tap 0 3 'GetAppV1 # SKIP deprecated' test.out

#- 4 CreateAppV1
eval_tap 0 4 'CreateAppV1 # SKIP deprecated' test.out

#- 5 DeleteAppV1
eval_tap 0 5 'DeleteAppV1 # SKIP deprecated' test.out

#- 6 UpdateAppV1
eval_tap 0 6 'UpdateAppV1 # SKIP deprecated' test.out

#- 7 CreateDeploymentV1
eval_tap 0 7 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 8 GetAppImageListV1
eval_tap 0 8 'GetAppImageListV1 # SKIP deprecated' test.out

#- 9 DeleteAppImagesV1
eval_tap 0 9 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 10 GetAppReleaseV1
$PYTHON -m $MODULE 'csm-get-app-release-v1' \
    'oADkzJEN2VHzih3b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetAppReleaseV1' test.out

#- 11 GetListOfSecretsV1
eval_tap 0 11 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 12 SaveSecretV1
eval_tap 0 12 'SaveSecretV1 # SKIP deprecated' test.out

#- 13 UpdateSecretV1
eval_tap 0 13 'UpdateSecretV1 # SKIP deprecated' test.out

#- 14 DeleteSecretV1
eval_tap 0 14 'DeleteSecretV1 # SKIP deprecated' test.out

#- 15 StartAppV1
eval_tap 0 15 'StartAppV1 # SKIP deprecated' test.out

#- 16 StopAppV1
eval_tap 0 16 'StopAppV1 # SKIP deprecated' test.out

#- 17 GetListOfVariablesV1
eval_tap 0 17 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 18 SaveVariableV1
eval_tap 0 18 'SaveVariableV1 # SKIP deprecated' test.out

#- 19 UpdateVariableV1
eval_tap 0 19 'UpdateVariableV1 # SKIP deprecated' test.out

#- 20 DeleteVariableV1
eval_tap 0 20 'DeleteVariableV1 # SKIP deprecated' test.out

#- 21 GetListOfDeploymentV1
eval_tap 0 21 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 22 GetDeploymentV1
eval_tap 0 22 'GetDeploymentV1 # SKIP deprecated' test.out

#- 23 DeleteDeploymentV1
eval_tap 0 23 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 24 PublicGetMessages
$PYTHON -m $MODULE 'csm-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetMessages' test.out

#- 25 GetAppListV2
$PYTHON -m $MODULE 'csm-get-app-list-v2' \
    '{"appNames": ["it0VWn3CO39PXDNx", "tXgeO3FgkXhjDzaQ", "Y3snn2ZkP7cFdP43"], "appStatuses": ["e5dC9XIBudfZgrbH", "DIDm4hMzF4Txoden", "SrUTvfqU0bfoMm5c"], "fuzzyAppName": "TtFWbotQyXJRcQWs", "scenario": "mqPNs92epxk0i8Vx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'sZNereSvf9699mCE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 68}, "cpu": {"requestCPU": 94}, "description": "vkRCMNFIurjh2imd", "memory": {"requestMemory": 2}, "replica": {"maxReplica": 96, "minReplica": 93}, "scenario": "rbkXj0ZwsVC0gL97"}' \
    'ZVJSPqJiwv1qlYB1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    'RSKs6gQxC3Gb7S0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "4zGYY7KQI1AeFgPq"}' \
    'aOkvo1aolB4lkKB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "EYOkQ1jMD3cym8xI"}' \
    'fkOVW2grREOLx0KO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'ww3HICQLfl7MUBG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["qtPu64yAtURKLRkb", "738HGS6rDgMdIIlh", "S1fSiM9331m7Ta1P"]}' \
    'sKc50Kv6ecnEevcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 49}, "cpu": {"requestCPU": 17}, "memory": {"requestMemory": 25}, "replica": {"maxReplica": 74, "minReplica": 56}}' \
    '2zkRenmPZnGBt4P7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "WnbdSJtjX7ZshZyZ", "preferredLimitReplica": 23, "requestReason": "2rIizGdKvOPdq5xr"}' \
    'gxSmy1DN9LFkYW5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'Qyj4bj5Ro2ogaKt2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"applyMask": true, "configName": "EDSJsEK5QpNhlI2i", "description": "S5EpGhhvXYck0upM", "source": "zUYnb76tFkEORV3b", "value": "u1bNCtX7W40V6Do5"}' \
    'sYadCCFrHHC3DpZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"applyMask": false, "description": "yrVEiOG4UcqsuGKH", "value": "hMRWLVd3DlhLuIpo"}' \
    'mM8sm1MiaI1mX2tJ' \
    'oARtdbBe7udsMrok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    '0WvGYYnx4V709xbn' \
    'GezKsDwG2omOR2nv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'YI9TVqJdvzcWbfUp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'aXp5JMl5LL4bTxBm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    'ZjdrrIxsB0NRsB1f' \
    'PqqRRulpqpymDkQh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"notificationType": {"trHWwRVnwVBOqOHi": false, "pWGd1juYhiqjRJOq": true, "P57dBZNR88YbCtmK": true}, "userId": "NneAczbBdHb2slt7"}, {"notificationType": {"1B1SmZp2JZp50CnP": false, "1j02o7JjTXAQN0qd": true, "cLjMXJRk0eaKQDOJ": true}, "userId": "Ixi4YKlONk2Q5Y4J"}, {"notificationType": {"vaizwiilatuUjjt9": false, "mNqF7Bl0LcghVHfP": true, "cHB3CfR3ncDlwi3v": false}, "userId": "FFJ1KesKoELCpobB"}]}' \
    'EG8X645xpdXpai0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "YaT5hOPjaf3H0tYi", "subscribers": [{"userId": "ghU0VUfcYHJbBfAK"}, {"userId": "SiPW3VgsZXiR1DJ7"}, {"userId": "HVWqMkNSawQUWDFJ"}]}' \
    'vJBWic7UkBeIXuqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'uAXI66bQ71w0deoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "9Lx5RDA1l2XcrciY"}' \
    'NEzvSZIPkhSgORcz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    '5S5BvmgBLxh4ijFn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'E3Tam69qSZ7PC6f6' \
    'QkmZXElW9YfRSse6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'AAz3S4czz0QKFlAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "G6XqP6oo7G73zdxT", "description": "gOfnwIdlNa29fDLh", "source": "741IslKHzGlLKWUt", "value": "DQs61OQAoxyyQpRW"}' \
    'CiiPDGQhNPEwiJCf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": true, "description": "JVrlzqQls1ozhLVA", "value": "3kE8jKvgatOEBM70"}' \
    'TdlNBJYOmpu1VCar' \
    'zBsV6xnZ5Jrzzjrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'aug6CWVG8SWP3glU' \
    '6muswVJnNnN7kAa7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["j0riFc5HTHQIoVsG", "o7dwV9DBqFKHQkET", "JyTlUrwDTnoujQD4"], "deploymentIds": ["IEiH9Z5qXn3aoRtl", "qOECohViHA5CzgFS", "y8X1A3PrIfapq5AA"], "statuses": ["eMe4L3mDWORBVXTI", "IJM9XsYIIZxiXNMR", "9BgaWcFX3SUBhyoT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'sMWPAxUMkawaGpAy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'rIwMif3BOdkocVTd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteDeploymentV2' test.out

#- 56 GetResourcesLimits
$PYTHON -m $MODULE 'csm-get-resources-limits' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetResourcesLimits' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
