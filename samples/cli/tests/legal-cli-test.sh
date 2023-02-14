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
legal-change-preference-consent 'Ipv64mZM' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kcYXl4Dt", "policyId": "JNglChOI", "policyVersionId": "84ELsAih"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VPfVUYbC", "policyId": "Ekc0GaFv", "policyVersionId": "ak0URRgX"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yELNnZyy", "policyId": "NnnOrsIm", "policyVersionId": "qv2grbXN"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'n07ip9fJ' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'qZ2tbJL4' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["Rt2b7iVJ", "DhYUxbj9", "oKP7FY6J"], "affectedCountries": ["1k3SVnmr", "gGhFeAMz", "IjslHz22"], "basePolicyName": "xCxKizgl", "description": "MhfXKmX3", "namespace": "VW0aQIvi", "tags": ["5QqLaQwa", "VB3GkUUa", "GfxLJ7Ne"], "typeId": "tDcrJDIG"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'vZdOZByk' --login_with_auth "Bearer foo"
legal-partial-update-policy 'EsaAKEgO' --body '{"affectedClientIds": ["dRDPFQuT", "tq9TWDL6", "vU0kFC22"], "affectedCountries": ["CI1sJrfD", "uHS73UcC", "9tr8qbht"], "basePolicyName": "2aqdgRLm", "description": "ATFVl7Ki", "namespace": "5vojTY2C", "tags": ["VUysG0IL", "8TNOLDSz", "WB8vFN7m"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'oN0b62X8' 'uUQNp8hO' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'eBS4qgJ8' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'ey0ztdpr' --body '{"contentType": "w8NFfkhS", "description": "3EBNd2Y7", "localeCode": "ZHgDKqjX"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'mWybYqNG' --login_with_auth "Bearer foo"
legal-update-localized-policy-version '61RRZmf8' --body '{"attachmentChecksum": "9R1Fj6KD", "attachmentLocation": "82K47VJ2", "attachmentVersionIdentifier": "xZ6SSo5D", "contentType": "OQowcUwx", "description": "NQ5JduAc"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'KQap4jvo' --body '{"contentMD5": "bSsHCxmZ", "contentType": "3K8bdpGS"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'naTXBvUg' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 '3oXO8cmH' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'airx2rts' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["CTMYBLQy", "GxBAFBPR", "XrxBptqH"], "affectedCountries": ["cF6amZzf", "nCgMJHcQ", "S0w4Y4Pb"], "basePolicyName": "7k7v5nZr", "description": "enacB8q8", "tags": ["PnNNtfvv", "IbjcMbV8", "gPqwHgCm"], "typeId": "r8dRBDLG"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 '0qxOiHb8' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'AZgLgYQh' --body '{"affectedClientIds": ["9xoV0Pmz", "JxXKXGdC", "eIlP95Mw"], "affectedCountries": ["7IiVKvVh", "qUqdz15v", "zTE6bMlC"], "basePolicyName": "aqSPrSor", "description": "iGEkI1Mv", "tags": ["83Nx194g", "GVgY5N6H", "tVRwAwRA"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'bTfrfSl1' '0utxf4p9' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'xuLnaiLU' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'eW1ITi19' --body '{"contentType": "WlmgSaBg", "description": "udncRKFS", "localeCode": "PYbBPR3a"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'Rv6MsPje' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 '3FBJbDWj' --body '{"attachmentChecksum": "TlPzmWFC", "attachmentLocation": "EOzYcvu4", "attachmentVersionIdentifier": "Cc9zYL2T", "contentType": "VPjftpXs", "description": "6gmSyGvR"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'Sza55iYj' --body '{"contentMD5": "GDQCFnCN", "contentType": "yXgxkbeX"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'mr4urTu9' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'eOIkjdMM' --body '{"description": "glWEXgL2", "displayVersion": "oUXpLhC0", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'WgfxFQQT' --login_with_auth "Bearer foo"
legal-update-policy-1 'HOETu6b9' --body '{"description": "UrmIbXrN", "isDefaultOpted": true, "isMandatory": true, "policyName": "sEAcgEhM", "readableId": "LCy5ilSo", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'b0xvbtZW' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'X7MdZCxw' --login_with_auth "Bearer foo"
legal-create-policy-version-1 '5MZE3L2A' --body '{"description": "0k6nYgkn", "displayVersion": "s0alyT9Y", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '65' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'k5HkzCCU' 'HwS2HLyr' 'lnABM6xH' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "WHbIEpwc", "policyId": "vRGtARLV", "policyVersionId": "BGy6wuKL"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uNSSp8RK", "policyId": "lw2MQZQt", "policyVersionId": "oYvzdKom"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VcKJWD6v", "policyId": "MSyafguI", "policyVersionId": "cs65jW5p"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities '9nbmJpRh' 'iU2EyatX' 'dceZ5L9d' --login_with_auth "Bearer foo"
legal-retrieve-policies 'XDIF3Lce' --login_with_auth "Bearer foo"
legal-update-policy-version 'HRwhmnDi' --body '{"description": "MmK9KM3b", "displayVersion": "cN2lypc7", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'S52FNE3p' --login_with_auth "Bearer foo"
legal-update-policy 'o0E85vgF' --body '{"description": "UXIsJugX", "isDefaultOpted": true, "isMandatory": true, "policyName": "Ab7PidSC", "readableId": "ONFkytST", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'hxMieb6n' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'AaMhOmGr' --login_with_auth "Bearer foo"
legal-create-policy-version 'MWiSjtdQ' --body '{"description": "XzUI1jrH", "displayVersion": "5Gk9jc8V", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '31' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'G0WP5R4x' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jYAwBSeh", "policyId": "LysmyNnn", "policyVersionId": "F1rA5HTN"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "m9r59nSF", "policyId": "b4G3wcME", "policyVersionId": "BaffhcfR"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "McM3GwjH", "policyId": "QFAdsCQX", "policyVersionId": "jdxqXV8x"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'vnE1xScp' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ky7kaQ6i", "policyId": "SMgV0Jgr", "policyVersionId": "8E3NdRNI"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tignXIAs", "policyId": "F64sgsG3", "policyVersionId": "k8jfUExm"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "TOQE2PTk", "policyId": "AxUsfd6p", "policyVersionId": "L84hLULn"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 '3oqLy585' 'RywLkU2M' 'Tkn2spJn' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SxKWv9TO", "policyId": "CWjfl4At", "policyVersionId": "FnRrN212"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "aMYUylJ3", "policyId": "7cHl1l0m", "policyVersionId": "n6ErFcL5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2thRPm7f", "policyId": "nShxl0mh", "policyVersionId": "jXLOZgKK"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'CbCmBjJ2' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uCOUBQay", "policyId": "RlXXP0Co", "policyVersionId": "WJu8Iu6Z"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Rei9maAN", "policyId": "mwUwvSSW", "policyVersionId": "rTHUOlsG"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ONHyWyJx", "policyId": "Vf4v8K4g", "policyVersionId": "4B5tqDhg"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'YVRlMowJ' 'hKUOXOEZ' 'xK152Srf' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'F4Qg7gU1' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'xXSvmIIo' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'QHueQA11' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'raQ8GM2Y' --login_with_auth "Bearer foo"
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
    'fonxvMVa' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KwVhEhBw", "policyId": "3s7scb8I", "policyVersionId": "eWukHUlB"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dyp0b3lu", "policyId": "ShqwZO02", "policyVersionId": "RHr3Pp0k"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "gXbJzQVT", "policyId": "jEwWyuIS", "policyVersionId": "YhueHJSu"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'sQuzJaPJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'xrqubTpV' \
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
    --body '{"affectedClientIds": ["444Vatx6", "oQuV33zw", "KfvET2qO"], "affectedCountries": ["s14Gjc4Z", "3ZbcqT05", "W1fkJMzB"], "basePolicyName": "ryhIM19P", "description": "YsZw7FaT", "namespace": "CRct3xEt", "tags": ["vUYZJ4Sk", "Y1tUtuSb", "RpCyVqM1"], "typeId": "KPYVRMj9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'ndZkfFQQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    '4l0Z4Stj' \
    --body '{"affectedClientIds": ["VjKfZtaL", "LiqEJTZQ", "EVquHtIA"], "affectedCountries": ["FUnPl1O4", "VI0ODIb6", "hbyBcTCH"], "basePolicyName": "cUYaHrDJ", "description": "gZeZ5mWe", "namespace": "csbrhqco", "tags": ["rFQReD5d", "Ghm9E2fT", "1sGquX2k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'ocuAwWfG' \
    '58gkZvlH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'kIHdRJ6i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '63aIasMW' \
    --body '{"contentType": "VK6Gh3Lr", "description": "UyoJH9Id", "localeCode": "yZPdmmnT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'l61Ljiek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'C0xwNxso' \
    --body '{"attachmentChecksum": "DjxLK64j", "attachmentLocation": "NRtzLwT8", "attachmentVersionIdentifier": "Vzn0BCez", "contentType": "aNaf0ODk", "description": "1KWARibF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'vsvbFbKQ' \
    --body '{"contentMD5": "ZAmrhEeD", "contentType": "l4zmUfFN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'oqJwmD9C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'SqqPgqZL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreements1' test.out

#- 17 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'g0JqR7Jo' \
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
    --body '{"affectedClientIds": ["g9tnJKbP", "YjP9qHvh", "G1xmKnxq"], "affectedCountries": ["LavKg3kF", "MGFOfdzE", "5r7uLMNE"], "basePolicyName": "6ACgVyue", "description": "Q0Yt4T2x", "tags": ["lmHeQgHr", "4031RboN", "XAicuHZO"], "typeId": "mTUebgl7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreatePolicy1' test.out

#- 20 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'p1yFgu2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RetrieveSinglePolicy1' test.out

#- 21 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'zrzox0Jv' \
    --body '{"affectedClientIds": ["rzhd4oAZ", "VcX0o1iC", "Hq8WpdYP"], "affectedCountries": ["NdcZcVym", "1nmlCgp6", "A1dCa7Z9"], "basePolicyName": "8y9211lH", "description": "kX6wisu6", "tags": ["pqJy3nYY", "cgNlbxdP", "lIJzFuEm"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PartialUpdatePolicy1' test.out

#- 22 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'qaOLGEL1' \
    'dwq0wPVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'RetrievePolicyCountry1' test.out

#- 23 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'HlthW9XA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveLocalizedPolicyVersions1' test.out

#- 24 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    '9bv49Evl' \
    --body '{"contentType": "KPnLN9kR", "description": "fOgW1yLv", "localeCode": "EyoLsxuE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLocalizedPolicyVersion1' test.out

#- 25 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'ODhMI14j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 26 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    '0EXjG9ma' \
    --body '{"attachmentChecksum": "2HwUS8Od", "attachmentLocation": "JmP5yq4s", "attachmentVersionIdentifier": "wr4zxcwF", "contentType": "jYPm6p0L", "description": "d9NEjEW6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateLocalizedPolicyVersion1' test.out

#- 27 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'CZEwO1kh' \
    --body '{"contentMD5": "pHAUyBGy", "contentType": "DOb6P40p"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RequestPresignedURL1' test.out

#- 28 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '0hUmSTZw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SetDefaultPolicy1' test.out

#- 29 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'n8hab7xL' \
    --body '{"description": "2EzI7YIy", "displayVersion": "dwHfZDgL", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdatePolicyVersion1' test.out

#- 30 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'SYPu8yMI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublishPolicyVersion1' test.out

#- 31 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'Ipo4U7WV' \
    --body '{"description": "LKlDh1ZZ", "isDefaultOpted": true, "isMandatory": false, "policyName": "1GwgIoig", "readableId": "gaIPKowo", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePolicy1' test.out

#- 32 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'XQhRikug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetDefaultPolicy3' test.out

#- 33 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'ZVR3DSfn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'RetrieveSinglePolicyVersion1' test.out

#- 34 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'qCuaxyCC' \
    --body '{"description": "rLcMz6n8", "displayVersion": "2yAKa8ak", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreatePolicyVersion1' test.out

#- 35 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '74' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'RetrieveAllPolicyTypes1' test.out

#- 36 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'lf84BgvC' \
    'GWEzUtQr' \
    'fBN5wYya' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rupN8tZq", "policyId": "UByO8r8G", "policyVersionId": "XYSC6Kjg"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Y5MwBkN5", "policyId": "Y8d8V4Ib", "policyVersionId": "kJRb9gYD"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dh0oneoA", "policyId": "jrhuR9K5", "policyVersionId": "3how64zq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'IndirectBulkAcceptVersionedPolicy' test.out

#- 37 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'O3LViXMN' \
    'EZeGr1Ax' \
    'GDwWNzlQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminRetrieveEligibilities' test.out

#- 38 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'C7LE3ppr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrievePolicies' test.out

#- 39 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '8hO8ziur' \
    --body '{"description": "1rI9W1zM", "displayVersion": "R4z9whK5", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdatePolicyVersion' test.out

#- 40 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'WgKclxlC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublishPolicyVersion' test.out

#- 41 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'I1IJFCPP' \
    --body '{"description": "xfTAhcb2", "isDefaultOpted": true, "isMandatory": false, "policyName": "0cS9YjX0", "readableId": "rguxbzyX", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'eKpOTS2B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy2' test.out

#- 43 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '8JHbUpTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'f2h1UT3f' \
    --body '{"description": "4GzuyN84", "displayVersion": "6PPL1lD8", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '18' \
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
    '2NIgSbUm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AnonymizeUserAgreement' test.out

#- 50 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "fcGMfM8a", "policyId": "OZaydKaS", "policyVersionId": "bfNoUg90"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iiMKrd5E", "policyId": "UBVm45HU", "policyVersionId": "FFcYzyNf"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NUDVHeAT", "policyId": "kiKrBfSL", "policyVersionId": "h87jigxx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'ChangePreferenceConsent1' test.out

#- 51 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'rEIum2Iy' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "5h6R2znV", "policyId": "D4p0MHvG", "policyVersionId": "q2HTB9it"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Y9ygJdih", "policyId": "QfQ6qs2o", "policyVersionId": "FUNiEX49"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IeQBMIVk", "policyId": "2fvhRLv7", "policyVersionId": "5dzYmf5B"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkAcceptVersionedPolicy' test.out

#- 54 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    '5Li2Biry' \
    'oBHNuXbz' \
    '6jjgZmGi' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UmExL6wE", "policyId": "PgwM5aB2", "policyVersionId": "YuSYFtJB"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SyheJj6Y", "policyId": "vEInFMYy", "policyVersionId": "bStsKjxr"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2mMgNStH", "policyId": "PQCwdl9e", "policyVersionId": "4sSlFZcy"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 55 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'hQIQxwKm' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Sva9Z0vo", "policyId": "IlUXRsGg", "policyVersionId": "dxEWDfbd"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "baMdvxvE", "policyId": "PFk0AZsl", "policyVersionId": "BgHx5nlP"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hhaLVMmD", "policyId": "o4xjpnQx", "policyVersionId": "JD3R5BZ4"}]' \
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
    'QGXgXjCJ' \
    'K1nmUkVi' \
    'OxhmNqDk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublicIndirect' test.out

#- 58 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'kNLUXtYT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'AVB4XYoM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 60 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'X7Ck6rnW' \
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
    'pLyjlL7K' \
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
