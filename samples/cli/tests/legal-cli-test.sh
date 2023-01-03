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
legal-change-preference-consent 'bR3qa8cC' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ujgba96S", "policyId": "DUYvYIT0", "policyVersionId": "qDJFMHf3"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ou7OpDqA", "policyId": "SlLNTAKy", "policyVersionId": "DON0Uds6"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hAyBoFzE", "policyId": "oSqxY3Zk", "policyVersionId": "CAaxYH3o"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements '82rXZvgg' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'QSeYY4h0' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["oGfohAW7", "5cIGOjdX", "RTso45Jm"], "affectedCountries": ["TLd5WchL", "oKQVUKMY", "Rfkh816J"], "basePolicyName": "u26CnQyG", "description": "ooFQDv6l", "namespace": "dRj2E8b9", "tags": ["LFrkbtwU", "Ks1EfZJo", "7mg73yBo"], "typeId": "BPrJ0mVh"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'FEzF1Cwv' --login_with_auth "Bearer foo"
legal-partial-update-policy 'Pm8OXmco' --body '{"affectedClientIds": ["zCLPTd7P", "0USC0yAW", "4JNDitHf"], "affectedCountries": ["Cq91E34O", "URxar4CX", "z4NRFDvd"], "basePolicyName": "CEivfgYK", "description": "25aSlIUX", "namespace": "r5KsFOtV", "tags": ["VFCHfk6y", "SBWiYa1A", "iN7zMLhW"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'LWANsDNU' 'Jy5ALNnx' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'IRvqFDtF' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'k0uUPHCd' --body '{"contentType": "Wmwqt4CS", "description": "ZI7zeXFv", "localeCode": "dyDuy9ez"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'yWksFRAp' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'LSDeiXZ5' --body '{"attachmentChecksum": "9BOaYbU0", "attachmentLocation": "cpoiurcL", "attachmentVersionIdentifier": "zy75cJ7j", "contentType": "IDZISY6D", "description": "GXR2K5IV"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'ujjbvtuX' --body '{"contentMD5": "c57MllPo", "contentType": "CZ6jCJLG"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'czYcXXxN' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'FZ2uAsW1' 'HjbwtgSW' 'FOrk2y7V' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uf7dxT4O", "policyId": "XgZnsvDP", "policyVersionId": "gYXUCINy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TvT3s88N", "policyId": "kZ8OIbS9", "policyVersionId": "7ApUEz80"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "B6ficB9z", "policyId": "acQceRLM", "policyVersionId": "4cxXD6pE"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'jvSwKV47' '1JdsV2Yn' '11dSQ8iZ' --login_with_auth "Bearer foo"
legal-retrieve-policies 'Gfk9zT36' --login_with_auth "Bearer foo"
legal-update-policy-version '5GUSq2oO' --body '{"description": "2tKkZ2dO", "displayVersion": "ply1k0mU", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'RyFBz5hk' --login_with_auth "Bearer foo"
legal-update-policy 'PuRLA8WA' --body '{"description": "bA8HpIYQ", "isDefaultOpted": false, "isMandatory": false, "policyName": "dAZ5Xqts", "readableId": "v9WvG7nN", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'q7PqE2mK' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'nSd9XdWk' --login_with_auth "Bearer foo"
legal-create-policy-version 'ooaaVjpJ' --body '{"description": "drO9eAhX", "displayVersion": "5SC20Bzd", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '32' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'dbAB5d1G' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sBEo5OaB", "policyId": "eIr26unv", "policyVersionId": "Gt6DGRwt"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "k1ibb1qa", "policyId": "4QIdyaSr", "policyVersionId": "tMhHScwg"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "f2jBaxbb", "policyId": "pdLMLVrl", "policyVersionId": "4a88t8jB"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '5f3szJr1' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6VoFLsCR", "policyId": "rWHh51B6", "policyVersionId": "sPcqcCcG"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fvvGbqOa", "policyId": "JYPZyFHv", "policyVersionId": "vEIqNpyM"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Acdf8tT9", "policyId": "RW65e9i0", "policyVersionId": "rLJFaHGJ"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'LTU1YQAL' 'bzw9ZPs8' '1fFhqpa3' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fArt4Mgm", "policyId": "yjOpMCHc", "policyVersionId": "eiauBzYO"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ywwt4wJD", "policyId": "2f7KVUyr", "policyVersionId": "85lv16Or"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RBerRz9C", "policyId": "EiMGeEAZ", "policyVersionId": "sTy0R4W8"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'OOZexLuF' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NwPdPPn3", "policyId": "HNKNJnR3", "policyVersionId": "9ISr3UGd"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "NAGmvuwH", "policyId": "3bmtEAvz", "policyVersionId": "xC62Duy6"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uAsF5Tjs", "policyId": "U3tDqPgL", "policyVersionId": "ksYEoVx2"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'GeOpqHnx' 'MB3WEbfe' '660GnWrM' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'pJKWiN1H' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies '6TRnmAo5' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'YZlXOiGq' --login_with_auth "Bearer foo"
legal-check-readiness --login_with_auth "Bearer foo"
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
echo "1..42"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'x3JtX5o9' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3qg0VKHB", "policyId": "3wdZ7BP7", "policyVersionId": "HaZXEcou"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FgIlY0yT", "policyId": "DuaWwPXm", "policyVersionId": "BbIE4Lwy"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QNoRLwaw", "policyId": "DUODLg6B", "policyVersionId": "u8pENTFs"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    '42Y1JIhI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'Yuo3hX8b' \
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
    --body '{"affectedClientIds": ["Aya86W8y", "lsUrCKo6", "rEPDT6o8"], "affectedCountries": ["XvP4tiYR", "5CwcgPLE", "CcyK9Rvi"], "basePolicyName": "mdC9VSmI", "description": "dSsxFrEC", "namespace": "ABt0VX4b", "tags": ["X7Nbh0kY", "Lgythj8f", "xAAJAeoC"], "typeId": "9osJJmKa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    '35CxzJsf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'FO4UtDrA' \
    --body '{"affectedClientIds": ["4C3KWMxH", "NXzkdVsR", "Wzu6TXkQ"], "affectedCountries": ["eSgug5VU", "ygyAej5b", "u6nSOt1T"], "basePolicyName": "GeFKJkQ9", "description": "ybQ0PHrL", "namespace": "d2CymIED", "tags": ["HsI0kQeI", "xOpS88Xu", "ZJ1WOMxW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'NvLHyfUX' \
    'un91Y7pQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'JuPcjZal' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '2FTgeRhR' \
    --body '{"contentType": "mkdvsF2x", "description": "owHCp045", "localeCode": "ZSNwqjZS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'nIGd9g0p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'pCvSQrP7' \
    --body '{"attachmentChecksum": "lmePkIGn", "attachmentLocation": "RtjcNH9U", "attachmentVersionIdentifier": "0dqEOZhy", "contentType": "e7HVyB23", "description": "uZRhBJv0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'uscZBala' \
    --body '{"contentMD5": "cIKToodN", "contentType": "nGt2AWhK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'FiGjzk5P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    '5Dx5sPSv' \
    'obCmG0ls' \
    '9oyYa68t' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "W6TI6PNW", "policyId": "uAuDkETz", "policyVersionId": "CjoZrsDP"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GebKUVN7", "policyId": "tEfZQacN", "policyVersionId": "5ctrcKsl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "lDgNTgho", "policyId": "FrgT6raM", "policyVersionId": "VLhwtWlH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'N9UfjN9v' \
    '7ohIkJN4' \
    'Wbupftrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'Mru9l5lc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'Z1kd3HQR' \
    --body '{"description": "7KVOdytW", "displayVersion": "hyWVzAfg", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'v4E0B5X4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'WhOUiYyc' \
    --body '{"description": "iGro5t5o", "isDefaultOpted": false, "isMandatory": false, "policyName": "ZK2pcfix", "readableId": "aWqesdvP", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'FB8Cevhs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '4cAEAaZB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'Wvxw3Nim' \
    --body '{"description": "UQqBb0Jc", "displayVersion": "D0Q0GhNN", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '87' \
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
    'vDduwe6h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Q3pzn9QP", "policyId": "HqdpQGai", "policyVersionId": "jQdJ2Lw6"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JswG3nLq", "policyId": "fc9Wz7Kq", "policyVersionId": "UXyF2vxd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aZr5oOrF", "policyId": "tTbRavuK", "policyVersionId": "K6ApTgKd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'DMx1ILuz' \
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
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5xFCgmSr", "policyId": "YQPWr4pv", "policyVersionId": "1Fmb91j8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KisLn4Ks", "policyId": "qsjvqcCV", "policyVersionId": "4beeViEz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8C4bGcsz", "policyId": "tfrzX3JU", "policyVersionId": "V3coiVVm"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'BRzAjX9w' \
    'l6FHIDjn' \
    'PIEcDUCK' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wPgfcQNu", "policyId": "jIfAMqRT", "policyVersionId": "fTJos3iA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DjOdfSG7", "policyId": "qp1H2NH7", "policyVersionId": "xz5kPHwT"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8AeVNg7i", "policyId": "j59uKQ9L", "policyVersionId": "uqYt3t5F"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'UOf8EOqu' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iRsbSbyl", "policyId": "IJ7B8PiU", "policyVersionId": "vJFsVlP0"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vIbb4fbY", "policyId": "5aO3SEq1", "policyVersionId": "6LIuNrvh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oSgbFBdR", "policyId": "oCcwxNPE", "policyVersionId": "2jMY4b63"}]' \
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
    'sXrbNRna' \
    '8ag93Din' \
    'MhIMWaDa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    '6XZHuejW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'N0nG5zuF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'l7BuOiLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
