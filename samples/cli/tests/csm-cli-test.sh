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
csm-get-notification-subscriber-list-v3 'sPwVOEDSJsEK5QpN' 'hlI2iS5EpGhhvXYc' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 'k0upMzUYnb76tFkE' --login_with_auth "Bearer foo"
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
echo "1..74"

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
    'ORV3bu1bNCtX7W40' \
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
    '{"appNames": ["V6Do5sYadCCFrHHC", "3DpZxkrQDXuNFviM", "arv8mnfHK8CCmE2l"], "appStatuses": ["PnsbD3SGEdlwuUcc", "E536ugBp3HBvepnD", "CjgyJlXe36mgWjLf"], "fuzzyAppName": "Fmteue9nzJ6fH24T", "scenario": "805tVg8JqU0jZpjv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'sugAOS7u8RiWyerC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 91}, "cpu": {"requestCPU": 2}, "description": "a8SRgwsAj1ik1jgl", "memory": {"requestMemory": 1}, "replica": {"maxReplica": 38, "minReplica": 60}, "scenario": "B1fPqqRRulpqpymD", "vmSharingConfiguration": "kQhtrHWwRVnwVBOq"}' \
    'OHi8pWGd1juYhiqj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    'RJOqB5F93zFQbJnd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "UDpdONneAczbBdHb"}' \
    '2slt71B1SmZp2JZp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateSubscriptionHandler
$PYTHON -m $MODULE 'csm-create-subscription-handler' \
    '{"topicNames": ["50CnPb71ORYcmQbT", "U5JX8ccLjMXJRk0e", "aKQDOJvrTefglSs6"]}' \
    'g4iY9u02aCNYIWek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateSubscriptionHandler' test.out

#- 31 UnsubscribeTopicHandler
$PYTHON -m $MODULE 'csm-unsubscribe-topic-handler' \
    'p18lOC3mNqF7Bl0L' \
    'cghVHfPEspxwhRON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UnsubscribeTopicHandler' test.out

#- 32 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "0bc1eMbEIjowLqc3"}' \
    'ecjXJbZDKKoxLE1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CreateDeploymentV2' test.out

#- 33 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    '3Dymtj3giPg4x4yi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetAppImageListV2' test.out

#- 34 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["PX6ues1Hhhkg1yLV", "bLFzHEP8cM4NTwr0", "KHaAsmTej52WKi6t"]}' \
    'ArAURt9plCSVq8Pd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'DeleteAppImagesV2' test.out

#- 35 CreateNoSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-credential-v2' \
    '{"password": "H6hJPUAc0RVwXgAg", "username": "ntLMCuaXBWQi6BqP"}' \
    'g4xr0lCancUZGCHs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseCredentialV2' test.out

#- 36 GetNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-no-sql-database-v2' \
    'ZYoLfR1KtOv7Zy0b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetNoSQLDatabaseV2' test.out

#- 37 CreateNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-v2' \
    '{"dbName": "65uvuKNuy0ytZQ7M", "password": "6Nzy1adnSKOLFKx1", "username": "dX4LuWJu3pDMUAee"}' \
    'Z97SBROPYuG6XqP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreateNoSQLDatabaseV2' test.out

#- 38 DeleteNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-no-sql-database-v2' \
    'oo7G73zdxTgOfnwI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteNoSQLDatabaseV2' test.out

#- 39 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 7}, "cpu": {"requestCPU": 26}, "memory": {"requestMemory": 24}, "replica": {"maxReplica": 38, "minReplica": 82}, "vmSharingConfiguration": "v4W2OJhtafxMSJlH"}' \
    'eb34sZKHcl5LLLOe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateAppResourcesV2' test.out

#- 40 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "xL4fZvWtND2tcBFp", "preferredLimitReplica": 85, "requestReason": "8lNtFEJ7tnkY6Mca"}' \
    '5afj12K2IzrBvvWm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 41 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    '4udE0OXudXgNne8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetListOfSecretsV2' test.out

#- 42 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "JATwlc6esUp6Sw1I", "description": "98jeZQ7hfxnhLd3K", "source": "naknoed9DHhLOqQG", "value": "hCUr6iTrjyEgarAd"}' \
    'NJOIG36I6tRbRcrE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SaveSecretV2' test.out

#- 43 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "veMdAdiPKDUVSC00", "value": "PYeDcagginxnFIna"}' \
    '3yddcbsPheTH26IU' \
    'JNvYuGRUvpZaHCuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateSecretV2' test.out

#- 44 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'SOiIZsMfB4ZH3mtg' \
    'WgU4pCAKxeE70Cau' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'DeleteSecretV2' test.out

