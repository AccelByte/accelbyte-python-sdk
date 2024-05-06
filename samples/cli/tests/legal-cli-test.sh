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
legal-create-policy --body '{"affectedClientIds": ["umKtPDKJDXn7Z4U6", "jJW2OQNOs1PXhT5F", "vdiRilZ7oFgx4c8O"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "namespace": "jUmiTqpyhPFdxLzF", "tags": ["evkLGMS0lyuI9a2I", "ljv7IPrDQQRgat0S", "QN05MYzYiKWe5dNR"], "typeId": "9u6Vpbsx5w8hqUI0"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy '6UpOXGSLmCVuHOPl' --login_with_auth "Bearer foo"
legal-partial-update-policy 'LlkvR8sKgnuRkggh' --body '{"affectedClientIds": ["67FXGk2s9Q0mPVo3", "GoYupD391C2qtPYo", "kahFjkQsfCaTmt1d"], "affectedCountries": ["twu0MesTCf9x4rt6", "9lna7qxNeIxPz6Mb", "wL6IY69z1UaLqYSY"], "basePolicyName": "WytLPziZMdjxcBZu", "description": "fQxGiHPllG4cYEzf", "namespace": "TD1ZBm3MqHcUmLZZ", "tags": ["bSqb8RwNmn9HrNQy", "4uZAAiE0mit9RGCC", "HYzUOcEdscKHPEqg"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'A8yu7Vk6Jt4Ymos9' 'Jcdos4fYcTVU6RBt' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions '0zYoMcHyCUEXlAvx' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'JMdalwSyliWMNW5N' --body '{"contentType": "yLu0M3VHh2EI8JlD", "description": "bPWbQ6Q9lNmqRBaA", "localeCode": "kLnvxkT1X68cmDc3"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'fxU8MyKrQpM4hkkK' --login_with_auth "Bearer foo"
legal-update-localized-policy-version '6KKXNB3Gv0IqmF51' --body '{"attachmentChecksum": "TkhjYnaq6foWvXa3", "attachmentLocation": "bMrXsDr6kILsSSyD", "attachmentVersionIdentifier": "dmykmoPYgc2L4jk4", "contentType": "Lo0LSP0pf4IxjUkl", "description": "535X3ateEKDpADz1"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'x3poD3Qgb3boLQQ1' --body '{"contentMD5": "MzH7Qm8bwbmXgdAP", "contentType": "h1EThG96gAFKK2WD"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'gCcxvONZm3EeERmD' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["ENjEEztx1WsYSiZq", "SKVPHbn4Xxtu7LQR", "KKTlmVr9XuoJbRFQ"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'an0nSBJroav91GXl' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'vPG6bFYReVHQipcC' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv 'x9Zw5D2L7vIYhGGS' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'yEW4ZJJ42d3PBddN' '8S48l9lyNApflxqM' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["c26SaiGVkydwYWQG", "rj3oZk03QXcKMDYD", "DxHSZjtqXyJ58f7G"], "affectedCountries": ["26yUZNmTBcvrbYCw", "ZtxFHyPLtI8ilbyD", "PUIj88cekdqCt81P"], "basePolicyName": "1ktfIovmv9gsR5cJ", "description": "cHm3SZLxoRDFuuuy", "tags": ["2PFAAMwzHPxB1Usk", "Ys4Yw20DOqOBSC2D", "Sj29a9LJE8HoRS1X"], "typeId": "KHRuPMMWH8Yb33T5"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'UBJCjfcnLRfxeCSz' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 '9WEi8KlloeH0JT1y' --body '{"affectedClientIds": ["IYt4SqYUTLDx9gIi", "duat2vQR3biBfsu4", "jmsRE2w1yEkLgh3t"], "affectedCountries": ["NDUWehwH3q31A806", "eC3IHeHSKLCa3xre", "DandpGT2t24aOMh5"], "basePolicyName": "DJgas4b6z3LNUj7f", "description": "dgLA84Z8YYk6QEgJ", "tags": ["XiI07A68eaqC2J9j", "jBbEDoNf3n0hEoRC", "Acf80zfFyabWAgIU"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'yEW6GLbc0NaKDUL3' 'sa13lk1dQBHO86Il' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'BhnetU4RwTqUXlTD' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'BzOuYsaZA2yyd4mb' --body '{"contentType": "qoOfADMMAXFaY9eK", "description": "a699bRVhyaKwwrAP", "localeCode": "2aMlu7WtjCtoYetO"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'O847g8OudOfjnCuH' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'Z3c46IjGa23YvYmm' --body '{"attachmentChecksum": "Dg7VYPXIuvUYTZBR", "attachmentLocation": "ujIUE1Tq5jyAZvkR", "attachmentVersionIdentifier": "CMNFIurjh2imdb4r", "contentType": "bkXj0ZwsVC0gL97Z", "description": "VJSPqJiwv1qlYB1R"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'SKs6gQxC3Gb7S0o4' --body '{"contentMD5": "zGYY7KQI1AeFgPqa", "contentType": "Okvo1aolB4lkKB4E"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'YOkQ1jMD3cym8xIf' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'kOVW2grREOLx0KOw' --body '{"description": "w3HICQLfl7MUBG7q", "displayVersion": "tPu64yAtURKLRkb7", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'rDgMdIIlhS1fSiM9' --login_with_auth "Bearer foo"
legal-update-policy-1 '331m7Ta1PsKc50Kv' --body '{"description": "6ecnEevcAx2K2zkR", "isDefaultOpted": false, "isMandatory": true, "policyName": "nmPZnGBt4P7WnbdS", "readableId": "JtjX7ZshZyZl5x4b", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
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
    --body '{"affectedClientIds": ["HKxbWCYzo8yO2KTK", "tpgkieDyF97lGdMi", "9tmmOnYnOpas6ghP"], "affectedCountries": ["1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc", "GLuC3brWdTYCfHkI"], "basePolicyName": "ySok5DiXZtLW87rG", "description": "ysryod3dNQrmsApR", "namespace": "A6HX3RwrKt2ecozL", "tags": ["0TOg54vCE48L5oLF", "6M4lNa4JUMSHNgqR", "qCV7usamANkZlOX9"], "typeId": "Sfo95HgXqKhTPkwf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'LM9uSybRzWek2gZv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'Rrvr0n9d9lvccKML' \
    --body '{"affectedClientIds": ["UtipUWYhWV1qx8Cz", "ZWe8aoFzAyBME74H", "hrTrcBE2ItBS3KtK"], "affectedCountries": ["PML52faXUr9Sk4lq", "2faBcAXXKlhvyH8p", "aOJtxqMPpcVfRwNj"], "basePolicyName": "547fH0XrKEDpEY8V", "description": "nocGAjci0V3tBf2j", "namespace": "nHGKXphn50c9tNLD", "tags": ["aGBeMfPlNos4yBRj", "rERHEonAZR8GmEu0", "ljhZ2jxLRX3z46OC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'q1p6QCyY6vSkVFWd' \
    'sbYuVEGVxYheR3j5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'mNZ6vwv7K8Asvt1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    '1Rx59hesNWy2NvZ8' \
    --body '{"contentType": "5DDKDAF8KDsBZOuY", "description": "QJ03BAHZ7c53q7ak", "localeCode": "Mpcmnnx6RVBrop9v"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    '7aZK3h65hbN15zfQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'SfQrtfF3TQN0OcND' \
    --body '{"attachmentChecksum": "Lr36vzohZyjMQAg5", "attachmentLocation": "mPYhrLTyU8OhgfY9", "attachmentVersionIdentifier": "JQYGF4bYXEcENx9x", "contentType": "ZlAchob44lONDDwM", "description": "vgI0HlyPR7wZNiVs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'F6xG2mXEQdbzIVy8' \
    --body '{"contentMD5": "alncV7vWgSHdfo07", "contentType": "UctPErqxyMyOK06M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'qQBErxgjVBycvU4P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["w6T6mZEiwxxElpMY", "SWIeVzm7z9noowml", "oO05oKqymxLD1Lcv"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'TIKVowi0RY2VN4ZO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'NJREdUQ3z9F1BxNN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'gnke4akncw7wu9Tm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'XfJWBPrx9Ns8eLzY' \
    'EvwSWTaLQjctvrK2' \
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
    --body '{"affectedClientIds": ["jhsYpKPlXn77AtYo", "ivvQxevecWw7Rry0", "FzLAATPY8P8P3cfo"], "affectedCountries": ["VUGKSZ4GcLkt4pK3", "2sJxlZcCTpTdRtCH", "KK5rgAGO0dW8rX2M"], "basePolicyName": "vuk6B6XTmSLyn50s", "description": "igBVZxiKdV57GvRy", "tags": ["Dd4M1F5qRIblS7Nz", "d9UuL02Le8HSCsls", "81GRazPAANjfBold"], "typeId": "FOyqA2clJ5gEOaCg"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'M6Yn6RugbNEIpGBF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'UjOn5mM7k8nbLzvt' \
    --body '{"affectedClientIds": ["CIW5ynMKquUicAeI", "7OICf5oD1e6oI9Fm", "VXtoWAXhMlW4tLqX"], "affectedCountries": ["jS6rDWUwfhKvrf2A", "aH4yCWrHSppnIZkN", "Yel0kOw72o8Zkgk0"], "basePolicyName": "nTn3rzH5NvAtcvNe", "description": "dgS1fUfKmihDbmu8", "tags": ["3ISW510kHr4isTKW", "wyEw6hIWDZrpP7rz", "ePWlQMVDXEHeiGTn"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'jmv67nuHCXWfwnwG' \
    'ioVwVzmmBVVFfpqx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    '1AeLtzcPJ3jtDYBo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    '4FUTH7CGfKSyxgRR' \
    --body '{"contentType": "1DiCqSMzpqIFGLkD", "description": "s7ACC1RgBfoNrHlF", "localeCode": "i2qJLgmBLE35Yhyi"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'DV90SeI5yppBHoyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'VznCgNyx9fbT63Sh' \
    --body '{"attachmentChecksum": "Eh8PbGikLjgjcj34", "attachmentLocation": "uulU6FYBZsWFbr3R", "attachmentVersionIdentifier": "SP0W9nBhvhf8Q0Dt", "contentType": "JMcYQdN66bswAgt6", "description": "5X4N1LQZmB61JMdt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'wCVUrYQue84dwmbw' \
    --body '{"contentMD5": "FEnAZaWsQJtRYoag", "contentType": "RJK5PX9UcOvhPyE1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '1TRT2SKseoe8VLie' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    '0LBa36KNzjf005CX' \
    --body '{"description": "NGehQ2aTjTDfKFDX", "displayVersion": "C7eGL5YhJDWh9YWq", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'TKfC0I2kNjCMDtDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'rentgn3DhqciwIeS' \
    --body '{"description": "hF9RKb9vvxuJlhXb", "isDefaultOpted": false, "isMandatory": false, "policyName": "PCJJztJBg0tTJg46", "readableId": "IewOXE2AkCh3QIZs", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'f8lGFXcmwTERHclO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'dxIwqejxe18rNdb8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'Otq6j1mqUav7k05H' \
    --body '{"description": "AQltnSojV4jT65yc", "displayVersion": "lX2FtAz0vJjFIYWO", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '51' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'NdsimmkW2miH3xRH' \
    'AKy4QxZkaXZ7vmiE' \
    'd0JPxVyQpshaDwNq' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bFMXAMfVXe0GZeMg", "policyId": "sRsmH1EQrYmkPKTP", "policyVersionId": "OlhTtSiZNCxuogFt"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Iw157g00jr9b8MuY", "policyId": "mmeKTmBNvGYxEQdf", "policyVersionId": "3ewoGGoY7xmFNAmj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DCvs78mcMdiS76YA", "policyId": "pGJ9ufwLYkqIgLuZ", "policyVersionId": "S6hsQryiEtOAbpeU"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'Nf26UqkCfgCUYBn2' \
    'xaOBdPF0JmX8qwU1' \
    'cTuHHPB5S3DvPRCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'BrVUxmDOj3cvRFaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'C11W0TGTCm4fZWuk' \
    --body '{"description": "6pQxDQpKqxLGeMvr", "displayVersion": "9TsvcMQ7dBsaIecR", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'YNn3SHiWxF0YbuU5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'ar5qTLWUCy0Afgc0' \
    --body '{"description": "50XIZRW491e94mQj", "isDefaultOpted": true, "isMandatory": true, "policyName": "OBnIWhunElqZUodp", "readableId": "3IhtCSHy1ei1fIrP", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    'B4t7WQnp8jXZedgt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '5cyNe27HLtwtVOax' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'gP6Jbct8puMybYGx' \
    --body '{"description": "D9IPmmsLmu3kaPj0", "displayVersion": "O4zd8Tb7cUNGPTBx", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '11' \
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
    'FFCrn7djjs69FTFV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vGoav7MK0PcLnEkc", "policyId": "okKwcQ0baDT9OyJ2", "policyVersionId": "h23GUS2amU7syGlE"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "KwjqPBiWXade41s3", "policyId": "rH34mB2yPlRpWjmH", "policyVersionId": "ZAAvKTH8MuqIg0Cz"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "guwuJCW7EEFB67AO", "policyId": "Dbi9BzupBsFpYc77", "policyVersionId": "GtRUcCFeY5g4XgBs"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'bfzqxBPNe8ae1Il4' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "AtEbu4IjGdqthRxT", "policyId": "jQ7gkZEY8rG0q0Q2", "policyVersionId": "Qd2JzRbkF2I03dIj"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BbA6bfbYaJCJjfk2", "policyId": "TUvn95FhO7VW3mbD", "policyVersionId": "VMDu87t0ldWf7iSG"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FtWtn4Yr2svKM6pq", "policyId": "LGZ0TBujELAUK6mQ", "policyVersionId": "5iZgbwwm5iGzXtck"}]' \
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
    'nrgidKupvXO6aj4h' \
    'CmTC34jxW4pIDwdq' \
    'XpmRmut9H9XyWI8b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'p8fQxRuX91uYmtrH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'JbEGTUj7YjERL1rE' \
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
    'QG02zccA8wvLsWUN' \
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
    'd6lPKvqDejvqklTS' \
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
