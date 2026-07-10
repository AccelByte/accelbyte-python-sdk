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
gdpr-admin-update-services-configuration '{"services": [{"extendConfig": {"appName": "uI9a2I9u6Vpbsx5w", "namespace": "8hqUI06UpOXGSLmC"}, "id": "VuHOPlLlkvR8sKgn", "package": "uRkgghGoYupD391C", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "D6SCwGrncqmLtjQH"}, "type": "SERVICE"}, {"extendConfig": {"appName": "mt1d67FXGk2s9Q0m", "namespace": "PVo3twu0MesTCf9x"}, "id": "4rt69lna7qxNeIxP", "package": "z6MbwL6IY69z1UaL", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "YSYWytLPziZMdjxc"}, "type": "SERVICE"}, {"extendConfig": {"appName": "3IL5TAQ6iiPlSC2u", "namespace": "E4o5Vwdo3fePqIJA"}, "id": "8IHtrkmu0hpDDWVA", "package": "la2l5BYNtIuS5S5X", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "CHYzUOcEdscKHPEq"}, "type": "EXTEND"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-platform-account-closure-services-configuration '{"services": [{"extendConfig": {"appName": "v7t1o7TTr1DmrhZv", "namespace": "15T7quIOvBMcaYmv"}, "id": "CkGZ5dAgqxpBFmaL", "package": "oxozr6wfNPX2bOIt", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "u0M3VHh2EI8JlDbP"}, "type": "EXTEND"}, {"extendConfig": {"appName": "YGu0rdlgdWyOtXi3", "namespace": "choQrpOsDBU5Sepj"}, "id": "ChB3V0v52Dlym6pu", "package": "Q23xoJ8aeCnaLpUK", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "4YUDjasWIPUvmEej"}, "type": "SERVICE"}, {"extendConfig": {"appName": "r6kILsSSyDdmykmo", "namespace": "PYgc2L4jk4Lo0LSP"}, "id": "0pf4IxjUkl535X3a", "package": "teEKDpADz1x3poD3", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "32e8c5csSovoqsZN"}, "type": "SERVICE"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-platform-account-closure-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-user-platform-account-closure-histories --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'wbmXgdAPh1EThG96' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'gAFKK2WDgCcxvONZ' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'm3EeERmDnyeFoF7V' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'SZ6pf3vneSD2Tb3g' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval '7mSQUhAEtrmjqU6Y' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'E3p4lSck0ZHn5GI3' '9YBHqaTHeKtW18iG' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'eUlc9d9sogWa24CK' 'NS0GqVvUfHQvsHXN' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 'UNe4mhgo5QB65lSA' 'iYnNjkfZrQvGgbLd' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'LsFzHkBMr1yrOMlN' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'FSrUEirnjX9fDmIb' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'eZxzfTcyiuATus9h' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'sfpFDcSDG8aMVGLi' 'BNrDjqoxcwgGLXpU' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'L4pp2ncYAHdNzDme' 'IP6rOvDz9KOsb392' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'k6YmJFfRByjlBiuF' 'M3FIoVk8T3GpAnkC' 'mBUqg2SCnqntX9y1' --login_with_auth "Bearer foo"
gdpr-public-submit-my-account-deletion-request 'aZSWMiVi10sG6vxk' 'fUcmqRRbceJ5i0Ee' --login_with_auth "Bearer foo"
gdpr-public-cancel-my-account-deletion-request --login_with_auth "Bearer foo"
gdpr-public-get-my-account-deletion-status --login_with_auth "Bearer foo"
gdpr-public-submit-my-headless-deletion-request --login_with_auth "Bearer foo"
gdpr-public-submit-my-headless-personal-data-request --login_with_auth "Bearer foo"
gdpr-public-generate-my-headless-personal-data-url 'DxOgBnhhqElIaDml' --login_with_auth "Bearer foo"
gdpr-public-get-my-personal-data-requests --login_with_auth "Bearer foo"
gdpr-public-submit-my-personal-data-request '48wdNFLTm5T50x9W' 'T0GfH2rtOa4EXsXz' --login_with_auth "Bearer foo"
gdpr-public-cancel-my-personal-data-request 'OXQAk4mqrxzTtuLl' --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-account-deletion-request '4XlbGL8QOxtjzm8y' '2wNhmwoYZyI4EFZK' --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-personal-data-request 'BcYrCEAE7WIsfmx4' '0NLRc6m8heKnWhzf' --login_with_auth "Bearer foo"
gdpr-s2s-get-data-request-by-request-id 'e2NubeoKFeIaFQCY' --login_with_auth "Bearer foo"
gdpr-s2s-submit-user-account-deletion-request 'oDPICpnduEEQlULd' --login_with_auth "Bearer foo"
gdpr-s2s-request-data-retrieval 'Jz4mnRBkMNxvvKgA' --login_with_auth "Bearer foo"
gdpr-s2s-generate-personal-data-url 'T8mJrYq6hRkloqxM' '3gpwxcfMy9XzjjI5' --login_with_auth "Bearer foo"
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
echo "1..49"

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
    '["YbsKoADkzJEN2VHz", "ih3bit0VWn3CO39P", "XDNxtXgeO3FgkXhj"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["DzaQY3snn2ZkP7cF", "dP43e5dC9XIBudfZ", "grbHDIDm4hMzF4Tx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["odenSrUTvfqU0bfo", "Mm5cTtFWbotQyXJR", "cQWsmqPNs92epxk0"]' \
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
    '{"bpCert": "i8VxsZNereSvf969", "password": "9mCEHThUJkETAsSp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-client' \
    '7gh4TeUTkOkAYfJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-client' \
    '{"bpCert": "8AT9t4Tv207Y2QD3", "bpCertFileName": "oD5fLCr3OOlXVv8Z", "clientId": "GF7uYnGzpipNDigN", "password": "Jma1MbqqZtfNWql4", "publisherKey": "nmwAft4gqkNNlWkD", "sandboxId": "9eOziYRFOn0jJLHC", "secret": "9LxhvNXTwGBCtohL"}' \
    'tl9Zuhytm5UDrT6Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-delete-platform-account-closure-client' \
    'XCs5SPBbRPZTF6oQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
