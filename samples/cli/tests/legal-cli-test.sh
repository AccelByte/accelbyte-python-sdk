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
legal-create-policy --body '{"affectedClientIds": ["vdiRilZ7oFgx4c8O", "umKtPDKJDXn7Z4U6", "jJW2OQNOs1PXhT5F"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "namespace": "jUmiTqpyhPFdxLzF", "tags": ["evkLGMS0lyuI9a2I", "ljv7IPrDQQRgat0S", "QN05MYzYiKWe5dNR"], "typeId": "9u6Vpbsx5w8hqUI0"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy '6UpOXGSLmCVuHOPl' --login_with_auth "Bearer foo"
legal-partial-update-policy 'LlkvR8sKgnuRkggh' --body '{"affectedClientIds": ["kahFjkQsfCaTmt1d", "67FXGk2s9Q0mPVo3", "GoYupD391C2qtPYo"], "affectedCountries": ["twu0MesTCf9x4rt6", "9lna7qxNeIxPz6Mb", "wL6IY69z1UaLqYSY"], "basePolicyName": "WytLPziZMdjxcBZu", "description": "fQxGiHPllG4cYEzf", "namespace": "TD1ZBm3MqHcUmLZZ", "tags": ["HYzUOcEdscKHPEqg", "bSqb8RwNmn9HrNQy", "4uZAAiE0mit9RGCC"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'A8yu7Vk6Jt4Ymos9' 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'JMdalwSyliWMNW5N' --body '{"contentType": "yLu0M3VHh2EI8JlD", "description": "bPWbQ6Q9lNmqRBaA", "localeCode": "kLnvxkT1X68cmDc3"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'fxU8MyKrQpM4hkkK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version '6KKXNB3Gv0IqmF51' --body '{"attachmentChecksum": "TkhjYnaq6foWvXa3", "attachmentLocation": "bMrXsDr6kILsSSyD", "attachmentVersionIdentifier": "dmykmoPYgc2L4jk4", "contentType": "Lo0LSP0pf4IxjUkl", "description": "535X3ateEKDpADz1"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'x3poD3Qgb3boLQQ1' --body '{"contentMD5": "MzH7Qm8bwbmXgdAP", "contentType": "h1EThG96gAFKK2WD"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["ENjEEztx1WsYSiZq", "KKTlmVr9XuoJbRFQ", "SKVPHbn4Xxtu7LQR"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'an0nSBJroav91GXl' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["yEW4ZJJ42d3PBddN", "x9Zw5D2L7vIYhGGS", "8S48l9lyNApflxqM"], "affectedCountries": ["rj3oZk03QXcKMDYD", "DxHSZjtqXyJ58f7G", "c26SaiGVkydwYWQG"], "basePolicyName": "26yUZNmTBcvrbYCw", "description": "ZtxFHyPLtI8ilbyD", "tags": ["PUIj88cekdqCt81P", "1ktfIovmv9gsR5cJ", "cHm3SZLxoRDFuuuy"], "typeId": "Sj29a9LJE8HoRS1X"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 '2PFAAMwzHPxB1Usk' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'Ys4Yw20DOqOBSC2D' --body '{"affectedClientIds": ["UBJCjfcnLRfxeCSz", "9WEi8KlloeH0JT1y", "KHRuPMMWH8Yb33T5"], "affectedCountries": ["IYt4SqYUTLDx9gIi", "duat2vQR3biBfsu4", "jmsRE2w1yEkLgh3t"], "basePolicyName": "DandpGT2t24aOMh5", "description": "eC3IHeHSKLCa3xre", "tags": ["DJgas4b6z3LNUj7f", "dgLA84Z8YYk6QEgJ", "NDUWehwH3q31A806"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'jBbEDoNf3n0hEoRC' 'Acf80zfFyabWAgIU' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'XiI07A68eaqC2J9j' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'yEW6GLbc0NaKDUL3' --body '{"contentType": "sa13lk1dQBHO86Il", "description": "BhnetU4RwTqUXlTD", "localeCode": "BzOuYsaZA2yyd4mb"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'qoOfADMMAXFaY9eK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'a699bRVhyaKwwrAP' --body '{"attachmentChecksum": "2aMlu7WtjCtoYetO", "attachmentLocation": "O847g8OudOfjnCuH", "attachmentVersionIdentifier": "Z3c46IjGa23YvYmm", "contentType": "Dg7VYPXIuvUYTZBR", "description": "ujIUE1Tq5jyAZvkR"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'CMNFIurjh2imdb4r' --body '{"contentMD5": "bkXj0ZwsVC0gL97Z", "contentType": "VJSPqJiwv1qlYB1R"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'SKs6gQxC3Gb7S0o4' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'zGYY7KQI1AeFgPqa' --body '{"description": "Okvo1aolB4lkKB4E", "displayVersion": "YOkQ1jMD3cym8xIf", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'n0jJLHC9LxhvNXTw' --login_with_auth "Bearer foo"
legal-update-policy-1 'GBCtohLtl9Zuhytm' --body '{"description": "5UDrT6QXCs5SPBbR", "isDefaultOpted": false, "isMandatory": true, "policyName": "QAXVG7tnsZg5QgXj", "readableId": "vyGJPN4eXbJE5Vs2", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'cyomQoIXimBJehyx' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'lNsjUgxBkF6wFPoJ' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'eQediogEhhM2rIiz' --body '{"description": "GdKvOPdq5xrgxSmy", "displayVersion": "1DN9LFkYW5DQyj4b", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '64' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy '5Ro2ogaKt2ujQSa3' 'Zdb65UXmy0Zp6iIa' 'TIKUkmkk9QM0NBMA' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kEORV3bu1bNCtX7W", "policyId": "40V6Do5sYadCCFrH", "policyVersionId": "HC3DpZxkrQDXuNFv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Marv8mnfHK8CCmE2", "policyId": "lPnsbD3SGEdlwuUc", "policyVersionId": "cE536ugBp3HBvepn"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CjgyJlXe36mgWjLf", "policyId": "Fmteue9nzJ6fH24T", "policyVersionId": "805tVg8JqU0jZpjv"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'sugAOS7u8RiWyerC' 'Sa8SRgwsAj1ik1jg' 'laDXTvKCWwNTAhd2' --login_with_auth "Bearer foo"
legal-retrieve-policies 'wrS0uPdjhdinpng5' --login_with_auth "Bearer foo"
legal-update-policy-version 'BLy8wbhMssAHjapI' --body '{"description": "kY9Rf4wP57dBZNR8", "displayVersion": "8YbCtmKy8M9zVrjf", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'ZnqAQUoY1GjlIIk0' --login_with_auth "Bearer foo"
legal-update-policy 'iKoTTS1j02o7JjTX' --body '{"description": "AQN0qdskdQV0TqI8", "isDefaultOpted": true, "isMandatory": false, "policyName": "FnmDbxIxi4YKlONk", "readableId": "2Q5Y4Jvaizwiilat", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 '18lOC3mNqF7Bl0Lc' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'ghVHfPEspxwhRON0' --login_with_auth "Bearer foo"
legal-create-policy-version 'bc1eMbEIjowLqc3e' --body '{"description": "cjXJbZDKKoxLE1Y3", "displayVersion": "Dymtj3giPg4x4yiP", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '11' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'ues1Hhhkg1yLVbLF' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EP8cM4NTwr0KHaAs", "policyId": "mTej52WKi6tArAUR", "policyVersionId": "t9plCSVq8PdH6hJP"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "c0RVwXgAgntLMCua", "policyId": "XBWQi6BqPg4xr0lC", "policyVersionId": "ancUZGCHsZYoLfR1"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "z5S5BvmgBLxh4ijF", "policyId": "nE3Tam69qSZ7PC6f", "policyVersionId": "6QkmZXElW9YfRSse"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '6AAz3S4czz0QKFlA' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "G6XqP6oo7G73zdxT", "policyId": "gOfnwIdlNa29fDLh", "policyVersionId": "741IslKHzGlLKWUt"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qs61OQAoxyyQpRWC", "policyId": "iiPDGQhNPEwiJCf2", "policyVersionId": "XJVrlzqQls1ozhLV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kE8jKvgatOEBM70T", "policyId": "dlNBJYOmpu1VCarz", "policyVersionId": "BsV6xnZ5Jrzzjrca"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'ug6CWVG8SWP3glU6' 'muswVJnNnN7kAa7j' '0riFc5HTHQIoVsGo' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 '7dwV9DBqFKHQkETJ' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'yTlUrwDTnoujQD4I' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'EiH9Z5qXn3aoRtlq' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'OECohViHA5CzgFSy' --login_with_auth "Bearer foo"
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
    '8X1A3PrIfapq5AAe' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3mDWORBVXTIIJM9X", "policyId": "sYIIZxiXNMR9BgaW", "policyVersionId": "cFX3SUBhyoTsMWPA"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "UMkawaGpAyrIwMif", "policyId": "3BOdkocVTd4BxqGW", "policyVersionId": "V6mTJ0sQs6XNbjvq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nUVLWu8olKdxL6oz", "policyId": "RmDD0jJvlfV5OemP", "policyVersionId": "YdYT7DROCjtuzFMb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'AG9YI89hmguB8FOT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'jMLo4b9rIzqYkEps' \
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
    --body '{"affectedClientIds": ["8vvwLc7KY3uVoJXT", "tyVTBcrM8rG0rH0z", "cswwVeMK6MbGIVIu"], "affectedCountries": ["IMtpgkieDyF97lGd", "MiHKxbWCYzo8yO2K", "TK9tmmOnYnOpas6g"], "basePolicyName": "hP1y4Zi7s7QBlk44", "description": "Z44B1GZgKg4uKxaC", "namespace": "gcGLuC3brWdTYCfH", "tags": ["rGysryod3dNQrmsA", "kIySok5DiXZtLW87", "pRA6HX3RwrKt2eco"], "typeId": "zL0TOg54vCE48L5o"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'LF6M4lNa4JUMSHNg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'qRqCV7usamANkZlO' \
    --body '{"affectedClientIds": ["wfLM9uSybRzWek2g", "ZvRrvr0n9d9lvccK", "X9Sfo95HgXqKhTPk"], "affectedCountries": ["MLhrTrcBE2ItBS3K", "tKZWe8aoFzAyBME7", "4HUtipUWYhWV1qx8"], "basePolicyName": "CzPML52faXUr9Sk4", "description": "lq2faBcAXXKlhvyH", "namespace": "8paOJtxqMPpcVfRw", "tags": ["Nj547fH0XrKEDpEY", "8VnocGAjci0V3tBf", "2jnHGKXphn50c9tN"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'LDljhZ2jxLRX3z46' \
    'OCaGBeMfPlNos4yB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'RjrERHEonAZR8GmE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'u0q1p6QCyY6vSkVF' \
    --body '{"contentType": "WdsbYuVEGVxYheR3", "description": "j5mNZ6vwv7K8Asvt", "localeCode": "1j1Rx59hesNWy2Nv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'Z85DDKDAF8KDsBZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'uYQJ03BAHZ7c53q7' \
    --body '{"attachmentChecksum": "akMpcmnnx6RVBrop", "attachmentLocation": "9v7aZK3h65hbN15z", "attachmentVersionIdentifier": "fQSfQrtfF3TQN0Oc", "contentType": "NDLr36vzohZyjMQA", "description": "g5mPYhrLTyU8Ohgf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'Y9JQYGF4bYXEcENx' \
    --body '{"contentMD5": "9xZlAchob44lONDD", "contentType": "wMvgI0HlyPR7wZNi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'VsF6xG2mXEQdbzIV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": true, "userIds": ["7SETWjteoc8fgvZD", "aDhukU4khGG4vZFT", "YnPkmSu4PWam1jxR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'DhoO05oKqymxLD1L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'cvw6T6mZEiwxxElp' \
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
    --body '{"affectedClientIds": ["ZONJREdUQ3z9F1Bx", "MYSWIeVzm7z9noow", "mlTIKVowi0RY2VN4"], "affectedCountries": ["zYEvwSWTaLQjctvr", "TmXfJWBPrx9Ns8eL", "NNgnke4akncw7wu9"], "basePolicyName": "K2jhsYpKPlXn77At", "description": "YoFzLAATPY8P8P3c", "tags": ["foivvQxevecWw7Rr", "y0KK5rgAGO0dW8rX", "2MVUGKSZ4GcLkt4p"], "typeId": "K32sJxlZcCTpTdRt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'CHvuk6B6XTmSLyn5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    '0sigBVZxiKdV57Gv' \
    --body '{"affectedClientIds": ["Ryd9UuL02Le8HSCs", "Nz81GRazPAANjfBo", "lsDd4M1F5qRIblS7"], "affectedCountries": ["ldFOyqA2clJ5gEOa", "BFUjOn5mM7k8nbLz", "CgM6Yn6RugbNEIpG"], "basePolicyName": "vtCIW5ynMKquUicA", "description": "eIVXtoWAXhMlW4tL", "tags": ["k0jS6rDWUwfhKvrf", "FmYel0kOw72o8Zkg", "qX7OICf5oD1e6oI9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    '2AaH4yCWrHSppnIZ' \
    'kNnTn3rzH5NvAtcv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'NedgS1fUfKmihDbm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'u8ePWlQMVDXEHeiG' \
    --body '{"contentType": "TnwyEw6hIWDZrpP7", "description": "rz3ISW510kHr4isT", "localeCode": "KWjmv67nuHCXWfwn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'wGioVwVzmmBVVFfp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'qx1AeLtzcPJ3jtDY' \
    --body '{"attachmentChecksum": "Bo4FUTH7CGfKSyxg", "attachmentLocation": "RR1DiCqSMzpqIFGL", "attachmentVersionIdentifier": "kDs7ACC1RgBfoNrH", "contentType": "lFi2qJLgmBLE35Yh", "description": "yiDV90SeI5yppBHo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'ytVznCgNyx9fbT63' \
    --body '{"contentMD5": "ShEh8PbGikLjgjcj", "contentType": "34uulU6FYBZsWFbr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '3RSP0W9nBhvhf8Q0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'DtJMcYQdN66bswAg' \
    --body '{"description": "t65X4N1LQZmB61JM", "displayVersion": "dtwCVUrYQue84dwm", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'XNwvm4e5GX6H742O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'ixhtAoKiVm6URT95' \
    --body '{"description": "XhnUcvWB28Mpusuh", "isDefaultOpted": false, "isMandatory": false, "policyName": "DJ5slzgiWZEtyd56", "readableId": "LfxnbY97jjYgXchC", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'C7eGL5YhJDWh9YWq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'c0qgV6d9yOfIMLds' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    '2DbPcaoMdtRLTmSv' \
    --body '{"description": "TkQQgB7exYvmHMxr", "displayVersion": "5hPCJJztJBg0tTJg", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '52' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'IewOXE2AkCh3QIZs' \
    'Uf8lGFXcmwTERHcl' \
    'OdxIwqejxe18rNdb' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "EZhpByfHZinxNfgP", "policyId": "AwkMBsznlBUqnLT4", "policyVersionId": "AbGptKaWNvPbpg7y"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RvXfZ6rvgvEY3Hht", "policyId": "1SwqTsKKKo37NHDO", "policyVersionId": "Qe91Ps3ztUIV0dS6"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IH9c4VfkyrwpuXxb", "policyId": "aERbfgPmi0eHkt1m", "policyVersionId": "r9EOIFg0dnWIYN2N"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'VL70Iw157g00jr9b' \
    '8MuYmmeKTmBNvGYx' \
    'EQdf3ewoGGoY7xmF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'NAmjDDCvs78mcMdi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'S76YApGJ9ufwLYkq' \
    --body '{"description": "IgLuZS6hsQryiEtO", "displayVersion": "AbpeUNf26UqkCfgC", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'YBn2xaOBdPF0JmX8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'qwU1cTuHHPB5S3Dv' \
    --body '{"description": "PRCzBrVUxmDOj3cv", "isDefaultOpted": true, "isMandatory": false, "policyName": "xahld1pO0Gyf5PO3", "readableId": "COyMvczgEpzZ3Fbt", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'r9TsvcMQ7dBsaIec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'RxIsZvD6rmzVr5XT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    '1Nxw0v1dMQ9Rrbk6' \
    --body '{"description": "C2cVWf6ttvbU1PO6", "displayVersion": "ApCD2VXidT7w0Oc1", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '80' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'RetrieveAllPolicyTypes' test.out

#- 47 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetUserInfoStatus' test.out

#- 48 SyncUserInfo
eval_tap 0 48 'SyncUserInfo # SKIP deprecated' test.out

#- 49 InvalidateUserInfoCache
eval_tap 0 49 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 50 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'dp3IhtCSHy1ei1fI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PvfHnRN06EjRwEQl", "policyId": "NapJRfk4f9Zcw1pE", "policyVersionId": "HAyNFxcVTKuAQTGh"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "D9IPmmsLmu3kaPj0", "policyId": "O4zd8Tb7cUNGPTBx", "policyVersionId": "iFFCrn7djjs69FTF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vGoav7MK0PcLnEkc", "policyId": "okKwcQ0baDT9OyJ2", "policyVersionId": "h23GUS2amU7syGlE"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'lXdEAOrVSnLocLVV' \
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
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3rH34mB2yPlRpWjm", "policyId": "HZAAvKTH8MuqIg0C", "policyVersionId": "zkguwuJCW7EEFB67"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ODbi9BzupBsFpYc7", "policyId": "7GtRUcCFeY5g4XgB", "policyVersionId": "sbfzqxBPNe8ae1Il"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nQLYXxm09wpGAbpE", "policyId": "mDY9vLh3u6EDsUmr", "policyVersionId": "V6kH4OotKwG3UC6X"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 56 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 57 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'RetrieveEligibilitiesPublic' test.out

#- 58 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'CnnZxF8CmQr17W65' \
    'br34rBBN9tU6TDm5' \
    'GloFSKWM1eym5ydC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    '6p25xCWTqUOYZENJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    '1QHZQxPRXH7uxBJE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'ECQE1li3Bg7Jxc9p' \
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
    'UnZmvhidwCkZwqjY' \
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
