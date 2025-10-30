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
csm-create-no-sql-database-credential-v2 '{"password": "O35llzQRaT5kPxUf", "username": "ofvnnSuB0y5WUlrM"}' 'dI4sNveabntBSxTe' --login_with_auth "Bearer foo"
csm-get-no-sql-database-v2 'Iv53HGCiljvjKoyD' --login_with_auth "Bearer foo"
csm-create-no-sql-database-v2 '{"dbName": "6SCwGrncqmLtjQHA", "password": "f8TgoNm03VLisV6z", "username": "wPuo3td6TC6I3lMj"}' 'GSWN2laRlxfcjHfY' --login_with_auth "Bearer foo"
csm-delete-no-sql-database-v2 'akUCTqGkE7wcWfDs' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 23}, "cpu": {"requestCPU": 31}, "memory": {"requestMemory": 91}, "replica": {"maxReplica": 72, "minReplica": 91}, "vmSharingConfiguration": "WytLPziZMdjxcBZu"}' 'fQxGiHPllG4cYEzf' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "TD1ZBm3MqHcUmLZZ", "preferredLimitReplica": 2, "requestReason": "trkmu0hpDDWVAla2"}' 'l5BYNtIuS5S5XUdj' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 'soqwGyzzWi9gwQYv' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"configName": "7t1o7TTr1DmrhZv1", "description": "5T7quIOvBMcaYmvC", "source": "kGZ5dAgqxpBFmaLo", "value": "xozr6wfNPX2bOItR"}' 'MvqtlB2jJCSQT279' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"description": "ZZPYGu0rdlgdWyOt", "value": "Xi3choQrpOsDBU5S"}' 'epjChB3V0v52Dlym' '6puQ23xoJ8aeCnaL' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'pUKp44YUDjasWIPU' 'vmEejtGeoyIPa8ZR' --login_with_auth "Bearer foo"
csm-start-app-v2 'rvjj7il35MXbN9oC' --login_with_auth "Bearer foo"
csm-stop-app-v2 'MNqq98SjTvhZNkSQ' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 '70D0H6BXksUC9b6i' '5lZC9xv32e8c5csS' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"emailAddress": "ovoqsZNBdte9NDUP", "notificationType": {"VJf6c2Z0QZxfgPub": true, "DIHrvqAThuwjRHpK": false, "TlmVr9XuoJbRFQSK": false}, "userId": "bn4Xxtu7LQRENjEE"}, {"emailAddress": "ztx1WsYSiZqan0nS", "notificationType": {"BJroav91GXlvPG6b": false, "YReVHQipcCx9Zw5D": true, "0GqVvUfHQvsHXNUN": false}, "userId": "3PBddN8S48l9lyNA"}, {"emailAddress": "pflxqMrj3oZk03QX", "notificationType": {"cKMDYDDxHSZjtqXy": true, "8f7Gc26SaiGVkydw": false, "QG26yUZNmTBcvrbY": true}, "userId": "DG8aMVGLiBNrDjqo"}]}' 'xcwgGLXpUL4pp2nc' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "YAHdNzDmeIP6rOvD", "subscribers": [{"emailAddress": "z9KOsb392k6YmJFf", "userId": "RByjlBiuFM3FIoVk"}, {"emailAddress": "8T3GpAnkCmBUqg2S", "userId": "CnqntX9y1aZSWMiV"}, {"emailAddress": "i10sG6vxkfUcmqRR", "userId": "bceJ5i0EeDxOgBnh"}]}' 'hqElIaDml48wdNFL' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'Tm5T50x9WT0GfH2r' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "tOa4EXsXzOXQAk4m"}' 'qrxzTtuLl4XlbGL8' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'QOxtjzm8y2wNhmwo' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'YZyI4EFZKBcYrCEA' 'E7WIsfmx40NLRc6m' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 '8heKnWhzfe2Nubeo' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": false, "configName": "FeIaFQCYoDPICpnd", "description": "uEEQlULdJz4mnRBk", "source": "MNxvvKgAT8mJrYq6", "value": "hRkloqxM3gpwxcfM"}' 'y9XzjjI5YbsKoADk' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": true, "description": "sa13lk1dQBHO86Il", "value": "BhnetU4RwTqUXlTD"}' 'BzOuYsaZA2yyd4mb' 'qoOfADMMAXFaY9eK' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'a699bRVhyaKwwrAP' '2aMlu7WtjCtoYetO' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["O847g8OudOfjnCuH", "Z3c46IjGa23YvYmm", "Dg7VYPXIuvUYTZBR"], "deploymentIds": ["ujIUE1Tq5jyAZvkR", "CMNFIurjh2imdb4r", "bkXj0ZwsVC0gL97Z"], "statuses": ["VJSPqJiwv1qlYB1R", "SKs6gQxC3Gb7S0o4", "zGYY7KQI1AeFgPqa"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'Okvo1aolB4lkKB4E' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'YOkQ1jMD3cym8xIf' --login_with_auth "Bearer foo"
csm-get-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-no-sql-cluster-v2 '{"maxDCU": 0.17565062065000636, "minDCU": 0.6557939338638374, "profileName": "VW2grREOLx0KOww3"}' --login_with_auth "Bearer foo"
csm-create-no-sql-cluster-v2 '{"maxDCU": 0.5394771506002104, "minDCU": 0.5595393055762616, "profileName": "CQLfl7MUBG7qtPu6"}' --login_with_auth "Bearer foo"
csm-delete-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-no-sql-access-tunnel-v2 --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v3 '4yAtURKLRkb738HG' 'S6rDgMdIIlhS1fSi' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 'M9331m7Ta1PsKc50' --login_with_auth "Bearer foo"
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
echo "1..67"

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
    'Kv6ecnEevcAx2K2z' \
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
    '{"appNames": ["kRenmPZnGBt4P7Wn", "bdSJtjX7ZshZyZl5", "x4bRXBHUTrDzZSKs"], "appStatuses": ["cfOcYu3dpCROYqUi", "GKXVFCmpo6sPwVOE", "DSJsEK5QpNhlI2iS"], "fuzzyAppName": "5EpGhhvXYck0upMz", "scenario": "UYnb76tFkEORV3bu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetAppListV2' test.out

