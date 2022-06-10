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
basic-update-user-profile 'gPOj0c6i' --body '{"avatarLargeUrl": "0JkvIas7", "avatarSmallUrl": "3ucYnFAJ", "avatarUrl": "3DK5T4Eo", "customAttributes": {"gg0Y39Uo": {}}, "dateOfBirth": "3506-05-21", "firstName": "UTDUscbQ", "language": "JBt-KYuz-536", "lastName": "BBSMNcoA", "status": "INACTIVE", "timeZone": "OjKNjfcY", "zipCode": "Hm093aYg"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'BU1sqjyK' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info '0XH45PaR' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'SOFQBtu2' --body '{"3REZ8hRV": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'X7LGOvDd' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'YiQS9i7m' --body '{"V1C91pjG": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status '9gpxL6yc' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'vln2LAuS' 'QWEXL6LF' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'E1YHo9m1' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '26ZWc8hH' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "tWvbNYqg", "avatarSmallUrl": "UqslArFP", "avatarUrl": "iHUIvaCv", "customAttributes": {"8kU9dBBp": {}}, "dateOfBirth": "4891-12-25", "firstName": "rkxoot0B", "language": "FERC", "lastName": "Mci37Ds7", "privateCustomAttributes": {"YSfExaI3": {}}, "timeZone": "uzLteMbF", "zipCode": "Alt4hr7H"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "mOYiBA5l", "avatarSmallUrl": "tAOXmlG6", "avatarUrl": "eh1dTdoT", "customAttributes": {"FpBIcuC1": {}}, "dateOfBirth": "8381-11-01", "firstName": "z7Hu8AD7", "language": "Dw_IZuQ", "lastName": "HyhhERoG", "privateCustomAttributes": {"gdrysMiz": {}}, "timeZone": "BGSRdP2l"}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "7DNSZ8Aq"}' --login_with_auth "Bearer foo"
basic-public-report-user '0XiPLQXS' --body '{"category": "e07ZddOG", "description": "TMlJjBwj", "gameSessionId": "9HJHQKse", "subcategory": "EdSXRDSv", "userId": "guauw1xT"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url '7eMwSl9M' 'LH0NnTJ2' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'ulNzBvwJ' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'aQa547Jl' --body '{"avatarLargeUrl": "lvA8RWSp", "avatarSmallUrl": "abUt7xk6", "avatarUrl": "QxyWhfqo", "customAttributes": {"WfJw2o8o": {}}, "dateOfBirth": "5786-08-05", "firstName": "uNIdQJR5", "language": "Sn_As", "lastName": "bnsuLCgT", "timeZone": "oxuVTekJ", "zipCode": "gvg6h5HI"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'pH0Dvipl' --body '{"avatarLargeUrl": "Ek4vj3LD", "avatarSmallUrl": "p4yqDt8Q", "avatarUrl": "UZDpxlHa", "customAttributes": {"sinGcjrk": {}}, "dateOfBirth": "9441-08-30", "firstName": "IVBmft3U", "language": "GP", "lastName": "X4MsisSX", "timeZone": "28nARxWR"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'pv5ou5xt' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'vd28OUfC' --body '{"t8UJC5fl": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'Nyj6HsTt' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'X8P3llna' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "S9lqyygP", "namespace": "cfkJIxfQ"}' \
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
    --body '{"actionId": 51, "comment": "a8kNVbDx", "userIds": ["VMq7HJk0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["F89xAc3Y"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "VfaENtrl", "description": "0pTKZTXq", "gameSessionId": "zHuBMYQS", "subcategory": "A2jz1ZOp", "userId": "dOjSyMdd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'B41JuMf7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "RUyBHRj8", "userIds": ["IiRimRll"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "HT6Dc40v"}' \
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
    --body '{"apiKey": "FFA6gpU7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'EW3x1dCp' \
    'm55gOeqQ' \
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
    --body '{"countries": [{"code": "IqcJVKmB", "name": "M1J1IbuT"}], "countryGroupCode": "rrkbmuT1", "countryGroupName": "whOqmEnD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'XIWrBPlS' \
    --body '{"countries": [{"code": "ay46mv71", "name": "BAZAOjtF"}], "countryGroupName": "J2vmTj7t"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'T7TZHWDd' \
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
    'CkIsZoAr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["WwPHcyFA"]}' \
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
    'AtYciLIg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'RwFRr0gw' \
    'B9tz3vp9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '9XVlV8rK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    '3tE6n0sm' \
    --body '{"avatarLargeUrl": "ip1tw3L7", "avatarSmallUrl": "cUd9pqtv", "avatarUrl": "6JfPZwcC", "customAttributes": {"VOXcVa80": {}}, "dateOfBirth": "7547-07-30", "firstName": "6NdcBIgz", "language": "dYw-bA", "lastName": "wMyoKyNp", "status": "ACTIVE", "timeZone": "Aasm8xwU", "zipCode": "fzOlQiZY"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    '4NbOQXJ7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'uOTzNMvu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'q2tNl4CX' \
    --body '{"4IjiK4DE": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'UJRVK3l9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'Eb0R1XRb' \
    --body '{"0RH8vS1s": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'meOlngrd' \
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
    'zaPBtkZM' \
    'io4wcyhl' \
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
    'oVS3rYp8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'QtcEmCEV' \
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
    --body '{"avatarLargeUrl": "c75Ufeyp", "avatarSmallUrl": "WjDNhzCL", "avatarUrl": "5sWS2qwO", "customAttributes": {"763iEklk": {}}, "dateOfBirth": "9393-12-31", "firstName": "55yHpwK2", "language": "AQEN_nuPL", "lastName": "Ljq06n6a", "privateCustomAttributes": {"0rW8Efkp": {}}, "timeZone": "aXtwYZJa", "zipCode": "Q4WbwNms"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "FYetjEur", "avatarSmallUrl": "H8eloJzN", "avatarUrl": "KtRUaTz1", "customAttributes": {"ETdsmwzj": {}}, "dateOfBirth": "2332-02-01", "firstName": "6Ojlo6DM", "language": "PpQm_FuWj", "lastName": "y1jOVkkU", "privateCustomAttributes": {"lS79527E": {}}, "timeZone": "Z25Ia8uC"}' \
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
    '{"zipCode": "eZFlLtEV"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdateMyZipCode' test.out

#- 52 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'pDAEbA82' \
    --body '{"category": "jy74lq0p", "description": "DE5xRwh5", "gameSessionId": "b45ebpcM", "subcategory": "7ScSs3UO", "userId": "pAwIp9rR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicReportUser' test.out

#- 53 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'tn1PcCxd' \
    'bumeYgOd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGeneratedUserUploadContentUrl' test.out

#- 54 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'EBWRQiW3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetUserProfileInfo' test.out

#- 55 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'KFfU8icH' \
    --body '{"avatarLargeUrl": "4081gRB1", "avatarSmallUrl": "GyLfLg4R", "avatarUrl": "YuEbgUDE", "customAttributes": {"cJyIvsPw": {}}, "dateOfBirth": "6327-10-22", "firstName": "TSmIEqoL", "language": "lEu", "lastName": "mGX9sXTZ", "timeZone": "0v8pqLfc", "zipCode": "5SwGnReU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicUpdateUserProfile' test.out

#- 56 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'ULDX4QUI' \
    --body '{"avatarLargeUrl": "bb5nh68Z", "avatarSmallUrl": "nyUtRvW9", "avatarUrl": "hNBSFTtF", "customAttributes": {"rOmjkFrF": {}}, "dateOfBirth": "4573-10-30", "firstName": "c0kr2a0n", "language": "OOuh-AcVi_Wl", "lastName": "RuHY83bG", "timeZone": "j0HTeeWX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicCreateUserProfile' test.out

#- 57 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'lIcRidqc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetCustomAttributesInfo' test.out

#- 58 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'tDpygY0a' \
    --body '{"x476ED4M": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateCustomAttributesPartially' test.out

#- 59 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'MO9Tw2JH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetUserProfilePublicInfo' test.out

#- 60 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    '0qhWIwHW' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
