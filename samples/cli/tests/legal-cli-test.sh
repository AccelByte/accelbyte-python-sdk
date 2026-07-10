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
legal-change-preference-consent 'EAxcVpFrttufHIRd' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UzVRiXbqlAw7r6W2", "policyId": "ktQG0h5JAav5kRa6", "policyVersionId": "2WopBJHPtcDs8bBZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Lx8bbgorQeFbQ1g7", "policyId": "qbPngUNB1vRodwpz", "policyVersionId": "S6DaDpv8N7ZQVqGj"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KJfh5pUkHODpoMF7", "policyId": "8NY4YkHs1cnz1JSD", "policyVersionId": "gY1TXp38zsCTCrbC"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["xYG3aREAu2D6QVKN", "SuL0Sly6XM4OI18m", "AQLnzjMf8GZ2WBZq"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'CWP75TB0i7pKxR8d' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'l0zRVW4EZG9m0Xcg' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv 'GVbMqSszE8GHavj7' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'AorKsxwkosAVerXp' 'c1C8XfwHuKeb9l3r' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["duuyZ0GhDogqrhBR", "GN9A3sNm84hddSpH", "t0P7MIIR7CkyF6C7"], "affectedCountries": ["IAjGGJddVCvu9vx5", "d8lDR6qVNPRZYdFL", "KQ7KYnIuMBvaO35l"], "basePolicyName": "lzQRaT5kPxUfofvn", "countryGroupName": "nSuB0y5WUlrMdI4s", "countryType": "COUNTRY", "description": "veabntBSxTeIv53H", "isHidden": true, "isHiddenPublic": true, "tags": ["03VLisV6zwPuo3td", "iljvjKoyD6SCwGrn", "cqmLtjQHAf8TgoNm"], "typeId": "6TC6I3lMjGSWN2la"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'RlxfcjHfYakUCTqG' --login_with_auth "Bearer foo"
legal-delete-base-policy 'kE7wcWfDslpJSqGA' --login_with_auth "Bearer foo"
legal-partial-update-policy 'XQ0yYoNRKd3IL5TA' --body '{"affectedClientIds": ["Q6iiPlSC2uE4o5Vw", "do3fePqIJA8IHtrk", "mu0hpDDWVAla2l5B"], "affectedCountries": ["o7TTr1DmrhZv15T7", "YNtIuS5S5XUdjsoq", "wGyzzWi9gwQYv7t1"], "basePolicyName": "quIOvBMcaYmvCkGZ", "countryGroupName": "5dAgqxpBFmaLoxoz", "countryType": "COUNTRY_GROUP", "description": "lwSyliWMNW5NyLu0", "isHidden": false, "isHiddenPublic": true, "tags": ["T1X68cmDc3fxU8My", "Q9lNmqRBaAkLnvxk", "VHh2EI8JlDbPWbQ6"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'KrQpM4hkkK6KKXNB' '3Gv0IqmF51TkhjYn' --login_with_auth "Bearer foo"
legal-retrieve-all-policies-from-base-policy 'aq6foWvXa3bMrXsD' --login_with_auth "Bearer foo"
legal-create-policy-under-base-policy 'r6kILsSSyDdmykmo' --body '{"countries": ["teEKDpADz1x3poD3", "0pf4IxjUkl535X3a", "PYgc2L4jk4Lo0LSP"], "countryCode": "Qgb3boLQQ1MzH7Qm", "countryGroupName": "8bwbmXgdAPh1EThG", "countryType": "COUNTRY", "description": "QZxfgPubTDIHrvqA", "isDefaultSelection": false, "isMandatory": true, "policyName": "uwjRHpKKTlmVr9Xu", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-delete-localized-policy 'pf3vneSD2Tb3g7mS' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'QUhAEtrmjqU6YE3p' --login_with_auth "Bearer foo"
legal-create-localized-policy-version '4lSck0ZHn5GI39YB' --body '{"contentType": "HqaTHeKtW18iGeUl", "description": "c9d9sogWa24CKNS0", "localeCode": "GqVvUfHQvsHXNUNe"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '4mhgo5QB65lSAiYn' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'NjkfZrQvGgbLdLsF' --body '{"attachmentChecksum": "zHkBMr1yrOMlNFSr", "attachmentLocation": "UEirnjX9fDmIbeZx", "attachmentVersionIdentifier": "zfTcyiuATus9hsfp", "contentType": "FDcSDG8aMVGLiBNr", "description": "DjqoxcwgGLXpUL4p"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'p2ncYAHdNzDmeIP6' --body '{"contentMD5": "rOvDz9KOsb392k6Y", "contentType": "mJFfRByjlBiuFM3F"}' --login_with_auth "Bearer foo"
legal-set-default-localized-policy 'IoVk8T3GpAnkCmBU' --login_with_auth "Bearer foo"
legal-delete-policy-version 'qg2SCnqntX9y1aZS' --login_with_auth "Bearer foo"
legal-update-policy-version 'WMiVi10sG6vxkfUc' --body '{"description": "mqRRbceJ5i0EeDxO", "displayVersion": "gBnhhqElIaDml48w", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version '0JT1yduat2vQR3bi' --login_with_auth "Bearer foo"
legal-unpublish-policy-version 'Bfsu4jmsRE2w1yEk' --login_with_auth "Bearer foo"
legal-delete-policy 'Lgh3tIYt4SqYUTLD' --login_with_auth "Bearer foo"
legal-update-policy 'x9gIiDandpGT2t24' --body '{"countries": ["aOMh5eC3IHeHSKLC", "a3xreNDUWehwH3q3", "1A806DJgas4b6z3L"], "countryGroupName": "NUj7fdgLA84Z8YYk", "description": "6QEgJjBbEDoNf3n0", "isDefaultOpted": false, "isMandatory": false, "policyName": "EoRCAcf80zfFyabW", "readableId": "AgIUXiI07A68eaqC", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy 'J9jyEW6GLbc0NaKD' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'UL3sa13lk1dQBHO8' --login_with_auth "Bearer foo"
legal-create-policy-version '6IlBhnetU4RwTqUX' --body '{"description": "lTDBzOuYsaZA2yyd", "displayVersion": "4mbqoOfADMMAXFaY", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '9' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'C9XIBudfZgrbHDID' 'm4hMzF4TxodenSrU' 'TvfqU0bfoMm5cTtF' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3c46IjGa23YvYmmD", "policyId": "g7VYPXIuvUYTZBRu", "policyVersionId": "jIUE1Tq5jyAZvkRC"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Iurjh2imdb4rbkXj", "policyId": "0ZwsVC0gL97ZVJSP", "policyVersionId": "qJiwv1qlYB1RSKs6"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QxC3Gb7S0o4zGYY7", "policyId": "KQI1AeFgPqaOkvo1", "policyVersionId": "aolB4lkKB4EYOkQ1"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'jMD3cym8xIfkOVW2' 'grREOLx0KOww3HIC' 'QLfl7MUBG7qtPu64' --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'yAtURKLRkb738HGS' --login_with_auth "Bearer foo"
legal-public-change-preference-consent --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QAXVG7tnsZg5QgXj", "policyId": "vyGJPN4eXbJE5Vs2", "policyVersionId": "GcyomQoIXimBJehy"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lNsjUgxBkF6wFPoJ", "policyId": "eQediogEhhM2rIiz", "policyVersionId": "GdKvOPdq5xrgxSmy"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "N9LFkYW5DQyj4bj5", "policyId": "Ro2ogaKt2ujQSa3Z", "policyVersionId": "db65UXmy0Zp6iIaT"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'IKUkmkk9QM0NBMA9' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kEORV3bu1bNCtX7W", "policyId": "40V6Do5sYadCCFrH", "policyVersionId": "HC3DpZxkrQDXuNFv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Marv8mnfHK8CCmE2", "policyId": "lPnsbD3SGEdlwuUc", "policyVersionId": "cE536ugBp3HBvepn"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CjgyJlXe36mgWjLf", "policyId": "Fmteue9nzJ6fH24T", "policyVersionId": "805tVg8JqU0jZpjv"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'sugAOS7u8RiWyerC' 'Sa8SRgwsAj1ik1jg' 'laDXTvKCWwNTAhd2' --login_with_auth "Bearer foo"
legal-old-public-retrieve-single-localized-policy-version 'wrS0uPdjhdinpng5' --login_with_auth "Bearer foo"
legal-public-retrieve-single-localized-policy-version 'BLy8wbhMssAHjapI' --login_with_auth "Bearer foo"
legal-retrieve-country-list-with-policies --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'kY9Rf4wP57dBZNR8' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-old-retrieve-latest-policies-by-namespace-and-country-public '8YbCtmKy8M9zVrjf' --login_with_auth "Bearer foo"
legal-check-readiness --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'GXZnqAQUoY1GjlII' 'k0iKoTTS1j02o7Jj' --login_with_auth "Bearer foo"
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
echo "1..75"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'TXAQN0qdskdQV0Tq' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aKQDOJvrTefglSs6", "policyId": "g4iY9u02aCNYIWek", "policyVersionId": "p18lOC3mNqF7Bl0L"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ghVHfPEspxwhRON0", "policyId": "bc1eMbEIjowLqc3e", "policyVersionId": "cjXJbZDKKoxLE1Y3"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ymtj3giPg4x4yiPX", "policyId": "6ues1Hhhkg1yLVbL", "policyVersionId": "FzHEP8cM4NTwr0KH"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 OldRetrieveAcceptedAgreements
eval_tap 0 3 'OldRetrieveAcceptedAgreements # SKIP deprecated' test.out

#- 4 OldRetrieveAllUsersByPolicyVersion
eval_tap 0 4 'OldRetrieveAllUsersByPolicyVersion # SKIP deprecated' test.out

#- 5 RetrieveAllLegalPolicies
eval_tap 0 5 'RetrieveAllLegalPolicies # SKIP deprecated' test.out

#- 6 OldCreatePolicy
eval_tap 0 6 'OldCreatePolicy # SKIP deprecated' test.out

#- 7 OldRetrieveSinglePolicy
eval_tap 0 7 'OldRetrieveSinglePolicy # SKIP deprecated' test.out

#- 8 OldPartialUpdatePolicy
eval_tap 0 8 'OldPartialUpdatePolicy # SKIP deprecated' test.out

#- 9 OldRetrievePolicyCountry
eval_tap 0 9 'OldRetrievePolicyCountry # SKIP deprecated' test.out

#- 10 OldRetrieveLocalizedPolicyVersions
eval_tap 0 10 'OldRetrieveLocalizedPolicyVersions # SKIP deprecated' test.out

#- 11 OldCreateLocalizedPolicyVersion
eval_tap 0 11 'OldCreateLocalizedPolicyVersion # SKIP deprecated' test.out

#- 12 OldRetrieveSingleLocalizedPolicyVersion
eval_tap 0 12 'OldRetrieveSingleLocalizedPolicyVersion # SKIP deprecated' test.out

#- 13 OldUpdateLocalizedPolicyVersion
eval_tap 0 13 'OldUpdateLocalizedPolicyVersion # SKIP deprecated' test.out

#- 14 OldRequestPresignedURL
eval_tap 0 14 'OldRequestPresignedURL # SKIP deprecated' test.out

#- 15 OldSetDefaultLocalizedPolicy
eval_tap 0 15 'OldSetDefaultLocalizedPolicy # SKIP deprecated' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["wQUWDFJvJBWic7Uk", "BeIXuqDuAXI66bQ7", "XiR1DJ7HVWqMkNSa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    '1w0deoV9Lx5RDA1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements' test.out

#- 18 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    '2XcrciYNEzvSZIPk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'hSgORcz5S5BvmgBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'xh4ijFnE3Tam69qS' \
    'Z7PC6f6QkmZXElW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy
$PYTHON -m $MODULE 'legal-create-policy' \
    --body '{"affectedClientIds": ["0QKFlAVmVLu4AOec", "0z8eBeeoip68J1ns", "YfRSse6AAz3S4czz"], "affectedCountries": ["v4W2OJhtafxMSJlH", "eb34sZKHcl5LLLOe", "xL4fZvWtND2tcBFp"], "basePolicyName": "X8lNtFEJ7tnkY6Mc", "countryGroupName": "a5afj12K2IzrBvvW", "countryType": "COUNTRY", "description": "gatOEBM70TdlNBJY", "isHidden": false, "isHiddenPublic": true, "tags": ["Jrzzjrcaug6CWVG8", "pu1VCarzBsV6xnZ5", "SWP3glU6muswVJnN"], "typeId": "nN7kAa7j0riFc5HT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy' test.out

#- 23 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'HQIoVsGo7dwV9DBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy' test.out

#- 24 DeleteBasePolicy
$PYTHON -m $MODULE 'legal-delete-base-policy' \
    'FKHQkETJyTlUrwDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'noujQD4IEiH9Z5qX' \
    --body '{"affectedClientIds": ["n3aoRtlqOECohViH", "fapq5AAeMe4L3mDW", "A5CzgFSy8X1A3PrI"], "affectedCountries": ["ORBVXTIIJM9XsYII", "SUBhyoTsMWPAxUMk", "ZxiXNMR9BgaWcFX3"], "basePolicyName": "awaGpAyrIwMif3BO", "countryGroupName": "dkocVTd4BxqGWV6m", "countryType": "COUNTRY_GROUP", "description": "sQs6XNbjvqhnUVLW", "isHidden": true, "isHiddenPublic": true, "tags": ["JvlfV5OemPYdYT7D", "8olKdxL6ozRmDD0j", "ROCjtuzFMbAG9YI8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy' test.out

#- 26 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    '9hmguB8FOTjMLo4b' \
    '9rIzqYkEpstyVTBc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
$PYTHON -m $MODULE 'legal-retrieve-all-policies-from-base-policy' \
    'rM8rG0rH0zcswwVe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
$PYTHON -m $MODULE 'legal-create-policy-under-base-policy' \
    'MK6MbGIVIu8vvwLc' \
    --body '{"countries": ["7KY3uVoJXTIMtpgk", "WCYzo8yO2KTK9tmm", "ieDyF97lGdMiHKxb"], "countryCode": "OnYnOpas6ghP1y4Z", "countryGroupName": "i7s7QBlk44Z44B1G", "countryType": "COUNTRY", "description": "KBwa3Ddb60ufPpzw", "isDefaultSelection": false, "isMandatory": true, "policyName": "1QGIFmlVf4jvapse", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
$PYTHON -m $MODULE 'legal-delete-localized-policy' \
    'XZtLW87rGysryod3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'dNQrmsApRA6HX3Rw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions' test.out

#- 31 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'rKt2ecozL0TOg54v' \
    --body '{"contentType": "CE48L5oLF6M4lNa4", "description": "JUMSHNgqRqCV7usa", "localeCode": "mANkZlOX9Sfo95Hg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'XqKhTPkwfLM9uSyb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 33 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'RzWek2gZvRrvr0n9' \
    --body '{"attachmentChecksum": "d9lvccKMLhrTrcBE", "attachmentLocation": "2ItBS3KtKZWe8aoF", "attachmentVersionIdentifier": "zAyBME74HUtipUWY", "contentType": "hWV1qx8CzPML52fa", "description": "XUr9Sk4lq2faBcAX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion' test.out

#- 34 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'XKlhvyH8paOJtxqM' \
    --body '{"contentMD5": "PpcVfRwNj547fH0X", "contentType": "rKEDpEY8VnocGAjc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL' test.out

#- 35 SetDefaultLocalizedPolicy
$PYTHON -m $MODULE 'legal-set-default-localized-policy' \
    'i0V3tBf2jnHGKXph' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultLocalizedPolicy' test.out

#- 36 DeletePolicyVersion
$PYTHON -m $MODULE 'legal-delete-policy-version' \
    'n50c9tNLDljhZ2jx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'LRX3z46OCaGBeMfP' \
    --body '{"description": "lNos4yBRjrERHEon", "displayVersion": "AZR8GmEu0q1p6QCy", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion' test.out

#- 38 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    '6vSkVFWdsbYuVEGV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion' test.out

#- 39 UnpublishPolicyVersion
$PYTHON -m $MODULE 'legal-unpublish-policy-version' \
    'xYheR3j5mNZ6vwv7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
$PYTHON -m $MODULE 'legal-delete-policy' \
    'K8Asvt1j1Rx59hes' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'NWy2NvZ85DDKDAF8' \
    --body '{"countries": ["7c53q7akMpcmnnx6", "RVBrop9v7aZK3h65", "KDsBZOuYQJ03BAHZ"], "countryGroupName": "hbN15zfQSfQrtfF3", "description": "TQN0OcNDLr36vzoh", "isDefaultOpted": false, "isMandatory": true, "policyName": "iOMZfEhHr39pysFO", "readableId": "3Zvc1BZG99LyvfvH", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'cENx9xZlAchob44l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy' test.out

#- 43 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'ONDDwMvgI0HlyPR7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'wZNiVsF6xG2mXEQd' \
    --body '{"description": "bzIVy8alncV7vWgS", "displayVersion": "Hdfo07UctPErqxyM", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '82' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'jxR7SETWjteoc8fg' \
    'vZDDhoO05oKqymxL' \
    'D1Lcvw6T6mZEiwxx' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3ZprZ60zMjhTHeh9", "policyId": "4TSenE5hCFkIf5we", "policyVersionId": "qZ18MH57l2Zsrh90"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TtYmGukz3MnlrjcH", "policyId": "p6B8Vj7rXFgDnDkd", "policyVersionId": "Z9bpjb1tdA3QhjCM"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hsYpKPlXn77AtYoF", "policyId": "zLAATPY8P8P3cfoi", "policyVersionId": "vvQxevecWw7Rry0K"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'K5rgAGO0dW8rX2MV' \
    'UGKSZ4GcLkt4pK32' \
    'sJxlZcCTpTdRtCHv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
eval_tap 0 48 'RetrievePolicies # SKIP deprecated' test.out

#- 49 OldUpdatePolicyVersion
eval_tap 0 49 'OldUpdatePolicyVersion # SKIP deprecated' test.out

#- 50 OldPublishPolicyVersion
eval_tap 0 50 'OldPublishPolicyVersion # SKIP deprecated' test.out

#- 51 OldUpdatePolicy
eval_tap 0 51 'OldUpdatePolicy # SKIP deprecated' test.out

#- 52 OldSetDefaultPolicy
eval_tap 0 52 'OldSetDefaultPolicy # SKIP deprecated' test.out

#- 53 OldRetrieveSinglePolicyVersion
eval_tap 0 53 'OldRetrieveSinglePolicyVersion # SKIP deprecated' test.out

#- 54 OldCreatePolicyVersion
eval_tap 0 54 'OldCreatePolicyVersion # SKIP deprecated' test.out

#- 55 OldRetrieveAllPolicyTypes
eval_tap 0 55 'OldRetrieveAllPolicyTypes # SKIP deprecated' test.out

#- 56 GetUserInfoStatus
eval_tap 0 56 'GetUserInfoStatus # SKIP deprecated' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'uk6B6XTmSLyn50si' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 PublicChangePreferenceConsent
$PYTHON -m $MODULE 'legal-public-change-preference-consent' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BVZxiKdV57GvRyd9", "policyId": "UuL02Le8HSCslsDd", "policyVersionId": "4M1F5qRIblS7Nz81"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kUetzCAWc9x1aMjg", "policyId": "Gim51T107XIZRZ7t", "policyVersionId": "ZdIs0xf4czdt7zqm"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7k8nbLzvtCIW5ynM", "policyId": "KquUicAeIVXtoWAX", "policyVersionId": "hMlW4tLqX7OICf5o"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicChangePreferenceConsent' test.out

#- 61 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'D1e6oI9FmYel0kOw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'AcceptVersionedPolicy' test.out

#- 62 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RetrieveAgreementsPublic' test.out

#- 63 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "o8Zkgk0jS6rDWUwf", "policyId": "hKvrf2AaH4yCWrHS", "policyVersionId": "ppnIZkNnTn3rzH5N"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "AtcvNedgS1fUfKmi", "policyId": "hDbmu8ePWlQMVDXE", "policyVersionId": "HeiGTnwyEw6hIWDZ"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pP7rz3ISW510kHr4", "policyId": "isTKWjmv67nuHCXW", "policyVersionId": "fwnwGioVwVzmmBVV"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 PublicIndirectBulkAcceptVersionedPolicy
eval_tap 0 65 'PublicIndirectBulkAcceptVersionedPolicy # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'Ffpqx1AeLtzcPJ3j' \
    'tDYBo4FUTH7CGfKS' \
    'yxgRR1DiCqSMzpqI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 OldPublicRetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-old-public-retrieve-single-localized-policy-version' \
    'FGLkDs7ACC1RgBfo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'OldPublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 69 PublicRetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-public-retrieve-single-localized-policy-version' \
    'NrHlFi2qJLgmBLE3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicRetrieveSingleLocalizedPolicyVersion' test.out

#- 70 RetrieveCountryListWithPolicies
$PYTHON -m $MODULE 'legal-retrieve-country-list-with-policies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    '5YhyiDV90SeI5ypp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 OldRetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-old-retrieve-latest-policies-by-namespace-and-country-public' \
    'BHoytVznCgNyx9fb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'OldRetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'T63ShEh8PbGikLjg' \
    'jcj34uulU6FYBZsW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
