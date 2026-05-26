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
csm-list-app-ui --login_with_auth "Bearer foo"
csm-create-app-ui '{"name": "EAxcVpFrttufHIRd"}' --login_with_auth "Bearer foo"
csm-delete-app-ui 'H9UzVRiXbqlAw7r6' --login_with_auth "Bearer foo"
csm-upload-app-ui-file 'tmp.dat' 'W2ktQG0h5JAav5kR' --login_with_auth "Bearer foo"
csm-get-app-release-v1 'a62WopBJHPtcDs8b' --login_with_auth "Bearer foo"
csm-get-extend-file 'BZLCXLx8bbgorQeF' --login_with_auth "Bearer foo"
csm-public-get-messages --login_with_auth "Bearer foo"
csm-get-app-list-v2 '{"appNames": ["bQ1g7qbPngUNB1vR", "odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a"], "appStatuses": ["XlFcDtgOjchIua5t", "WEIC32ogW7olvbTg", "rhRTcPiSuL0Sly6X"], "fuzzyAppName": "M4OI18mAQLnzjMf8", "scenario": "GZ2WBZqxYG3aREAu"}' --login_with_auth "Bearer foo"
csm-get-app-v2 '2D6QVKNCWP75TB0i' --login_with_auth "Bearer foo"
csm-create-app-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 13}, "cpu": {"requestCPU": 31}, "description": "x4c8OumKtPDKJDXn", "memory": {"requestMemory": 25}, "replica": {"maxReplica": 96, "minReplica": 4}, "scenario": "68su8XfqlqNiTvB6", "vmSharingConfiguration": "SdAdIhUDrwoZ5Mec"}' 'dKi5r6QEa1ysLEzt' --login_with_auth "Bearer foo"
csm-delete-app-v2 'h6mXhzkzWkFeZSoE' --login_with_auth "Bearer foo"
csm-update-app-v2 '{"description": "AcBdW19m4eu6d5tA"}' '5jUmiTqpyhPFdxLz' --login_with_auth "Bearer foo"
csm-apply-app-config-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 65}, "cpu": {"requestCPU": 89}, "description": "QN05MYzYiKWe5dNR", "memory": {"requestMemory": 23}, "permissions": [{"action": 70, "resource": "jv7IPrDQQRgat0Se"}, {"action": 44, "resource": "Q7KYnIuMBvaO35ll"}, {"action": 52, "resource": "6Vpbsx5w8hqUI06U"}], "replica": {"maxReplica": 32, "minReplica": 43}, "scenario": "OXGSLmCVuHOPlLlk", "secrets": [{"name": "vR8sKgnuRkgghGoY", "value": "upD391C2qtPYokah"}, {"name": "FjkQsfCaTmt1d67F", "value": "XGk2s9Q0mPVo3twu"}, {"name": "0MesTCf9x4rt69ln", "value": "a7qxNeIxPz6MbwL6"}], "variables": [{"name": "IY69z1UaLqYSYWyt", "value": "LPziZMdjxcBZufQx"}, {"name": "GiHPllG4cYEzfTD1", "value": "ZBm3MqHcUmLZZbSq"}, {"name": "b8RwNmn9HrNQy4uZ", "value": "AAiE0mit9RGCCHYz"}], "vmSharingConfiguration": "UOcEdscKHPEqgA8y"}' 'u7Vk6Jt4Ymos9Jcd' --login_with_auth "Bearer foo"
csm-create-subscription-handler '{"topicNames": ["os4fYcTVU6RBt0zY", "oMcHyCUEXlAvxJMd", "alwSyliWMNW5NyLu"]}' '0M3VHh2EI8JlDbPW' --login_with_auth "Bearer foo"
csm-unsubscribe-topic-handler 'bQ6Q9lNmqRBaAkLn' 'vxkT1X68cmDc3fxU' --login_with_auth "Bearer foo"
csm-create-deployment-v2 '{"imageTag": "8MyKrQpM4hkkK6KK"}' 'XNB3Gv0IqmF51Tkh' --login_with_auth "Bearer foo"
csm-get-app-image-list-v2 'jYnaq6foWvXa3bMr' --login_with_auth "Bearer foo"
csm-delete-app-images-v2 '{"imageTags": ["XsDr6kILsSSyDdmy", "kmoPYgc2L4jk4Lo0", "LSP0pf4IxjUkl535"]}' 'X3ateEKDpADz1x3p' --login_with_auth "Bearer foo"
csm-create-key-value-credential-v2 '{"password": "oD3Qgb3boLQQ1MzH", "username": "7Qm8bwbmXgdAPh1E"}' 'ThG96gAFKK2WDgCc' --login_with_auth "Bearer foo"
csm-get-integration-app-key-value-cluster-v2 'xvONZm3EeERmDnye' --login_with_auth "Bearer foo"
csm-integrate-app-key-value-cluster-v2 '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": false}, "password": "oF7VSZ6pf3vneSD2", "resourceId": "Tb3g7mSQUhAEtrmj", "username": "qU6YE3p4lSck0ZHn"}' '5GI39YBHqaTHeKtW' --login_with_auth "Bearer foo"
csm-remove-integration-app-key-value-cluster-v2 '18iGeUlc9d9sogWa' --login_with_auth "Bearer foo"
csm-create-new-no-sql-database-credential-v2 '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "password": "CKNS0GqVvUfHQvsH", "username": "XNUNe4mhgo5QB65l"}' 'SAiYnNjkfZrQvGgb' --login_with_auth "Bearer foo"
csm-get-no-sql-database-v2 'LdLsFzHkBMr1yrOM' --login_with_auth "Bearer foo"
csm-create-no-sql-database-v2 '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "dbName": "tqXyJ58f7Gc26Sai", "password": "GVkydwYWQG26yUZN", "username": "mTBcvrbYCwZtxFHy"}' 'PLtI8ilbyDPUIj88' --login_with_auth "Bearer foo"
csm-delete-no-sql-database-v2 'cekdqCt81P1ktfIo' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 44}, "cpu": {"requestCPU": 9}, "memory": {"requestMemory": 26}, "replica": {"maxReplica": 70, "minReplica": 43}, "vmSharingConfiguration": "P6rOvDz9KOsb392k"}' '6YmJFfRByjlBiuFM' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "3FIoVk8T3GpAnkCm", "preferredLimitReplica": 57, "requestReason": "PxB1UskYs4Yw20DO"}' 'qOBSC2DKHRuPMMWH' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 '8Yb33T5UBJCjfcnL' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"configName": "RfxeCSz9WEi8Kllo", "description": "eH0JT1yduat2vQR3", "source": "biBfsu4jmsRE2w1y", "value": "EkLgh3tIYt4SqYUT"}' 'LDx9gIiDandpGT2t' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"description": "24aOMh5eC3IHeHSK", "value": "LCa3xreNDUWehwH3"}' 'q31A806DJgas4b6z' '3LNUj7fdgLA84Z8Y' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'Yk6QEgJjBbEDoNf3' 'n0hEoRCAcf80zfFy' --login_with_auth "Bearer foo"
csm-create-sql-database-credential-v2 '{"password": "abWAgIUXiI07A68e", "username": "aqC2J9jyEW6GLbc0"}' 'NaKDUL3sa13lk1dQ' --login_with_auth "Bearer foo"
csm-get-sql-database-v2 'BHO86IlBhnetU4Rw' --login_with_auth "Bearer foo"
csm-create-sql-database-v2 '{"acknowledgements": {"acceptSQLSecureCredentialHandling": true}, "dbName": "xtXgeO3FgkXhjDza", "password": "QY3snn2ZkP7cFdP4", "username": "3e5dC9XIBudfZgrb"}' 'HDIDm4hMzF4Txode' --login_with_auth "Bearer foo"
csm-delete-sql-database-v2 'nSrUTvfqU0bfoMm5' --login_with_auth "Bearer foo"
csm-start-app-v2 'cTtFWbotQyXJRcQW' --login_with_auth "Bearer foo"
csm-stop-app-v2 'smqPNs92epxk0i8V' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 'xsZNereSvf9699mC' 'EHThUJkETAsSp7gh' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"emailAddress": "4TeUTkOkAYfJB8AT", "notificationType": {"9t4Tv207Y2QD3oD5": false, "lYB1RSKs6gQxC3Gb": false, "0o4zGYY7KQI1AeFg": true}, "userId": "qaOkvo1aolB4lkKB"}, {"emailAddress": "4EYOkQ1jMD3cym8x", "notificationType": {"IfkOVW2grREOLx0K": true, "wGBCtohLtl9Zuhyt": false, "tPu64yAtURKLRkb7": false}, "userId": "rDgMdIIlhS1fSiM9"}, {"emailAddress": "331m7Ta1PsKc50Kv", "notificationType": {"6ecnEevcAx2K2zkR": false, "xlNsjUgxBkF6wFPo": false, "tjX7ZshZyZl5x4bR": false}, "userId": "BHUTrDzZSKscfOcY"}]}' 'u3dpCROYqUiGKXVF' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "Cmpo6sPwVOEDSJsE", "subscribers": [{"emailAddress": "K5QpNhlI2iS5EpGh", "userId": "hvXYck0upMzUYnb7"}, {"emailAddress": "6tFkEORV3bu1bNCt", "userId": "X7W40V6Do5sYadCC"}, {"emailAddress": "FrHHC3DpZxkrQDXu", "userId": "NFviMarv8mnfHK8C"}]}' 'CmE2lPnsbD3SGEdl' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'wuUccE536ugBp3HB' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "vepnDCjgyJlXe36m"}' 'gWjLfFmteue9nzJ6' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'fH24T805tVg8JqU0' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'jZpjvsugAOS7u8Ri' 'WyerCSa8SRgwsAj1' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'ik1jglaDXTvKCWwN' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": false, "configName": "Ahd2wrS0uPdjhdin", "description": "png5BLy8wbhMssAH", "source": "japIkY9Rf4wP57dB", "value": "ZNR88YbCtmKy8M9z"}' 'VrjfGXZnqAQUoY1G' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": false, "description": "Zp2JZp50CnPb71OR", "value": "YcmQbTU5JX8ccLjM"}' 'XJRk0eaKQDOJvrTe' 'fglSs6g4iY9u02aC' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'NYIWekp18lOC3mNq' 'F7Bl0LcghVHfPEsp' --login_with_auth "Bearer foo"
csm-list-topics-handler --login_with_auth "Bearer foo"
csm-create-topic-handler '{"description": "xwhRON0bc1eMbEIj", "topicName": "owLqc3ecjXJbZDKK"}' --login_with_auth "Bearer foo"
csm-delete-topic-handler 'oxLE1Y3Dymtj3giP' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["g4x4yiPX6ues1Hhh", "kg1yLVbLFzHEP8cM", "4NTwr0KHaAsmTej5"], "deploymentIds": ["2WKi6tArAURt9plC", "SVq8PdH6hJPUAc0R", "VwXgAgntLMCuaXBW"], "statuses": ["Qi6BqPg4xr0lCanc", "UZGCHsZYoLfR1KtO", "v7Zy0b65uvuKNuy0"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 'ytZQ7M6Nzy1adnSK' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'OLFKx1dX4LuWJu3p' --login_with_auth "Bearer foo"
csm-get-key-value-cluster-v2 'DMUAeeZ97SBROPYu' --login_with_auth "Bearer foo"
csm-list-key-value-cluster-v2 --login_with_auth "Bearer foo"
csm-create-key-value-cluster-v2 '{"clusterName": "G6XqP6oo7G73zdxT", "maxDataStorageGB": 13, "maxECPUPerSecond": 16, "profileName": "OfnwIdlNa29fDLh7"}' --login_with_auth "Bearer foo"
csm-get-key-value-cluster-limit-config-v2 --login_with_auth "Bearer foo"
csm-update-key-value-cluster-v2 '{"maxDataStorageGB": 11, "maxECPUPerSecond": 47, "profileName": "IslKHzGlLKWUtDQs"}' '61OQAoxyyQpRWCii' --login_with_auth "Bearer foo"
csm-delete-key-value-cluster-v2 'PDGQhNPEwiJCf2XJ' --login_with_auth "Bearer foo"
csm-get-list-integrated-app-key-value-cluster-v2 'VrlzqQls1ozhLVA3' --login_with_auth "Bearer foo"
csm-get-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-no-sql-cluster-v2 '{"maxDCU": 0.1722223407530803, "minDCU": 0.48482854244824924, "profileName": "8jKvgatOEBM70Tdl"}' --login_with_auth "Bearer foo"
csm-create-no-sql-cluster-v2 '{"maxDCU": 0.6366627903474024, "minDCU": 0.4458543588916516, "profileName": "JYOmpu1VCarzBsV6"}' --login_with_auth "Bearer foo"
csm-delete-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-start-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-stop-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-no-sql-access-tunnel-v2 --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
csm-get-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-sql-cluster-v2 '{"maxACU": 0.37660692532946316, "minACU": 0.21002603737626513, "multiAZ": false, "profileName": "rzzjrcaug6CWVG8S"}' --login_with_auth "Bearer foo"
csm-create-sql-cluster-v2 '{"maxACU": 0.785813839816698, "minACU": 0.6631255614628238, "multiAZ": false, "profileName": "glU6muswVJnNnN7k"}' --login_with_auth "Bearer foo"
csm-delete-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-start-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-stop-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-sql-app-list-v2 'Aa7j0riFc5HTHQIo' --login_with_auth "Bearer foo"
csm-get-no-sql-app-list-v2 'VsGo7dwV9DBqFKHQ' 'kETJyTlUrwDTnouj' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v3 'QD4IEiH9Z5qXn3ao' 'RtlqOECohViHA5Cz' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 'gFSy8X1A3PrIfapq' --login_with_auth "Bearer foo"
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
echo "1..104"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListAppUI
$PYTHON -m $MODULE 'csm-list-app-ui' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListAppUI' test.out

#- 3 CreateAppUI
$PYTHON -m $MODULE 'csm-create-app-ui' \
    '{"name": "5AAeMe4L3mDWORBV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
$PYTHON -m $MODULE 'csm-delete-app-ui' \
    'XTIIJM9XsYIIZxiX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
$PYTHON -m $MODULE 'csm-upload-app-ui-file' \
    'tmp.dat' \
    'NMR9BgaWcFX3SUBh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'UploadAppUIFile' test.out

#- 6 GetAppListV1
eval_tap 0 6 'GetAppListV1 # SKIP deprecated' test.out

#- 7 GetAppV1
eval_tap 0 7 'GetAppV1 # SKIP deprecated' test.out

#- 8 CreateAppV1
eval_tap 0 8 'CreateAppV1 # SKIP deprecated' test.out

#- 9 DeleteAppV1
eval_tap 0 9 'DeleteAppV1 # SKIP deprecated' test.out

#- 10 UpdateAppV1
eval_tap 0 10 'UpdateAppV1 # SKIP deprecated' test.out

#- 11 CreateDeploymentV1
eval_tap 0 11 'CreateDeploymentV1 # SKIP deprecated' test.out

#- 12 GetAppImageListV1
eval_tap 0 12 'GetAppImageListV1 # SKIP deprecated' test.out

#- 13 DeleteAppImagesV1
eval_tap 0 13 'DeleteAppImagesV1 # SKIP deprecated' test.out

#- 14 GetAppReleaseV1
$PYTHON -m $MODULE 'csm-get-app-release-v1' \
    'yoTsMWPAxUMkawaG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetAppReleaseV1' test.out

#- 15 GetListOfSecretsV1
eval_tap 0 15 'GetListOfSecretsV1 # SKIP deprecated' test.out

#- 16 SaveSecretV1
eval_tap 0 16 'SaveSecretV1 # SKIP deprecated' test.out

#- 17 UpdateSecretV1
eval_tap 0 17 'UpdateSecretV1 # SKIP deprecated' test.out

#- 18 DeleteSecretV1
eval_tap 0 18 'DeleteSecretV1 # SKIP deprecated' test.out

#- 19 StartAppV1
eval_tap 0 19 'StartAppV1 # SKIP deprecated' test.out

#- 20 StopAppV1
eval_tap 0 20 'StopAppV1 # SKIP deprecated' test.out

#- 21 GetListOfVariablesV1
eval_tap 0 21 'GetListOfVariablesV1 # SKIP deprecated' test.out

#- 22 SaveVariableV1
eval_tap 0 22 'SaveVariableV1 # SKIP deprecated' test.out

#- 23 UpdateVariableV1
eval_tap 0 23 'UpdateVariableV1 # SKIP deprecated' test.out

#- 24 DeleteVariableV1
eval_tap 0 24 'DeleteVariableV1 # SKIP deprecated' test.out

#- 25 GetListOfDeploymentV1
eval_tap 0 25 'GetListOfDeploymentV1 # SKIP deprecated' test.out

#- 26 GetDeploymentV1
eval_tap 0 26 'GetDeploymentV1 # SKIP deprecated' test.out

#- 27 DeleteDeploymentV1
eval_tap 0 27 'DeleteDeploymentV1 # SKIP deprecated' test.out

#- 28 GetExtendFile
$PYTHON -m $MODULE 'csm-get-extend-file' \
    'pAyrIwMif3BOdkoc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetExtendFile' test.out

#- 29 PublicGetMessages
$PYTHON -m $MODULE 'csm-public-get-messages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicGetMessages' test.out

#- 30 GetAppListV2
$PYTHON -m $MODULE 'csm-get-app-list-v2' \
    '{"appNames": ["VTd4BxqGWV6mTJ0s", "Qs6XNbjvqhnUVLWu", "8olKdxL6ozRmDD0j"], "appStatuses": ["JvlfV5OemPYdYT7D", "ROCjtuzFMbAG9YI8", "9hmguB8FOTjMLo4b"], "fuzzyAppName": "9rIzqYkEpstyVTBc", "scenario": "rM8rG0rH0zcswwVe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    'MK6MbGIVIu8vvwLc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
$PYTHON -m $MODULE 'csm-create-app-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 74}, "cpu": {"requestCPU": 36}, "description": "3uVoJXTIMtpgkieD", "memory": {"requestMemory": 50}, "replica": {"maxReplica": 86, "minReplica": 64}, "scenario": "4zvtdxdbZUpd6FJt", "vmSharingConfiguration": "HJ1pyVwyKQLY6FEO"}' \
    '65Rb3z7CYLM8IlsH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'CreateAppV2' test.out

#- 33 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    'qffnrfsGlfPaZKBw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "a3Ddb60ufPpzwj1Q"}' \
    'GIFmlVf4jvapseE9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
$PYTHON -m $MODULE 'csm-apply-app-config-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 78}, "cpu": {"requestCPU": 39}, "description": "N9bvhOrHflIOd6X3", "memory": {"requestMemory": 43}, "permissions": [{"action": 35, "resource": "iLvtEk4mTIpUA9gx"}, {"action": 30, "resource": "ecozL0TOg54vCE48"}, {"action": 76, "resource": "6jHMA2rG3nakopAy"}], "replica": {"maxReplica": 46, "minReplica": 80}, "scenario": "elu01nryEJ0NqoTo", "secrets": [{"name": "w0qiOiC4j0iktm0Z", "value": "PLkLOsp0LZ5njN86"}, {"name": "Hl8kUXzt6bSc6bWv", "value": "gpVyW9dD1kOmvrAe"}, {"name": "jcq2LgkQuaS7RBx3", "value": "vim02jBOxrZDyvpc"}], "variables": [{"name": "LYOWA8NjxOnaEok4", "value": "nOOCzfsflhjbngJO"}, {"name": "Un18G5MlfDTk8aG4", "value": "0NlncceIZSwgAIkg"}, {"name": "zh4pTU0Am4DZhl0b", "value": "QxFJ3sWCqQpQ2FbK"}], "vmSharingConfiguration": "PFMycMSQ4qfAacR0"}' \
    'LgB5BUXvjcu2s6w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
$PYTHON -m $MODULE 'csm-create-subscription-handler' \
    '{"topicNames": ["VifnKqmTSoGH1XEf", "Y6QAYn6WQ5UBEU1Q", "AOHfZiGhxOdcuDXS"]}' \
    'xSc3aZPV87pna08g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
$PYTHON -m $MODULE 'csm-unsubscribe-topic-handler' \
    'xefTYKhuxaEc7M4P' \
    '7UckSC6ePeN8i4Gr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "FES9z7xueHpATHcc"}' \
    'ee9GXhKcjmSEwdrk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'EnnqKzFsLfYalUlf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["wEQKjU7eHGebSVu0", "LQ40kepEaC4dfiOM", "ZfEhHr39pysFO3Zv"]}' \
    'c1BZG99LyvfvHEsJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
