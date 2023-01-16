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
gdpr-update-admin-email-configuration '["9NgbX91U", "YQHOxYmX", "PhMEkEaX"]' --login_with_auth "Bearer foo"
gdpr-save-admin-email-configuration '["gUBPW1sq", "5lLu9Dua", "alfPvPcB"]' --login_with_auth "Bearer foo"
gdpr-delete-admin-email-configuration '["H8Fym179", "vEkXiR4i", "Atg2DXOq"]' --login_with_auth "Bearer foo"
gdpr-admin-get-list-personal-data-request --login_with_auth "Bearer foo"
gdpr-admin-get-user-account-deletion-request 'BCphtgbE' --login_with_auth "Bearer foo"
gdpr-admin-submit-user-account-deletion-request '9RSvFuSB' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-account-deletion-request 'dmElNSTk' --login_with_auth "Bearer foo"
gdpr-admin-get-user-personal-data-requests 'GO7Vlebg' --login_with_auth "Bearer foo"
gdpr-admin-request-data-retrieval 'o98JCe9r' --login_with_auth "Bearer foo"
gdpr-admin-cancel-user-personal-data-request 'r4IKMdcc' 'mT6hkEoW' --login_with_auth "Bearer foo"
gdpr-admin-generate-personal-data-url '7QKKuxbk' 'Ot0aT4uM' '5rEmRHzU' --login_with_auth "Bearer foo"
gdpr-public-submit-user-account-deletion-request 'gccPORxo' 'P64cAVrh' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-account-deletion-request 'W3LREP2m' --login_with_auth "Bearer foo"
gdpr-public-get-user-account-deletion-status '29koQPXG' --login_with_auth "Bearer foo"
gdpr-public-get-user-personal-data-requests 'fKgrIkWv' --login_with_auth "Bearer foo"
gdpr-public-request-data-retrieval 'fIzx2euE' 'aq9uu5QW' --login_with_auth "Bearer foo"
gdpr-public-cancel-user-personal-data-request 'kUqPrNki' 'Lm9Qfzkx' --login_with_auth "Bearer foo"
gdpr-public-generate-personal-data-url 'z7Krqv5L' 'ZcOkWY1J' 'm3TmH1ZV' --login_with_auth "Bearer foo"
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
    '["b0Smu79Z", "Sr5BCvSZ", "WQHdKomr"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'UpdateAdminEmailConfiguration' test.out

#- 5 SaveAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-save-admin-email-configuration' \
    '["JodiMOtN", "1hebSiP4", "ENm4UVaK"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'SaveAdminEmailConfiguration' test.out

#- 6 DeleteAdminEmailConfiguration
$PYTHON -m $MODULE 'gdpr-delete-admin-email-configuration' \
    '["3P9KoO3b", "o73X5MZK", "YdbLqA2o"]' \
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
    '80A7BLeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetUserAccountDeletionRequest' test.out

#- 9 AdminSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-submit-user-account-deletion-request' \
    'oppE69p4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminSubmitUserAccountDeletionRequest' test.out

#- 10 AdminCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-account-deletion-request' \
    'M7A5BWJB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCancelUserAccountDeletionRequest' test.out

#- 11 AdminGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-admin-get-user-personal-data-requests' \
    'G1JOORCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetUserPersonalDataRequests' test.out

#- 12 AdminRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-admin-request-data-retrieval' \
    '18sIsUiu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminRequestDataRetrieval' test.out

#- 13 AdminCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-admin-cancel-user-personal-data-request' \
    'e9UZ7Xs3' \
    'tKr3rdV8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminCancelUserPersonalDataRequest' test.out

#- 14 AdminGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-admin-generate-personal-data-url' \
    'gI0dtTbP' \
    'hVxlkFfO' \
    'sGddXjCY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGeneratePersonalDataURL' test.out

#- 15 PublicSubmitUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-submit-user-account-deletion-request' \
    'QRzpBi1W' \
    'dKxAeGHn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'PublicSubmitUserAccountDeletionRequest' test.out

#- 16 PublicCancelUserAccountDeletionRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-account-deletion-request' \
    'FtOFcQiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'PublicCancelUserAccountDeletionRequest' test.out

#- 17 PublicGetUserAccountDeletionStatus
$PYTHON -m $MODULE 'gdpr-public-get-user-account-deletion-status' \
    'JfgqF7AO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicGetUserAccountDeletionStatus' test.out

#- 18 PublicGetUserPersonalDataRequests
$PYTHON -m $MODULE 'gdpr-public-get-user-personal-data-requests' \
    'OfOSFXUy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetUserPersonalDataRequests' test.out

#- 19 PublicRequestDataRetrieval
$PYTHON -m $MODULE 'gdpr-public-request-data-retrieval' \
    'bd0AeUad' \
    '3zmGmGIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicRequestDataRetrieval' test.out

#- 20 PublicCancelUserPersonalDataRequest
$PYTHON -m $MODULE 'gdpr-public-cancel-user-personal-data-request' \
    'n0gxCL2x' \
    'M57xXOPQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicCancelUserPersonalDataRequest' test.out

#- 21 PublicGeneratePersonalDataURL
$PYTHON -m $MODULE 'gdpr-public-generate-personal-data-url' \
    'ZC0L2iKV' \
    'yk9jnVOg' \
    'UVETmxXe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGeneratePersonalDataURL' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
