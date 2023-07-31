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
legal-create-policy --body '{"affectedClientIds": ["umKtPDKJDXn7Z4U6", "jJW2OQNOs1PXhT5F", "vdiRilZ7oFgx4c8O"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "namespace": "jUmiTqpyhPFdxLzF", "tags": ["ljv7IPrDQQRgat0S", "QN05MYzYiKWe5dNR", "evkLGMS0lyuI9a2I"], "typeId": "9u6Vpbsx5w8hqUI0"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy '6UpOXGSLmCVuHOPl' --login_with_auth "Bearer foo"
legal-partial-update-policy 'LlkvR8sKgnuRkggh' --body '{"affectedClientIds": ["kahFjkQsfCaTmt1d", "67FXGk2s9Q0mPVo3", "GoYupD391C2qtPYo"], "affectedCountries": ["twu0MesTCf9x4rt6", "9lna7qxNeIxPz6Mb", "wL6IY69z1UaLqYSY"], "basePolicyName": "WytLPziZMdjxcBZu", "description": "fQxGiHPllG4cYEzf", "namespace": "TD1ZBm3MqHcUmLZZ", "tags": ["bSqb8RwNmn9HrNQy", "4uZAAiE0mit9RGCC", "HYzUOcEdscKHPEqg"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'A8yu7Vk6Jt4Ymos9' 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'JMdalwSyliWMNW5N' --body '{"contentType": "yLu0M3VHh2EI8JlD", "description": "bPWbQ6Q9lNmqRBaA", "localeCode": "kLnvxkT1X68cmDc3"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'fxU8MyKrQpM4hkkK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version '6KKXNB3Gv0IqmF51' --body '{"attachmentChecksum": "TkhjYnaq6foWvXa3", "attachmentLocation": "bMrXsDr6kILsSSyD", "attachmentVersionIdentifier": "dmykmoPYgc2L4jk4", "contentType": "Lo0LSP0pf4IxjUkl", "description": "535X3ateEKDpADz1"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'x3poD3Qgb3boLQQ1' --body '{"contentMD5": "MzH7Qm8bwbmXgdAP", "contentType": "h1EThG96gAFKK2WD"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["SKVPHbn4Xxtu7LQR", "ENjEEztx1WsYSiZq", "KKTlmVr9XuoJbRFQ"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'an0nSBJroav91GXl' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["8S48l9lyNApflxqM", "yEW4ZJJ42d3PBddN", "x9Zw5D2L7vIYhGGS"], "affectedCountries": ["DxHSZjtqXyJ58f7G", "rj3oZk03QXcKMDYD", "c26SaiGVkydwYWQG"], "basePolicyName": "26yUZNmTBcvrbYCw", "description": "ZtxFHyPLtI8ilbyD", "tags": ["PUIj88cekdqCt81P", "cHm3SZLxoRDFuuuy", "1ktfIovmv9gsR5cJ"], "typeId": "Sj29a9LJE8HoRS1X"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 '2PFAAMwzHPxB1Usk' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'Ys4Yw20DOqOBSC2D' --body '{"affectedClientIds": ["9WEi8KlloeH0JT1y", "UBJCjfcnLRfxeCSz", "KHRuPMMWH8Yb33T5"], "affectedCountries": ["duat2vQR3biBfsu4", "jmsRE2w1yEkLgh3t", "IYt4SqYUTLDx9gIi"], "basePolicyName": "DandpGT2t24aOMh5", "description": "eC3IHeHSKLCa3xre", "tags": ["NDUWehwH3q31A806", "DJgas4b6z3LNUj7f", "dgLA84Z8YYk6QEgJ"]}' --login_with_auth "Bearer foo"
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
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'ues1Hhhkg1yLVbLF' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "EP8cM4NTwr0KHaAs", "policyId": "mTej52WKi6tArAUR", "policyVersionId": "t9plCSVq8PdH6hJP"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "c0RVwXgAgntLMCua", "policyId": "XBWQi6BqPg4xr0lC", "policyVersionId": "ancUZGCHsZYoLfR1"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "z5S5BvmgBLxh4ijF", "policyId": "nE3Tam69qSZ7PC6f", "policyVersionId": "6QkmZXElW9YfRSse"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '6AAz3S4czz0QKFlA' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "G6XqP6oo7G73zdxT", "policyId": "gOfnwIdlNa29fDLh", "policyVersionId": "741IslKHzGlLKWUt"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Qs61OQAoxyyQpRWC", "policyId": "iiPDGQhNPEwiJCf2", "policyVersionId": "XJVrlzqQls1ozhLV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "kE8jKvgatOEBM70T", "policyId": "dlNBJYOmpu1VCarz", "policyVersionId": "BsV6xnZ5Jrzzjrca"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'ug6CWVG8SWP3glU6' 'muswVJnNnN7kAa7j' '0riFc5HTHQIoVsGo' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wV9DBqFKHQkETJyT", "policyId": "lUrwDTnoujQD4IEi", "policyVersionId": "H9Z5qXn3aoRtlqOE"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "6IUJNvYuGRUvpZaH", "policyId": "CuESOiIZsMfB4ZH3", "policyVersionId": "mtgWgU4pCAKxeE70"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "aunQNxot371W9G4A", "policyId": "vQkqsGnmyo5JJTUV", "policyVersionId": "mb8GEXFTlEMEsFzY"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'qwgK1Np5nodqpLm7' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BNXzAFdO0Khqf6ki", "policyId": "TdSGv2LFjAKY7Cbg", "policyVersionId": "sWqFWZX7kPBom8F9"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CjtuzFMbAG9YI89h", "policyId": "mguB8FOTjMLo4b9r", "policyVersionId": "IzqYkEpstyVTBcrM"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "G0rH0zcswwVeMK6M", "policyId": "bGIVIu8vvwLc7KY3", "policyVersionId": "uVoJXTIMtpgkieDy"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'F97lGdMiHKxbWCYz' 'o8yO2KTK9tmmOnYn' 'Opas6ghP1y4Zi7s7' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'QBlk44Z44B1GZgKg' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 '4uKxaCgcGLuC3brW' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'dTYCfHkIySok5DiX' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'ZtLW87rGysryod3d' --login_with_auth "Bearer foo"
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
    'NQrmsApRA6HX3Rwr' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "xo8SV38nEhoXmM2W", "policyId": "7l6jHMA2rG3nakop", "policyVersionId": "Aywelu01nryEJ0Nq"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Tow0qiOiC4j0iktm", "policyId": "0ZPLkLOsp0LZ5njN", "policyVersionId": "86Hl8kUXzt6bSc6b"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cKMLhrTrcBE2ItBS", "policyId": "3KtKZWe8aoFzAyBM", "policyVersionId": "E74HUtipUWYhWV1q"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'x8CzPML52faXUr9S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'k4lq2faBcAXXKlhv' \
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
    --body '{"affectedClientIds": ["RwNj547fH0XrKEDp", "yH8paOJtxqMPpcVf", "EY8VnocGAjci0V3t"], "affectedCountries": ["Bf2jnHGKXphn50c9", "tNLDljhZ2jxLRX3z", "46OCaGBeMfPlNos4"], "basePolicyName": "yBRjrERHEonAZR8G", "description": "mEu0q1p6QCyY6vSk", "namespace": "VFWdsbYuVEGVxYhe", "tags": ["R3j5mNZ6vwv7K8As", "vt1j1Rx59hesNWy2", "NvZ85DDKDAF8KDsB"], "typeId": "ZOuYQJ03BAHZ7c53"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'q7akMpcmnnx6RVBr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'op9v7aZK3h65hbN1' \
    --body '{"affectedClientIds": ["QAg5mPYhrLTyU8Oh", "5zfQSfQrtfF3TQN0", "OcNDLr36vzohZyjM"], "affectedCountries": ["gfY9JQYGF4bYXEcE", "Nx9xZlAchob44lON", "DDwMvgI0HlyPR7wZ"], "basePolicyName": "NiVsF6xG2mXEQdbz", "description": "IVy8alncV7vWgSHd", "namespace": "fo07UctPErqxyMyO", "tags": ["vU4PbmRDcrg0DjQj", "K06MqQBErxgjVByc", "BECXvea7H1m2lJFR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'Z3ZprZ60zMjhTHeh' \
    '94TSenE5hCFkIf5w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'eqZ18MH57l2Zsrh9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '0ETtYmGukz3Mnlrj' \
    --body '{"contentType": "cHp6B8Vj7rXFgDnD", "description": "kdZ9bpjb1tdA3Qhj", "localeCode": "CMW64f4XhIjSoTB2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'NMKtezapPr2QEPx3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'zTxBGtEJIYppuUSs' \
    --body '{"attachmentChecksum": "KoHw2hyd12uSE7BE", "attachmentLocation": "v3aevq6iohU1cg4W", "attachmentVersionIdentifier": "1IS3Uv1BpWoJBaqd", "contentType": "g2FHcunsS1lnaO2m", "description": "9vqjhbeK2qN8g6x2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'PyYDo5R3hLiD5sf5' \
    --body '{"contentMD5": "y1JsxJNGmyt0SQDU", "contentType": "DoWBZVGLlkUetzCA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'Wc9x1aMjgGim51T1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["x6GqsBq8vdhWVnuY", "XIZRZ7tZdIs0xf4c", "zdt7zqmSKxOEQlVc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'LgpZehK0G2nmyuVi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'B9kRTcSQdTnNYGeA' \
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
    --body '{"affectedClientIds": ["ZOokZB4cXnAXyuGz", "6LlxHv8SwyagYvDJ", "fYFG3wSkHKufBdS3"], "affectedCountries": ["3w3UNgIGj2jZtEYT", "ZoFS6xCOWMpyh9pM", "8sIPSE1XXPzySa0s"], "basePolicyName": "sQgb64ELbzDMwyo4", "description": "nIRysQdbufXjYnSo", "tags": ["9I6nEwnZhsjwJeGw", "IFeouC2m38kXrDZW", "lGVE9sJ4NpUtKp6M"], "typeId": "aPSDMZz95OYKiqaZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'CreatePolicy1' test.out

#- 21 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'D63xe5rruJVfLGea' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'RetrieveSinglePolicy1' test.out

#- 22 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    '0ZtlzUcuHAXz0UV3' \
    --body '{"affectedClientIds": ["WWSI1ECUo1NPpeFh", "1MfuGaXsAuGsZaSH", "evO0TQNEI3kfabxJ"], "affectedCountries": ["P8PATLpUpxeJlsBJ", "T6Hh3OMjAjq2mK8l", "UztXDgB7n4C97uAP"], "basePolicyName": "bSEEelxnb5QxWG2H", "description": "FnZlA6HKWW4fI1IQ", "tags": ["gXNwvm4e5GX6H742", "coBQELcNlZkqTZrK", "OixhtAoKiVm6URT9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PartialUpdatePolicy1' test.out

#- 23 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    '5XhnUcvWB28Mpusu' \
    'hhDJ5slzgiWZEtyd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrievePolicyCountry1' test.out

#- 24 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    '56LfxnbY97jjYgXc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'RetrieveLocalizedPolicyVersions1' test.out

#- 25 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'hCbkXX26uEdCfQaM' \
    --body '{"contentType": "AQuTKfC0I2kNjCMD", "description": "tDMrentgn3Dhqciw", "localeCode": "IeShF9RKb9vvxuJl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'CreateLocalizedPolicyVersion1' test.out

#- 26 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'hXbWhbwPwToC6knj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 27 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'VwVnzaqSfJiQFC2g' \
    --body '{"attachmentChecksum": "Xoda0kg16yUSpSOA", "attachmentLocation": "jHJWwfCjYwWkLob9", "attachmentVersionIdentifier": "gKLqs2nEZhpByfHZ", "contentType": "inxNfgPAwkMBsznl", "description": "BUqnLT4AbGptKaWN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateLocalizedPolicyVersion1' test.out

#- 28 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'vPbpg7yrRvXfZ6rv' \
    --body '{"contentMD5": "gvEY3Hht1SwqTsKK", "contentType": "Ko37NHDOQe91Ps3z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RequestPresignedURL1' test.out

#- 29 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'tUIV0dS6hIH9c4Vf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'SetDefaultPolicy1' test.out

#- 30 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'kyrwpuXxbaERbfgP' \
    --body '{"description": "mi0eHkt1mr9EOIFg", "displayVersion": "0dnWIYN2NVL70Iw1", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdatePolicyVersion1' test.out

#- 31 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'QkQD6WmOt6D7ufFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublishPolicyVersion1' test.out

#- 32 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'TOhvQpfbBke8aEdd' \
    --body '{"description": "36xj6wySoltDxsbz", "isDefaultOpted": true, "isMandatory": true, "policyName": "mcMdiS76YApGJ9uf", "readableId": "wLYkqIgLuZS6hsQr", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicy1' test.out

#- 33 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'z4NhGztZpr4U4fwQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'SetDefaultPolicy3' test.out

#- 34 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'IiLXgmRasvjO4lj8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RetrieveSinglePolicyVersion1' test.out

#- 35 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'm3XEwP2b4gd3xOei' \
    --body '{"description": "i8Jnmssep2xD2NY0", "displayVersion": "kABeGs9yxahld1pO", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'CreatePolicyVersion1' test.out

#- 36 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '50' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveAllPolicyTypes1' test.out

#- 37 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'm4fZWuk6pQxDQpKq' \
    'xLGeMvr9TsvcMQ7d' \
    'BsaIecRxIsZvD6rm' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "YbuU5ar5qTLWUCy0", "policyId": "Afgc050XIZRW491e", "policyVersionId": "94mQjVOOBnIWhunE"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "c15N8WXBPp17PAew", "policyId": "qSm5x3B4t7WQnp8j", "policyVersionId": "XZedgt5cyNe27HLt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "tVOaxgP6Jbct8puM", "policyId": "ybYGxD9IPmmsLmu3", "policyVersionId": "kaPj0O4zd8Tb7cUN"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'IndirectBulkAcceptVersionedPolicy' test.out

#- 38 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'GPTBxiFFCrn7djjs' \
    '69FTFVGUVhvKhJCm' \
    'eisql14mUHVbMPim' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'AdminRetrieveEligibilities' test.out

#- 39 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'NhcZsU3VAdMDcb4q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrievePolicies' test.out

#- 40 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'lkiFAamqvZI2Kwjq' \
    --body '{"description": "PBiWXade41s3rH34", "displayVersion": "mB2yPlRpWjmHZAAv", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdatePolicyVersion' test.out

#- 41 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'TH8MuqIg0Czkguwu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublishPolicyVersion' test.out

#- 42 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'JCW7EEFB67AODbi9' \
    --body '{"description": "BzupBsFpYc77GtRU", "isDefaultOpted": false, "isMandatory": false, "policyName": "CFeY5g4XgBsbfzqx", "readableId": "BPNe8ae1Il4aAtEb", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicy' test.out

#- 43 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'xm09wpGAbpEmDY9v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'SetDefaultPolicy2' test.out

#- 44 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'Lh3u6EDsUmrV6kH4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RetrieveSinglePolicyVersion' test.out

#- 45 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'OotKwG3UC6XCnnZx' \
    --body '{"description": "F8CmQr17W65br34r", "displayVersion": "BBN9tU6TDm5GloFS", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'CreatePolicyVersion' test.out

#- 46 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '8' \
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
    'ldWf7iSGIiKFtWtn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'AnonymizeUserAgreement' test.out

#- 51 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "svKM6pqLGZ0TBujE", "policyId": "LAUK6mQ5iZgbwwm5", "policyVersionId": "iGzXtcknrgidKupv"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fTiCO1NDBvQvRPnA", "policyId": "z4VzW0CpoBCbyJsF", "policyVersionId": "5IjF1c0W338HS6CB"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "VRyihYNZ84CVhziX", "policyId": "V8HwSmvcvcDKF19y", "policyVersionId": "VRafCjOuSYht83Ad"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'ChangePreferenceConsent1' test.out

#- 52 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'vBaagTiRJ8daGTVX' \
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
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b7jlz5IfHgKjI9mw", "policyId": "JSrN8jkIykR2zbaI", "policyVersionId": "6PD7fEscShnGUGUt"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "9GDbLNwjm3FK0nnX", "policyId": "2poMfZ1hDHtbh4Ht", "policyVersionId": "MlFgvh2Dp2SoiIPp"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vfAHS0VgLu11A3HT", "policyId": "ovFi4tPAGfleyCA6", "policyVersionId": "jEtcqsnzoVILjkwW"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'BulkAcceptVersionedPolicy' test.out

#- 55 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    '61duF87aUyrdt4XS' \
    'pWBAetsanzqP8oxf' \
    'rtbECD1CYPwaiBAx' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Avt70ZUT2fSk3LL0", "policyId": "calqxEewuGS469k2", "policyVersionId": "hG0WKt4sUmanYxM0"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VNYzGMNIpWoSLkUr", "policyId": "fuf4U3WeYeA9t2EN", "policyVersionId": "KKWrFtHIi1CMgKAO"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DcCR5PbCvDLil8wj", "policyId": "9cKM3Ar6MF35hCER", "policyVersionId": "4nGmWGgTJfHlJl4t"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 56 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    'HGa4XfZcd9CVnGqM' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "jfJKyFlM0u1uuoVd", "policyId": "n9yVoSlKNchPHNL4", "policyVersionId": "X3LLaGPGdqLE8Soh"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "huiTnJarYYkHBDdS", "policyId": "zBXdxapwhd5IQYBQ", "policyVersionId": "uxLvPuWYvE3fsNy9"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hxXvCp9y7fLD2qfC", "policyId": "XnlUnqxT1WsRNMZc", "policyVersionId": "A92hzC7MNa8vVe4M"}]' \
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
    'HX6AgMep90AyyUJy' \
    'AK5PRMRMwdvl0hv6' \
    'g62GxBW2tQF5tkTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'RetrieveEligibilitiesPublicIndirect' test.out

#- 59 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'gJaMYvNQOsDa4bkc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 60 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'gepqtxjbrztee7QL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 61 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'TGAak7Kaol01DK97' \
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
    'D2xnik42miteR5eQ' \
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
