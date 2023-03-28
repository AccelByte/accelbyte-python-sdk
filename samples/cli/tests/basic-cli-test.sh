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
basic-get-publisher-config '8hqUI06U' --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'uB0y5WUl' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'rMdI4sNv' 'eabntBSx' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'TeIv53HG' --login_with_auth "Bearer foo"
basic-update-user-profile 'CiljvjKo' --body '{"avatarLargeUrl": "yD6SCwGr", "avatarSmallUrl": "ncqmLtjQ", "avatarUrl": "HAf8TgoN", "customAttributes": {"m03VLisV": {}, "6zwPuo3t": {}, "d6TC6I3l": {}}, "dateOfBirth": "1990-07-10", "firstName": "jGSWN2la", "language": "LQYY", "lastName": "eIxPz6Mb", "privateCustomAttributes": {"wL6IY69z": {}, "1UaLqYSY": {}, "WytLPziZ": {}}, "status": "ACTIVE", "timeZone": "djxcBZuf", "zipCode": "QxGiHPll"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'G4cYEzfT' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'D1ZBm3Mq' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'HcUmLZZb' --body '{"Sqb8RwNm": {}, "n9HrNQy4": {}, "uZAAiE0m": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'it9RGCCH' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'YzUOcEds' --body '{"cKHPEqgA": {}, "8yu7Vk6J": {}, "t4Ymos9J": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'cdos4fYc' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'U6RBt0zY' 'oMcHyCUE' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'XlAvxJMd' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'alwSyliW' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "MNW5NyLu", "avatarSmallUrl": "0M3VHh2E", "avatarUrl": "I8JlDbPW", "customAttributes": {"bQ6Q9lNm": {}, "qRBaAkLn": {}, "vxkT1X68": {}}, "dateOfBirth": "1972-09-05", "firstName": "mDc3fxU8", "language": "HZcl-oIeK", "lastName": "kK6KKXNB", "privateCustomAttributes": {"3Gv0IqmF": {}, "51TkhjYn": {}, "aq6foWvX": {}}, "timeZone": "a3bMrXsD", "zipCode": "r6kILsSS"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "yDdmykmo", "avatarSmallUrl": "PYgc2L4j", "avatarUrl": "k4Lo0LSP", "customAttributes": {"0pf4IxjU": {}, "kl535X3a": {}, "teEKDpAD": {}}, "dateOfBirth": "1984-03-11", "firstName": "x3poD3Qg", "language": "EB", "lastName": "LQQ1MzH7", "privateCustomAttributes": {"Qm8bwbmX": {}, "gdAPh1ET": {}, "hG96gAFK": {}}, "timeZone": "K2WDgCcx"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"vONZm3Ee": {}, "ERmDnyeF": {}, "oF7VSZ6p": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "f3vneSD2"}' --login_with_auth "Bearer foo"
basic-public-report-user 'Tb3g7mSQ' --body '{"category": "UhAEtrmj", "description": "qU6YE3p4", "gameSessionId": "lSck0ZHn", "subcategory": "5GI39YBH", "userId": "qaTHeKtW"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url '18iGeUlc' '9d9sogWa' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info '24CKNS0G' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'qVvUfHQv' --body '{"avatarLargeUrl": "sHXNUNe4", "avatarSmallUrl": "mhgo5QB6", "avatarUrl": "5lSAiYnN", "customAttributes": {"jkfZrQvG": {}, "gbLdLsFz": {}, "HkBMr1yr": {}}, "dateOfBirth": "1991-11-07", "firstName": "jtqXyJ58", "language": "SN", "lastName": "X9fDmIbe", "privateCustomAttributes": {"ZxzfTcyi": {}, "uATus9hs": {}, "fpFDcSDG": {}}, "timeZone": "8aMVGLiB", "zipCode": "NrDjqoxc"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'wgGLXpUL' --body '{"avatarLargeUrl": "4pp2ncYA", "avatarSmallUrl": "HdNzDmeI", "avatarUrl": "P6rOvDz9", "customAttributes": {"KOsb392k": {}, "6YmJFfRB": {}, "yjlBiuFM": {}}, "dateOfBirth": "1999-09-13", "firstName": "HoRS1X2P", "language": "Pbab", "lastName": "wzHPxB1U", "timeZone": "skYs4Yw2"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info '0DOqOBSC' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially '2DKHRuPM' --body '{"MWH8Yb33": {}, "T5UBJCjf": {}, "cnLRfxeC": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'Sz9WEi8K' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'lloeH0JT' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..68"

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
    --body '{"displayName": "m5T50x9W", "namespace": "T0GfH2rt"}' \
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
    --body '{"actionId": 82, "comment": "jmsRE2w1", "userIds": ["yEkLgh3t", "IYt4SqYU", "TLDx9gIi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["DandpGT2", "t24aOMh5", "eC3IHeHS"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "KLCa3xre", "description": "NDUWehwH", "gameSessionId": "3q31A806", "subcategory": "DJgas4b6", "userId": "z3LNUj7f"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'dgLA84Z8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "YYk6QEgJ", "userIds": ["jBbEDoNf", "3n0hEoRC", "Acf80zfF"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "yabWAgIU"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 CreateConfig
$PYTHON -m $MODULE 'basic-create-config' \
    --body '{"key": "XiI07A68", "value": "eaqC2J9j"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'CreateConfig' test.out

#- 14 GetConfig1
$PYTHON -m $MODULE 'basic-get-config-1' \
    'yEW6GLbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetConfig1' test.out

#- 15 DeleteConfig1
$PYTHON -m $MODULE 'basic-delete-config-1' \
    '0NaKDUL3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'DeleteConfig1' test.out

#- 16 UpdateConfig1
$PYTHON -m $MODULE 'basic-update-config-1' \
    'sa13lk1d' \
    --body '{"value": "QBHO86Il"}' \
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
    --body '{"apiKey": "BhnetU4R"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateConfig' test.out

#- 20 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'wTqUXlTD' \
    'BzOuYsaZ' \
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
    --body '{"countries": [{"code": "A2yyd4mb", "name": "qoOfADMM"}, {"code": "AXFaY9eK", "name": "a699bRVh"}, {"code": "yaKwwrAP", "name": "2aMlu7Wt"}], "countryGroupCode": "jCtoYetO", "countryGroupName": "O847g8Ou"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AddCountryGroup' test.out

#- 25 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'dOfjnCuH' \
    --body '{"countries": [{"code": "Z3c46IjG", "name": "a23YvYmm"}, {"code": "Dg7VYPXI", "name": "uvUYTZBR"}, {"code": "ujIUE1Tq", "name": "5jyAZvkR"}], "countryGroupName": "CMNFIurj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateCountryGroup' test.out

#- 26 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'h2imdb4r' \
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
    'bkXj0Zws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfoByPublicId' test.out

#- 30 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["VC0gL97Z", "VJSPqJiw", "v1qlYB1R"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserProfilePublicInfoByIds' test.out

#- 31 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetNamespacePublisher' test.out

#- 32 GetPublisherConfig
$PYTHON -m $MODULE 'basic-get-publisher-config' \
    'SKs6gQxC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetPublisherConfig' test.out

#- 33 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'ChangeNamespaceStatus' test.out

#- 34 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'uYnGzpip' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'AnonymizeUserProfile' test.out

#- 35 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'NDigNJma' \
    '1MbqqZtf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GeneratedUserUploadContentUrl' test.out

#- 36 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'NWql4nmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetUserProfileInfo' test.out

#- 37 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'Aft4gqkN' \
    --body '{"avatarLargeUrl": "NlWkD9eO", "avatarSmallUrl": "ziYRFOn0", "avatarUrl": "jJLHC9Lx", "customAttributes": {"hvNXTwGB": {}, "CtohLtl9": {}, "Zuhytm5U": {}}, "dateOfBirth": "1986-05-23", "firstName": "4yAtURKL", "language": "rKcB", "lastName": "rDgMdIIl", "privateCustomAttributes": {"hS1fSiM9": {}, "331m7Ta1": {}, "PsKc50Kv": {}}, "status": "ACTIVE", "timeZone": "cyomQoIX", "zipCode": "imBJehyx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdateUserProfile' test.out

#- 38 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'lNsjUgxB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'DeleteUserProfile' test.out

#- 39 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'kF6wFPoJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetCustomAttributesInfo' test.out

#- 40 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'eQediogE' \
    --body '{"hhM2rIiz": {}, "GdKvOPdq": {}, "5xrgxSmy": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'UpdateCustomAttributesPartially' test.out

#- 41 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    '1DN9LFkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetPrivateCustomAttributesInfo' test.out

#- 42 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'W5DQyj4b' \
    --body '{"j5Ro2oga": {}, "Kt2ujQSa": {}, "3Zdb65UX": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdatePrivateCustomAttributesPartially' test.out

#- 43 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'my0Zp6iI' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'UpdateUserProfileStatus' test.out

#- 44 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetTime' test.out

#- 45 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetNamespaces' test.out

#- 46 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'hhvXYck0' \
    'upMzUYnb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGeneratedUploadUrl' test.out

#- 47 PublicGetCountries
$PYTHON -m $MODULE 'basic-public-get-countries' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetCountries' test.out

#- 48 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGetLanguages' test.out

#- 49 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'PublicGetTimeZones' test.out

#- 50 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    '76tFkEOR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicGetUserProfilePublicInfoByIds' test.out

#- 51 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'V3bu1bNC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGetUserProfileInfoByPublicId' test.out

#- 52 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGetNamespacePublisher' test.out

#- 53 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'GetMyProfileInfo' test.out

#- 54 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "tX7W40V6", "avatarSmallUrl": "Do5sYadC", "avatarUrl": "CFrHHC3D", "customAttributes": {"pZxkrQDX": {}, "uNFviMar": {}, "v8mnfHK8": {}}, "dateOfBirth": "1985-08-23", "firstName": "d3DlhLuI", "language": "eO-LX", "lastName": "MiaI1mX2", "privateCustomAttributes": {"tJoARtdb": {}, "Be7udsMr": {}, "ok0WvGYY": {}}, "timeZone": "nx4V709x", "zipCode": "bnGezKsD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyProfile' test.out

#- 55 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "wG2omOR2", "avatarSmallUrl": "nvYI9TVq", "avatarUrl": "JdvzcWbf", "customAttributes": {"UpaXp5JM": {}, "l5LL4bTx": {}, "BmZjdrrI": {}}, "dateOfBirth": "1983-03-26", "firstName": "sB0NRsB1", "language": "Wq-ysXt_240", "lastName": "pymDkQht", "privateCustomAttributes": {"rHWwRVnw": {}, "VBOqOHi8": {}, "pWGd1juY": {}}, "timeZone": "hiqjRJOq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'CreateMyProfile' test.out

#- 56 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetMyPrivateCustomAttributesInfo' test.out

#- 57 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"B5F93zFQ": {}, "bJndUDpd": {}, "ONneAczb": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 58 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetMyZipCode' test.out

#- 59 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "BdHb2slt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyZipCode' test.out

#- 60 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    '71B1SmZp' \
    --body '{"category": "2JZp50Cn", "description": "Pb71ORYc", "gameSessionId": "mQbTU5JX", "subcategory": "8ccLjMXJ", "userId": "Rk0eaKQD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicReportUser' test.out

#- 61 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'OJvrTefg' \
    'lSs6g4iY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGeneratedUserUploadContentUrl' test.out

#- 62 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '9u02aCNY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfileInfo' test.out

#- 63 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'IWekp18l' \
    --body '{"avatarLargeUrl": "OC3mNqF7", "avatarSmallUrl": "Bl0LcghV", "avatarUrl": "HfPEspxw", "customAttributes": {"hRON0bc1": {}, "eMbEIjow": {}, "Lqc3ecjX": {}}, "dateOfBirth": "1989-08-16", "firstName": "bZDKKoxL", "language": "XeP_yTPJ", "lastName": "3giPg4x4", "privateCustomAttributes": {"yiPX6ues": {}, "1Hhhkg1y": {}, "LVbLFzHE": {}}, "timeZone": "P8cM4NTw", "zipCode": "r0KHaAsm"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfile' test.out

#- 64 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'Tej52WKi' \
    --body '{"avatarLargeUrl": "6tArAURt", "avatarSmallUrl": "9plCSVq8", "avatarUrl": "PdH6hJPU", "customAttributes": {"Ac0RVwXg": {}, "AgntLMCu": {}, "aXBWQi6B": {}}, "dateOfBirth": "1979-09-04", "firstName": "Pg4xr0lC", "language": "IN-848", "lastName": "ZYoLfR1K", "timeZone": "tOv7Zy0b"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicCreateUserProfile' test.out

#- 65 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    '65uvuKNu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicGetCustomAttributesInfo' test.out

#- 66 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'y0ytZQ7M' \
    --body '{"6Nzy1adn": {}, "SKOLFKx1": {}, "dX4LuWJu": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicUpdateCustomAttributesPartially' test.out

#- 67 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    '3pDMUAee' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicGetUserProfilePublicInfo' test.out

#- 68 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'Z97SBROP' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
