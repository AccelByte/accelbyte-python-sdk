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
gdpr-s2s-get-list-finished-account-deletion-request 'DxOgBnhhqElIaDml' '48wdNFLTm5T50x9W' --login_with_auth "Bearer foo"
gdpr-s2s-get-list-finished-personal-data-request 'T0GfH2rtOa4EXsXz' 'OXQAk4mqrxzTtuLl' --login_with_auth "Bearer foo"
gdpr-s2s-get-data-request-by-request-id '4XlbGL8QOxtjzm8y' --login_with_auth "Bearer foo"
gdpr-s2s-submit-user-account-deletion-request '2wNhmwoYZyI4EFZK' --login_with_auth "Bearer foo"
gdpr-s2s-request-data-retrieval 'BcYrCEAE7WIsfmx4' --login_with_auth "Bearer foo"
gdpr-s2s-generate-personal-data-url '0NLRc6m8heKnWhzf' 'e2NubeoKFeIaFQCY' --login_with_auth "Bearer foo"
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
    '["oDPICpnduEEQlULd", "Jz4mnRBkMNxvvKgA", "T8mJrYq6hRkloqxM"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["3gpwxcfMy9XzjjI5", "YbsKoADkzJEN2VHz", "ih3bit0VWn3CO39P"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["XDNxtXgeO3FgkXhj", "DzaQY3snn2ZkP7cF", "dP43e5dC9XIBudfZ"]' \
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
    '{"bpCert": "grbHDIDm4hMzF4Tx", "password": "odenSrUTvfqU0bfo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminValidateXboxBPCertFile' test.out

#- 9 AdminGetPlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-get-platform-account-closure-client' \
    'Mm5cTtFWbotQyXJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetPlatformAccountClosureClient' test.out

#- 10 AdminUpdatePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-update-platform-account-closure-client' \
    '{"bpCert": "cQWsmqPNs92epxk0", "bpCertFileName": "i8VxsZNereSvf969", "clientId": "9mCEHThUJkETAsSp", "password": "7gh4TeUTkOkAYfJB", "publisherKey": "8AT9t4Tv207Y2QD3", "sandboxId": "oD5fLCr3OOlXVv8Z", "secret": "GF7uYnGzpipNDigN"}' \
    'Jma1MbqqZtfNWql4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdatePlatformAccountClosureClient' test.out

#- 11 AdminDeletePlatformAccountClosureClient
$PYTHON -m $MODULE 'gdpr-admin-delete-platform-account-closure-client' \
    'nmwAft4gqkNNlWkD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeletePlatformAccountClosureClient' test.out

#- 12 AdminMockPlatformAccountClosureData
$PYTHON -m $MODULE 'gdpr-admin-mock-platform-account-closure-data' \
    '{"platformUserId": "9eOziYRFOn0jJLHC", "sandbox": "9LxhvNXTwGBCtohL", "startImmediately": true}' \
    'l7MUBG7qtPu64yAt' \
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
    '{"services": [{"extendConfig": {"appName": "URKLRkb738HGS6rD", "namespace": "gMdIIlhS1fSiM933"}, "id": "1m7Ta1PsKc50Kv6e", "package": "cnEevcAx2K2zkRen", "serviceConfig": {"protocol": "EVENT", "skipAck": true, "url": "ZnGBt4P7WnbdSJtj"}, "type": "EXTEND"}, {"extendConfig": {"appName": "7ZshZyZl5x4bRXBH", "namespace": "UTrDzZSKscfOcYu3"}, "id": "dpCROYqUiGKXVFCm", "package": "po6sPwVOEDSJsEK5", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "Xmy0Zp6iIaTIKUkm"}, "type": "EXTEND"}, {"extendConfig": {"appName": "0upMzUYnb76tFkEO", "namespace": "RV3bu1bNCtX7W40V"}, "id": "6Do5sYadCCFrHHC3", "package": "DpZxkrQDXuNFviMa", "serviceConfig": {"protocol": "GRPC", "skipAck": true, "url": "v8mnfHK8CCmE2lPn"}, "type": "SERVICE"}]}' \
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
    '{"services": [{"extendConfig": {"appName": "IpomM8sm1MiaI1mX", "namespace": "2tJoARtdbBe7udsM"}, "id": "rok0WvGYYnx4V709", "package": "xbnGezKsDwG2omOR", "serviceConfig": {"protocol": "GRPC", "skipAck": false, "url": "Vg8JqU0jZpjvsugA"}, "type": "EXTEND"}, {"extendConfig": {"appName": "S7u8RiWyerCSa8SR", "namespace": "gwsAj1ik1jglaDXT"}, "id": "vKCWwNTAhd2wrS0u", "package": "Pdjhdinpng5BLy8w", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "pWGd1juYhiqjRJOq"}, "type": "SERVICE"}, {"extendConfig": {"appName": "P57dBZNR88YbCtmK", "namespace": "y8M9zVrjfGXZnqAQ"}, "id": "UoY1GjlIIk0iKoTT", "package": "S1j02o7JjTXAQN0q", "serviceConfig": {"protocol": "EVENT", "skipAck": false, "url": "skdQV0TqI8EFnmDb"}, "type": "SERVICE"}]}' \
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
    'vrTefglSs6g4iY9u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserAccountDeletionRequest' test.out

