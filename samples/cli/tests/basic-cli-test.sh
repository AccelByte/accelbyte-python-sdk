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
basic-get-namespaces --login_with_auth "Bearer foo"
basic-create-namespace --body '{"displayName": "FtBxyZcD", "namespace": "XBpGlsQu"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 71, "comment": "u8vMf0Is", "userIds": ["JkTrd8ID"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["cV2zXnTK"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "jXY1bPqa", "description": "miBxx9Cs", "gameSessionId": "18EY84ek", "subcategory": "ItqRzHU1", "userId": "oh570KQB"}' --login_with_auth "Bearer foo"
basic-get-user-status 'Vaewc72k' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "rSha68n3", "userIds": ["Ynozp1C2"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "KmIQTuBd"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "NEUsxFb8"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'CJ17M7DJ' 'ZaMSxECb' --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "Zbygyoar", "name": "ORoeNHSb"}], "countryGroupCode": "8Rh3kgs9", "countryGroupName": "qqJbnQso"}' --login_with_auth "Bearer foo"
basic-update-country-group 'BgiVpP8C' --body '{"countries": [{"code": "m3yvASUo", "name": "xdxxFqmA"}], "countryGroupName": "GTJ8IEda"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'gEtp4w29' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'KOu9c19R' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["6XDqWHkk"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'pLEKMfji' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'X7jpkVZk' '3IaQYEmq' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'GodOEGt9' --login_with_auth "Bearer foo"
basic-update-user-profile 'gPOj0c6i' --body '{"avatarLargeUrl": "0JkvIas7", "avatarSmallUrl": "3ucYnFAJ", "avatarUrl": "3DK5T4Eo", "customAttributes": {"gg0Y39Uo": {}}, "dateOfBirth": "1996-03-28", "firstName": "pv5bVAgt", "language": "dHu-BqdJ", "lastName": "TQuPMz2P", "status": "ACTIVE", "timeZone": "kyU89ZPO", "zipCode": "w6zPFJ42"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'cwmzBBSM' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'NcoAAOjK' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'NjfcYHm0' --body '{"93aYgBU1": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'sqjyK0XH' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially '45PaRSOF' --body '{"QBtu23RE": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'Z8hRVX7L' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'DdYiQS9i' '7mV1C91p' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'jG9gpxL6' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'ycTQdvln' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "2LAuSQWE", "avatarSmallUrl": "XL6LFE1Y", "avatarUrl": "Ho9m126Z", "customAttributes": {"Wc8hHtWv": {}}, "dateOfBirth": "1971-11-17", "firstName": "YqgUqslA", "language": "fpI_VKuD-Sj", "lastName": "LhsVyExr", "privateCustomAttributes": {"kxoot0B7": {}}, "timeZone": "WOfercZd", "zipCode": "pMci37Ds"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "7YSfExaI", "avatarSmallUrl": "3uzLteMb", "avatarUrl": "FAlt4hr7", "customAttributes": {"HmOYiBA5": {}}, "dateOfBirth": "1976-06-02", "firstName": "AOXmlG6e", "language": "Dt", "lastName": "TFpBIcuC", "privateCustomAttributes": {"1dQY93OJ": {}}, "timeZone": "nJ6Te9vD"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"8ldz7Hu8": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "AD79kdWu"}' --login_with_auth "Bearer foo"
basic-public-report-user 'nvizU0q1' --body '{"category": "pHyhhERo", "description": "GgdrysMi", "gameSessionId": "zBGSRdP2", "subcategory": "l7DNSZ8A", "userId": "q0XiPLQX"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'Se07ZddO' 'GTMlJjBw' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'j9HJHQKs' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'eEdSXRDS' --body '{"avatarLargeUrl": "vguauw1x", "avatarSmallUrl": "T7eMwSl9", "avatarUrl": "MLH0NnTJ", "customAttributes": {"2ulNzBvw": {}}, "dateOfBirth": "1988-01-02", "firstName": "Qa547Jll", "language": "arw", "lastName": "bUt7xk6Q", "timeZone": "xyWhfqoW", "zipCode": "fJw2o8oW"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'UqvPCZ2H' --body '{"avatarLargeUrl": "zT7NXmWD", "avatarSmallUrl": "lXsuNIdQ", "avatarUrl": "JR5lsNOl", "customAttributes": {"vkfwaSbn": {}}, "dateOfBirth": "1980-06-09", "firstName": "LCgToxuV", "language": "EKjG_hiPh-Le", "lastName": "k4vj3LDp", "timeZone": "4yqDt8QU"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'ZDpxlHas' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'inGcjrkm' --body '{"RMttgjDS": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'aIVBmft3' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'Udg7p9PG' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..62"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 GetNamespaces
$PYTHON -m $MODULE 'basic-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'GetNamespaces' test.out

#- 3 CreateNamespace
$PYTHON -m $MODULE 'basic-create-namespace' \
    --body '{"displayName": "Y2H5kX4M", "namespace": "sisSX28n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateNamespace' test.out

#- 4 GetNamespace
$PYTHON -m $MODULE 'basic-get-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'GetNamespace' test.out

#- 5 DeleteNamespace
$PYTHON -m $MODULE 'basic-delete-namespace' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'DeleteNamespace' test.out

#- 6 GetActions
$PYTHON -m $MODULE 'basic-get-actions' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'GetActions' test.out

#- 7 BanUsers
$PYTHON -m $MODULE 'basic-ban-users' \
    --body '{"actionId": 53, "comment": "RxWRpv5o", "userIds": ["u5xtvd28"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["OUfCt8UJ"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "C5flNyj6", "description": "HsTtX8P3", "gameSessionId": "llnaaS9l", "subcategory": "qyygPcfk", "userId": "JIxfQZza"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    '8kNVbDxV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "Mq7HJk0F", "userIds": ["89xAc3YV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "faENtrl0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetConfig' test.out

#- 14 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'DeleteConfig' test.out

#- 15 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    --body '{"apiKey": "pTKZTXqz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'HuBMYQSA' \
    '2jz1ZOpd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetCountries
$PYTHON -m $MODULE 'basic-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetCountries' test.out

#- 18 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCountryGroups' test.out

#- 19 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "OjSyMddB", "name": "41JuMf7R"}], "countryGroupCode": "UyBHRj8I", "countryGroupName": "iRimRllH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'T6Dc40vF' \
    --body '{"countries": [{"code": "FA6gpU7E", "name": "W3x1dCpm"}], "countryGroupName": "55gOeqQI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'qcJVKmBM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'DeleteCountryGroup' test.out

#- 22 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetLanguages' test.out

#- 23 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetTimeZones' test.out

#- 24 GetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-get-user-profile-info-by-public-id' \
    '1J1IbuTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["rkbmuT1w"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserProfilePublicInfoByIds' test.out

#- 26 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetNamespacePublisher' test.out

#- 27 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ChangeNamespaceStatus' test.out

#- 28 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'OqmEnDXI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'WrBPlSay' \
    '46mv71BA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'ZAOjtFJ2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'vmTj7tT7' \
    --body '{"avatarLargeUrl": "TZHWDdCk", "avatarSmallUrl": "IsZoArWw", "avatarUrl": "PHcyFAdA", "customAttributes": {"tYciLIgR": {}}, "dateOfBirth": "1982-09-06", "firstName": "Rr0gwB9t", "language": "VPx-432", "lastName": "p1tw3L7c", "status": "ACTIVE", "timeZone": "9pqtv6Jf", "zipCode": "PZwcCVOX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'cVa80TmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'wtD2lAH0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    '1o6NdcBI' \
    --body '{"gzrDyWpF": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'BYGmmBaw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'MyoKyNpd' \
    --body '{"Aasm8xwU": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'fzOlQiZY' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfileStatus' test.out

#- 38 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetTime' test.out

#- 39 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetNamespaces' test.out

#- 40 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'OQXJ7uOT' \
    'zNMvuq2t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
$PYTHON -m $MODULE 'basic-public-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGetCountries' test.out

#- 42 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGetLanguages' test.out

#- 43 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTimeZones' test.out

#- 44 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    'Nl4CX4Ij' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'iK4DEUJR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfileInfoByPublicId' test.out

#- 46 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGetNamespacePublisher' test.out

#- 47 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetMyProfileInfo' test.out

#- 48 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "VK3l9Eb0", "avatarSmallUrl": "R1XRb0RH", "avatarUrl": "8vS1smeO", "customAttributes": {"lngrdTXC": {}}, "dateOfBirth": "1983-01-06", "firstName": "PBtkZMio", "language": "CYH", "lastName": "VS3rYp8Q", "privateCustomAttributes": {"tcEmCEVc": {}}, "timeZone": "75UfeypW", "zipCode": "jDNhzCL5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "sWS2qwO7", "avatarSmallUrl": "63iEklkz", "avatarUrl": "Lm88LpLu", "customAttributes": {"YRO3C55y": {}}, "dateOfBirth": "1987-04-29", "firstName": "wK2Jaqen", "language": "gNA", "lastName": "WiLjq06n", "privateCustomAttributes": {"6a0rW8Ef": {}}, "timeZone": "kpaXtwYZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetMyPrivateCustomAttributesInfo' test.out

#- 51 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"JaQ4WbwN": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 52 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetMyZipCode' test.out

#- 53 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "msFYetjE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'urH8eloJ' \
    --body '{"category": "zNKtRUaT", "description": "z1ETdsmw", "gameSessionId": "zjkkn9oi", "subcategory": "Ql05g7cO", "userId": "3ZMb6Ojl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicReportUser' test.out

#- 55 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'o6DMNpP2' \
    'qMrTQ1Up' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'jfU6wJhy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    '1jOVkkUl' \
    --body '{"avatarLargeUrl": "S79527EZ", "avatarSmallUrl": "25Ia8uCe", "avatarUrl": "ZFlLtEVp", "customAttributes": {"DAEbA82j": {}}, "dateOfBirth": "1983-04-02", "firstName": "q0pDE5xR", "language": "HBE", "lastName": "cM7ScSs3", "timeZone": "UOpAwIp9", "zipCode": "rRtn1PcC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'xdbumeYg' \
    --body '{"avatarLargeUrl": "OdEBWRQi", "avatarSmallUrl": "W3KFfU8i", "avatarUrl": "cH4081gR", "customAttributes": {"B1GyLfLg": {}}, "dateOfBirth": "1999-12-05", "firstName": "YuEbgUDE", "language": "jY-oRbM", "lastName": "FvfwFjTS", "timeZone": "mIEqoLyL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'eUGmomGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    '9sXTZ0v8' \
    --body '{"pqLfc5Sw": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'GnReUULD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'X4QUIbb5' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
