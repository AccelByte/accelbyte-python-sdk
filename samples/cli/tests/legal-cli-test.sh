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
legal-change-preference-consent 'EC6p8Kp7' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nBLvGgwi", "policyId": "spWdKIdm", "policyVersionId": "lhUYaNRo"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "osTj7FLB", "policyId": "1tGT1r3a", "policyVersionId": "ocDlCF8r"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "AUMXf1qe", "policyId": "h6Z2hikF", "policyVersionId": "gH23nZvM"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'UEc0PK8j' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'o4qKTgtV' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["hxKJNPnP", "1A1YBykI", "uMR3kWeV"], "affectedCountries": ["UocDPnLk", "3XddIHAg", "S5QJKGQZ"], "basePolicyName": "E6bArNNF", "description": "htiWv5pr", "namespace": "I1D1OKT8", "tags": ["FkfWqNuF", "bDEUikjL", "OOIDmxwU"], "typeId": "aNJymo2Z"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'utRSPvmt' --login_with_auth "Bearer foo"
legal-partial-update-policy 'p9I10DgZ' --body '{"affectedClientIds": ["wk70fZhW", "JjnlferE", "yFuEEeBz"], "affectedCountries": ["7Ufk2f6H", "guBW5zZI", "5DJAiL1C"], "basePolicyName": "qnVdvU3v", "description": "L7FFP2Rr", "namespace": "skOTFMRD", "tags": ["LnUAp9pn", "MricZ2N7", "bFApVsj5"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'SwjKC23X' 'uusnJbrR' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'RL7hp9aM' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'q5AuloHq' --body '{"contentType": "wZChuc91", "description": "JAUwkPXL", "localeCode": "u5qMqNqQ"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '7zMPEVgr' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'iPlmRcn5' --body '{"attachmentChecksum": "tgJ9Qctx", "attachmentLocation": "Zep3kkgU", "attachmentVersionIdentifier": "6uPoERgj", "contentType": "3ddf1gLM", "description": "9biHQRpp"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'otW8EEHU' --body '{"contentMD5": "EroZqtpj", "contentType": "kTGmgqh4"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'X2NHdWFE' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'r2EfPgHi' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'Yax4Xjmc' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["85HaO7fH", "HoDXOmMc", "amDq7VfL"], "affectedCountries": ["14enJhPS", "NylF1hl9", "5mBfzM6j"], "basePolicyName": "epJ6HvRL", "description": "cX8dnoN9", "tags": ["R85fG95q", "gX2bHBiJ", "Jcx7J60K"], "typeId": "bBsavc00"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'XwuJslTS' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'zA9QRsHo' --body '{"affectedClientIds": ["YpRNNu1q", "4R8uAxM5", "Hglra1r0"], "affectedCountries": ["QriLcQF5", "Y7Eqjg3E", "RX99CyCW"], "basePolicyName": "nBzBXL1k", "description": "gZwlA701", "tags": ["rN1vEmGT", "kGzRa9hw", "RGoKllHf"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'Rhrk4T1z' 'QKkwT6H1' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'UtFLSlKQ' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'F3wLN21K' --body '{"contentType": "sCTjHYCL", "description": "g2QQSOQt", "localeCode": "N6GXHvkf"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'Ou2lLguc' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 '8wCeMaHP' --body '{"attachmentChecksum": "nU5L1aug", "attachmentLocation": "gd6vz3Cv", "attachmentVersionIdentifier": "yGlX5lRI", "contentType": "gGWTt0gV", "description": "pNFNlJa0"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 '00nYqspM' --body '{"contentMD5": "9FEnM6Kz", "contentType": "cI4HFLAG"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 '71f1kZ6i' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'bKEnKGFN' --body '{"description": "ISh4Q24D", "displayVersion": "Q8uaGA5i", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 '27h3I91F' --login_with_auth "Bearer foo"
legal-update-policy-1 'vA8NvDvk' --body '{"description": "Btw0jlfq", "isDefaultOpted": true, "isMandatory": true, "policyName": "ZbpYETj4", "readableId": "9Zi3cCqp", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'Ntxa4l9B' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 '5rUuhzkq' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'hJ3P4TOi' --body '{"description": "5vSXedBS", "displayVersion": "qYwBzTwl", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '56' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'f5GNdC1R' 'd2tjQCWU' '8H7Yq7Z1' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Dr6UkFAP", "policyId": "fv00vHjs", "policyVersionId": "nEcfhHYZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uifKagx5", "policyId": "Xee7qk0G", "policyVersionId": "H0MKMpeI"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pHMqeZ72", "policyId": "xPXImNcS", "policyVersionId": "K188NavX"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'jBZBONHU' 'l3yHUSjW' 'Hn5OeVIx' --login_with_auth "Bearer foo"
legal-retrieve-policies 'TBgWqp9o' --login_with_auth "Bearer foo"
legal-update-policy-version 'pgdkuKjJ' --body '{"description": "CtxOwY3f", "displayVersion": "Wp82yDXN", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'gTlDBQa3' --login_with_auth "Bearer foo"
legal-update-policy '1cPiPV9b' --body '{"description": "wZgPE1dU", "isDefaultOpted": true, "isMandatory": false, "policyName": "HLoPvDOb", "readableId": "IGQ0Czx6", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 '0C4bo8PJ' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'Fqjgu9B3' --login_with_auth "Bearer foo"
legal-create-policy-version 'ZB4IBM7h' --body '{"description": "wW4pzgL8", "displayVersion": "8hP5ofIg", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '59' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement '8r0R9UAo' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hl44f4MX", "policyId": "QFjTK43d", "policyVersionId": "d3988wCE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "yvxOWVmS", "policyId": "7sZlCVTj", "policyVersionId": "koBSFIuZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "eOZ8g4MP", "policyId": "YxY4PJTe", "policyVersionId": "ayWi5sRg"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'QjNpfhff' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vQlTr4Gg", "policyId": "EMbjp0py", "policyVersionId": "nuI6KTEW"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pihkr0Qq", "policyId": "EWLHQy9F", "policyVersionId": "pzN3HVL2"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "l37VgXQB", "policyId": "awRLGJVB", "policyVersionId": "VznKHrFs"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 '0ajJM2AY' 'Cv93WVUD' '9s6JJcKo' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "A9gUlC2q", "policyId": "8e9snV2F", "policyVersionId": "Ml1A6L5b"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IojbaFuU", "policyId": "nqNy1sNV", "policyVersionId": "zC6NwZz8"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "AUogWsU6", "policyId": "94sLK894", "policyVersionId": "OIVMjZ7t"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'QBC88nng' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Joe6Ul4l", "policyId": "1fhnPy8g", "policyVersionId": "fEVRYOYq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "W4Gje9Am", "policyId": "bR4dFqHi", "policyVersionId": "Zug3E1m5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "krqWsHTS", "policyId": "h5QYGIAU", "policyVersionId": "24sjIWiF"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'qUO0ILSD' 'AzZX9HKy' 'lQZZqWtd' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'sG1Aw8V3' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'BfmhzyF4' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'CnNa62su' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'h83fOhkz' --login_with_auth "Bearer foo"
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
echo "1..63"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'jgTelbBG' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FyO4AVML", "policyId": "0aMYZ7QU", "policyVersionId": "K8mPPsdL"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LYhzJR2p", "policyId": "0gDyR50E", "policyVersionId": "NAg4KyXp"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "u4iHlKiK", "policyId": "BnoHFsSp", "policyVersionId": "t5kk4qbF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'ClXQez5r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'LgNI9qHD' \
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
    --body '{"affectedClientIds": ["sfRc1H0R", "ZiF23L7p", "oB4S0A8h"], "affectedCountries": ["v7W47SMt", "h7CsNpkW", "Wryp1KEl"], "basePolicyName": "Ci6kMLbE", "description": "FTvUXKgk", "namespace": "ssHO2EKu", "tags": ["TA4jUSN9", "m0quaaxM", "s6nBLhUr"], "typeId": "rrxONXV6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'WWgDerCs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'nEhxAdiv' \
    --body '{"affectedClientIds": ["j1Dki1Gh", "aOgA6mbW", "da0tesqj"], "affectedCountries": ["ZOQiRftZ", "m7Xfj477", "dAVH7239"], "basePolicyName": "Gjo5SCvc", "description": "aiRU1iBd", "namespace": "sJ5j8Gmc", "tags": ["gvs5FhUC", "CYNcEUhx", "H8wBTO4g"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'wZMoIU3u' \
    'ZMwHgVIx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'Q7aFABlg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'dyAy6HuV' \
    --body '{"contentType": "EqsCgC7X", "description": "4Rwc3v9w", "localeCode": "8eCav48R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'c5xGbtza' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    '8ldTBxv8' \
    --body '{"attachmentChecksum": "0FYAeorY", "attachmentLocation": "g0swdtu4", "attachmentVersionIdentifier": "4ht052k0", "contentType": "EsZ9Kcjy", "description": "0J1WvJy5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    '4LwnCpz3' \
    --body '{"contentMD5": "Zj2iPVLf", "contentType": "JlOedIlI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'jAOqNC9B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    '3OkHNENV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreements1' test.out

#- 17 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'tmq2vXvq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAllUsersByPolicyVersion1' test.out

#- 18 RetrieveAllLegalPoliciesByNamespace
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 19 CreatePolicy1
$PYTHON -m $MODULE 'legal-create-policy-1' \
    --body '{"affectedClientIds": ["VeF1tDKk", "3DWZXlvi", "Pd5typM8"], "affectedCountries": ["6IaEIjUn", "B1ZIhULM", "rhuT7q3y"], "basePolicyName": "TMf2mHxa", "description": "GWpzZb9Z", "tags": ["21UAnCMF", "I5yrSfOG", "dQg3KwNO"], "typeId": "TpMcA2Go"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreatePolicy1' test.out

#- 20 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'iHbcRP9e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RetrieveSinglePolicy1' test.out

#- 21 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'QTCcfbOs' \
    --body '{"affectedClientIds": ["srG7R48C", "MHtcnQVy", "GavmWrpa"], "affectedCountries": ["mjzg9HT5", "r2sRTRNj", "4uwvFxjV"], "basePolicyName": "sogewA5b", "description": "OG8XtlTx", "tags": ["7CLSO3gM", "WA9xJpKg", "tH9ptjbV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PartialUpdatePolicy1' test.out

#- 22 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'fhYKIMIw' \
    'JX3frVHP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'RetrievePolicyCountry1' test.out

#- 23 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    '1VYPtq0s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveLocalizedPolicyVersions1' test.out

#- 24 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'VUtsDU1D' \
    --body '{"contentType": "DvetJfGK", "description": "e9AIqs7G", "localeCode": "F0glIfBq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLocalizedPolicyVersion1' test.out

#- 25 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'bc9lnpD2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 26 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    '38PvEbEm' \
    --body '{"attachmentChecksum": "zY3dZA5L", "attachmentLocation": "fNLLoprJ", "attachmentVersionIdentifier": "pw4JIpe6", "contentType": "YHcQ2cix", "description": "5Z6yS6iT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateLocalizedPolicyVersion1' test.out

#- 27 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'HHoZNzSw' \
    --body '{"contentMD5": "siKl9Slz", "contentType": "URKDn8YQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RequestPresignedURL1' test.out

#- 28 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'UsRGTAvz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SetDefaultPolicy1' test.out

#- 29 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'l8kI0Bxx' \
    --body '{"description": "oHc8nfgh", "displayVersion": "MNfQVmmK", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdatePolicyVersion1' test.out

#- 30 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'pmS4jfXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublishPolicyVersion1' test.out

#- 31 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'hiOXf8OF' \
    --body '{"description": "lCwtk8t2", "isDefaultOpted": true, "isMandatory": true, "policyName": "AlwmC1y9", "readableId": "VAK5Vizz", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePolicy1' test.out

#- 32 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'UqZ3yZbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetDefaultPolicy3' test.out

#- 33 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    '9UDi11Ao' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'RetrieveSinglePolicyVersion1' test.out

#- 34 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'zYfAgiYt' \
    --body '{"description": "Zvz98UXl", "displayVersion": "BbggSHvm", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreatePolicyVersion1' test.out

#- 35 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '53' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'RetrieveAllPolicyTypes1' test.out

#- 36 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'rkavNmdu' \
    'fYV7Nxpa' \
    'wN0ZaBF9' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Gz4K1jTa", "policyId": "9dL3ZiAN", "policyVersionId": "dLvzNJD1"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2SoS4HHu", "policyId": "8Hiy2do0", "policyVersionId": "Y9hZGoq8"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pGjWeURW", "policyId": "VGC22Qkz", "policyVersionId": "YUioXvfJ"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'IndirectBulkAcceptVersionedPolicy' test.out

#- 37 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'qsfgyAcc' \
    'Ze6Ja6Eu' \
    'hY1Cf2JO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminRetrieveEligibilities' test.out

#- 38 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'cw18D5Ee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrievePolicies' test.out

#- 39 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'dz8Ye6UF' \
    --body '{"description": "BypWGL91", "displayVersion": "RNPsDWFA", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdatePolicyVersion' test.out

#- 40 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'yMbPrZBO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublishPolicyVersion' test.out

#- 41 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'tAze2Ktl' \
    --body '{"description": "clOFYjjE", "isDefaultOpted": false, "isMandatory": false, "policyName": "vqQIQAmf", "readableId": "L5jr7g4s", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'Cn6SZcQr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy2' test.out

#- 43 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'AVclxoyg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'DoJAufuF' \
    --body '{"description": "hBod4GAW", "displayVersion": "3B3VL95w", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '95' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetUserInfoStatus' test.out

#- 47 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'SyncUserInfo' test.out

#- 48 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'InvalidateUserInfoCache' test.out

#- 49 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'ojoTvLWn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AnonymizeUserAgreement' test.out

#- 50 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "0TQ1vQCM", "policyId": "bXNJvYn6", "policyVersionId": "e72B6i7e"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oRArQSFq", "policyId": "SmvmH9xp", "policyVersionId": "K5NPgIdR"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3cCIPXd6", "policyId": "OipVtQH4", "policyVersionId": "Jrk9r98y"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'ChangePreferenceConsent1' test.out

#- 51 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'g7ExPUoK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'AcceptVersionedPolicy' test.out

#- 52 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'RetrieveAgreementsPublic' test.out

#- 53 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3M5BnJ4U", "policyId": "N0ORD2uB", "policyVersionId": "mrHUtgo2"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "y4KGVxTO", "policyId": "dWjWKbmz", "policyVersionId": "IxWcoDiD"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Zb9tqb99", "policyId": "TIaGmlTC", "policyVersionId": "9Esv5vh0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkAcceptVersionedPolicy' test.out

#- 54 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'Vo97GjOR' \
    'anASJEOe' \
    'K8vcBQzj' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "gjaeZZbb", "policyId": "O9eW5Nlg", "policyVersionId": "MoYBwa8w"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tLb6oKjC", "policyId": "QSwa1WoB", "policyVersionId": "mtape6rt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "96alJiLS", "policyId": "01gX792b", "policyVersionId": "tqv5OKGy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 55 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'fWf5Y3dd' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hlNDAnlf", "policyId": "rmdrWOZJ", "policyVersionId": "XTHcbjUr"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6S86AGEn", "policyId": "s9a8Nn9b", "policyVersionId": "wRFqtwYZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "f4htiZIH", "policyId": "A7s2mbyK", "policyVersionId": "vTY96DTr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 56 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'RetrieveEligibilitiesPublic' test.out

#- 57 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'sdFmH38P' \
    'uWaqNrok' \
    '7SSErpOb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublicIndirect' test.out

#- 58 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    '8UnR0kjK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    '1hlNCLUz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 60 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'NLtbeeNe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveLatestPolicies' test.out

#- 61 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPoliciesPublic' test.out

#- 62 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'UPHMn8FX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 63 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
