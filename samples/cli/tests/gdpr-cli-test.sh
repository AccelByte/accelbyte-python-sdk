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
gdpr-admin-get-list-deletion-data-request --login_with_auth "Bearer foo"
gdpr-get-admin-email-configuration --login_with_auth "Bearer foo"
gdpr-update-admin-email-configuration '["EAxcVpFrttufHIRd", "H9UzVRiXbqlAw7r6", "W2ktQG0h5JAav5kR"]' --login_with_auth "Bearer foo"
gdpr-save-admin-email-configuration '["a62WopBJHPtcDs8b", "BZLCXLx8bbgorQeF", "bQ1g7qbPngUNB1vR"]' --login_with_auth "Bearer foo"
gdpr-delete-admin-email-configuration '["odwpzS6DaDpv8N7Z", "QVqGj6oDLjWjkY1a", "XlFcDtgOjchIua5t"]' --login_with_auth "Bearer foo"
gdpr-admin-get-platform-account-closure-client 'WEIC32ogW7olvbTg' --login_with_auth "Bearer foo"
gdpr-admin-update-platform-account-closure-client '{"clientId": "rhRTcPiSuL0Sly6X", "secret": "M4OI18mAQLnzjMf8"}' 'GZ2WBZqxYG3aREAu' --login_with_auth "Bearer foo"
gdpr-admin-delete-platform-account-closure-client '2D6QVKNCWP75TB0i' --login_with_auth "Bearer foo"
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-services-configuration '{"services": [{"extendConfig": {"appName": "7pKxR8dl0zRVW4EZ", "namespace": "G9m0XcgGVbMqSszE"}, "id": "8GHavj7AorKsxwko", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "5MecdKi5r6QEa1ys"}, "type": "EXTEND"}, {"extendConfig": {"appName": "Ezth6mXhzkzWkFeZ", "namespace": "SoEAcBdW19m4eu6d"}, "id": "5tA5jUmiTqpyhPFd", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "LzFQN05MYzYiKWe5"}, "type": "EXTEND"}, {"extendConfig": {"appName": "dFLIAjGGJddVCvu9", "namespace": "vx5KQ7KYnIuMBvaO"}, "id": "35llzQRaT5kPxUfo", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "06UpOXGSLmCVuHOP"}, "type": "EXTEND"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-platform-account-closure-services-configuration '{"services": [{"extendConfig": {"appName": "sNveabntBSxTeIv5", "namespace": "3HGCiljvjKoyD6SC"}, "id": "wGrncqmLtjQHAf8T", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "7FXGk2s9Q0mPVo3t"}, "type": "SERVICE"}, {"extendConfig": {"appName": "td6TC6I3lMjGSWN2", "namespace": "laRlxfcjHfYakUCT"}, "id": "qGkE7wcWfDslpJSq", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "LPziZMdjxcBZufQx"}, "type": "EXTEND"}, {"extendConfig": {"appName": "6iiPlSC2uE4o5Vwd", "namespace": "o3fePqIJA8IHtrkm"}, "id": "u0hpDDWVAla2l5BY", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "E0mit9RGCCHYzUOc"}, "type": "SERVICE"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-user-platform-account-closure-histories --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'zzWi9gwQYv7t1o7T' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'Tr1DmrhZv15T7quI' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'OvBMcaYmvCkGZ5dA' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'gqxpBFmaLoxozr6w' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval 'fNPX2bOItRMvqtlB' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request '2jJCSQT279ZZPYGu' '0rdlgdWyOtXi3cho' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'QrpOsDBU5SepjChB' '3V0v52Dlym6puQ23' 'xoJ8aeCnaLpUKp44' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 'YUDjasWIPUvmEejt' 'GeoyIPa8ZRrvjj7i' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'l35MXbN9oCMNqq98' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'SjTvhZNkSQ70D0H6' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'BXksUC9b6i5lZC9x' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'v32e8c5csSovoqsZ' 'NBdte9NDUPVJf6c2' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'Z0QZxfgPubTDIHrv' 'qAThuwjRHpKKTlmV' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'r9XuoJbRFQSKVPHb' 'n4Xxtu7LQRENjEEz' 'tx1WsYSiZqan0nSB' --login_with_auth "Bearer foo"
gdpr-public-submit-my-account-deletion-request 'Jroav91GXlvPG6bF' 'YReVHQipcCx9Zw5D' --login_with_auth "Bearer foo"
gdpr-public-cancel-my-account-deletion-request --login_with_auth "Bearer foo"
gdpr-public-get-my-account-deletion-status --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-account-deletion-request '2L7vIYhGGSyEW4ZJ' 'J42d3PBddN8S48l9' --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-personal-data-request 'lyNApflxqMrj3oZk' '03QXcKMDYDDxHSZj' --login_with_auth "Bearer foo"
gdpr-s2s-submit-user-account-deletion-request 'tqXyJ58f7Gc26Sai' --login_with_auth "Bearer foo"
gdpr-s2s-request-data-retrieval 'GVkydwYWQG26yUZN' --login_with_auth "Bearer foo"
gdpr-s2s-generate-personal-data-url 'mTBcvrbYCwZtxFHy' 'PLtI8ilbyDPUIj88' --login_with_auth "Bearer foo"
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
echo "1..39"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminGetListDeletionDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-deletion-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminGetListDeletionDataRequest' test.out

