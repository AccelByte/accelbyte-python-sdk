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
csm-delete-app-v2 '7pKxR8dl0zRVW4EZ' --login_with_auth "Bearer foo"
csm-update-app-v2 '{"description": "G9m0XcgGVbMqSszE", "enableDebugMode": false}' 'GHavj7AorKsxwkos' --login_with_auth "Bearer foo"
csm-apply-app-config-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 54}, "cpu": {"requestCPU": 97}, "description": "MecdKi5r6QEa1ysL", "memory": {"requestMemory": 62}, "permissions": [{"action": 53, "resource": "l3rGN9A3sNm84hdd"}, {"action": 91, "resource": "EAcBdW19m4eu6d5t"}, {"action": 53, "resource": "C7duuyZ0GhDogqrh"}], "replica": {"maxReplica": 55, "minReplica": 65}, "scenario": "Rd8lDR6qVNPRZYdF", "secrets": [{"name": "LIAjGGJddVCvu9vx", "value": "5KQ7KYnIuMBvaO35"}, {"name": "llzQRaT5kPxUfofv", "value": "nnSuB0y5WUlrMdI4"}, {"name": "sNveabntBSxTeIv5", "value": "3HGCiljvjKoyD6SC"}], "variables": [{"name": "wGrncqmLtjQHAf8T", "value": "goNm03VLisV6zwPu"}, {"name": "o3td6TC6I3lMjGSW", "value": "N2laRlxfcjHfYakU"}, {"name": "CTqGkE7wcWfDslpJ", "value": "SqGAXQ0yYoNRKd3I"}], "vmSharingConfiguration": "L5TAQ6iiPlSC2uE4"}' 'o5Vwdo3fePqIJA8I' --login_with_auth "Bearer foo"
csm-create-subscription-handler '{"topicNames": ["Htrkmu0hpDDWVAla", "2l5BYNtIuS5S5XUd", "jsoqwGyzzWi9gwQY"]}' 'v7t1o7TTr1DmrhZv' --login_with_auth "Bearer foo"
csm-unsubscribe-topic-handler '15T7quIOvBMcaYmv' 'CkGZ5dAgqxpBFmaL' --login_with_auth "Bearer foo"
csm-create-deployment-v2 '{"imageTag": "oxozr6wfNPX2bOIt"}' 'RMvqtlB2jJCSQT27' --login_with_auth "Bearer foo"
csm-get-app-image-list-v2 '9ZZPYGu0rdlgdWyO' --login_with_auth "Bearer foo"
csm-delete-app-images-v2 '{"imageTags": ["tXi3choQrpOsDBU5", "SepjChB3V0v52Dly", "m6puQ23xoJ8aeCna"]}' 'LpUKp44YUDjasWIP' --login_with_auth "Bearer foo"
csm-create-key-value-credential-v2 '{"password": "UvmEejtGeoyIPa8Z", "username": "Rrvjj7il35MXbN9o"}' 'CMNqq98SjTvhZNkS' --login_with_auth "Bearer foo"
csm-get-integration-app-key-value-cluster-v2 'Q70D0H6BXksUC9b6' --login_with_auth "Bearer foo"
csm-integrate-app-key-value-cluster-v2 '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": false}, "password": "x3poD3Qgb3boLQQ1", "resourceId": "MzH7Qm8bwbmXgdAP", "username": "h1EThG96gAFKK2WD"}' 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
csm-remove-integration-app-key-value-cluster-v2 'nyeFoF7VSZ6pf3vn' --login_with_auth "Bearer foo"
csm-create-new-no-sql-database-credential-v2 '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "password": "SKVPHbn4Xxtu7LQR", "username": "ENjEEztx1WsYSiZq"}' 'an0nSBJroav91GXl' --login_with_auth "Bearer foo"
csm-get-no-sql-database-v2 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
csm-create-no-sql-database-v2 '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "dbName": "gWa24CKNS0GqVvUf", "password": "HQvsHXNUNe4mhgo5", "username": "QB65lSAiYnNjkfZr"}' 'QvGgbLdLsFzHkBMr' --login_with_auth "Bearer foo"
csm-delete-no-sql-database-v2 '1yrOMlNFSrUEirnj' --login_with_auth "Bearer foo"
csm-update-app-resources-v2 '{"autoscaling": {"targetCPUUtilizationPercent": 11}, "cpu": {"requestCPU": 92}, "memory": {"requestMemory": 60}, "replica": {"maxReplica": 0, "minReplica": 26}, "vmSharingConfiguration": "iGVkydwYWQG26yUZ"}' 'NmTBcvrbYCwZtxFH' --login_with_auth "Bearer foo"
csm-update-app-resources-resource-limit-form-v2 '{"clientEmail": "yPLtI8ilbyDPUIj8", "preferredLimitReplica": 32, "requestReason": "cekdqCt81P1ktfIo"}' 'vmv9gsR5cJcHm3SZ' --login_with_auth "Bearer foo"
csm-get-list-of-secrets-v2 'LxoRDFuuuySj29a9' --login_with_auth "Bearer foo"
csm-save-secret-v2 '{"configName": "LJE8HoRS1X2PFAAM", "description": "wzHPxB1UskYs4Yw2", "source": "0DOqOBSC2DKHRuPM", "value": "MWH8Yb33T5UBJCjf"}' 'cnLRfxeCSz9WEi8K' --login_with_auth "Bearer foo"
csm-update-secret-v2 '{"description": "lloeH0JT1yduat2v", "value": "QR3biBfsu4jmsRE2"}' 'w1yEkLgh3tIYt4Sq' 'YUTLDx9gIiDandpG' --login_with_auth "Bearer foo"
csm-delete-secret-v2 'T2t24aOMh5eC3IHe' 'HSKLCa3xreNDUWeh' --login_with_auth "Bearer foo"
csm-create-sql-database-credential-v2 '{"password": "wH3q31A806DJgas4", "username": "b6z3LNUj7fdgLA84"}' 'Z8YYk6QEgJjBbEDo' --login_with_auth "Bearer foo"
csm-get-sql-database-v2 'Nf3n0hEoRCAcf80z' --login_with_auth "Bearer foo"
csm-create-sql-database-v2 '{"acknowledgements": {"acceptSQLSecureCredentialHandling": false}, "dbName": "AT8mJrYq6hRkloqx", "password": "M3gpwxcfMy9XzjjI", "username": "5YbsKoADkzJEN2VH"}' 'zih3bit0VWn3CO39' --login_with_auth "Bearer foo"
csm-delete-sql-database-v2 'PXDNxtXgeO3FgkXh' --login_with_auth "Bearer foo"
csm-start-app-v2 'jDzaQY3snn2ZkP7c' --login_with_auth "Bearer foo"
csm-stop-app-v2 'FdP43e5dC9XIBudf' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v2 'ZgrbHDIDm4hMzF4T' 'xodenSrUTvfqU0bf' --login_with_auth "Bearer foo"
csm-bulk-save-subscription-app-notification-v2 '{"subscribers": [{"emailAddress": "oMm5cTtFWbotQyXJ", "notificationType": {"RcQWsmqPNs92epxk": false, "uvUYTZBRujIUE1Tq": false, "jyAZvkRCMNFIurjh": false}, "userId": "imdb4rbkXj0ZwsVC"}, {"emailAddress": "0gL97ZVJSPqJiwv1", "notificationType": {"qlYB1RSKs6gQxC3G": false, "uYnGzpipNDigNJma": false, "bqqZtfNWql4nmwAf": true}, "userId": "B4EYOkQ1jMD3cym8"}, {"emailAddress": "xIfkOVW2grREOLx0", "notificationType": {"KOww3HICQLfl7MUB": true, "7qtPu64yAtURKLRk": false, "bRPZTF6oQAXVG7tn": true}, "userId": "S1fSiM9331m7Ta1P"}]}' 'sKc50Kv6ecnEevcA' --login_with_auth "Bearer foo"
csm-subscribe-app-notification-v2 '{"notificationType": "x2K2zkRenmPZnGBt", "subscribers": [{"emailAddress": "4P7WnbdSJtjX7Zsh", "userId": "ZyZl5x4bRXBHUTrD"}, {"emailAddress": "zZSKscfOcYu3dpCR", "userId": "OYqUiGKXVFCmpo6s"}, {"emailAddress": "PwVOEDSJsEK5QpNh", "userId": "lI2iS5EpGhhvXYck"}]}' '0upMzUYnb76tFkEO' --login_with_auth "Bearer foo"
csm-get-subscription-v2-handler 'RV3bu1bNCtX7W40V' --login_with_auth "Bearer foo"
csm-subscribe-v2-handler '{"notificationType": "6Do5sYadCCFrHHC3"}' 'DpZxkrQDXuNFviMa' --login_with_auth "Bearer foo"
csm-unsubscribe-v2-handler 'rv8mnfHK8CCmE2lP' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-by-user-idv2 'nsbD3SGEdlwuUccE' '536ugBp3HBvepnDC' --login_with_auth "Bearer foo"
csm-get-list-of-variables-v2 'jgyJlXe36mgWjLfF' --login_with_auth "Bearer foo"
csm-save-variable-v2 '{"applyMask": false, "configName": "9xbnGezKsDwG2omO", "description": "R2nvYI9TVqJdvzcW", "source": "bfUpaXp5JMl5LL4b", "value": "TxBmZjdrrIxsB0NR"}' 'sB1fPqqRRulpqpym' --login_with_auth "Bearer foo"
csm-update-variable-v2 '{"applyMask": true, "description": "S0uPdjhdinpng5BL", "value": "y8wbhMssAHjapIkY"}' '9Rf4wP57dBZNR88Y' 'bCtmKy8M9zVrjfGX' --login_with_auth "Bearer foo"
csm-delete-variable-v2 'ZnqAQUoY1GjlIIk0' 'iKoTTS1j02o7JjTX' --login_with_auth "Bearer foo"
csm-list-topics-handler --login_with_auth "Bearer foo"
csm-create-topic-handler '{"description": "AQN0qdskdQV0TqI8", "topicName": "EFnmDbxIxi4YKlON"}' --login_with_auth "Bearer foo"
csm-delete-topic-handler 'k2Q5Y4Jvaizwiila' --login_with_auth "Bearer foo"
csm-get-list-of-deployment-v2 '{"appIds": ["tuUjjt9lIMGql5El", "Ea9EIIlGcHB3CfR3", "ncDlwi3v3MFFJ1Ke"], "deploymentIds": ["sKoELCpobBEG8X64", "5xpdXpai0rYaT5hO", "Pjaf3H0tYighU0VU"], "statuses": ["fcYHJbBfAKSiPW3V", "gsZXiR1DJ7HVWqMk", "NSawQUWDFJvJBWic"]}' --login_with_auth "Bearer foo"
csm-get-deployment-v2 '7UkBeIXuqDuAXI66' --login_with_auth "Bearer foo"
csm-delete-deployment-v2 'bQ71w0deoV9Lx5RD' --login_with_auth "Bearer foo"
csm-get-key-value-cluster-v2 'A1l2XcrciYNEzvSZ' --login_with_auth "Bearer foo"
csm-list-key-value-cluster-v2 --login_with_auth "Bearer foo"
csm-create-key-value-cluster-v2 '{"clusterName": "IPkhSgORcz5S5Bvm", "maxDataStorageGB": 13, "maxECPUPerSecond": 56, "profileName": "5uvuKNuy0ytZQ7M6"}' --login_with_auth "Bearer foo"
csm-get-key-value-cluster-limit-config-v2 --login_with_auth "Bearer foo"
csm-update-key-value-cluster-v2 '{"maxDataStorageGB": 81, "maxECPUPerSecond": 92, "profileName": "zy1adnSKOLFKx1dX"}' '4LuWJu3pDMUAeeZ9' --login_with_auth "Bearer foo"
csm-delete-key-value-cluster-v2 '7SBROPYuG6XqP6oo' --login_with_auth "Bearer foo"
csm-get-list-integrated-app-key-value-cluster-v2 '7G73zdxTgOfnwIdl' --login_with_auth "Bearer foo"
csm-get-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-no-sql-cluster-v2 '{"maxDCU": 0.6438618700777002, "minDCU": 0.0011739873781768662, "profileName": "29fDLh741IslKHzG"}' --login_with_auth "Bearer foo"
csm-create-no-sql-cluster-v2 '{"maxDCU": 0.19038054272494198, "minDCU": 0.6080139421704727, "profileName": "KWUtDQs61OQAoxyy"}' --login_with_auth "Bearer foo"
csm-delete-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-start-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-stop-no-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-no-sql-access-tunnel-v2 --login_with_auth "Bearer foo"
csm-get-resources-limits --login_with_auth "Bearer foo"
csm-get-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-update-sql-cluster-v2 '{"maxACU": 0.6813292341665659, "minACU": 0.24911118552134393, "multiAZ": true, "profileName": "CiiPDGQhNPEwiJCf"}' --login_with_auth "Bearer foo"
csm-create-sql-cluster-v2 '{"maxACU": 0.8775573220604541, "minACU": 0.7910375693380605, "multiAZ": false, "profileName": "VrlzqQls1ozhLVA3"}' --login_with_auth "Bearer foo"
csm-delete-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-start-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-stop-sql-cluster-v2 --login_with_auth "Bearer foo"
csm-get-sql-app-list-v2 'kE8jKvgatOEBM70T' --login_with_auth "Bearer foo"
csm-get-no-sql-app-list-v2 'dlNBJYOmpu1VCarz' 'BsV6xnZ5Jrzzjrca' --login_with_auth "Bearer foo"
csm-get-notification-subscriber-list-v3 'ug6CWVG8SWP3glU6' 'muswVJnNnN7kAa7j' --login_with_auth "Bearer foo"
csm-delete-subscription-app-notification-v3 '0riFc5HTHQIoVsGo' --login_with_auth "Bearer foo"
csm-get-app-debug-info-v4 '7dwV9DBqFKHQkETJ' --login_with_auth "Bearer foo"
csm-update-app-debug-mode-v4 '{"enableDebugMode": true}' 'UVSC00PYeDcaggin' --login_with_auth "Bearer foo"
csm-get-app-status-progress-v4 'xnFIna3yddcbsPhe' --login_with_auth "Bearer foo"
csm-create-app-v5 '{"autoscaling": {"targetCPUUtilizationPercent": 94}, "cpu": {"requestCPU": 63}, "description": "H26IUJNvYuGRUvpZ", "memory": {"requestMemory": 1}, "preferred_k8s_namespace": "1A3PrIfapq5AAeMe", "replica": {"maxReplica": 76, "minReplica": 26}, "scenario": "3mDWORBVXTIIJM9X", "vmSharingConfiguration": "sYIIZxiXNMR9BgaW"}' 'cFX3SUBhyoTsMWPA' --login_with_auth "Bearer foo"
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
echo "1..108"

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
    '{"name": "xUMkawaGpAyrIwMi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateAppUI' test.out

