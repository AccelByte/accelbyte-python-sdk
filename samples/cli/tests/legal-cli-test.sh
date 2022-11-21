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
legal-change-preference-consent 'TSDvRxnS' --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "9Jjnz6Jy", "policyId": "fYQFd1iK", "policyVersionId": "UP7gGXUy"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MOe19OND", "policyId": "PfDXbS40", "policyVersionId": "XI2deU2I"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MULrODZz", "policyId": "brcEy6Cp", "policyVersionId": "QOA0MiFA"}]' --login_with_auth "Bearer foo"
legal-retrieve-accepted-agreements 'HyunMg47' --login_with_auth "Bearer foo"
legal-retrieve-all-users-by-policy-version 'P1go8WuC' --login_with_auth "Bearer foo"
legal-retrieve-all-legal-policies --login_with_auth "Bearer foo"
legal-create-policy --body '{"affectedClientIds": ["NLhOfGjE", "YFB9LtjB", "15phm0GG"], "affectedCountries": ["d4KXVbib", "hGVsFzoR", "xIgZZrTK"], "basePolicyName": "njw5u7iG", "description": "uqjol2h6", "namespace": "FunLejJQ", "tags": ["pDF2UzZ6", "Yy45BvVx", "QYlZeTew"], "typeId": "bllHWtlQ"}' --login_with_auth "Bearer foo"
legal-retrieve-single-policy 'kXhPvUFp' --login_with_auth "Bearer foo"
legal-partial-update-policy '4aGee4lT' --body '{"affectedClientIds": ["DPrhmzuJ", "a7dY2OeQ", "e3d6QZO5"], "affectedCountries": ["vy7NmIOO", "iDgK3eVe", "hdt0dkIx"], "basePolicyName": "V02mKDXE", "description": "MaKHm4N6", "namespace": "NVw8aCnv", "tags": ["gjwsXT5G", "an07mhJB", "EXRr3Qhp"]}' --login_with_auth "Bearer foo"
legal-retrieve-policy-country 'Sk2tYJzn' 'MgcATqGw' --login_with_auth "Bearer foo"
legal-retrieve-localized-policy-versions 'x3Vv3JJi' --login_with_auth "Bearer foo"
legal-create-localized-policy-version 'HnvKnuLt' --body '{"contentType": "PNrmvTjm", "description": "S1ZCUxQi", "localeCode": "KLsUMb2w"}' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version 'tXbumiwV' --login_with_auth "Bearer foo"
legal-update-localized-policy-version 'DLzsYPar' --body '{"attachmentChecksum": "yeuLPQYx", "attachmentLocation": "NVfiaNHt", "attachmentVersionIdentifier": "SJYODQbi", "contentType": "1AciYe1l", "description": "YToHbYQQ"}' --login_with_auth "Bearer foo"
legal-request-presigned-url '30SxvX22' --body '{"contentMD5": "9Dt3fJBY", "contentType": "3OpSHAey"}' --login_with_auth "Bearer foo"
legal-set-default-policy 'kd07vt9i' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy 'O5VfDER6' 'WTStnyxh' 'BaMsQ26E' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "MVUkEcJ8", "policyId": "jSBROtkZ", "policyVersionId": "TiPtJ0X0"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "VXrvh9e9", "policyId": "taqiIexB", "policyVersionId": "sIhYGt48"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "FFvCFpqT", "policyId": "DioXd8kk", "policyVersionId": "KiItksqy"}]' --login_with_auth "Bearer foo"
legal-admin-retrieve-eligibilities '0g4kPabk' 'bb40QnxB' 'lQ3y6Mrc' --login_with_auth "Bearer foo"
legal-retrieve-policies 'iYobiwkj' --login_with_auth "Bearer foo"
legal-update-policy-version 'nmoaB7bS' --body '{"description": "loQtxvlW", "displayVersion": "KEEuaexg", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-publish-policy-version 'MwNhwBHp' --login_with_auth "Bearer foo"
legal-update-policy 'PhFnUb2B' --body '{"description": "1y922PXZ", "isDefaultOpted": false, "isMandatory": true, "policyName": "cKkhqdqV", "readableId": "YZpZNRh8", "shouldNotifyOnUpdate": false}' --login_with_auth "Bearer foo"
legal-set-default-policy-1 '8BzOrJRG' --login_with_auth "Bearer foo"
legal-retrieve-single-policy-version 'OyNkyPNY' --login_with_auth "Bearer foo"
legal-create-policy-version 'WgoDDT6N' --body '{"description": "YeMOeISX", "displayVersion": "fgVuAWS5", "isCommitted": true}' --login_with_auth "Bearer foo"
legal-retrieve-all-policy-types '9' --login_with_auth "Bearer foo"
legal-get-user-info-status --login_with_auth "Bearer foo"
legal-sync-user-info --login_with_auth "Bearer foo"
legal-invalidate-user-info-cache --login_with_auth "Bearer foo"
legal-anonymize-user-agreement 'oXF59dVJ' --login_with_auth "Bearer foo"
legal-change-preference-consent-1 --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "vkYrDtMZ", "policyId": "wdXnnCar", "policyVersionId": "amEjldLi"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "ANTGzswU", "policyId": "oFo775md", "policyVersionId": "9bJJFh9Y"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "vGuIbbCb", "policyId": "Bstbld5P", "policyVersionId": "rDimK7U0"}]' --login_with_auth "Bearer foo"
legal-accept-versioned-policy 'EfjUsEd2' --login_with_auth "Bearer foo"
legal-retrieve-agreements-public --login_with_auth "Bearer foo"
legal-bulk-accept-versioned-policy --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "RZIri8n9", "policyId": "Zh3IlK6y", "policyVersionId": "MG1kF3Cc"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "KUgpRS6e", "policyId": "tGnckSwE", "policyVersionId": "sYh9jsC3"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "hUyia509", "policyId": "r0XtzUMy", "policyVersionId": "WsAdmv2e"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-v2 'n653UplO' 'ufl54tcX' '4krNfeST' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "pkmM7qVM", "policyId": "Cn8ExdWv", "policyVersionId": "YdgyrelC"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Rj6FyzRB", "policyId": "pRyAW2hn", "policyVersionId": "ONvEpIeU"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "89IYSOkO", "policyId": "FwvfObpo", "policyVersionId": "vkGEAQmU"}]' --login_with_auth "Bearer foo"
legal-indirect-bulk-accept-versioned-policy-1 'hfFBY1Zt' --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ARJfR8Rf", "policyId": "L7DvvWF2", "policyVersionId": "Z0rjTX88"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "LYaoCf6y", "policyId": "sD68WZlU", "policyVersionId": "K1vvJkwZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "W5xKKI9a", "policyId": "168GGqF6", "policyVersionId": "ygO647MR"}]' --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public --login_with_auth "Bearer foo"
legal-retrieve-eligibilities-public-indirect 'QC36ysEq' 'Tzh8Mixc' 'AVefdajm' --login_with_auth "Bearer foo"
legal-retrieve-single-localized-policy-version-1 '0QMhMrqA' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies 'krAsTIZ9' --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-public --login_with_auth "Bearer foo"
legal-retrieve-latest-policies-by-namespace-and-country-public 'qYaDFZlX' --login_with_auth "Bearer foo"
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
echo "1..42"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ChangePreferenceConsent
$PYTHON -m $MODULE 'legal-change-preference-consent' \
    'ibPAgDmx' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "n5Pmt5gc", "policyId": "ORsTxtHD", "policyVersionId": "rp6q9GCb"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "soQJtSrq", "policyId": "Uw1elttE", "policyVersionId": "CC6IykoK"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "oAFUnJTf", "policyId": "vf1cMvHP", "policyVersionId": "bUkL5qnR"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ChangePreferenceConsent' test.out

