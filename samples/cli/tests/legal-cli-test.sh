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
legal-create-policy --body '{"affectedClientIds": ["umKtPDKJDXn7Z4U6", "vdiRilZ7oFgx4c8O", "jJW2OQNOs1PXhT5F"], "affectedCountries": ["8su8XfqlqNiTvB6S", "dAdIhUDrwoZ5Mecd", "Ki5r6QEa1ysLEzth"], "basePolicyName": "6mXhzkzWkFeZSoEA", "countryGroupName": "cBdW19m4eu6d5tA5", "countryType": "COUNTRY", "description": "duuyZ0GhDogqrhBR", "isHidden": false, "isHiddenPublic": false, "namespace": "5MYzYiKWe5dNRljv", "tags": ["LGMS0lyuI9a2I9u6", "7IPrDQQRgat0Sevk", "Vpbsx5w8hqUI06Up"], "typeId": "OXGSLmCVuHOPlLlk"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'vR8sKgnuRkgghGoY' --login_with_auth "Bearer foo"
legal-partial-update-policy 'upD391C2qtPYokah' --body '{"affectedClientIds": ["0MesTCf9x4rt69ln", "XGk2s9Q0mPVo3twu", "FjkQsfCaTmt1d67F"], "affectedCountries": ["a7qxNeIxPz6MbwL6", "IY69z1UaLqYSYWyt", "LPziZMdjxcBZufQx"], "basePolicyName": "GiHPllG4cYEzfTD1", "countryGroupName": "ZBm3MqHcUmLZZbSq", "countryType": "COUNTRY", "description": "mu0hpDDWVAla2l5B", "isHidden": true, "isHiddenPublic": false, "namespace": "tIuS5S5XUdjsoqwG", "tags": ["yzzWi9gwQYv7t1o7", "IOvBMcaYmvCkGZ5d", "TTr1DmrhZv15T7qu"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'AgqxpBFmaLoxozr6' 'wfNPX2bOItRMvqtl' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'B2jJCSQT279ZZPYG' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'u0rdlgdWyOtXi3ch' --body '{"contentType": "oQrpOsDBU5SepjCh", "description": "B3V0v52Dlym6puQ2", "localeCode": "3xoJ8aeCnaLpUKp4"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version '4YUDjasWIPUvmEej' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'tGeoyIPa8ZRrvjj7' --body '{"attachmentChecksum": "il35MXbN9oCMNqq9", "attachmentLocation": "8SjTvhZNkSQ70D0H", "attachmentVersionIdentifier": "6BXksUC9b6i5lZC9", "contentType": "xv32e8c5csSovoqs", "description": "ZNBdte9NDUPVJf6c"}' --login_with_auth "Bearer foo"
legal-request-presigned-url '2Z0QZxfgPubTDIHr' --body '{"contentMD5": "vqAThuwjRHpKKTlm", "contentType": "Vr9XuoJbRFQSKVPH"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'bn4Xxtu7LQRENjEE' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-for-multi-users --body '{"currentPublishedOnly": true, "userIds": ["6YE3p4lSck0ZHn5G", "I39YBHqaTHeKtW18", "iGeUlc9d9sogWa24"]}' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements-1 'CKNS0GqVvUfHQvsH' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version-1 'XNUNe4mhgo5QB65l' --login_with_auth "Bearer foo"
legal-download-exported-agreements-in-csv 'SAiYnNjkfZrQvGgb' --login_with_auth "Bearer foo"
legal-initiate-export-agreements-to-csv 'LdLsFzHkBMr1yrOM' 'lNFSrUEirnjX9fDm' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies-by-namespace --login_with_auth "Bearer foo"
legal-create-policy-1 --body '{"affectedClientIds": ["LiBNrDjqoxcwgGLX", "IbeZxzfTcyiuATus", "9hsfpFDcSDG8aMVG"], "affectedCountries": ["92k6YmJFfRByjlBi", "meIP6rOvDz9KOsb3", "pUL4pp2ncYAHdNzD"], "basePolicyName": "uFM3FIoVk8T3GpAn", "countryGroupName": "kCmBUqg2SCnqntX9", "countryType": "COUNTRY_GROUP", "description": "0DOqOBSC2DKHRuPM", "isHidden": false, "isHiddenPublic": false, "tags": ["LRfxeCSz9WEi8Kll", "H8Yb33T5UBJCjfcn", "oeH0JT1yduat2vQR"], "typeId": "3biBfsu4jmsRE2w1"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-1 'yEkLgh3tIYt4SqYU' --login_with_auth "Bearer foo"
legal-delete-base-policy 'TLDx9gIiDandpGT2' --login_with_auth "Bearer foo"
legal-partial-update-policy-1 't24aOMh5eC3IHeHS' --body '{"affectedClientIds": ["KLCa3xreNDUWehwH", "3q31A806DJgas4b6", "z3LNUj7fdgLA84Z8"], "affectedCountries": ["3n0hEoRCAcf80zfF", "yabWAgIUXiI07A68", "YYk6QEgJjBbEDoNf"], "basePolicyName": "eaqC2J9jyEW6GLbc", "countryGroupName": "0NaKDUL3sa13lk1d", "countryType": "COUNTRY", "description": "BHO86IlBhnetU4Rw", "isHidden": true, "isHiddenPublic": true, "tags": ["yd4mbqoOfADMMAXF", "aY9eKa699bRVhyaK", "UXlTDBzOuYsaZA2y"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country-1 'wwrAP2aMlu7WtjCt' 'oYetOO847g8OudOf' --login_with_auth "Bearer foo"
legal-retrieve-all-policies-from-base-policy 'jnCuHZ3c46IjGa23' --login_with_auth "Bearer foo"
legal-create-policy-under-base-policy 'YvYmmDg7VYPXIuvU' --body '{"countries": ["mdb4rbkXj0ZwsVC0", "YTZBRujIUE1Tq5jy", "AZvkRCMNFIurjh2i"], "countryCode": "gL97ZVJSPqJiwv1q", "countryGroupName": "lYB1RSKs6gQxC3Gb", "countryType": "COUNTRY", "description": "0o4zGYY7KQI1AeFg", "isDefaultSelection": true, "isMandatory": true, "policyName": "qZtfNWql4nmwAft4", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
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
legal-update-policy '2XJVrlzqQls1ozhL' --body '{"countries": ["70TdlNBJYOmpu1VC", "VA3kE8jKvgatOEBM", "arzBsV6xnZ5Jrzzj"], "countryGroupName": "rcaug6CWVG8SWP3g", "description": "lU6muswVJnNnN7kA", "isDefaultOpted": false, "isMandatory": true, "policyName": "7j0riFc5HTHQIoVs", "readableId": "Go7dwV9DBqFKHQkE", "shouldNotifyOnUpdate": true}' --login_with_auth "Bearer foo"
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
legal-retrieve-latest-policies-by-namespace-and-country-public-1 'KMLhrTrcBE2ItBS3' 'KtKZWe8aoFzAyBME' --login_with_auth "Bearer foo"
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
echo "1..75"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    '74HUtipUWYhWV1qx' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "WA8NjxOnaEok4nOO", "policyId": "CzfsflhjbngJOUn1", "policyVersionId": "8G5MlfDTk8aG40Nl"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "47fH0XrKEDpEY8Vn", "policyId": "ocGAjci0V3tBf2jn", "policyVersionId": "HGKXphn50c9tNLDl"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "SQ4qfAacR0LgB5BU", "policyId": "Xvjcu2s6w3VifnKq", "policyVersionId": "mTSoGH1XEfY6QAYn"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    '6WQ5UBEU1QAOHfZi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'GhxOdcuDXSxSc3aZ' \
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
    --body '{"affectedClientIds": ["6ePeN8i4GrFES9z7", "PV87pna08gxefTYK", "huxaEc7M4P7UckSC"], "affectedCountries": ["xueHpATHccee9GXh", "KcjmSEwdrkEnnqKz", "FsLfYalUlfwEQKjU"], "basePolicyName": "7eHGebSVu0LQ40ke", "countryGroupName": "pEaC4dfiOMZfEhHr", "countryType": "COUNTRY", "description": "9pysFO3Zvc1BZG99", "isHidden": true, "isHiddenPublic": true, "namespace": "bYXEcENx9xZlAcho", "tags": ["b44lONDDwMvgI0Hl", "XEQdbzIVy8alncV7", "yPR7wZNiVsF6xG2m"], "typeId": "vWgSHdfo07UctPEr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'qxyMyOK06MqQBErx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'gjVBycvU4PbmRDcr' \
    --body '{"affectedClientIds": ["m2lJFRZ3ZprZ60zM", "g0DjQjBECXvea7H1", "jhTHeh94TSenE5hC"], "affectedCountries": ["FkIf5weqZ18MH57l", "2Zsrh90ETtYmGukz", "3MnlrjcHp6B8Vj7r"], "basePolicyName": "XFgDnDkdZ9bpjb1t", "countryGroupName": "dA3QhjCMW64f4XhI", "countryType": "COUNTRY", "description": "PlXn77AtYoFzLAAT", "isHidden": true, "isHiddenPublic": true, "namespace": "8P3cfoivvQxevecW", "tags": ["w7Rry0KK5rgAGO0d", "W8rX2MVUGKSZ4GcL", "kt4pK32sJxlZcCTp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'TdRtCHvuk6B6XTmS' \
    'Lyn50sigBVZxiKdV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    '57GvRyd9UuL02Le8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'HSCslsDd4M1F5qRI' \
    --body '{"contentType": "blS7Nz81GRazPAAN", "description": "jfBoldFOyqA2clJ5", "localeCode": "gEOaCgM6Yn6RugbN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'EIpGBFUjOn5mM7k8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'nbLzvtCIW5ynMKqu' \
    --body '{"attachmentChecksum": "UicAeIVXtoWAXhMl", "attachmentLocation": "W4tLqX7OICf5oD1e", "attachmentVersionIdentifier": "6oI9FmYel0kOw72o", "contentType": "8Zkgk0jS6rDWUwfh", "description": "Kvrf2AaH4yCWrHSp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'pnIZkNnTn3rzH5Nv' \
    --body '{"contentMD5": "AtcvNedgS1fUfKmi", "contentType": "hDbmu8ePWlQMVDXE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'HeiGTnwyEw6hIWDZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 RetrieveAcceptedAgreementsForMultiUsers
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-for-multi-users' \
    --body '{"currentPublishedOnly": true, "userIds": ["nSoIFeouC2m38kXr", "yo4nIRysQdbufXjY", "DZWlGVE9sJ4NpUtK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'RetrieveAcceptedAgreementsForMultiUsers' test.out

#- 17 RetrieveAcceptedAgreements1
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements-1' \
    'p6M9I6nEwnZhsjwJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'RetrieveAcceptedAgreements1' test.out

#- 18 RetrieveAllUsersByPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version-1' \
    'eGwaPSDMZz95OYKi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrieveAllUsersByPolicyVersion1' test.out

#- 19 DownloadExportedAgreementsInCSV
$PYTHON -m $MODULE 'legal-download-exported-agreements-in-csv' \
    'qaZD63xe5rruJVfL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DownloadExportedAgreementsInCSV' test.out

#- 20 InitiateExportAgreementsToCSV
$PYTHON -m $MODULE 'legal-initiate-export-agreements-to-csv' \
    'Gea0ZtlzUcuHAXz0' \
    'UV31MfuGaXsAuGsZ' \
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
    --body '{"affectedClientIds": ["bxJWWSI1ECUo1NPp", "aSHevO0TQNEI3kfa", "eFhUztXDgB7n4C97"], "affectedCountries": ["uAPP8PATLpUpxeJl", "K8lbSEEelxnb5QxW", "sBJT6Hh3OMjAjq2m"], "basePolicyName": "G2HFnZlA6HKWW4fI", "countryGroupName": "1IQcoBQELcNlZkqT", "countryType": "COUNTRY", "description": "rKgXNwvm4e5GX6H7", "isHidden": false, "isHiddenPublic": false, "tags": ["hDJ5slzgiWZEtyd5", "XhnUcvWB28Mpusuh", "ixhtAoKiVm6URT95"], "typeId": "6LfxnbY97jjYgXch"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreatePolicy1' test.out

#- 23 RetrieveSinglePolicy1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-1' \
    'CbkXX26uEdCfQaMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicy1' test.out

#- 24 DeleteBasePolicy
$PYTHON -m $MODULE 'legal-delete-base-policy' \
    'QuTKfC0I2kNjCMDt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteBasePolicy' test.out

#- 25 PartialUpdatePolicy1
$PYTHON -m $MODULE 'legal-partial-update-policy-1' \
    'DMrentgn3DhqciwI' \
    --body '{"affectedClientIds": ["XbWhbwPwToC6knjV", "eShF9RKb9vvxuJlh", "wVnzaqSfJiQFC2gX"], "affectedCountries": ["HJWwfCjYwWkLob9g", "oda0kg16yUSpSOAj", "KLqs2nEZhpByfHZi"], "basePolicyName": "nxNfgPAwkMBsznlB", "countryGroupName": "UqnLT4AbGptKaWNv", "countryType": "COUNTRY", "description": "YWOaNdsimmkW2miH", "isHidden": true, "isHiddenPublic": false, "tags": ["TbbFMXAMfVXe0GZe", "AKy4QxZkaXZ7vmiE", "d0JPxVyQpshaDwNq"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PartialUpdatePolicy1' test.out

#- 26 RetrievePolicyCountry1
$PYTHON -m $MODULE 'legal-retrieve-policy-country-1' \
    'MgsRsmH1EQrYmkPK' \
    'TPOlhTtSiZNCxuog' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'RetrievePolicyCountry1' test.out

#- 27 RetrieveAllPoliciesFromBasePolicy
$PYTHON -m $MODULE 'legal-retrieve-all-policies-from-base-policy' \
    'FteTHJe4BhSSQkQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'RetrieveAllPoliciesFromBasePolicy' test.out

#- 28 CreatePolicyUnderBasePolicy
$PYTHON -m $MODULE 'legal-create-policy-under-base-policy' \
    '6WmOt6D7ufFVTOhv' \
    --body '{"countries": ["KEfkoYjY2o6ouRW9", "QpfbBke8aEdd36xj", "6wySoltDxsbzxrla"], "countryCode": "UtNquwC3WgumrIz4", "countryGroupName": "NhGztZpr4U4fwQIi", "countryType": "COUNTRY", "description": "XgmRasvjO4lj8m3X", "isDefaultSelection": true, "isMandatory": true, "policyName": "8qwU1cTuHHPB5S3D", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'CreatePolicyUnderBasePolicy' test.out

#- 29 DeleteLocalizedPolicy
$PYTHON -m $MODULE 'legal-delete-localized-policy' \
    'ssep2xD2NY0kABeG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'DeleteLocalizedPolicy' test.out

#- 30 RetrieveLocalizedPolicyVersions1
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions-1' \
    's9yxahld1pO0Gyf5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'RetrieveLocalizedPolicyVersions1' test.out

#- 31 CreateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-create-localized-policy-version-1' \
    'PO3COyMvczgEpzZ3' \
    --body '{"contentType": "FbtxfhcRC7IVYa6i", "description": "Z5uFRYNn3SHiWxF0", "localeCode": "YbuU5ar5qTLWUCy0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'CreateLocalizedPolicyVersion1' test.out

#- 32 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'Afgc050XIZRW491e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 33 UpdateLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-update-localized-policy-version-1' \
    '94mQjVOOBnIWhunE' \
    --body '{"attachmentChecksum": "lqZUodp3IhtCSHy1", "attachmentLocation": "ei1fIrPvfHnRN06E", "attachmentVersionIdentifier": "jRwEQlNapJRfk4f9", "contentType": "Zcw1pEHAyNFxcVTK", "description": "uAQTGh5BxjWOozGo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateLocalizedPolicyVersion1' test.out

#- 34 RequestPresignedURL1
$PYTHON -m $MODULE 'legal-request-presigned-url-1' \
    'DtsUuYo5p8ED5QZA' \
    --body '{"contentMD5": "ufwNa8lzfjv9oYMX", "contentType": "MjlVHY1AHwF3vGoa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'RequestPresignedURL1' test.out

#- 35 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'v7MK0PcLnEkcokKw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'SetDefaultPolicy1' test.out

#- 36 DeletePolicyVersion
$PYTHON -m $MODULE 'legal-delete-policy-version' \
    'cQ0baDT9OyJ2h23G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'DeletePolicyVersion' test.out

#- 37 UpdatePolicyVersion1
$PYTHON -m $MODULE 'legal-update-policy-version-1' \
    'US2amU7syGlElXdE' \
    --body '{"description": "AOrVSnLocLVVYamQ", "displayVersion": "c4wcG5nDBLJoJHbi", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePolicyVersion1' test.out

#- 38 PublishPolicyVersion1
$PYTHON -m $MODULE 'legal-publish-policy-version-1' \
    '5duE5p4cfs2E41cK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublishPolicyVersion1' test.out

#- 39 UnpublishPolicyVersion
$PYTHON -m $MODULE 'legal-unpublish-policy-version' \
    '8QTwiIAvxSvNDlmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UnpublishPolicyVersion' test.out

#- 40 DeletePolicy
$PYTHON -m $MODULE 'legal-delete-policy' \
    '5nQFMGzs7fzjgyc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeletePolicy' test.out

#- 41 UpdatePolicy1
$PYTHON -m $MODULE 'legal-update-policy-1' \
    '4mEh9tRk8knYSV30' \
    --body '{"countries": ["DY9vLh3u6EDsUmrV", "QLYXxm09wpGAbpEm", "lnroQehMDli6t9un"], "countryGroupName": "6kH4OotKwG3UC6XC", "description": "nnZxF8CmQr17W65b", "isDefaultOpted": true, "isMandatory": true, "policyName": "rBBN9tU6TDm5GloF", "readableId": "SKWM1eym5ydC6p25", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePolicy1' test.out

#- 42 SetDefaultPolicy3
$PYTHON -m $MODULE 'legal-set-default-policy-3' \
    'FtWtn4Yr2svKM6pq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'SetDefaultPolicy3' test.out

#- 43 RetrieveSinglePolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version-1' \
    'LGZ0TBujELAUK6mQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'RetrieveSinglePolicyVersion1' test.out

#- 44 CreatePolicyVersion1
$PYTHON -m $MODULE 'legal-create-policy-version-1' \
    '5iZgbwwm5iGzXtck' \
    --body '{"description": "nrgidKupvXO6aj4h", "displayVersion": "CmTC34jxW4pIDwdq", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'CreatePolicyVersion1' test.out

#- 45 RetrieveAllPolicyTypes1
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types-1' \
    '26' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'RetrieveAllPolicyTypes1' test.out

#- 46 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'CpoBCbyJsF5IjF1c' \
    '0W338HS6CBgVRyih' \
    'YNZ84CVhziXV8HwS' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "zccA8wvLsWUNd6lP", "policyId": "KvqDejvqklTSvDwu", "policyVersionId": "OrP9lzpiX0VuFpZu"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "fHgKjI9mwJSrN8jk", "policyId": "IykR2zbaI6PD7fEs", "policyVersionId": "cShnGUGUtV9GJ279"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "Dr19uJ3nq6VerzVC", "policyId": "cI8y3Cz0YqCKUh5R", "policyVersionId": "D9vNAp4jinFpnQ5x"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'IndirectBulkAcceptVersionedPolicy' test.out

#- 47 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'F9wwbvMZyeDeRnVf' \
    'PUa6xVVBcq3wZpFI' \
    'YeAg79HcLJXJ7mpV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'AdminRetrieveEligibilities' test.out

#- 48 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'I6eTYAjdPlCiQQC3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'RetrievePolicies' test.out

#- 49 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    '5cj4KyOVgvnWbfRJ' \
    --body '{"description": "tsB7cUQZ2QUAxJrI", "displayVersion": "NPXppPNO3AfmXcgw", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePolicyVersion' test.out

#- 50 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'LL0calqxEewuGS46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublishPolicyVersion' test.out

#- 51 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    '9k2hG0WKt4sUmanY' \
    --body '{"countries": ["oSLkUrfuf4U3WeYe", "A9t2ENKKWrFtHIi1", "xM0UHZVNYzGMNIpW"], "countryGroupName": "CMgKAOG5iDcCR5Pb", "description": "CvDLil8wj9cKM3Ar", "isDefaultOpted": false, "isMandatory": false, "policyName": "35hCER4nGmWGgTJf", "readableId": "HlJl4tHGa4XfZcd9", "shouldNotifyOnUpdate": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdatePolicy' test.out

#- 52 SetDefaultPolicy2
$PYTHON -m $MODULE 'legal-set-default-policy-2' \
    '0u4q1bTHXIjfJKyF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'SetDefaultPolicy2' test.out

#- 53 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    'lM0u1uuoVdn9yVoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'RetrieveSinglePolicyVersion' test.out

#- 54 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'lKNchPHNL4X3LLaG' \
    --body '{"description": "PGdqLE8SohhhuiTn", "displayVersion": "JarYYkHBDdSzBXdx", "isCommitted": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreatePolicyVersion' test.out

#- 55 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '98' \
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
    'pwhd5IQYBQuxLvPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'AnonymizeUserAgreement' test.out

#- 60 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "E3fsNy9Z9OhxXvCp", "policyId": "9y7fLD2qfCXnlUnq", "policyVersionId": "xT1WsRNMZcA92hzC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "3sIhzOx2CXKlvIom", "policyId": "U3pIxM9n8D2eLMe3", "policyVersionId": "lt9qfx2UDcgVE7L9"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "kTjgJaMYvNQOsDa4", "policyId": "bkcgepqtxjbrztee", "policyVersionId": "7QLTGAak7Kaol01D"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'ChangePreferenceConsent1' test.out

#- 61 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'K97D2xnik42miteR' \
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
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OPipH1MWVTHG0qHJ", "policyId": "CWEfOJpZm9yEYWNG", "policyVersionId": "My2pgSGSUOK68eqG"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "DxGiBnNbn0zaf7Ca", "policyId": "OSlHXrUSA6sMJzA5", "policyVersionId": "mtqISQ83TTbtefXW"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "nDe4LQdXfFBii2RA", "policyId": "MEX5RMjBFVZGYzQq", "policyVersionId": "V8d9mDdUIoiIJFNx"}]' \
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
    'uNOmUSWw18T1IxVW' \
    'CxdvPL9e4P01vxP8' \
    'xj1LyEirURERnEMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'RetrieveEligibilitiesPublicIndirect' test.out

#- 68 RetrieveSingleLocalizedPolicyVersion2
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-2' \
    'pImW6sjAHyCK5tNa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'RetrieveSingleLocalizedPolicyVersion2' test.out

#- 69 RetrieveSingleLocalizedPolicyVersion3
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-3' \
    'nGBrkzUvck3xTtmO' \
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
    'FMebS4AdlNzwog2I' \
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
    'hErkNhNcECWwchW6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 74 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'CheckReadiness' test.out

#- 75 RetrieveLatestPoliciesByNamespaceAndCountryPublic1
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public-1' \
    'zL9SkbLlrNXnGanM' \
    'azb8jvRWenURH48a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 75 'RetrieveLatestPoliciesByNamespaceAndCountryPublic1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