#- 4 DeleteAppUI
$PYTHON -m $MODULE 'csm-delete-app-ui' \
    'f3BOdkocVTd4BxqG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'DeleteAppUI' test.out

#- 5 UploadAppUIFile
$PYTHON -m $MODULE 'csm-upload-app-ui-file' \
    'tmp.dat' \
    'WV6mTJ0sQs6XNbjv' \
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
    'qhnUVLWu8olKdxL6' \
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
    'ozRmDD0jJvlfV5Oe' \
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
    '{"appNames": ["mPYdYT7DROCjtuzF", "MbAG9YI89hmguB8F", "OTjMLo4b9rIzqYkE"], "appStatuses": ["pstyVTBcrM8rG0rH", "0zcswwVeMK6MbGIV", "Iu8vvwLc7KY3uVoJ"], "fuzzyAppName": "XTIMtpgkieDyF97l", "scenario": "GdMiHKxbWCYzo8yO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetAppListV2' test.out

#- 31 GetAppV2
$PYTHON -m $MODULE 'csm-get-app-v2' \
    '2KTK9tmmOnYnOpas' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetAppV2' test.out

#- 32 CreateAppV2
eval_tap 0 32 'CreateAppV2 # SKIP deprecated' test.out

#- 33 DeleteAppV2
$PYTHON -m $MODULE 'csm-delete-app-v2' \
    '6ghP1y4Zi7s7QBlk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteAppV2' test.out