$PYTHON -m $MODULE 'csm-create-key-value-credential-v2' \
    '{"password": "KQQewVLMUoAnaRcY", "username": "p7FUjfIGaffoflEI"}' \
    'ByYqeKN0meGelYF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-integration-app-key-value-cluster-v2' \
    'wWaDhukU4khGG4vZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-integrate-app-key-value-cluster-v2' \
    '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": false}, "password": "TYnPkmSu4PWam1jx", "resourceId": "R7SETWjteoc8fgvZ", "username": "DDhoO05oKqymxLD1"}' \
    'Lcvw6T6mZEiwxxEl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-remove-integration-app-key-value-cluster-v2' \
    'pMYSWIeVzm7z9noo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-new-no-sql-database-credential-v2' \
    '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "password": "TSenE5hCFkIf5weq", "username": "Z18MH57l2Zsrh90E"}' \
    'TtYmGukz3MnlrjcH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-no-sql-database-v2' \
    'p6B8Vj7rXFgDnDkd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-v2' \
    '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "dbName": "9bpjb1tdA3QhjCMW", "password": "64f4XhIjSoTB2NMK", "username": "tezapPr2QEPx3zTx"}' \
    'BGtEJIYppuUSsKoH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-no-sql-database-v2' \
    'w2hyd12uSE7BEv3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 8}, "cpu": {"requestCPU": 80}, "memory": {"requestMemory": 44}, "replica": {"maxReplica": 97, "minReplica": 33}, "vmSharingConfiguration": "UGKSZ4GcLkt4pK32"}' \
    'sJxlZcCTpTdRtCHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "uk6B6XTmSLyn50si", "preferredLimitReplica": 12, "requestReason": "eK2qN8g6x2PyYDo5"}' \
    'R3hLiD5sf5y1JsxJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'NGmyt0SQDUDoWBZV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "GLlkUetzCAWc9x1a", "description": "MjgGim51T107XIZR", "source": "Z7tZdIs0xf4czdt7", "value": "zqmSKxOEQlVcx6Gq"}' \
    'sBq8vdhWVnuYLgpZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "ehK0G2nmyuViB9kR", "value": "TcSQdTnNYGeAfYFG"}' \
    '3wSkHKufBdS3ZOok' \
    'ZB4cXnAXyuGz6Llx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'Hv8SwyagYvDJ3w3U' \
    'NgIGj2jZtEYT8sIP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-sql-database-credential-v2' \
    '{"password": "SE1XXPzySa0sZoFS", "username": "6xCOWMpyh9pMsQgb"}' \
    '64ELbzDMwyo4nIRy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-sql-database-v2' \
    'sQdbufXjYnSoIFeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-sql-database-v2' \
    '{"acknowledgements": {"acceptSQLSecureCredentialHandling": true}, "dbName": "v67nuHCXWfwnwGio", "password": "VwVzmmBVVFfpqx1A", "username": "eLtzcPJ3jtDYBo4F"}' \
    'UTH7CGfKSyxgRR1D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-sql-database-v2' \
    'iCqSMzpqIFGLkDs7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'ACC1RgBfoNrHlFi2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'qJLgmBLE35YhyiDV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    '90SeI5yppBHoytVz' \
    'nCgNyx9fbT63ShEh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "8PbGikLjgjcj34uu", "notificationType": {"lU6FYBZsWFbr3RSP": false, "nBhvhf8Q0DtJMcYQ": false, "b5QxWG2HFnZlA6HK": false}, "userId": "fI1IQcoBQELcNlZk"}, {"emailAddress": "qTZrKgXNwvm4e5GX", "notificationType": {"6H742OixhtAoKiVm": true, "RT95XhnUcvWB28Mp": true, "8VLie0LBa36KNzjf": true}, "userId": "05CXNGehQ2aTjTDf"}, {"emailAddress": "KFDXC7eGL5YhJDWh", "notificationType": {"9YWqc0qgV6d9yOfI": true, "Lds2DbPcaoMdtRLT": false, "IeShF9RKb9vvxuJl": false}, "userId": "xr5hPCJJztJBg0tT"}]}' \
    'Jg46IewOXE2AkCh3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "QIZsUf8lGFXcmwTE", "subscribers": [{"emailAddress": "RHclOdxIwqejxe18", "userId": "rNdb8Otq6j1mqUav"}, {"emailAddress": "7k05HAQltnSojV4j", "userId": "T65yclX2FtAz0vJj"}, {"emailAddress": "FIYWOaNdsimmkW2m", "userId": "iH3xRHAKy4QxZkaX"}]}' \
    'Z7vmiEd0JPxVyQps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'haDwNqTbbFMXAMfV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "Xe0GZeMgsRsmH1EQ"}' \
    'rYmkPKTPOlhTtSiZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'NCxuogFteTHJe4Bh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'SSQkQD6WmOt6D7uf' \
    'FVTOhvQpfbBke8aE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'dd36xj6wySoltDxs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "s78mcMdiS76YApGJ", "description": "9ufwLYkqIgLuZS6h", "source": "sQryiEtOAbpeUNf2", "value": "6UqkCfgCUYBn2xaO"}' \
    'BdPF0JmX8qwU1cTu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "PB5S3DvPRCzBrVUx", "value": "mDOj3cvRFaTC11W0"}' \
    'TGTCm4fZWuk6pQxD' \
    'QpKqxLGeMvr9Tsvc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'MQ7dBsaIecRxIsZv' \
    'D6rmzVr5XT1Nxw0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'DeleteVariableV2' test.out

