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
legal-create-policy --body '{"affectedClientIds": ["umKtPDKJDXn7Z4U6", "jJW2OQNOs1PXhT5F", "vdiRilZ7oFgx4c8O"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "description": "cBdW19m4eu6d5tA5", "isHidden": false, "namespace": "duuyZ0GhDogqrhBR", "tags": ["d8lDR6qVNPRZYdFL", "KQ7KYnIuMBvaO35l", "IAjGGJddVCvu9vx5"], "typeId": "lzQRaT5kPxUfofvn"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'nSuB0y5WUlrMdI4s' --login_with_auth "Bearer foo"
legal-partial-update-policy 'NveabntBSxTeIv53' --body '{"affectedClientIds": ["HGCiljvjKoyD6SCw", "oNm03VLisV6zwPuo", "GrncqmLtjQHAf8Tg"], "affectedCountries": ["3td6TC6I3lMjGSWN", "2laRlxfcjHfYakUC", "TqGkE7wcWfDslpJS"], "basePolicyName": "qGAXQ0yYoNRKd3IL", "description": "5TAQ6iiPlSC2uE4o", "isHidden": true, "namespace": "Vwdo3fePqIJA8IHt", "tags": ["rkmu0hpDDWVAla2l", "oqwGyzzWi9gwQYv7", "5BYNtIuS5S5XUdjs"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 't1o7TTr1DmrhZv15' 'T7quIOvBMcaYmvCk' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'GZ5dAgqxpBFmaLox' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'ozr6wfNPX2bOItRM' --body '{"contentType": "vqtlB2jJCSQT279Z", "description": "ZPYGu0rdlgdWyOtX", "localeCode": "i3choQrpOsDBU5Se"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'pjChB3V0v52Dlym6' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'puQ23xoJ8aeCnaLp' --body '{"attachmentChecksum": "UKp44YUDjasWIPUv", "attachmentLocation": "mEejtGeoyIPa8ZRr", "attachmentVersionIdentifier": "vjj7il35MXbN9oCM", "contentType": "Nqq98SjTvhZNkSQ7", "description": "0D0H6BXksUC9b6i5"}' --login_with_auth "Bearer foo"
legal-request-presigned-url 'lZC9xv32e8c5csSo' --body '{"contentMD5": "voqsZNBdte9NDUPV", "contentType": "Jf6c2Z0QZxfgPubT"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'DIHrvqAThuwjRHpK' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": false, "userIds": ["VPHbn4Xxtu7LQREN", "TlmVr9XuoJbRFQSK", "jEEztx1WsYSiZqan"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 '0nSBJroav91GXlvP' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'G6bFYReVHQipcCx9' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv 'Zw5D2L7vIYhGGSyE' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'W4ZJJ42d3PBddN8S' '48l9lyNApflxqMrj' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["3oZk03QXcKMDYDDx", "HSZjtqXyJ58f7Gc2", "6SaiGVkydwYWQG26"], "affectedCountries": ["xFHyPLtI8ilbyDPU", "yUZNmTBcvrbYCwZt", "Ij88cekdqCt81P1k"], "basePolicyName": "tfIovmv9gsR5cJcH", "description": "m3SZLxoRDFuuuySj", "isHidden": false, "tags": ["AAMwzHPxB1UskYs4", "9a9LJE8HoRS1X2PF", "Yw20DOqOBSC2DKHR"], "typeId": "uPMMWH8Yb33T5UBJ"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'CjfcnLRfxeCSz9WE' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'i8KlloeH0JT1ydua' --body '{"affectedClientIds": ["t2vQR3biBfsu4jms", "4SqYUTLDx9gIiDan", "RE2w1yEkLgh3tIYt"], "affectedCountries": ["IHeHSKLCa3xreNDU", "dpGT2t24aOMh5eC3", "WehwH3q31A806DJg"], "basePolicyName": "as4b6z3LNUj7fdgL", "description": "A84Z8YYk6QEgJjBb", "isHidden": true, "tags": ["oqxM3gpwxcfMy9Xz", "lULdJz4mnRBkMNxv", "vKgAT8mJrYq6hRkl"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'jjI5YbsKoADkzJEN' '2VHzih3bit0VWn3C' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'O39PXDNxtXgeO3Fg' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'kXhjDzaQY3snn2Zk' --body '{"contentType": "P7cFdP43e5dC9XIB", "description": "udfZgrbHDIDm4hMz", "localeCode": "F4TxodenSrUTvfqU"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 '0bfoMm5cTtFWbotQ' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'yXJRcQWsmqPNs92e' --body '{"attachmentChecksum": "pxk0i8VxsZNereSv", "attachmentLocation": "f9699mCEHThUJkET", "attachmentVersionIdentifier": "AsSp7gh4TeUTkOkA", "contentType": "YfJB8AT9t4Tv207Y", "description": "2QD3oD5fLCr3OOlX"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'Vv8ZGF7uYnGzpipN' --body '{"contentMD5": "DigNJma1MbqqZtfN", "contentType": "Wql4nmwAft4gqkNN"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'lWkD9eOziYRFOn0j' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'JLHC9LxhvNXTwGBC' --body '{"description": "tohLtl9Zuhytm5UD", "displayVersion": "rT6QXCs5SPBbRPZT", "isCommitted": false}' --login_with_auth "Bearer foo"
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
    --body '{"affectedClientIds": ["HKxbWCYzo8yO2KTK", "9tmmOnYnOpas6ghP", "tpgkieDyF97lGdMi"], "affectedCountries": ["1y4Zi7s7QBlk44Z4", "4B1GZgKg4uKxaCgc", "GLuC3brWdTYCfHkI"], "basePolicyName": "ySok5DiXZtLW87rG", "description": "ysryod3dNQrmsApR", "isHidden": true, "namespace": "4mTIpUA9gxo8SV38", "tags": ["1nryEJ0NqoTow0qi", "nEhoXmM2W7l6jHMA", "2rG3nakopAywelu0"], "typeId": "OiC4j0iktm0ZPLkL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'Osp0LZ5njN86Hl8k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'UXzt6bSc6bWvgpVy' \
    --body '{"affectedClientIds": ["LgkQuaS7RBx3vim0", "W9dD1kOmvrAejcq2", "2jBOxrZDyvpcLYOW"], "affectedCountries": ["A8NjxOnaEok4nOOC", "zfsflhjbngJOUn18", "G5MlfDTk8aG40Nln"], "basePolicyName": "cceIZSwgAIkgzh4p", "description": "TU0Am4DZhl0bQxFJ", "isHidden": true, "namespace": "GKXphn50c9tNLDlj", "tags": ["RHEonAZR8GmEu0q1", "BeMfPlNos4yBRjrE", "hZ2jxLRX3z46OCaG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'p6QCyY6vSkVFWdsb' \
    'YuVEGVxYheR3j5mN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'Z6vwv7K8Asvt1j1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'x59hesNWy2NvZ85D' \
    --body '{"contentType": "DKDAF8KDsBZOuYQJ", "description": "03BAHZ7c53q7akMp", "localeCode": "cmnnx6RVBrop9v7a"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'ZK3h65hbN15zfQSf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'QrtfF3TQN0OcNDLr' \
    --body '{"attachmentChecksum": "36vzohZyjMQAg5mP", "attachmentLocation": "YhrLTyU8OhgfY9JQ", "attachmentVersionIdentifier": "YGF4bYXEcENx9xZl", "contentType": "Achob44lONDDwMvg", "description": "I0HlyPR7wZNiVsF6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'xG2mXEQdbzIVy8al' \
    --body '{"contentMD5": "ncV7vWgSHdfo07Uc", "contentType": "tPErqxyMyOK06MqQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'BErxgjVBycvU4Pbm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": true, "userIds": ["6mZEiwxxElpMYSWI", "eVzm7z9noowmlTIK", "5oKqymxLD1Lcvw6T"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'Vowi0RY2VN4ZONJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'EdUQ3z9F1BxNNgnk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'e4akncw7wu9TmXfJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'WBPrx9Ns8eLzYEvw' \
    'SWTaLQjctvrK2jhs' \
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
    --body '{"affectedClientIds": ["QxevecWw7Rry0KK5", "AATPY8P8P3cfoivv", "YpKPlXn77AtYoFzL"], "affectedCountries": ["KSZ4GcLkt4pK32sJ", "rgAGO0dW8rX2MVUG", "xlZcCTpTdRtCHvuk"], "basePolicyName": "6B6XTmSLyn50sigB", "description": "VZxiKdV57GvRyd9U", "isHidden": true, "tags": ["hLiD5sf5y1JsxJNG", "myt0SQDUDoWBZVGL", "lkUetzCAWc9x1aMj"], "typeId": "gGim51T107XIZRZ7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'tZdIs0xf4czdt7zq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'mSKxOEQlVcx6GqsB' \
    --body '{"affectedClientIds": ["q8vdhWVnuYLgpZeh", "SQdTnNYGeAfYFG3w", "K0G2nmyuViB9kRTc"], "affectedCountries": ["SkHKufBdS3ZOokZB", "8SwyagYvDJ3w3UNg", "4cXnAXyuGz6LlxHv"], "basePolicyName": "IGj2jZtEYT8sIPSE", "description": "1XXPzySa0sZoFS6x", "isHidden": true, "tags": ["QMVDXEHeiGTnwyEw", "510kHr4isTKWjmv6", "6hIWDZrpP7rz3ISW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    '7nuHCXWfwnwGioVw' \
    'VzmmBVVFfpqx1AeL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'tzcPJ3jtDYBo4FUT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'H7CGfKSyxgRR1DiC' \
    --body '{"contentType": "qSMzpqIFGLkDs7AC", "description": "C1RgBfoNrHlFi2qJ", "localeCode": "LgmBLE35YhyiDV90"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'SeI5yppBHoytVznC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'gNyx9fbT63ShEh8P' \
    --body '{"attachmentChecksum": "bGikLjgjcj34uulU", "attachmentLocation": "6FYBZsWFbr3RSP0W", "attachmentVersionIdentifier": "9nBhvhf8Q0DtJMcY", "contentType": "QdN66bswAgt65X4N", "description": "1LQZmB61JMdtwCVU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'rYQue84dwmbwFEnA' \
    --body '{"contentMD5": "ZaWsQJtRYoagRJK5", "contentType": "PX9UcOvhPyE11TRT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    '2SKseoe8VLie0LBa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    '36KNzjf005CXNGeh' \
    --body '{"description": "Q2aTjTDfKFDXC7eG", "displayVersion": "L5YhJDWh9YWqc0qg", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    '2kNjCMDtDMrentgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    '3DhqciwIeShF9RKb' \
    --body '{"description": "9vvxuJlhXbWhbwPw", "isDefaultOpted": true, "isMandatory": false, "policyName": "JBg0tTJg46IewOXE", "readableId": "2AkCh3QIZsUf8lGF", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'pSOAjHJWwfCjYwWk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'Lob9gKLqs2nEZhpB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'yfHZinxNfgPAwkMB' \
    --body '{"description": "sznlBUqnLT4AbGpt", "displayVersion": "KaWNvPbpg7yrRvXf", "isCommitted": false}' \
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
