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
gdpr-admin-get-platform-account-closure-clients --login_with_auth "Bearer foo"
gdpr-admin-validate-xbox-bp-cert-file '{"bpCert": "WEIC32ogW7olvbTg", "password": "rhRTcPiSuL0Sly6X"}' --login_with_auth "Bearer foo"
gdpr-admin-get-platform-account-closure-client 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
gdpr-admin-update-platform-account-closure-client '{"bpCert": "GZ2WBZqxYG3aREAu", "bpCertFileName": "2D6QVKNCWP75TB0i", "clientId": "7pKxR8dl0zRVW4EZ", "password": "G9m0XcgGVbMqSszE", "publisherKey": "8GHavj7AorKsxwko", "sandboxId": "sAVerXpc1C8XfwHu", "secret": "Keb9l3rGN9A3sNm8"}' '4hddSpHt0P7MIIR7' --login_with_auth "Bearer foo"
gdpr-admin-delete-platform-account-closure-client 'CkyF6C7duuyZ0GhD' --login_with_auth "Bearer foo"
gdpr-admin-mock-platform-account-closure-data '{"platformUserId": "ogqrhBRd8lDR6qVN", "sandbox": "PRZYdFLIAjGGJddV", "startImmediately": true}' 'Rgat0SevkLGMS0ly' --login_with_auth "Bearer foo"
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-services-configuration '{"services": [{"extendConfig": {"appName": "uI9a2I9u6Vpbsx5w", "namespace": "8hqUI06UpOXGSLmC"}, "id": "VuHOPlLlkvR8sKgn", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "kgghGoYupD391C2q"}, "type": "SERVICE"}, {"extendConfig": {"appName": "6SCwGrncqmLtjQHA", "namespace": "f8TgoNm03VLisV6z"}, "id": "wPuo3td6TC6I3lMj", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "WN2laRlxfcjHfYak"}, "type": "EXTEND"}, {"extendConfig": {"appName": "CTqGkE7wcWfDslpJ", "namespace": "SqGAXQ0yYoNRKd3I"}, "id": "L5TAQ6iiPlSC2uE4", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "Vwdo3fePqIJA8IHt"}, "type": "SERVICE"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-platform-account-closure-services-configuration '{"services": [{"extendConfig": {"appName": "qb8RwNmn9HrNQy4u", "namespace": "ZAAiE0mit9RGCCHY"}, "id": "zUOcEdscKHPEqgA8", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "o7TTr1DmrhZv15T7"}, "type": "SERVICE"}, {"extendConfig": {"appName": "s4fYcTVU6RBt0zYo", "namespace": "McHyCUEXlAvxJMda"}, "id": "lwSyliWMNW5NyLu0", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "VHh2EI8JlDbPWbQ6"}, "type": "SERVICE"}, {"extendConfig": {"appName": "lNmqRBaAkLnvxkT1", "namespace": "X68cmDc3fxU8MyKr"}, "id": "QpM4hkkK6KKXNB3G", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "qmF51TkhjYnaq6fo"}, "type": "SERVICE"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-user-platform-account-closure-histories --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'vXa3bMrXsDr6kILs' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'SSyDdmykmoPYgc2L' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request '4jk4Lo0LSP0pf4Ix' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'jUkl535X3ateEKDp' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval 'ADz1x3poD3Qgb3bo' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'LQQ1MzH7Qm8bwbmX' 'gdAPh1EThG96gAFK' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'K2WDgCcxvONZm3Ee' 'ERmDnyeFoF7VSZ6p' 'f3vneSD2Tb3g7mSQ' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 'UhAEtrmjqU6YE3p4' 'lSck0ZHn5GI39YBH' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'qaTHeKtW18iGeUlc' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status '9d9sogWa24CKNS0G' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'qVvUfHQvsHXNUNe4' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'mhgo5QB65lSAiYnN' 'jkfZrQvGgbLdLsFz' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'HkBMr1yrOMlNFSrU' 'EirnjX9fDmIbeZxz' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'fTcyiuATus9hsfpF' 'DcSDG8aMVGLiBNrD' 'jqoxcwgGLXpUL4pp' --login_with_auth "Bearer foo"
gdpr-public-submit-my-account-deletion-request '2ncYAHdNzDmeIP6r' 'OvDz9KOsb392k6Ym' --login_with_auth "Bearer foo"
gdpr-public-cancel-my-account-deletion-request --login_with_auth "Bearer foo"
gdpr-public-get-my-account-deletion-status --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-account-deletion-request 'JFfRByjlBiuFM3FI' 'oVk8T3GpAnkCmBUq' --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-personal-data-request 'g2SCnqntX9y1aZSW' 'MiVi10sG6vxkfUcm' --login_with_auth "Bearer foo"
gdpr-s2s-get-data-request-by-request-id 'qRRbceJ5i0EeDxOg' --login_with_auth "Bearer foo"
gdpr-s2s-submit-user-account-deletion-request 'BnhhqElIaDml48wd' --login_with_auth "Bearer foo"
gdpr-s2s-request-data-retrieval 'NFLTm5T50x9WT0Gf' --login_with_auth "Bearer foo"
gdpr-s2s-generate-personal-data-url 'H2rtOa4EXsXzOXQA' 'k4mqrxzTtuLl4Xlb' --login_with_auth "Bearer foo"
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
echo "1..43"

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
    '["GL8QOxtjzm8y2wNh", "mwoYZyI4EFZKBcYr", "CEAE7WIsfmx40NLR"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["c6m8heKnWhzfe2Nu", "beoKFeIaFQCYoDPI", "CpnduEEQlULdJz4m"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["nRBkMNxvvKgAT8mJ", "rYq6hRkloqxM3gpw", "xcfMy9XzjjI5YbsK"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetPlatformAccountClosureClients
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-clients' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetPlatformAccountClosureClients' test.out

#- 8 AdminValidateXboxBPCertFile
$PYTHON -m $MODULE 'gdpr-admin-validate-xbox-bp-cert-file' \
    '{"bpCert": "oADkzJEN2VHzih3b", "password": "it0VWn3CO39PXDNx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-client' \
    'tXgeO3FgkXhjDzaQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-client' \
    '{"bpCert": "Y3snn2ZkP7cFdP43", "bpCertFileName": "e5dC9XIBudfZgrbH", "clientId": "DIDm4hMzF4Txoden", "password": "SrUTvfqU0bfoMm5c", "publisherKey": "TtFWbotQyXJRcQWs", "sandboxId": "mqPNs92epxk0i8Vx", "secret": "sZNereSvf9699mCE"}' \
    'HThUJkETAsSp7gh4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-delete-platform-account-closure-client' \
    'TeUTkOkAYfJB8AT9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
$PYTHON -m $MODULE 'gdpr-admin-mock-platform-account-closure-data' \
    '{"platformUserId": "t4Tv207Y2QD3oD5f", "sandbox": "LCr3OOlXVv8ZGF7u", "startImmediately": false}' \
    '0o4zGYY7KQI1AeFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminMockPlatformAccountClosureData' test.out

#- 13 AdminGetListPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-personal-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetListPersonalDataRequest' test.out

#- 14 AdminGetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-get-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetServicesConfiguration' test.out

#- 15 AdminUpdateServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-update-services-configuration' \
    '{"services": [{"extendConfig": {"appName": "PqaOkvo1aolB4lkK", "namespace": "B4EYOkQ1jMD3cym8"}, "id": "xIfkOVW2grREOLx0", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "w3HICQLfl7MUBG7q"}, "type": "SERVICE"}, {"extendConfig": {"appName": "5UDrT6QXCs5SPBbR", "namespace": "PZTF6oQAXVG7tnsZ"}, "id": "g5QgXjvyGJPN4eXb", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "50Kv6ecnEevcAx2K"}, "type": "SERVICE"}, {"extendConfig": {"appName": "ehyxlNsjUgxBkF6w", "namespace": "FPoJeQediogEhhM2"}, "id": "rIizGdKvOPdq5xrg", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "Smy1DN9LFkYW5DQy"}, "type": "EXTEND"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminUpdateServicesConfiguration' test.out

#- 16 AdminResetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-reset-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminResetServicesConfiguration' test.out

#- 17 AdminGetPlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetPlatformAccountClosureServicesConfiguration' test.out

#- 18 AdminUpdatePlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-services-configuration' \
    '{"services": [{"extendConfig": {"appName": "KXVFCmpo6sPwVOED", "namespace": "SJsEK5QpNhlI2iS5"}, "id": "EpGhhvXYck0upMzU", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "MA9ORxpzwLR2AK6e"}, "type": "SERVICE"}, {"extendConfig": {"appName": "UGPJsw1fiP80G9Pc", "namespace": "lxcft2ulIJzPyrVE"}, "id": "iOG4UcqsuGKHhMRW", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "d3DlhLuIpomM8sm1"}, "type": "SERVICE"}, {"extendConfig": {"appName": "iaI1mX2tJoARtdbB", "namespace": "e7udsMrok0WvGYYn"}, "id": "x4V709xbnGezKsDw", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "805tVg8JqU0jZpjv"}, "type": "SERVICE"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdatePlatformAccountClosureServicesConfiguration' test.out

#- 19 AdminResetPlatformAccountClosureServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-reset-platform-account-closure-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminResetPlatformAccountClosureServicesConfiguration' test.out

#- 20 AdminGetUserPlatformAccountClosureHistories
$PYTHON -m $MODULE 'gdpr-admin-get-user-platform-account-closure-histories' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminGetUserPlatformAccountClosureHistories' test.out

#- 21 AdminGetUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-get-user-account-deletion-request' \
    'WbfUpaXp5JMl5LL4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'bTxBmZjdrrIxsB0N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'RsB1fPqqRRulpqpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'mDkQhtrHWwRVnwVB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'OqOHi8pWGd1juYhi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'qjRJOqB5F93zFQbJ' \
    'ndUDpdONneAczbBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'Hb2slt71B1SmZp2J' \
    'Zp50CnPb71ORYcmQ' \
    'bTU5JX8ccLjMXJRk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    '0eaKQDOJvrTefglS' \
    's6g4iY9u02aCNYIW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'ekp18lOC3mNqF7Bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    '0LcghVHfPEspxwhR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'ON0bc1eMbEIjowLq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'c3ecjXJbZDKKoxLE' \
    '1Y3Dymtj3giPg4x4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'yiPX6ues1Hhhkg1y' \
    'LVbLFzHEP8cM4NTw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'r0KHaAsmTej52WKi' \
    '6tArAURt9plCSVq8' \
    'PdH6hJPUAc0RVwXg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-account-deletion-request' \
    'AgntLMCuaXBWQi6B' \
    'qPg4xr0lCancUZGC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicSubmitMyAccountDeletionRequest' test.out

#- 36 PublicCancelMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-my-account-deletion-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicCancelMyAccountDeletionRequest' test.out

#- 37 PublicGetMyAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-my-account-deletion-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetMyAccountDeletionStatus' test.out

#- 38 S2SGetListFinishedAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-account-deletion-request' \
    'HsZYoLfR1KtOv7Zy' \
    '0b65uvuKNuy0ytZQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 39 S2SGetListFinishedPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-personal-data-request' \
    '7M6Nzy1adnSKOLFK' \
    'x1dX4LuWJu3pDMUA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'S2SGetListFinishedPersonalDataRequest' test.out

#- 40 S2SGetDataRequestByRequestID
$PYTHON -m $MODULE 'gdpr-s2s-get-data-request-by-request-id' \
    'eeZ97SBROPYuG6Xq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'S2SGetDataRequestByRequestID' test.out

#- 41 S2SSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-submit-user-account-deletion-request' \
    'P6oo7G73zdxTgOfn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'S2SSubmitUserAccountDeletionRequest' test.out

#- 42 S2SRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-s2s-request-data-retrieval' \
    'wIdlNa29fDLh741I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'S2SRequestDataRetrieval' test.out

#- 43 S2SGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-s2s-generate-personal-data-url' \
    'slKHzGlLKWUtDQs6' \
    '1OQAoxyyQpRWCiiP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'S2SGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