#- 74 ListTopicsHandler
$PYTHON -m $MODULE 'csm-list-topics-handler' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'ListTopicsHandler' test.out

#- 75 CreateTopicHandler
$PYTHON -m $MODULE 'csm-create-topic-handler' \
    '{"description": "1dMQ9Rrbk6C2cVWf", "topicName": "6ttvbU1PO6ApCD2V"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
$PYTHON -m $MODULE 'csm-delete-topic-handler' \
    'XidT7w0Oc15N8WXB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["Pp17PAewqSm5x3B4", "t7WQnp8jXZedgt5c", "yNe27HLtwtVOaxgP"], "deploymentIds": ["6Jbct8puMybYGxD9", "IPmmsLmu3kaPj0O4", "zd8Tb7cUNGPTBxiF"], "statuses": ["FCrn7djjs69FTFVG", "UVhvKhJCmeisql14", "mUHVbMPimNhcZsU3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'VAdMDcb4qlkiFAam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    'qvZI2KwjqPBiWXad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-key-value-cluster-v2' \
    'e41s3rH34mB2yPlR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 80 'GetKeyValueClusterV2' test.out

#- 81 ListKeyValueClusterV2
$PYTHON -m $MODULE 'csm-list-key-value-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 81 'ListKeyValueClusterV2' test.out

