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
csm-create-subscription-handler '{"topicNames": ["erXpc1C8XfwHuKeb", "9l3rGN9A3sNm84hd", "dSpHt0P7MIIR7Cky"]}' 'F6C7duuyZ0GhDogq' --login_with_auth "Bearer foo"
csm-unsubscribe-topic-handler 'rhBRd8lDR6qVNPRZ' 'YdFLIAjGGJddVCvu' --login_with_auth "Bearer foo"
csm-create-deployment-v2 '{"imageTag": "9vx5KQ7KYnIuMBva"}' 'O35llzQRaT5kPxUf' --login_with_auth "Bearer foo"
csm-get-app-image-list-v2 'ofvnnSuB0y5WUlrM' --login_with_auth "Bearer foo"
csm-delete-app-images-v2 '{"imageTags": ["dI4sNveabntBSxTe", "Iv53HGCiljvjKoyD", "6SCwGrncqmLtjQHA"]}' 'f8TgoNm03VLisV6z' --login_with_auth "Bearer foo"
csm-create-no-sql-database-credential-v2 '{"password": "wPuo3td6TC6I3lMj", "username": "GSWN2laRlxfcjHfY"}' 'akUCTqGkE7wcWfDs' --login_with_auth "Bearer foo"
csm-get-no-sql-database-v2 'lpJSqGAXQ0yYoNRK' --login_with_auth "Bearer foo"
csm-create-no-sql-database-v2 '{"dbName": "d3IL5TAQ6iiPlSC2", "password": "uE4o5Vwdo3fePqIJ", "username": "A8IHtrkmu0hpDDWV"}' 'Ala2l5BYNtIuS5S5' --login_with_auth "Bearer foo"
csm-delete-no-sql-database-v2 'XUdjsoqwGyzzWi9g' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 45}, "cpu": {"requestCPU": 62}, "memory": {"requestMemory": 87}, "replica": {"maxReplica": 35, "minReplica": 12}, "vmSharingConfiguration": "v7t1o7TTr1DmrhZv"}' '15T7quIOvBMcaYmv' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "CkGZ5dAgqxpBFmaL", "preferredLimitReplica": 29, "requestReason": "JMdalwSyliWMNW5N"}' 'yLu0M3VHh2EI8JlD' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 'bPWbQ6Q9lNmqRBaA' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"configName": "kLnvxkT1X68cmDc3", "description": "fxU8MyKrQpM4hkkK", "source": "6KKXNB3Gv0IqmF51", "value": "TkhjYnaq6foWvXa3"}' 'bMrXsDr6kILsSSyD' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"description": "dmykmoPYgc2L4jk4", "value": "Lo0LSP0pf4IxjUkl"}' '535X3ateEKDpADz1' 'x3poD3Qgb3boLQQ1' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'MzH7Qm8bwbmXgdAP' 'h1EThG96gAFKK2WD' --login_with_auth "Bearer foo"
csm-start-app-v2 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
csm-stop-app-v2 'nyeFoF7VSZ6pf3vn' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 'eSD2Tb3g7mSQUhAE' 'trmjqU6YE3p4lSck' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"emailAddress": "0ZHn5GI39YBHqaTH", "notificationType": {"eKtW18iGeUlc9d9s": false, "x9Zw5D2L7vIYhGGS": true, "HQvsHXNUNe4mhgo5": true}, "userId": "48l9lyNApflxqMrj"}, {"emailAddress": "3oZk03QXcKMDYDDx", "notificationType": {"HSZjtqXyJ58f7Gc2": false, "SaiGVkydwYWQG26y": true, "ZNmTBcvrbYCwZtxF": true}, "userId": "LiBNrDjqoxcwgGLX"}, {"emailAddress": "pUL4pp2ncYAHdNzD", "notificationType": {"meIP6rOvDz9KOsb3": true, "k6YmJFfRByjlBiuF": true, "3FIoVk8T3GpAnkCm": true}, "userId": "PxB1UskYs4Yw20DO"}]}' 'qOBSC2DKHRuPMMWH' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "8Yb33T5UBJCjfcnL", "subscribers": [{"emailAddress": "RfxeCSz9WEi8Kllo", "userId": "eH0JT1yduat2vQR3"}, {"emailAddress": "biBfsu4jmsRE2w1y", "userId": "EkLgh3tIYt4SqYUT"}, {"emailAddress": "LDx9gIiDandpGT2t", "userId": "24aOMh5eC3IHeHSK"}]}' 'LCa3xreNDUWehwH3' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'q31A806DJgas4b6z' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "3LNUj7fdgLA84Z8Y"}' 'Yk6QEgJjBbEDoNf3' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'n0hEoRCAcf80zfFy' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'abWAgIUXiI07A68e' 'aqC2J9jyEW6GLbc0' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'NaKDUL3sa13lk1dQ' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": true, "configName": "3bit0VWn3CO39PXD", "description": "NxtXgeO3FgkXhjDz", "source": "aQY3snn2ZkP7cFdP", "value": "43e5dC9XIBudfZgr"}' 'bHDIDm4hMzF4Txod' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": false, "description": "toYetOO847g8OudO", "value": "fjnCuHZ3c46IjGa2"}' '3YvYmmDg7VYPXIuv' 'UYTZBRujIUE1Tq5j' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'yAZvkRCMNFIurjh2' 'imdb4rbkXj0ZwsVC' --login_with_auth "Bearer foo"
csm-list-topics-handler --login_with_auth "Bearer foo"
csm-create-topic-handler '{"description": "0gL97ZVJSPqJiwv1", "topicName": "qlYB1RSKs6gQxC3G"}' --login_with_auth "Bearer foo"
csm-delete-topic-handler 'b7S0o4zGYY7KQI1A' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["eFgPqaOkvo1aolB4", "lkKB4EYOkQ1jMD3c", "ym8xIfkOVW2grREO"], "deploymentIds": ["Lx0KOww3HICQLfl7", "MUBG7qtPu64yAtUR", "KLRkb738HGS6rDgM"], "statuses": ["dIIlhS1fSiM9331m", "7Ta1PsKc50Kv6ecn", "EevcAx2K2zkRenmP"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'ZnGBt4P7WnbdSJtj' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'X7ZshZyZl5x4bRXB' --login_with_auth "Bearer foo"
csm-get-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-no-sql-cluster-v2 '{"maxDCU": 0.5328803907375488, "minDCU": 0.75107051173064, "profileName": "TrDzZSKscfOcYu3d"}' --login_with_auth "Bearer foo"
csm-create-no-sql-cluster-v2 '{"maxDCU": 0.2548343204576482, "minDCU": 0.4674272028680093, "profileName": "ROYqUiGKXVFCmpo6"}' --login_with_auth "Bearer foo"
csm-delete-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-start-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-stop-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-no-sql-access-tunnel-v2 --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
csm-get-no-sql-app-list-v2 'sPwVOEDSJsEK5QpN' 'hlI2iS5EpGhhvXYc' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v3 'k0upMzUYnb76tFkE' 'ORV3bu1bNCtX7W40' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 'V6Do5sYadCCFrHHC' --login_with_auth "Bearer foo"
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
echo "1..75"

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
    '3DpZxkrQDXuNFviM' \
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
    '{"appNames": ["arv8mnfHK8CCmE2l", "PnsbD3SGEdlwuUcc", "E536ugBp3HBvepnD"], "appStatuses": ["CjgyJlXe36mgWjLf", "Fmteue9nzJ6fH24T", "805tVg8JqU0jZpjv"], "fuzzyAppName": "sugAOS7u8RiWyerC", "scenario": "Sa8SRgwsAj1ik1jg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'laDXTvKCWwNTAhd2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 47}, "cpu": {"requestCPU": 26}, "description": "rS0uPdjhdinpng5B", "memory": {"requestMemory": 76}, "replica": {"maxReplica": 33, "minReplica": 51}, "scenario": "OHi8pWGd1juYhiqj", "vmSharingConfiguration": "RJOqB5F93zFQbJnd"}' \
    'UDpdONneAczbBdHb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    '2slt71B1SmZp2JZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "50CnPb71ORYcmQbT"}' \
    'U5JX8ccLjMXJRk0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