#- 45 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'nQNxot371W9G4AvQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'StartAppV2' test.out

#- 46 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'kqsGnmyo5JJTUVmb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'StopAppV2' test.out

#- 47 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    '8GEXFTlEMEsFzYqw' \
    'gK1Np5nodqpLm7Fh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNotificationSubscriberListV2' test.out

#- 48 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "JBNXzAFdO0Khqf6k", "notificationType": {"iTdSGv2LFjAKY7Cb": false, "mDD0jJvlfV5OemPY": false, "GLLTG8phc3n4iLoI": false}, "userId": "9YI89hmguB8FOTjM"}, {"emailAddress": "Lo4b9rIzqYkEpsty", "notificationType": {"VTBcrM8rG0rH0zcs": true, "K7PpUlcIW32iK7MG": true, "wLc7KY3uVoJXTIMt": false}, "userId": "F8ZrQzP4zvtdxdbZ"}, {"emailAddress": "Upd6FJtHJ1pyVwyK", "notificationType": {"QLY6FEO65Rb3z7CY": false, "IlsHqffnrfsGlfPa": false, "KBwa3Ddb60ufPpzw": false}, "userId": "rWdTYCfHkIySok5D"}]}' \
    'iXZtLW87rGysryod' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 49 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "3dNQrmsApRA6HX3R", "subscribers": [{"emailAddress": "wrKt2ecozL0TOg54", "userId": "vCE48L5oLF6M4lNa"}, {"emailAddress": "4JUMSHNgqRqCV7us", "userId": "amANkZlOX9Sfo95H"}, {"emailAddress": "gXqKhTPkwfLM9uSy", "userId": "bRzWek2gZvRrvr0n"}]}' \
    '9d9lvccKMLhrTrcB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'SubscribeAppNotificationV2' test.out

#- 50 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'E2ItBS3KtKZWe8ao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetSubscriptionV2Handler' test.out

#- 51 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "FzAyBME74HUtipUW"}' \
    'YhWV1qx8CzPML52f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'SubscribeV2Handler' test.out

#- 52 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'aXUr9Sk4lq2faBcA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UnsubscribeV2Handler' test.out

#- 53 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'XXKlhvyH8paOJtxq' \
    'MPpcVfRwNj547fH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 54 DeleteSubscriptionAppNotificationV2
eval_tap 0 54 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 55 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'XrKEDpEY8VnocGAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetListOfVariablesV2' test.out

#- 56 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "DZhl0bQxFJ3sWCqQ", "description": "pQ2FbKPFMycMSQ4q", "source": "fAacR0LgB5BUXvjc", "value": "u2s6w3VifnKqmTSo"}' \
    'GH1XEfY6QAYn6WQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'SaveVariableV2' test.out

#- 57 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": true, "description": "6vSkVFWdsbYuVEGV", "value": "xYheR3j5mNZ6vwv7"}' \
    'K8Asvt1j1Rx59hes' \
    'NWy2NvZ85DDKDAF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateVariableV2' test.out

#- 58 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'KDsBZOuYQJ03BAHZ' \
    '7c53q7akMpcmnnx6' \
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
    '{"description": "RVBrop9v7aZK3h65", "topicName": "hbN15zfQSfQrtfF3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'CreateTopicHandler' test.out

#- 61 DeleteTopicHandler
$PYTHON -m $MODULE 'csm-delete-topic-handler' \
    'TQN0OcNDLr36vzoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteTopicHandler' test.out

#- 62 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["ZyjMQAg5mPYhrLTy", "U8OhgfY9JQYGF4bY", "XEcENx9xZlAchob4"], "deploymentIds": ["4lONDDwMvgI0HlyP", "R7wZNiVsF6xG2mXE", "QdbzIVy8alncV7vW"], "statuses": ["gSHdfo07UctPErqx", "yMyOK06MqQBErxgj", "VBycvU4PbmRDcrg0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetListOfDeploymentV2' test.out

#- 63 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'DjQjBECXvea7H1m2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetDeploymentV2' test.out

#- 64 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'lJFRZ3ZprZ60zMjh' \
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
    '{"maxDCU": 0.7311028868267437, "minDCU": 0.540910303560782, "profileName": "eh94TSenE5hCFkIf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'UpdateNoSQLClusterV2' test.out

#- 67 CreateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 0.9206660902656628, "minDCU": 0.356349116290543, "profileName": "eqZ18MH57l2Zsrh9"}' \
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

#- 73 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    '0ETtYmGukz3Mnlrj' \
    'cHp6B8Vj7rXFgDnD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetNotificationSubscriberListV3' test.out

#- 74 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'kdZ9bpjb1tdA3Qhj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'DeleteSubscriptionAppNotificationV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
