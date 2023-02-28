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
basic-create-namespace --body '{"displayName": "It2vG9FP", "namespace": "2e0aPQDu"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 48, "comment": "UhG2e1Fu", "userIds": ["xtbQEqFg", "fDb7TAXD", "SZPvllJq"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["Y2k6FVci", "M5dPUSox", "d6hqC4et"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "lO6FVUpP", "description": "phYkF1bh", "gameSessionId": "oJHhG5wg", "subcategory": "9QPd0GBi", "userId": "vgBGi4nh"}' --login_with_auth "Bearer foo"
basic-get-user-status 't9bex8IB' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "o60OMqKX", "userIds": ["Cte5Ht5u", "tFmWkbac", "De0ECdOu"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "gVU9Wq7g"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "ODCfNfZj"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'ZCGhY7A1' 'spwX5yYm' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "Atg3Ctym", "name": "MgXkGQfw"}, {"code": "6Jg1WAda", "name": "5LiCEdt8"}, {"code": "62bvyvQ0", "name": "Gp7OyR3o"}], "countryGroupCode": "Qxpx34JL", "countryGroupName": "ftBwqvFa"}' --login_with_auth "Bearer foo"
basic-update-country-group 'SzEBwul8' --body '{"countries": [{"code": "Tb4aVXKs", "name": "c3gWgFT6"}, {"code": "W4eXecgj", "name": "Z8OifNU9"}, {"code": "14OBkiIL", "name": "wyBX6OzG"}], "countryGroupName": "nQdRk91e"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'Hddo714H' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'HIhoiJwZ' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["kLckrLSI", "PiOv06El", "zXSBpSoJ"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'Ih0PaQwi' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'pnfoUyio' 'DPsKs9ld' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'OdCI5CGe' --login_with_auth "Bearer foo"
basic-update-user-profile 'DlKLWdXx' --body '{"avatarLargeUrl": "1az2YSpX", "avatarSmallUrl": "nYxHZ1kI", "avatarUrl": "DcxEsS94", "customAttributes": {"83arh9yI": {}, "ODH2wqew": {}, "3BunBcZo": {}}, "dateOfBirth": "1982-09-12", "firstName": "H0f1lgeD", "language": "elvZ-nhQj_271", "lastName": "ty6nGRiJ", "status": "INACTIVE", "timeZone": "cCmo3RTG", "zipCode": "ekdHMPdY"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'tqTlnEO4' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'pL54WgEM' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'B0qPP11E' --body '{"z7E8Lzn8": {}, "GTzvR92B": {}, "dZBjhcMR": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info '27sjRmpl' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'kBHIoTbh' --body '{"2iYr7Q1G": {}, "6AcrmgCU": {}, "z8uqLOIc": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'jGMhXPZx' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'WJXCCayV' 'KQziBwfv' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids '5KYkuHOP' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '7Umqfg4S' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "i7FIMsaO", "avatarSmallUrl": "HVQ6hzch", "avatarUrl": "cum0DxDM", "customAttributes": {"1NMd4WKg": {}, "OVQHLUTL": {}, "pKKjdPk4": {}}, "dateOfBirth": "1984-11-07", "firstName": "M0wFoPef", "language": "IK_zMNH-049", "lastName": "zHAFTovT", "privateCustomAttributes": {"FTipgOXE": {}, "o2lC0uqv": {}, "7uqyq8yx": {}}, "timeZone": "sN3f2ulS", "zipCode": "98cN9I9S"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "PkR6UNNf", "avatarSmallUrl": "2GgA2Gmo", "avatarUrl": "b03cwuyN", "customAttributes": {"BZ2p2qKQ": {}, "c4W0Livo": {}, "J8g0gkf2": {}}, "dateOfBirth": "1999-02-15", "firstName": "Qj7PDpW2", "language": "Ly", "lastName": "RRkXy5R7", "privateCustomAttributes": {"We5raAQJ": {}, "lvXhNoJs": {}, "5MEzadPH": {}}, "timeZone": "VdXhLlRd"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"ybudgaBL": {}, "5YDlrydY": {}, "mPpO5qwY": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "0mDq34Vq"}' --login_with_auth "Bearer foo"
basic-public-report-user '8yPAF2nY' --body '{"category": "oMvp1DI4", "description": "2neuundF", "gameSessionId": "GScnRoFI", "subcategory": "edAqWsVb", "userId": "kzT6LbLe"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'UtVtBp1a' 'MwrZKIpi' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info '3hpxncoG' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'fPPhfWc9' --body '{"avatarLargeUrl": "mBw6lqwY", "avatarSmallUrl": "fdm5xyPA", "avatarUrl": "Y6747P3S", "customAttributes": {"QOIAzdRD": {}, "wggGHnHH": {}, "smZ6sEDf": {}}, "dateOfBirth": "1986-08-04", "firstName": "ZwOain9u", "language": "bbB_Yngw", "lastName": "nQNuQT7o", "timeZone": "CMXS5Kk0", "zipCode": "q8AOEaao"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'xq6FFgmi' --body '{"avatarLargeUrl": "ACaWNeES", "avatarSmallUrl": "pKPJlIrj", "avatarUrl": "iw6Vrand", "customAttributes": {"oB1QuqNr": {}, "S6G01CeJ": {}, "GMuVOd7o": {}}, "dateOfBirth": "1971-06-21", "firstName": "88UkhcrZ", "language": "MCal-hf", "lastName": "g585JbuT", "timeZone": "R0MWTpq5"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'woSg4sJm' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'tioaKUTe' --body '{"HRIy0M1y": {}, "lyPzpORr": {}, "Hmwv9o5e": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'q5r0EBb4' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'G4lEm0c2' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..63"

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
    --body '{"displayName": "T61SOMzD", "namespace": "4GjANj3c"}' \
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
    --body '{"actionId": 28, "comment": "0wb8BKqA", "userIds": ["tkqmgo1M", "zcBxzfvJ", "4kLO9rYp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["ZMKWegxO", "WD3XtYTR", "P7eGJDLP"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "VzDlx7Ww", "description": "rmjqtIHM", "gameSessionId": "pwk9QcJY", "subcategory": "vKDGYS3S", "userId": "aQb9WaRG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'o2tLmBJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "iQ7v1amC", "userIds": ["J0KqLQdK", "q8nhWjhW", "ReyfxBiG"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "u24EICGW"}' \
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
    --body '{"apiKey": "lxIzQygu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'Myunqlhk' \
    'wCkUC6XP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GeneratedUploadUrl' test.out

#- 17 GetGameNamespaces
$PYTHON -m $MODULE 'basic-get-game-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetGameNamespaces' test.out

#- 18 GetCountries
$PYTHON -m $MODULE 'basic-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetCountries' test.out

#- 19 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetCountryGroups' test.out

#- 20 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "kTl5iQUH", "name": "n6QL6XMY"}, {"code": "PeIOjfLS", "name": "tP4YyjfV"}, {"code": "rY5hd2JO", "name": "CnkDU3cO"}], "countryGroupCode": "SU9RE5i2", "countryGroupName": "LMmWI2VQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'jOhPLVFY' \
    --body '{"countries": [{"code": "ii6iR8Kx", "name": "dfsoXGF5"}, {"code": "ofBCttGK", "name": "fWiDn7L1"}, {"code": "s0Z3ErpQ", "name": "4HWnWXs1"}], "countryGroupName": "ij1d5NwN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    '2C53MAMG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'DeleteCountryGroup' test.out

#- 23 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetLanguages' test.out

#- 24 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetTimeZones' test.out

#- 25 GetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-get-user-profile-info-by-public-id' \
    'KYvKYqrn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["X7SBgcD3", "Y2bwRyJ8", "Vk6VY1j1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProfilePublicInfoByIds' test.out

#- 27 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetNamespacePublisher' test.out

#- 28 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ChangeNamespaceStatus' test.out

#- 29 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'pwdC8HXW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'OyjmUPC9' \
    'zUF9HBY3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'fWHd4DCZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'Nf7uSbHO' \
    --body '{"avatarLargeUrl": "gsZro4na", "avatarSmallUrl": "3lroyaAC", "avatarUrl": "OEjNfCo2", "customAttributes": {"yEP8M1n2": {}, "647L1nqd": {}, "FxxoHrZ1": {}}, "dateOfBirth": "1971-05-14", "firstName": "bjvyes26", "language": "TNN-mJTH-007", "lastName": "OPCR8BvW", "status": "INACTIVE", "timeZone": "pMeI8yhU", "zipCode": "sPn9s2jF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'enp6QGd7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    '1bMnsT67' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'gI5SvK21' \
    --body '{"fiJsf5PN": {}, "ibCXyijb": {}, "f8KXKuXB": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'nrxkMeh2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'AjhzDiLh' \
    --body '{"DDvNY6SA": {}, "65AvSaHg": {}, "HHpbmEtJ": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'KmMYTjeb' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateUserProfileStatus' test.out

#- 39 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetTime' test.out

#- 40 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetNamespaces' test.out

#- 41 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'YVfucCit' \
    'No6OICbU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGeneratedUploadUrl' test.out

#- 42 PublicGetCountries
$PYTHON -m $MODULE 'basic-public-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'PublicGetCountries' test.out

#- 43 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetLanguages' test.out

#- 44 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTimeZones' test.out

#- 45 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    'aq0xk3Rv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    '65Dqi1dz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGetUserProfileInfoByPublicId' test.out

#- 47 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespacePublisher' test.out

#- 48 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetMyProfileInfo' test.out

#- 49 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "fOilmK8O", "avatarSmallUrl": "sChrm0a4", "avatarUrl": "XltYG4rS", "customAttributes": {"PcVdds6q": {}, "SnR68YEL": {}, "9ur6DCJc": {}}, "dateOfBirth": "1981-09-15", "firstName": "dmkFgVfh", "language": "Ys_gAyS", "lastName": "tTqnw6Sh", "privateCustomAttributes": {"IWBLbp2I": {}, "xaH3VA8S": {}, "VJoFDP5f": {}}, "timeZone": "LFQrEMMC", "zipCode": "iqv0FcYh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "l5t3Zf3M", "avatarSmallUrl": "Ep6tptgD", "avatarUrl": "VfZA7RBM", "customAttributes": {"pB5D7tQt": {}, "R5CGIqfi": {}, "7wsuYPKa": {}}, "dateOfBirth": "1996-01-04", "firstName": "ZGNT9bkx", "language": "nMVP-YJfr-334", "lastName": "adRx2kEV", "privateCustomAttributes": {"YKJxX1G4": {}, "lYNQDtlZ": {}, "5D0kyQaG": {}}, "timeZone": "Z0mu8vBd"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'CreateMyProfile' test.out

#- 51 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'GetMyPrivateCustomAttributesInfo' test.out

#- 52 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"6DlnWHQH": {}, "LD9T71AL": {}, "0KTpUTtk": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 53 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetMyZipCode' test.out

#- 54 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "3Z09ovDb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'qqSbOPpQ' \
    --body '{"category": "7yGAbFr0", "description": "3nTjJUWS", "gameSessionId": "WzyybzSA", "subcategory": "HSQ8TZIH", "userId": "vZOU9MgG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    '00EtPiuf' \
    '4YYHUcTK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '5mlYVqi4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'SkLBcqQa' \
    --body '{"avatarLargeUrl": "Q4eCRuCd", "avatarSmallUrl": "2O2kwwCE", "avatarUrl": "rqdnpS1B", "customAttributes": {"OzQGSOxR": {}, "KH4MmL9J": {}, "8ppYgE53": {}}, "dateOfBirth": "1989-09-25", "firstName": "DsuoKh4R", "language": "UKqE_VLXO-CA", "lastName": "atGmZnI5", "timeZone": "LUylLF8G", "zipCode": "1bVLvxnI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'HBIBPKdt' \
    --body '{"avatarLargeUrl": "50eOMfST", "avatarSmallUrl": "isSDiFzw", "avatarUrl": "v7KC1mLs", "customAttributes": {"XARqtItM": {}, "FV4Fgupl": {}, "prKf0suA": {}}, "dateOfBirth": "1985-03-10", "firstName": "PtOAeD4B", "language": "AqHN-iO", "lastName": "W53KOhmF", "timeZone": "7nxp8sxj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    '36f2wfP6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'W0VLkQd5' \
    --body '{"d6lgcl9z": {}, "Rp4HGyev": {}, "qBjt9h02": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'c3p05zV5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'C4aI4ltR' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
