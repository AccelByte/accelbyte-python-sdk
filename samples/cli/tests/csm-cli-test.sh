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
csm-save-secret-v2 '{"applyMask": true, "configName": "u0MesTCf9x4rt69l", "description": "na7qxNeIxPz6MbwL", "source": "6IY69z1UaLqYSYWy", "value": "tLPziZMdjxcBZufQ"}' 'xGiHPllG4cYEzfTD' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"applyMask": true, "description": "ZBm3MqHcUmLZZbSq", "value": "b8RwNmn9HrNQy4uZ"}' 'AAiE0mit9RGCCHYz' 'UOcEdscKHPEqgA8y' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'u7Vk6Jt4Ymos9Jcd' 'os4fYcTVU6RBt0zY' --login_with_auth "Bearer foo"
csm-start-app-v2 'oMcHyCUEXlAvxJMd' --login_with_auth "Bearer foo"
csm-stop-app-v2 'alwSyliWMNW5NyLu' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 '0M3VHh2EI8JlDbPW' 'bQ6Q9lNmqRBaAkLn' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"notificationType": {"vxkT1X68cmDc3fxU": true, "MyKrQpM4hkkK6KKX": true, "3xoJ8aeCnaLpUKp4": false}, "userId": "YUDjasWIPUvmEejt"}, {"notificationType": {"GeoyIPa8ZRrvjj7i": false, "Ygc2L4jk4Lo0LSP0": false, "jTvhZNkSQ70D0H6B": true}, "userId": "ksUC9b6i5lZC9xv3"}, {"notificationType": {"2e8c5csSovoqsZNB": false, "bmXgdAPh1EThG96g": true, "ZxfgPubTDIHrvqAT": false}, "userId": "EeERmDnyeFoF7VSZ"}]}' '6pf3vneSD2Tb3g7m' --login_with_auth "Bearer foo"
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
    '{"applyMask": true, "configName": "G9Pclxcft2ulIJzP", "description": "yrVEiOG4UcqsuGKH", "source": "hMRWLVd3DlhLuIpo", "value": "mM8sm1MiaI1mX2tJ"}' \
    'oARtdbBe7udsMrok' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SaveSecretV2' test.out

#- 37 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"applyMask": false, "description": "vGYYnx4V709xbnGe", "value": "zKsDwG2omOR2nvYI"}' \
    '9TVqJdvzcWbfUpaX' \
    'p5JMl5LL4bTxBmZj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateSecretV2' test.out

#- 38 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'drrIxsB0NRsB1fPq' \
    'qRRulpqpymDkQhtr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteSecretV2' test.out

#- 39 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'HWwRVnwVBOqOHi8p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'StartAppV2' test.out

#- 40 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'WGd1juYhiqjRJOqB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'StopAppV2' test.out

#- 41 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    '5F93zFQbJndUDpdO' \
    'NneAczbBdHb2slt7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetNotificationSubscriberListV2' test.out

#- 42 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"notificationType": {"1B1SmZp2JZp50CnP": false, "1j02o7JjTXAQN0qd": true, "cLjMXJRk0eaKQDOJ": true}, "userId": "Ixi4YKlONk2Q5Y4J"}, {"notificationType": {"vaizwiilatuUjjt9": false, "mNqF7Bl0LcghVHfP": true, "cHB3CfR3ncDlwi3v": false}, "userId": "FFJ1KesKoELCpobB"}, {"notificationType": {"EG8X645xpdXpai0r": false, "aT5hOPjaf3H0tYig": false, "g1yLVbLFzHEP8cM4": true}, "userId": "3VgsZXiR1DJ7HVWq"}]}' \
    'MkNSawQUWDFJvJBW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 43 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "ic7UkBeIXuqDuAXI", "subscribers": [{"userId": "66bQ71w0deoV9Lx5"}, {"userId": "RDA1l2XcrciYNEzv"}, {"userId": "SZIPkhSgORcz5S5B"}]}' \
    'vmgBLxh4ijFnE3Ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SubscribeAppNotificationV2' test.out

#- 44 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'm69qSZ7PC6f6QkmZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'GetSubscriptionV2Handler' test.out

#- 45 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "XElW9YfRSse6AAz3"}' \
    'S4czz0QKFlAVmVLu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SubscribeV2Handler' test.out

#- 46 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    '4AOec0z8eBeeoip6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'UnsubscribeV2Handler' test.out

#- 47 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    '8J1nsv4W2OJhtafx' \
    'MSJlHeb34sZKHcl5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 48 DeleteSubscriptionAppNotificationV2
eval_tap 0 48 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 49 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'LLLOexL4fZvWtND2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListOfVariablesV2' test.out

#- 50 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": true, "configName": "DGQhNPEwiJCf2XJV", "description": "rlzqQls1ozhLVA3k", "source": "E8jKvgatOEBM70Td", "value": "lNBJYOmpu1VCarzB"}' \
    'sV6xnZ5Jrzzjrcau' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'SaveVariableV2' test.out

#- 51 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "hLd3Knaknoed9DHh", "value": "LOqQGhCUr6iTrjyE"}' \
    'garAdNJOIG36I6tR' \
    'bRcrEveMdAdiPKDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateVariableV2' test.out

#- 52 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'VSC00PYeDcagginx' \
    'nFIna3yddcbsPheT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteVariableV2' test.out

#- 53 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["H26IUJNvYuGRUvpZ", "aHCuESOiIZsMfB4Z", "H3mtgWgU4pCAKxeE"], "deploymentIds": ["70CaunQNxot371W9", "G4AvQkqsGnmyo5JJ", "TUVmb8GEXFTlEMEs"], "statuses": ["FzYqwgK1Np5nodqp", "Lm7FhJBNXzAFdO0K", "hqf6kiTdSGv2LFjA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfDeploymentV2' test.out

#- 54 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'KY7CbgsWqFWZX7kP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetDeploymentV2' test.out

#- 55 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'Bom8F9GLLTG8phc3' \
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
