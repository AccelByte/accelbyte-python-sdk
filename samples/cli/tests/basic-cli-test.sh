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
basic-create-namespace --body '{"displayName": "6YbqG4Yk", "namespace": "md4dgjXm"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 94, "comment": "f7UT6dNN", "userIds": ["YLqb5gDr", "MkE2rGmQ", "oKwTBnGg"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["nsODZbrY", "ZjC0u4Tk", "dKiXnf6F"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "ofRsSeZI", "description": "2jMUJKTk", "gameSessionId": "yssIaiJK", "subcategory": "uATMyGQp", "userId": "NMhhgWPw"}' --login_with_auth "Bearer foo"
basic-get-user-status 'CgMBhGbI' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "Xw81VBg6", "userIds": ["0Rk2l89o", "oBjGxpyk", "e9uvQPBo"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "N91CWW3p"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "PNr5ichA"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'zCXV92Hk' 'kiFUScuT' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "wijCsee1", "name": "B1l9C8OR"}, {"code": "r9zrdc8T", "name": "EMKFFJGO"}, {"code": "0SQD8e9y", "name": "WYgJTYIN"}], "countryGroupCode": "o9NguSB9", "countryGroupName": "MfeYErRz"}' --login_with_auth "Bearer foo"
basic-update-country-group 'SEcVDoPg' --body '{"countries": [{"code": "iXsAlJDL", "name": "7ZflNC4p"}, {"code": "ngaQp6rd", "name": "gl23FmRU"}, {"code": "CB6BEw6b", "name": "RJiXIP6N"}], "countryGroupName": "ClwKraxS"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'DooDHihI' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'xHyJSCwY' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["r3OAk0V8", "rDPIjnTW", "9IzAz2BT"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'E6ka3Kvh' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url '9MdSxqbn' 'TJJjT4L8' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'Yvj7eUvm' --login_with_auth "Bearer foo"
basic-update-user-profile '0wR9kWWv' --body '{"avatarLargeUrl": "EsU7FGHn", "avatarSmallUrl": "NQlmknjj", "avatarUrl": "GnIbiJB0", "customAttributes": {"TqV8Qibz": {}, "wY2QEdmO": {}, "6CSkGYJU": {}}, "dateOfBirth": "1980-03-23", "firstName": "cZhlqThw", "language": "HMxa-Ms", "lastName": "RYGwNIEb", "status": "ACTIVE", "timeZone": "8y9Jjt2R", "zipCode": "6kiJ0SS8"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'imhQ3jPJ' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'jsy1FVGF' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'DYAiu2NR' --body '{"J3YppOPM": {}, "MScvuVJK": {}, "BgDfetyf": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'IzsNonwG' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'pGMdvQG4' --body '{"qSfUTZft": {}, "f1ztFoFD": {}, "IDfEQ120": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'hhbsKT5m' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'AhlKQiBW' 'Sgib694v' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'cKzgKqGb' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '3i51MISx' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "qQfLKY3P", "avatarSmallUrl": "mApcrFOS", "avatarUrl": "cLbnrLcI", "customAttributes": {"e0fHL2LS": {}, "60e32ohB": {}, "jh8m4Mq2": {}}, "dateOfBirth": "1975-03-30", "firstName": "JCNI4vqU", "language": "Klr", "lastName": "C0dA0dOe", "privateCustomAttributes": {"TuPbQH85": {}, "lHv3RMbS": {}, "xpCfBVgF": {}}, "timeZone": "rmZzzKA7", "zipCode": "8qp1mi2R"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "SIZqRNiK", "avatarSmallUrl": "garwDd8n", "avatarUrl": "XveRIitF", "customAttributes": {"QBMd6Mca": {}, "kXJxOFrO": {}, "USeAJpQ1": {}}, "dateOfBirth": "1984-03-15", "firstName": "SToyAK8Z", "language": "MG_Akhf", "lastName": "xV8cWv2b", "privateCustomAttributes": {"nslt78Nt": {}, "REMhVfH1": {}, "gmyDMBWC": {}}, "timeZone": "oJ4gZ2UO"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"dk7A4WxN": {}, "dSA5FFoB": {}, "lVXHreMw": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "DKTCb7QD"}' --login_with_auth "Bearer foo"
basic-public-report-user 'm9TsBNw4' --body '{"category": "PDdgwWV4", "description": "8yV3W1c9", "gameSessionId": "yBuQw14i", "subcategory": "I0pDuT3d", "userId": "YH5IHxr3"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'qnX7O5RA' '3YdsloB3' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'on5xkpkb' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'YcN9jKxX' --body '{"avatarLargeUrl": "DMIymVMW", "avatarSmallUrl": "KJ96FyMp", "avatarUrl": "27mqFSFF", "customAttributes": {"uYrq04Zi": {}, "7QEXddkK": {}, "t9A1l2nF": {}}, "dateOfBirth": "1974-04-21", "firstName": "iKGlgPUZ", "language": "KJ_pdpA_YP", "lastName": "8oYKEP87", "timeZone": "4ZEGdjv7", "zipCode": "OMqclw6H"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile '15VPhwQE' --body '{"avatarLargeUrl": "V1fQRpuB", "avatarSmallUrl": "ffWnK9ly", "avatarUrl": "vvpCVMuE", "customAttributes": {"E6pDt5Hc": {}, "eb4t5FTc": {}, "TDOmRu3F": {}}, "dateOfBirth": "1980-08-08", "firstName": "ixWe3eMu", "language": "LB", "lastName": "TxIKvTUw", "timeZone": "eDBlvH77"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'ectH1of9' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'ifesy1Eu' --body '{"fr1tFylu": {}, "p3VZ8QqW": {}, "EDo6rYWt": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'NWAcd9AW' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'M09ypV38' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "U6hYXV5r", "namespace": "nJODMASy"}' \
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
    --body '{"actionId": 47, "comment": "6OrbOxms", "userIds": ["KQ6olOkR", "F5AOmIht", "b8rui1g3"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["PocjunjQ", "TT1bzm6D", "w2kIzA5L"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "yz27YHAd", "description": "828AE1Hg", "gameSessionId": "yAN2VH1i", "subcategory": "LD8RUUdI", "userId": "mra7AGxJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'V2F8lxp4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "XRopiHIE", "userIds": ["UnhO9Dca", "WogQtbOV", "reqCCiYc"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "tS03LbQ0"}' \
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
    --body '{"apiKey": "v5xRmqpz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'o3Rlupu9' \
    '9FchdhTU' \
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
    --body '{"countries": [{"code": "V9rlgutG", "name": "JoZU4I0J"}, {"code": "o3kExGeL", "name": "seEd8vJk"}, {"code": "5DhukhPf", "name": "3mJsTDg6"}], "countryGroupCode": "e1zsng2E", "countryGroupName": "JfsW5ubH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'FqfoO1of' \
    --body '{"countries": [{"code": "984g5tyz", "name": "Zkk2ATja"}, {"code": "jhWetS2q", "name": "efuOyGxO"}, {"code": "VquFERSa", "name": "IAKgZhvN"}], "countryGroupName": "e45vllIQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'MFxWnstI' \
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
    'D6F1uJzq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["LdZMTzFW", "c3xcWsZe", "uk0JOlrt"]}' \
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
    'GKLCmnxY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'lyUDCsRt' \
    'aQMMulKJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '4F0JKasX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'cQvC1EBP' \
    --body '{"avatarLargeUrl": "S2XOyIDv", "avatarSmallUrl": "I8NSn6bi", "avatarUrl": "4oyFgjvX", "customAttributes": {"Xx5rr0QO": {}, "7iQ6TCxq": {}, "IZwQd6zW": {}}, "dateOfBirth": "1994-04-23", "firstName": "1SJh0E5c", "language": "cLmq", "lastName": "qiB5qV6e", "status": "INACTIVE", "timeZone": "TZKAuxz2", "zipCode": "oaZ7RUau"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    '31lSY4hh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    '8b5mq7F5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'znc41E3s' \
    --body '{"nA2MqTM8": {}, "OdfXUQHI": {}, "5yjiFp91": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'b5NH5nrM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    '5JSp0lgR' \
    --body '{"4O6SdJoh": {}, "in9TVMsK": {}, "gFZrcLnP": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'nsfRPMcG' \
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
    'MLGI4zfz' \
    'g0BtxIMH' \
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
    'ZOc5gpCl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'Ao5gojfJ' \
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
    --body '{"avatarLargeUrl": "hqTU6i71", "avatarSmallUrl": "qrCioJpg", "avatarUrl": "UoZEEqvR", "customAttributes": {"4V4JRxaz": {}, "lWJeSpgZ": {}, "nottXEoG": {}}, "dateOfBirth": "1978-12-15", "firstName": "wTVyB4Ok", "language": "JCoe-QPkL_781", "lastName": "RnQUKDI2", "privateCustomAttributes": {"s8Aemj8J": {}, "0A73paYu": {}, "18BdTvWe": {}}, "timeZone": "2Bw24Z9B", "zipCode": "3xxHLiVK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "5lPyQL7Q", "avatarSmallUrl": "cOXvEQg8", "avatarUrl": "TNmpQmwY", "customAttributes": {"bhXbQqUj": {}, "GXXtWyoh": {}, "FS32q4yh": {}}, "dateOfBirth": "1993-02-17", "firstName": "bHk0dSCy", "language": "XR-Dx", "lastName": "zBqSPHb9", "privateCustomAttributes": {"BuAiAbTd": {}, "WYAmxd72": {}, "r0ujn71r": {}}, "timeZone": "HuZhQ48u"}' \
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
    --body '{"rMji1MT4": {}, "eb5L7azZ": {}, "ib77NvjI": {}}' \
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
    '{"zipCode": "IRRPGki6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'LGkVXNM0' \
    --body '{"category": "6LY6dsd0", "description": "uR6813bF", "gameSessionId": "um3FtZUw", "subcategory": "BgcO4eXD", "userId": "CVZnZRbT"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'AHWVASOE' \
    'LUw4dT7c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '7TyMIVOp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'to1AzwVM' \
    --body '{"avatarLargeUrl": "kZwckJ9l", "avatarSmallUrl": "6xUm2Ol8", "avatarUrl": "4OUTZGjG", "customAttributes": {"9RDEBUVu": {}, "uSV75chC": {}, "OwpTW7dm": {}}, "dateOfBirth": "1996-05-26", "firstName": "iSOigyFu", "language": "kzd_gaJc", "lastName": "9mfF6VlJ", "timeZone": "MtyvNbj9", "zipCode": "H4aTEbru"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'TEd6JCBG' \
    --body '{"avatarLargeUrl": "YG4URaHQ", "avatarSmallUrl": "y684sySE", "avatarUrl": "nONK0UZu", "customAttributes": {"mqLKUhVx": {}, "RELHiz9W": {}, "G9UqT0hz": {}}, "dateOfBirth": "1988-06-19", "firstName": "ZxiVkEA8", "language": "xcbk_agaS", "lastName": "XJdQjGW9", "timeZone": "UJzNxbai"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    '9Rl9A9li' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'zf2ed3Jm' \
    --body '{"MQbN7KnE": {}, "CYA2baSu": {}, "eoVStMf9": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    '5orvUggA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'wu8CYKeF' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