#- 26 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    '1bNCtX7W40V6Do5s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetAppV2' test.out

#- 27 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 0}, "cpu": {"requestCPU": 86}, "description": "dCCFrHHC3DpZxkrQ", "memory": {"requestMemory": 60}, "replica": {"maxReplica": 62, "minReplica": 16}, "scenario": "uNFviMarv8mnfHK8", "vmSharingConfiguration": "CCmE2lPnsbD3SGEd"}' \
    'lwuUccE536ugBp3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateAppV2' test.out

#- 28 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    'BvepnDCjgyJlXe36' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteAppV2' test.out

#- 29 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "mgWjLfFmteue9nzJ"}' \
    '6fH24T805tVg8JqU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateAppV2' test.out

#- 30 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "0jZpjvsugAOS7u8R"}' \
    'iWyerCSa8SRgwsAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CreateDeploymentV2' test.out

#- 31 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    '1ik1jglaDXTvKCWw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppImageListV2' test.out

#- 32 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["NTAhd2wrS0uPdjhd", "inpng5BLy8wbhMss", "AHjapIkY9Rf4wP57"]}' \
    'dBZNR88YbCtmKy8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteAppImagesV2' test.out

#- 33 CreateNoSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-credential-v2' \
    '{"password": "9zVrjfGXZnqAQUoY", "username": "1GjlIIk0iKoTTS1j"}' \
    '02o7JjTXAQN0qdsk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'CreateNoSQLDatabaseCredentialV2' test.out

#- 34 GetNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-no-sql-database-v2' \
    'dQV0TqI8EFnmDbxI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetNoSQLDatabaseV2' test.out

#- 35 CreateNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-v2' \
    '{"dbName": "xi4YKlONk2Q5Y4Jv", "password": "aizwiilatuUjjt9l", "username": "IMGql5ElEa9EIIlG"}' \
    'cHB3CfR3ncDlwi3v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreateNoSQLDatabaseV2' test.out

#- 36 DeleteNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-no-sql-database-v2' \
    '3MFFJ1KesKoELCpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeleteNoSQLDatabaseV2' test.out

#- 37 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 3}, "cpu": {"requestCPU": 74}, "memory": {"requestMemory": 57}, "replica": {"maxReplica": 75, "minReplica": 63}, "vmSharingConfiguration": "oxLE1Y3Dymtj3giP"}' \
    'g4x4yiPX6ues1Hhh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateAppResourcesV2' test.out

#- 38 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "kg1yLVbLFzHEP8cM", "preferredLimitReplica": 17, "requestReason": "NTwr0KHaAsmTej52"}' \
    'WKi6tArAURt9plCS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 39 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'Vq8PdH6hJPUAc0RV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetListOfSecretsV2' test.out

#- 40 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "wXgAgntLMCuaXBWQ", "description": "i6BqPg4xr0lCancU", "source": "ZGCHsZYoLfR1KtOv", "value": "7Zy0b65uvuKNuy0y"}' \
    'tZQ7M6Nzy1adnSKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'SaveSecretV2' test.out

#- 41 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "LFKx1dX4LuWJu3pD", "value": "MUAeeZ97SBROPYuG"}' \
    '6XqP6oo7G73zdxTg' \
    'OfnwIdlNa29fDLh7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdateSecretV2' test.out

#- 42 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    '41IslKHzGlLKWUtD' \
    'Qs61OQAoxyyQpRWC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'DeleteSecretV2' test.out

#- 43 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'iiPDGQhNPEwiJCf2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'StartAppV2' test.out

#- 44 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'XJVrlzqQls1ozhLV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'StopAppV2' test.out

