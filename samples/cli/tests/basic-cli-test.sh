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
basic-create-namespace --body '{"displayName": "bUnVKfDi", "namespace": "WdbhV2yr"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 44, "comment": "NXH9cpYg", "userIds": ["mRcenURM", "HBTCXMOE", "MdsoM9co"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["2Zf6jRIA", "5Tnkn438", "MPYpsJiv"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "SwOStp9D", "description": "GzLMhgV1", "gameSessionId": "1ax9mtdV", "subcategory": "f04qVVIT", "userId": "jlJxCTWD"}' --login_with_auth "Bearer foo"
basic-get-user-status '0e1K1PDs' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "Cm2ZzGzm", "userIds": ["iFVkrGFq", "E3e1weJB", "ZVx0JgQK"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "pzEO5ZNq"}' --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "ehBTDS70"}' --login_with_auth "Bearer foo"
basic-generated-upload-url '9yuaaxCT' 'c4eBPDhR' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-countries --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "4R14Rgz6", "name": "6aHnxupQ"}, {"code": "UiPtr5zp", "name": "5M9GUmQc"}, {"code": "3JeDsvmM", "name": "FgBpP4it"}], "countryGroupCode": "VBTmIDeX", "countryGroupName": "7JfCzVc8"}' --login_with_auth "Bearer foo"
basic-update-country-group 'seSXEbQK' --body '{"countries": [{"code": "B5bIYmQN", "name": "uk4FcxSt"}, {"code": "tIYldX0l", "name": "9jlYAwA6"}, {"code": "diYXzJoO", "name": "0gepcClp"}], "countryGroupName": "4ukkJTBK"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'szEDwhFs' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'lVN7BhaF' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["93bnefw0", "MvuoSyDa", "Lhv1h3r9"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'NlddnmXB' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'pghN6DPU' 'Adm993lV' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'NESYfmuE' --login_with_auth "Bearer foo"
basic-update-user-profile 'sCshMBfA' --body '{"avatarLargeUrl": "8XOYdyrh", "avatarSmallUrl": "aQt6mxKj", "avatarUrl": "9LZtQUIC", "customAttributes": {"WJ6HhCaH": {}, "bTnTgMQW": {}, "QSYbu5eV": {}}, "dateOfBirth": "1974-07-19", "firstName": "H7MjuXpE", "language": "fi-po", "lastName": "jHPpsyUn", "status": "INACTIVE", "timeZone": "qPrtEWKZ", "zipCode": "Wl0G7NYv"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'Lk6CWfwV' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info '7CFZgKsc' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'qqstWXCa' --body '{"fRPuL3uk": {}, "oahnnDXg": {}, "g8xRV0BK": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'BdPAUvIe' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially '09hfzBEo' --body '{"n2G9OO6X": {}, "Z93AwyqK": {}, "xlIdv78P": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'C26ZqO15' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url '283hh10M' 'b5pxecSS' --login_with_auth "Bearer foo"
basic-public-get-countries --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'JhOqXRXi' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'ZpmtmJCV' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "rELBYl8d", "avatarSmallUrl": "T5VX8sZb", "avatarUrl": "CvklTxD1", "customAttributes": {"iXBVfebZ": {}, "bwILmga0": {}, "VliRStmd": {}}, "dateOfBirth": "1996-01-20", "firstName": "Jh6ZRsAw", "language": "WvsY", "lastName": "7DcFlsvY", "privateCustomAttributes": {"DhCaJf4q": {}, "GxDkTCW4": {}, "J2znZD7a": {}}, "timeZone": "nAMGUEy4", "zipCode": "l0Zccfhd"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "z8d7pzfI", "avatarSmallUrl": "EgehPjGL", "avatarUrl": "Ybv3k7SI", "customAttributes": {"1kifwvwB": {}, "uAMnZeT1": {}, "MVUIW91f": {}}, "dateOfBirth": "1977-09-23", "firstName": "WXWPF0ZY", "language": "DcRE_SY", "lastName": "5Vji4YIT", "privateCustomAttributes": {"348wCixs": {}, "5Rq8ucaj": {}, "UuzZw6Lx": {}}, "timeZone": "pvjUIRi0"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"7Tb5trEN": {}, "Jjs2iqR6": {}, "wUbQjV7v": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "aheFBP3k"}' --login_with_auth "Bearer foo"
basic-public-report-user '6V4hND5b' --body '{"category": "pkiMxRDl", "description": "g1bTodOh", "gameSessionId": "RiqK0BFk", "subcategory": "x6Vcqqsx", "userId": "N6p6ejQV"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'ilg1neZT' 'gnuNe7jJ' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'QktztdWh' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'eilID3cH' --body '{"avatarLargeUrl": "MvfLOcOQ", "avatarSmallUrl": "9WAWgmj1", "avatarUrl": "XdcLFvgp", "customAttributes": {"n9OIjjoG": {}, "z1WDT115": {}, "S2yges7d": {}}, "dateOfBirth": "1980-04-20", "firstName": "rkOIH2mD", "language": "zh_ig", "lastName": "0L4eIKKK", "timeZone": "GNiTYVvj", "zipCode": "Gg5ckWqc"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'vBc0zoGc' --body '{"avatarLargeUrl": "NimQksX2", "avatarSmallUrl": "JG7o7EQA", "avatarUrl": "dY9nESvf", "customAttributes": {"uYJo6OqI": {}, "sLXVgC0q": {}, "0bamdGln": {}}, "dateOfBirth": "1982-05-09", "firstName": "0Sp5bUdX", "language": "VP", "lastName": "JFFaIVPc", "timeZone": "LhwLU2hU"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'HGtlWg2K' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'hSUYyseq' --body '{"FAmWXLbf": {}, "mK1A8CgL": {}, "LrpFpVHw": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'JOHYZTl0' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status '56kdFsE2' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "nYDirMnd", "namespace": "tdG0MJzo"}' \
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
    --body '{"actionId": 51, "comment": "G8nK9vbk", "userIds": ["Qmsm2bSB", "xXIkIWb3", "vyXWK3T5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["hriWedoU", "R9ZGfwY3", "y2RDPMIf"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "WSA4Tm73", "description": "hcgAmtls", "gameSessionId": "p6SeG2O7", "subcategory": "7Bvm5wba", "userId": "7ILun0IH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'Afkz8cXJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "swG3LDA8", "userIds": ["bifs5tEl", "08oXJzCG", "D26gash2"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "tcA23CAL"}' \
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
    --body '{"apiKey": "HcDorLNL"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'UpdateConfig' test.out

#- 16 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'GCK7mWjB' \
    '85RLC1uh' \
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
    --body '{"countries": [{"code": "iHB5A5Co", "name": "GRzXZXb4"}, {"code": "FgVRwr4o", "name": "Mc4Tx4be"}, {"code": "pVbd4c4j", "name": "XJmFppEb"}], "countryGroupCode": "Ls7s6E8P", "countryGroupName": "zvUJH2AB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AddCountryGroup' test.out

#- 21 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'Ph9sVg6h' \
    --body '{"countries": [{"code": "1hl92CIy", "name": "323tsvx0"}, {"code": "YvG67TXu", "name": "oxuXdV8D"}, {"code": "PEHV9P8R", "name": "K6IFc6xF"}], "countryGroupName": "9B4r3lpA"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateCountryGroup' test.out

#- 22 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'noBVRmw9' \
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
    'MRGbnhwZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetUserProfileInfoByPublicId' test.out

#- 26 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["BdRqWnYk", "0mYvRidj", "DxenGkzu"]}' \
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
    'uoo0cPSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AnonymizeUserProfile' test.out

#- 30 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    '9BxQ1L1I' \
    'UEWDb3U5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GeneratedUserUploadContentUrl' test.out

#- 31 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'QC0MWNCp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfo' test.out

#- 32 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'f3kybvAL' \
    --body '{"avatarLargeUrl": "38LpuwJg", "avatarSmallUrl": "c0x7gyiv", "avatarUrl": "xNYQq5sP", "customAttributes": {"A076apq3": {}, "ghq5i2vF": {}, "mBCoBijx": {}}, "dateOfBirth": "1992-09-04", "firstName": "VGRS0wRO", "language": "pha-aE", "lastName": "cNTKtZxb", "status": "ACTIVE", "timeZone": "9ovr1mRl", "zipCode": "3u2SgHL6"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'UpdateUserProfile' test.out

#- 33 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'sbeNyDTw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'DeleteUserProfile' test.out

#- 34 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'sJycu8zN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetCustomAttributesInfo' test.out

#- 35 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    '2oJp0gNO' \
    --body '{"FUe4OsMt": {}, "0Xanj6vh": {}, "JnhW2Axu": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdateCustomAttributesPartially' test.out

#- 36 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'ozN87K0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'GetPrivateCustomAttributesInfo' test.out

#- 37 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    '0nAPmcpY' \
    --body '{"dffpz5zJ": {}, "XbwCYj7h": {}, "jDBriE8l": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'UpdatePrivateCustomAttributesPartially' test.out

#- 38 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'DlFmapV7' \
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
    'FS0H28Z8' \
    'S0jwUJAz' \
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
    'gYLzXGP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'HXaU2OWo' \
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
    --body '{"avatarLargeUrl": "AXVaDFnY", "avatarSmallUrl": "ugqlm7Qh", "avatarUrl": "V4IVkN4W", "customAttributes": {"jZiXO7pB": {}, "1mEtJwmr": {}, "8whI7YEN": {}}, "dateOfBirth": "1988-10-20", "firstName": "PAT6cUNm", "language": "jp_RW", "lastName": "ZQRwx7TF", "privateCustomAttributes": {"dRrI1y3L": {}, "Qnkr9BnP": {}, "szoHrXSn": {}}, "timeZone": "Ouptsulk", "zipCode": "VreeSwrQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "U9WYbfrJ", "avatarSmallUrl": "3U04UzwQ", "avatarUrl": "KyVHIBF5", "customAttributes": {"iRDRNajn": {}, "QGO5g4zz": {}, "pgeP1W1w": {}}, "dateOfBirth": "1993-04-21", "firstName": "DG3R53PT", "language": "lI_337", "lastName": "gjeNE8oP", "privateCustomAttributes": {"w37H7qbR": {}, "ZbyFy8wb": {}, "ZU3PdkuM": {}}, "timeZone": "KceOwU10"}' \
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
    --body '{"wszJKpOS": {}, "Yti8geE1": {}, "mDNiM09B": {}}' \
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
    '{"zipCode": "Dk7AbmPe"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'rOera1YV' \
    --body '{"category": "ih51N8MU", "description": "WUw76dQU", "gameSessionId": "YnUBADk7", "subcategory": "tIIZnCfX", "userId": "AbEXRHgv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicReportUser' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    '0fO5A6Fn' \
    'eqV0KLHK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'fscxDlhQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'GXqyTapT' \
    --body '{"avatarLargeUrl": "gBHjidSW", "avatarSmallUrl": "DvRyNc1M", "avatarUrl": "JSe72FEn", "customAttributes": {"AtumLzrW": {}, "mi2Ih74q": {}, "hED5JDH9": {}}, "dateOfBirth": "1990-12-23", "firstName": "L3OGIw25", "language": "rypI-433", "lastName": "fPvuYx0n", "timeZone": "788MiI5n", "zipCode": "FiypQV4x"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'IQQvojsB' \
    --body '{"avatarLargeUrl": "NMaKGYJu", "avatarSmallUrl": "T9ytT0U1", "avatarUrl": "Nq3r3hjr", "customAttributes": {"qKcYt7el": {}, "S7EYwfMj": {}, "8huzEObs": {}}, "dateOfBirth": "1972-05-05", "firstName": "Ew92fEWw", "language": "yg_QRLu", "lastName": "qmWolYNq", "timeZone": "zHjCzNXR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'UTnJSW2J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'jEFi8zeB' \
    --body '{"xv5IFWUY": {}, "lQtSn8x0": {}, "aWhVFiyk": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'yCTf5Kmi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'abV5Bnaq' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