#- 34 UpdateAppV2
$PYTHON -m $MODULE 'csm-update-app-v2' \
    '{"description": "44Z44B1GZgKg4uKx", "enableDebugMode": false}' \
    'b60ufPpzwj1QGIFm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateAppV2' test.out

#- 35 ApplyAppConfigV2
$PYTHON -m $MODULE 'csm-apply-app-config-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 23}, "cpu": {"requestCPU": 69}, "description": "Vf4jvapseE9LN9bv", "memory": {"requestMemory": 14}, "permissions": [{"action": 36, "resource": "OrHflIOd6X3viLvt"}, {"action": 62, "resource": "RA6HX3RwrKt2ecoz"}, {"action": 77, "resource": "8nEhoXmM2W7l6jHM"}], "replica": {"maxReplica": 55, "minReplica": 79}, "scenario": "rG3nakopAywelu01", "secrets": [{"name": "nryEJ0NqoTow0qiO", "value": "iC4j0iktm0ZPLkLO"}, {"name": "sp0LZ5njN86Hl8kU", "value": "Xzt6bSc6bWvgpVyW"}, {"name": "9dD1kOmvrAejcq2L", "value": "gkQuaS7RBx3vim02"}], "variables": [{"name": "jBOxrZDyvpcLYOWA", "value": "8NjxOnaEok4nOOCz"}, {"name": "fsflhjbngJOUn18G", "value": "5MlfDTk8aG40Nlnc"}, {"name": "ceIZSwgAIkgzh4pT", "value": "U0Am4DZhl0bQxFJ3"}], "vmSharingConfiguration": "sWCqQpQ2FbKPFMyc"}' \
    'MSQ4qfAacR0LgB5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ApplyAppConfigV2' test.out