#- 3 GetAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-get-admin-email-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'GetAdminEmailConfiguration' test.out

#- 4 UpdateAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-update-admin-email-configuration' \
    '["cekdqCt81P1ktfIo", "vmv9gsR5cJcHm3SZ", "LxoRDFuuuySj29a9"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["LJE8HoRS1X2PFAAM", "wzHPxB1UskYs4Yw2", "0DOqOBSC2DKHRuPM"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["MWH8Yb33T5UBJCjf", "cnLRfxeCSz9WEi8K", "lloeH0JT1yduat2v"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-client' \
    'QR3biBfsu4jmsRE2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClient' test.out

#- 8 AdminUpdatePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-client' \
    '{"clientId": "w1yEkLgh3tIYt4Sq", "secret": "YUTLDx9gIiDandpG"}' \
    'T2t24aOMh5eC3IHe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminUpdatePlatformAccountClosureClient' test.out

#- 9 AdminDeletePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-delete-platform-account-closure-client' \
    'HSKLCa3xreNDUWeh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminDeletePlatformAccountClosureClient' test.out

#- 10 AdminGetListPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-personal-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetListPersonalDataRequest' test.out

#- 11 AdminGetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-get-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetServicesConfiguration' test.out

#- 12 AdminUpdateServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-update-services-configuration' \
    '{"services": [{"extendConfig": {"appName": "wH3q31A806DJgas4", "namespace": "b6z3LNUj7fdgLA84"}, "id": "Z8YYk6QEgJjBbEDo", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "Jz4mnRBkMNxvvKgA"}, "type": "SERVICE"}, {"extendConfig": {"appName": "8mJrYq6hRkloqxM3", "namespace": "gpwxcfMy9XzjjI5Y"}, "id": "bsKoADkzJEN2VHzi", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "3bit0VWn3CO39PXD"}, "type": "SERVICE"}, {"extendConfig": {"appName": "xtXgeO3FgkXhjDza", "namespace": "QY3snn2ZkP7cFdP4"}, "id": "3e5dC9XIBudfZgrb", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "wrAP2aMlu7WtjCto"}, "type": "SERVICE"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateServicesConfiguration' test.out

#- 13 AdminResetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-reset-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminResetServicesConfiguration' test.out

