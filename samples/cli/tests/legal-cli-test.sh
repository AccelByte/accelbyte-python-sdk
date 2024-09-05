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
legal-retrieve-accepted-agreements 'bPOyNQkT7NvyE3cw' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'yALczNIicXm7agSr' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["umKtPDKJDXn7Z4U6", "vdiRilZ7oFgx4c8O", "jJW2OQNOs1PXhT5F"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "isHidden": false, "isHiddenPublic": false, "namespace": "UmiTqpyhPFdxLzFQ", "tags": ["vkLGMS0lyuI9a2I9", "jv7IPrDQQRgat0Se", "N05MYzYiKWe5dNRl"], "typeId": "u6Vpbsx5w8hqUI06"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'UpOXGSLmCVuHOPlL' --login_with_auth "Bearer foo"
legal-partial-update-policy 'lkvR8sKgnuRkgghG' --body '{"affectedClientIds": ["oYupD391C2qtPYok", "ahFjkQsfCaTmt1d6", "7FXGk2s9Q0mPVo3t"], "affectedCountries": ["wu0MesTCf9x4rt69", "lna7qxNeIxPz6Mbw", "L6IY69z1UaLqYSYW"], "basePolicyName": "ytLPziZMdjxcBZuf", "description": "QxGiHPllG4cYEzfT", "isHidden": true, "isHiddenPublic": true, "namespace": "ZBm3MqHcUmLZZbSq", "tags": ["AAiE0mit9RGCCHYz", "UOcEdscKHPEqgA8y", "b8RwNmn9HrNQy4uZ"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'u7Vk6Jt4Ymos9Jcd' 'os4fYcTVU6RBt0zY' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'oMcHyCUEXlAvxJMd' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'alwSyliWMNW5NyLu' --body '{"contentType": "0M3VHh2EI8JlDbPW", "description": "bQ6Q9lNmqRBaAkLn", "localeCode": "vxkT1X68cmDc3fxU"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '8MyKrQpM4hkkK6KK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'XNB3Gv0IqmF51Tkh' --body '{"attachmentChecksum": "jYnaq6foWvXa3bMr", "attachmentLocation": "XsDr6kILsSSyDdmy", "attachmentVersionIdentifier": "kmoPYgc2L4jk4Lo0", "contentType": "LSP0pf4IxjUkl535", "description": "X3ateEKDpADz1x3p"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'oD3Qgb3boLQQ1MzH' --body '{"contentMD5": "7Qm8bwbmXgdAPh1E", "contentType": "ThG96gAFKK2WDgCc"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'xvONZm3EeERmDnye' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["oF7VSZ6pf3vneSD2", "qU6YE3p4lSck0ZHn", "Tb3g7mSQUhAEtrmj"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 '5GI39YBHqaTHeKtW' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 '18iGeUlc9d9sogWa' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv '24CKNS0GqVvUfHQv' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'sHXNUNe4mhgo5QB6' '5lSAiYnNjkfZrQvG' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["OMlNFSrUEirnjX9f", "DmIbeZxzfTcyiuAT", "gbLdLsFzHkBMr1yr"], "affectedCountries": ["LXpUL4pp2ncYAHdN", "us9hsfpFDcSDG8aM", "VGLiBNrDjqoxcwgG"], "basePolicyName": "zDmeIP6rOvDz9KOs", "description": "b392k6YmJFfRByjl", "isHidden": true, "isHiddenPublic": false, "tags": ["iuFM3FIoVk8T3GpA", "9y1aZSWMiVi10sG6", "nkCmBUqg2SCnqntX"], "typeId": "vxkfUcmqRRbceJ5i"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 '0EeDxOgBnhhqElIa' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'Dml48wdNFLTm5T50' --body '{"affectedClientIds": ["sXzOXQAk4mqrxzTt", "uLl4XlbGL8QOxtjz", "x9WT0GfH2rtOa4EX"], "affectedCountries": ["m8y2wNhmwoYZyI4E", "mx40NLRc6m8heKnW", "FZKBcYrCEAE7WIsf"], "basePolicyName": "hzfe2NubeoKFeIaF", "description": "QCYoDPICpnduEEQl", "isHidden": false, "isHiddenPublic": false, "tags": ["FyabWAgIUXiI07A6", "f3n0hEoRCAcf80zf", "8eaqC2J9jyEW6GLb"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'c0NaKDUL3sa13lk1' 'dQBHO86IlBhnetU4' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'RwTqUXlTDBzOuYsa' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'ZA2yyd4mbqoOfADM' --body '{"contentType": "MAXFaY9eKa699bRV", "description": "hyaKwwrAP2aMlu7W", "localeCode": "tjCtoYetOO847g8O"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'udOfjnCuHZ3c46Ij' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'Ga23YvYmmDg7VYPX' --body '{"attachmentChecksum": "IuvUYTZBRujIUE1T", "attachmentLocation": "q5jyAZvkRCMNFIur", "attachmentVersionIdentifier": "jh2imdb4rbkXj0Zw", "contentType": "sVC0gL97ZVJSPqJi", "description": "wv1qlYB1RSKs6gQx"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'C3Gb7S0o4zGYY7KQ' --body '{"contentMD5": "I1AeFgPqaOkvo1ao", "contentType": "lB4lkKB4EYOkQ1jM"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'D3cym8xIfkOVW2gr' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'REOLx0KOww3HICQL' --body '{"description": "fl7MUBG7qtPu64yA", "displayVersion": "tURKLRkb738HGS6r", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'AXVG7tnsZg5QgXjv' --login_with_auth "Bearer foo"
legal-update-policy-1 'yGJPN4eXbJE5Vs2G' --body '{"description": "cyomQoIXimBJehyx", "isDefaultOpted": false, "isMandatory": false, "policyName": "NsjUgxBkF6wFPoJe", "readableId": "QediogEhhM2rIizG", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'BHUTrDzZSKscfOcY' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'u3dpCROYqUiGKXVF' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'Cmpo6sPwVOEDSJsE' --body '{"description": "K5QpNhlI2iS5EpGh", "displayVersion": "hvXYck0upMzUYnb7", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '88' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'FkEORV3bu1bNCtX7' 'W40V6Do5sYadCCFr' 'HHC3DpZxkrQDXuNF' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "cqsuGKHhMRWLVd3D", "policyId": "lhLuIpomM8sm1Mia", "policyVersionId": "I1mX2tJoARtdbBe7"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dsMrok0WvGYYnx4V", "policyId": "709xbnGezKsDwG2o", "policyVersionId": "mOR2nvYI9TVqJdvz"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WbfUpaXp5JMl5LL4", "policyId": "bTxBmZjdrrIxsB0N", "policyVersionId": "RsB1fPqqRRulpqpy"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'mDkQhtrHWwRVnwVB' 'OqOHi8pWGd1juYhi' 'qjRJOqB5F93zFQbJ' --login_with_auth "Bearer foo"
legal-retrieve-policies 'ndUDpdONneAczbBd' --login_with_auth "Bearer foo"
legal-update-policy-version 'Hb2slt71B1SmZp2J' --body '{"description": "Zp50CnPb71ORYcmQ", "displayVersion": "bTU5JX8ccLjMXJRk", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'EFnmDbxIxi4YKlON' --login_with_auth "Bearer foo"
legal-update-policy 'k2Q5Y4Jvaizwiila' --body '{"description": "tuUjjt9lIMGql5El", "isDefaultOpted": true, "isMandatory": false, "policyName": "a9EIIlGcHB3CfR3n", "readableId": "cDlwi3v3MFFJ1Kes", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'oELCpobBEG8X645x' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'pdXpai0rYaT5hOPj' --login_with_auth "Bearer foo"
legal-create-policy-version 'af3H0tYighU0VUfc' --body '{"description": "YHJbBfAKSiPW3Vgs", "displayVersion": "ZXiR1DJ7HVWqMkNS", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '55' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'wQUWDFJvJBWic7Uk' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PUAc0RVwXgAgntLM", "policyId": "CuaXBWQi6BqPg4xr", "policyVersionId": "0lCancUZGCHsZYoL"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "R1KtOv7Zy0b65uvu", "policyId": "KNuy0ytZQ7M6Nzy1", "policyVersionId": "adnSKOLFKx1dX4Lu"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "e6AAz3S4czz0QKFl", "policyId": "AVmVLu4AOec0z8eB", "policyVersionId": "eeoip68J1nsv4W2O"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'JhtafxMSJlHeb34s' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cl5LLLOexL4fZvWt", "policyId": "ND2tcBFpX8lNtFEJ", "policyVersionId": "7tnkY6Mca5afj12K"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kE8jKvgatOEBM70T", "policyId": "dlNBJYOmpu1VCarz", "policyVersionId": "BsV6xnZ5Jrzzjrca"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "g6CWVG8SWP3glU6m", "policyId": "uswVJnNnN7kAa7j0", "policyVersionId": "riFc5HTHQIoVsGo7"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'dwV9DBqFKHQkETJy' 'TlUrwDTnoujQD4IE' 'iH9Z5qXn3aoRtlqO' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'ECohViHA5CzgFSy8' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'X1A3PrIfapq5AAeM' --login_with_auth "Bearer foo"
legal-retrieve-country-list-with-policies --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'e4L3mDWORBVXTIIJ' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'M9XsYIIZxiXNMR9B' --login_with_auth "Bearer foo"
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
echo "1..67"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'gaWcFX3SUBhyoTsM' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mb8GEXFTlEMEsFzY", "policyId": "qwgK1Np5nodqpLm7", "policyVersionId": "FhJBNXzAFdO0Khqf"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nUVLWu8olKdxL6oz", "policyId": "RmDD0jJvlfV5OemP", "policyVersionId": "YdYT7DROCjtuzFMb"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9YI89hmguB8FOTjM", "policyId": "Lo4b9rIzqYkEpsty", "policyVersionId": "VTBcrM8rG0rH0zcs"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'wwVeMK6MbGIVIu8v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'vwLc7KY3uVoJXTIM' \
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
    --body '{"affectedClientIds": ["9tmmOnYnOpas6ghP", "tpgkieDyF97lGdMi", "HKxbWCYzo8yO2KTK"], "affectedCountries": ["1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc", "GLuC3brWdTYCfHkI"], "basePolicyName": "ySok5DiXZtLW87rG", "description": "ysryod3dNQrmsApR", "isHidden": true, "isHiddenPublic": false, "namespace": "HX3RwrKt2ecozL0T", "tags": ["Og54vCE48L5oLF6M", "4lNa4JUMSHNgqRqC", "V7usamANkZlOX9Sf"], "typeId": "o95HgXqKhTPkwfLM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    '9uSybRzWek2gZvRr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'vr0n9d9lvccKMLhr' \
    --body '{"affectedClientIds": ["TrcBE2ItBS3KtKZW", "ipUWYhWV1qx8CzPM", "e8aoFzAyBME74HUt"], "affectedCountries": ["L52faXUr9Sk4lq2f", "aBcAXXKlhvyH8paO", "JtxqMPpcVfRwNj54"], "basePolicyName": "7fH0XrKEDpEY8Vno", "description": "cGAjci0V3tBf2jnH", "isHidden": true, "isHiddenPublic": true, "namespace": "phn50c9tNLDljhZ2", "tags": ["fPlNos4yBRjrERHE", "jxLRX3z46OCaGBeM", "onAZR8GmEu0q1p6Q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'CyY6vSkVFWdsbYuV' \
    'EGVxYheR3j5mNZ6v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'wv7K8Asvt1j1Rx59' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'hesNWy2NvZ85DDKD' \
    --body '{"contentType": "AF8KDsBZOuYQJ03B", "description": "AHZ7c53q7akMpcmn", "localeCode": "nx6RVBrop9v7aZK3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'h65hbN15zfQSfQrt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'fF3TQN0OcNDLr36v' \
    --body '{"attachmentChecksum": "zohZyjMQAg5mPYhr", "attachmentLocation": "LTyU8OhgfY9JQYGF", "attachmentVersionIdentifier": "4bYXEcENx9xZlAch", "contentType": "ob44lONDDwMvgI0H", "description": "lyPR7wZNiVsF6xG2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'mXEQdbzIVy8alncV' \
    --body '{"contentMD5": "7vWgSHdfo07UctPE", "contentType": "rqxyMyOK06MqQBEr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'xgjVBycvU4PbmRDc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": true, "userIds": ["ZEiwxxElpMYSWIeV", "zm7z9noowmlTIKVo", "KqymxLD1Lcvw6T6m"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'wi0RY2VN4ZONJREd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'UQ3z9F1BxNNgnke4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'akncw7wu9TmXfJWB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'Prx9Ns8eLzYEvwSW' \
    'TaLQjctvrK2jhsYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'InitiateExportAgreementsToCSV' test.out

#- 21 RetrieveAllLegalPoliciesByNamespace
$PYTHON -m $MODULE 'legal-retrieve-all-legal-policies-by-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveAllLegalPoliciesByNamespace' test.out

#- 22 CreatePolicy1
$PYTHON -m $MODULE 'legal-create-policy-1' \
    --body '{"affectedClientIds": ["TPY8P8P3cfoivvQx", "KPlXn77AtYoFzLAA", "evecWw7Rry0KK5rg"], "affectedCountries": ["ZcCTpTdRtCHvuk6B", "Z4GcLkt4pK32sJxl", "AGO0dW8rX2MVUGKS"], "basePolicyName": "6XTmSLyn50sigBVZ", "description": "xiKdV57GvRyd9UuL", "isHidden": false, "isHiddenPublic": true, "tags": ["qRIblS7Nz81GRazP", "AANjfBoldFOyqA2c", "Le8HSCslsDd4M1F5"], "typeId": "lJ5gEOaCgM6Yn6Ru"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'gbNEIpGBFUjOn5mM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    '7k8nbLzvtCIW5ynM' \
    --body '{"affectedClientIds": ["KquUicAeIVXtoWAX", "D1e6oI9FmYel0kOw", "hMlW4tLqX7OICf5o"], "affectedCountries": ["HSppnIZkNnTn3rzH", "72o8Zkgk0jS6rDWU", "wfhKvrf2AaH4yCWr"], "basePolicyName": "5NvAtcvNedgS1fUf", "description": "KmihDbmu8ePWlQMV", "isHidden": true, "isHiddenPublic": false, "tags": ["Hr4isTKWjmv67nuH", "XEHeiGTnwyEw6hIW", "DZrpP7rz3ISW510k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'CXWfwnwGioVwVzmm' \
    'BVVFfpqx1AeLtzcP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'J3jtDYBo4FUTH7CG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'fKSyxgRR1DiCqSMz' \
    --body '{"contentType": "pqIFGLkDs7ACC1Rg", "description": "BfoNrHlFi2qJLgmB", "localeCode": "LE35YhyiDV90SeI5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'yppBHoytVznCgNyx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    '9fbT63ShEh8PbGik' \
    --body '{"attachmentChecksum": "Ljgjcj34uulU6FYB", "attachmentLocation": "ZsWFbr3RSP0W9nBh", "attachmentVersionIdentifier": "vhf8Q0DtJMcYQdN6", "contentType": "6bswAgt65X4N1LQZ", "description": "mB61JMdtwCVUrYQu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'e84dwmbwFEnAZaWs' \
    --body '{"contentMD5": "QJtRYoagRJK5PX9U", "contentType": "cOvhPyE11TRT2SKs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'eoe8VLie0LBa36KN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'zjf005CXNGehQ2aT' \
    --body '{"description": "jTDfKFDXC7eGL5Yh", "displayVersion": "JDWh9YWqc0qgV6d9", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'NjCMDtDMrentgn3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'hqciwIeShF9RKb9v' \
    --body '{"description": "vxuJlhXbWhbwPwTo", "isDefaultOpted": true, "isMandatory": true, "policyName": "6knjVwVnzaqSfJiQ", "readableId": "FC2gXoda0kg16yUS", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'mwTERHclOdxIwqej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'xe18rNdb8Otq6j1m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'qUav7k05HAQltnSo' \
    --body '{"description": "jV4jT65yclX2FtAz", "displayVersion": "0vJjFIYWOaNdsimm", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '100' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'rvgvEY3Hht1SwqTs' \
    'KKKo37NHDOQe91Ps' \
    '3ztUIV0dS6hIH9c4' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VXe0GZeMgsRsmH1E", "policyId": "QrYmkPKTPOlhTtSi", "policyVersionId": "ZNCxuogFteTHJe4B"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "QkQD6WmOt6D7ufFV", "policyId": "TOhvQpfbBke8aEdd", "policyVersionId": "36xj6wySoltDxsbz"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mcMdiS76YApGJ9uf", "policyId": "wLYkqIgLuZS6hsQr", "policyVersionId": "yiEtOAbpeUNf26Uq"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'kCfgCUYBn2xaOBdP' \
    'F0JmX8qwU1cTuHHP' \
    'B5S3DvPRCzBrVUxm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'DOj3cvRFaTC11W0T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'GTCm4fZWuk6pQxDQ' \
    --body '{"description": "pKqxLGeMvr9TsvcM", "displayVersion": "Q7dBsaIecRxIsZvD", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'rmzVr5XT1Nxw0v1d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'MQ9Rrbk6C2cVWf6t' \
    --body '{"description": "tvbU1PO6ApCD2VXi", "isDefaultOpted": false, "isMandatory": false, "policyName": "T7w0Oc15N8WXBPp1", "readableId": "7PAewqSm5x3B4t7W", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    '6EjRwEQlNapJRfk4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'f9Zcw1pEHAyNFxcV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'TKuAQTGh5BxjWOoz' \
    --body '{"description": "GoDtsUuYo5p8ED5Q", "displayVersion": "ZAufwNa8lzfjv9oY", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'RetrieveAllPolicyTypes' test.out

#- 49 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetUserInfoStatus' test.out

#- 50 SyncUserInfo
eval_tap 0 50 'SyncUserInfo # SKIP deprecated' test.out

#- 51 InvalidateUserInfoCache
eval_tap 0 51 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 52 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'MjlVHY1AHwF3vGoa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "7MK0PcLnEkcokKwc", "policyId": "Q0baDT9OyJ2h23GU", "policyVersionId": "S2amU7syGlElXdEA"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PBiWXade41s3rH34", "policyId": "mB2yPlRpWjmHZAAv", "policyVersionId": "KTH8MuqIg0Czkguw"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CW7EEFB67AODbi9B", "policyId": "zupBsFpYc77GtRUc", "policyVersionId": "CFeY5g4XgBsbfzqx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'BPNe8ae1Il4aAtEb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AcceptVersionedPolicy' test.out

#- 55 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAgreementsPublic' test.out

#- 56 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "4IjGdqthRxTjQ7gk", "policyId": "ZEY8rG0q0Q2Qd2Jz", "policyVersionId": "RbkF2I03dIjvBbA6"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CmQr17W65br34rBB", "policyId": "N9tU6TDm5GloFSKW", "policyVersionId": "M1eym5ydC6p25xCW"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "n4Yr2svKM6pqLGZ0", "policyId": "TBujELAUK6mQ5iZg", "policyVersionId": "bwwm5iGzXtcknrgi"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'BulkAcceptVersionedPolicy' test.out

#- 57 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 57 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 58 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 58 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 59 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveEligibilitiesPublic' test.out

#- 60 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'dKupvXO6aj4hCmTC' \
    '34jxW4pIDwdqXpmR' \
    'mut9H9XyWI8bp8fQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'xRuX91uYmtrHJbEG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'TUj7YjERL1rEQG02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 63 RetrieveCountryListWithPolicies
$PYTHON -m $MODULE 'legal-retrieve-country-list-with-policies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'RetrieveCountryListWithPolicies' test.out

#- 64 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'zccA8wvLsWUNd6lP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'RetrieveLatestPolicies' test.out

#- 65 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'RetrieveLatestPoliciesPublic' test.out

#- 66 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'KvqDejvqklTSvDwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 67 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
