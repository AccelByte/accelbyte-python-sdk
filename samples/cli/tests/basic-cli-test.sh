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
basic-create-namespace --body '{"displayName": "qiak7BRs", "namespace": "gUaxS3Ty"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 12, "comment": "sHh5ILql", "userIds": ["fMc9vrHP", "w9REoHzU", "lNssJyWK"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["4UM7o1uW", "sIdPZVDT", "utZflcRb"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "Dg8ZPBHz", "description": "f6kr3b0V", "gameSessionId": "Lc7mUp9V", "subcategory": "gbYrcffA", "userId": "KEKNYiAz"}' --login_with_auth "Bearer foo"
basic-get-user-status 'MisbXkJA' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "fNqa6Ta2", "userIds": ["RjriEce5", "J1sRRJ3M", "azR8AFWO"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "mTOI2kNV"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "G9Ar10Qv"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'eY0QAD8E' 'xzLNRlQc' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "eyExig1a", "name": "q0yWrAOi"}, {"code": "h3GUlBbC", "name": "n1Fe1Ig3"}, {"code": "SGZmB8c3", "name": "7NqlvtDI"}], "countryGroupCode": "VqcxOHtg", "countryGroupName": "PXidb8ym"}' --login_with_auth "Bearer foo"
basic-update-country-group 'W8Vg2AqF' --body '{"countries": [{"code": "jt4bvp4K", "name": "m1VBa7nP"}, {"code": "Eq0BcdJF", "name": "t7sJPPHs"}, {"code": "vYWog8Hj", "name": "HooL3bQ2"}], "countryGroupName": "0rQtNewp"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'jAQq30Xa' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id '33omBFCH' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["h7NqCMOk", "UxVEi8Lv", "xeIcmQd8"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'SLGo9lsX' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'FPktmxo2' 'SKcjpnFU' --login_with_auth "Bearer foo"
basic-get-user-profile-info '6or3nJHe' --login_with_auth "Bearer foo"
basic-update-user-profile 'q6U3okLM' --body '{"avatarLargeUrl": "8WongZQ6", "avatarSmallUrl": "wnKALcsi", "avatarUrl": "ZAJF1AjP", "customAttributes": {"90aarXag": {}, "I0o301Gx": {}, "3nq8D9pI": {}}, "dateOfBirth": "1990-09-11", "firstName": "8uP9SzMQ", "language": "RtOw_qZbV_Wn", "lastName": "tWIcZWkA", "status": "INACTIVE", "timeZone": "QncEdRBC", "zipCode": "a6UBVujI"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'AT6VhsKG' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'NXB8xd3H' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially '8PLepdln' --body '{"XCjiW76r": {}, "2RXDl1Gp": {}, "M6jRySve": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'dlT6sdmK' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'nu4glaHE' --body '{"LIVXTRaM": {}, "OAgPNYey": {}, "sVbQ22yG": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'pXPdCFuP' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'kMIBpyxG' '7kIGt1d1' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'KbZrmwpd' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'JRHsPhso' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "APrTlvcj", "avatarSmallUrl": "EVqT6cQ0", "avatarUrl": "7wRSOaAS", "customAttributes": {"EPZyCtD8": {}, "RrELdgwv": {}, "qdCrO0w5": {}}, "dateOfBirth": "1972-08-23", "firstName": "u6nF1rhB", "language": "ml_nWMV-923", "lastName": "5KLTTCNH", "privateCustomAttributes": {"hc7SCGjf": {}, "BoqQwfk4": {}, "2mO4CX1u": {}}, "timeZone": "lRkxI378", "zipCode": "rP7V2axY"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "eS5402JO", "avatarSmallUrl": "50Xo7Jjm", "avatarUrl": "Or47TbL6", "customAttributes": {"kGYwsNmU": {}, "YIo6IbX5": {}, "z1fjkkvR": {}}, "dateOfBirth": "1997-06-06", "firstName": "5O5SYkML", "language": "hf_pv", "lastName": "olAMcocb", "privateCustomAttributes": {"omYdQVVk": {}, "MuWgxW0H": {}, "r2e2hksk": {}}, "timeZone": "rGCCNSmN"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"BuhoscZ1": {}, "zdag0313": {}, "ZRNW9l5w": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "6Cq3Ayxs"}' --login_with_auth "Bearer foo"
basic-public-report-user '4uNOwTwe' --body '{"category": "S3wGjB9j", "description": "gZuoGj42", "gameSessionId": "tUadjKr4", "subcategory": "jwRJd9bp", "userId": "sCYCS77F"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url '6WGeEWs7' 'mA2QNnP4' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'L2zrey5p' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'MCWq4Q7o' --body '{"avatarLargeUrl": "L59QvHxr", "avatarSmallUrl": "MRHufWXz", "avatarUrl": "f1uiDM2c", "customAttributes": {"DuxRjYol": {}, "ZmqrE79e": {}, "zDiM2NVu": {}}, "dateOfBirth": "1988-05-11", "firstName": "sgkVAZ0r", "language": "TeA", "lastName": "GUrTAaYc", "timeZone": "Gzfctdxo", "zipCode": "wKZnFvE2"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'mI0rds1f' --body '{"avatarLargeUrl": "FqNqZcus", "avatarSmallUrl": "97CRrQIO", "avatarUrl": "M5XcFFlA", "customAttributes": {"2Yt7K5DF": {}, "ti1NNc8V": {}, "EQrPo8GV": {}}, "dateOfBirth": "1980-05-21", "firstName": "CGbIgwdD", "language": "BPf", "lastName": "3rIo9uJa", "timeZone": "sK6EfcVo"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info '35GgWAqZ' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'N3BwjzVh' --body '{"0pOhFGcg": {}, "aD0Jq5JB": {}, "SLmXdBN0": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'ZKjXvOKD' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'Yvimw7kw' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "jxXiix60", "namespace": "XaW1PUAb"}' \
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
    --body '{"actionId": 65, "comment": "Fw2j1byf", "userIds": ["NvHU7KB9", "95EnWIpc", "iBALBmk1"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["4Px9xKJD", "cF5bHD3U", "THMHUyEE"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "WrpxL5zZ", "description": "AdqEoSnK", "gameSessionId": "9maMpstI", "subcategory": "ug9FJvdB", "userId": "a0eglaun"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    '1lhjfVbh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "Ba67MfG5", "userIds": ["fO8GUgy9", "YEFXhwNo", "CS8UaZKT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "2foZbdLm"}' \
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
    --body '{"apiKey": "KiFww0Nf"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'siiBB73C' \
    'CXED9SRo' \
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
    --body '{"countries": [{"code": "xxzdU4dG", "name": "7PWq2HIQ"}, {"code": "GchEJZQ9", "name": "gz5iEG0S"}, {"code": "UOnG8ZeY", "name": "TKtEzEKD"}], "countryGroupCode": "R3zHeMn4", "countryGroupName": "OLv2t6N9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'ZbSsZYvv' \
    --body '{"countries": [{"code": "Mjl3PeMi", "name": "cOXC3U4V"}, {"code": "KjVLJEbo", "name": "9teB6dQe"}, {"code": "q6VYi3Zu", "name": "9pB2Aj9I"}], "countryGroupName": "gpukRw19"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'KcLNdr62' \
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
    'd60IkMYO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["91lGOPr2", "GBNxxKij", "zUD5ZU6T"]}' \
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
    'tTq4wEST' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    '9F8IxqlU' \
    'mZpTHllS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '9yeKsenY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    '9ChKYYgS' \
    --body '{"avatarLargeUrl": "qyHmoeUW", "avatarSmallUrl": "SPsaPDi7", "avatarUrl": "C4SL45EK", "customAttributes": {"t7pBJvVB": {}, "VMy6Mcle": {}, "nbZ9RZp3": {}}, "dateOfBirth": "1985-11-18", "firstName": "mRDb9ZE2", "language": "cTbF_gsmJ_yl", "lastName": "Ud482CrG", "status": "ACTIVE", "timeZone": "qtAMHZZo", "zipCode": "uXUZ0UTJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    '0ZRweqe0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'piZp8mpK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'nHr1JkRi' \
    --body '{"VzgArLpi": {}, "yAkXzbRI": {}, "6DPsr4Kg": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'KafAMTZc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'Q7CfmjhO' \
    --body '{"M96FVyVC": {}, "hOoKp84g": {}, "4adlvXch": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'DfMTWIHX' \
    --body '{"status": "ACTIVE"}' \
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
    'h59LjAHD' \
    'l49iWPSd' \
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
    '3Jf0ukny' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'bJujeHR2' \
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
    --body '{"avatarLargeUrl": "qjc12imI", "avatarSmallUrl": "oqQY2H9C", "avatarUrl": "ntcGEJQx", "customAttributes": {"bOcYL0eT": {}, "drQSnXjN": {}, "G87yHRZm": {}}, "dateOfBirth": "1990-07-04", "firstName": "1Qe7RdD3", "language": "vQ-VKJi-yP", "lastName": "AJYBLI09", "privateCustomAttributes": {"sdxlBBXd": {}, "cn9bkqwA": {}, "ZizMp6eZ": {}}, "timeZone": "USeIkykI", "zipCode": "jQ8EXU3Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "hywg2MJ0", "avatarSmallUrl": "Huvyqdjl", "avatarUrl": "AEzzxtLW", "customAttributes": {"X6zPD6pJ": {}, "xcn4zjeZ": {}, "8jp3PkyQ": {}}, "dateOfBirth": "1991-12-20", "firstName": "EJeKEdTF", "language": "OLR_rqRV", "lastName": "Aw7TuoyU", "privateCustomAttributes": {"DICZxztc": {}, "hLh3jgGh": {}, "njHtVsVy": {}}, "timeZone": "n8LkAqTE"}' \
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
    --body '{"XwamfZey": {}, "R2r00yXC": {}, "wP6nEya1": {}}' \
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
    '{"zipCode": "hkRvINU4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'wAN3ogIo' \
    --body '{"category": "11GZskFU", "description": "gXtDNT9S", "gameSessionId": "pKb8jcOR", "subcategory": "hb1Hqx3I", "userId": "V492hHox"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'ak3SWJa8' \
    'dawPYATM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'n6GUngFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'L1HUD2zV' \
    --body '{"avatarLargeUrl": "yOHfmf04", "avatarSmallUrl": "Fstz8Uv5", "avatarUrl": "5S310or0", "customAttributes": {"M8w2YoCN": {}, "IdiRmvfB": {}, "panAiykF": {}}, "dateOfBirth": "1988-06-03", "firstName": "h5V3NSYD", "language": "Jof-qFcS_PJ", "lastName": "C8vYd6mh", "timeZone": "Nb5GYRvP", "zipCode": "duugDhlu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'lXoRg8o9' \
    --body '{"avatarLargeUrl": "MUVXVhtR", "avatarSmallUrl": "CjZqd0C5", "avatarUrl": "uVYPs2am", "customAttributes": {"QE8gP5dd": {}, "atFPUt60": {}, "BEyRrbGU": {}}, "dateOfBirth": "1996-10-10", "firstName": "4p5gptzy", "language": "ljw-344", "lastName": "F38RBCS2", "timeZone": "PcvqKRe4"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'v8g24Luy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'VgGhVPC3' \
    --body '{"0CDhVEAg": {}, "WS3sXZJx": {}, "O06y3HNR": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    '9g0gzbcg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    '6MV50sDZ' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
