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
basic-create-namespace --body '{"displayName": "VsYG0wKv", "namespace": "kp093LZA"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 12, "comment": "Claxk9Hd", "userIds": ["HX0RLmfl", "w6AeobVD", "QmoaVqKa"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["HR2b3YLA", "xgfKSvkv", "XGiapzKg"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "vcD1RgbL", "description": "jZLEOIXy", "gameSessionId": "r5NWql1X", "subcategory": "bAaAjSFq", "userId": "dr9bHZ5V"}' --login_with_auth "Bearer foo"
basic-get-user-status '9a3K3sbV' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "4nsrqKeD", "userIds": ["YiQrsO91", "l4QCURrJ", "Ag1bobls"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "CSZV5B6f"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "K1yfv9AU"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'RqVNXEln' 'foSK62ad' --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "wx9Tqp8s", "name": "ZPllf89Z"}, {"code": "NKQGpU3h", "name": "EEKYbSOi"}, {"code": "YwPFljva", "name": "xkaAu3Mr"}], "countryGroupCode": "B5tydoqX", "countryGroupName": "RN0uKt4S"}' --login_with_auth "Bearer foo"
basic-update-country-group 'MLcBH9L9' --body '{"countries": [{"code": "mutgaC8j", "name": "NYaQhRyT"}, {"code": "I6mwtCqG", "name": "9XZlpYGP"}, {"code": "2GxCJsCJ", "name": "yDgL7i2g"}], "countryGroupName": "C3FvR2rm"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'z5EJLK0x' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'MBoMl1BV' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["jiYOeHaf", "d7LTyagk", "s9Cp8xWI"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile '93HSa3oc' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url '2NFAW7J8' 'T3X5ju82' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'JEk32YUp' --login_with_auth "Bearer foo"
basic-update-user-profile 'R6buYkWe' --body '{"avatarLargeUrl": "sB2Z8I3l", "avatarSmallUrl": "vNU8qxp6", "avatarUrl": "EbrW1f5B", "customAttributes": {"JmBI0kTi": {}, "N7aolRxK": {}, "iN0LxsvB": {}}, "dateOfBirth": "1976-11-13", "firstName": "W1Q7ONoJ", "language": "YU_QOLL", "lastName": "MVIWPavG", "status": "ACTIVE", "timeZone": "9WmrZJ82", "zipCode": "yvGw3FJK"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'Jrprca79' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'foAFemZe' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'zU3dnDin' --body '{"H71st80G": {}, "n40Uyi37": {}, "X8S2Vgez": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info '6VdSdwO0' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially '22eYRLBS' --body '{"c22QEQJD": {}, "BKtQB1kq": {}, "s3gwIw99": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'ApU187SK' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'MTBsVShv' 'h4ae8tVo' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'DFzYv0RQ' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'q9rhQITA' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "n8zRA0rC", "avatarSmallUrl": "uZth5lQR", "avatarUrl": "7sRfTUXP", "customAttributes": {"U3Hgh8tQ": {}, "BE90ZqNa": {}, "S3fhs4Hv": {}}, "dateOfBirth": "1999-06-17", "firstName": "EyWIJIGN", "language": "aOaH_dzxc", "lastName": "NRdCs4uB", "privateCustomAttributes": {"W6c5N96F": {}, "C4EDffrN": {}, "gHFLjID6": {}}, "timeZone": "sd8YIyP3", "zipCode": "bcAk0hCa"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "HXXq9cgJ", "avatarSmallUrl": "gqOj9dXU", "avatarUrl": "5lMf2Rqi", "customAttributes": {"Llxe2dCU": {}, "0FmkipEV": {}, "pzXSy6Qo": {}}, "dateOfBirth": "1999-09-21", "firstName": "FTO5tznw", "language": "VmKN_aRKm", "lastName": "ZKETxkNY", "privateCustomAttributes": {"KUez4Ire": {}, "cw6vbV7r": {}, "OCQPUEGq": {}}, "timeZone": "okDnp8Rj"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"kSd5r6b4": {}, "wsm2c4fN": {}, "0ajeup3v": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "vjL7LgN8"}' --login_with_auth "Bearer foo"
basic-public-report-user 'H5V494yR' --body '{"category": "pBTRhVNn", "description": "SHcmeH4F", "gameSessionId": "9rijlkrP", "subcategory": "u0crGGWr", "userId": "m7xv81mH"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'zLlaMifM' 'u2YvL6o9' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'WlxRO6la' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'nxbPAIIf' --body '{"avatarLargeUrl": "Et1CcnSD", "avatarSmallUrl": "jv5AvI41", "avatarUrl": "xfaZXlCU", "customAttributes": {"Ri7Fc9NF": {}, "IAfKR66S": {}, "q3to4qUO": {}}, "dateOfBirth": "1987-09-30", "firstName": "GnqzvTft", "language": "cte-426", "lastName": "LHAjTsjx", "timeZone": "Xtqg0Z1t", "zipCode": "1ok1RIrc"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'BzKnYTxR' --body '{"avatarLargeUrl": "hmyqKdbD", "avatarSmallUrl": "msXkFvoy", "avatarUrl": "nDogZ48V", "customAttributes": {"0PUzM05z": {}, "9Nk1g1sX": {}, "WXFvhR8y": {}}, "dateOfBirth": "1990-07-20", "firstName": "umovxsE6", "language": "LoyV-htzB", "lastName": "eHP1cN5L", "timeZone": "pTjlKit9"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'fnfrgnnc' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially '7wceUENt' --body '{"XdjbJbRh": {}, "Z7EFL5WN": {}, "0ViJF9rd": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'y8O6f8Do' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status '9104dbHG' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "TTNRN4Js", "namespace": "IZ1FXq5r"}' \
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
    --body '{"actionId": 76, "comment": "8wiH1sVg", "userIds": ["LfCs45yX", "1rN1HwuZ", "TegIGGzO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["wwLnpYpG", "gEcJxWLQ", "1wTIlf9R"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "SmFqDaQS", "description": "GPeCv1Yv", "gameSessionId": "8KEpO5QV", "subcategory": "8LczgECr", "userId": "7XqNJMHO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'jqBNZT7m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "o4HoDYyB", "userIds": ["uv4LCli5", "IrI71QYE", "WFjDUwMO"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "DDM5uHsG"}' \
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
    --body '{"apiKey": "IEVx74Gt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'LQdzGmlM' \
    'l1q0OxpD' \
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
    --body '{"countries": [{"code": "Uy5OaT3U", "name": "cSOPwmJV"}, {"code": "u2rTjy20", "name": "tFO3h3df"}, {"code": "PUJNdlZ8", "name": "YQTWERMT"}], "countryGroupCode": "rFlwFnHt", "countryGroupName": "XFd6Hgo3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'cBIzMa9g' \
    --body '{"countries": [{"code": "mSKmZuP2", "name": "PLaZZMx5"}, {"code": "IJFq8oVE", "name": "CcoFVCzb"}, {"code": "3SGkP4G4", "name": "ABUnH1Bf"}], "countryGroupName": "ZUMxg56N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    '2PhUkGJi' \
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
    'LfvNSbrw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["Lv0c9u60", "sA2OWfkH", "5QXfNTbK"]}' \
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
    'opl157hG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'gKHJpVnO' \
    'rhrGZLMg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'nkTj09SR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'kHpzeOsS' \
    --body '{"avatarLargeUrl": "cDZRtBcF", "avatarSmallUrl": "wc3aTeIh", "avatarUrl": "9lrLoPip", "customAttributes": {"pJMFUrwJ": {}, "8dTEybJ0": {}, "bjYJc2mb": {}}, "dateOfBirth": "1991-12-15", "firstName": "U848JDSR", "language": "Lr_162", "lastName": "NyBLCkKm", "status": "ACTIVE", "timeZone": "MujrVnv5", "zipCode": "rmUwQQ26"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'L5foLxUw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'R0VB8M3j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'yiN5e4lf' \
    --body '{"sjaYFexM": {}, "vYW0Q5cw": {}, "n98OiXxP": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'vHP5r022' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'Snn2cB3Y' \
    --body '{"aHE27idb": {}, "IO31aLtt": {}, "v0fH6nzT": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'inP6eMQt' \
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
    'OlnQhBPs' \
    'nUyqdWrj' \
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
    'DvvWARW4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'nD2AvVHw' \
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
    --body '{"avatarLargeUrl": "rXBfGwds", "avatarSmallUrl": "guvBo4Ky", "avatarUrl": "LtsrSNhr", "customAttributes": {"Y2dTaVnD": {}, "6NKMzxrE": {}, "3BstXRdY": {}}, "dateOfBirth": "1974-08-03", "firstName": "9aiEHBcm", "language": "JFtX-VzAH_LH", "lastName": "jt2vKIv6", "privateCustomAttributes": {"TPu7MOo8": {}, "nJ4yCe9Z": {}, "L8Y4jmhE": {}}, "timeZone": "Q66v9hAk", "zipCode": "ZJtEjT3R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "PhIYORMI", "avatarSmallUrl": "H9PheIxZ", "avatarUrl": "7ff6Zfoi", "customAttributes": {"sXegdfmc": {}, "6lRKgRYA": {}, "xyabB8ii": {}}, "dateOfBirth": "1991-04-19", "firstName": "rlfmkDSL", "language": "yks", "lastName": "3vBjb1dZ", "privateCustomAttributes": {"2Cvt89xY": {}, "5roVshon": {}, "zhbZm4hs": {}}, "timeZone": "XkIVMrNk"}' \
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
    --body '{"IzBvPUVB": {}, "BffcQNl0": {}, "EbpEvyay": {}}' \
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
    '{"zipCode": "NIjG5kmq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    '7OJEZCUC' \
    --body '{"category": "HtxVapDC", "description": "3Zfp2co8", "gameSessionId": "AtbP4RSj", "subcategory": "ELCXuiS8", "userId": "fXpi3QqU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicReportUser' test.out

#- 55 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'cxuoCHky' \
    'NnrsGuBV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'Y8zH46eY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'h7H1H5vP' \
    --body '{"avatarLargeUrl": "glbt9HNX", "avatarSmallUrl": "MQfd3xWA", "avatarUrl": "M1phSW6i", "customAttributes": {"Kvo7fWHb": {}, "LhEi1nU5": {}, "0KoDT0iZ": {}}, "dateOfBirth": "1990-09-13", "firstName": "uhYTZB6f", "language": "bD-rSwN", "lastName": "duYP9ZgM", "timeZone": "oSLD7nW2", "zipCode": "XjZLXB48"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'RiYogez1' \
    --body '{"avatarLargeUrl": "cDtFKUmv", "avatarSmallUrl": "Nfv04wbE", "avatarUrl": "FdXU8lNK", "customAttributes": {"dnBICksy": {}, "Z9HyUn4f": {}, "TryAi49d": {}}, "dateOfBirth": "1992-11-19", "firstName": "IXoFtO1B", "language": "vdH_gqIH_297", "lastName": "7yMihT8f", "timeZone": "8Y8BsSBh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'm3Glyamq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'xkOKOq6J' \
    --body '{"T6j9Uq51": {}, "Kwj3jXgZ": {}, "wyeuR0Q7": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'lhU5uTVa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'cOpmxdw8' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