$PYTHON -m $MODULE 'gdpr-admin-mock-platform-account-closure-data' \
    '{"platformUserId": "AXVG7tnsZg5QgXjv", "sandbox": "yGJPN4eXbJE5Vs2G", "startImmediately": false}' \
    'cnEevcAx2K2zkRen' \
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
    '{"services": [{"extendConfig": {"appName": "mPZnGBt4P7WnbdSJ", "namespace": "tjX7ZshZyZl5x4bR"}, "id": "XBHUTrDzZSKscfOc", "package": "Yu3dpCROYqUiGKXV", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "o2ogaKt2ujQSa3Zd"}, "type": "EXTEND"}, {"extendConfig": {"appName": "QpNhlI2iS5EpGhhv", "namespace": "XYck0upMzUYnb76t"}, "id": "FkEORV3bu1bNCtX7", "package": "W40V6Do5sYadCCFr", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "ulIJzPyrVEiOG4Uc"}, "type": "SERVICE"}, {"extendConfig": {"appName": "arv8mnfHK8CCmE2l", "namespace": "PnsbD3SGEdlwuUcc"}, "id": "E536ugBp3HBvepnD", "package": "CjgyJlXe36mgWjLf", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "xbnGezKsDwG2omOR"}, "type": "SERVICE"}]}' \
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
    '{"services": [{"extendConfig": {"appName": "nvYI9TVqJdvzcWbf", "namespace": "UpaXp5JMl5LL4bTx"}, "id": "BmZjdrrIxsB0NRsB", "package": "1fPqqRRulpqpymDk", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "Pdjhdinpng5BLy8w"}, "type": "EXTEND"}, {"extendConfig": {"appName": "8pWGd1juYhiqjRJO", "namespace": "qB5F93zFQbJndUDp"}, "id": "dONneAczbBdHb2sl", "package": "t71B1SmZp2JZp50C", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "1j02o7JjTXAQN0qd"}, "type": "SERVICE"}, {"extendConfig": {"appName": "cLjMXJRk0eaKQDOJ", "namespace": "vrTefglSs6g4iY9u"}, "id": "02aCNYIWekp18lOC", "package": "3mNqF7Bl0LcghVHf", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "spxwhRON0bc1eMbE"}, "type": "EXTEND"}]}' \
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
    'FFJ1KesKoELCpobB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'EG8X645xpdXpai0r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'YaT5hOPjaf3H0tYi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'ghU0VUfcYHJbBfAK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'SiPW3VgsZXiR1DJ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'HVWqMkNSawQUWDFJ' \
    'vJBWic7UkBeIXuqD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'uAXI66bQ71w0deoV' \
    '9Lx5RDA1l2XcrciY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'NEzvSZIPkhSgORcz' \
    '5S5BvmgBLxh4ijFn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'E3Tam69qSZ7PC6f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'QkmZXElW9YfRSse6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'AAz3S4czz0QKFlAV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'mVLu4AOec0z8eBee' \
    'oip68J1nsv4W2OJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'tafxMSJlHeb34sZK' \
    'Hcl5LLLOexL4fZvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'tND2tcBFpX8lNtFE' \
    'J7tnkY6Mca5afj12' \
    'K2IzrBvvWm4udE0O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-account-deletion-request' \
    'XudXgNne8kJATwlc' \
    '6esUp6Sw1I98jeZQ' \
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

#- 38 PublicSubmitMyHeadlessDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-headless-deletion-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicSubmitMyHeadlessDeletionRequest' test.out

#- 39 PublicSubmitMyHeadlessPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-headless-personal-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicSubmitMyHeadlessPersonalDataRequest' test.out

#- 40 PublicGenerateMyHeadlessPersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-my-headless-personal-data-url' \
    '7hfxnhLd3Knaknoe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGenerateMyHeadlessPersonalDataURL' test.out

#- 41 PublicGetMyPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-my-personal-data-requests' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetMyPersonalDataRequests' test.out

#- 42 PublicSubmitMyPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-personal-data-request' \
    'd9DHhLOqQGhCUr6i' \
    'TrjyEgarAdNJOIG3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicSubmitMyPersonalDataRequest' test.out

#- 43 PublicCancelMyPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-my-personal-data-request' \
    '6I6tRbRcrEveMdAd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicCancelMyPersonalDataRequest' test.out

#- 44 S2SGetListFinishedAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-account-deletion-request' \
    'iPKDUVSC00PYeDca' \
    'gginxnFIna3yddcb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 45 S2SGetListFinishedPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-personal-data-request' \
    'sPheTH26IUJNvYuG' \
    'RUvpZaHCuESOiIZs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'S2SGetListFinishedPersonalDataRequest' test.out

#- 46 S2SGetDataRequestByRequestID
$PYTHON -m $MODULE 'gdpr-s2s-get-data-request-by-request-id' \
    'MfB4ZH3mtgWgU4pC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'S2SGetDataRequestByRequestID' test.out

#- 47 S2SSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-submit-user-account-deletion-request' \
    'AKxeE70CaunQNxot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'S2SSubmitUserAccountDeletionRequest' test.out

#- 48 S2SRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-s2s-request-data-retrieval' \
    '371W9G4AvQkqsGnm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'S2SRequestDataRetrieval' test.out

#- 49 S2SGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-s2s-generate-personal-data-url' \
    'yo5JJTUVmb8GEXFT' \
    'lEMEsFzYqwgK1Np5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'S2SGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