$PYTHON -m $MODULE 'csm-create-subscription-handler' \
    '{"topicNames": ["aKQDOJvrTefglSs6", "g4iY9u02aCNYIWek", "p18lOC3mNqF7Bl0L"]}' \
    'cghVHfPEspxwhRON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
$PYTHON -m $MODULE 'csm-unsubscribe-topic-handler' \
    '0bc1eMbEIjowLqc3' \
    'ecjXJbZDKKoxLE1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "3Dymtj3giPg4x4yi"}' \
    'PX6ues1Hhhkg1yLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'bLFzHEP8cM4NTwr0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["KHaAsmTej52WKi6t", "ArAURt9plCSVq8Pd", "H6hJPUAc0RVwXgAg"]}' \
    'ntLMCuaXBWQi6BqP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-credential-v2' \
    '{"password": "g4xr0lCancUZGCHs", "username": "ZYoLfR1KtOv7Zy0b"}' \
    '65uvuKNuy0ytZQ7M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-no-sql-database-v2' \
    '6Nzy1adnSKOLFKx1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-v2' \
    '{"dbName": "dX4LuWJu3pDMUAee", "password": "Z97SBROPYuG6XqP6", "username": "oo7G73zdxTgOfnwI"}' \
    'dlNa29fDLh741Isl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-no-sql-database-v2' \
    'KHzGlLKWUtDQs61O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 86}, "cpu": {"requestCPU": 83}, "memory": {"requestMemory": 54}, "replica": {"maxReplica": 9, "minReplica": 30}, "vmSharingConfiguration": "xL4fZvWtND2tcBFp"}' \
    'X8lNtFEJ7tnkY6Mc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "a5afj12K2IzrBvvW", "preferredLimitReplica": 25, "requestReason": "gatOEBM70TdlNBJY"}' \
    'Ompu1VCarzBsV6xn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'Z5Jrzzjrcaug6CWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "G8SWP3glU6muswVJ", "description": "nNnN7kAa7j0riFc5", "source": "HTHQIoVsGo7dwV9D", "value": "BqFKHQkETJyTlUrw"}' \
    'DTnoujQD4IEiH9Z5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "qXn3aoRtlqOECohV", "value": "iHA5CzgFSy8X1A3P"}' \
    'rIfapq5AAeMe4L3m' \
    'DWORBVXTIIJM9XsY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'IIZxiXNMR9BgaWcF' \
    'X3SUBhyoTsMWPAxU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'MkawaGpAyrIwMif3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'BOdkocVTd4BxqGWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    '6mTJ0sQs6XNbjvqh' \
    'nUVLWu8olKdxL6oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "RmDD0jJvlfV5OemP", "notificationType": {"YdYT7DROCjtuzFMb": true, "IllKlpO2pqiXJF3W": false, "o4b9rIzqYkEpstyV": true}, "userId": "PLG59e0k5ZtX6wK7"}, {"emailAddress": "PpUlcIW32iK7MGt1", "notificationType": {"ixY5rA1WoVeJIePF": false, "ZrQzP4zvtdxdbZUp": false, "WCYzo8yO2KTK9tmm": false}, "userId": "FEO65Rb3z7CYLM8I"}, {"emailAddress": "lsHqffnrfsGlfPaZ", "notificationType": {"KBwa3Ddb60ufPpzw": false, "rWdTYCfHkIySok5D": false, "E9LN9bvhOrHflIOd": false}, "userId": "X3viLvtEk4mTIpUA"}]}' \
    '9gxo8SV38nEhoXmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "2W7l6jHMA2rG3nak", "subscribers": [{"emailAddress": "opAywelu01nryEJ0", "userId": "NqoTow0qiOiC4j0i"}, {"emailAddress": "ktm0ZPLkLOsp0LZ5", "userId": "njN86Hl8kUXzt6bS"}, {"emailAddress": "c6bWvgpVyW9dD1kO", "userId": "mvrAejcq2LgkQuaS"}]}' \
    '7RBx3vim02jBOxrZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'DyvpcLYOWA8NjxOn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "aEok4nOOCzfsflhj"}' \
    'bngJOUn18G5MlfDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'k8aG40NlncceIZSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'gAIkgzh4pTU0Am4D' \
    'Zhl0bQxFJ3sWCqQp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'Q2FbKPFMycMSQ4qf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": true, "configName": "RX3z46OCaGBeMfPl", "description": "Nos4yBRjrERHEonA", "source": "ZR8GmEu0q1p6QCyY", "value": "6vSkVFWdsbYuVEGV"}' \
    'xYheR3j5mNZ6vwv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "8Asvt1j1Rx59hesN", "value": "Wy2NvZ85DDKDAF8K"}' \
    'DsBZOuYQJ03BAHZ7' \
    'c53q7akMpcmnnx6R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'VBrop9v7aZK3h65h' \
    'bN15zfQSfQrtfF3T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'DeleteVariableV2' test.out