#- 36 CreateSubscriptionHandler
$PYTHON -m $MODULE 'csm-create-subscription-handler' \
    '{"topicNames": ["UXvjcu2s6w3VifnK", "qmTSoGH1XEfY6QAY", "n6WQ5UBEU1QAOHfZ"]}' \
    'iGhxOdcuDXSxSc3a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'CreateSubscriptionHandler' test.out

#- 37 UnsubscribeTopicHandler
$PYTHON -m $MODULE 'csm-unsubscribe-topic-handler' \
    'ZPV87pna08gxefTY' \
    'KhuxaEc7M4P7UckS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UnsubscribeTopicHandler' test.out

#- 38 CreateDeploymentV2
$PYTHON -m $MODULE 'csm-create-deployment-v2' \
    '{"imageTag": "C6ePeN8i4GrFES9z"}' \
    '7xueHpATHccee9GX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'CreateDeploymentV2' test.out

#- 39 GetAppImageListV2
$PYTHON -m $MODULE 'csm-get-app-image-list-v2' \
    'hKcjmSEwdrkEnnqK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetAppImageListV2' test.out

#- 40 DeleteAppImagesV2
$PYTHON -m $MODULE 'csm-delete-app-images-v2' \
    '{"imageTags": ["zFsLfYalUlfwEQKj", "U7eHGebSVu0LQ40k", "epEaC4dfiOMZfEhH"]}' \
    'r39pysFO3Zvc1BZG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteAppImagesV2' test.out

