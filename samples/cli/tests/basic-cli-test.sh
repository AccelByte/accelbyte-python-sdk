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
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "8ldz7Hu8"}' --login_with_auth "Bearer foo"
basic-public-report-user 'AD79kdWu' --body '{"category": "nvizU0q1", "description": "pHyhhERo", "gameSessionId": "GgdrysMi", "subcategory": "zBGSRdP2", "userId": "l7DNSZ8A"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'q0XiPLQX' 'Se07ZddO' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'GTMlJjBw' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'j9HJHQKs' --body '{"avatarLargeUrl": "eEdSXRDS", "avatarSmallUrl": "vguauw1x", "avatarUrl": "T7eMwSl9", "customAttributes": {"MLH0NnTJ": {}}, "dateOfBirth": "1998-06-11", "firstName": "lNzBvwJa", "language": "AjLL-ABuT_114", "lastName": "oWfJw2o8", "timeZone": "oWUqvPCZ", "zipCode": "2HzT7NXm"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'WDlXsuNI' --body '{"avatarLargeUrl": "dQJR5lsN", "avatarSmallUrl": "OlvkfwaS", "avatarUrl": "bnsuLCgT", "customAttributes": {"oxuVTekJ": {}}, "dateOfBirth": "1974-06-25", "firstName": "g6h5HIpH", "language": "VIP_973", "lastName": "4yqDt8QU", "timeZone": "ZDpxlHas"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'inGcjrkm' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'RMttgjDS' --body '{"aIVBmft3": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'Udg7p9PG' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'mY2H5kX4' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..60"

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
    --body '{"displayName": "isSX28nA", "namespace": "RxWRpv5o"}' \
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
    --body '{"actionId": 40, "comment": "5xtvd28O", "userIds": ["UfCt8UJC"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["5flNyj6H"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "sTtX8P3l", "description": "lnaaS9lq", "gameSessionId": "yygPcfkJ", "subcategory": "IxfQZza8", "userId": "kNVbDxVM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'q7HJk0F8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "9xAc3YVf", "userIds": ["aENtrl0p"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "TKZTXqzH"}' \
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
    --body '{"apiKey": "uBMYQSA2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'jz1ZOpdO' \
    'jSyMddB4' \
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
    --body '{"countries": [{"code": "1JuMf7RU", "name": "yBHRj8Ii"}], "countryGroupCode": "RimRllHT", "countryGroupName": "6Dc40vFF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'A6gpU7EW' \
    --body '{"countries": [{"code": "3x1dCpm5", "name": "5gOeqQIq"}], "countryGroupName": "cJVKmBM1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'J1IbuTrr' \
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
    'kbmuT1wh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["OqmEnDXI"]}' \
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
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'ChangeNamespaceStatus' test.out

#- 28 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'BPlSay46' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'mv71BAZA' \
    'OjtFJ2vm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'Tj7tT7TZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'HWDdCkIs' \
    --body '{"avatarLargeUrl": "ZoArWwPH", "avatarSmallUrl": "cyFAdAtY", "avatarUrl": "ciLIgRwF", "customAttributes": {"Rr0gwB9t": {}}, "dateOfBirth": "1983-06-19", "firstName": "p99XVlV8", "language": "kTe_TW", "lastName": "3L7cUd9p", "status": "INACTIVE", "timeZone": "tv6JfPZw", "zipCode": "cCVOXcVa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    '80TmCwtD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    '2lAH01o6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'NdcBIgzr' \
    --body '{"DyWpFBYG": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'mmBawMyo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'KyNpdAas' \
    --body '{"m8xwUfzO": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'lQiZY4Nb' \
    --body '{"status": "INACTIVE"}' \
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
    'OTzNMvuq' \
    '2tNl4CX4' \
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
    'IjiK4DEU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'JRVK3l9E' \
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
    --body '{"avatarLargeUrl": "b0R1XRb0", "avatarSmallUrl": "RH8vS1sm", "avatarUrl": "eOlngrdT", "customAttributes": {"XCzaPBtk": {}}, "dateOfBirth": "1996-10-28", "firstName": "io4wcyhl", "language": "vs_CeMc_YP", "lastName": "WjDNhzCL", "privateCustomAttributes": {"5sWS2qwO": {}}, "timeZone": "763iEklk", "zipCode": "zLm88LpL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "uYRO3C55", "avatarSmallUrl": "yHpwK2Ja", "avatarUrl": "qenDGn7a", "customAttributes": {"2NUplWiL": {}}, "dateOfBirth": "1975-05-12", "firstName": "06n6a0rW", "language": "FKP-Wn", "lastName": "msFYetjE", "privateCustomAttributes": {"urH8eloJ": {}}, "timeZone": "zNKtRUaT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateMyProfile' test.out

#- 50 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetMyZipCode' test.out

#- 51 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "z1ETdsmw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'zjkkn9oi' \
    --body '{"category": "Ql05g7cO", "description": "3ZMb6Ojl", "gameSessionId": "o6DMNpP2", "subcategory": "qMrTQ1Up", "userId": "jfU6wJhy"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    '1jOVkkUl' \
    'S79527EZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '25Ia8uCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'ZFlLtEVp' \
    --body '{"avatarLargeUrl": "DAEbA82j", "avatarSmallUrl": "y74lq0pD", "avatarUrl": "E5xRwh5b", "customAttributes": {"45ebpcM7": {}}, "dateOfBirth": "1993-01-13", "firstName": "Ss3UOpAw", "language": "PRrT", "lastName": "CxdbumeY", "timeZone": "gOdEBWRQ", "zipCode": "iW3KFfU8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'icH4081g' \
    --body '{"avatarLargeUrl": "RB1GyLfL", "avatarSmallUrl": "g4RYuEbg", "avatarUrl": "UDEcJyIv", "customAttributes": {"sPwOr0Bm": {}}, "dateOfBirth": "1994-03-02", "firstName": "FvfwFjTS", "language": "ie_lEug", "lastName": "omGX9sXT", "timeZone": "Z0v8pqLf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'c5SwGnRe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'UULDX4QU' \
    --body '{"Ibb5nh68": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'ZnyUtRvW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    '9hNBSFTt' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
