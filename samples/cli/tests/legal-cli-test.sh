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
legal-change-preference-consent 'LHW5hA7T' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YYUh3tvu", "policyId": "f2g3qTA3", "policyVersionId": "JCPR3jas"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7ZLIoU26", "policyId": "vyxF2ghR", "policyVersionId": "jTmp170e"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uGOoiAPT", "policyId": "M2HRTQso", "policyVersionId": "AY6TiZmS"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'hN5bqIXT' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'iy4Xm6DT' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["vNplEg9o", "VLWilykA", "QQm41u5X"], "affectedCountries": ["4M3e2mOp", "WEhtFusv", "ZOIqVuF9"], "basePolicyName": "rXTXD0JP", "description": "XbWhgbng", "namespace": "57uUZo10", "tags": ["2KLrlxZC", "MvCAFdhW", "xxIJiJ0q"], "typeId": "mmNK0U5L"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'gSdMW7oa' --login_with_auth "Bearer foo"
legal-partial-update-policy 'aO4TU5Ws' --body '{"affectedClientIds": ["TZ4a1FLt", "SypiVqpU", "nYdXvDM8"], "affectedCountries": ["swOEcAXK", "8FFlmn3V", "QIq88fRC"], "basePolicyName": "2SlnhNJk", "description": "WLeV5J0Q", "namespace": "eyNQRE4H", "tags": ["27ruJUST", "DZuQfdh1", "kgecAfdb"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'RfbqDEtB' 'gjmWmLAH' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'jCseST13' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'Z0huZ2vo' --body '{"contentType": "Eu0Y6J6I", "description": "yMR4rAPi", "localeCode": "TU88Rag0"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '4RTRZCOf' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'rATWDcNW' --body '{"attachmentChecksum": "ZTmYFOeh", "attachmentLocation": "dSBm9Ub7", "attachmentVersionIdentifier": "f5U8ucwH", "contentType": "UcRkTMYE", "description": "xj7834xb"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'gmo1Xhoz' --body '{"contentMD5": "RSGv8mBW", "contentType": "6a5Lal54"}' --login_with_auth "Bearer foo"
legal-set-default-policy '4uTtxdVC' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'SvbkXZ2D' 'yaq0xOIH' 'THeJHJlV' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Oyl9GJ74", "policyId": "ewP2YOks", "policyVersionId": "D1wJHewy"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BwHTBg3x", "policyId": "HQpdABMl", "policyVersionId": "PKsDezLx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DaHKCY9u", "policyId": "9J47WwpT", "policyVersionId": "kd4zR5GZ"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'dRYDRLWV' 'TKOuPjcY' 'a4vPW2WV' --login_with_auth "Bearer foo"
legal-retrieve-policies 'FfBK9UqL' --login_with_auth "Bearer foo"
legal-update-policy-version 'NJ2AyYkW' --body '{"description": "A6RZj75K", "displayVersion": "TiKLfCqO", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'rHqI5wNm' --login_with_auth "Bearer foo"
legal-update-policy 'P3EQpG0k' --body '{"description": "cGExKwfO", "isDefaultOpted": false, "isMandatory": true, "policyName": "n3vTFOLJ", "readableId": "Vl4nAhtf", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 '6wVwsQTy' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'V3FKJu3f' --login_with_auth "Bearer foo"
legal-create-policy-version 'ZihdmZnq' --body '{"description": "Au6lgEIq", "displayVersion": "yODCHNwc", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '38' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'AQEsQNFH' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MkN7SHSv", "policyId": "pWo8DRWS", "policyVersionId": "2nRlWXyG"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qx7WAEDV", "policyId": "jh4kv92O", "policyVersionId": "UkWbLEJw"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gAcOdz1T", "policyId": "Lgz3fT6G", "policyVersionId": "0ueOISN3"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '4ulq3Rnl' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1lTGhxDu", "policyId": "5h1mWSRp", "policyVersionId": "EJ1d6oGb"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "grZlvrRK", "policyId": "GXmJHKWM", "policyVersionId": "JOKrFd5N"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kJ9WOuPL", "policyId": "chDSfBeG", "policyVersionId": "dAkYUBjJ"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 '3mBm9LpJ' 'Th0NafWZ' 'cgsQ1LAw' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "H7HvKitW", "policyId": "vXwqXEkf", "policyVersionId": "oUf8FyMt"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "meKrL34p", "policyId": "dY31y0qX", "policyVersionId": "GjRUWbwF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zj5TAHR8", "policyId": "jHpZqb00", "policyVersionId": "uqexjPFc"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'gMX05JDp' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EIX8lOD5", "policyId": "nfHFHQg6", "policyVersionId": "nsqGmUSF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "db2LfrHc", "policyId": "s4nkZkac", "policyVersionId": "DKHBZQiT"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "sFnC3bs0", "policyId": "K3kvyxtb", "policyVersionId": "643N3NAa"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'lwX5mFw1' 'qHgb5d8e' '84vtr1RC' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'vLHSXjhY' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'iyqBEKv7' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public '90cinVxJ' --login_with_auth "Bearer foo"
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
    'nkIT3N5R' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rNSyrZ4w", "policyId": "YMhhdpLy", "policyVersionId": "WGG3XXSV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LQK9zZWR", "policyId": "fyfbaM7r", "policyVersionId": "g3fyS3T6"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FjAd4xHx", "policyId": "Sx3Zmtrl", "policyVersionId": "ESxo2SZg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'LoM34WQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'lYTV2aj9' \
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
    --body '{"affectedClientIds": ["qlePolcG", "UlQIgNJ8", "Vc4fagcb"], "affectedCountries": ["aTv8Nd1q", "9w0YMVeA", "pdi4dIQN"], "basePolicyName": "IHkf0SAY", "description": "gAJXdt71", "namespace": "nSq7QwdW", "tags": ["CLdrXitu", "Xmt77n2h", "oNKq0bh8"], "typeId": "TOU0jcHP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'V51SKzzD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'VkNfLKX6' \
    --body '{"affectedClientIds": ["BnO9uwP9", "qZbPaJfL", "m655JRy4"], "affectedCountries": ["KdVsHSbf", "yxGKr8vk", "OL2waLjJ"], "basePolicyName": "PdRB0AXV", "description": "knf0klbn", "namespace": "YX2oqnuf", "tags": ["14vzpAHG", "iwcTLZX6", "sAhAczoT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'iGHvwqvo' \
    'a8J4WqN2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'qpfSffH5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'luEjPQrA' \
    --body '{"contentType": "8QDiFH3X", "description": "tensw0OO", "localeCode": "xpeqfDn5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'XsnCpwLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'Ak4ICExD' \
    --body '{"attachmentChecksum": "YajRMd7D", "attachmentLocation": "zu12tNvR", "attachmentVersionIdentifier": "0CJbnmrF", "contentType": "AespmalC", "description": "SsvNqwIM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'Bs2jIjjm' \
    --body '{"contentMD5": "TZFVHI9B", "contentType": "MRlsvfyF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'PBVmKuiq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'ITVvU82j' \
    'vR2kQA7k' \
    'Dv9coD3H' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6h2zu2Kx", "policyId": "cLLPQTgC", "policyVersionId": "G1shTkss"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "p7kGWvkn", "policyId": "51Dvnz06", "policyVersionId": "K1jgUgbC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OuJWYwgY", "policyId": "Bl7iAior", "policyVersionId": "4CBBhKZn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'P3R8e7RJ' \
    'bVWuMvem' \
    'DmK4ULp2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'y58OliCI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '6HkRHTwj' \
    --body '{"description": "GcJYJjW5", "displayVersion": "r1EMTMQE", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'Hgkb4ZWd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'A6xiE7jx' \
    --body '{"description": "3jlQLrYm", "isDefaultOpted": false, "isMandatory": false, "policyName": "513Fuvgj", "readableId": "ETfpXfxO", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'YByBXMLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'g6XJOj8B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'lEuDjuel' \
    --body '{"description": "Ap8cB2yc", "displayVersion": "6975nrjC", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '90' \
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
    'jcFpNbzA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rv3Plh83", "policyId": "6hpeF61R", "policyVersionId": "jqAvFN2f"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wu8Bja2j", "policyId": "4PEZxEyr", "policyVersionId": "wFSiCt1t"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LpdaHa8A", "policyId": "J31Zn3Rx", "policyVersionId": "1AXoSI1c"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'ZJ91IlgG' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bX5JY3EX", "policyId": "x7xaEhRO", "policyVersionId": "6Idm2Ubp"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3OeGeT8l", "policyId": "u3VZDVG9", "policyVersionId": "M5Aaw0nF"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mpODmYYr", "policyId": "C4YyCrT9", "policyVersionId": "wjO0cXGc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'Vr7R3bd0' \
    'mLBxhrLx' \
    'u2AOMayh' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2tUZa2Yu", "policyId": "ZNLSNnXe", "policyVersionId": "sj556nfc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8gXiecRw", "policyId": "MAwk01tj", "policyVersionId": "1WaVErJe"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XoE0aMlU", "policyId": "6BoviJoz", "policyVersionId": "1Er3yAoG"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'tU1c7C1L' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wr5YMbHU", "policyId": "ldgUuhO0", "policyVersionId": "zlfkbgOg"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "izH2IzjQ", "policyId": "vErVGdMV", "policyVersionId": "NPljqLHl"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7RHW85bk", "policyId": "PcnbLXjz", "policyVersionId": "a573j1Sy"}]' \
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
    'PphFudvy' \
    'j3zfwGiX' \
    '11D4nLth' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    '4ta3UgcY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    '0xhXWuhy' \
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
    'K6b05mX3' \
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