#- 22 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    '02aCNYIWekp18lOC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminSubmitUserAccountDeletionRequest' test.out

#- 23 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    '3mNqF7Bl0LcghVHf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminCancelUserAccountDeletionRequest' test.out

#- 24 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'PEspxwhRON0bc1eM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserPersonalDataRequests' test.out

#- 25 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'bEIjowLqc3ecjXJb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminRequestDataRetrieval' test.out

#- 26 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'ZDKKoxLE1Y3Dymtj' \
    '3giPg4x4yiPX6ues' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminCancelUserPersonalDataRequest' test.out

#- 27 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    '1Hhhkg1yLVbLFzHE' \
    'P8cM4NTwr0KHaAsm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGeneratePersonalDataURL' test.out

#- 28 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'Tej52WKi6tArAURt' \
    '9plCSVq8PdH6hJPU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicSubmitUserAccountDeletionRequest' test.out

#- 29 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'Ac0RVwXgAgntLMCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicCancelUserAccountDeletionRequest' test.out

#- 30 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'aXBWQi6BqPg4xr0l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGetUserAccountDeletionStatus' test.out

#- 31 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'CancUZGCHsZYoLfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserPersonalDataRequests' test.out

#- 32 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    '1KtOv7Zy0b65uvuK' \
    'Nuy0ytZQ7M6Nzy1a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicRequestDataRetrieval' test.out

#- 33 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'dnSKOLFKx1dX4LuW' \
    'Ju3pDMUAeeZ97SBR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicCancelUserPersonalDataRequest' test.out

#- 34 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'OPYuG6XqP6oo7G73' \
    'zdxTgOfnwIdlNa29' \
    'fDLh741IslKHzGlL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicGeneratePersonalDataURL' test.out

#- 35 PublicSubmitMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-account-deletion-request' \
    'KWUtDQs61OQAoxyy' \
    'QpRWCiiPDGQhNPEw' \
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
    'iJCf2XJVrlzqQls1' \
    'ozhLVA3kE8jKvgat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'S2SGetListFinishedAccountDeletionRequest' test.out

#- 39 S2SGetListFinishedPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-s2s-get-list-finished-personal-data-request' \
    'OEBM70TdlNBJYOmp' \
    'u1VCarzBsV6xnZ5J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'S2SGetListFinishedPersonalDataRequest' test.out

#- 40 S2SGetDataRequestByRequestID
$PYTHON -m $MODULE 'gdpr-s2s-get-data-request-by-request-id' \
    'rzzjrcaug6CWVG8S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'S2SGetDataRequestByRequestID' test.out

#- 41 S2SSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-s2s-submit-user-account-deletion-request' \
    'WP3glU6muswVJnNn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'S2SSubmitUserAccountDeletionRequest' test.out

#- 42 S2SRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-s2s-request-data-retrieval' \
    'N7kAa7j0riFc5HTH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'S2SRequestDataRetrieval' test.out

#- 43 S2SGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-s2s-generate-personal-data-url' \
    'QIoVsGo7dwV9DBqF' \
    'KHQkETJyTlUrwDTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'S2SGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