#- 82 CreateKeyValueClusterV2
$PYTHON -m $MODULE 'csm-create-key-value-cluster-v2' \
    '{"clusterName": "pWjmHZAAvKTH8Muq", "maxDataStorageGB": 71, "maxECPUPerSecond": 38, "profileName": "g0CzkguwuJCW7EEF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 82 'CreateKeyValueClusterV2' test.out

#- 83 GetKeyValueClusterLimitConfigV2
$PYTHON -m $MODULE 'csm-get-key-value-cluster-limit-config-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 83 'GetKeyValueClusterLimitConfigV2' test.out

#- 84 UpdateKeyValueClusterV2
$PYTHON -m $MODULE 'csm-update-key-value-cluster-v2' \
    '{"maxDataStorageGB": 57, "maxECPUPerSecond": 43, "profileName": "67AODbi9BzupBsFp"}' \
    'Yc77GtRUcCFeY5g4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
$PYTHON -m $MODULE 'csm-delete-key-value-cluster-v2' \
    'XgBsbfzqxBPNe8ae' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-list-integrated-app-key-value-cluster-v2' \
    '1Il4aAtEbu4IjGdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 86 'GetListIntegratedAppKeyValueClusterV2' test.out

#- 87 GetNoSQLClusterV2
$PYTHON -m $MODULE 'csm-get-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 87 'GetNoSQLClusterV2' test.out

