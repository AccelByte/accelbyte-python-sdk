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
legal-change-preference-consent '9HmMU8u7' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kBKcW4lu", "policyId": "GVLNIqQZ", "policyVersionId": "WMfC3odD"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "unYpXRBU", "policyId": "JIh85v3q", "policyVersionId": "7vLBC7YM"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "d38ssU7z", "policyId": "lKtIvg6t", "policyVersionId": "EWcadSHr"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'dFkJCDL3' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version '0JTVpit5' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["8jzylTXV", "TVkJwyPD", "4ClRwpnI"], "affectedCountries": ["PQkoIAav", "0OVYEowl", "bUiCKSQU"], "basePolicyName": "jMBK50YV", "description": "L2qAL0RI", "namespace": "Aeqr71sy", "tags": ["uA70TqC5", "PajkZJxm", "LF2dJgMu"], "typeId": "1Vwfrn2r"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'pfS72QI1' --login_with_auth "Bearer foo"
legal-partial-update-policy '7hPRjMzt' --body '{"affectedClientIds": ["0esAKXuq", "QAIzNGBD", "LbtNw3RN"], "affectedCountries": ["ZurrUppj", "dAaK8hqV", "6kylvMYs"], "basePolicyName": "6ZQZuO6z", "description": "xw4HKe8S", "namespace": "7UvEhdjI", "tags": ["q1n6NE92", "DieUXCa3", "sKEn0MGC"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'UvfWpy3H' 'Kehqwc6V' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'a0xmiy8E' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'JuYohxYe' --body '{"contentType": "ac8JspS4", "description": "Zj2leAG2", "localeCode": "F7twpOd8"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'VMvqWCYT' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'WD5c2ZxH' --body '{"attachmentChecksum": "01gQqV3e", "attachmentLocation": "Y7zQyWEN", "attachmentVersionIdentifier": "F2owwkCz", "contentType": "KXKarcAs", "description": "sbHHHvoQ"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'ronNwyye' --body '{"contentMD5": "wRyVmUmv", "contentType": "0FelWKps"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'g7PFsTr2' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'c2QuqDt8' 'r8wjsxY0' 'RHDv7DqO' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "45qgJ9ve", "policyId": "TulDL8EW", "policyVersionId": "EtaRkF4o"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xNLYQVuQ", "policyId": "gjferhfe", "policyVersionId": "YElLI5JE"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "k4Fwx1lI", "policyId": "q1psIXS6", "policyVersionId": "IkmfEBLa"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'G9t0niZb' 'NEk9LN2e' 't0TiReE1' --login_with_auth "Bearer foo"
legal-retrieve-policies 'rCRDuTD9' --login_with_auth "Bearer foo"
legal-update-policy-version 'UenBhlQk' --body '{"description": "uPhTMMoH", "displayVersion": "vkutVo2R", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'GhDuTqEN' --login_with_auth "Bearer foo"
legal-update-policy 'VD6jH1u1' --body '{"description": "6Vj07BHE", "isDefaultOpted": false, "isMandatory": true, "policyName": "WUP5Gkuq", "readableId": "6L7zG6Uo", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'Q9mfgg2l' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'T4wQHrzt' --login_with_auth "Bearer foo"
legal-create-policy-version '3foE15M5' --body '{"description": "i1F9ACH5", "displayVersion": "GNwuJ1cY", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '87' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'C08K7WG9' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "i7mn8XNj", "policyId": "Xkp9MpXX", "policyVersionId": "uKqC4qVe"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "M65RV4hH", "policyId": "frG8YGmg", "policyVersionId": "z8AlBCWc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "HIQopJOE", "policyId": "7RBXprl1", "policyVersionId": "FBfitJKx"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'OoVTRuAU' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4dRJpOMU", "policyId": "2umXTR2D", "policyVersionId": "dOOQIkrD"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sJi2DIwr", "policyId": "5BLSJCqZ", "policyVersionId": "dZSVVaih"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "N6PaCyhB", "policyId": "IyxnmjXu", "policyVersionId": "9cth1l27"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'IORmOPGF' 'qwabQK2o' '1UukhG1J' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Xno6mUaX", "policyId": "XTKYsdIk", "policyVersionId": "iVnw0XI3"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xEiE26Yc", "policyId": "aosNPk44", "policyVersionId": "7RS8h4lN"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rvBPBgTu", "policyId": "goSdg9pU", "policyVersionId": "fR5cgI16"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'QQJ7Ej18' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "e8SGJi0t", "policyId": "79V3NnJ9", "policyVersionId": "eEicdrB2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qHhr7zLl", "policyId": "OOSA2cwn", "policyVersionId": "7w11ZpCz"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nljGOwz7", "policyId": "F5VcrdfV", "policyVersionId": "ZRVXQmfd"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'fjw4z2mH' 'crgDNN0R' 'suJkX0Ar' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'CKHri8rk' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'mGhtXCmu' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public '9I2vmLCP' --login_with_auth "Bearer foo"
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
    '6KpmWhzD' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BxYRExaq", "policyId": "tQro3GA1", "policyVersionId": "m42hJpED"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PoGeLWsi", "policyId": "4eZLFHUA", "policyVersionId": "QtPLHGl3"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wWt1wgBp", "policyId": "bfUqXH6s", "policyVersionId": "eD1nlmH9"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'ih4R9o6D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'dBJqk3o5' \
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
    --body '{"affectedClientIds": ["gG6VgKpZ", "yRHWra7U", "YWjtlbER"], "affectedCountries": ["NnH1bEUM", "SVZwMJlD", "x8T1CJlC"], "basePolicyName": "23dV2lX4", "description": "EmPRAV8G", "namespace": "T7Th6SHG", "tags": ["yK8RJ9BW", "M5Ipxun2", "A83GFLV2"], "typeId": "6PySD20J"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'G73lVSXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'bNymv9O2' \
    --body '{"affectedClientIds": ["scBUcGub", "5VGm8ziC", "y340Uflj"], "affectedCountries": ["Xf7G4LYs", "leEB7crm", "ORSm41V6"], "basePolicyName": "IlbJBJXM", "description": "LwDtnPm3", "namespace": "8d6HAFJ1", "tags": ["Z4fuU8t1", "0d3QYRXR", "pHC2ugq5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'UFyhNZZm' \
    'YpVUoLXa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'f5IHhQ91' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'diMplPd7' \
    --body '{"contentType": "ra9Dq1dg", "description": "DGFQtTAU", "localeCode": "CIT9QFyj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'IsdZqJYr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'DPRnjzK8' \
    --body '{"attachmentChecksum": "m3oWAMx1", "attachmentLocation": "rPSZi6tl", "attachmentVersionIdentifier": "J76EP5w7", "contentType": "MkWg1G9r", "description": "1MfeLY6O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'VjDd8pXB' \
    --body '{"contentMD5": "IjWkHPS7", "contentType": "P5k6CaUG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'LuvbQDsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'mVLlOA6D' \
    'pbSCK0hx' \
    'hQWXP3wj' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qaffqVje", "policyId": "o8EiRQGu", "policyVersionId": "HgEilgi7"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0VhydqoB", "policyId": "pDehwS58", "policyVersionId": "m6X93a4Z"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6CjYBjQv", "policyId": "5u1lZAQc", "policyVersionId": "NgYIZfyn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'oQsbDC8l' \
    'Hwj44h7U' \
    'gFtC6zls' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'd1g9p41h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '1CYeA2xo' \
    --body '{"description": "QDbLJZIC", "displayVersion": "78jxGQk7", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'kXTz2ZOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'LiKF3Dwq' \
    --body '{"description": "cxxGjjkV", "isDefaultOpted": false, "isMandatory": false, "policyName": "Tno5GxMK", "readableId": "6Y18NOMC", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'dFmuJIY9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'Sb1orBFY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'FvvTxWtk' \
    --body '{"description": "jardqUqS", "displayVersion": "8IxpT09c", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '97' \
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
    'SX86b4jN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uxnzuzAT", "policyId": "qaCkiIGf", "policyVersionId": "2pmdHH5s"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ellscJiZ", "policyId": "SnNDfQoQ", "policyVersionId": "zT6TZ6Yf"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EKeYwNwm", "policyId": "HaDvw9UN", "policyVersionId": "sOL2C07Q"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'AquBUn7u' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8qGZUVpz", "policyId": "lFUQaeKH", "policyVersionId": "0TFd6wkL"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WDJWR3xP", "policyId": "Jixn5M88", "policyVersionId": "RmMegERv"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qzEMQ5ai", "policyId": "LvZypegu", "policyVersionId": "rS6tGagJ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    '4CAUKzio' \
    'VI9kxsC5' \
    'RBG7085D' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ksHBQIrq", "policyId": "QYXmWWFO", "policyVersionId": "KSMLyngE"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "N7Dw0EIP", "policyId": "JLvnFPHN", "policyVersionId": "MYmo5ecw"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "roBe7at5", "policyId": "66TOLbve", "policyVersionId": "mNGk1A9F"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'yr3UBw4p' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jem66G7m", "policyId": "alLe7czG", "policyVersionId": "K87Djvzf"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iCUMonOF", "policyId": "PRUfitfd", "policyVersionId": "fsoOEM2B"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Qb8CU7mj", "policyId": "XlbJvTXf", "policyVersionId": "mrwz4FbP"}]' \
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
    'ru17J5Qz' \
    'E3dUAUGo' \
    'JlI0nnA1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'YWqBLUwB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    '1uWeQiyP' \
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
    'k6YT0dZz' \
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
