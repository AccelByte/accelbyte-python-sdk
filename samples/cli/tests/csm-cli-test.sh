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
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"emailAddress": "i3choQrpOsDBU5Se", "notificationType": {"pjChB3V0v52Dlym6": false, "KXNB3Gv0IqmF51Tk": false, "Kp44YUDjasWIPUvm": true}, "userId": "XsDr6kILsSSyDdmy"}, {"emailAddress": "kmoPYgc2L4jk4Lo0", "notificationType": {"LSP0pf4IxjUkl535": false, "6BXksUC9b6i5lZC9": true, "Qgb3boLQQ1MzH7Qm": false}, "userId": "Bdte9NDUPVJf6c2Z"}, {"emailAddress": "0QZxfgPubTDIHrvq", "notificationType": {"AThuwjRHpKKTlmVr": true, "6pf3vneSD2Tb3g7m": true, "QUhAEtrmjqU6YE3p": false}, "userId": "SiZqan0nSBJroav9"}]}' '1GXlvPG6bFYReVHQ' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "ipcCx9Zw5D2L7vIY", "subscribers": [{"emailAddress": "hGGSyEW4ZJJ42d3P", "userId": "BddN8S48l9lyNApf"}, {"emailAddress": "lxqMrj3oZk03QXcK", "userId": "MDYDDxHSZjtqXyJ5"}, {"emailAddress": "8f7Gc26SaiGVkydw", "userId": "YWQG26yUZNmTBcvr"}]}' 'bYCwZtxFHyPLtI8i' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'lbyDPUIj88cekdqC' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "t81P1ktfIovmv9gs"}' 'R5cJcHm3SZLxoRDF' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'uuuySj29a9LJE8Ho' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'RS1X2PFAAMwzHPxB' '1UskYs4Yw20DOqOB' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'SC2DKHRuPMMWH8Yb' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": false, "configName": "5UBJCjfcnLRfxeCS", "description": "z9WEi8KlloeH0JT1", "source": "yduat2vQR3biBfsu", "value": "4jmsRE2w1yEkLgh3"}' 'tIYt4SqYUTLDx9gI' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": false, "description": "Oxtjzm8y2wNhmwoY", "value": "ZyI4EFZKBcYrCEAE"}' '7WIsfmx40NLRc6m8' 'heKnWhzfe2NubeoK' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'FeIaFQCYoDPICpnd' 'uEEQlULdJz4mnRBk' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["MNxvvKgAT8mJrYq6", "hRkloqxM3gpwxcfM", "y9XzjjI5YbsKoADk"], "deploymentIds": ["zJEN2VHzih3bit0V", "Wn3CO39PXDNxtXge", "O3FgkXhjDzaQY3sn"], "statuses": ["n2ZkP7cFdP43e5dC", "9XIBudfZgrbHDIDm", "4hMzF4TxodenSrUT"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'vfqU0bfoMm5cTtFW' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'botQyXJRcQWsmqPN' --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v3 's92epxk0i8VxsZNe' 'reSvf9699mCEHThU' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 'JkETAsSp7gh4TeUT' --login_with_auth "Bearer foo"
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
echo "1..58"

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
    'kOkAYfJB8AT9t4Tv' \
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
    '{"appNames": ["207Y2QD3oD5fLCr3", "OOlXVv8ZGF7uYnGz", "pipNDigNJma1Mbqq"], "appStatuses": ["ZtfNWql4nmwAft4g", "qkNNlWkD9eOziYRF", "On0jJLHC9LxhvNXT"], "fuzzyAppName": "wGBCtohLtl9Zuhyt", "scenario": "m5UDrT6QXCs5SPBb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'RPZTF6oQAXVG7tns' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 12}, "cpu": {"requestCPU": 11}, "description": "5QgXjvyGJPN4eXbJ", "memory": {"requestMemory": 63}, "replica": {"maxReplica": 97, "minReplica": 75}, "scenario": "s2GcyomQoIXimBJe", "vmSharingConfiguration": "hyxlNsjUgxBkF6wF"}' \
    'PoJeQediogEhhM2r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    'IizGdKvOPdq5xrgx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "Smy1DN9LFkYW5DQy"}' \
    'j4bj5Ro2ogaKt2uj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "QSa3Zdb65UXmy0Zp"}' \
    '6iIaTIKUkmkk9QM0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'NBMA9ORxpzwLR2AK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["6eXUGPJsw1fiP80G", "9Pclxcft2ulIJzPy", "rVEiOG4UcqsuGKHh"]}' \
    'MRWLVd3DlhLuIpom' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 79}, "cpu": {"requestCPU": 66}, "memory": {"requestMemory": 63}, "replica": {"maxReplica": 38, "minReplica": 6}, "vmSharingConfiguration": "m1MiaI1mX2tJoARt"}' \
    'dbBe7udsMrok0WvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateAppResourcesV2' test.out