#- 88 UpdateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-update-no-sql-cluster-v2' \
    '{"maxDCU": 0.31564973612318803, "minDCU": 0.12785134483954197, "profileName": "RxTjQ7gkZEY8rG0q"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 0.848989130509175, "minDCU": 0.6819806939211146, "profileName": "2Qd2JzRbkF2I03dI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 89 'CreateNoSQLClusterV2' test.out

#- 90 DeleteNoSQLClusterV2
$PYTHON -m $MODULE 'csm-delete-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 90 'DeleteNoSQLClusterV2' test.out

#- 91 StartNoSQLClusterV2
$PYTHON -m $MODULE 'csm-start-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 91 'StartNoSQLClusterV2' test.out

#- 92 StopNoSQLClusterV2
$PYTHON -m $MODULE 'csm-stop-no-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 92 'StopNoSQLClusterV2' test.out

#- 93 GetNoSQLAccessTunnelV2
$PYTHON -m $MODULE 'csm-get-no-sql-access-tunnel-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 93 'GetNoSQLAccessTunnelV2' test.out

#- 94 GetResourcesLimits
$PYTHON -m $MODULE 'csm-get-resources-limits' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 94 'GetResourcesLimits' test.out

#- 95 GetSQLClusterV2
$PYTHON -m $MODULE 'csm-get-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 95 'GetSQLClusterV2' test.out