#- 45 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    'A3kE8jKvgatOEBM7' \
    '0TdlNBJYOmpu1VCa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'GetNotificationSubscriberListV2' test.out

#- 46 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "rzBsV6xnZ5Jrzzjr", "notificationType": {"caug6CWVG8SWP3gl": true, "6muswVJnNnN7kAa7": false, "yEgarAdNJOIG36I6": true}, "userId": "7dwV9DBqFKHQkETJ"}, {"emailAddress": "yTlUrwDTnoujQD4I", "notificationType": {"EiH9Z5qXn3aoRtlq": true, "H26IUJNvYuGRUvpZ": false, "1A3PrIfapq5AAeMe": false}, "userId": "3mDWORBVXTIIJM9X"}, {"emailAddress": "sYIIZxiXNMR9BgaW", "notificationType": {"cFX3SUBhyoTsMWPA": true, "mb8GEXFTlEMEsFzY": true, "3BOdkocVTd4BxqGW": false}, "userId": "6mTJ0sQs6XNbjvqh"}]}' \
    'nUVLWu8olKdxL6oz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 47 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "RmDD0jJvlfV5OemP", "subscribers": [{"emailAddress": "YdYT7DROCjtuzFMb", "userId": "AG9YI89hmguB8FOT"}, {"emailAddress": "jMLo4b9rIzqYkEps", "userId": "tyVTBcrM8rG0rH0z"}, {"emailAddress": "cswwVeMK6MbGIVIu", "userId": "8vvwLc7KY3uVoJXT"}]}' \
    'IMtpgkieDyF97lGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SubscribeAppNotificationV2' test.out

#- 48 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'MiHKxbWCYzo8yO2K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetSubscriptionV2Handler' test.out

#- 49 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "TK9tmmOnYnOpas6g"}' \
    'hP1y4Zi7s7QBlk44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'SubscribeV2Handler' test.out

#- 50 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'Z44B1GZgKg4uKxaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UnsubscribeV2Handler' test.out

#- 51 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'gcGLuC3brWdTYCfH' \
    'kIySok5DiXZtLW87' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 52 DeleteSubscriptionAppNotificationV2
eval_tap 0 52 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 53 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'rGysryod3dNQrmsA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetListOfVariablesV2' test.out

#- 54 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": true, "configName": "Ek4mTIpUA9gxo8SV", "description": "38nEhoXmM2W7l6jH", "source": "MA2rG3nakopAywel", "value": "u01nryEJ0NqoTow0"}' \
    'qiOiC4j0iktm0ZPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'SaveVariableV2' test.out

#- 55 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "fLM9uSybRzWek2gZ", "value": "vRrvr0n9d9lvccKM"}' \
    'LhrTrcBE2ItBS3Kt' \
    'KZWe8aoFzAyBME74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateVariableV2' test.out

#- 56 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'HUtipUWYhWV1qx8C' \
    'zPML52faXUr9Sk4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'DeleteVariableV2' test.out

#- 57 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["q2faBcAXXKlhvyH8", "paOJtxqMPpcVfRwN", "j547fH0XrKEDpEY8"], "deploymentIds": ["VnocGAjci0V3tBf2", "jnHGKXphn50c9tNL", "DljhZ2jxLRX3z46O"], "statuses": ["CaGBeMfPlNos4yBR", "jrERHEonAZR8GmEu", "0q1p6QCyY6vSkVFW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetListOfDeploymentV2' test.out

#- 58 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'dsbYuVEGVxYheR3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetDeploymentV2' test.out

#- 59 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    '5mNZ6vwv7K8Asvt1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteDeploymentV2' test.out

#- 60 GetNoSQLClusterV2
$PYTHON -m $MODULE 'csm-get-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetNoSQLClusterV2' test.out

#- 61 UpdateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-update-no-sql-cluster-v2' \
    '{"maxDCU": 0.15251317423298927, "minDCU": 0.8687298432997749, "profileName": "Rx59hesNWy2NvZ85"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateNoSQLClusterV2' test.out

#- 62 CreateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 0.4735656339987745, "minDCU": 0.47941587077567027, "profileName": "KDAF8KDsBZOuYQJ0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'CreateNoSQLClusterV2' test.out

#- 63 DeleteNoSQLClusterV2
$PYTHON -m $MODULE 'csm-delete-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'DeleteNoSQLClusterV2' test.out

#- 64 GetNoSQLAccessTunnelV2
$PYTHON -m $MODULE 'csm-get-no-sql-access-tunnel-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetNoSQLAccessTunnelV2' test.out

#- 65 GetResourcesLimits
$PYTHON -m $MODULE 'csm-get-resources-limits' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetResourcesLimits' test.out

#- 66 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    '3BAHZ7c53q7akMpc' \
    'mnnx6RVBrop9v7aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetNotificationSubscriberListV3' test.out

#- 67 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'K3h65hbN15zfQSfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'DeleteSubscriptionAppNotificationV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