#- 41 CreateKeyValueCredentialV2
$PYTHON -m $MODULE 'csm-create-key-value-credential-v2' \
    '{"password": "99LyvfvHEsJKQQew", "username": "VLMUoAnaRcYp7FUj"}' \
    'fIGaffoflEIByYqe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'CreateKeyValueCredentialV2' test.out

#- 42 GetIntegrationAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-integration-app-key-value-cluster-v2' \
    'KN0meGelYF5wWaDh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'GetIntegrationAppKeyValueClusterV2' test.out

#- 43 IntegrateAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-integrate-app-key-value-cluster-v2' \
    '{"acknowledgements": {"acceptKeyValueSecureCredentialHandling": true}, "password": "ncV7vWgSHdfo07Uc", "resourceId": "tPErqxyMyOK06MqQ", "username": "BErxgjVBycvU4Pbm"}' \
    'RDcrg0DjQjBECXve' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'IntegrateAppKeyValueClusterV2' test.out

#- 44 RemoveIntegrationAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-remove-integration-app-key-value-cluster-v2' \
    'a7H1m2lJFRZ3ZprZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RemoveIntegrationAppKeyValueClusterV2' test.out

#- 45 CreateNewNoSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-new-no-sql-database-credential-v2' \
    '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": false}, "password": "zMjhTHeh94TSenE5", "username": "hCFkIf5weqZ18MH5"}' \
    '7l2Zsrh90ETtYmGu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreateNewNoSQLDatabaseCredentialV2' test.out

#- 46 CreateNoSQLDatabaseCredentialV2
eval_tap 0 46 'CreateNoSQLDatabaseCredentialV2 # SKIP deprecated' test.out

#- 47 GetNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-no-sql-database-v2' \
    'kz3MnlrjcHp6B8Vj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetNoSQLDatabaseV2' test.out

#- 48 CreateNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-no-sql-database-v2' \
    '{"acknowledgements": {"acceptNosqlSecureCredentialHandling": true}, "dbName": "rXFgDnDkdZ9bpjb1", "password": "tdA3QhjCMW64f4Xh", "username": "IjSoTB2NMKtezapP"}' \
    'r2QEPx3zTxBGtEJI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateNoSQLDatabaseV2' test.out

#- 49 DeleteNoSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-no-sql-database-v2' \
    'YppuUSsKoHw2hyd1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'DeleteNoSQLDatabaseV2' test.out

