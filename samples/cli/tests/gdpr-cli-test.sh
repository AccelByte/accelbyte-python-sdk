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
gdpr-update-admin-email-configuration '["I6d2EYjL", "2Eg6nuFJ", "yEXJjUIe"]' --login_with_auth "Bearer foo"
gdpr-save-admin-email-configuration '["mDAAtrnL", "puksnlkd", "ySXfykOm"]' --login_with_auth "Bearer foo"
gdpr-delete-admin-email-configuration '["CXi1UjDJ", "WJa6mv2r", "hOlnDpxC"]' --login_with_auth "Bearer foo"
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request '4fJm8Qav' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request '7C8Xx966' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'kzP0AUFL' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'PM4JQ9E0' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval '2cvnFqQO' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'hk7sazXz' '2lDwMQNG' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url 'C3tiJ2ws' 'qM4cVYDG' 'GyWMmDQr' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 'e0BSMBSS' 'xNZEuGUr' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'oDdkpPA2' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status 'FbrtAayu' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 't6hSorFV' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'O2Q7qAiX' 'JBNLxXSE' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'bQip0pjq' '1ICKN9uN' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url '5De27z4s' 'SuakM6r2' 'jtnGxVwE' --login_with_auth "Bearer foo"
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
    '["0YK2JACj", "hhMipQbI", "3TUrlzk9"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["jRm9zqFm", "x1QPXsSI", "PFMZiv2G"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["mdN528ES", "KpaNo6ij", "s5y3BO4L"]' \
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
    'VFRQFFmJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetUserAccountDeletionRequest' test.out

#- 9 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'Hzmz9x2g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSubmitUserAccountDeletionRequest' test.out

#- 10 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'c78OF70F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCancelUserAccountDeletionRequest' test.out

#- 11 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'yqhgD2HA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserPersonalDataRequests' test.out

#- 12 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    '25OnLSfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRequestDataRetrieval' test.out

#- 13 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'wMYzjSZw' \
    'L3vzEgjV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserPersonalDataRequest' test.out

#- 14 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'UT2qWsOj' \
    'jsqPg1D6' \
    'qUimuUVG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGeneratePersonalDataURL' test.out

#- 15 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'juIN9rbD' \
    'Qo7wLLz0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicSubmitUserAccountDeletionRequest' test.out

#- 16 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'olxU73G7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicCancelUserAccountDeletionRequest' test.out

#- 17 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'AmwXkDUx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicGetUserAccountDeletionStatus' test.out

#- 18 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'tinGlwsE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetUserPersonalDataRequests' test.out

#- 19 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'HTLmNvHP' \
    'b14Tzpmg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicRequestDataRetrieval' test.out

#- 20 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'wDRLOID6' \
    '1CtOVyp7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicCancelUserPersonalDataRequest' test.out

#- 21 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'g82SpwHI' \
    '8yVZhUah' \
    'ShWLgUqO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