#- 3 RetrieveAcceptedAgreements
$PYTHON -m $MODULE 'legal-retrieve-accepted-agreements' \
    'N7SaSMID' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'RetrieveAcceptedAgreements' test.out

#- 4 RetrieveAllUsersByPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-all-users-by-policy-version' \
    'TbXLtluo' \
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
    --body '{"affectedClientIds": ["OLh1PnEk", "I8WK91j7", "hG6w6Apx"], "affectedCountries": ["UlASZbCH", "RASWph6q", "FLIirVHO"], "basePolicyName": "9tGu6X4R", "description": "LU8RAz3k", "namespace": "dLHrAql5", "tags": ["mBm8wyPX", "tbEpmMpM", "DJsxxabz"], "typeId": "SFjdXRDP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'CreatePolicy' test.out

#- 7 RetrieveSinglePolicy
$PYTHON -m $MODULE 'legal-retrieve-single-policy' \
    'ir5YFYIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'RetrieveSinglePolicy' test.out

#- 8 PartialUpdatePolicy
$PYTHON -m $MODULE 'legal-partial-update-policy' \
    'CddRGrvr' \
    --body '{"affectedClientIds": ["cvojArv4", "YGe8c37n", "uRNkWtYW"], "affectedCountries": ["Kkg9mWBY", "86QWWt4l", "wGQJ87rd"], "basePolicyName": "aZRmLPqH", "description": "4sLX82ZW", "namespace": "KZsNGKh2", "tags": ["jUkZPKm4", "RElyLGMA", "0UC8nd84"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'PartialUpdatePolicy' test.out

