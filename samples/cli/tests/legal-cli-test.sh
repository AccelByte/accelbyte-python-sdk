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
legal-change-preference-consent 'OtupjOkQ' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TdLw2esS", "policyId": "GXuENK6F", "policyVersionId": "zbZA1lgR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ZyltFJYc", "policyId": "CM7x9SuU", "policyVersionId": "3KOcYZfZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gh0JrMiO", "policyId": "PF37tntz", "policyVersionId": "tQGgV0Gr"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'Y1tcr9j4' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'HwRRV2BG' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["AmXChUj3", "9pGcmFrT", "m7rbARD0"], "affectedCountries": ["OFSVzjbX", "IkLpBIdB", "mFOAmbd9"], "basePolicyName": "JZn470sY", "description": "56IOeVCS", "namespace": "VC0Lf3M8", "tags": ["n3ejZZYa", "zcRDp0U1", "BaoQdROK"], "typeId": "LrXpJh8R"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'Cb9VfOCG' --login_with_auth "Bearer foo"
legal-partial-update-policy '04SjFF9V' --body '{"affectedClientIds": ["4rxTtrEV", "JYMXsxH9", "p7FwJoYf"], "affectedCountries": ["Ysfg68rH", "4NZ7GMPq", "3JenOwnS"], "basePolicyName": "yRbY2HjJ", "description": "Hib59O1O", "namespace": "67Cs4ieR", "tags": ["hC0NID5o", "WS5HVGjg", "ACPix3nI"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'EiPwqflG' 'CoWCQpAz' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'PsCuaidV' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'u0rRcfH5' --body '{"contentType": "OY0EWhJ1", "description": "xDuWeXpZ", "localeCode": "xcUl7OQR"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'XKcq02cK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'aDPXmVu1' --body '{"attachmentChecksum": "LLLFGMfy", "attachmentLocation": "2AmaUVeb", "attachmentVersionIdentifier": "H817ghnG", "contentType": "Po8HEiAv", "description": "hL0Zq6Pm"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'xbgIpg0R' --body '{"contentMD5": "B41Ob30B", "contentType": "nozfoT1h"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'SwvF2U04' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'LnkW5uDg' 'pxfo2Dx6' 'nMAD1ze8' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "y7bJESDM", "policyId": "QPGeZfFt", "policyVersionId": "PAoiHrPH"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kBf2mdKr", "policyId": "JK9b0mGz", "policyVersionId": "Ssd9y79p"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "OKYkRP0C", "policyId": "vHfl2S99", "policyVersionId": "uEYEshl3"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'vsQR7LRS' '1iND8KZk' 'ruepXMX9' --login_with_auth "Bearer foo"
legal-retrieve-policies '66UOUeoY' --login_with_auth "Bearer foo"
legal-update-policy-version 'QLrKXw8v' --body '{"description": "cIieuUTg", "displayVersion": "0UZhC5BU", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'gJZ0EMv3' --login_with_auth "Bearer foo"
legal-update-policy 'tE3RtSV0' --body '{"description": "jIGl6Uyh", "isDefaultOpted": true, "isMandatory": true, "policyName": "jzBvoeBn", "readableId": "uDFLYPyn", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'dgPYR1QY' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'LVSRpMW8' --login_with_auth "Bearer foo"
legal-create-policy-version 'lMCUm2CX' --body '{"description": "hweH1JNp", "displayVersion": "DdPWx6B6", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '90' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'GoTyjFTX' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4gGErSEk", "policyId": "qIwvkJSR", "policyVersionId": "ub2CDS0v"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rELpWpSH", "policyId": "lWswyclp", "policyVersionId": "sKkzO118"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "j794bUCn", "policyId": "l3PbMeaj", "policyVersionId": "AQKk7epv"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'T56FRp9H' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wy671ZuT", "policyId": "yobgNIYg", "policyVersionId": "ddUM1e5g"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7wvnypKX", "policyId": "VzwJF8Dr", "policyVersionId": "CBaEbBvL"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uof1hFcs", "policyId": "VtMlUQvP", "policyVersionId": "TDRJOfrw"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'Dthj7AAF' 'f33ThlVO' '0Iihhgfr' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "k2HwSYxG", "policyId": "8HOT4SGb", "policyVersionId": "YxrtaFzC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Bw6hcsTU", "policyId": "szNRgc87", "policyVersionId": "xrg8gn0M"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1PkeY6qX", "policyId": "AIyLw6Z1", "policyVersionId": "vgQLh3Ir"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'wh77TZcv' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "atWvVTBm", "policyId": "uSJfPOgf", "policyVersionId": "GRe8mhrD"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "nJpWXlA5", "policyId": "1r7I2YRv", "policyVersionId": "K8JzVXzn"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "8LcNFz1Z", "policyId": "06f4DRLG", "policyVersionId": "8YYVRYqR"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'EqFGlF5g' 'VOu7Im9w' 'KLYuhRQF' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'O27FEKvD' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'ebb3xrS9' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'MeFjRvVj' --login_with_auth "Bearer foo"
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
    'Wv6e23jd' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wGgPxNv0", "policyId": "8fepKWCY", "policyVersionId": "m9YN4ox1"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CmceRjQI", "policyId": "rLyaB2Vs", "policyVersionId": "1g6ZWFlA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WutPjszy", "policyId": "zNPqf9pP", "policyVersionId": "V6iF5QzV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'Nx5r4jeT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'KcCy6YcZ' \
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
    --body '{"affectedClientIds": ["MkfSEaEE", "UA6BQjxC", "pplGbHDo"], "affectedCountries": ["AlqPEmG9", "jnyS686j", "tkVBuwud"], "basePolicyName": "6g7tLIYo", "description": "LizdTU2o", "namespace": "hE1IdInv", "tags": ["Wwmm6fo0", "fWV9c25A", "i6YFMOnx"], "typeId": "b7K70xYI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'UxHeOpzz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'Gia0wXvG' \
    --body '{"affectedClientIds": ["D65w6NDJ", "45ocT7a3", "jKLGvVQx"], "affectedCountries": ["lhP8RyV5", "ytHZD0TC", "hNkFV3HD"], "basePolicyName": "Gjh35EBt", "description": "qcDKsCMI", "namespace": "WWY21ppA", "tags": ["nWzUHMJj", "o0IYiDAi", "5YX0dsy5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'WJhnIkj5' \
    'eEu6iA84' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    '5dkDCdwK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'Wpn8ryC8' \
    --body '{"contentType": "fxKXnUIn", "description": "EzXx9j8h", "localeCode": "9VwhxWHX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    '6QaE6fp3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    '1cuNHFBr' \
    --body '{"attachmentChecksum": "LHdc5VWT", "attachmentLocation": "0qJtHHOL", "attachmentVersionIdentifier": "7ZLUE6HN", "contentType": "Jp6CVR9B", "description": "SRnVeSG3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'AnyYokoM' \
    --body '{"contentMD5": "7nI3Xwke", "contentType": "lW2GBmuC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'Isw1NsRp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'dHs34Mg8' \
    'hDSNWCdL' \
    'bsXP1o05' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "iShltDFn", "policyId": "h5UaYf6J", "policyVersionId": "PITv4bhO"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tLZSkX69", "policyId": "vXUN1vwP", "policyVersionId": "Fuuuc4U2"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CLbk7HYo", "policyId": "npqlwGrL", "policyVersionId": "nBbg2HQg"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'U2IeJgYU' \
    '4xiBujYt' \
    '9ozIZWBX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'R3boFeQO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'humfPyeh' \
    --body '{"description": "4tPHcTtV", "displayVersion": "WZ3b6uR4", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'OUtBvN2V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'CXX3R8vH' \
    --body '{"description": "Avf8QOwT", "isDefaultOpted": false, "isMandatory": false, "policyName": "Als3OMXp", "readableId": "fVKDieMu", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'eVzquzGk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'ZKZr1X9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'uJw33Bq0' \
    --body '{"description": "9GEMuTKt", "displayVersion": "hwS3TrNx", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '4' \
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
    'a6xPRDQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rEgCWubF", "policyId": "eP5DfwWe", "policyVersionId": "xKYRLsaT"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cbHCCwm9", "policyId": "IlV7Ucxn", "policyVersionId": "QFLnMCKT"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7uw8KUcm", "policyId": "XsITZmJz", "policyVersionId": "mEjGnTGF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'E0IXso59' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "C9TnvEiJ", "policyId": "491vkZ8X", "policyVersionId": "au9WwYXs"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YYJquc49", "policyId": "gnVaHRiP", "policyVersionId": "D0r5Y1UP"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4LOc3d4Z", "policyId": "Uv9hZpru", "policyVersionId": "IrTtkxOb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    '2bKlfR5O' \
    'EOGLd7Ph' \
    'Mrh6LBid' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5PL9BA5S", "policyId": "N4tnMaXN", "policyVersionId": "HOrjq0xf"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PdR6h70x", "policyId": "l7mz6j70", "policyVersionId": "hMt482a2"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SGnweU8a", "policyId": "k9RLcJ93", "policyVersionId": "t642r00C"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    '9cwVPa2y' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "UQdVILwE", "policyId": "68gCQF37", "policyVersionId": "FeHXRgaV"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "BHDU4luq", "policyId": "O0iPGBdM", "policyVersionId": "IfB0F5fW"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CGE2uY4D", "policyId": "AhlnYs9g", "policyVersionId": "O8VrMJ2O"}]' \
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
    'ePHhPDxf' \
    '1iqPzQwH' \
    '2qiLweo1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'OsGGeOjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'PDR7sjbV' \
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
    'sa4C9vhn' \
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
