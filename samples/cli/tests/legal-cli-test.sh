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
legal-create-policy --body '{"affectedClientIds": ["vdiRilZ7oFgx4c8O", "jJW2OQNOs1PXhT5F", "umKtPDKJDXn7Z4U6"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "countryGroupName": "cBdW19m4eu6d5tA5", "countryType": "COUNTRY", "description": "duuyZ0GhDogqrhBR", "isHidden": false, "isHiddenPublic": false, "namespace": "5MYzYiKWe5dNRljv", "tags": ["7IPrDQQRgat0Sevk", "LGMS0lyuI9a2I9u6", "Vpbsx5w8hqUI06Up"], "typeId": "OXGSLmCVuHOPlLlk"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'vR8sKgnuRkgghGoY' --login_with_auth "Bearer foo"
legal-partial-update-policy 'upD391C2qtPYokah' --body '{"affectedClientIds": ["0MesTCf9x4rt69ln", "FjkQsfCaTmt1d67F", "XGk2s9Q0mPVo3twu"], "affectedCountries": ["a7qxNeIxPz6MbwL6", "IY69z1UaLqYSYWyt", "LPziZMdjxcBZufQx"], "basePolicyName": "GiHPllG4cYEzfTD1", "countryGroupName": "ZBm3MqHcUmLZZbSq", "countryType": "COUNTRY", "description": "mu0hpDDWVAla2l5B", "isHidden": true, "isHiddenPublic": false, "namespace": "tIuS5S5XUdjsoqwG", "tags": ["TTr1DmrhZv15T7qu", "IOvBMcaYmvCkGZ5d", "yzzWi9gwQYv7t1o7"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'AgqxpBFmaLoxozr6' 'wfNPX2bOItRMvqtl' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'B2jJCSQT279ZZPYG' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'u0rdlgdWyOtXi3ch' --body '{"contentType": "oQrpOsDBU5SepjCh", "description": "B3V0v52Dlym6puQ2", "localeCode": "3xoJ8aeCnaLpUKp4"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '4YUDjasWIPUvmEej' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'tGeoyIPa8ZRrvjj7' --body '{"attachmentChecksum": "il35MXbN9oCMNqq9", "attachmentLocation": "8SjTvhZNkSQ70D0H", "attachmentVersionIdentifier": "6BXksUC9b6i5lZC9", "contentType": "xv32e8c5csSovoqs", "description": "ZNBdte9NDUPVJf6c"}' --login_with_auth "Bearer foo"
legal-request-presigned-url '2Z0QZxfgPubTDIHr' --body '{"contentMD5": "vqAThuwjRHpKKTlm", "contentType": "Vr9XuoJbRFQSKVPH"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'bn4Xxtu7LQRENjEE' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": true, "userIds": ["I39YBHqaTHeKtW18", "6YE3p4lSck0ZHn5G", "iGeUlc9d9sogWa24"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'CKNS0GqVvUfHQvsH' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'XNUNe4mhgo5QB65l' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv 'SAiYnNjkfZrQvGgb' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'LdLsFzHkBMr1yrOM' 'lNFSrUEirnjX9fDm' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["9hsfpFDcSDG8aMVG", "LiBNrDjqoxcwgGLX", "IbeZxzfTcyiuATus"], "affectedCountries": ["meIP6rOvDz9KOsb3", "pUL4pp2ncYAHdNzD", "92k6YmJFfRByjlBi"], "basePolicyName": "uFM3FIoVk8T3GpAn", "countryGroupName": "kCmBUqg2SCnqntX9", "countryType": "COUNTRY_GROUP", "description": "0DOqOBSC2DKHRuPM", "isHidden": false, "isHiddenPublic": false, "tags": ["oeH0JT1yduat2vQR", "H8Yb33T5UBJCjfcn", "LRfxeCSz9WEi8Kll"], "typeId": "3biBfsu4jmsRE2w1"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'yEkLgh3tIYt4SqYU' --login_with_auth "Bearer foo"
legal-delete-base-policy 'TLDx9gIiDandpGT2' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 't24aOMh5eC3IHeHS' --body '{"affectedClientIds": ["KLCa3xreNDUWehwH", "3q31A806DJgas4b6", "z3LNUj7fdgLA84Z8"], "affectedCountries": ["yabWAgIUXiI07A68", "YYk6QEgJjBbEDoNf", "3n0hEoRCAcf80zfF"], "basePolicyName": "eaqC2J9jyEW6GLbc", "countryGroupName": "0NaKDUL3sa13lk1d", "countryType": "COUNTRY", "description": "BHO86IlBhnetU4Rw", "isHidden": true, "isHiddenPublic": true, "tags": ["aY9eKa699bRVhyaK", "yd4mbqoOfADMMAXF", "UXlTDBzOuYsaZA2y"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'wwrAP2aMlu7WtjCt' 'oYetOO847g8OudOf' --login_with_auth "Bearer foo"
legal-retrieve-all-policies-from-base-policy 'jnCuHZ3c46IjGa23' --login_with_auth "Bearer foo"
legal-create-policy-under-base-policy 'YvYmmDg7VYPXIuvU' --body '{"countries": ["mdb4rbkXj0ZwsVC0", "AZvkRCMNFIurjh2i", "YTZBRujIUE1Tq5jy"], "countryCode": "gL97ZVJSPqJiwv1q", "countryGroupName": "lYB1RSKs6gQxC3Gb", "countryType": "COUNTRY", "description": "0o4zGYY7KQI1AeFg", "isDefaultSelection": true, "isMandatory": true, "policyName": "qZtfNWql4nmwAft4", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-delete-localized-policy 'EYOkQ1jMD3cym8xI' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions-1 'fkOVW2grREOLx0KO' --login_with_auth "Bearer foo"
legal-create-localized-policy-version-1 'ww3HICQLfl7MUBG7' --body '{"contentType": "qtPu64yAtURKLRkb", "description": "738HGS6rDgMdIIlh", "localeCode": "S1fSiM9331m7Ta1P"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 'sKc50Kv6ecnEevcA' --login_with_auth "Bearer foo"
legal-update-localized-policy-version-1 'x2K2zkRenmPZnGBt' --body '{"attachmentChecksum": "4P7WnbdSJtjX7Zsh", "attachmentLocation": "ZyZl5x4bRXBHUTrD", "attachmentVersionIdentifier": "zZSKscfOcYu3dpCR", "contentType": "OYqUiGKXVFCmpo6s", "description": "PwVOEDSJsEK5QpNh"}' --login_with_auth "Bearer foo"
legal-request-presigned-url-1 'lI2iS5EpGhhvXYck' --body '{"contentMD5": "0upMzUYnb76tFkEO", "contentType": "RV3bu1bNCtX7W40V"}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 '6Do5sYadCCFrHHC3' --login_with_auth "Bearer foo"
legal-delete-policy-version 'DpZxkrQDXuNFviMa' --login_with_auth "Bearer foo"
legal-update-policy-version-1 'rv8mnfHK8CCmE2lP' --body '{"description": "nsbD3SGEdlwuUccE", "displayVersion": "536ugBp3HBvepnDC", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-publish-policy-version-1 'Mrok0WvGYYnx4V70' --login_with_auth "Bearer foo"
legal-unpublish-policy-version '9xbnGezKsDwG2omO' --login_with_auth "Bearer foo"
legal-delete-policy 'R2nvYI9TVqJdvzcW' --login_with_auth "Bearer foo"
legal-update-policy-1 'bfUpaXp5JMl5LL4b' --body '{"countries": ["DkQhtrHWwRVnwVBO", "sB1fPqqRRulpqpym", "TxBmZjdrrIxsB0NR"], "countryGroupName": "qOHi8pWGd1juYhiq", "description": "jRJOqB5F93zFQbJn", "isDefaultOpted": false, "isMandatory": false, "policyName": "UDpdONneAczbBdHb", "readableId": "2slt71B1SmZp2JZp", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-3 'CnPb71ORYcmQbTU5' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version-1 'JX8ccLjMXJRk0eaK' --login_with_auth "Bearer foo"
legal-create-policy-version-1 'QDOJvrTefglSs6g4' --body '{"description": "iY9u02aCNYIWekp1", "displayVersion": "8lOC3mNqF7Bl0Lcg", "isCommitted": false}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types-1 '63' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'VHfPEspxwhRON0bc' '1eMbEIjowLqc3ecj' 'XJbZDKKoxLE1Y3Dy' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "pai0rYaT5hOPjaf3", "policyId": "H0tYighU0VUfcYHJ", "policyVersionId": "bBfAKSiPW3VgsZXi"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ej52WKi6tArAURt9", "policyId": "plCSVq8PdH6hJPUA", "policyVersionId": "c0RVwXgAgntLMCua"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "V9Lx5RDA1l2Xcrci", "policyId": "YNEzvSZIPkhSgORc", "policyVersionId": "z5S5BvmgBLxh4ijF"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities 'nE3Tam69qSZ7PC6f' '6QkmZXElW9YfRSse' '6AAz3S4czz0QKFlA' --login_with_auth "Bearer foo"
legal-retrieve-policies 'VmVLu4AOec0z8eBe' --login_with_auth "Bearer foo"
legal-update-policy-version 'eoip68J1nsv4W2OJ' --body '{"description": "htafxMSJlHeb34sZ", "displayVersion": "KHcl5LLLOexL4fZv", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'CiiPDGQhNPEwiJCf' --login_with_auth "Bearer foo"
legal-update-policy '2XJVrlzqQls1ozhL' --body '{"countries": ["arzBsV6xnZ5Jrzzj", "70TdlNBJYOmpu1VC", "VA3kE8jKvgatOEBM"], "countryGroupName": "rcaug6CWVG8SWP3g", "description": "lU6muswVJnNnN7kA", "isDefaultOpted": false, "isMandatory": true, "policyName": "7j0riFc5HTHQIoVs", "readableId": "Go7dwV9DBqFKHQkE", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
legal-set-default-policy-2 'yTlUrwDTnoujQD4I' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'EiH9Z5qXn3aoRtlq' --login_with_auth "Bearer foo"
legal-create-policy-version 'OECohViHA5CzgFSy' --body '{"description": "8X1A3PrIfapq5AAe", "displayVersion": "Me4L3mDWORBVXTII", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '80' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-anonymize-user-agreement '70CaunQNxot371W9' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "cFX3SUBhyoTsMWPA", "policyId": "xUMkawaGpAyrIwMi", "policyVersionId": "f3BOdkocVTd4BxqG"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "BNXzAFdO0Khqf6ki", "policyId": "TdSGv2LFjAKY7Cbg", "policyVersionId": "sWqFWZX7kPBom8F9"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "CjtuzFMbAG9YI89h", "policyId": "mguB8FOTjMLo4b9r", "policyVersionId": "IzqYkEpstyVTBcrM"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy '8rG0rH0zcswwVeMK' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "W32iK7MGt1ixY5rA", "policyId": "1WoVeJIePF8ZrQzP", "policyVersionId": "4zvtdxdbZUpd6FJt"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "2KTK9tmmOnYnOpas", "policyId": "6ghP1y4Zi7s7QBlk", "policyVersionId": "44Z44B1GZgKg4uKx"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "CgcGLuC3brWdTYCf", "policyId": "HkIySok5DiXZtLW8", "policyVersionId": "7rGysryod3dNQrms"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'ApRA6HX3RwrKt2ec' 'ozL0TOg54vCE48L5' 'oLF6M4lNa4JUMSHN' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-2 'gqRqCV7usamANkZl' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-3 'OX9Sfo95HgXqKhTP' --login_with_auth "Bearer foo"
legal-retrieve-country-list-with-policies --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'kwfLM9uSybRzWek2' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'gZvRrvr0n9d9lvcc' --login_with_auth "Bearer foo"
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
echo "1..74"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'KMLhrTrcBE2ItBS3' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "q2LgkQuaS7RBx3vi", "policyId": "m02jBOxrZDyvpcLY", "policyVersionId": "OWA8NjxOnaEok4nO"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "2faBcAXXKlhvyH8p", "policyId": "aOJtxqMPpcVfRwNj", "policyVersionId": "547fH0XrKEDpEY8V"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "U0Am4DZhl0bQxFJ3", "policyId": "sWCqQpQ2FbKPFMyc", "policyVersionId": "MSQ4qfAacR0LgB5B"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'UXvjcu2s6w3VifnK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'qmTSoGH1XEfY6QAY' \
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
    --body '{"affectedClientIds": ["ZPV87pna08gxefTY", "n6WQ5UBEU1QAOHfZ", "iGhxOdcuDXSxSc3a"], "affectedCountries": ["KhuxaEc7M4P7UckS", "C6ePeN8i4GrFES9z", "7xueHpATHccee9GX"], "basePolicyName": "hKcjmSEwdrkEnnqK", "countryGroupName": "zFsLfYalUlfwEQKj", "countryType": "COUNTRY_GROUP", "description": "eHGebSVu0LQ40kep", "isHidden": true, "isHiddenPublic": true, "namespace": "aC4dfiOMZfEhHr39", "tags": ["UoAnaRcYp7FUjfIG", "yvfvHEsJKQQewVLM", "pysFO3Zvc1BZG99L"], "typeId": "affoflEIByYqeKN0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'meGelYF5wWaDhukU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    '4khGG4vZFTYnPkmS' \
    --body '{"affectedClientIds": ["u4PWam1jxR7SETWj", "oKqymxLD1Lcvw6T6", "teoc8fgvZDDhoO05"], "affectedCountries": ["mZEiwxxElpMYSWIe", "Vzm7z9noowmlTIKV", "owi0RY2VN4ZONJRE"], "basePolicyName": "dUQ3z9F1BxNNgnke", "countryGroupName": "4akncw7wu9TmXfJW", "countryType": "COUNTRY_GROUP", "description": "rXFgDnDkdZ9bpjb1", "isHidden": true, "isHiddenPublic": false, "namespace": "aLQjctvrK2jhsYpK", "tags": ["vecWw7Rry0KK5rgA", "PlXn77AtYoFzLAAT", "PY8P8P3cfoivvQxe"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'GO0dW8rX2MVUGKSZ' \
    '4GcLkt4pK32sJxlZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'cCTpTdRtCHvuk6B6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'XTmSLyn50sigBVZx' \
    --body '{"contentType": "iKdV57GvRyd9UuL0", "description": "2Le8HSCslsDd4M1F", "localeCode": "5qRIblS7Nz81GRaz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'PAANjfBoldFOyqA2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'clJ5gEOaCgM6Yn6R' \
    --body '{"attachmentChecksum": "ugbNEIpGBFUjOn5m", "attachmentLocation": "M7k8nbLzvtCIW5yn", "attachmentVersionIdentifier": "MKquUicAeIVXtoWA", "contentType": "XhMlW4tLqX7OICf5", "description": "oD1e6oI9FmYel0kO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'w72o8Zkgk0jS6rDW' \
    --body '{"contentMD5": "UwfhKvrf2AaH4yCW", "contentType": "rHSppnIZkNnTn3rz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'H5NvAtcvNedgS1fU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": false, "userIds": ["Mpyh9pMsQgb64ELb", "PzySa0sZoFS6xCOW", "zDMwyo4nIRysQdbu"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'fXjYnSoIFeouC2m3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    '8kXrDZWlGVE9sJ4N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'pUtKp6M9I6nEwnZh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'sjwJeGwaPSDMZz95' \
    'OYKiqaZD63xe5rru' \
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
    --body '{"affectedClientIds": ["JVfLGea0ZtlzUcuH", "AXz0UV31MfuGaXsA", "uGsZaSHevO0TQNEI"], "affectedCountries": ["4C97uAPP8PATLpUp", "3kfabxJWWSI1ECUo", "1NPpeFhUztXDgB7n"], "basePolicyName": "xeJlsBJT6Hh3OMjA", "countryGroupName": "jq2mK8lbSEEelxnb", "countryType": "COUNTRY_GROUP", "description": "bswAgt65X4N1LQZm", "isHidden": true, "isHiddenPublic": false, "tags": ["bwFEnAZaWsQJtRYo", "dtwCVUrYQue84dwm", "agRJK5PX9UcOvhPy"], "typeId": "E11TRT2SKseoe8VL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'ie0LBa36KNzjf005' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
$PYTHON -m $MODULE 'legal-delete-base-policy' \
    'CXNGehQ2aTjTDfKF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'DXC7eGL5YhJDWh9Y' \
    --body '{"affectedClientIds": ["ds2DbPcaoMdtRLTm", "SvTkQQgB7exYvmHM", "Wqc0qgV6d9yOfIML"], "affectedCountries": ["Jg46IewOXE2AkCh3", "QIZsUf8lGFXcmwTE", "xr5hPCJJztJBg0tT"], "basePolicyName": "RHclOdxIwqejxe18", "countryGroupName": "rNdb8Otq6j1mqUav", "countryType": "COUNTRY", "description": "k05HAQltnSojV4jT", "isHidden": true, "isHiddenPublic": false, "tags": ["WOaNdsimmkW2miH3", "xRHAKy4QxZkaXZ7v", "yclX2FtAz0vJjFIY"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'miEd0JPxVyQpshaD' \
    'wNqTbbFMXAMfVXe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
$PYTHON -m $MODULE 'legal-retrieve-all-policies-from-base-policy' \
    'GZeMgsRsmH1EQrYm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
$PYTHON -m $MODULE 'legal-create-policy-under-base-policy' \
    'kPKTPOlhTtSiZNCx' \
    --body '{"countries": ["uogFteTHJe4BhSSQ", "OhvQpfbBke8aEdd3", "kQD6WmOt6D7ufFVT"], "countryCode": "6xj6wySoltDxsbzx", "countryGroupName": "rlaKEfkoYjY2o6ou", "countryType": "COUNTRY_GROUP", "description": "W9UtNquwC3WgumrI", "isDefaultSelection": true, "isMandatory": false, "policyName": "4NhGztZpr4U4fwQI", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
$PYTHON -m $MODULE 'legal-delete-localized-policy' \
    'fgCUYBn2xaOBdPF0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    'JmX8qwU1cTuHHPB5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'S3DvPRCzBrVUxmDO' \
    --body '{"contentType": "j3cvRFaTC11W0TGT", "description": "Cm4fZWuk6pQxDQpK", "localeCode": "qxLGeMvr9TsvcMQ7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'dBsaIecRxIsZvD6r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    'mzVr5XT1Nxw0v1dM' \
    --body '{"attachmentChecksum": "Q9Rrbk6C2cVWf6tt", "attachmentLocation": "vbU1PO6ApCD2VXid", "attachmentVersionIdentifier": "T7w0Oc15N8WXBPp1", "contentType": "7PAewqSm5x3B4t7W", "description": "Qnp8jXZedgt5cyNe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    '27HLtwtVOaxgP6Jb' \
    --body '{"contentMD5": "ct8puMybYGxD9IPm", "contentType": "msLmu3kaPj0O4zd8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'Tb7cUNGPTBxiFFCr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
$PYTHON -m $MODULE 'legal-delete-policy-version' \
    'n7djjs69FTFVGUVh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'vKhJCmeisql14mUH' \
    --body '{"description": "VbMPimNhcZsU3VAd", "displayVersion": "MDcb4qlkiFAamqvZ", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    'KwjqPBiWXade41s3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
$PYTHON -m $MODULE 'legal-unpublish-policy-version' \
    'rH34mB2yPlRpWjmH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
$PYTHON -m $MODULE 'legal-delete-policy' \
    'ZAAvKTH8MuqIg0Cz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    'kguwuJCW7EEFB67A' \
    --body '{"countries": ["ODbi9BzupBsFpYc7", "7GtRUcCFeY5g4XgB", "sbfzqxBPNe8ae1Il"], "countryGroupName": "4aAtEbu4IjGdqthR", "description": "xTjQ7gkZEY8rG0q0", "isDefaultOpted": true, "isMandatory": false, "policyName": "kH4OotKwG3UC6XCn", "readableId": "nZxF8CmQr17W65br", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'rBBN9tU6TDm5GloF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'SKWM1eym5ydC6p25' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    'xCWTqUOYZENJ1QHZ' \
    --body '{"description": "QxPRXH7uxBJEECQE", "displayVersion": "1li3Bg7Jxc9pUnZm", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '27' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'hidwCkZwqjYLfTiC' \
    'O1NDBvQvRPnAz4Vz' \
    'W0CpoBCbyJsF5IjF' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "0W338HS6CBgVRyih", "policyId": "YNZ84CVhziXV8HwS", "policyVersionId": "mvcvcDKF19yVRafC"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vqDejvqklTSvDwuO", "policyId": "rP9lzpiX0VuFpZum", "policyVersionId": "7izxe7NPzjOa8E7w"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "PxLv9HBEUe89AwEw", "policyId": "1HO4FnKtx4XLKAml", "policyVersionId": "Dr19uJ3nq6VerzVC"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'cI8y3Cz0YqCKUh5R' \
    'D9vNAp4jinFpnQ5x' \
    'F9wwbvMZyeDeRnVf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'PUa6xVVBcq3wZpFI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'YeAg79HcLJXJ7mpV' \
    --body '{"description": "I6eTYAjdPlCiQQC3", "displayVersion": "5cj4KyOVgvnWbfRJ", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'tbECD1CYPwaiBAxf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'YL8Avt70ZUT2fSk3' \
    --body '{"countries": ["xM0UHZVNYzGMNIpW", "9k2hG0WKt4sUmanY", "LL0calqxEewuGS46"], "countryGroupName": "oSLkUrfuf4U3WeYe", "description": "A9t2ENKKWrFtHIi1", "isDefaultOpted": true, "isMandatory": true, "policyName": "MgKAOG5iDcCR5PbC", "readableId": "vDLil8wj9cKM3Ar6", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    '35hCER4nGmWGgTJf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'HlJl4tHGa4XfZcd9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'CVnGqMX9FieeEssW' \
    --body '{"description": "EUl07bhwntCVqiYO", "displayVersion": "Jf5KwMZQjzvjSozv", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '66' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'RetrieveAllPolicyTypes' test.out

#- 56 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetUserInfoStatus' test.out

#- 57 SyncUserInfo
eval_tap 0 57 'SyncUserInfo # SKIP deprecated' test.out

#- 58 InvalidateUserInfoCache
eval_tap 0 58 'InvalidateUserInfoCache # SKIP deprecated' test.out

#- 59 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'TRDl0zp9CzHFwink' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Ni4gvqgl6TZ9TGVP", "policyId": "mv34h6T7EsufmfxK", "policyVersionId": "YB4LM6H6QXmpZ9X3"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "USR1l9xLPBsmAUrD", "policyId": "9L1IiD6MlcEPhMDF", "policyVersionId": "zjHZ3sIhzOx2CXKl"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IomU3pIxM9n8D2eL", "policyId": "Me3lt9qfx2UDcgVE", "policyVersionId": "7L9FK6e0MrPc4vtx"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'k9hVKlG56HlzGr7X' \
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
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "dyRJunZPkp6ccIBn", "policyId": "WyPw8mj7gyQ7XdIs", "policyVersionId": "zGRj46COPipH1MWV"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "G0qHJCWEfOJpZm9y", "policyId": "EYWNGMy2pgSGSUOK", "policyVersionId": "68eqGJtWf1Ybgg8r"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wY9bmrvHmO07KNqX", "policyId": "9LM2IwEsdOGBXBwn", "policyVersionId": "zDX8v3xgC1Ge9Pdb"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'BulkAcceptVersionedPolicy' test.out

#- 64 IndirectBulkAcceptVersionedPolicyV2
eval_tap 0 64 'IndirectBulkAcceptVersionedPolicyV2 # SKIP deprecated' test.out

#- 65 IndirectBulkAcceptVersionedPolicy1
eval_tap 0 65 'IndirectBulkAcceptVersionedPolicy1 # SKIP deprecated' test.out

#- 66 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'RetrieveEligibilitiesPublic' test.out

#- 67 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    'TTAJ2Gp1r0sVZ6LJ' \
    'AOddIL2l3hPjNDKv' \
    '2LWfXqjr8fS79En3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'wYowBdkaZ3y6i38X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'QjLDRqkpiFK5BtiQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'RetrieveSingleLocalizedPolicyVersion3' test.out

#- 70 RetrieveCountryListWithPolicies
$PYTHON -m $MODULE 'legal-retrieve-country-list-with-policies' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RetrieveCountryListWithPolicies' test.out

#- 71 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    '272Uo9UBJWodpdws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RetrieveLatestPolicies' test.out

#- 72 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'RetrieveLatestPoliciesPublic' test.out

#- 73 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'X1jorcyR0x3YiHF8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
