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
legal-create-policy --body '{"affectedClientIds": ["vdiRilZ7oFgx4c8O", "jJW2OQNOs1PXhT5F", "umKtPDKJDXn7Z4U6"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "namespace": "jUmiTqpyhPFdxLzF", "tags": ["ljv7IPrDQQRgat0S", "evkLGMS0lyuI9a2I", "QN05MYzYiKWe5dNR"], "typeId": "9u6Vpbsx5w8hqUI0"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy '6UpOXGSLmCVuHOPl' --login_with_auth "Bearer foo"
legal-partial-update-policy 'LlkvR8sKgnuRkggh' --body '{"affectedClientIds": ["kahFjkQsfCaTmt1d", "GoYupD391C2qtPYo", "67FXGk2s9Q0mPVo3"], "affectedCountries": ["twu0MesTCf9x4rt6", "9lna7qxNeIxPz6Mb", "wL6IY69z1UaLqYSY"], "basePolicyName": "WytLPziZMdjxcBZu", "description": "fQxGiHPllG4cYEzf", "namespace": "TD1ZBm3MqHcUmLZZ", "tags": ["HYzUOcEdscKHPEqg", "4uZAAiE0mit9RGCC", "bSqb8RwNmn9HrNQy"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'A8yu7Vk6Jt4Ymos9' 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'JMdalwSyliWMNW5N' --body '{"contentType": "yLu0M3VHh2EI8JlD", "description": "bPWbQ6Q9lNmqRBaA", "localeCode": "kLnvxkT1X68cmDc3"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'fxU8MyKrQpM4hkkK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version '6KKXNB3Gv0IqmF51' --body '{"attachmentChecksum": "TkhjYnaq6foWvXa3", "attachmentLocation": "bMrXsDr6kILsSSyD", "attachmentVersionIdentifier": "dmykmoPYgc2L4jk4", "contentType": "Lo0LSP0pf4IxjUkl", "description": "535X3ateEKDpADz1"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'x3poD3Qgb3boLQQ1' --body '{"contentMD5": "MzH7Qm8bwbmXgdAP", "contentType": "h1EThG96gAFKK2WD"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["KKTlmVr9XuoJbRFQ", "ENjEEztx1WsYSiZq", "SKVPHbn4Xxtu7LQR"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'an0nSBJroav91GXl' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["yEW4ZJJ42d3PBddN", "8S48l9lyNApflxqM", "x9Zw5D2L7vIYhGGS"], "affectedCountries": ["rj3oZk03QXcKMDYD", "c26SaiGVkydwYWQG", "DxHSZjtqXyJ58f7G"], "basePolicyName": "26yUZNmTBcvrbYCw", "description": "ZtxFHyPLtI8ilbyD", "tags": ["1ktfIovmv9gsR5cJ", "cHm3SZLxoRDFuuuy", "PUIj88cekdqCt81P"], "typeId": "Sj29a9LJE8HoRS1X"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 '2PFAAMwzHPxB1Usk' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'Ys4Yw20DOqOBSC2D' --body '{"affectedClientIds": ["UBJCjfcnLRfxeCSz", "9WEi8KlloeH0JT1y", "KHRuPMMWH8Yb33T5"], "affectedCountries": ["jmsRE2w1yEkLgh3t", "IYt4SqYUTLDx9gIi", "duat2vQR3biBfsu4"], "basePolicyName": "DandpGT2t24aOMh5", "description": "eC3IHeHSKLCa3xre", "tags": ["DJgas4b6z3LNUj7f", "NDUWehwH3q31A806", "dgLA84Z8YYk6QEgJ"]}' --login_with_auth "Bearer foo"
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
legal-indirect-bulk-accept-versioned-policy-1 'ug6CWVG8SWP3glU6' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "uswVJnNnN7kAa7j0", "policyId": "riFc5HTHQIoVsGo7", "policyVersionId": "dwV9DBqFKHQkETJy"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rwDTnoujQD4IEiH9", "policyId": "Z5qXn3aoRtlqOECo", "policyVersionId": "hViHA5CzgFSy8X1A"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "rIfapq5AAeMe4L3m", "policyId": "DWORBVXTIIJM9XsY", "policyVersionId": "IIZxiXNMR9BgaWcF"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'X3SUBhyoTsMWPAxU' 'MkawaGpAyrIwMif3' 'BOdkocVTd4BxqGWV' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 '6mTJ0sQs6XNbjvqh' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'nUVLWu8olKdxL6oz' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'RmDD0jJvlfV5OemP' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'YdYT7DROCjtuzFMb' --login_with_auth "Bearer foo"
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
    'AG9YI89hmguB8FOT' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "o4b9rIzqYkEpstyV", "policyId": "TBcrM8rG0rH0zcsw", "policyVersionId": "wVeMK6MbGIVIu8vv"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "c7KY3uVoJXTIMtpg", "policyId": "kieDyF97lGdMiHKx", "policyVersionId": "bWCYzo8yO2KTK9tm"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FEO65Rb3z7CYLM8I", "policyId": "lsHqffnrfsGlfPaZ", "policyVersionId": "KBwa3Ddb60ufPpzw"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'j1QGIFmlVf4jvaps' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'eE9LN9bvhOrHflIO' \
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
    --body '{"affectedClientIds": ["d6X3viLvtEk4mTIp", "mM2W7l6jHMA2rG3n", "UA9gxo8SV38nEhoX"], "affectedCountries": ["akopAywelu01nryE", "J0NqoTow0qiOiC4j", "0iktm0ZPLkLOsp0L"], "basePolicyName": "Z5njN86Hl8kUXzt6", "description": "bSc6bWvgpVyW9dD1", "namespace": "kOmvrAejcq2LgkQu", "tags": ["aS7RBx3vim02jBOx", "rZDyvpcLYOWA8Njx", "OnaEok4nOOCzfsfl"], "typeId": "hjbngJOUn18G5Mlf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'DTk8aG40NlncceIZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'SwgAIkgzh4pTU0Am' \
    --body '{"affectedClientIds": ["4DZhl0bQxFJ3sWCq", "QpQ2FbKPFMycMSQ4", "qfAacR0LgB5BUXvj"], "affectedCountries": ["cu2s6w3VifnKqmTS", "oGH1XEfY6QAYn6WQ", "5UBEU1QAOHfZiGhx"], "basePolicyName": "OdcuDXSxSc3aZPV8", "description": "7pna08gxefTYKhux", "namespace": "aEc7M4P7UckSC6eP", "tags": ["mSEwdrkEnnqKzFsL", "eN8i4GrFES9z7xue", "HpATHccee9GXhKcj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'fYalUlfwEQKjU7eH' \
    'GebSVu0LQ40kepEa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'C4dfiOMZfEhHr39p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'ysFO3Zvc1BZG99Ly' \
    --body '{"contentType": "vfvHEsJKQQewVLMU", "description": "oAnaRcYp7FUjfIGa", "localeCode": "ffoflEIByYqeKN0m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'eGelYF5wWaDhukU4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'khGG4vZFTYnPkmSu' \
    --body '{"attachmentChecksum": "4PWam1jxR7SETWjt", "attachmentLocation": "eoc8fgvZDDhoO05o", "attachmentVersionIdentifier": "KqymxLD1Lcvw6T6m", "contentType": "ZEiwxxElpMYSWIeV", "description": "zm7z9noowmlTIKVo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'wi0RY2VN4ZONJREd' \
    --body '{"contentMD5": "UQ3z9F1BxNNgnke4", "contentType": "akncw7wu9TmXfJWB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'Prx9Ns8eLzYEvwSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["PY8P8P3cfoivvQxe", "aLQjctvrK2jhsYpK", "PlXn77AtYoFzLAAT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'vecWw7Rry0KK5rgA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'GO0dW8rX2MVUGKSZ' \
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
    --body '{"affectedClientIds": ["4GcLkt4pK32sJxlZ", "XTmSLyn50sigBVZx", "cCTpTdRtCHvuk6B6"], "affectedCountries": ["5qRIblS7Nz81GRaz", "iKdV57GvRyd9UuL0", "2Le8HSCslsDd4M1F"], "basePolicyName": "PAANjfBoldFOyqA2", "description": "clJ5gEOaCgM6Yn6R", "tags": ["MKquUicAeIVXtoWA", "M7k8nbLzvtCIW5yn", "ugbNEIpGBFUjOn5m"], "typeId": "XhMlW4tLqX7OICf5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'oD1e6oI9FmYel0kO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'w72o8Zkgk0jS6rDW' \
    --body '{"affectedClientIds": ["H5NvAtcvNedgS1fU", "rHSppnIZkNnTn3rz", "UwfhKvrf2AaH4yCW"], "affectedCountries": ["VDXEHeiGTnwyEw6h", "IWDZrpP7rz3ISW51", "fKmihDbmu8ePWlQM"], "basePolicyName": "0kHr4isTKWjmv67n", "description": "uHCXWfwnwGioVwVz", "tags": ["cPJ3jtDYBo4FUTH7", "mmBVVFfpqx1AeLtz", "CGfKSyxgRR1DiCqS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'MzpqIFGLkDs7ACC1' \
    'RgBfoNrHlFi2qJLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'mBLE35YhyiDV90Se' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'I5yppBHoytVznCgN' \
    --body '{"contentType": "yx9fbT63ShEh8PbG", "description": "ikLjgjcj34uulU6F", "localeCode": "YBZsWFbr3RSP0W9n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'Bhvhf8Q0DtJMcYQd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'N66bswAgt65X4N1L' \
    --body '{"attachmentChecksum": "QZmB61JMdtwCVUrY", "attachmentLocation": "Que84dwmbwFEnAZa", "attachmentVersionIdentifier": "WsQJtRYoagRJK5PX", "contentType": "9UcOvhPyE11TRT2S", "description": "Kseoe8VLie0LBa36"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'KNzjf005CXNGehQ2' \
    --body '{"contentMD5": "aTjTDfKFDXC7eGL5", "contentType": "YhJDWh9YWqc0qgV6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'd9yOfIMLds2DbPca' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'oMdtRLTmSvTkQQgB' \
    --body '{"description": "7exYvmHMxr5hPCJJ", "displayVersion": "ztJBg0tTJg46IewO", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'iQFC2gXoda0kg16y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'USpSOAjHJWwfCjYw' \
    --body '{"description": "WkLob9gKLqs2nEZh", "isDefaultOpted": false, "isMandatory": true, "policyName": "mqUav7k05HAQltnS", "readableId": "ojV4jT65yclX2FtA", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'KaWNvPbpg7yrRvXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'Z6rvgvEY3Hht1Swq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'TsKKKo37NHDOQe91' \
    --body '{"description": "Ps3ztUIV0dS6hIH9", "displayVersion": "c4VfkyrwpuXxbaER", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '68' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'fgPmi0eHkt1mr9EO' \
    'IFg0dnWIYN2NVL70' \
    'Iw157g00jr9b8MuY' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ufFVTOhvQpfbBke8", "policyId": "aEdd36xj6wySoltD", "policyVersionId": "xsbzxrlaKEfkoYjY"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ufwLYkqIgLuZS6hs", "policyId": "QryiEtOAbpeUNf26", "policyVersionId": "UqkCfgCUYBn2xaOB"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "PF0JmX8qwU1cTuHH", "policyId": "PB5S3DvPRCzBrVUx", "policyVersionId": "mDOj3cvRFaTC11W0"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'TGTCm4fZWuk6pQxD' \
    'QpKqxLGeMvr9Tsvc' \
    'MQ7dBsaIecRxIsZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'D6rmzVr5XT1Nxw0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '1dMQ9Rrbk6C2cVWf' \
    --body '{"description": "6ttvbU1PO6ApCD2V", "displayVersion": "XidT7w0Oc15N8WXB", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'p17PAewqSm5x3B4t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    '7WQnp8jXZedgt5cy' \
    --body '{"description": "Ne27HLtwtVOaxgP6", "isDefaultOpted": true, "isMandatory": false, "policyName": "cVTKuAQTGh5BxjWO", "readableId": "ozGoDtsUuYo5p8ED", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'ZAufwNa8lzfjv9oY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'MXMjlVHY1AHwF3vG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'oav7MK0PcLnEkcok' \
    --body '{"description": "KwcQ0baDT9OyJ2h2", "displayVersion": "3GUS2amU7syGlElX", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '74' \
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
    'EAOrVSnLocLVVYam' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mB2yPlRpWjmHZAAv", "policyId": "KTH8MuqIg0Czkguw", "policyVersionId": "uJCW7EEFB67AODbi"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "MGzs7fzjgyc44mEh", "policyId": "9tRk8knYSV30lnro", "policyVersionId": "QehMDli6t9unQLYX"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IjGdqthRxTjQ7gkZ", "policyId": "EY8rG0q0Q2Qd2JzR", "policyVersionId": "bkF2I03dIjvBbA6b"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'fbYaJCJjfk2TUvn9' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "O7VW3mbDVMDu87t0", "policyId": "ldWf7iSGIiKFtWtn", "policyVersionId": "4Yr2svKM6pqLGZ0T"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "uxBJEECQE1li3Bg7", "policyId": "Jxc9pUnZmvhidwCk", "policyVersionId": "ZwqjYLfTiCO1NDBv"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "W4pIDwdqXpmRmut9", "policyId": "H9XyWI8bp8fQxRuX", "policyVersionId": "91uYmtrHJbEGTUj7"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 55 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'YjERL1rEQG02zccA' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "19yVRafCjOuSYht8", "policyId": "3AdvBaagTiRJ8daG", "policyVersionId": "TVX3Bb7jlz5IfHgK"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "mwJSrN8jkIykR2zb", "policyId": "aI6PD7fEscShnGUG", "policyVersionId": "UtV9GJ279GDbLNwj"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "FK0nnX2poMfZ1hDH", "policyId": "tbh4HtMlFgvh2Dp2", "policyVersionId": "SoiIPp1yvfAHS0Vg"}]' \
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
    'Lu11A3HTovFi4tPA' \
    'GfleyCA6jEtcqsnz' \
    'oVILjkwW61duF87a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'Uyrdt4XSpWBAetsa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'nzqP8oxfrtbECD1C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'YPwaiBAxfYL8Avt7' \
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
    '0ZUT2fSk3LL0calq' \
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
