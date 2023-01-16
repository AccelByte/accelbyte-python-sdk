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
basic-create-namespace --body '{"displayName": "r0EbaVFA", "namespace": "nR8fLXzk"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 76, "comment": "mvpdzOw1", "userIds": ["5MJ1L2WY", "IDnEa9Vh", "e1Kqewxn"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["uxUIuMqx", "p9wliXcL", "9lKePRLN"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "SCeZaUgp", "description": "BHRsDahg", "gameSessionId": "A4NZsp5T", "subcategory": "cAp2HpUl", "userId": "XWR8d8Zd"}' --login_with_auth "Bearer foo"
basic-get-user-status 'rYaY5AVg' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "8Sz5JpRZ", "userIds": ["h3TSxrNL", "5JIX7GZa", "Jvn1URRf"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "8eqtLAJI"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "AbFFZtXQ"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'kscp3ggL' 'NqZAanyw' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "eP7YBfwH", "name": "xYcKeb1u"}, {"code": "t49oCRFj", "name": "D1UerYtr"}, {"code": "zz23TSET", "name": "iejnLrlq"}], "countryGroupCode": "aXZCUNdd", "countryGroupName": "TCqrZ9vw"}' --login_with_auth "Bearer foo"
basic-update-country-group 'YFIqOCpe' --body '{"countries": [{"code": "gq5cs2Rv", "name": "5OYM7IOQ"}, {"code": "C3oBhh9j", "name": "m9UrL7p3"}, {"code": "AEjLwaWQ", "name": "HQ9UPvTZ"}], "countryGroupName": "FbHWsh7l"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'YqjdL8yE' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id '6ADDu52x' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["e2bwntm5", "poQRChMY", "gaVOjCyb"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'gxNBB5g9' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url '9uZbmBZQ' 'taJ4nj6G' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'nLjiHhAx' --login_with_auth "Bearer foo"
basic-update-user-profile '01JBWHoo' --body '{"avatarLargeUrl": "dW1ML5lZ", "avatarSmallUrl": "qb8BtNBx", "avatarUrl": "3JKPGhVX", "customAttributes": {"xdcWrLqx": {}, "WxzvLNmP": {}, "IdnPiQgL": {}}, "dateOfBirth": "1975-11-05", "firstName": "YQ300mo1", "language": "HE_EHKa-969", "lastName": "bUr6Q85n", "status": "INACTIVE", "timeZone": "eveCd5XN", "zipCode": "8kRgPrxg"}' --login_with_auth "Bearer foo"
basic-delete-user-profile '3P0D8SQs' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'h3GhOnYt' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially '9tOrCo5U' --body '{"aFL8LMxF": {}, "YHdnmr5V": {}, "wpUYakJl": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'OXNWehVP' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'jtq4I9Fh' --body '{"0GOpbetp": {}, "M87IrkXu": {}, "cYZWJtt4": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'VPZse7d7' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'bXOqr3qF' 'yfKhv6ge' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'TaUP2DyA' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'CtUmTYrb' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "pPdoCHou", "avatarSmallUrl": "ij82W4Br", "avatarUrl": "zOUTVg83", "customAttributes": {"OcMriWkn": {}, "KniKqIrS": {}, "HQJpu2pV": {}}, "dateOfBirth": "1990-11-08", "firstName": "Xykr0QsO", "language": "Yn-cgDW-237", "lastName": "5fNV7lg2", "privateCustomAttributes": {"SIiOQPFf": {}, "JE5nO8nn": {}, "BoKlAjGv": {}}, "timeZone": "wiMDMKaI", "zipCode": "BvnxTinE"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "XaxXGh0x", "avatarSmallUrl": "c9s1PDo2", "avatarUrl": "ZIJZ974c", "customAttributes": {"VzFz6v6y": {}, "Sss1dX6x": {}, "F2SmQea3": {}}, "dateOfBirth": "1989-11-02", "firstName": "eSBxBLEF", "language": "ssD", "lastName": "Eox3gnEf", "privateCustomAttributes": {"WYYBeWdn": {}, "q4M6ITmq": {}, "J7Gfc33W": {}}, "timeZone": "aitSzbSU"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"UIVXgRov": {}, "oRiMgu53": {}, "UPB7P0Jp": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "OWq0wfR0"}' --login_with_auth "Bearer foo"
basic-public-report-user 'NlJseOnO' --body '{"category": "HNVw1uRD", "description": "ZDnSpydY", "gameSessionId": "tntcmFhA", "subcategory": "B1SgjkAx", "userId": "hWPM79Nh"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'QuU3pkHA' 'K7RCq7bg' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'BLzJS5DH' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'ElOUW1xZ' --body '{"avatarLargeUrl": "DHwUBm2k", "avatarSmallUrl": "feMbXBQx", "avatarUrl": "dYYiT7Er", "customAttributes": {"xNsEDonW": {}, "pNr6NXmT": {}, "dxxfwNwf": {}}, "dateOfBirth": "1975-05-01", "firstName": "xSld7z98", "language": "JsQU-lJbS_GS", "lastName": "n9jsnCyB", "timeZone": "Yclemocu", "zipCode": "0k6Y9qEM"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'UPMNi9PR' --body '{"avatarLargeUrl": "4hqiDwsT", "avatarSmallUrl": "77kz8mVn", "avatarUrl": "wnlnau3m", "customAttributes": {"rpSnJPkk": {}, "Ln9CT3RW": {}, "NWDQivFP": {}}, "dateOfBirth": "1989-06-23", "firstName": "DF2dneaz", "language": "ib_IF", "lastName": "ogk4sMKA", "timeZone": "yUIjpgfx"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'thbNNzj8' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'WMyUUdxd' --body '{"bD4qkbag": {}, "1yoplkmP": {}, "DD3OFELi": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'WZPByYeN' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'aG3HhaDw' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "iqe7AIYB", "namespace": "bte9weMz"}' \
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
    --body '{"actionId": 56, "comment": "b9zHN79t", "userIds": ["rrJQMLmE", "De1R5hbF", "yZTMK3K9"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["7pXlQlm9", "VymWIdj8", "3hIPIpnx"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "CzFslogY", "description": "GsQwAU23", "gameSessionId": "JWg8NX08", "subcategory": "WjWQ0IlR", "userId": "Ye2lAfps"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'urCeJtIJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "nbHgiBli", "userIds": ["FJh7qZHy", "BXyrRsZG", "s66nfTa7"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "2y03EoQP"}' \
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
    --body '{"apiKey": "2DGWR3gm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'qeifyQnm' \
    'mh9JYGJ2' \
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
    --body '{"countries": [{"code": "Zatj5VkD", "name": "szfLhXSn"}, {"code": "QwO9VlX8", "name": "jyksCRq9"}, {"code": "boHNpZ6d", "name": "k0lp0Rxc"}], "countryGroupCode": "UE4lsmfU", "countryGroupName": "SneNs1Ui"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'FmdB1amC' \
    --body '{"countries": [{"code": "itKkTACK", "name": "7fuwxDni"}, {"code": "g8ya2Mrb", "name": "gxvx8qcL"}, {"code": "Q5hBCpTz", "name": "RkYWF739"}], "countryGroupName": "NNxDn9nB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    '9IaA1PBu' \
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
    '6hCYrGj9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["0QzAimld", "sNwx5GDF", "0AmVYVkZ"]}' \
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
    '5nG9C7ej' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'KmU7Bs9b' \
    'eNgcJnjO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '7WlJR9tu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'SeTgUClG' \
    --body '{"avatarLargeUrl": "IuYDBOBw", "avatarSmallUrl": "hhOL3ZN6", "avatarUrl": "5ol9WJNV", "customAttributes": {"R82eNvNV": {}, "swJvx8nc": {}, "b3BLKWkc": {}}, "dateOfBirth": "1980-01-11", "firstName": "4jZTaDDF", "language": "HVtY-Wppk", "lastName": "Tx3Z5a2d", "status": "INACTIVE", "timeZone": "QKfwXnUT", "zipCode": "QcJ8eQek"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'PmTfAShN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'HpnU2ieG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'eO0ICXM9' \
    --body '{"65YOht1y": {}, "t43JoEtB": {}, "E390SNLZ": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    '2qIdNbNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'LwwncEkK' \
    --body '{"P3mRW2UO": {}, "58WsYpAH": {}, "IkmRlhKY": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'B6pVnVHe' \
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
    'sO19r1sm' \
    '4NH6ZDH2' \
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
    '4NxWUVx8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'CF2mboAR' \
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
    --body '{"avatarLargeUrl": "SpotuNBy", "avatarSmallUrl": "usKOF2PK", "avatarUrl": "lhbloUeM", "customAttributes": {"l1CyDfna": {}, "d3jHU5ii": {}, "4L5STnCD": {}}, "dateOfBirth": "1999-04-16", "firstName": "uyLsrPYG", "language": "wVIP", "lastName": "E1bnSS5U", "privateCustomAttributes": {"hzxy5JET": {}, "HgEKnlnP": {}, "nmZyrslw": {}}, "timeZone": "17i2RcNF", "zipCode": "72WpWghP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "nnY9Gona", "avatarSmallUrl": "3NACJENK", "avatarUrl": "f6SGTVtA", "customAttributes": {"xhdhB8jI": {}, "gaq2nwxl": {}, "80uw5Jnl": {}}, "dateOfBirth": "1988-08-06", "firstName": "OU0AoIfK", "language": "haM", "lastName": "PGVvqr6K", "privateCustomAttributes": {"WuSS1tzU": {}, "qyXO0IIo": {}, "0Z1FrTwW": {}}, "timeZone": "FRcYV4Vg"}' \
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
    --body '{"zldmWPEY": {}, "rKIk0hpM": {}, "Vzib93j2": {}}' \
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
    '{"zipCode": "c71p63gz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'gTLnG1AB' \
    --body '{"category": "RrK7kI3q", "description": "9stNY2cQ", "gameSessionId": "okUftOgd", "subcategory": "10fvnDG8", "userId": "D8iaMLw7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'Cb6gTeiD' \
    'oUiEYLhD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'OiQnh47m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'itpAa6pu' \
    --body '{"avatarLargeUrl": "nqnBtunS", "avatarSmallUrl": "d7AqThQS", "avatarUrl": "65vEz7oa", "customAttributes": {"4CTThA3A": {}, "Z1vgBT6m": {}, "nriLW6Ic": {}}, "dateOfBirth": "1983-07-28", "firstName": "06NFHpO6", "language": "ZZ_bX", "lastName": "ZacpHgMX", "timeZone": "viR8OPLX", "zipCode": "KbKPe4J2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'bwGU3bEv' \
    --body '{"avatarLargeUrl": "5gMVnQlH", "avatarSmallUrl": "B6Lv20PD", "avatarUrl": "3aLkuNO2", "customAttributes": {"Apz9Hkm1": {}, "SjJvPE05": {}, "5ETjJoVf": {}}, "dateOfBirth": "1991-11-19", "firstName": "kp4hqrlW", "language": "wpjV_PK", "lastName": "hIQJt9Sm", "timeZone": "ZUGnD34F"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'aOACVkm3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'OfSiqJZE' \
    --body '{"rbD2DPKJ": {}, "wXNBN0Kn": {}, "RXHF8SgO": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'wQNawxi4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'CJ6hXwJo' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
