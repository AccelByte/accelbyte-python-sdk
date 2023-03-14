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
basic-create-namespace --body '{"displayName": "EAxcVpFr", "namespace": "ttufHIRd"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 68, "comment": "Dc09nIW0", "userIds": ["Oaiw9B0D", "7eHpzSn3", "ZPUdc0qh"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["4n8mzZ0m", "8SAMTwE6", "I56IaRDB"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "XxyaNoMR", "description": "6hkspInr", "gameSessionId": "Aip6lyzS", "subcategory": "xwElFHHd", "userId": "gs21Jub7"}' --login_with_auth "Bearer foo"
basic-get-user-status '4CUkNmKJ' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "fh5pUkHO", "userIds": ["DpoMF78N", "Y4YkHs1c", "nz1JSDgY"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "1TXp38zs"}' --login_with_auth "Bearer foo"
basic-create-config --body '{"key": "CTCrbCbP", "value": "OyNQkT7N"}' --login_with_auth "Bearer foo"
basic-get-config-1 'vyE3cwyA' --login_with_auth "Bearer foo"
basic-delete-config-1 'LczNIicX' --login_with_auth "Bearer foo"
basic-update-config-1 'm7agSrjJ' --body '{"value": "W2OQNOs1"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "PXhT5Fvd"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'iRilZ7oF' 'gx4c8Oum' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "KtPDKJDX", "name": "n7Z4U68s"}, {"code": "u8XfqlqN", "name": "iTvB6SdA"}, {"code": "dIhUDrwo", "name": "Z5MecdKi"}], "countryGroupCode": "5r6QEa1y", "countryGroupName": "sLEzth6m"}' --login_with_auth "Bearer foo"
basic-update-country-group 'XhzkzWkF' --body '{"countries": [{"code": "eZSoEAcB", "name": "dW19m4eu"}, {"code": "6d5tA5jU", "name": "miTqpyhP"}, {"code": "FdxLzFQN", "name": "05MYzYiK"}], "countryGroupName": "We5dNRlj"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'v7IPrDQQ' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'Rgat0Sev' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["kLGMS0ly", "uI9a2I9u", "6Vpbsx5w"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'fofvnnSu' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'B0y5WUlr' 'MdI4sNve' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'abntBSxT' --login_with_auth "Bearer foo"
basic-update-user-profile 'eIv53HGC' --body '{"avatarLargeUrl": "iljvjKoy", "avatarSmallUrl": "D6SCwGrn", "avatarUrl": "cqmLtjQH", "customAttributes": {"Af8TgoNm": {}, "03VLisV6": {}, "zwPuo3td": {}}, "dateOfBirth": "1991-02-06", "firstName": "C6I3lMjG", "language": "TxpL", "lastName": "aRlxfcjH", "status": "ACTIVE", "timeZone": "Pz6MbwL6", "zipCode": "IY69z1Ua"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'LqYSYWyt' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'LPziZMdj' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'xcBZufQx' --body '{"GiHPllG4": {}, "cYEzfTD1": {}, "ZBm3MqHc": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'UmLZZbSq' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'b8RwNmn9' --body '{"HrNQy4uZ": {}, "AAiE0mit": {}, "9RGCCHYz": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'UOcEdscK' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'PEqgA8yu' '7Vk6Jt4Y' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'mos9Jcdo' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 's4fYcTVU' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "6RBt0zYo", "avatarSmallUrl": "McHyCUEX", "avatarUrl": "lAvxJMda", "customAttributes": {"lwSyliWM": {}, "NW5NyLu0": {}, "M3VHh2EI": {}}, "dateOfBirth": "1994-10-12", "firstName": "279ZZPYG", "language": "sSM", "lastName": "mqRBaAkL", "privateCustomAttributes": {"nvxkT1X6": {}, "8cmDc3fx": {}, "U8MyKrQp": {}}, "timeZone": "M4hkkK6K", "zipCode": "KXNB3Gv0"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "IqmF51Tk", "avatarSmallUrl": "hjYnaq6f", "avatarUrl": "oWvXa3bM", "customAttributes": {"rXsDr6kI": {}, "LsSSyDdm": {}, "ykmoPYgc": {}}, "dateOfBirth": "1998-10-27", "firstName": "bN9oCMNq", "language": "tqu", "lastName": "f4IxjUkl", "privateCustomAttributes": {"535X3ate": {}, "EKDpADz1": {}, "x3poD3Qg": {}}, "timeZone": "b3boLQQ1"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"MzH7Qm8b": {}, "wbmXgdAP": {}, "h1EThG96": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "gAFKK2WD"}' --login_with_auth "Bearer foo"
basic-public-report-user 'gCcxvONZ' --body '{"category": "m3EeERmD", "description": "nyeFoF7V", "gameSessionId": "SZ6pf3vn", "subcategory": "eSD2Tb3g", "userId": "7mSQUhAE"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'trmjqU6Y' 'E3p4lSck' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info '0ZHn5GI3' --login_with_auth "Bearer foo"
basic-public-update-user-profile '9YBHqaTH' --body '{"avatarLargeUrl": "eKtW18iG", "avatarSmallUrl": "eUlc9d9s", "avatarUrl": "ogWa24CK", "customAttributes": {"NS0GqVvU": {}, "fHQvsHXN": {}, "UNe4mhgo": {}}, "dateOfBirth": "1992-08-14", "firstName": "48l9lyNA", "language": "oF", "lastName": "kfZrQvGg", "timeZone": "bLdLsFzH", "zipCode": "kBMr1yrO"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'MlNFSrUE' --body '{"avatarLargeUrl": "irnjX9fD", "avatarSmallUrl": "mIbeZxzf", "avatarUrl": "TcyiuATu", "customAttributes": {"s9hsfpFD": {}, "cSDG8aMV": {}, "GLiBNrDj": {}}, "dateOfBirth": "1979-01-11", "firstName": "oxcwgGLX", "language": "CwF", "lastName": "pp2ncYAH", "timeZone": "dNzDmeIP"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info '6rOvDz9K' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'Osb392k6' --body '{"YmJFfRBy": {}, "jlBiuFM3": {}, "FIoVk8T3": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'GpAnkCmB' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'Uqg2SCnq' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..67"

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
    --body '{"displayName": "4Yw20DOq", "namespace": "OBSC2DKH"}' \
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
    --body '{"actionId": 90, "comment": "G6vxkfUc", "userIds": ["mqRRbceJ", "5i0EeDxO", "gBnhhqEl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["IaDml48w", "dNFLTm5T", "50x9WT0G"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "fH2rtOa4", "description": "EXsXzOXQ", "gameSessionId": "Ak4mqrxz", "subcategory": "TtuLl4Xl", "userId": "bGL8QOxt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'jzm8y2wN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "hmwoYZyI", "userIds": ["4EFZKBcY", "rCEAE7WI", "sfmx40NL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "Rc6m8heK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
$PYTHON -m $MODULE 'basic-create-config' \
    --body '{"key": "nWhzfe2N", "value": "ubeoKFeI"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
$PYTHON -m $MODULE 'basic-get-config-1' \
    'aFQCYoDP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
$PYTHON -m $MODULE 'basic-delete-config-1' \
    'ICpnduEE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
$PYTHON -m $MODULE 'basic-update-config-1' \
    'QlULdJz4' \
    --body '{"value": "mnRBkMNx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'UpdateConfig1' test.out

#- 17 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetConfig' test.out

#- 18 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteConfig' test.out

#- 19 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    --body '{"apiKey": "vvKgAT8m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'JrYq6hRk' \
    'loqxM3gp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GeneratedUploadUrl' test.out

#- 21 GetGameNamespaces
$PYTHON -m $MODULE 'basic-get-game-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetGameNamespaces' test.out

#- 22 GetCountries
$PYTHON -m $MODULE 'basic-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetCountries' test.out

#- 23 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetCountryGroups' test.out

#- 24 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "wxcfMy9X", "name": "zjjI5Ybs"}, {"code": "KoADkzJE", "name": "N2VHzih3"}, {"code": "bit0VWn3", "name": "CO39PXDN"}], "countryGroupCode": "xtXgeO3F", "countryGroupName": "gkXhjDza"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'QY3snn2Z' \
    --body '{"countries": [{"code": "kP7cFdP4", "name": "3e5dC9XI"}, {"code": "BudfZgrb", "name": "HDIDm4hM"}, {"code": "zF4Txode", "name": "nSrUTvfq"}], "countryGroupName": "U0bfoMm5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'cTtFWbot' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'DeleteCountryGroup' test.out

#- 27 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetLanguages' test.out

#- 28 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GetTimeZones' test.out

#- 29 GetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-get-user-profile-info-by-public-id' \
    'QyXJRcQW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["smqPNs92", "epxk0i8V", "xsZNereS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'ChangeNamespaceStatus' test.out

#- 33 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'UE1Tq5jy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'AnonymizeUserProfile' test.out

#- 34 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'AZvkRCMN' \
    'FIurjh2i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GeneratedUserUploadContentUrl' test.out

#- 35 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'mdb4rbkX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetUserProfileInfo' test.out

#- 36 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'j0ZwsVC0' \
    --body '{"avatarLargeUrl": "gL97ZVJS", "avatarSmallUrl": "PqJiwv1q", "avatarUrl": "lYB1RSKs", "customAttributes": {"6gQxC3Gb": {}, "7S0o4zGY": {}, "Y7KQI1Ae": {}}, "dateOfBirth": "1987-11-14", "firstName": "gPqaOkvo", "language": "AMP", "lastName": "B4lkKB4E", "status": "ACTIVE", "timeZone": "OkQ1jMD3", "zipCode": "cym8xIfk"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfile' test.out

#- 37 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'OVW2grRE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'DeleteUserProfile' test.out

#- 38 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'OLx0KOww' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetCustomAttributesInfo' test.out

#- 39 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    '3HICQLfl' \
    --body '{"7MUBG7qt": {}, "Pu64yAtU": {}, "RKLRkb73": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateCustomAttributesPartially' test.out

#- 40 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    '8HGS6rDg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetPrivateCustomAttributesInfo' test.out

#- 41 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'MdIIlhS1' \
    --body '{"fSiM9331": {}, "m7Ta1PsK": {}, "c50Kv6ec": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'UpdatePrivateCustomAttributesPartially' test.out

#- 42 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'nEevcAx2' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateUserProfileStatus' test.out

#- 43 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'PublicGetTime' test.out

#- 44 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetNamespaces' test.out

#- 45 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    '2zkRenmP' \
    'ZnGBt4P7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGeneratedUploadUrl' test.out

#- 46 PublicGetCountries
$PYTHON -m $MODULE 'basic-public-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGetCountries' test.out

#- 47 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetLanguages' test.out

#- 48 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGetTimeZones' test.out

#- 49 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    'WnbdSJtj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicGetUserProfilePublicInfoByIds' test.out

#- 50 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'X7ZshZyZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfileInfoByPublicId' test.out

#- 51 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGetNamespacePublisher' test.out

#- 52 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetMyProfileInfo' test.out

#- 53 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "l5x4bRXB", "avatarSmallUrl": "HUTrDzZS", "avatarUrl": "KscfOcYu", "customAttributes": {"3dpCROYq": {}, "UiGKXVFC": {}, "mpo6sPwV": {}}, "dateOfBirth": "1991-06-14", "firstName": "EDSJsEK5", "language": "QpwH", "lastName": "I2iS5EpG", "privateCustomAttributes": {"hhvXYck0": {}, "upMzUYnb": {}, "76tFkEOR": {}}, "timeZone": "V3bu1bNC", "zipCode": "tX7W40V6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyProfile' test.out

#- 54 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "Do5sYadC", "avatarSmallUrl": "CFrHHC3D", "avatarUrl": "pZxkrQDX", "customAttributes": {"uNFviMar": {}, "v8mnfHK8": {}, "CCmE2lPn": {}}, "dateOfBirth": "1980-10-10", "firstName": "bD3SGEdl", "language": "nVI", "lastName": "I1mX2tJo", "privateCustomAttributes": {"ARtdbBe7": {}, "udsMrok0": {}, "WvGYYnx4": {}}, "timeZone": "V709xbnG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'CreateMyProfile' test.out

#- 55 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetMyPrivateCustomAttributesInfo' test.out

#- 56 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"ezKsDwG2": {}, "omOR2nvY": {}, "I9TVqJdv": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 57 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetMyZipCode' test.out

#- 58 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "zcWbfUpa"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'UpdateMyZipCode' test.out

#- 59 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'Xp5JMl5L' \
    --body '{"category": "L4bTxBmZ", "description": "jdrrIxsB", "gameSessionId": "0NRsB1fP", "subcategory": "qqRRulpq", "userId": "pymDkQht"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicReportUser' test.out

#- 60 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'rHWwRVnw' \
    'VBOqOHi8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGeneratedUserUploadContentUrl' test.out

#- 61 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'pWGd1juY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfileInfo' test.out

#- 62 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'hiqjRJOq' \
    --body '{"avatarLargeUrl": "B5F93zFQ", "avatarSmallUrl": "bJndUDpd", "avatarUrl": "ONneAczb", "customAttributes": {"BdHb2slt": {}, "71B1SmZp": {}, "2JZp50Cn": {}}, "dateOfBirth": "1992-01-12", "firstName": "1j02o7Jj", "language": "Bzvb_SCKm", "lastName": "jMXJRk0e", "timeZone": "aKQDOJvr", "zipCode": "TefglSs6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfile' test.out

#- 63 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'g4iY9u02' \
    --body '{"avatarLargeUrl": "aCNYIWek", "avatarSmallUrl": "p18lOC3m", "avatarUrl": "NqF7Bl0L", "customAttributes": {"cghVHfPE": {}, "spxwhRON": {}, "0bc1eMbE": {}}, "dateOfBirth": "1988-11-13", "firstName": "jowLqc3e", "language": "PJ-PPeB-my", "lastName": "E1Y3Dymt", "timeZone": "j3giPg4x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicCreateUserProfile' test.out

#- 64 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    '4yiPX6ue' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGetCustomAttributesInfo' test.out

#- 65 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    's1Hhhkg1' \
    --body '{"yLVbLFzH": {}, "EP8cM4NT": {}, "wr0KHaAs": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateCustomAttributesPartially' test.out

#- 66 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'mTej52WK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicGetUserProfilePublicInfo' test.out

#- 67 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'i6tArAUR' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
