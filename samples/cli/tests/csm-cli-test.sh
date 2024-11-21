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
csm-get-notification-subscriber-list-v2 'Z5dAgqxpBFmaLoxo' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"notificationType": {"zr6wfNPX2bOItRMv": true, "0M3VHh2EI8JlDbPW": false, "YGu0rdlgdWyOtXi3": false}, "userId": "xkT1X68cmDc3fxU8"}, {"notificationType": {"MyKrQpM4hkkK6KKX": true, "3xoJ8aeCnaLpUKp4": false, "YUDjasWIPUvmEejt": false}, "userId": "kILsSSyDdmykmoPY"}, {"notificationType": {"gc2L4jk4Lo0LSP0p": false, "TvhZNkSQ70D0H6BX": false, "KDpADz1x3poD3Qgb": false}, "userId": "boLQQ1MzH7Qm8bwb"}]}' 'mXgdAPh1EThG96gA' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "FKK2WDgCcxvONZm3", "subscribers": [{"userId": "EeERmDnyeFoF7VSZ"}, {"userId": "6pf3vneSD2Tb3g7m"}, {"userId": "SQUhAEtrmjqU6YE3"}]}' 'p4lSck0ZHn5GI39Y' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'BHqaTHeKtW18iGeU' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "lc9d9sogWa24CKNS"}' '0GqVvUfHQvsHXNUN' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'e4mhgo5QB65lSAiY' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'nNjkfZrQvGgbLdLs' 'FzHkBMr1yrOMlNFS' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'rUEirnjX9fDmIbeZ' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": true, "configName": "dwYWQG26yUZNmTBc", "description": "vrbYCwZtxFHyPLtI", "source": "8ilbyDPUIj88cekd", "value": "qCt81P1ktfIovmv9"}' 'gsR5cJcHm3SZLxoR' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": true, "description": "mJFfRByjlBiuFM3F", "value": "IoVk8T3GpAnkCmBU"}' 'qg2SCnqntX9y1aZS' 'WMiVi10sG6vxkfUc' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'mqRRbceJ5i0EeDxO' 'gBnhhqElIaDml48w' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["dNFLTm5T50x9WT0G", "fH2rtOa4EXsXzOXQ", "Ak4mqrxzTtuLl4Xl"], "deploymentIds": ["bGL8QOxtjzm8y2wN", "hmwoYZyI4EFZKBcY", "rCEAE7WIsfmx40NL"], "statuses": ["Rc6m8heKnWhzfe2N", "ubeoKFeIaFQCYoDP", "ICpnduEEQlULdJz4"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'mnRBkMNxvvKgAT8m' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'JrYq6hRkloqxM3gp' --login_with_auth "Bearer foo"
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
    'wxcfMy9XzjjI5Ybs' \
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
    '{"appNames": ["KoADkzJEN2VHzih3", "bit0VWn3CO39PXDN", "xtXgeO3FgkXhjDza"], "appStatuses": ["QY3snn2ZkP7cFdP4", "3e5dC9XIBudfZgrb", "HDIDm4hMzF4Txode"], "fuzzyAppName": "nSrUTvfqU0bfoMm5", "scenario": "cTtFWbotQyXJRcQW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'smqPNs92epxk0i8V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 48}, "cpu": {"requestCPU": 38}, "description": "TZBRujIUE1Tq5jyA", "memory": {"requestMemory": 94}, "replica": {"maxReplica": 44, "minReplica": 14}, "scenario": "kRCMNFIurjh2imdb"}' \
    '4rbkXj0ZwsVC0gL9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    '7ZVJSPqJiwv1qlYB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "1RSKs6gQxC3Gb7S0"}' \
    'o4zGYY7KQI1AeFgP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "qaOkvo1aolB4lkKB"}' \
    '4EYOkQ1jMD3cym8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'IfkOVW2grREOLx0K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["Oww3HICQLfl7MUBG", "7qtPu64yAtURKLRk", "b738HGS6rDgMdIIl"]}' \
    'hS1fSiM9331m7Ta1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 85}, "cpu": {"requestCPU": 38}, "memory": {"requestMemory": 2}, "replica": {"maxReplica": 74, "minReplica": 74}}' \
    'c50Kv6ecnEevcAx2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "K2zkRenmPZnGBt4P", "preferredLimitReplica": 100, "requestReason": "wFPoJeQediogEhhM"}' \
    '2rIizGdKvOPdq5xr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'gxSmy1DN9LFkYW5D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"applyMask": false, "configName": "yj4bj5Ro2ogaKt2u", "description": "jQSa3Zdb65UXmy0Z", "source": "p6iIaTIKUkmkk9QM", "value": "0NBMA9ORxpzwLR2A"}' \
    'K6eXUGPJsw1fiP80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"applyMask": false, "description": "Pclxcft2ulIJzPyr", "value": "VEiOG4UcqsuGKHhM"}' \
    'RWLVd3DlhLuIpomM' \
    '8sm1MiaI1mX2tJoA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'RtdbBe7udsMrok0W' \
    'vGYYnx4V709xbnGe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'zKsDwG2omOR2nvYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    '9TVqJdvzcWbfUpaX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    'p5JMl5LL4bTxBmZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"notificationType": {"drrIxsB0NRsB1fPq": true, "WwNTAhd2wrS0uPdj": false, "WwRVnwVBOqOHi8pW": true}, "userId": "d1juYhiqjRJOqB5F"}, {"notificationType": {"93zFQbJndUDpdONn": false, "9zVrjfGXZnqAQUoY": false, "jlIIk0iKoTTS1j02": false}, "userId": "YcmQbTU5JX8ccLjM"}, {"notificationType": {"XJRk0eaKQDOJvrTe": false, "YKlONk2Q5Y4Jvaiz": true, "YIWekp18lOC3mNqF": false}, "userId": "Bl0LcghVHfPEspxw"}]}' \
    'hRON0bc1eMbEIjow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "Lqc3ecjXJbZDKKox", "subscribers": [{"userId": "LE1Y3Dymtj3giPg4"}, {"userId": "x4yiPX6ues1Hhhkg"}, {"userId": "1yLVbLFzHEP8cM4N"}]}' \
    'Twr0KHaAsmTej52W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'Ki6tArAURt9plCSV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "q8PdH6hJPUAc0RVw"}' \
    'XgAgntLMCuaXBWQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    '6BqPg4xr0lCancUZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'GCHsZYoLfR1KtOv7' \
    'Zy0b65uvuKNuy0yt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'ZQ7M6Nzy1adnSKOL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": true, "configName": "ElW9YfRSse6AAz3S", "description": "4czz0QKFlAVmVLu4", "source": "AOec0z8eBeeoip68", "value": "J1nsv4W2OJhtafxM"}' \
    'SJlHeb34sZKHcl5L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": true, "description": "exL4fZvWtND2tcBF", "value": "pX8lNtFEJ7tnkY6M"}' \
    'ca5afj12K2IzrBvv' \
    'Wm4udE0OXudXgNne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    '8kJATwlc6esUp6Sw' \
    '1I98jeZQ7hfxnhLd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["3Knaknoed9DHhLOq", "QGhCUr6iTrjyEgar", "AdNJOIG36I6tRbRc"], "deploymentIds": ["rEveMdAdiPKDUVSC", "00PYeDcagginxnFI", "na3yddcbsPheTH26"], "statuses": ["IUJNvYuGRUvpZaHC", "uESOiIZsMfB4ZH3m", "tgWgU4pCAKxeE70C"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'aunQNxot371W9G4A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'vQkqsGnmyo5JJTUV' \
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
