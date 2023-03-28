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
legal-create-policy --body '{"affectedClientIds": ["lFHHdgs2", "1Jub74CU", "kNmKJfh5"], "affectedCountries": ["pUkHODpo", "MF78NY4Y", "kHs1cnz1"], "basePolicyName": "JSDgY1TX", "description": "p38zsCTC", "namespace": "rbCbPOyN", "tags": ["NIicXm7a", "QkT7NvyE", "3cwyALcz"], "typeId": "gSrjJW2O"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'QNOs1PXh' --login_with_auth "Bearer foo"
legal-partial-update-policy 'T5FvdiRi' --body '{"affectedClientIds": ["c8OumKtP", "lZ7oFgx4", "DKJDXn7Z"], "affectedCountries": ["4U68su8X", "fqlqNiTv", "B6SdAdIh"], "basePolicyName": "UDrwoZ5M", "description": "ecdKi5r6", "namespace": "QEa1ysLE", "tags": ["oEAcBdW1", "kzWkFeZS", "zth6mXhz"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country '9m4eu6d5' 'tA5jUmiT' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'qpyhPFdx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'LzFQN05M' --body '{"contentType": "YzYiKWe5", "description": "dNRljv7I", "localeCode": "PrDQQRga"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 't0SevkLG' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'MS0lyuI9' --body '{"attachmentChecksum": "a2I9u6Vp", "attachmentLocation": "bsx5w8hq", "attachmentVersionIdentifier": "UI06UpOX", "contentType": "GSLmCVuH", "description": "OPlLlkvR"}' --login_with_auth "Bearer foo"
legal-request-presigned-url '8sKgnuRk' --body '{"contentMD5": "gghGoYup", "contentType": "D391C2qt"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'PYokahFj' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["8TgoNm03", "VLisV6zw", "mLtjQHAf"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'Puo3td6T' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'C6I3lMjG' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["SWN2laRl", "kUCTqGkE", "xfcjHfYa"], "affectedCountries": ["0yYoNRKd", "pJSqGAXQ", "7wcWfDsl"], "basePolicyName": "3IL5TAQ6", "description": "iiPlSC2u", "tags": ["3fePqIJA", "E4o5Vwdo", "8IHtrkmu"], "typeId": "0hpDDWVA"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'la2l5BYN' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'tIuS5S5X' --body '{"affectedClientIds": ["UdjsoqwG", "QYv7t1o7", "yzzWi9gw"], "affectedCountries": ["Zv15T7qu", "TTr1Dmrh", "IOvBMcaY"], "basePolicyName": "mvCkGZ5d", "description": "AgqxpBFm", "tags": ["ItRMvqtl", "wfNPX2bO", "aLoxozr6"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'B2jJCSQT' '279ZZPYG' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'u0rdlgdW' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'yOtXi3ch' --body '{"contentType": "oQrpOsDB", "description": "U5SepjCh", "localeCode": "B3V0v52D"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'lym6puQ2' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 '3xoJ8aeC' --body '{"attachmentChecksum": "naLpUKp4", "attachmentLocation": "4YUDjasW", "attachmentVersionIdentifier": "IPUvmEej", "contentType": "tGeoyIPa", "description": "8ZRrvjj7"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'il35MXbN' --body '{"contentMD5": "9oCMNqq9", "contentType": "8SjTvhZN"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'kSQ70D0H' --login_with_auth "Bearer foo"
legal-update-policy-version-1 '6BXksUC9' --body '{"description": "b6i5lZC9", "displayVersion": "xv32e8c5", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'Q1MzH7Qm' --login_with_auth "Bearer foo"
legal-update-policy-1 '8bwbmXgd' --body '{"description": "APh1EThG", "isDefaultOpted": false, "isMandatory": true, "policyName": "ZxfgPubT", "readableId": "DIHrvqAT", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'EeERmDny' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'eFoF7VSZ' --login_with_auth "Bearer foo"
legal-create-policy-version-1 '6pf3vneS' --body '{"description": "D2Tb3g7m", "displayVersion": "SQUhAEtr", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '19' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'jqU6YE3p' '4lSck0ZH' 'n5GI39YB' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "GXlvPG6b", "policyId": "FYReVHQi", "policyVersionId": "pcCx9Zw5"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2L7vIYhG", "policyId": "GSyEW4ZJ", "policyVersionId": "J42d3PBd"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "N8S48l9l", "policyId": "yNApflxq", "policyVersionId": "Mrj3oZk0"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities '3QXcKMDY' 'DDxHSZjt' 'qXyJ58f7' --login_with_auth "Bearer foo"
legal-retrieve-policies 'Gc26SaiG' --login_with_auth "Bearer foo"
legal-update-policy-version 'VkydwYWQ' --body '{"description": "G26yUZNm", "displayVersion": "TBcvrbYC", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'G8aMVGLi' --login_with_auth "Bearer foo"
legal-update-policy 'BNrDjqox' --body '{"description": "cwgGLXpU", "isDefaultOpted": false, "isMandatory": false, "policyName": "pp2ncYAH", "readableId": "dNzDmeIP", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'rOvDz9KO' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'sb392k6Y' --login_with_auth "Bearer foo"
legal-create-policy-version 'mJFfRByj' --body '{"description": "lBiuFM3F", "displayVersion": "IoVk8T3G", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '54' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'AnkCmBUq' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CnqntX9y", "policyId": "1aZSWMiV", "policyVersionId": "i10sG6vx"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "H8Yb33T5", "policyId": "UBJCjfcn", "policyVersionId": "LRfxeCSz"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Ei8Klloe", "policyId": "H0JT1ydu", "policyVersionId": "at2vQR3b"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'iBfsu4jm' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "RE2w1yEk", "policyId": "Lgh3tIYt", "policyVersionId": "4SqYUTLD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "8QOxtjzm", "policyId": "8y2wNhmw", "policyVersionId": "oYZyI4EF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "LCa3xreN", "policyId": "DUWehwH3", "policyVersionId": "q31A806D"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'Jgas4b6z' '3LNUj7fd' 'gLA84Z8Y' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QEgJjBbE", "policyId": "DoNf3n0h", "policyVersionId": "EoRCAcf8"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fFyabWAg", "policyId": "IUXiI07A", "policyVersionId": "68eaqC2J"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "yEW6GLbc", "policyId": "0NaKDUL3", "policyVersionId": "sa13lk1d"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'QBHO86Il' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "hnetU4Rw", "policyId": "TqUXlTDB", "policyVersionId": "zOuYsaZA"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "QY3snn2Z", "policyId": "kP7cFdP4", "policyVersionId": "3e5dC9XI"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "bRVhyaKw", "policyId": "wrAP2aMl", "policyVersionId": "u7WtjCto"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'YetOO847' 'g8OudOfj' 'nCuHZ3c4' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 '6IjGa23Y' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'vYmmDg7V' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'YPXIuvUY' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'TZBRujIU' --login_with_auth "Bearer foo"
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
echo "1..64"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'E1Tq5jyA' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kRCMNFIu", "policyId": "rjh2imdb", "policyVersionId": "4rbkXj0Z"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sVC0gL97", "policyId": "ZVJSPqJi", "policyVersionId": "wv1qlYB1"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "XVv8ZGF7", "policyId": "uYnGzpip", "policyVersionId": "NDigNJma"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    '1MbqqZtf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'NWql4nmw' \
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
    --body '{"affectedClientIds": ["Aft4gqkN", "NlWkD9eO", "ziYRFOn0"], "affectedCountries": ["jJLHC9Lx", "hvNXTwGB", "CtohLtl9"], "basePolicyName": "Zuhytm5U", "description": "DrT6QXCs", "namespace": "5SPBbRPZ", "tags": ["QgXjvyGJ", "TF6oQAXV", "G7tnsZg5"], "typeId": "PN4eXbJE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    '5Vs2Gcyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'mQoIXimB' \
    --body '{"affectedClientIds": ["wFPoJeQe", "JehyxlNs", "jUgxBkF6"], "affectedCountries": ["diogEhhM", "2rIizGdK", "vOPdq5xr"], "basePolicyName": "gxSmy1DN", "description": "9LFkYW5D", "namespace": "Qyj4bj5R", "tags": ["o2ogaKt2", "b65UXmy0", "ujQSa3Zd"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'Zp6iIaTI' \
    'KUkmkk9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'M0NBMA9O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'RxpzwLR2' \
    --body '{"contentType": "AK6eXUGP", "description": "Jsw1fiP8", "localeCode": "0G9Pclxc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'ft2ulIJz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'PyrVEiOG' \
    --body '{"attachmentChecksum": "4UcqsuGK", "attachmentLocation": "HhMRWLVd", "attachmentVersionIdentifier": "3DlhLuIp", "contentType": "omM8sm1M", "description": "iaI1mX2t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'JoARtdbB' \
    --body '{"contentMD5": "e7udsMro", "contentType": "k0WvGYYn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'x4V709xb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["g8JqU0jZ", "e9nzJ6fH", "24T805tV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'pjvsugAO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'S7u8RiWy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 RetrieveAllLegalPoliciesByNamespace
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 20 CreatePolicy1
$PYTHON -m $MODULE 'legal-create-policy-1' \
    --body '{"affectedClientIds": ["erCSa8SR", "gwsAj1ik", "1jglaDXT"], "affectedCountries": ["vKCWwNTA", "Pdjhdinp", "hd2wrS0u"], "basePolicyName": "ng5BLy8w", "description": "bhMssAHj", "tags": ["apIkY9Rf", "NR88YbCt", "4wP57dBZ"], "typeId": "mKy8M9zV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'rjfGXZnq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'AQUoY1Gj' \
    --body '{"affectedClientIds": ["7JjTXAQN", "TTS1j02o", "lIIk0iKo"], "affectedCountries": ["mDbxIxi4", "0TqI8EFn", "0qdskdQV"], "basePolicyName": "YKlONk2Q", "description": "5Y4Jvaiz", "tags": ["ql5ElEa9", "wiilatuU", "jjt9lIMG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'EIIlGcHB' \
    '3CfR3ncD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'lwi3v3MF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'FJ1KesKo' \
    --body '{"contentType": "ELCpobBE", "description": "G8X645xp", "localeCode": "dXpai0rY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'aT5hOPja' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'f3H0tYig' \
    --body '{"attachmentChecksum": "hU0VUfcY", "attachmentLocation": "HJbBfAKS", "attachmentVersionIdentifier": "iPW3VgsZ", "contentType": "XiR1DJ7H", "description": "VWqMkNSa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'wQUWDFJv' \
    --body '{"contentMD5": "JBWic7Uk", "contentType": "BeIXuqDu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'AXI66bQ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    '1w0deoV9' \
    --body '{"description": "Lx5RDA1l", "displayVersion": "2XcrciYN", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'ZGCHsZYo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'LfR1KtOv' \
    --body '{"description": "7Zy0b65u", "isDefaultOpted": true, "isMandatory": false, "policyName": "uKNuy0yt", "readableId": "ZQ7M6Nzy", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'C6f6QkmZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'XElW9YfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'Sse6AAz3' \
    --body '{"description": "S4czz0QK", "displayVersion": "FlAVmVLu", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '82' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'oo7G73zd' \
    'xTgOfnwI' \
    'dlNa29fD' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "tafxMSJl", "policyId": "Heb34sZK", "policyVersionId": "Hcl5LLLO"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "xL4fZvWt", "policyId": "ND2tcBFp", "policyVersionId": "X8lNtFEJ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VrlzqQls", "policyId": "1ozhLVA3", "policyVersionId": "kE8jKvga"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'tOEBM70T' \
    'dlNBJYOm' \
    'pu1VCarz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'BsV6xnZ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'Jrzzjrca' \
    --body '{"description": "ug6CWVG8", "displayVersion": "SWP3glU6", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'hLOqQGhC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'Ur6iTrjy' \
    --body '{"description": "EgarAdNJ", "isDefaultOpted": false, "isMandatory": true, "policyName": "I6tRbRcr", "readableId": "EveMdAdi", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'yTlUrwDT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'noujQD4I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'EiH9Z5qX' \
    --body '{"description": "n3aoRtlq", "displayVersion": "OECohViH", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '45' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'SyncUserInfo' test.out

#- 49 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'InvalidateUserInfoCache' test.out

#- 50 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    '5CzgFSy8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CuESOiIZ", "policyId": "sMfB4ZH3", "policyVersionId": "mtgWgU4p"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "TIIJM9Xs", "policyId": "YIIZxiXN", "policyVersionId": "MR9BgaWc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "SUBhyoTs", "policyId": "MWPAxUMk", "policyVersionId": "awaGpAyr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'IwMif3BO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AcceptVersionedPolicy' test.out

#- 53 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'RetrieveAgreementsPublic' test.out

#- 54 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Np5nodqp", "policyId": "Lm7FhJBN", "policyVersionId": "XzAFdO0K"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "qf6kiTdS", "policyId": "Gv2LFjAK", "policyVersionId": "Y7CbgsWq"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "X7kPBom8", "policyId": "F9GLLTG8", "policyVersionId": "phc3n4iL"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'oIllKlpO' \
    '2pqiXJF3' \
    'WGRaoQom' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "qYkEpsty", "policyId": "VTBcrM8r", "policyVersionId": "G0rH0zcs"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7PpUlcIW", "policyId": "32iK7MGt", "policyVersionId": "1ixY5rA1"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "JXTIMtpg", "policyId": "kieDyF97", "policyVersionId": "lGdMiHKx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'bWCYzo8y' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KTK9tmmO", "policyId": "nYnOpas6", "policyVersionId": "ghP1y4Zi"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "sHqffnrf", "policyId": "sGlfPaZK", "policyVersionId": "Bwa3Ddb6"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "GLuC3brW", "policyId": "dTYCfHkI", "policyVersionId": "ySok5DiX"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 57 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'ZtLW87rG' \
    'ysryod3d' \
    'NQrmsApR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'A6HX3Rwr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'Kt2ecozL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    '0TOg54vC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RetrieveLatestPolicies' test.out

#- 62 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RetrieveLatestPoliciesPublic' test.out

#- 63 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'E48L5oLF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 64 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
