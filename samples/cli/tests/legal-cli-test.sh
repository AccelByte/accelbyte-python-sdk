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
legal-change-preference-consent 'EAxcVpFr' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6LZrkq6D", "policyId": "c09nIW0O", "policyVersionId": "aiw9B0D7"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "HpzSn3ZP", "policyId": "Udc0qh4n", "policyVersionId": "8mzZ0m8S"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MTwE6I56", "policyId": "IaRDBXxy", "policyVersionId": "aNoMR6hk"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'spInrAip' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version '6lyzSxwE' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["lFHHdgs2", "kNmKJfh5", "1Jub74CU"], "affectedCountries": ["pUkHODpo", "MF78NY4Y", "kHs1cnz1"], "basePolicyName": "JSDgY1TX", "description": "p38zsCTC", "namespace": "rbCbPOyN", "tags": ["3cwyALcz", "QkT7NvyE", "NIicXm7a"], "typeId": "gSrjJW2O"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'QNOs1PXh' --login_with_auth "Bearer foo"
legal-partial-update-policy 'T5FvdiRi' --body '{"affectedClientIds": ["lZ7oFgx4", "DKJDXn7Z", "c8OumKtP"], "affectedCountries": ["4U68su8X", "fqlqNiTv", "B6SdAdIh"], "basePolicyName": "UDrwoZ5M", "description": "ecdKi5r6", "namespace": "QEa1ysLE", "tags": ["zth6mXhz", "oEAcBdW1", "kzWkFeZS"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country '9m4eu6d5' 'tA5jUmiT' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'qpyhPFdx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'LzFQN05M' --body '{"contentType": "YzYiKWe5", "description": "dNRljv7I", "localeCode": "PrDQQRga"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 't0SevkLG' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'MS0lyuI9' --body '{"attachmentChecksum": "a2I9u6Vp", "attachmentLocation": "bsx5w8hq", "attachmentVersionIdentifier": "UI06UpOX", "contentType": "GSLmCVuH", "description": "OPlLlkvR"}' --login_with_auth "Bearer foo"
legal-request-presigned-url '8sKgnuRk' --body '{"contentMD5": "gghGoYup", "contentType": "D391C2qt"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'PYokahFj' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'kQsfCaTm' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 't1d67FXG' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["Vo3twu0M", "esTCf9x4", "k2s9Q0mP"], "affectedCountries": ["qxNeIxPz", "6MbwL6IY", "rt69lna7"], "basePolicyName": "69z1UaLq", "description": "YSYWytLP", "tags": ["BZufQxGi", "ziZMdjxc", "HPllG4cY"], "typeId": "EzfTD1ZB"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'm3MqHcUm' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'LZZbSqb8' --body '{"affectedClientIds": ["RwNmn9Hr", "NQy4uZAA", "iE0mit9R"], "affectedCountries": ["GCCHYzUO", "cEdscKHP", "EqgA8yu7"], "basePolicyName": "Vk6Jt4Ym", "description": "os9Jcdos", "tags": ["cHyCUEXl", "RBt0zYoM", "4fYcTVU6"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'AvxJMdal' 'wSyliWMN' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'W5NyLu0M' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 '3VHh2EI8' --body '{"contentType": "JlDbPWbQ", "description": "6Q9lNmqR", "localeCode": "BaAkLnvx"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'kT1X68cm' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'Dc3fxU8M' --body '{"attachmentChecksum": "yKrQpM4h", "attachmentLocation": "kkK6KKXN", "attachmentVersionIdentifier": "B3Gv0Iqm", "contentType": "F51TkhjY", "description": "naq6foWv"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'Xa3bMrXs' --body '{"contentMD5": "Dr6kILsS", "contentType": "SyDdmykm"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'oPYgc2L4' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'jk4Lo0LS' --body '{"description": "P0pf4Ixj", "displayVersion": "Ukl535X3", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 '6BXksUC9' --login_with_auth "Bearer foo"
legal-update-policy-1 'b6i5lZC9' --body '{"description": "xv32e8c5", "isDefaultOpted": false, "isMandatory": true, "policyName": "1MzH7Qm8", "readableId": "bwbmXgdA", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'VJf6c2Z0' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'QZxfgPub' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'TDIHrvqA' --body '{"description": "ThuwjRHp", "displayVersion": "KKTlmVr9", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '30' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'pf3vneSD' '2Tb3g7mS' 'QUhAEtrm' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qU6YE3p4", "policyId": "lSck0ZHn", "policyVersionId": "5GI39YBH"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GXlvPG6b", "policyId": "FYReVHQi", "policyVersionId": "pcCx9Zw5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2L7vIYhG", "policyId": "GSyEW4ZJ", "policyVersionId": "J42d3PBd"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'dN8S48l9' 'lyNApflx' 'qMrj3oZk' --login_with_auth "Bearer foo"
legal-retrieve-policies '03QXcKMD' --login_with_auth "Bearer foo"
legal-update-policy-version 'YDDxHSZj' --body '{"description": "tqXyJ58f", "displayVersion": "7Gc26Sai", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'VkydwYWQ' --login_with_auth "Bearer foo"
legal-update-policy 'G26yUZNm' --body '{"description": "TBcvrbYC", "isDefaultOpted": true, "isMandatory": true, "policyName": "aMVGLiBN", "readableId": "rDjqoxcw", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'Ij88cekd' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'qCt81P1k' --login_with_auth "Bearer foo"
legal-create-policy-version 'tfIovmv9' --body '{"description": "gsR5cJcH", "displayVersion": "m3SZLxoR", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '26' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'FuuuySj2' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "iuFM3FIo", "policyId": "Vk8T3GpA", "policyVersionId": "nkCmBUqg"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kYs4Yw20", "policyId": "DOqOBSC2", "policyVersionId": "DKHRuPMM"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Yb33T5UB", "policyId": "JCjfcnLR", "policyVersionId": "fxeCSz9W"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'Ei8Klloe' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "m5T50x9W", "policyId": "T0GfH2rt", "policyVersionId": "Oa4EXsXz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QAk4mqrx", "policyId": "zTtuLl4X", "policyVersionId": "lbGL8QOx"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jzm8y2wN", "policyId": "hmwoYZyI", "policyVersionId": "4EFZKBcY"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'rCEAE7WI' 'sfmx40NL' 'Rc6m8heK' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Whzfe2Nu", "policyId": "beoKFeIa", "policyVersionId": "FQCYoDPI"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EgJjBbED", "policyId": "oNf3n0hE", "policyVersionId": "oRCAcf80"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fFyabWAg", "policyId": "IUXiI07A", "policyVersionId": "68eaqC2J"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 '9jyEW6GL' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YbsKoADk", "policyId": "zJEN2VHz", "policyVersionId": "ih3bit0V"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hnetU4Rw", "policyId": "TqUXlTDB", "policyVersionId": "zOuYsaZA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QY3snn2Z", "policyId": "kP7cFdP4", "policyVersionId": "3e5dC9XI"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'BudfZgrb' 'HDIDm4hM' 'zF4Txode' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'nSrUTvfq' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'U0bfoMm5' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'cTtFWbot' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'QyXJRcQW' --login_with_auth "Bearer foo"
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
    'smqPNs92' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "YPXIuvUY", "policyId": "TZBRujIU", "policyVersionId": "E1Tq5jyA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kRCMNFIu", "policyId": "rjh2imdb", "policyVersionId": "4rbkXj0Z"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sVC0gL97", "policyId": "ZVJSPqJi", "policyVersionId": "wv1qlYB1"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'RSKs6gQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'C3Gb7S0o' \
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
    --body '{"affectedClientIds": ["4zGYY7KQ", "I1AeFgPq", "aOkvo1ao"], "affectedCountries": ["lB4lkKB4", "EYOkQ1jM", "D3cym8xI"], "basePolicyName": "fkOVW2gr", "description": "REOLx0KO", "namespace": "ww3HICQL", "tags": ["fl7MUBG7", "tURKLRkb", "qtPu64yA"], "typeId": "738HGS6r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'DgMdIIlh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'S1fSiM93' \
    --body '{"affectedClientIds": ["ecnEevcA", "sKc50Kv6", "31m7Ta1P"], "affectedCountries": ["x2K2zkRe", "nmPZnGBt", "4P7WnbdS"], "basePolicyName": "JtjX7Zsh", "description": "ZyZl5x4b", "namespace": "RXBHUTrD", "tags": ["zZSKscfO", "OYqUiGKX", "cYu3dpCR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'VFCmpo6s' \
    'PwVOEDSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'sEK5QpNh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'lI2iS5Ep' \
    --body '{"contentType": "GhhvXYck", "description": "0upMzUYn", "localeCode": "b76tFkEO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'RV3bu1bN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'CtX7W40V' \
    --body '{"attachmentChecksum": "6Do5sYad", "attachmentLocation": "CCFrHHC3", "attachmentVersionIdentifier": "DpZxkrQD", "contentType": "XuNFviMa", "description": "rv8mnfHK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    '8CCmE2lP' \
    --body '{"contentMD5": "nsbD3SGE", "contentType": "dlwuUccE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    '536ugBp3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'HBvepnDC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreements1' test.out

#- 17 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'jgyJlXe3' \
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
    --body '{"affectedClientIds": ["6mgWjLfF", "mteue9nz", "J6fH24T8"], "affectedCountries": ["05tVg8Jq", "ugAOS7u8", "U0jZpjvs"], "basePolicyName": "RiWyerCS", "description": "a8SRgwsA", "tags": ["aDXTvKCW", "wNTAhd2w", "j1ik1jgl"], "typeId": "rS0uPdjh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'CreatePolicy1' test.out

#- 20 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'dinpng5B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'RetrieveSinglePolicy1' test.out

#- 21 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'Ly8wbhMs' \
    --body '{"affectedClientIds": ["Y9Rf4wP5", "7dBZNR88", "sAHjapIk"], "affectedCountries": ["YbCtmKy8", "XZnqAQUo", "M9zVrjfG"], "basePolicyName": "Y1GjlIIk", "description": "0iKoTTS1", "tags": ["j02o7JjT", "XAQN0qds", "kdQV0TqI"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PartialUpdatePolicy1' test.out

#- 22 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    '8EFnmDbx' \
    'Ixi4YKlO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'RetrievePolicyCountry1' test.out

#- 23 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'Nk2Q5Y4J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveLocalizedPolicyVersions1' test.out

#- 24 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'vaizwiil' \
    --body '{"contentType": "atuUjjt9", "description": "lIMGql5E", "localeCode": "lEa9EIIl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreateLocalizedPolicyVersion1' test.out

#- 25 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'GcHB3CfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 26 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    '3ncDlwi3' \
    --body '{"attachmentChecksum": "v3MFFJ1K", "attachmentLocation": "esKoELCp", "attachmentVersionIdentifier": "obBEG8X6", "contentType": "45xpdXpa", "description": "i0rYaT5h"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateLocalizedPolicyVersion1' test.out

#- 27 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'OPjaf3H0' \
    --body '{"contentMD5": "tYighU0V", "contentType": "UfcYHJbB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RequestPresignedURL1' test.out

#- 28 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'fAKSiPW3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'SetDefaultPolicy1' test.out

#- 29 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'VgsZXiR1' \
    --body '{"description": "DJ7HVWqM", "displayVersion": "kNSawQUW", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdatePolicyVersion1' test.out

#- 30 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'plCSVq8P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublishPolicyVersion1' test.out

#- 31 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'dH6hJPUA' \
    --body '{"description": "c0RVwXgA", "isDefaultOpted": false, "isMandatory": false, "policyName": "ntLMCuaX", "readableId": "BWQi6BqP", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdatePolicy1' test.out

#- 32 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    '1l2Xcrci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'SetDefaultPolicy3' test.out

#- 33 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'YNEzvSZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'RetrieveSinglePolicyVersion1' test.out

#- 34 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'PkhSgORc' \
    --body '{"description": "z5S5Bvmg", "displayVersion": "BLxh4ijF", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'CreatePolicyVersion1' test.out

#- 35 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'RetrieveAllPolicyTypes1' test.out

#- 36 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'ytZQ7M6N' \
    'zy1adnSK' \
    'OLFKx1dX' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RSse6AAz", "policyId": "3S4czz0Q", "policyVersionId": "KFlAVmVL"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4AOec0z8", "policyId": "eBeeoip6", "policyVersionId": "8J1nsv4W"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JhtafxMS", "policyId": "JlHeb34s", "policyVersionId": "ZKHcl5LL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'IndirectBulkAcceptVersionedPolicy' test.out

#- 37 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'LOexL4fZ' \
    'vWtND2tc' \
    'BFpX8lNt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'AdminRetrieveEligibilities' test.out

#- 38 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'FEJ7tnkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrievePolicies' test.out

#- 39 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '6Mca5afj' \
    --body '{"description": "12K2IzrB", "displayVersion": "vvWm4udE", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdatePolicyVersion' test.out

#- 40 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'OXudXgNn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublishPolicyVersion' test.out

#- 41 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'e8kJATwl' \
    --body '{"description": "c6esUp6S", "isDefaultOpted": true, "isMandatory": true, "policyName": "1I98jeZQ", "readableId": "7hfxnhLd", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy' test.out

#- 42 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    '8SWP3glU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy2' test.out

#- 43 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '6muswVJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion' test.out

#- 44 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'NnN7kAa7' \
    --body '{"description": "j0riFc5H", "displayVersion": "THQIoVsG", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion' test.out

#- 45 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '40' \
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
    '7dwV9DBq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'AnonymizeUserAgreement' test.out

#- 50 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QkETJyTl", "policyId": "UrwDTnou", "policyVersionId": "jQD4IEiH"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qXn3aoRt", "policyId": "lqOECohV", "policyVersionId": "iHA5CzgF"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pZaHCuES", "policyId": "OiIZsMfB", "policyVersionId": "4ZH3mtgW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'ChangePreferenceConsent1' test.out

#- 51 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'gU4pCAKx' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "M9XsYIIZ", "policyId": "xiXNMR9B", "policyVersionId": "gaWcFX3S"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hyoTsMWP", "policyId": "AxUMkawa", "policyVersionId": "GpAyrIwM"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qwgK1Np5", "policyId": "nodqpLm7", "policyVersionId": "FhJBNXzA"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'BulkAcceptVersionedPolicy' test.out

#- 54 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'FdO0Khqf' \
    '6kiTdSGv' \
    '2LFjAKY7' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bgsWqFWZ", "policyId": "X7kPBom8", "policyVersionId": "F9GLLTG8"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hc3n4iLo", "policyId": "IllKlpO2", "policyVersionId": "pqiXJF3W"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oQomSJC4", "policyId": "DdrKF7SU", "policyVersionId": "QPLG59e0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 55 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'k5ZtX6wK' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MK6MbGIV", "policyId": "Iu8vvwLc", "policyVersionId": "7KY3uVoJ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tpgkieDy", "policyId": "F97lGdMi", "policyVersionId": "HKxbWCYz"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "1pyVwyKQ", "policyId": "LY6FEO65", "policyVersionId": "Rb3z7CYL"}]' \
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
    'M8IlsHqf' \
    'fnrfsGlf' \
    'PaZKBwa3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublicIndirect' test.out

#- 58 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'Ddb60ufP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'pzwj1QGI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 60 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'FmlVf4jv' \
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
    'apseE9LN' \
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
