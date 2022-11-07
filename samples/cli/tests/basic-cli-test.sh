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
basic-create-namespace --body '{"displayName": "Vq99KE39", "namespace": "ZkVKyKJr"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 1, "comment": "y4ZDK44x", "userIds": ["MnSwYBH0", "TWacKlCI", "yJsK2lmL"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["G9DccY42", "yDqMUl3y", "E1cqoLkK"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "ULGXhCee", "description": "3SRnJz7W", "gameSessionId": "ALtYu6RZ", "subcategory": "YsCbwbXc", "userId": "edNMI2bX"}' --login_with_auth "Bearer foo"
basic-get-user-status 'JB5kxTWJ' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "T8fT7iul", "userIds": ["KtW7ujlK", "6pv2FsYi", "ZXYqWcqS"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "a1M6f2lf"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "n5xkrXCS"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'Ulu7N8pD' 'NRb9qLyl' --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "LgBbl4VR", "name": "JA9Uj9Vx"}, {"code": "Fr4LE3P3", "name": "IuMh6sHa"}, {"code": "PIu6c7zq", "name": "T6YVoKDj"}], "countryGroupCode": "P2Q1V2zm", "countryGroupName": "DhZx8HW1"}' --login_with_auth "Bearer foo"
basic-update-country-group 'DosGhuVP' --body '{"countries": [{"code": "Ki02TPVy", "name": "TpOuBeeW"}, {"code": "RLpMuvOP", "name": "pzhXHxUd"}, {"code": "l01bUBg4", "name": "oMUfBPxn"}], "countryGroupName": "XDoL3Y3c"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'syYp2xdc' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'sEKraOsX' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["zQPSuPGg", "jSCT10s9", "LlSMmRFw"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'akKOOguG' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'AQvUbF1t' 'Cka0S2Ms' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'GEfpdTz1' --login_with_auth "Bearer foo"
basic-update-user-profile '8kQw6FGY' --body '{"avatarLargeUrl": "Qtg8PzmY", "avatarSmallUrl": "HmYXmi0o", "avatarUrl": "ctOoZ7HQ", "customAttributes": {"VuQsaaa3": {}, "5jzmSogd": {}, "xrTX6IZJ": {}}, "dateOfBirth": "1972-04-10", "firstName": "vVX6QRTt", "language": "OI_owcS", "lastName": "MDjMXH9I", "status": "ACTIVE", "timeZone": "S0m0ZXuX", "zipCode": "FPdoZzhr"}' --login_with_auth "Bearer foo"
basic-delete-user-profile '6AISGYSI' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'SQ8zduKZ' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'iqmEoaj4' --body '{"XiZUrmrI": {}, "sy11p564": {}, "MBwL4AOB": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'Z1ipRYdW' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'baqrniVT' --body '{"cFFDcz2v": {}, "IKHYpbmX": {}, "2FzaukNh": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'JB1ABa3l' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'EjRyNGMK' 'yEtydtAm' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'MuimlCJo' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'HH7GffDm' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "7nUyClcX", "avatarSmallUrl": "srjefnHv", "avatarUrl": "GRnzlxl4", "customAttributes": {"A3tlZjPG": {}, "XZFPUXap": {}, "XMnY98hN": {}}, "dateOfBirth": "1991-10-30", "firstName": "wpDAWVn1", "language": "WCL_ar", "lastName": "pOUjkYAl", "privateCustomAttributes": {"Bf83zXaV": {}, "WgqFlWae": {}, "1EfvHW3W": {}}, "timeZone": "k8oJEgll", "zipCode": "vQbLnMMr"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "2faPAjXD", "avatarSmallUrl": "oFJkG5TR", "avatarUrl": "7SftXehz", "customAttributes": {"zVQOUC8r": {}, "PvGiYCVU": {}, "PpuluVDl": {}}, "dateOfBirth": "1989-03-26", "firstName": "w0LwpBXq", "language": "DDEP", "lastName": "XHfEOoYn", "privateCustomAttributes": {"2zPwyy3E": {}, "HvdlXiKl": {}, "jG4nvu0u": {}}, "timeZone": "uBVnLTVK"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"eNAk2V9R": {}, "NkDT10vG": {}, "9ebT2uAR": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "cyAVY88U"}' --login_with_auth "Bearer foo"
basic-public-report-user 'qu6autKN' --body '{"category": "OLy2c9OM", "description": "JInsF9fA", "gameSessionId": "TOozwEPB", "subcategory": "xZUIkPSI", "userId": "1O6sG7Ur"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'zoOs4WLi' 'upQEI0wU' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info '5arC3UnT' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'PwQoYa8D' --body '{"avatarLargeUrl": "MTgkGns1", "avatarSmallUrl": "lwXsnX5Y", "avatarUrl": "YzROtM1X", "customAttributes": {"s5wL4w1P": {}, "nRbszZej": {}, "5pUfPpiw": {}}, "dateOfBirth": "1991-04-27", "firstName": "tfwex7Z3", "language": "SdBS_934", "lastName": "ZerDkWRd", "timeZone": "GEaKXnXy", "zipCode": "zfbFcy1U"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'XM85qgUD' --body '{"avatarLargeUrl": "KRfAKGgf", "avatarSmallUrl": "Vci1K8hl", "avatarUrl": "erk4GCNX", "customAttributes": {"PXtG9KCQ": {}, "zzwg33bg": {}, "1QocCRXE": {}}, "dateOfBirth": "1982-04-19", "firstName": "GIWaxnGw", "language": "EIgZ-gQai", "lastName": "dtMOxqAq", "timeZone": "n5a1ZcuF"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'dDIOI6Q0' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'i7Asph55' --body '{"5UKqCkvB": {}, "lk4KznAS": {}, "c5Taw1qx": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info '1OaT0aE5' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'f1QfCf3z' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "oqTxGv3f", "namespace": "yezPZsXn"}' \
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
    --body '{"actionId": 35, "comment": "85GsBbwF", "userIds": ["F7KxElrA", "75Hj3Egz", "m9mHd44X"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["em6UR6RL", "aK1F0Ppk", "L0KDwJ5P"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "af7s4XQ1", "description": "gDlvrA9l", "gameSessionId": "xiPGjN1G", "subcategory": "ZLTyOm61", "userId": "UmsNZPZh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'PzRdG7HH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "mCjZcGUu", "userIds": ["YbhOysyj", "EnRQtKhr", "DoBrMJRX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "YQagLPYL"}' \
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
    --body '{"apiKey": "l2MyTtf9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'que7KmKB' \
    'Fo95ykHe' \
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
    --body '{"countries": [{"code": "pLk4SFhF", "name": "DIECtptd"}, {"code": "Tu32b4h8", "name": "qFDxZcX9"}, {"code": "Y7oeEM89", "name": "66ZLLqTh"}], "countryGroupCode": "1zOAnoP5", "countryGroupName": "pIbThXWO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'AbFSuD6V' \
    --body '{"countries": [{"code": "JXM4J9XH", "name": "SArmozbv"}, {"code": "mfWiH1iQ", "name": "MZ9zeHcD"}, {"code": "ihHdPqKK", "name": "D90o94zy"}], "countryGroupName": "70msG2Pc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    '1RjcTAIc' \
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
    'ziDMnUfs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["KF40YnbO", "xxeWOLcx", "DW1MiS3h"]}' \
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
    'DUYewDul' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'yQbA6fo1' \
    'YA0QRnyX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'FKAQDGWe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    '52BdwgJe' \
    --body '{"avatarLargeUrl": "ftv3c6Cw", "avatarSmallUrl": "H9eXlGM9", "avatarUrl": "Zt4HDtZU", "customAttributes": {"xuxTl6NF": {}, "BPbHM28j": {}, "e3EiX1L9": {}}, "dateOfBirth": "1992-02-22", "firstName": "U8YM0ARE", "language": "UDA-932", "lastName": "kCRBsaH6", "status": "INACTIVE", "timeZone": "wZ44p0r6", "zipCode": "yKIaf5zU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'tGyysawL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'r5RWpXPR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'i6srvuZm' \
    --body '{"sWVBkesd": {}, "09avqD5m": {}, "ThFrV0bj": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'JL147Uzv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'ZJgfgxWa' \
    --body '{"3CrJfRPw": {}, "KGOs5oAI": {}, "DywWxbVy": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'jSMgilae' \
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
    '1jVSBGsI' \
    'M95iCzvP' \
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
    '1hk6u7Un' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'lhnzSegg' \
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
    --body '{"avatarLargeUrl": "5lpiKP7Q", "avatarSmallUrl": "dLEezXmk", "avatarUrl": "dpZp5gSe", "customAttributes": {"J2WIyc1D": {}, "d44lqPHm": {}, "geHZdujY": {}}, "dateOfBirth": "1987-10-12", "firstName": "dJAOWeme", "language": "Jtm-bYme-oM", "lastName": "zS3tlC0d", "privateCustomAttributes": {"VwEc3hkT": {}, "vGyOw2f3": {}, "ySe17Egv": {}}, "timeZone": "Uhdr62yk", "zipCode": "0xLIkMum"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "owccmrEQ", "avatarSmallUrl": "BWXLNC6O", "avatarUrl": "SzQdAmXh", "customAttributes": {"N9Kvessh": {}, "CfCshESu": {}, "4lEtxZyB": {}}, "dateOfBirth": "1997-06-25", "firstName": "TnX05MDD", "language": "by-cd", "lastName": "bqNFsxF1", "privateCustomAttributes": {"gDEmGzTe": {}, "WrRSbHcF": {}, "ht9TJMTn": {}}, "timeZone": "oebAqHW2"}' \
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
    --body '{"OeXTQ0zZ": {}, "PXKZRMWJ": {}, "keF6UreU": {}}' \
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
    '{"zipCode": "sRfon5yc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'tAj8Ja9V' \
    --body '{"category": "aEACchEf", "description": "5SU9FFr5", "gameSessionId": "5bsJCSdA", "subcategory": "8F91atzR", "userId": "ZPBprfOI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicReportUser' test.out

#- 55 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    '6pAOxIz2' \
    'pZjZcNGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'GCOdS8RE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'JdnENbNu' \
    --body '{"avatarLargeUrl": "KPWVP0Jp", "avatarSmallUrl": "roIAaVmc", "avatarUrl": "9nh51bmR", "customAttributes": {"9OgWxe35": {}, "IGTgguo3": {}, "eG2NQxKl": {}}, "dateOfBirth": "1990-05-16", "firstName": "4TlZh5u6", "language": "iDcZ_AHou-Qi", "lastName": "K5biu4A1", "timeZone": "SyB7PU2W", "zipCode": "9JrdZDKO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'c7IBG6JG' \
    --body '{"avatarLargeUrl": "tOD66zzI", "avatarSmallUrl": "6NepsgyM", "avatarUrl": "DryptnRC", "customAttributes": {"3rRkYbW0": {}, "z2QXZ9Ti": {}, "XuwUeijP": {}}, "dateOfBirth": "1994-06-03", "firstName": "BDTYqGZT", "language": "JVAY-UFoS_830", "lastName": "Aky38ntJ", "timeZone": "6RhEYRfW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'ZlFivGoZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'n5ASsyms' \
    --body '{"SUfuKK5Y": {}, "npecrUS9": {}, "ZfVYlfpx": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    '9DuodrZf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'AKZcLS1L' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
