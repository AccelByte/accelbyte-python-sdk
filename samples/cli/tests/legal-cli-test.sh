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
legal-partial-update-policy 'LlkvR8sKgnuRkggh' --body '{"affectedClientIds": ["kahFjkQsfCaTmt1d", "67FXGk2s9Q0mPVo3", "GoYupD391C2qtPYo"], "affectedCountries": ["twu0MesTCf9x4rt6", "9lna7qxNeIxPz6Mb", "wL6IY69z1UaLqYSY"], "basePolicyName": "WytLPziZMdjxcBZu", "description": "fQxGiHPllG4cYEzf", "namespace": "TD1ZBm3MqHcUmLZZ", "tags": ["4uZAAiE0mit9RGCC", "HYzUOcEdscKHPEqg", "bSqb8RwNmn9HrNQy"]}' --login_with_auth "Bearer foo"
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
legal-initiate-export-agreements-to-csv 'yEW4ZJJ42d3PBddN' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["rj3oZk03QXcKMDYD", "DxHSZjtqXyJ58f7G", "8S48l9lyNApflxqM"], "affectedCountries": ["26yUZNmTBcvrbYCw", "c26SaiGVkydwYWQG", "ZtxFHyPLtI8ilbyD"], "basePolicyName": "PUIj88cekdqCt81P", "description": "1ktfIovmv9gsR5cJ", "tags": ["cHm3SZLxoRDFuuuy", "Sj29a9LJE8HoRS1X", "2PFAAMwzHPxB1Usk"], "typeId": "Ys4Yw20DOqOBSC2D"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'KHRuPMMWH8Yb33T5' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 'UBJCjfcnLRfxeCSz' --body '{"affectedClientIds": ["jmsRE2w1yEkLgh3t", "duat2vQR3biBfsu4", "9WEi8KlloeH0JT1y"], "affectedCountries": ["IYt4SqYUTLDx9gIi", "eC3IHeHSKLCa3xre", "DandpGT2t24aOMh5"], "basePolicyName": "NDUWehwH3q31A806", "description": "DJgas4b6z3LNUj7f", "tags": ["Acf80zfFyabWAgIU", "jBbEDoNf3n0hEoRC", "dgLA84Z8YYk6QEgJ"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'XiI07A68eaqC2J9j' 'yEW6GLbc0NaKDUL3' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'sa13lk1dQBHO86Il' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'BhnetU4RwTqUXlTD' --body '{"contentType": "BzOuYsaZA2yyd4mb", "description": "qoOfADMMAXFaY9eK", "localeCode": "a699bRVhyaKwwrAP"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 '2aMlu7WtjCtoYetO' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'O847g8OudOfjnCuH' --body '{"attachmentChecksum": "Z3c46IjGa23YvYmm", "attachmentLocation": "Dg7VYPXIuvUYTZBR", "attachmentVersionIdentifier": "ujIUE1Tq5jyAZvkR", "contentType": "CMNFIurjh2imdb4r", "description": "bkXj0ZwsVC0gL97Z"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'VJSPqJiwv1qlYB1R' --body '{"contentMD5": "SKs6gQxC3Gb7S0o4", "contentType": "zGYY7KQI1AeFgPqa"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 'Okvo1aolB4lkKB4E' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'YOkQ1jMD3cym8xIf' --body '{"description": "kOVW2grREOLx0KOw", "displayVersion": "w3HICQLfl7MUBG7q", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 '5UDrT6QXCs5SPBbR' --login_with_auth "Bearer foo"
legal-update-policy-1 'PZTF6oQAXVG7tnsZ' --body '{"description": "g5QgXjvyGJPN4eXb", "isDefaultOpted": false, "isMandatory": true, "policyName": "50Kv6ecnEevcAx2K", "readableId": "2zkRenmPZnGBt4P7", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'nbdSJtjX7ZshZyZl' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 '5x4bRXBHUTrDzZSK' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'scfOcYu3dpCROYqU' --body '{"description": "iGKXVFCmpo6sPwVO", "displayVersion": "EDSJsEK5QpNhlI2i", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '63' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'iIaTIKUkmkk9QM0N' 'BMA9ORxpzwLR2AK6' 'eXUGPJsw1fiP80G9' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CCFrHHC3DpZxkrQD", "policyId": "XuNFviMarv8mnfHK", "policyVersionId": "8CCmE2lPnsbD3SGE"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "lwuUccE536ugBp3H", "policyId": "BvepnDCjgyJlXe36", "policyVersionId": "mgWjLfFmteue9nzJ"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wG2omOR2nvYI9TVq", "policyId": "JdvzcWbfUpaXp5JM", "policyVersionId": "l5LL4bTxBmZjdrrI"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'xsB0NRsB1fPqqRRu' 'lpqpymDkQhtrHWwR' 'VnwVBOqOHi8pWGd1' --login_with_auth "Bearer foo"
legal-retrieve-policies 'juYhiqjRJOqB5F93' --login_with_auth "Bearer foo"
legal-update-policy-version 'zFQbJndUDpdONneA' --body '{"description": "czbBdHb2slt71B1S", "displayVersion": "mZp2JZp50CnPb71O", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'YcmQbTU5JX8ccLjM' --login_with_auth "Bearer foo"
legal-update-policy 'XJRk0eaKQDOJvrTe' --body '{"description": "fglSs6g4iY9u02aC", "isDefaultOpted": true, "isMandatory": false, "policyName": "IWekp18lOC3mNqF7", "readableId": "Bl0LcghVHfPEspxw", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'fR3ncDlwi3v3MFFJ' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version '1KesKoELCpobBEG8' --login_with_auth "Bearer foo"
legal-create-policy-version 'X645xpdXpai0rYaT' --body '{"description": "5hOPjaf3H0tYighU", "displayVersion": "0VUfcYHJbBfAKSiP", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '35' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'VgsZXiR1DJ7HVWqM' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "NSawQUWDFJvJBWic", "policyId": "7UkBeIXuqDuAXI66", "policyVersionId": "bQ71w0deoV9Lx5RD"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "1l2XcrciYNEzvSZI", "policyId": "PkhSgORcz5S5Bvmg", "policyVersionId": "BLxh4ijFnE3Tam69"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Z7PC6f6QkmZXElW9", "policyId": "YfRSse6AAz3S4czz", "policyVersionId": "0QKFlAVmVLu4AOec"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '0z8eBeeoip68J1ns' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "4W2OJhtafxMSJlHe", "policyId": "b34sZKHcl5LLLOex", "policyVersionId": "L4fZvWtND2tcBFpX"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "wiJCf2XJVrlzqQls", "policyId": "1ozhLVA3kE8jKvga", "policyVersionId": "tOEBM70TdlNBJYOm"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wlc6esUp6Sw1I98j", "policyId": "eZQ7hfxnhLd3Knak", "policyVersionId": "noed9DHhLOqQGhCU"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'r6iTrjyEgarAdNJO' 'IG36I6tRbRcrEveM' 'dAdiPKDUVSC00PYe' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'DcagginxnFIna3yd' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'dcbsPheTH26IUJNv' --login_with_auth "Bearer foo"
legal-retrieve-country-list-with-policies --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'YuGRUvpZaHCuESOi' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'IZsMfB4ZH3mtgWgU' --login_with_auth "Bearer foo"
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
    '4pCAKxeE70CaunQN' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ot371W9G4AvQkqsG", "policyId": "nmyo5JJTUVmb8GEX", "policyVersionId": "FTlEMEsFzYqwgK1N"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "5nodqpLm7FhJBNXz", "policyId": "AFdO0Khqf6kiTdSG", "policyVersionId": "v2LFjAKY7CbgsWqF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "7kPBom8F9GLLTG8p", "policyId": "hc3n4iLoIllKlpO2", "policyVersionId": "pqiXJF3WGRaoQomS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'JC4DdrKF7SUQPLG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    '9e0k5ZtX6wK7PpUl' \
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
    --body '{"affectedClientIds": ["cIW32iK7MGt1ixY5", "zP4zvtdxdbZUpd6F", "rA1WoVeJIePF8ZrQ"], "affectedCountries": ["JtHJ1pyVwyKQLY6F", "EO65Rb3z7CYLM8Il", "sHqffnrfsGlfPaZK"], "basePolicyName": "Bwa3Ddb60ufPpzwj", "description": "1QGIFmlVf4jvapse", "namespace": "E9LN9bvhOrHflIOd", "tags": ["A9gxo8SV38nEhoXm", "6X3viLvtEk4mTIpU", "M2W7l6jHMA2rG3na"], "typeId": "kopAywelu01nryEJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    '0NqoTow0qiOiC4j0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'iktm0ZPLkLOsp0LZ' \
    --body '{"affectedClientIds": ["Sc6bWvgpVyW9dD1k", "OmvrAejcq2LgkQua", "5njN86Hl8kUXzt6b"], "affectedCountries": ["S7RBx3vim02jBOxr", "ZDyvpcLYOWA8NjxO", "naEok4nOOCzfsflh"], "basePolicyName": "jbngJOUn18G5MlfD", "description": "Tk8aG40NlncceIZS", "namespace": "wgAIkgzh4pTU0Am4", "tags": ["fAacR0LgB5BUXvjc", "DZhl0bQxFJ3sWCqQ", "pQ2FbKPFMycMSQ4q"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'u2s6w3VifnKqmTSo' \
    'GH1XEfY6QAYn6WQ5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'UBEU1QAOHfZiGhxO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'dcuDXSxSc3aZPV87' \
    --body '{"contentType": "pna08gxefTYKhuxa", "description": "Ec7M4P7UckSC6ePe", "localeCode": "N8i4GrFES9z7xueH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'pATHccee9GXhKcjm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'SEwdrkEnnqKzFsLf' \
    --body '{"attachmentChecksum": "YalUlfwEQKjU7eHG", "attachmentLocation": "ebSVu0LQ40kepEaC", "attachmentVersionIdentifier": "4dfiOMZfEhHr39py", "contentType": "sFO3Zvc1BZG99Lyv", "description": "fvHEsJKQQewVLMUo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'AnaRcYp7FUjfIGaf' \
    --body '{"contentMD5": "foflEIByYqeKN0me", "contentType": "GelYF5wWaDhukU4k"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'hGG4vZFTYnPkmSu4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": true, "userIds": ["c8fgvZDDhoO05oKq", "Wam1jxR7SETWjteo", "ymxLD1Lcvw6T6mZE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'iwxxElpMYSWIeVzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    '7z9noowmlTIKVowi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    '0RY2VN4ZONJREdUQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    '3z9F1BxNNgnke4ak' \
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
    --body '{"affectedClientIds": ["x9Ns8eLzYEvwSWTa", "LQjctvrK2jhsYpKP", "ncw7wu9TmXfJWBPr"], "affectedCountries": ["ecWw7Rry0KK5rgAG", "Y8P8P3cfoivvQxev", "lXn77AtYoFzLAATP"], "basePolicyName": "O0dW8rX2MVUGKSZ4", "description": "GcLkt4pK32sJxlZc", "tags": ["TmSLyn50sigBVZxi", "CTpTdRtCHvuk6B6X", "KdV57GvRyd9UuL02"], "typeId": "Le8HSCslsDd4M1F5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'qRIblS7Nz81GRazP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'AANjfBoldFOyqA2c' \
    --body '{"affectedClientIds": ["7k8nbLzvtCIW5ynM", "lJ5gEOaCgM6Yn6Ru", "gbNEIpGBFUjOn5mM"], "affectedCountries": ["D1e6oI9FmYel0kOw", "KquUicAeIVXtoWAX", "hMlW4tLqX7OICf5o"], "basePolicyName": "72o8Zkgk0jS6rDWU", "description": "wfhKvrf2AaH4yCWr", "tags": ["5NvAtcvNedgS1fUf", "KmihDbmu8ePWlQMV", "HSppnIZkNnTn3rzH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PartialUpdatePolicy1' test.out

#- 25 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'DXEHeiGTnwyEw6hI' \
    'WDZrpP7rz3ISW510' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrievePolicyCountry1' test.out

#- 26 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'kHr4isTKWjmv67nu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrieveLocalizedPolicyVersions1' test.out

#- 27 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'HCXWfwnwGioVwVzm' \
    --body '{"contentType": "mBVVFfpqx1AeLtzc", "description": "PJ3jtDYBo4FUTH7C", "localeCode": "GfKSyxgRR1DiCqSM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'CreateLocalizedPolicyVersion1' test.out

#- 28 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'zpqIFGLkDs7ACC1R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 29 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'gBfoNrHlFi2qJLgm' \
    --body '{"attachmentChecksum": "BLE35YhyiDV90SeI", "attachmentLocation": "5yppBHoytVznCgNy", "attachmentVersionIdentifier": "x9fbT63ShEh8PbGi", "contentType": "kLjgjcj34uulU6FY", "description": "BZsWFbr3RSP0W9nB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'UpdateLocalizedPolicyVersion1' test.out

#- 30 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'hvhf8Q0DtJMcYQdN' \
    --body '{"contentMD5": "66bswAgt65X4N1LQ", "contentType": "ZmB61JMdtwCVUrYQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RequestPresignedURL1' test.out

#- 31 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'ue84dwmbwFEnAZaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'SetDefaultPolicy1' test.out

#- 32 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'sQJtRYoagRJK5PX9' \
    --body '{"description": "UcOvhPyE11TRT2SK", "displayVersion": "seoe8VLie0LBa36K", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdatePolicyVersion1' test.out

#- 33 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'ZEtyd56LfxnbY97j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublishPolicyVersion1' test.out

#- 34 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'jYgXchCbkXX26uEd' \
    --body '{"description": "CfQaMAQuTKfC0I2k", "isDefaultOpted": false, "isMandatory": false, "policyName": "CMDtDMrentgn3Dhq", "readableId": "ciwIeShF9RKb9vvx", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdatePolicy1' test.out

#- 35 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'mHMxr5hPCJJztJBg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy3' test.out

#- 36 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    '0tTJg46IewOXE2Ak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveSinglePolicyVersion1' test.out

#- 37 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'Ch3QIZsUf8lGFXcm' \
    --body '{"description": "wTERHclOdxIwqejx", "displayVersion": "e18rNdb8Otq6j1mq", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'CreatePolicyVersion1' test.out

#- 38 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '43' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveAllPolicyTypes1' test.out

#- 39 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'inxNfgPAwkMBsznl' \
    'BUqnLT4AbGptKaWN' \
    'vPbpg7yrRvXfZ6rv' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vEY3Hht1SwqTsKKK", "policyId": "o37NHDOQe91Ps3zt", "policyVersionId": "UIV0dS6hIH9c4Vfk"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "rwpuXxbaERbfgPmi", "policyId": "0eHkt1mr9EOIFg0d", "policyVersionId": "nWIYN2NVL70Iw157"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0jr9b8MuYmmeKTmB", "policyId": "NvGYxEQdf3ewoGGo", "policyVersionId": "Y7xmFNAmjDDCvs78"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'IndirectBulkAcceptVersionedPolicy' test.out

#- 40 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'mcMdiS76YApGJ9uf' \
    'wLYkqIgLuZS6hsQr' \
    'yiEtOAbpeUNf26Uq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'AdminRetrieveEligibilities' test.out

#- 41 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'kCfgCUYBn2xaOBdP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrievePolicies' test.out

#- 42 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'F0JmX8qwU1cTuHHP' \
    --body '{"description": "B5S3DvPRCzBrVUxm", "displayVersion": "DOj3cvRFaTC11W0T", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePolicyVersion' test.out

#- 43 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'yf5PO3COyMvczgEp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublishPolicyVersion' test.out

#- 44 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'zZ3FbtxfhcRC7IVY' \
    --body '{"description": "a6iZ5uFRYNn3SHiW", "isDefaultOpted": true, "isMandatory": true, "policyName": "F0YbuU5ar5qTLWUC", "readableId": "y0Afgc050XIZRW49", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdatePolicy' test.out

#- 45 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    '1PO6ApCD2VXidT7w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'SetDefaultPolicy2' test.out

#- 46 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '0Oc15N8WXBPp17PA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'RetrieveSinglePolicyVersion' test.out

#- 47 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'ewqSm5x3B4t7WQnp' \
    --body '{"description": "8jXZedgt5cyNe27H", "displayVersion": "LtwtVOaxgP6Jbct8", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreatePolicyVersion' test.out

#- 48 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '43' \
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
    'uMybYGxD9IPmmsLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'AnonymizeUserAgreement' test.out

#- 53 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "3kaPj0O4zd8Tb7cU", "policyId": "NGPTBxiFFCrn7djj", "policyVersionId": "s69FTFVGUVhvKhJC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "K0PcLnEkcokKwcQ0", "policyId": "baDT9OyJ2h23GUS2", "policyVersionId": "amU7syGlElXdEAOr"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nLocLVVYamQc4wcG", "policyId": "5nDBLJoJHbiQ5duE", "policyVersionId": "5p4cfs2E41cK8QTw"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'ChangePreferenceConsent1' test.out

#- 54 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'iIAvxSvNDlmM5nQF' \
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
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "zs7fzjgyc44mEh9t", "policyId": "Rk8knYSV30lnroQe", "policyVersionId": "hMDli6t9unQLYXxm"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "dqthRxTjQ7gkZEY8", "policyId": "rG0q0Q2Qd2JzRbkF", "policyVersionId": "2I03dIjvBbA6bfbY"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "JCJjfk2TUvn95FhO", "policyId": "7VW3mbDVMDu87t0l", "policyVersionId": "dWf7iSGIiKFtWtn4"}]' \
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
    'Yr2svKM6pqLGZ0TB' \
    'ujELAUK6mQ5iZgbw' \
    'wm5iGzXtcknrgidK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'RetrieveEligibilitiesPublicIndirect' test.out

#- 61 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'upvXO6aj4hCmTC34' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 62 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'jxW4pIDwdqXpmRmu' \
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
    't9H9XyWI8bp8fQxR' \
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
    'uX91uYmtrHJbEGTU' \
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