#- 14 AdminGetPlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 15 AdminUpdatePlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-services-configuration' \
    '{"services": [{"extendConfig": {"appName": "etOO847g8OudOfjn", "namespace": "CuHZ3c46IjGa23Yv"}, "id": "YmmDg7VYPXIuvUYT", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "RujIUE1Tq5jyAZvk"}, "type": "SERVICE"}, {"extendConfig": {"appName": "kETAsSp7gh4TeUTk", "namespace": "OkAYfJB8AT9t4Tv2"}, "id": "07Y2QD3oD5fLCr3O", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "XVv8ZGF7uYnGzpip"}, "type": "SERVICE"}, {"extendConfig": {"appName": "7KQI1AeFgPqaOkvo", "namespace": "1aolB4lkKB4EYOkQ"}, "id": "1jMD3cym8xIfkOVW", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "C9LxhvNXTwGBCtoh"}, "type": "EXTEND"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 16 AdminResetPlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-reset-platform-account-closure-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 17 AdminGetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'gdpr-admin-get-user-platform-account-closure-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 18 AdminGetUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-get-user-account-deletion-request' \
    'tl9Zuhytm5UDrT6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminGetUserAccountDeletionRequest' test.out

#- 19 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'XCs5SPBbRPZTF6oQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminSubmitUserAccountDeletionRequest' test.out

#- 20 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'AXVG7tnsZg5QgXjv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminCancelUserAccountDeletionRequest' test.out

#- 21 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'yGJPN4eXbJE5Vs2G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserPersonalDataRequests' test.out

#- 22 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'cyomQoIXimBJehyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminRequestDataRetrieval' test.out

#- 23 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'lNsjUgxBkF6wFPoJ' \
    'eQediogEhhM2rIiz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserPersonalDataRequest' test.out

#- 24 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'GdKvOPdq5xrgxSmy' \
    '1DN9LFkYW5DQyj4b' \
    'j5Ro2ogaKt2ujQSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGeneratePersonalDataURL' test.out

#- 25 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    '3Zdb65UXmy0Zp6iI' \
    'aTIKUkmkk9QM0NBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitUserAccountDeletionRequest' test.out

#- 26 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'A9ORxpzwLR2AK6eX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelUserAccountDeletionRequest' test.out

#- 27 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'UGPJsw1fiP80G9Pc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetUserAccountDeletionStatus' test.out

#- 28 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'lxcft2ulIJzPyrVE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserPersonalDataRequests' test.out

#- 29 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'iOG4UcqsuGKHhMRW' \
    'LVd3DlhLuIpomM8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicRequestDataRetrieval' test.out

#- 30 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'm1MiaI1mX2tJoARt' \
    'dbBe7udsMrok0WvG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicCancelUserPersonalDataRequest' test.out

#- 31 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'YYnx4V709xbnGezK' \
    'sDwG2omOR2nvYI9T' \
    'VqJdvzcWbfUpaXp5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGeneratePersonalDataURL' test.out

#- 32 PublicSubmitMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-account-deletion-request' \
    'JMl5LL4bTxBmZjdr' \
    'rIxsB0NRsB1fPqqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicSubmitMyAccountDeletionRequest' test.out

#- 33 PublicCancelMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-my-account-deletion-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelMyAccountDeletionRequest' test.out

#- 34 PublicGetMyAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-my-account-deletion-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGetMyAccountDeletionStatus' test.out

#- 35 S2SGetListFinishedAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-account-deletion-request' \
    'RulpqpymDkQhtrHW' \
    'wRVnwVBOqOHi8pWG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 36 S2SGetListFinishedPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-personal-data-request' \
    'd1juYhiqjRJOqB5F' \
    '93zFQbJndUDpdONn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'S2SGetListFinishedPersonalDataRequest' test.out

#- 37 S2SSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-submit-user-account-deletion-request' \
    'eAczbBdHb2slt71B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'S2SSubmitUserAccountDeletionRequest' test.out

#- 38 S2SRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-s2s-request-data-retrieval' \
    '1SmZp2JZp50CnPb7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'S2SRequestDataRetrieval' test.out

#- 39 S2SGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-s2s-generate-personal-data-url' \
    '1ORYcmQbTU5JX8cc' \
    'LjMXJRk0eaKQDOJv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'S2SGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