#- 59 ListTopicsHandler
$PYTHON -m $MODULE 'csm-list-topics-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'ListTopicsHandler' test.out

#- 60 CreateTopicHandler
$PYTHON -m $MODULE 'csm-create-topic-handler' \
    '{"description": "QN0OcNDLr36vzohZ", "topicName": "yjMQAg5mPYhrLTyU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
$PYTHON -m $MODULE 'csm-delete-topic-handler' \
    '8OhgfY9JQYGF4bYX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["EcENx9xZlAchob44", "lONDDwMvgI0HlyPR", "7wZNiVsF6xG2mXEQ"], "deploymentIds": ["dbzIVy8alncV7vWg", "SHdfo07UctPErqxy", "MyOK06MqQBErxgjV"], "statuses": ["BycvU4PbmRDcrg0D", "jQjBECXvea7H1m2l", "JFRZ3ZprZ60zMjhT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'Heh94TSenE5hCFkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'f5weqZ18MH57l2Zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'DeleteDeploymentV2' test.out

#- 65 GetNoSQLClusterV2
$PYTHON -m $MODULE 'csm-get-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetNoSQLClusterV2' test.out

#- 66 UpdateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-update-no-sql-cluster-v2' \
    '{"maxDCU": 0.28670892117899005, "minDCU": 0.12772155934792018, "profileName": "90ETtYmGukz3Mnlr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 0.15857766836798692, "minDCU": 0.042037258567193536, "profileName": "Hp6B8Vj7rXFgDnDk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CreateNoSQLClusterV2' test.out

