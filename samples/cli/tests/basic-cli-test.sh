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
basic-create-namespace --body '{"displayName": "XqB6nGYB", "namespace": "cHtGUd7U"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 42, "comment": "ONpiOrQd", "userIds": ["Jbb1DZ5j", "DRcN7v7t", "7fojMF7H"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["m0vVt9ll", "mXJAd62a", "LwSAe2gp"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "FB9iIcrC", "description": "ZKVHzveI", "gameSessionId": "YbodTLuk", "subcategory": "8RRlR0Lm", "userId": "oyV9luQ5"}' --login_with_auth "Bearer foo"
basic-get-user-status 'RYt4iagj' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "Qar71jKv", "userIds": ["pYBI9MIZ", "CsVSXuX6", "r8HRghLj"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "97iqdrfa"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "7nevIYRo"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'Y18UFne9' 'OipnQ4z1' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "haEDt0mp", "name": "BfCGblpS"}, {"code": "Epdk1Z6W", "name": "Mcwj9s3e"}, {"code": "GNzJob4M", "name": "JTXrnjff"}], "countryGroupCode": "UNwYwYoC", "countryGroupName": "OMB4oXF0"}' --login_with_auth "Bearer foo"
basic-update-country-group 'KCq4aC6c' --body '{"countries": [{"code": "p5zSBxJD", "name": "0elTA2A6"}, {"code": "TAp0dQh4", "name": "CDDVq7hj"}, {"code": "ibCgtysu", "name": "0VbRpAn0"}], "countryGroupName": "qjLoIbkB"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'N5Kp38FG' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'r9PSO6u7' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["ROsAnWBX", "MjCBe7zx", "UgKLxYRp"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'GGj46GVQ' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url '5MGu7qNm' '6TwgXRnJ' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'OPrnvFAV' --login_with_auth "Bearer foo"
basic-update-user-profile 'zN4fOzyx' --body '{"avatarLargeUrl": "9eQDIL91", "avatarSmallUrl": "NXJ9C4AN", "avatarUrl": "CGfHsPSl", "customAttributes": {"xvfXYcMg": {}, "r6WJF8KJ": {}, "pa02prtp": {}}, "dateOfBirth": "1999-12-03", "firstName": "YVtHUN3D", "language": "KbU_mzOn_zR", "lastName": "OQb2ERgB", "status": "ACTIVE", "timeZone": "IhiOibMw", "zipCode": "LUj7Pw8u"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'RXmXWjID' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'k8EeGQTV' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'Wvd2sADr' --body '{"4LQgEDgw": {}, "eyE9FTYC": {}, "JlypaZZz": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'll3yjVgU' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'H6FOTjVR' --body '{"0a2dDVdb": {}, "wfhzVRuM": {}, "miFMFtjG": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'e2JFbaYG' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'Zy4nYGkq' '0MNQZb35' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'xw9IcsI7' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '78Um5MIx' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "Tax58QBc", "avatarSmallUrl": "5fGOvnfP", "avatarUrl": "YijFhnJg", "customAttributes": {"eqEzrOJu": {}, "8QGUx7RP": {}, "lQ1WPE2l": {}}, "dateOfBirth": "1971-10-13", "firstName": "H4XOgpfF", "language": "Rfn-Hmgt_mn", "lastName": "LogLhxO1", "privateCustomAttributes": {"4mwPcvj4": {}, "uy0q0NjY": {}, "HthoWWCW": {}}, "timeZone": "SnyqM3eu", "zipCode": "vwQbzkfh"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "PBbPpNoU", "avatarSmallUrl": "e0BlNE33", "avatarUrl": "Ft1BoPyV", "customAttributes": {"RGVKkT1O": {}, "9PRsvRva": {}, "xP3jNG2X": {}}, "dateOfBirth": "1989-06-20", "firstName": "8yuMlCIe", "language": "ANX_OA", "lastName": "8TH5WQOM", "privateCustomAttributes": {"Osp3k4PO": {}, "sCVFrndL": {}, "IzRBw163": {}}, "timeZone": "vXytjeAj"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"GZHn5NaS": {}, "FNcluylQ": {}, "COZljrJC": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "3l2ga8us"}' --login_with_auth "Bearer foo"
basic-public-report-user 'qUKWfUYR' --body '{"category": "YZMIhppr", "description": "HLeFjUhn", "gameSessionId": "93jCbdPP", "subcategory": "zL4A8CcC", "userId": "pOlpN3Is"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'jMZDPAN8' 'LKTF0QX2' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'hL7vmrRs' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'cHo0Orzz' --body '{"avatarLargeUrl": "NZA35Xhi", "avatarSmallUrl": "0FU1Rxw5", "avatarUrl": "gV0M5yFI", "customAttributes": {"NOqS4tbT": {}, "taLbFt3b": {}, "7fXFhWxd": {}}, "dateOfBirth": "1975-07-27", "firstName": "MKsX0R1m", "language": "Qo-voeN", "lastName": "BAhJm4XY", "timeZone": "op007MYn", "zipCode": "Vn5E2xPx"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'tBw6vWUu' --body '{"avatarLargeUrl": "h2Rx04zp", "avatarSmallUrl": "A7sPFAHW", "avatarUrl": "IGYIlci6", "customAttributes": {"eR4e3HTG": {}, "CfO9xfCd": {}, "M85tCYPK": {}}, "dateOfBirth": "1985-07-28", "firstName": "wJHNur7y", "language": "iFJ-kBEP", "lastName": "rUaB3m9O", "timeZone": "pqdwFr2l"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'CtIqx3hB' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'ZKfZoSuV' --body '{"PLDasU8W": {}, "KTXCktM7": {}, "whoYFO4t": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'WJVRSpd7' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status '4VA5fukq' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "SFoqjUJ2", "namespace": "9KI0gVZg"}' \
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
    --body '{"actionId": 38, "comment": "fBuce08O", "userIds": ["4vonaHtw", "Ld4SzOfh", "qB9xQTAT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["K04zV5qj", "ODfoFEG1", "iWjEs9G9"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "ha9rTN6M", "description": "UpdQEKfG", "gameSessionId": "CvPaSUd1", "subcategory": "6wgwxTWw", "userId": "1tyz8YDo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'm8p1hUCR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "UJeB6dvT", "userIds": ["XGRiMJkk", "P73bvWzC", "uqizuwNU"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "a0PeBuBJ"}' \
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
    --body '{"apiKey": "xlZiGBh2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    '1Yl7HfL9' \
    'Xuaop1mV' \
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
    --body '{"countries": [{"code": "0RnpqxJd", "name": "f7qfZanQ"}, {"code": "2O7OAsF5", "name": "p8ZWwqwf"}, {"code": "dUwal3kR", "name": "vCxvhUIa"}], "countryGroupCode": "cMVdymV1", "countryGroupName": "g0ci0TWK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'xFyTPykZ' \
    --body '{"countries": [{"code": "STAef05K", "name": "hBOlmp7I"}, {"code": "qsuHTnZ6", "name": "IffMEqEd"}, {"code": "VwlpQxvO", "name": "k01l4vcc"}], "countryGroupName": "bnpizj6c"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    '1WnOR4hY' \
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
    '6K1xfuor' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["KQBpp8h8", "ZPxAUao8", "T6AjJSyo"]}' \
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
    'tRocSsem' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'a2Ae8mk8' \
    'IZ637xv9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'WrElp7z2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'xm4ZCMIn' \
    --body '{"avatarLargeUrl": "m2DbLPIx", "avatarSmallUrl": "9FcNGKEN", "avatarUrl": "XajPgPsx", "customAttributes": {"6OCXQWgP": {}, "Xr1ELPK0": {}, "gHIMXzr0": {}}, "dateOfBirth": "1997-01-24", "firstName": "KbO1WeWw", "language": "NSX", "lastName": "uvQeWFQJ", "status": "ACTIVE", "timeZone": "puSuzuo7", "zipCode": "OUev5fQ3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    '1Ia9QtK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'saj5rjmX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'Jq6ArVfH' \
    --body '{"d4YCzjfH": {}, "6bJZBZNh": {}, "zbWYdffT": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'zxauy0Xr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    '8p5BYAVp' \
    --body '{"z2iAt5CC": {}, "4I619PNa": {}, "FLQfSjmU": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'qTp162Rc' \
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
    'zCV26GEr' \
    'Fh6gl2ma' \
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
    'N1ckoZaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'c83UrXqe' \
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
    --body '{"avatarLargeUrl": "K64n9TG2", "avatarSmallUrl": "BUiA6Kih", "avatarUrl": "pMiL03as", "customAttributes": {"nTQiewos": {}, "MbT5WmDP": {}, "fJn6FZev": {}}, "dateOfBirth": "1982-02-28", "firstName": "BiWgU4XL", "language": "vcr_XIUA", "lastName": "ICPZITZv", "privateCustomAttributes": {"6YV9ZIwZ": {}, "WzJZMK62": {}, "S2JAKxJe": {}}, "timeZone": "m1NxOCaR", "zipCode": "1C5c3yZn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "6OWC1lHI", "avatarSmallUrl": "MB8UQJib", "avatarUrl": "Z2GPjCjK", "customAttributes": {"9Fo42ejH": {}, "ofJTyfTi": {}, "G9Jtud3v": {}}, "dateOfBirth": "1974-09-11", "firstName": "A386xOCR", "language": "nN-AqFI", "lastName": "EQDtt0uA", "privateCustomAttributes": {"OZ1JqkcB": {}, "RPNaZm2j": {}, "MkM5hvzf": {}}, "timeZone": "Jw5aXExi"}' \
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
    --body '{"FxvLpdRG": {}, "Arcpfn1S": {}, "O5xaYaWL": {}}' \
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
    '{"zipCode": "qYCRrlZ1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'BKhXU1Xq' \
    --body '{"category": "4wL5bj2g", "description": "EMOSbshX", "gameSessionId": "QPxBgvhx", "subcategory": "lLrOOGOJ", "userId": "gyTEuzwz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'OsWD0tXm' \
    'x1Ny6dpi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'k55Pr1HJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    '3WFDdT37' \
    --body '{"avatarLargeUrl": "WATmsqVe", "avatarSmallUrl": "LaRohmdL", "avatarUrl": "wzX97KeU", "customAttributes": {"Rvmcjt2x": {}, "LPsMIBZo": {}, "458fYWtS": {}}, "dateOfBirth": "1990-01-15", "firstName": "wHSJUlNX", "language": "rNfQ", "lastName": "iEuyUkHe", "timeZone": "FYY4khRT", "zipCode": "MOSCjTij"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'knUf2wQP' \
    --body '{"avatarLargeUrl": "Q3KOOtIU", "avatarSmallUrl": "STlbUkUN", "avatarUrl": "3wG2bBnY", "customAttributes": {"KJpk2GEA": {}, "Yeebmkas": {}, "KaFO1sos": {}}, "dateOfBirth": "1985-12-30", "firstName": "AEdp1No4", "language": "vkA", "lastName": "8HbVUG7a", "timeZone": "TRaHrZjo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'G4rpTJ2z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'EXnLyM4x' \
    --body '{"mef8k1Zh": {}, "nKAmaXSB": {}, "N8eyXsgg": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'ogUFFkpt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'Covdd8vr' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
