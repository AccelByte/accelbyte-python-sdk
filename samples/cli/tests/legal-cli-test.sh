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
legal-change-preference-consent 'lDjw9Efx' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NvGcNnCx", "policyId": "EqELkMoF", "policyVersionId": "5CGDUQGZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "whjarEz6", "policyId": "VoERyIcQ", "policyVersionId": "bRiulGpC"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cwyXsoq0", "policyId": "SKsROKHt", "policyVersionId": "gzjCptt5"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'h3EHR3B1' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'UDq9jWEF' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["o8pcHU1m", "3PaNrUSX", "8BnhyOM2"], "affectedCountries": ["mdPZik84", "egc99vYr", "XlieDVM5"], "basePolicyName": "9NBxzShA", "description": "5lpjazQK", "namespace": "h6D2RPZD", "tags": ["joPyn0Ag", "MQVtV32o", "FuhtXeXo"], "typeId": "552uw8D6"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy '56oajlnW' --login_with_auth "Bearer foo"
legal-partial-update-policy 'kePzeZEL' --body '{"affectedClientIds": ["AhN2z2eM", "pYVjGy6D", "GydVKqWc"], "affectedCountries": ["uxN5xHNh", "VPyeVEqz", "9LXvNSKE"], "basePolicyName": "4cMUzZHF", "description": "vpTYJf14", "namespace": "CJGolBht", "tags": ["IWxPPHOo", "OczXsfwL", "ektnTkor"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'ZvYt0CRN' 'uDtw5zSn' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'LfbS0KBu' --login_with_auth "Bearer foo"
legal-create-localized-policy-version '9RSyn7Nx' --body '{"contentType": "lNpgZ1Bs", "description": "aFoMCn5z", "localeCode": "FBvjbCij"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'DBgMoSIm' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'VTWpWeII' --body '{"attachmentChecksum": "Vs9HqlWM", "attachmentLocation": "G2toJwXo", "attachmentVersionIdentifier": "9dRpDEOQ", "contentType": "EBYGPxiJ", "description": "vIGvRtJ4"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'Vc4cyYto' --body '{"contentMD5": "NaRvmGir", "contentType": "pTSWT9MM"}' --login_with_auth "Bearer foo"
legal-set-default-policy '2GVJPzXq' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'Ve3NNVjX' 'OcaVTKQd' 'NnttgKGu' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nuppO1nz", "policyId": "D63WuFT3", "policyVersionId": "I1gL7jnh"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "s76EkQeK", "policyId": "pnKsRfvE", "policyVersionId": "7QC6ewAU"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BMZd6i9g", "policyId": "UCQEHR4M", "policyVersionId": "ClTF45gZ"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'V7p8JTQ6' 'rY8Fjbhc' 'uXjr887U' --login_with_auth "Bearer foo"
legal-retrieve-policies 'f6tLuP8E' --login_with_auth "Bearer foo"
legal-update-policy-version 'k4BclJIp' --body '{"description": "TOUQC4WW", "displayVersion": "e0b1rWzE", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'rlAbos68' --login_with_auth "Bearer foo"
legal-update-policy 'tB2eXetz' --body '{"description": "Rk5fGWU8", "isDefaultOpted": true, "isMandatory": false, "policyName": "Dvl4I2Dw", "readableId": "RbrxCcxq", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'CaobmSh3' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'g75PSSp1' --login_with_auth "Bearer foo"
legal-create-policy-version 'WKIEXSzH' --body '{"description": "bCnrWEsT", "displayVersion": "LfWVnZbx", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '88' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'AXUgbFd8' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "G9t2OH47", "policyId": "x4SaVGwQ", "policyVersionId": "TTfuYJ4n"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xcMdHK5G", "policyId": "1jhpsPRC", "policyVersionId": "d0E362qy"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pVkymHYw", "policyId": "V6Hcr7xW", "policyVersionId": "WTM7WVWh"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'hFf64ZCV' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SHY9eFlv", "policyId": "Q74lFDWn", "policyVersionId": "df7Uzvqa"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b8LhsKCK", "policyId": "GNIM3e0c", "policyVersionId": "j8VEDF03"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jIetq6lB", "policyId": "WglMzQaW", "policyVersionId": "MQfbmdTQ"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'G883cbUM' 'uM0goNAL' 'jXt4s42C' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "euLYGotR", "policyId": "BbweR1Ua", "policyVersionId": "2i8Ednbl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "M5sxnHBm", "policyId": "VN56nKi5", "policyVersionId": "67yiaxov"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "guyo9zXi", "policyId": "qozpMJCo", "policyVersionId": "5aRsKSne"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'LDCQJbgI' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "J1RllZ4Z", "policyId": "muPDNvke", "policyVersionId": "PY1lWKK2"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lsrNsFz6", "policyId": "RvQCoAjk", "policyVersionId": "uJrSpUDR"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gXC8DAdP", "policyId": "yA163M34", "policyVersionId": "HTF3FzO0"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'Wx50BJFr' 'LFpeITf3' 'Mw83aBPa' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'ElmzmUSP' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies '2mwHNCP5' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'ExtMqxaN' --login_with_auth "Bearer foo"
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
    'CIW6zvY5' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iJ64hQ9n", "policyId": "BjLevRXL", "policyVersionId": "j3aW1v0D"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vyCs1naP", "policyId": "N6OiixLw", "policyVersionId": "g5jN7N0d"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CJZgPL39", "policyId": "CzbKlRiT", "policyVersionId": "maaWHs1m"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'mNndSGBY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'yrqM3iEq' \
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
    --body '{"affectedClientIds": ["MgCPCm7m", "DHyUAyQH", "JUiYJj5h"], "affectedCountries": ["HXVwyzot", "CvdkHurZ", "eYEvxv0Z"], "basePolicyName": "tQar7O58", "description": "IUrmqjVE", "namespace": "UQx6bcet", "tags": ["tMraWPK5", "Wlo2NMi0", "PxKKDaN2"], "typeId": "st6IN9Ju"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'nZyEH0fZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'IJhRGu66' \
    --body '{"affectedClientIds": ["FYhyS5Sd", "JT5iVQw6", "Ymp7owRd"], "affectedCountries": ["FT7Di4sP", "Awbck2YZ", "Msx2DuTv"], "basePolicyName": "HTx6gDpp", "description": "k3FIv9fm", "namespace": "g50a0zc9", "tags": ["03Si4iKg", "9sfQJFtp", "2cO2X7HH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'DNKlGQwJ' \
    '5dMDGxEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'P52iIYau' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'Sw8j76WV' \
    --body '{"contentType": "JmoZraUh", "description": "WNcy51B3", "localeCode": "VUo1wGs9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'iqsAz07I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    '8G3WV13T' \
    --body '{"attachmentChecksum": "QLmLVnwt", "attachmentLocation": "qJPL0ppX", "attachmentVersionIdentifier": "NrJftcnK", "contentType": "DLnpETJR", "description": "wgMizBjN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    '1pdLayP0' \
    --body '{"contentMD5": "KoP7vX7a", "contentType": "HIkFXndt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'FmnN7S8s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'LD26We21' \
    'lPg9DKqJ' \
    'T7mJDE0I' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "R9Pt94tQ", "policyId": "glZgI9b4", "policyVersionId": "creAnrqn"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tJmkirsF", "policyId": "GFfK5quo", "policyVersionId": "5lyk4HgW"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4RK8RuZG", "policyId": "bKYctPmd", "policyVersionId": "y8qe4ure"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'qPiumZT5' \
    'r5G4NifP' \
    'AEP0BkgZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    '2zRXgPJh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'mFff4JHd' \
    --body '{"description": "jWhsN2Mx", "displayVersion": "9zfxfIBq", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'Et0VjDFg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'yKbxFXEh' \
    --body '{"description": "8dpRzvlm", "isDefaultOpted": true, "isMandatory": false, "policyName": "Sju52ymY", "readableId": "ywM70n3F", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'VPgjC9BP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'MwIbW7HN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'vnuKQxh9' \
    --body '{"description": "qOzRUqs6", "displayVersion": "F6zQg2CK", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '45' \
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
    'k9VJiHJ6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oX01FOZk", "policyId": "7owS2zIK", "policyVersionId": "ascL62in"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "n6fAGWUr", "policyId": "hODTH3mY", "policyVersionId": "9Ol9d24O"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NImP98X0", "policyId": "xe3NAeyE", "policyVersionId": "z08hJZTt"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    '3axbTzkD' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cex885Nz", "policyId": "DkKbKhj3", "policyVersionId": "mIMksox2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OwUNjCjb", "policyId": "V2yhwSV7", "policyVersionId": "lRjqccb0"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "26Vankjw", "policyId": "G9CXvOGV", "policyVersionId": "lvceRxal"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    '14mcAiGR' \
    'y6VHMcYQ' \
    'IGuOUJrl' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SPVJk3Gy", "policyId": "KL2N9qlz", "policyVersionId": "rlBzdlDo"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qch3mxIw", "policyId": "GgkShYnj", "policyVersionId": "9n39sSUl"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DY2nw5bb", "policyId": "Mq3vAcgb", "policyVersionId": "yL4raAYG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    '2sfmYVHc' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YZmpdxlf", "policyId": "XsV9qhrW", "policyVersionId": "zsQGOErh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SywsooRm", "policyId": "FqYbWwh5", "policyVersionId": "kEWBnHx5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TXcr2yxe", "policyId": "Lnj78ANh", "policyVersionId": "MdVxYDc8"}]' \
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
    'Cnpa5Lrj' \
    'sZE5l43n' \
    'SSx3DJwC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'fMJDbSdA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'zEr0104U' \
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
    '8s2fiutv' \
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