#- 68 DeleteNoSQLClusterV2
$PYTHON -m $MODULE 'csm-delete-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteNoSQLClusterV2' test.out

#- 69 StartNoSQLClusterV2
$PYTHON -m $MODULE 'csm-start-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'StartNoSQLClusterV2' test.out

#- 70 StopNoSQLClusterV2
$PYTHON -m $MODULE 'csm-stop-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'StopNoSQLClusterV2' test.out

#- 71 GetNoSQLAccessTunnelV2
$PYTHON -m $MODULE 'csm-get-no-sql-access-tunnel-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'GetNoSQLAccessTunnelV2' test.out

#- 72 GetResourcesLimits
$PYTHON -m $MODULE 'csm-get-resources-limits' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetResourcesLimits' test.out

#- 73 GetNoSQLAppListV2
$PYTHON -m $MODULE 'csm-get-no-sql-app-list-v2' \
    'dZ9bpjb1tdA3QhjC' \
    'MW64f4XhIjSoTB2N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetNoSQLAppListV2' test.out

#- 74 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    'MKtezapPr2QEPx3z' \
    'TxBGtEJIYppuUSsK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetNotificationSubscriberListV3' test.out

#- 75 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'oHw2hyd12uSE7BEv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'DeleteSubscriptionAppNotificationV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
