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
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-update-services-configuration '{"services": [{"extendConfig": {"appName": "WEIC32ogW7olvbTg", "namespace": "rhRTcPiSuL0Sly6X"}, "id": "M4OI18mAQLnzjMf8", "serviceConfig": {"protocol": "GRPC", "url": "Z2WBZqxYG3aREAu2"}, "type": "SERVICE"}, {"extendConfig": {"appName": "XhT5FvdiRilZ7oFg", "namespace": "x4c8OumKtPDKJDXn"}, "id": "7Z4U68su8XfqlqNi", "serviceConfig": {"protocol": "GRPC", "url": "avj7AorKsxwkosAV"}, "type": "EXTEND"}, {"extendConfig": {"appName": "ecdKi5r6QEa1ysLE", "namespace": "zth6mXhzkzWkFeZS"}, "id": "oEAcBdW19m4eu6d5", "serviceConfig": {"protocol": "GRPC", "url": "6C7duuyZ0GhDogqr"}, "type": "EXTEND"}]}' --login_with_auth "Bearer foo"
gdpr-admin-reset-services-configuration --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'zFQN05MYzYiKWe5d' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'NRljv7IPrDQQRgat' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request '0SevkLGMS0lyuI9a' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests '2I9u6Vpbsx5w8hqU' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval 'I06UpOXGSLmCVuHO' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'PlLlkvR8sKgnuRkg' 'ghGoYupD391C2qtP' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'YokahFjkQsfCaTmt' '1d67FXGk2s9Q0mPV' 'o3twu0MesTCf9x4r' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 't69lna7qxNeIxPz6' 'MbwL6IY69z1UaLqY' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'SYWytLPziZMdjxcB' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'ZufQxGiHPllG4cYE' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'zfTD1ZBm3MqHcUmL' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'ZZbSqb8RwNmn9HrN' 'Qy4uZAAiE0mit9RG' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'CCHYzUOcEdscKHPE' 'qgA8yu7Vk6Jt4Ymo' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 's9Jcdos4fYcTVU6R' 'Bt0zYoMcHyCUEXlA' 'vxJMdalwSyliWMNW' --login_with_auth "Bearer foo"
gdpr-public-submit-my-account-deletion-request '5NyLu0M3VHh2EI8J' 'lDbPWbQ6Q9lNmqRB' --login_with_auth "Bearer foo"
gdpr-public-cancel-my-account-deletion-request --login_with_auth "Bearer foo"
gdpr-public-get-my-account-deletion-status --login_with_auth "Bearer foo"
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
echo "1..27"

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
    '["aAkLnvxkT1X68cmD", "c3fxU8MyKrQpM4hk", "kK6KKXNB3Gv0IqmF"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["51TkhjYnaq6foWvX", "a3bMrXsDr6kILsSS", "yDdmykmoPYgc2L4j"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["k4Lo0LSP0pf4IxjU", "kl535X3ateEKDpAD", "z1x3poD3Qgb3boLQ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetListPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-personal-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetListPersonalDataRequest' test.out

#- 8 AdminGetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-get-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetServicesConfiguration' test.out

#- 9 AdminUpdateServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-update-services-configuration' \
    '{"services": [{"extendConfig": {"appName": "Q1MzH7Qm8bwbmXgd", "namespace": "APh1EThG96gAFKK2"}, "id": "WDgCcxvONZm3EeER", "serviceConfig": {"protocol": "GRPC", "url": "HpKKTlmVr9XuoJbR"}, "type": "EXTEND"}, {"extendConfig": {"appName": "QSKVPHbn4Xxtu7LQ", "namespace": "RENjEEztx1WsYSiZ"}, "id": "qan0nSBJroav91GX", "serviceConfig": {"protocol": "GRPC", "url": "eKtW18iGeUlc9d9s"}, "type": "EXTEND"}, {"extendConfig": {"appName": "x9Zw5D2L7vIYhGGS", "namespace": "yEW4ZJJ42d3PBddN"}, "id": "8S48l9lyNApflxqM", "serviceConfig": {"protocol": "GRPC", "url": "QvGgbLdLsFzHkBMr"}, "type": "SERVICE"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminUpdateServicesConfiguration' test.out

#- 10 AdminResetServicesConfiguration
$PYTHON -m $MODULE 'gdpr-admin-reset-services-configuration' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminResetServicesConfiguration' test.out

#- 11 AdminGetUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-get-user-account-deletion-request' \
    'yrOMlNFSrUEirnjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserAccountDeletionRequest' test.out

#- 12 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    '9fDmIbeZxzfTcyiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminSubmitUserAccountDeletionRequest' test.out

#- 13 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'ATus9hsfpFDcSDG8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserAccountDeletionRequest' test.out

#- 14 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'aMVGLiBNrDjqoxcw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetUserPersonalDataRequests' test.out

#- 15 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'gGLXpUL4pp2ncYAH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminRequestDataRetrieval' test.out

#- 16 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'dNzDmeIP6rOvDz9K' \
    'Osb392k6YmJFfRBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminCancelUserPersonalDataRequest' test.out

#- 17 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'jlBiuFM3FIoVk8T3' \
    'GpAnkCmBUqg2SCnq' \
    'ntX9y1aZSWMiVi10' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGeneratePersonalDataURL' test.out

#- 18 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'sG6vxkfUcmqRRbce' \
    'J5i0EeDxOgBnhhqE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicSubmitUserAccountDeletionRequest' test.out

#- 19 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'lIaDml48wdNFLTm5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicCancelUserAccountDeletionRequest' test.out

#- 20 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'T50x9WT0GfH2rtOa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserAccountDeletionStatus' test.out

#- 21 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    '4EXsXzOXQAk4mqrx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserPersonalDataRequests' test.out

#- 22 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'zTtuLl4XlbGL8QOx' \
    'tjzm8y2wNhmwoYZy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicRequestDataRetrieval' test.out

#- 23 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'I4EFZKBcYrCEAE7W' \
    'Isfmx40NLRc6m8he' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicCancelUserPersonalDataRequest' test.out

#- 24 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'KnWhzfe2NubeoKFe' \
    'IaFQCYoDPICpnduE' \
    'EQlULdJz4mnRBkMN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGeneratePersonalDataURL' test.out

#- 25 PublicSubmitMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-my-account-deletion-request' \
    'xvvKgAT8mJrYq6hR' \
    'kloqxM3gpwxcfMy9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicSubmitMyAccountDeletionRequest' test.out

#- 26 PublicCancelMyAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-my-account-deletion-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicCancelMyAccountDeletionRequest' test.out

#- 27 PublicGetMyAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-my-account-deletion-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetMyAccountDeletionStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