#- 50 UpdateAppResourcesV2
$PYTHON -m $MODULE 'csm-update-app-resources-v2' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 54}, "cpu": {"requestCPU": 41}, "memory": {"requestMemory": 66}, "replica": {"maxReplica": 90, "minReplica": 83}, "vmSharingConfiguration": "E7BEv3aevq6iohU1"}' \
    'cg4W1IS3Uv1BpWoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateAppResourcesV2' test.out

#- 51 UpdateAppResourcesResourceLimitFormV2
$PYTHON -m $MODULE 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "Baqdg2FHcunsS1ln", "preferredLimitReplica": 0, "requestReason": "mSLyn50sigBVZxiK"}' \
    'dV57GvRyd9UuL02L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateAppResourcesResourceLimitFormV2' test.out

#- 52 GetListOfSecretsV2
$PYTHON -m $MODULE 'csm-get-list-of-secrets-v2' \
    'e8HSCslsDd4M1F5q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetListOfSecretsV2' test.out

#- 53 SaveSecretV2
$PYTHON -m $MODULE 'csm-save-secret-v2' \
    '{"configName": "RIblS7Nz81GRazPA", "description": "ANjfBoldFOyqA2cl", "source": "J5gEOaCgM6Yn6Rug", "value": "bNEIpGBFUjOn5mM7"}' \
    'k8nbLzvtCIW5ynMK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'SaveSecretV2' test.out

#- 54 UpdateSecretV2
$PYTHON -m $MODULE 'csm-update-secret-v2' \
    '{"description": "quUicAeIVXtoWAXh", "value": "MlW4tLqX7OICf5oD"}' \
    '1e6oI9FmYel0kOw7' \
    '2o8Zkgk0jS6rDWUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateSecretV2' test.out

#- 55 DeleteSecretV2
$PYTHON -m $MODULE 'csm-delete-secret-v2' \
    'fhKvrf2AaH4yCWrH' \
    'SppnIZkNnTn3rzH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'DeleteSecretV2' test.out

#- 56 CreateSQLDatabaseCredentialV2
$PYTHON -m $MODULE 'csm-create-sql-database-credential-v2' \
    '{"password": "NvAtcvNedgS1fUfK", "username": "mihDbmu8ePWlQMVD"}' \
    'XEHeiGTnwyEw6hIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'CreateSQLDatabaseCredentialV2' test.out

#- 57 GetSQLDatabaseV2
$PYTHON -m $MODULE 'csm-get-sql-database-v2' \
    'DZrpP7rz3ISW510k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetSQLDatabaseV2' test.out

#- 58 CreateSQLDatabaseV2
$PYTHON -m $MODULE 'csm-create-sql-database-v2' \
    '{"acknowledgements": {"acceptSQLSecureCredentialHandling": false}, "dbName": "r4isTKWjmv67nuHC", "password": "XWfwnwGioVwVzmmB", "username": "VVFfpqx1AeLtzcPJ"}' \
    '3jtDYBo4FUTH7CGf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'CreateSQLDatabaseV2' test.out

#- 59 DeleteSQLDatabaseV2
$PYTHON -m $MODULE 'csm-delete-sql-database-v2' \
    'KSyxgRR1DiCqSMzp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'DeleteSQLDatabaseV2' test.out

#- 60 StartAppV2
$PYTHON -m $MODULE 'csm-start-app-v2' \
    'qIFGLkDs7ACC1RgB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'StartAppV2' test.out

#- 61 StopAppV2
$PYTHON -m $MODULE 'csm-stop-app-v2' \
    'foNrHlFi2qJLgmBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'StopAppV2' test.out

#- 62 GetNotificationSubscriberListV2
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v2' \
    'E35YhyiDV90SeI5y' \
    'ppBHoytVznCgNyx9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetNotificationSubscriberListV2' test.out

#- 63 BulkSaveSubscriptionAppNotificationV2
$PYTHON -m $MODULE 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{"emailAddress": "fbT63ShEh8PbGikL", "notificationType": {"jgjcj34uulU6FYBZ": true, "lsBJT6Hh3OMjAjq2": false, "f8Q0DtJMcYQdN66b": true}, "userId": "G2HFnZlA6HKWW4fI"}, {"emailAddress": "1IQcoBQELcNlZkqT", "notificationType": {"ZrKgXNwvm4e5GX6H": false, "OixhtAoKiVm6URT9": true, "XhnUcvWB28Mpusuh": false}, "userId": "e0LBa36KNzjf005C"}, {"emailAddress": "XNGehQ2aTjTDfKFD", "notificationType": {"XC7eGL5YhJDWh9YW": true, "uTKfC0I2kNjCMDtD": true, "DbPcaoMdtRLTmSvT": false}, "userId": "F9RKb9vvxuJlhXbW"}]}' \
    'hbwPwToC6knjVwVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkSaveSubscriptionAppNotificationV2' test.out

