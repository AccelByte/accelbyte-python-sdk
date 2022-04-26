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

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..21"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

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
    '["FtBxyZcD"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["XBpGlsQu"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["Ju8vMf0I"]' \
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
    'sJkTrd8I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetUserAccountDeletionRequest' test.out

#- 9 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'DcV2zXnT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSubmitUserAccountDeletionRequest' test.out

#- 10 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'KjXY1bPq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCancelUserAccountDeletionRequest' test.out

#- 11 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'amiBxx9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserPersonalDataRequests' test.out

#- 12 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    's18EY84e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRequestDataRetrieval' test.out

#- 13 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'kItqRzHU' \
    '1oh570KQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserPersonalDataRequest' test.out

#- 14 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'BVaewc72' \
    'krSha68n' \
    '3Ynozp1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGeneratePersonalDataURL' test.out

#- 15 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    '2KmIQTuB' \
    'dNEUsxFb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicSubmitUserAccountDeletionRequest' test.out

#- 16 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    '8CJ17M7D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicCancelUserAccountDeletionRequest' test.out

#- 17 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'JZaMSxEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicGetUserAccountDeletionStatus' test.out

#- 18 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'bZbygyoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetUserPersonalDataRequests' test.out

#- 19 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'rORoeNHS' \
    'b8Rh3kgs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicRequestDataRetrieval' test.out

#- 20 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    '9qqJbnQs' \
    'oBgiVpP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicCancelUserPersonalDataRequest' test.out

#- 21 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'Cm3yvASU' \
    'oxdxxFqm' \
    'AGTJ8IEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGeneratePersonalDataURL' test.out


rm -f "tmp.dat"

exit $EXIT_CODE