#- 34 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "YYnx4V709xbnGezK", "preferredLimitReplica": 38, "requestReason": "6fH24T805tVg8JqU"}' \
    '0jZpjvsugAOS7u8R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 35 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'iWyerCSa8SRgwsAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetListOfSecretsV2' test.out

#- 36 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "1ik1jglaDXTvKCWw", "description": "NTAhd2wrS0uPdjhd", "source": "inpng5BLy8wbhMss", "value": "AHjapIkY9Rf4wP57"}' \
    'dBZNR88YbCtmKy8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "9zVrjfGXZnqAQUoY", "value": "1GjlIIk0iKoTTS1j"}' \
    '02o7JjTXAQN0qdsk' \
    'dQV0TqI8EFnmDbxI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'xi4YKlONk2Q5Y4Jv' \
    'aizwiilatuUjjt9l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'IMGql5ElEa9EIIlG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'cHB3CfR3ncDlwi3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    '3MFFJ1KesKoELCpo' \
    'bBEG8X645xpdXpai' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "0rYaT5hOPjaf3H0t", "notificationType": {"YighU0VUfcYHJbBf": true, "cM4NTwr0KHaAsmTe": false, "7HVWqMkNSawQUWDF": true}, "userId": "vJBWic7UkBeIXuqD"}, {"emailAddress": "uAXI66bQ71w0deoV", "notificationType": {"9Lx5RDA1l2XcrciY": true, "ZGCHsZYoLfR1KtOv": true, "y0b65uvuKNuy0ytZ": false}, "userId": "7M6Nzy1adnSKOLFK"}, {"emailAddress": "x1dX4LuWJu3pDMUA", "notificationType": {"eeZ97SBROPYuG6Xq": true, "6oo7G73zdxTgOfnw": false, "nsv4W2OJhtafxMSJ": false}, "userId": "HzGlLKWUtDQs61OQ"}]}' \
    'AoxyyQpRWCiiPDGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "hNPEwiJCf2XJVrlz", "subscribers": [{"emailAddress": "qQls1ozhLVA3kE8j", "userId": "KvgatOEBM70TdlNB"}, {"emailAddress": "JYOmpu1VCarzBsV6", "userId": "xnZ5Jrzzjrcaug6C"}, {"emailAddress": "WVG8SWP3glU6musw", "userId": "VJnNnN7kAa7j0riF"}]}' \
    'c5HTHQIoVsGo7dwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    '9DBqFKHQkETJyTlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "rwDTnoujQD4IEiH9"}' \
    'Z5qXn3aoRtlqOECo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'hViHA5CzgFSy8X1A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    '3PrIfapq5AAeMe4L' \
    '3mDWORBVXTIIJM9X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'sYIIZxiXNMR9BgaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "vQkqsGnmyo5JJTUV", "description": "mb8GEXFTlEMEsFzY", "source": "qwgK1Np5nodqpLm7", "value": "FhJBNXzAFdO0Khqf"}' \
    '6kiTdSGv2LFjAKY7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": true, "description": "zRmDD0jJvlfV5Oem", "value": "PYdYT7DROCjtuzFM"}' \
    'bAG9YI89hmguB8FO' \
    'TjMLo4b9rIzqYkEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'styVTBcrM8rG0rH0' \
    'zcswwVeMK6MbGIVI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["u8vvwLc7KY3uVoJX", "TIMtpgkieDyF97lG", "dMiHKxbWCYzo8yO2"], "deploymentIds": ["KTK9tmmOnYnOpas6", "ghP1y4Zi7s7QBlk4", "4Z44B1GZgKg4uKxa"], "statuses": ["CgcGLuC3brWdTYCf", "HkIySok5DiXZtLW8", "7rGysryod3dNQrms"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'ApRA6HX3RwrKt2ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'ozL0TOg54vCE48L5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteDeploymentV2' test.out

#- 56 GetResourcesLimits
$PYTHON -m $MODULE 'csm-get-resources-limits' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetResourcesLimits' test.out

#- 57 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    'oLF6M4lNa4JUMSHN' \
    'gqRqCV7usamANkZl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetNotificationSubscriberListV3' test.out

#- 58 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'OX9Sfo95HgXqKhTP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeleteSubscriptionAppNotificationV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