#- 64 SubscribeAppNotificationV2
$PYTHON -m $MODULE 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "zaqSfJiQFC2gXoda", "subscribers": [{"emailAddress": "0kg16yUSpSOAjHJW", "userId": "wfCjYwWkLob9gKLq"}, {"emailAddress": "s2nEZhpByfHZinxN", "userId": "fgPAwkMBsznlBUqn"}, {"emailAddress": "LT4AbGptKaWNvPbp", "userId": "g7yrRvXfZ6rvgvEY"}]}' \
    '3Hht1SwqTsKKKo37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'SubscribeAppNotificationV2' test.out

#- 65 GetSubscriptionV2Handler
$PYTHON -m $MODULE 'csm-get-subscription-v2-handler' \
    'NHDOQe91Ps3ztUIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetSubscriptionV2Handler' test.out

#- 66 SubscribeV2Handler
$PYTHON -m $MODULE 'csm-subscribe-v2-handler' \
    '{"notificationType": "0dS6hIH9c4Vfkyrw"}' \
    'puXxbaERbfgPmi0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'SubscribeV2Handler' test.out

#- 67 UnsubscribeV2Handler
$PYTHON -m $MODULE 'csm-unsubscribe-v2-handler' \
    'Hkt1mr9EOIFg0dnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'UnsubscribeV2Handler' test.out

#- 68 DeleteSubscriptionAppNotificationByUserIDV2
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-by-user-idv2' \
    'IYN2NVL70Iw157g0' \
    '0jr9b8MuYmmeKTmB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'DeleteSubscriptionAppNotificationByUserIDV2' test.out

#- 69 DeleteSubscriptionAppNotificationV2
eval_tap 0 69 'DeleteSubscriptionAppNotificationV2 # SKIP deprecated' test.out

#- 70 GetListOfVariablesV2
$PYTHON -m $MODULE 'csm-get-list-of-variables-v2' \
    'NvGYxEQdf3ewoGGo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'GetListOfVariablesV2' test.out

#- 71 SaveVariableV2
$PYTHON -m $MODULE 'csm-save-variable-v2' \
    '{"applyMask": true, "configName": "7xmFNAmjDDCvs78m", "description": "cMdiS76YApGJ9ufw", "source": "LYkqIgLuZS6hsQry", "value": "iEtOAbpeUNf26Uqk"}' \
    'CfgCUYBn2xaOBdPF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'SaveVariableV2' test.out

#- 72 UpdateVariableV2
$PYTHON -m $MODULE 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "EwP2b4gd3xOeii8J", "value": "nmssep2xD2NY0kAB"}' \
    'eGs9yxahld1pO0Gy' \
    'f5PO3COyMvczgEpz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'UpdateVariableV2' test.out

#- 73 DeleteVariableV2
$PYTHON -m $MODULE 'csm-delete-variable-v2' \
    'Z3FbtxfhcRC7IVYa' \
    '6iZ5uFRYNn3SHiWx' \
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
    '{"description": "F0YbuU5ar5qTLWUC", "topicName": "y0Afgc050XIZRW49"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'CreateTopicHandler' test.out

#- 76 DeleteTopicHandler
$PYTHON -m $MODULE 'csm-delete-topic-handler' \
    '1e94mQjVOOBnIWhu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 76 'DeleteTopicHandler' test.out

