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
basic-create-namespace --body '{"displayName": "CBEDfkek", "namespace": "qO0MJUDu"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 17, "comment": "0pDu6B78", "userIds": ["P3x2agEY", "FW9OxAEq", "AeMmyBoI"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["lnA2zbnh", "XekjJSrr", "fYGQ76yZ"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "9Gwj2fUB", "description": "QzZnlMSD", "gameSessionId": "w5ROikuu", "subcategory": "T8wLZgnv", "userId": "TtIhG5xH"}' --login_with_auth "Bearer foo"
basic-get-user-status 'HNWjsx4M' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "zvGRjBs6", "userIds": ["cWTST0UX", "2SaRE7EN", "z9J1Wsxc"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "rcHwD0QJ"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "26hMH5Wg"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'G6aDGNd4' 'vNdQtKiI' --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "DPRwW0Sh", "name": "BV16f4cM"}, {"code": "oRyPNzPd", "name": "JJHGifIP"}, {"code": "LRlhTaSO", "name": "AjT0TiNP"}], "countryGroupCode": "T59KeHPP", "countryGroupName": "ma6MigVw"}' --login_with_auth "Bearer foo"
basic-update-country-group '4OmD7BEc' --body '{"countries": [{"code": "ODjQBJt1", "name": "AxlQKO1Y"}, {"code": "nbmzxLbe", "name": "Z706VUWq"}, {"code": "m8tKs8dr", "name": "rQ5nbO8z"}], "countryGroupName": "Yns18JyR"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'zs5ek6Vk' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'z4ezdVm2' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["xbuYsmpQ", "I3NX4hkt", "GGV1Alpv"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile '0KcOOwbJ' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url '505kwtOL' 'GjXbqQPj' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'e4DlP3iE' --login_with_auth "Bearer foo"
basic-update-user-profile 'cxsUwerb' --body '{"avatarLargeUrl": "TdmxtRRA", "avatarSmallUrl": "T32OYgAw", "avatarUrl": "eAB8kChY", "customAttributes": {"sUj4SdRH": {}, "RCjmEZs1": {}, "St7UgWvs": {}}, "dateOfBirth": "1978-12-31", "firstName": "JB0jeLCm", "language": "ng_yEHc", "lastName": "fex0YnXH", "status": "ACTIVE", "timeZone": "bagEGsDa", "zipCode": "02mXi8nL"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'BoGnXva7' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'xgRvOA0a' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'pRiNDaw6' --body '{"li6ZKMj7": {}, "9QhwMvkH": {}, "pqc6vaOy": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'TsJHKkFS' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially '7RTdQDm3' --body '{"NYy0IpNu": {}, "AXFPxBDn": {}, "uz1WWeOp": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'dLPWtFB6' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'z5csroXn' '37QG4a1v' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'A8weo3ML' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'wWg0zPrP' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "8L1CEOoF", "avatarSmallUrl": "a4qyi6Kf", "avatarUrl": "1R6qFoGQ", "customAttributes": {"jqhzk9nL": {}, "WxxYtbpp": {}, "FcNZkPQw": {}}, "dateOfBirth": "1984-12-22", "firstName": "QtnELPTr", "language": "il-BcrO", "lastName": "NpNQEH1g", "privateCustomAttributes": {"QMccgKQZ": {}, "mcbm9Nz0": {}, "HLoUtqzv": {}}, "timeZone": "4bn3VuaL", "zipCode": "Ey7Cgq0b"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "cr1m0JE8", "avatarSmallUrl": "xKlZIYyC", "avatarUrl": "WMIClIOl", "customAttributes": {"SZ5s8TUd": {}, "csXoP47s": {}, "hdYQnglH": {}}, "dateOfBirth": "1977-03-02", "firstName": "RPOx4zkl", "language": "NtG_jowd-838", "lastName": "gSwyYXe6", "privateCustomAttributes": {"nIL2pzvm": {}, "shGMpZoK": {}, "2PpD83Ox": {}}, "timeZone": "VnUwnHvA"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"nS4EZR60": {}, "lMr8eM2R": {}, "5NUhLI98": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "hU53XobW"}' --login_with_auth "Bearer foo"
basic-public-report-user '94MybFzx' --body '{"category": "GyvtRHLb", "description": "odlEGS2u", "gameSessionId": "tyn5H5VL", "subcategory": "vc5uks2U", "userId": "FQFwziDs"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'FbTQYwxU' 'raVvN4LW' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'wuOBd58y' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'XE8EzQCw' --body '{"avatarLargeUrl": "Q3WnuoGC", "avatarSmallUrl": "SlcLKtM6", "avatarUrl": "Xg1m8TNH", "customAttributes": {"lfFSw9rH": {}, "LF1KR2LF": {}, "h1IS8H9H": {}}, "dateOfBirth": "1979-09-09", "firstName": "mwDCFOKq", "language": "fQ-udaq", "lastName": "zxxvWBgJ", "timeZone": "Eel0XITQ", "zipCode": "uFAmxHVu"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'MGlAAKCl' --body '{"avatarLargeUrl": "LjNebta7", "avatarSmallUrl": "gTrF3Ud7", "avatarUrl": "HQ9cJGVW", "customAttributes": {"lyxuuVwA": {}, "T5zBhpG3": {}, "Cm8MtAWL": {}}, "dateOfBirth": "1980-10-02", "firstName": "pOGZROla", "language": "aAV-Ytzr", "lastName": "G741zrHl", "timeZone": "dZqe0Tpl"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'A5a1dZXc' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'p3ycGWLF' --body '{"uE1nNyk3": {}, "AWtGe7vn": {}, "dVTdRJiG": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'hHMaXsfQ' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'Ko7JRSIt' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "1XZbpQJt", "namespace": "BcQgjq95"}' \
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
    --body '{"actionId": 98, "comment": "K76BU9kf", "userIds": ["dXoAWtKv", "jsIsn62u", "PJ8eomtz"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["3utq2W1q", "AKs9OWod", "oiIk3Yks"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "WEHsVJpV", "description": "ct1GTSqm", "gameSessionId": "YGN7grDh", "subcategory": "SQVCRDfM", "userId": "bTe1ErwT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'FhjkPNHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "5v15ppLn", "userIds": ["rHZ8p1eF", "k24yWZDa", "Ny7uIT1X"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "WcVYiE8V"}' \
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
    --body '{"apiKey": "9tHiF1ob"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'Y3n52M96' \
    'CrDrsFmW' \
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
    --body '{"countries": [{"code": "RAzWl4v7", "name": "T9GhGg90"}, {"code": "sHahqQZQ", "name": "hWbHtkl0"}, {"code": "tkHD3ucD", "name": "BFiwSVPm"}], "countryGroupCode": "fTaYJmrJ", "countryGroupName": "haU6JM5i"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AddCountryGroup' test.out

#- 20 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'ApF4qZZa' \
    --body '{"countries": [{"code": "rNmkaZxv", "name": "3NO5xUbz"}, {"code": "LgtoOl92", "name": "tnvWEkgO"}, {"code": "SoWJYhJU", "name": "VRNLMpjG"}], "countryGroupName": "LrOCZZ7D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'UpdateCountryGroup' test.out

#- 21 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'BzSlakgH' \
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
    'mpjqA4Rn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetUserProfileInfoByPublicId' test.out

#- 25 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["Oxe875xQ", "2IwICj6r", "5EJDaiNT"]}' \
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
    'QSlyhvAa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'vpMcR2JE' \
    'Sv6yysfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'vaJOdy3g' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'Yn2yvndT' \
    --body '{"avatarLargeUrl": "XAHlwUFH", "avatarSmallUrl": "kN6zAfgH", "avatarUrl": "CuWINJAf", "customAttributes": {"N6laoLcx": {}, "xZfdrHf6": {}, "dY9rd8IA": {}}, "dateOfBirth": "1991-02-08", "firstName": "foxsHKMy", "language": "pAyq_fihm", "lastName": "l3VKrNsA", "status": "ACTIVE", "timeZone": "7886e0wr", "zipCode": "qIgjdyF5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'z5iBnCRQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'j1zqfPUW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'Qkr87FOS' \
    --body '{"lMpeIqwJ": {}, "MLcNeJIN": {}, "oYGzIOSF": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'E8gVHjgr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'jCZEAF6l' \
    --body '{"OvNYVJPX": {}, "e0NIjALk": {}, "RHj0jJ7t": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'e8GhqDQp' \
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
    'ue3Ie7bN' \
    'DYnDVItu' \
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
    'kAsqNETS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'YyNXKCLT' \
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
    --body '{"avatarLargeUrl": "WvfcjX3z", "avatarSmallUrl": "sPu4LWxI", "avatarUrl": "NtKiikun", "customAttributes": {"hJfENskY": {}, "ImggQBfk": {}, "mO05QbTj": {}}, "dateOfBirth": "1999-11-28", "firstName": "JwDkYVRy", "language": "yHxE_Krwk_Re", "lastName": "dwbHvnJM", "privateCustomAttributes": {"xzsXpx0Z": {}, "2aMwY3VU": {}, "zDmW1Qdw": {}}, "timeZone": "d5VX2CKs", "zipCode": "Vqvor26M"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "iohTeZ31", "avatarSmallUrl": "tSWjQBoQ", "avatarUrl": "P12u6FQB", "customAttributes": {"800clWMg": {}, "h3uYnkun": {}, "vkaYZTNs": {}}, "dateOfBirth": "1995-03-09", "firstName": "efXt6VCI", "language": "uA", "lastName": "SsEYlSgd", "privateCustomAttributes": {"BLLvsco7": {}, "E973C9Bm": {}, "BtRBqPC6": {}}, "timeZone": "J491Icl7"}' \
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
    --body '{"6ZBY5r0g": {}, "oWCBBBHi": {}, "Rub6GVGu": {}}' \
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
    '{"zipCode": "KX8GcPcs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'mVk2goew' \
    --body '{"category": "bZCaR01s", "description": "H1RTsJ82", "gameSessionId": "wcvzKLfg", "subcategory": "THqk7oFr", "userId": "yyGzMlsb"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicReportUser' test.out

#- 55 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'tpNbKbFD' \
    'CM76PrMa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'D5m2XoUR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'ciHaZqe5' \
    --body '{"avatarLargeUrl": "KL3VVazW", "avatarSmallUrl": "YT4UvCrX", "avatarUrl": "7E71i4Hv", "customAttributes": {"4cMH1c9h": {}, "QkfUxQll": {}, "RF24f9Xc": {}}, "dateOfBirth": "1978-04-20", "firstName": "tWwemokh", "language": "xIV", "lastName": "nNwCUSvX", "timeZone": "Q4eeqiDU", "zipCode": "V0rRofhB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'CvSlwtFj' \
    --body '{"avatarLargeUrl": "jpzTyisg", "avatarSmallUrl": "a5Hq4Lyv", "avatarUrl": "V0hLxZSi", "customAttributes": {"7eaDh6Yd": {}, "GLyISmvY": {}, "OxzjzXQg": {}}, "dateOfBirth": "1981-03-16", "firstName": "WD2JAi0C", "language": "ofX-mfTb_De", "lastName": "2Sw2ENt5", "timeZone": "wTz2i1OA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'xoayMDsR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'lBdjYBO7' \
    --body '{"NEMJVANS": {}, "i29e4Crj": {}, "vN2wePet": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'SQlMrIGa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'fxN1xhDP' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