#- 9 RetrievePolicyCountry
$PYTHON -m $MODULE 'legal-retrieve-policy-country' \
    'k28hBTBT' \
    'fXpZweHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'RetrievePolicyCountry' test.out

#- 10 RetrieveLocalizedPolicyVersions
$PYTHON -m $MODULE 'legal-retrieve-localized-policy-versions' \
    'lOSedJ1P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'RetrieveLocalizedPolicyVersions' test.out

#- 11 CreateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-create-localized-policy-version' \
    'npnxJJ7t' \
    --body '{"contentType": "Zt6Cx3xL", "description": "SLePF6zw", "localeCode": "pbEUrCx3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'CreateLocalizedPolicyVersion' test.out

#- 12 RetrieveSingleLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version' \
    'V13wpOat' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'RetrieveSingleLocalizedPolicyVersion' test.out

#- 13 UpdateLocalizedPolicyVersion
$PYTHON -m $MODULE 'legal-update-localized-policy-version' \
    'jqCD2nEB' \
    --body '{"attachmentChecksum": "LhD674Vz", "attachmentLocation": "I8CzMOiC", "attachmentVersionIdentifier": "fVdYeRiO", "contentType": "hm51FtHV", "description": "vOF5HGPj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'UpdateLocalizedPolicyVersion' test.out

#- 14 RequestPresignedURL
$PYTHON -m $MODULE 'legal-request-presigned-url' \
    'tlBBPpUC' \
    --body '{"contentMD5": "eGQtPHCz", "contentType": "tqH97CCH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'RequestPresignedURL' test.out

#- 15 SetDefaultPolicy
$PYTHON -m $MODULE 'legal-set-default-policy' \
    'HTdi2QCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'SetDefaultPolicy' test.out

#- 16 IndirectBulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy' \
    'ivh6dK2V' \
    'hAwHVKRM' \
    'PJJ57jxP' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "IDNQwBf4", "policyId": "07ZZdiMm", "policyVersionId": "hf823Euj"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "K0RFqpoM", "policyId": "WUv8rtjx", "policyVersionId": "72iPF21D"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "wo04MutZ", "policyId": "M0OlUycs", "policyVersionId": "Eu9EK5Yr"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'IndirectBulkAcceptVersionedPolicy' test.out

#- 17 AdminRetrieveEligibilities
$PYTHON -m $MODULE 'legal-admin-retrieve-eligibilities' \
    'QQQwabhl' \
    'TQQRDPFs' \
    'GWRHoKDU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRetrieveEligibilities' test.out

#- 18 RetrievePolicies
$PYTHON -m $MODULE 'legal-retrieve-policies' \
    'U8IRMoZm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'RetrievePolicies' test.out

#- 19 UpdatePolicyVersion
$PYTHON -m $MODULE 'legal-update-policy-version' \
    'BRx1mDXm' \
    --body '{"description": "u8QIrk6T", "displayVersion": "X13c04vE", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdatePolicyVersion' test.out

#- 20 PublishPolicyVersion
$PYTHON -m $MODULE 'legal-publish-policy-version' \
    'g6DDZC3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublishPolicyVersion' test.out

#- 21 UpdatePolicy
$PYTHON -m $MODULE 'legal-update-policy' \
    'Kp4q8JAj' \
    --body '{"description": "6I68eF3T", "isDefaultOpted": false, "isMandatory": false, "policyName": "cPb9jthl", "readableId": "3C3LjDcs", "shouldNotifyOnUpdate": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdatePolicy' test.out

#- 22 SetDefaultPolicy1
$PYTHON -m $MODULE 'legal-set-default-policy-1' \
    'c871RVIA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'SetDefaultPolicy1' test.out

#- 23 RetrieveSinglePolicyVersion
$PYTHON -m $MODULE 'legal-retrieve-single-policy-version' \
    '0k8ltUm3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'RetrieveSinglePolicyVersion' test.out

#- 24 CreatePolicyVersion
$PYTHON -m $MODULE 'legal-create-policy-version' \
    'Ucg3DkHD' \
    --body '{"description": "BNe0uVBW", "displayVersion": "2ndbvIVI", "isCommitted": true}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'CreatePolicyVersion' test.out

#- 25 RetrieveAllPolicyTypes
$PYTHON -m $MODULE 'legal-retrieve-all-policy-types' \
    '0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'RetrieveAllPolicyTypes' test.out

