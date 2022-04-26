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
echo "1..43"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'FtBxyZcD' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GlsQuJu8", "policyId": "vMf0IsJk", "policyVersionId": "Trd8IDcV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    '2zXnTKjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'Y1bPqami' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'RetrieveAllUsersByPolicyVersion' test.out

#- 5 RetrieveAllLegalPolicies
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'RetrieveAllLegalPolicies' test.out

#- 6 CreatePolicy
$PYTHON -m $MODULE 'legal-create-policy' \
    --body '{"affectedClientIds": ["Bxx9Cs18"], "affectedCountries": ["EY84ekIt"], "basePolicyName": "qRzHU1oh", "description": "570KQBVa", "namespace": "ewc72krS", "tags": ["ha68n3Yn"], "typeId": "ozp1C2Km"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'IQTuBdNE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'UsxFb8CJ' \
    --body '{"affectedClientIds": ["17M7DJZa"], "affectedCountries": ["MSxECbZb"], "basePolicyName": "ygyoarOR", "description": "oeNHSb8R", "namespace": "h3kgs9qq", "tags": ["JbnQsoBg"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'iVpP8Cm3' \
    'yvASUoxd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'xxFqmAGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'J8IEdagE' \
    --body '{"contentType": "tp4w29KO", "description": "u9c19R6X", "localeCode": "DqWHkkP8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'npLEKMfj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'iX7jpkVZ' \
    --body '{"attachmentChecksum": "k3IaQYEm", "attachmentLocation": "qGodOEGt", "attachmentVersionIdentifier": "9gPOj0c6", "contentType": "i0JkvIas", "description": "73ucYnFA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'J3DK5T4E' \
    --body '{"contentMD5": "ogg0Y39U", "contentType": "oYlpv5bV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'AgtsDhUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'DUscbQDj' \
    'bTQuPMz2' \
    'PTRlkyU8' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PFJ42cwm", "policyId": "zBBSMNco", "policyVersionId": "AAOjKNjf"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'cYHm093a' \
    'YgBU1sqj' \
    'yK0XH45P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'aRSOFQBt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'u23REZ8h' \
    --body '{"description": "RVX7LGOv", "displayVersion": "DdYiQS9i", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'V1C91pjG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    '9gpxL6yc' \
    --body '{"description": "TQdvln2L", "isDefaultOpted": true, "isMandatory": true, "policyName": "SQWEXL6L", "readableId": "FE1YHo9m", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '8hHtWvbN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'YqgUqslA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'rFPiHUIv' \
    --body '{"description": "aCv8kU9d", "displayVersion": "BBpdsJLh", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'yExrkxoo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7WOfercZ", "policyId": "dpMci37D", "policyVersionId": "s7YSfExa"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'I3uzLteM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Alt4hr7H", "policyId": "mOYiBA5l", "policyVersionId": "tAOXmlG6"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'eh1dTdoT' \
    'FpBIcuC1' \
    'dQY93OJn' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D8ldz7Hu", "policyId": "8AD79kdW", "policyVersionId": "unvizU0q"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    '1pHyhhER' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "drysMizB", "policyId": "GSRdP2l7", "policyVersionId": "DNSZ8Aq0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'XiPLQXSe' \
    '07ZddOGT' \
    'MlJjBwj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'HJHQKseE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrievePolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-policy-versions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicyVersions' test.out

#- 40 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'dSXRDSvg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPolicies' test.out

#- 41 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesPublic' test.out

#- 42 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'uauw1xT7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 43 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'CheckReadiness' test.out


rm -f "tmp.dat"

exit $EXIT_CODE