#- 77 GetListOfDeploymentV2
$PYTHON -m $MODULE 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["nElqZUodp3IhtCSH", "y1ei1fIrPvfHnRN0", "6EjRwEQlNapJRfk4"], "deploymentIds": ["f9Zcw1pEHAyNFxcV", "TKuAQTGh5BxjWOoz", "GoDtsUuYo5p8ED5Q"], "statuses": ["ZAufwNa8lzfjv9oY", "MXMjlVHY1AHwF3vG", "oav7MK0PcLnEkcok"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 77 'GetListOfDeploymentV2' test.out

#- 78 GetDeploymentV2
$PYTHON -m $MODULE 'csm-get-deployment-v2' \
    'KwcQ0baDT9OyJ2h2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 78 'GetDeploymentV2' test.out

#- 79 DeleteDeploymentV2
$PYTHON -m $MODULE 'csm-delete-deployment-v2' \
    '3GUS2amU7syGlElX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 79 'DeleteDeploymentV2' test.out

#- 80 GetKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-key-value-cluster-v2' \
    'dEAOrVSnLocLVVYa' \
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
    '{"clusterName": "mQc4wcG5nDBLJoJH", "maxDataStorageGB": 3, "maxECPUPerSecond": 17, "profileName": "AAvKTH8MuqIg0Czk"}' \
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
    '{"maxDataStorageGB": 14, "maxECPUPerSecond": 74, "profileName": "uwuJCW7EEFB67AOD"}' \
    'bi9BzupBsFpYc77G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 84 'UpdateKeyValueClusterV2' test.out

#- 85 DeleteKeyValueClusterV2
$PYTHON -m $MODULE 'csm-delete-key-value-cluster-v2' \
    'tRUcCFeY5g4XgBsb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 85 'DeleteKeyValueClusterV2' test.out

#- 86 GetListIntegratedAppKeyValueClusterV2
$PYTHON -m $MODULE 'csm-get-list-integrated-app-key-value-cluster-v2' \
    'fzqxBPNe8ae1Il4a' \
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
    '{"maxDCU": 0.42961779741891226, "minDCU": 0.31798584465378776, "profileName": "Ebu4IjGdqthRxTjQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 88 'UpdateNoSQLClusterV2' test.out

#- 89 CreateNoSQLClusterV2
$PYTHON -m $MODULE 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 0.9638772755854756, "minDCU": 0.10348899179798521, "profileName": "kZEY8rG0q0Q2Qd2J"}' \
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
    '{"maxACU": 0.4130951661292499, "minACU": 0.7081217634673107, "multiAZ": false, "profileName": "tKwG3UC6XCnnZxF8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 96 'UpdateSQLClusterV2' test.out

#- 97 CreateSQLClusterV2
$PYTHON -m $MODULE 'csm-create-sql-cluster-v2' \
    '{"maxACU": 0.4651567714115522, "minACU": 0.20521160818735373, "multiAZ": false, "profileName": "r17W65br34rBBN9t"}' \
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
    'U6TDm5GloFSKWM1e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 101 'GetSQLAppListV2' test.out

#- 102 GetNoSQLAppListV2
$PYTHON -m $MODULE 'csm-get-no-sql-app-list-v2' \
    'ym5ydC6p25xCWTqU' \
    'OYZENJ1QHZQxPRXH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 102 'GetNoSQLAppListV2' test.out

#- 103 GetNotificationSubscriberListV3
$PYTHON -m $MODULE 'csm-get-notification-subscriber-list-v3' \
    '7uxBJEECQE1li3Bg' \
    '7Jxc9pUnZmvhidwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 103 'GetNotificationSubscriberListV3' test.out

#- 104 DeleteSubscriptionAppNotificationV3
$PYTHON -m $MODULE 'csm-delete-subscription-app-notification-v3' \
    'kZwqjYLfTiCO1NDB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 104 'DeleteSubscriptionAppNotificationV3' test.out

#- 105 GetAppDebugInfoV4
$PYTHON -m $MODULE 'csm-get-app-debug-info-v4' \
    'vQvRPnAz4VzW0Cpo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 105 'GetAppDebugInfoV4' test.out

#- 106 UpdateAppDebugModeV4
$PYTHON -m $MODULE 'csm-update-app-debug-mode-v4' \
    '{"enableDebugMode": true}' \
    't9H9XyWI8bp8fQxR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 106 'UpdateAppDebugModeV4' test.out

#- 107 GetAppStatusProgressV4
$PYTHON -m $MODULE 'csm-get-app-status-progress-v4' \
    'uX91uYmtrHJbEGTU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 107 'GetAppStatusProgressV4' test.out

#- 108 CreateAppV5
$PYTHON -m $MODULE 'csm-create-app-v5' \
    '{"autoscaling": {"targetCPUUtilizationPercent": 18}, "cpu": {"requestCPU": 57}, "description": "YjERL1rEQG02zccA", "memory": {"requestMemory": 74}, "preferred_k8s_namespace": "wvLsWUNd6lPKvqDe", "replica": {"maxReplica": 18, "minReplica": 44}, "scenario": "3AdvBaagTiRJ8daG", "vmSharingConfiguration": "TVX3Bb7jlz5IfHgK"}' \
    'jI9mwJSrN8jkIykR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 108 'CreateAppV5' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
