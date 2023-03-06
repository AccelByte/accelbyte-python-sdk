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
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "CTCrbCbP"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'OyNQkT7N' 'vyE3cwyA' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "LczNIicX", "name": "m7agSrjJ"}, {"code": "W2OQNOs1", "name": "PXhT5Fvd"}, {"code": "iRilZ7oF", "name": "gx4c8Oum"}], "countryGroupCode": "KtPDKJDX", "countryGroupName": "n7Z4U68s"}' --login_with_auth "Bearer foo"
basic-update-country-group 'u8XfqlqN' --body '{"countries": [{"code": "iTvB6SdA", "name": "dIhUDrwo"}, {"code": "Z5MecdKi", "name": "5r6QEa1y"}, {"code": "sLEzth6m", "name": "XhzkzWkF"}], "countryGroupName": "eZSoEAcB"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'dW19m4eu' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id '6d5tA5jU' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["miTqpyhP", "FdxLzFQN", "05MYzYiK"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'ZYdFLIAj' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'GGJddVCv' 'u9vx5KQ7' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'KYnIuMBv' --login_with_auth "Bearer foo"
basic-update-user-profile 'aO35llzQ' --body '{"avatarLargeUrl": "RaT5kPxU", "avatarSmallUrl": "fofvnnSu", "avatarUrl": "B0y5WUlr", "customAttributes": {"MdI4sNve": {}, "abntBSxT": {}, "eIv53HGC": {}}, "dateOfBirth": "1975-05-05", "firstName": "ljvjKoyD", "language": "uzdP_SINg", "lastName": "jkQsfCaT", "status": "ACTIVE", "timeZone": "f8TgoNm0", "zipCode": "3VLisV6z"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'wPuo3td6' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'TC6I3lMj' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'GSWN2laR' --body '{"lxfcjHfY": {}, "akUCTqGk": {}, "E7wcWfDs": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'lpJSqGAX' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'Q0yYoNRK' --body '{"d3IL5TAQ": {}, "6iiPlSC2": {}, "uE4o5Vwd": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'o3fePqIJ' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'LZZbSqb8' 'RwNmn9Hr' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'NQy4uZAA' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'iE0mit9R' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "GCCHYzUO", "avatarSmallUrl": "cEdscKHP", "avatarUrl": "EqgA8yu7", "customAttributes": {"Vk6Jt4Ym": {}, "os9Jcdos": {}, "4fYcTVU6": {}}, "dateOfBirth": "1993-04-06", "firstName": "Bt0zYoMc", "language": "GZRd_bygM", "lastName": "AvxJMdal", "privateCustomAttributes": {"wSyliWMN": {}, "W5NyLu0M": {}, "3VHh2EI8": {}}, "timeZone": "JlDbPWbQ", "zipCode": "6Q9lNmqR"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "BaAkLnvx", "avatarSmallUrl": "kT1X68cm", "avatarUrl": "Dc3fxU8M", "customAttributes": {"yKrQpM4h": {}, "kkK6KKXN": {}, "B3Gv0Iqm": {}}, "dateOfBirth": "1987-04-16", "firstName": "51TkhjYn", "language": "Rw_PAxT_nM", "lastName": "rXsDr6kI", "privateCustomAttributes": {"LsSSyDdm": {}, "ykmoPYgc": {}, "2L4jk4Lo": {}}, "timeZone": "0LSP0pf4"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"IxjUkl53": {}, "5X3ateEK": {}, "DpADz1x3": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "poD3Qgb3"}' --login_with_auth "Bearer foo"
basic-public-report-user 'boLQQ1Mz' --body '{"category": "H7Qm8bwb", "description": "mXgdAPh1", "gameSessionId": "EThG96gA", "subcategory": "FKK2WDgC", "userId": "cxvONZm3"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'EeERmDny' 'eFoF7VSZ' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info '6pf3vneS' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'D2Tb3g7m' --body '{"avatarLargeUrl": "SQUhAEtr", "avatarSmallUrl": "mjqU6YE3", "avatarUrl": "p4lSck0Z", "customAttributes": {"Hn5GI39Y": {}, "BHqaTHeK": {}, "tW18iGeU": {}}, "dateOfBirth": "1976-10-05", "firstName": "c9d9sogW", "language": "Xe-HwiW", "lastName": "yEW4ZJJ4", "timeZone": "2d3PBddN", "zipCode": "8S48l9ly"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'NApflxqM' --body '{"avatarLargeUrl": "rj3oZk03", "avatarSmallUrl": "QXcKMDYD", "avatarUrl": "DxHSZjtq", "customAttributes": {"XyJ58f7G": {}, "c26SaiGV": {}, "kydwYWQG": {}}, "dateOfBirth": "1998-06-10", "firstName": "6yUZNmTB", "language": "PV-Czud-688", "lastName": "GLiBNrDj", "timeZone": "qoxcwgGL"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'XpUL4pp2' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'ncYAHdNz' --body '{"DmeIP6rO": {}, "vDz9KOsb": {}, "392k6YmJ": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'FfRByjlB' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'iuFM3FIo' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "1X2PFAAM", "namespace": "wzHPxB1U"}' \
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
    --body '{"actionId": 38, "comment": "CnqntX9y", "userIds": ["1aZSWMiV", "i10sG6vx", "kfUcmqRR"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["bceJ5i0E", "eDxOgBnh", "hqElIaDm"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "l48wdNFL", "description": "Tm5T50x9", "gameSessionId": "WT0GfH2r", "subcategory": "tOa4EXsX", "userId": "zOXQAk4m"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'qrxzTtuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "l4XlbGL8", "userIds": ["QOxtjzm8", "y2wNhmwo", "YZyI4EFZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "KBcYrCEA"}' \
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
    --body '{"apiKey": "E7WIsfmx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    '40NLRc6m' \
    '8heKnWhz' \
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
    --body '{"countries": [{"code": "fe2Nubeo", "name": "KFeIaFQC"}, {"code": "YoDPICpn", "name": "duEEQlUL"}, {"code": "dJz4mnRB", "name": "kMNxvvKg"}], "countryGroupCode": "AT8mJrYq", "countryGroupName": "6hRkloqx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'M3gpwxcf' \
    --body '{"countries": [{"code": "My9XzjjI", "name": "5YbsKoAD"}, {"code": "kzJEN2VH", "name": "zih3bit0"}, {"code": "VWn3CO39", "name": "PXDNxtXg"}], "countryGroupName": "eO3FgkXh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'jDzaQY3s' \
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
    'nn2ZkP7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["FdP43e5d", "C9XIBudf", "ZgrbHDID"]}' \
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
    'P2aMlu7W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'tjCtoYet' \
    'OO847g8O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'udOfjnCu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'HZ3c46Ij' \
    --body '{"avatarLargeUrl": "Ga23YvYm", "avatarSmallUrl": "mDg7VYPX", "avatarUrl": "IuvUYTZB", "customAttributes": {"RujIUE1T": {}, "q5jyAZvk": {}, "RCMNFIur": {}}, "dateOfBirth": "1976-03-01", "firstName": "gh4TeUTk", "language": "KKza", "lastName": "ZwsVC0gL", "status": "INACTIVE", "timeZone": "ZVJSPqJi", "zipCode": "wv1qlYB1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'RSKs6gQx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'C3Gb7S0o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    '4zGYY7KQ' \
    --body '{"I1AeFgPq": {}, "aOkvo1ao": {}, "lB4lkKB4": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'EYOkQ1jM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'D3cym8xI' \
    --body '{"fkOVW2gr": {}, "REOLx0KO": {}, "ww3HICQL": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'fl7MUBG7' \
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
    'm5UDrT6Q' \
    'XCs5SPBb' \
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
    'RPZTF6oQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'AXVG7tns' \
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
    --body '{"avatarLargeUrl": "Zg5QgXjv", "avatarSmallUrl": "yGJPN4eX", "avatarUrl": "bJE5Vs2G", "customAttributes": {"cyomQoIX": {}, "imBJehyx": {}, "lNsjUgxB": {}}, "dateOfBirth": "1976-12-12", "firstName": "F6wFPoJe", "language": "JFzE", "lastName": "shZyZl5x", "privateCustomAttributes": {"4bRXBHUT": {}, "rDzZSKsc": {}, "fOcYu3dp": {}}, "timeZone": "CROYqUiG", "zipCode": "KXVFCmpo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "6sPwVOED", "avatarSmallUrl": "SJsEK5Qp", "avatarUrl": "NhlI2iS5", "customAttributes": {"EpGhhvXY": {}, "ck0upMzU": {}, "Ynb76tFk": {}}, "dateOfBirth": "1986-07-24", "firstName": "ORV3bu1b", "language": "ydvU-IeqO_dL", "lastName": "CFrHHC3D", "privateCustomAttributes": {"pZxkrQDX": {}, "uNFviMar": {}, "v8mnfHK8": {}}, "timeZone": "CCmE2lPn"}' \
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
    --body '{"sbD3SGEd": {}, "lwuUccE5": {}, "36ugBp3H": {}}' \
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
    '{"zipCode": "BvepnDCj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'gyJlXe36' \
    --body '{"category": "mgWjLfFm", "description": "teue9nzJ", "gameSessionId": "6fH24T80", "subcategory": "5tVg8JqU", "userId": "0jZpjvsu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'gAOS7u8R' \
    'iWyerCSa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '8SRgwsAj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    '1ik1jgla' \
    --body '{"avatarLargeUrl": "DXTvKCWw", "avatarSmallUrl": "NTAhd2wr", "avatarUrl": "S0uPdjhd", "customAttributes": {"inpng5BL": {}, "y8wbhMss": {}, "AHjapIkY": {}}, "dateOfBirth": "1993-12-19", "firstName": "JOqB5F93", "language": "gor", "lastName": "YbCtmKy8", "timeZone": "M9zVrjfG", "zipCode": "XZnqAQUo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'Y1GjlIIk' \
    --body '{"avatarLargeUrl": "0iKoTTS1", "avatarSmallUrl": "j02o7JjT", "avatarUrl": "XAQN0qds", "customAttributes": {"kdQV0TqI": {}, "8EFnmDbx": {}, "Ixi4YKlO": {}}, "dateOfBirth": "1991-03-28", "firstName": "g4iY9u02", "language": "Jd-jJyL", "lastName": "atuUjjt9", "timeZone": "lIMGql5E"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'lEa9EIIl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'GcHB3CfR' \
    --body '{"3ncDlwi3": {}, "v3MFFJ1K": {}, "esKoELCp": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'obBEG8X6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    '45xpdXpa' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
