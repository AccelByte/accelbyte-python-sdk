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
csm-create-app-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 36}, "cpu": {"requestCPU": 58}, "description": "hRTcPiSuL0Sly6XM", "memory": {"requestMemory": 50}, "replica": {"maxReplica": 83, "minReplica": 63}, "scenario": "I18mAQLnzjMf8GZ2", "vmSharingConfiguration": "WBZqxYG3aREAu2D6"}' 'QVKNCWP75TB0i7pK' --login_with_auth "Bearer foo"
csm-delete-app-v2 'xR8dl0zRVW4EZG9m' --login_with_auth "Bearer foo"
csm-update-app-v2 '{"description": "0XcgGVbMqSszE8GH"}' 'avj7AorKsxwkosAV' --login_with_auth "Bearer foo"
csm-create-deployment-v2 '{"imageTag": "erXpc1C8XfwHuKeb"}' '9l3rGN9A3sNm84hd' --login_with_auth "Bearer foo"
csm-get-app-image-list-v2 'dSpHt0P7MIIR7Cky' --login_with_auth "Bearer foo"
csm-delete-app-images-v2 '{"imageTags": ["F6C7duuyZ0GhDogq", "rhBRd8lDR6qVNPRZ", "YdFLIAjGGJddVCvu"]}' '9vx5KQ7KYnIuMBva' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 84}, "cpu": {"requestCPU": 0}, "memory": {"requestMemory": 71}, "replica": {"maxReplica": 23, "minReplica": 23}, "vmSharingConfiguration": "u6Vpbsx5w8hqUI06"}' 'UpOXGSLmCVuHOPlL' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "lkvR8sKgnuRkgghG", "preferredLimitReplica": 30, "requestReason": "GCiljvjKoyD6SCwG"}' 'rncqmLtjQHAf8Tgo' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 'Nm03VLisV6zwPuo3' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"configName": "td6TC6I3lMjGSWN2", "description": "laRlxfcjHfYakUCT", "source": "qGkE7wcWfDslpJSq", "value": "GAXQ0yYoNRKd3IL5"}' 'TAQ6iiPlSC2uE4o5' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"description": "Vwdo3fePqIJA8IHt", "value": "rkmu0hpDDWVAla2l"}' '5BYNtIuS5S5XUdjs' 'oqwGyzzWi9gwQYv7' --login_with_auth "Bearer foo"
csm-delete-secret-v2 't1o7TTr1DmrhZv15' 'T7quIOvBMcaYmvCk' --login_with_auth "Bearer foo"
csm-start-app-v2 'GZ5dAgqxpBFmaLox' --login_with_auth "Bearer foo"
csm-stop-app-v2 'ozr6wfNPX2bOItRM' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 'vqtlB2jJCSQT279Z' 'ZPYGu0rdlgdWyOtX' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"notificationType": {"i3choQrpOsDBU5Se": false, "U8MyKrQpM4hkkK6K": true, "XNB3Gv0IqmF51Tkh": false}, "userId": "p44YUDjasWIPUvmE"}, {"notificationType": {"ejtGeoyIPa8ZRrvj": false, "moPYgc2L4jk4Lo0L": false, "jTvhZNkSQ70D0H6B": true}, "userId": "ksUC9b6i5lZC9xv3"}, {"notificationType": {"2e8c5csSovoqsZNB": false, "bmXgdAPh1EThG96g": true, "ZxfgPubTDIHrvqAT": false}, "userId": "EeERmDnyeFoF7VSZ"}]}' '6pf3vneSD2Tb3g7m' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "SQUhAEtrmjqU6YE3", "subscribers": [{"userId": "p4lSck0ZHn5GI39Y"}, {"userId": "BHqaTHeKtW18iGeU"}, {"userId": "lc9d9sogWa24CKNS"}]}' '0GqVvUfHQvsHXNUN' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'e4mhgo5QB65lSAiY' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "nNjkfZrQvGgbLdLs"}' 'FzHkBMr1yrOMlNFS' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'rUEirnjX9fDmIbeZ' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'xzfTcyiuATus9hsf' 'pFDcSDG8aMVGLiBN' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'rDjqoxcwgGLXpUL4' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": true, "configName": "qCt81P1ktfIovmv9", "description": "gsR5cJcHm3SZLxoR", "source": "DFuuuySj29a9LJE8", "value": "HoRS1X2PFAAMwzHP"}' 'xB1UskYs4Yw20DOq' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": true, "description": "MiVi10sG6vxkfUcm", "value": "qRRbceJ5i0EeDxOg"}' 'BnhhqElIaDml48wd' 'NFLTm5T50x9WT0Gf' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'H2rtOa4EXsXzOXQA' 'k4mqrxzTtuLl4Xlb' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["GL8QOxtjzm8y2wNh", "mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR"], "deploymentIds": ["c6m8heKnWhzfe2Nu", "beoKFeIaFQCYoDPI", "CpnduEEQlULdJz4m"], "statuses": ["nRBkMNxvvKgAT8mJ", "rYq6hRkloqxM3gpw", "xcfMy9XzjjI5YbsK"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'oADkzJEN2VHzih3b' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'it0VWn3CO39PXDNx' --login_with_auth "Bearer foo"
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
    'tXgeO3FgkXhjDzaQ' \
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
    '{"appNames": ["Y3snn2ZkP7cFdP43", "e5dC9XIBudfZgrbH", "DIDm4hMzF4Txoden"], "appStatuses": ["SrUTvfqU0bfoMm5c", "TtFWbotQyXJRcQWs", "mqPNs92epxk0i8Vx"], "fuzzyAppName": "sZNereSvf9699mCE", "scenario": "HThUJkETAsSp7gh4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'TeUTkOkAYfJB8AT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 41}, "cpu": {"requestCPU": 78}, "description": "4Tv207Y2QD3oD5fL", "memory": {"requestMemory": 57}, "replica": {"maxReplica": 57, "minReplica": 36}, "scenario": "1RSKs6gQxC3Gb7S0", "vmSharingConfiguration": "o4zGYY7KQI1AeFgP"}' \
    'qaOkvo1aolB4lkKB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    '4EYOkQ1jMD3cym8x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "IfkOVW2grREOLx0K"}' \
    'Oww3HICQLfl7MUBG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "7qtPu64yAtURKLRk"}' \
    'b738HGS6rDgMdIIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'hS1fSiM9331m7Ta1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["PsKc50Kv6ecnEevc", "Ax2K2zkRenmPZnGB", "t4P7WnbdSJtjX7Zs"]}' \
    'hZyZl5x4bRXBHUTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 61}, "cpu": {"requestCPU": 33}, "memory": {"requestMemory": 53}, "replica": {"maxReplica": 48, "minReplica": 91}, "vmSharingConfiguration": "rgxSmy1DN9LFkYW5"}' \
    'DQyj4bj5Ro2ogaKt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "2ujQSa3Zdb65UXmy", "preferredLimitReplica": 17, "requestReason": "Zp6iIaTIKUkmkk9Q"}' \
    'M0NBMA9ORxpzwLR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'AK6eXUGPJsw1fiP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "0G9Pclxcft2ulIJz", "description": "PyrVEiOG4UcqsuGK", "source": "HhMRWLVd3DlhLuIp", "value": "omM8sm1MiaI1mX2t"}' \
    'JoARtdbBe7udsMro' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "k0WvGYYnx4V709xb", "value": "nGezKsDwG2omOR2n"}' \
    'vYI9TVqJdvzcWbfU' \
    'paXp5JMl5LL4bTxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'mZjdrrIxsB0NRsB1' \
    'fPqqRRulpqpymDkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'htrHWwRVnwVBOqOH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'i8pWGd1juYhiqjRJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    'OqB5F93zFQbJndUD' \
    'pdONneAczbBdHb2s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"notificationType": {"lt71B1SmZp2JZp50": true, "TTS1j02o7JjTXAQN": true, "8ccLjMXJRk0eaKQD": false}, "userId": "JvrTefglSs6g4iY9"}, {"notificationType": {"u02aCNYIWekp18lO": true, "9lIMGql5ElEa9EII": false, "PEspxwhRON0bc1eM": false}, "userId": "v3MFFJ1KesKoELCp"}, {"notificationType": {"obBEG8X645xpdXpa": false, "giPg4x4yiPX6ues1": false, "ighU0VUfcYHJbBfA": false}, "userId": "NTwr0KHaAsmTej52"}]}' \
    'WKi6tArAURt9plCS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "Vq8PdH6hJPUAc0RV", "subscribers": [{"userId": "wXgAgntLMCuaXBWQ"}, {"userId": "i6BqPg4xr0lCancU"}, {"userId": "ZGCHsZYoLfR1KtOv"}]}' \
    '7Zy0b65uvuKNuy0y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'tZQ7M6Nzy1adnSKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "LFKx1dX4LuWJu3pD"}' \
    'MUAeeZ97SBROPYuG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    '6XqP6oo7G73zdxTg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'OfnwIdlNa29fDLh7' \
    '41IslKHzGlLKWUtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'Qs61OQAoxyyQpRWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "D2tcBFpX8lNtFEJ7", "description": "tnkY6Mca5afj12K2", "source": "IzrBvvWm4udE0OXu", "value": "dXgNne8kJATwlc6e"}' \
    'sUp6Sw1I98jeZQ7h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "aug6CWVG8SWP3glU", "value": "6muswVJnNnN7kAa7"}' \
    'j0riFc5HTHQIoVsG' \
    'o7dwV9DBqFKHQkET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'JyTlUrwDTnoujQD4' \
    'IEiH9Z5qXn3aoRtl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["qOECohViHA5CzgFS", "y8X1A3PrIfapq5AA", "eMe4L3mDWORBVXTI"], "deploymentIds": ["IJM9XsYIIZxiXNMR", "9BgaWcFX3SUBhyoT", "sMWPAxUMkawaGpAy"], "statuses": ["rIwMif3BOdkocVTd", "4BxqGWV6mTJ0sQs6", "XNbjvqhnUVLWu8ol"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'KdxL6ozRmDD0jJvl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'fV5OemPYdYT7DROC' \
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