#- 26 GetUserInfoStatus
$PYTHON -m $MODULE 'legal-get-user-info-status' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetUserInfoStatus' test.out

#- 27 SyncUserInfo
$PYTHON -m $MODULE 'legal-sync-user-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'SyncUserInfo' test.out

#- 28 InvalidateUserInfoCache
$PYTHON -m $MODULE 'legal-invalidate-user-info-cache' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'InvalidateUserInfoCache' test.out

#- 29 AnonymizeUserAgreement
$PYTHON -m $MODULE 'legal-anonymize-user-agreement' \
    'KjSoO7vl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserAgreement' test.out

#- 30 ChangePreferenceConsent1
$PYTHON -m $MODULE 'legal-change-preference-consent-1' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "b6ItEXOX", "policyId": "oha0rt6B", "policyVersionId": "hf5bX9zF"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "oxqvLlIu", "policyId": "31ULtDiu", "policyVersionId": "SCobCytZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "bOznFMP5", "policyId": "hOxTFa33", "policyVersionId": "o8dkApIB"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'ChangePreferenceConsent1' test.out

#- 31 AcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-accept-versioned-policy' \
    'oe0JAqml' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AcceptVersionedPolicy' test.out

#- 32 RetrieveAgreementsPublic
$PYTHON -m $MODULE 'legal-retrieve-agreements-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'RetrieveAgreementsPublic' test.out

#- 33 BulkAcceptVersionedPolicy
$PYTHON -m $MODULE 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ZPm0LK22", "policyId": "bLzOVMnf", "policyVersionId": "JXujcTdm"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "Bbh8Mmwc", "policyId": "ppMhAwdg", "policyVersionId": "LgwJ76jR"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "DxDgfdmt", "policyId": "WYn437vo", "policyVersionId": "d2CZBkZo"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'BulkAcceptVersionedPolicy' test.out

#- 34 IndirectBulkAcceptVersionedPolicyV2
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-v2' \
    'hASPhIpr' \
    'KQq5FDYq' \
    '62quQNwN' \
    --body '[{"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "H3QLH6Ek", "policyId": "3NgYcuMe", "policyVersionId": "NpLNh2qa"}, {"isAccepted": true, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "ol38gSvD", "policyId": "DEhJtQn5", "policyVersionId": "q5zY0zDi"}, {"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "nLm9tOuX", "policyId": "yTUgxTH1", "policyVersionId": "1tAPliRk"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'IndirectBulkAcceptVersionedPolicyV2' test.out

#- 35 IndirectBulkAcceptVersionedPolicy1
$PYTHON -m $MODULE 'legal-indirect-bulk-accept-versioned-policy-1' \
    '3Ob8rUY4' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "OPVDXszB", "policyId": "DsJVzbgL", "policyVersionId": "5Fo9Q1XZ"}, {"isAccepted": false, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "p1zud2hJ", "policyId": "kYKXY2mo", "policyVersionId": "o7h7qYMM"}, {"isAccepted": true, "isNeedToSendEventMarketing": true, "localizedPolicyVersionId": "6b691QmP", "policyId": "CysRQRd3", "policyVersionId": "UqjC2NiO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'IndirectBulkAcceptVersionedPolicy1' test.out

#- 36 RetrieveEligibilitiesPublic
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'RetrieveEligibilitiesPublic' test.out

#- 37 RetrieveEligibilitiesPublicIndirect
$PYTHON -m $MODULE 'legal-retrieve-eligibilities-public-indirect' \
    '7EBo6Rvc' \
    'l3fvjWKw' \
    '5OwwKGIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'RetrieveEligibilitiesPublicIndirect' test.out

#- 38 RetrieveSingleLocalizedPolicyVersion1
$PYTHON -m $MODULE 'legal-retrieve-single-localized-policy-version-1' \
    'E1wumQrs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'RetrieveSingleLocalizedPolicyVersion1' test.out

#- 39 RetrieveLatestPolicies
$PYTHON -m $MODULE 'legal-retrieve-latest-policies' \
    'pRx7Mads' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'RetrieveLatestPolicies' test.out

#- 40 RetrieveLatestPoliciesPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-public' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'RetrieveLatestPoliciesPublic' test.out

#- 41 RetrieveLatestPoliciesByNamespaceAndCountryPublic
$PYTHON -m $MODULE 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'mAHSM6iP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'RetrieveLatestPoliciesByNamespaceAndCountryPublic' test.out

#- 42 CheckReadiness
$PYTHON -m $MODULE 'legal-check-readiness' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'CheckReadiness' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
