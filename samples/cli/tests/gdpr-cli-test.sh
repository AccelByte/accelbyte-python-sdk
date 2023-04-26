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
gdpr-admin-get-user-account-deletion-request 'WEIC32ogW7olvbTg' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'GZ2WBZqxYG3aREAu' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval '2D6QVKNCWP75TB0i' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request '7pKxR8dl0zRVW4EZ' 'G9m0XcgGVbMqSszE' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url '8GHavj7AorKsxwko' 'sAVerXpc1C8XfwHu' 'Keb9l3rGN9A3sNm8' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request '4hddSpHt0P7MIIR7' 'CkyF6C7duuyZ0GhD' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'ogqrhBRd8lDR6qVN' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'PRZYdFLIAjGGJddV' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'Cvu9vx5KQ7KYnIuM' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'BvaO35llzQRaT5kP' 'xUfofvnnSuB0y5WU' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'lrMdI4sNveabntBS' 'xTeIv53HGCiljvjK' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'oyD6SCwGrncqmLtj' 'QHAf8TgoNm03VLis' 'V6zwPuo3td6TC6I3' --login_with_auth "Bearer foo"
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
echo "1..21"

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
    '["lMjGSWN2laRlxfcj", "HfYakUCTqGkE7wcW", "fDslpJSqGAXQ0yYo"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["NRKd3IL5TAQ6iiPl", "SC2uE4o5Vwdo3feP", "qIJA8IHtrkmu0hpD"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["DWVAla2l5BYNtIuS", "5S5XUdjsoqwGyzzW", "i9gwQYv7t1o7TTr1"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteAdminEmailConfiguration' test.out

#- 7 AdminGetListPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-get-list-personal-data-request' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetListPersonalDataRequest' test.out

#- 8 AdminGetUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-get-user-account-deletion-request' \
    'DmrhZv15T7quIOvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetUserAccountDeletionRequest' test.out

#- 9 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'McaYmvCkGZ5dAgqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSubmitUserAccountDeletionRequest' test.out

#- 10 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'pBFmaLoxozr6wfNP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCancelUserAccountDeletionRequest' test.out

#- 11 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'X2bOItRMvqtlB2jJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserPersonalDataRequests' test.out

#- 12 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    'CSQT279ZZPYGu0rd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRequestDataRetrieval' test.out

#- 13 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'lgdWyOtXi3choQrp' \
    'OsDBU5SepjChB3V0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserPersonalDataRequest' test.out

#- 14 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'v52Dlym6puQ23xoJ' \
    '8aeCnaLpUKp44YUD' \
    'jasWIPUvmEejtGeo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGeneratePersonalDataURL' test.out

#- 15 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'yIPa8ZRrvjj7il35' \
    'MXbN9oCMNqq98SjT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicSubmitUserAccountDeletionRequest' test.out

#- 16 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'vhZNkSQ70D0H6BXk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicCancelUserAccountDeletionRequest' test.out

#- 17 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'sUC9b6i5lZC9xv32' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicGetUserAccountDeletionStatus' test.out

#- 18 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'e8c5csSovoqsZNBd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetUserPersonalDataRequests' test.out

#- 19 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'te9NDUPVJf6c2Z0Q' \
    'ZxfgPubTDIHrvqAT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicRequestDataRetrieval' test.out

#- 20 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'huwjRHpKKTlmVr9X' \
    'uoJbRFQSKVPHbn4X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicCancelUserPersonalDataRequest' test.out

#- 21 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'xtu7LQRENjEEztx1' \
    'WsYSiZqan0nSBJro' \
    'av91GXlvPG6bFYRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