#- 96 UpdateSQLClusterV2
$PYTHON -m $MODULE 'csm-update-sql-cluster-v2' \
    '{"maxACU": 0.14808312395869638, "minACU": 0.34362054781684503, "multiAZ": true, "profileName": "nZxF8CmQr17W65br"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
$PYTHON -m $MODULE 'csm-create-sql-cluster-v2' \
    '{"maxACU": 0.8977810498676855, "minACU": 0.9049089427782984, "multiAZ": true, "profileName": "n95FhO7VW3mbDVMD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 97 'CreateSQLClusterV2' test.out

#- 98 DeleteSQLClusterV2
$PYTHON -m $MODULE 'csm-delete-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 98 'DeleteSQLClusterV2' test.out

#- 99 StartSQLClusterV2
$PYTHON -m $MODULE 'csm-start-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 99 'StartSQLClusterV2' test.out

#- 100 StopSQLClusterV2
$PYTHON -m $MODULE 'csm-stop-sql-cluster-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 100 'StopSQLClusterV2' test.out

#- 101 GetSQLAppListV2
$PYTHON -m $MODULE 'csm-get-sql-app-list-v2' \
    'u87t0ldWf7iSGIiK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
$PYTHON -m $MODULE 'csm-get-no-sql-app-list-v2' \
    'FtWtn4Yr2svKM6pq' \
    'LGZ0TBujELAUK6mQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    '5iZgbwwm5iGzXtck' \
    'nrgidKupvXO6aj4h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'CmTC34jxW4pIDwdq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
