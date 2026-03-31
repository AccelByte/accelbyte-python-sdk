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
basic-create-namespace --body '{"displayName": "EAxcVpFrttufHIRd", "isTesting": true, "namespace": "9UzVRiXbqlAw7r6W"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "2ktQG0h5JAav5kRa"}' --login_with_auth "Bearer foo"
basic-get-child-namespaces --login_with_auth "Bearer foo"
basic-create-config --body '{"key": "62WopBJHPtcDs8bB", "value": "ZLCXLx8bbgorQeFb"}' --login_with_auth "Bearer foo"
basic-get-config 'Q1g7qbPngUNB1vRo' --login_with_auth "Bearer foo"
basic-delete-config 'dwpzS6DaDpv8N7ZQ' --login_with_auth "Bearer foo"
basic-update-config 'VqGj6oDLjWjkY1aX' --body '{"value": "lFcDtgOjchIua5tW"}' --login_with_auth "Bearer foo"
basic-get-namespace-context --login_with_auth "Bearer foo"
basic-generated-upload-url 'EIC32ogW7olvbTgr' 'hRTcPiSuL0Sly6XM' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "4OI18mAQLnzjMf8G", "name": "Z2WBZqxYG3aREAu2"}, {"code": "D6QVKNCWP75TB0i7", "name": "pKxR8dl0zRVW4EZG"}, {"code": "9m0XcgGVbMqSszE8", "name": "GHavj7AorKsxwkos"}], "countryGroupCode": "AVerXpc1C8XfwHuK", "countryGroupName": "eb9l3rGN9A3sNm84"}' --login_with_auth "Bearer foo"
basic-update-country-group 'hddSpHt0P7MIIR7C' --body '{"countries": [{"code": "kyF6C7duuyZ0GhDo", "name": "gqrhBRd8lDR6qVNP"}, {"code": "RZYdFLIAjGGJddVC", "name": "vu9vx5KQ7KYnIuMB"}, {"code": "vaO35llzQRaT5kPx", "name": "UfofvnnSuB0y5WUl"}], "countryGroupName": "rMdI4sNveabntBSx"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'TeIv53HGCiljvjKo' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'yD6SCwGrncqmLtjQ' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["HAf8TgoNm03VLisV", "6zwPuo3td6TC6I3l", "MjGSWN2laRlxfcjH"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-publisher-config 'fYakUCTqGkE7wcWf' --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-update-testing-flag --body '{"isTesting": true}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'qYSYWytLPziZMdjx' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'cBZufQxGiHPllG4c' 'YEzfTD1ZBm3MqHcU' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'mLZZbSqb8RwNmn9H' --login_with_auth "Bearer foo"
basic-update-user-profile 'rNQy4uZAAiE0mit9' --body '{"avatarLargeUrl": "RGCCHYzUOcEdscKH", "avatarSmallUrl": "PEqgA8yu7Vk6Jt4Y", "avatarUrl": "mos9Jcdos4fYcTVU", "customAttributes": {"6RBt0zYoMcHyCUEX": {}, "lAvxJMdalwSyliWM": {}, "NW5NyLu0M3VHh2EI": {}}, "dateOfBirth": "1994-10-12", "firstName": "279ZZPYGu0rdlgdW", "language": "Apb_OWCY", "lastName": "kT1X68cmDc3fxU8M", "privateCustomAttributes": {"yKrQpM4hkkK6KKXN": {}, "B3Gv0IqmF51TkhjY": {}, "naq6foWvXa3bMrXs": {}}, "status": "INACTIVE", "timeZone": "tGeoyIPa8ZRrvjj7", "zipCode": "il35MXbN9oCMNqq9"}' --login_with_auth "Bearer foo"
basic-delete-user-profile '8SjTvhZNkSQ70D0H' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info '6BXksUC9b6i5lZC9' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'xv32e8c5csSovoqs' --body '{"ZNBdte9NDUPVJf6c": {}, "2Z0QZxfgPubTDIHr": {}, "vqAThuwjRHpKKTlm": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'Vr9XuoJbRFQSKVPH' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'bn4Xxtu7LQRENjEE' --body '{"ztx1WsYSiZqan0nS": {}, "BJroav91GXlvPG6b": {}, "FYReVHQipcCx9Zw5": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'D2L7vIYhGGSyEW4Z' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-get-namespace-1 --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'e4mhgo5QB65lSAiY' 'nNjkfZrQvGgbLdLs' --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'FzHkBMr1yrOMlNFS' --login_with_auth "Bearer foo"
basic-public-bulk-get-user-profile-public-info --body '{"userIds": ["rUEirnjX9fDmIbeZ", "xzfTcyiuATus9hsf", "pFDcSDG8aMVGLiBN"]}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'rDjqoxcwgGLXpUL4' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "pp2ncYAHdNzDmeIP", "avatarSmallUrl": "6rOvDz9KOsb392k6", "avatarUrl": "YmJFfRByjlBiuFM3", "customAttributes": {"FIoVk8T3GpAnkCmB": {}, "Uqg2SCnqntX9y1aZ": {}, "SWMiVi10sG6vxkfU": {}}, "dateOfBirth": "1972-04-11", "firstName": "b33T5UBJCjfcnLRf", "language": "bEN_aQfy", "lastName": "Ei8KlloeH0JT1ydu", "privateCustomAttributes": {"at2vQR3biBfsu4jm": {}, "sRE2w1yEkLgh3tIY": {}, "t4SqYUTLDx9gIiDa": {}}, "timeZone": "ndpGT2t24aOMh5eC", "zipCode": "3IHeHSKLCa3xreND"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "UWehwH3q31A806DJ", "avatarSmallUrl": "gas4b6z3LNUj7fdg", "avatarUrl": "LA84Z8YYk6QEgJjB", "customAttributes": {"bEDoNf3n0hEoRCAc": {}, "f80zfFyabWAgIUXi": {}, "I07A68eaqC2J9jyE": {}}, "dateOfBirth": "1996-07-26", "firstName": "6GLbc0NaKDUL3sa1", "language": "xK_rIci", "lastName": "O86IlBhnetU4RwTq", "privateCustomAttributes": {"UXlTDBzOuYsaZA2y": {}, "yd4mbqoOfADMMAXF": {}, "aY9eKa699bRVhyaK": {}}, "timeZone": "wwrAP2aMlu7WtjCt"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"oYetOO847g8OudOf": {}, "jnCuHZ3c46IjGa23": {}, "YvYmmDg7VYPXIuvU": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "YTZBRujIUE1Tq5jy"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'AZvkRCMNFIurjh2i' 'mdb4rbkXj0ZwsVC0' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'gL97ZVJSPqJiwv1q' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'lYB1RSKs6gQxC3Gb' --body '{"avatarLargeUrl": "7S0o4zGYY7KQI1Ae", "avatarSmallUrl": "FgPqaOkvo1aolB4l", "avatarUrl": "kKB4EYOkQ1jMD3cy", "customAttributes": {"m8xIfkOVW2grREOL": {}, "x0KOww3HICQLfl7M": {}, "UBG7qtPu64yAtURK": {}}, "dateOfBirth": "1990-12-27", "firstName": "Rkb738HGS6rDgMdI", "language": "UMOH_trIG", "lastName": "331m7Ta1PsKc50Kv", "privateCustomAttributes": {"6ecnEevcAx2K2zkR": {}, "enmPZnGBt4P7Wnbd": {}, "SJtjX7ZshZyZl5x4": {}}, "timeZone": "bRXBHUTrDzZSKscf", "zipCode": "OcYu3dpCROYqUiGK"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'XVFCmpo6sPwVOEDS' --body '{"avatarLargeUrl": "JsEK5QpNhlI2iS5E", "avatarSmallUrl": "pGhhvXYck0upMzUY", "avatarUrl": "nb76tFkEORV3bu1b", "customAttributes": {"NCtX7W40V6Do5sYa": {}, "dCCFrHHC3DpZxkrQ": {}, "DXuNFviMarv8mnfH": {}}, "dateOfBirth": "1989-11-01", "firstName": "CCmE2lPnsbD3SGEd", "language": "Xn_CjCf", "lastName": "536ugBp3HBvepnDC", "timeZone": "jgyJlXe36mgWjLfF"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'mteue9nzJ6fH24T8' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially '05tVg8JqU0jZpjvs' --body '{"ugAOS7u8RiWyerCS": {}, "a8SRgwsAj1ik1jgl": {}, "aDXTvKCWwNTAhd2w": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'rS0uPdjhdinpng5B' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'Ly8wbhMssAHjapIk' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "9Rf4wP57dBZNR88Y", "isTesting": false, "namespace": "UDpdONneAczbBdHb"}' \
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

#- 6 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "2slt71B1SmZp2JZp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'UpdateNamespace' test.out

#- 7 GetChildNamespaces
$PYTHON -m $MODULE 'basic-get-child-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'GetChildNamespaces' test.out

#- 8 CreateConfig
$PYTHON -m $MODULE 'basic-create-config' \
    --body '{"key": "50CnPb71ORYcmQbT", "value": "U5JX8ccLjMXJRk0e"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    'aKQDOJvrTefglSs6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    'g4iY9u02aCNYIWek' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    'p18lOC3mNqF7Bl0L' \
    --body '{"value": "cghVHfPEspxwhRON"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UpdateConfig' test.out

#- 12 GetNamespaceContext
$PYTHON -m $MODULE 'basic-get-namespace-context' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'GetNamespaceContext' test.out

#- 13 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    '0bc1eMbEIjowLqc3' \
    'ecjXJbZDKKoxLE1Y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GeneratedUploadUrl' test.out

#- 14 GetGameNamespaces
$PYTHON -m $MODULE 'basic-get-game-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetGameNamespaces' test.out

#- 15 GetCountries
eval_tap 0 15 'GetCountries # SKIP deprecated' test.out

#- 16 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetCountryGroups' test.out

#- 17 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "3Dymtj3giPg4x4yi", "name": "PX6ues1Hhhkg1yLV"}, {"code": "bLFzHEP8cM4NTwr0", "name": "KHaAsmTej52WKi6t"}, {"code": "ArAURt9plCSVq8Pd", "name": "H6hJPUAc0RVwXgAg"}], "countryGroupCode": "ntLMCuaXBWQi6BqP", "countryGroupName": "g4xr0lCancUZGCHs"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'ZYoLfR1KtOv7Zy0b' \
    --body '{"countries": [{"code": "65uvuKNuy0ytZQ7M", "name": "6Nzy1adnSKOLFKx1"}, {"code": "dX4LuWJu3pDMUAee", "name": "Z97SBROPYuG6XqP6"}, {"code": "oo7G73zdxTgOfnwI", "name": "dlNa29fDLh741Isl"}], "countryGroupName": "KHzGlLKWUtDQs61O"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'QAoxyyQpRWCiiPDG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'DeleteCountryGroup' test.out

#- 20 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetLanguages' test.out

#- 21 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'GetTimeZones' test.out

#- 22 GetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-get-user-profile-info-by-public-id' \
    'QhNPEwiJCf2XJVrl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["zqQls1ozhLVA3kE8", "jKvgatOEBM70TdlN", "BJYOmpu1VCarzBsV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminGetUserProfilePublicInfoByIds' test.out

#- 24 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'GetNamespacePublisher' test.out

#- 25 GetPublisherConfig
$PYTHON -m $MODULE 'basic-get-publisher-config' \
    '6xnZ5Jrzzjrcaug6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 UpdateTestingFlag
$PYTHON -m $MODULE 'basic-update-testing-flag' \
    --body '{"isTesting": false}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateTestingFlag' test.out

#- 28 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'WVG8SWP3glU6musw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AnonymizeUserProfile' test.out

#- 29 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'VJnNnN7kAa7j0riF' \
    'c5HTHQIoVsGo7dwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GeneratedUserUploadContentUrl' test.out

#- 30 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    '9DBqFKHQkETJyTlU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetUserProfileInfo' test.out

#- 31 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'rwDTnoujQD4IEiH9' \
    --body '{"avatarLargeUrl": "Z5qXn3aoRtlqOECo", "avatarSmallUrl": "hViHA5CzgFSy8X1A", "avatarUrl": "3PrIfapq5AAeMe4L", "customAttributes": {"3mDWORBVXTIIJM9X": {}, "sYIIZxiXNMR9BgaW": {}, "cFX3SUBhyoTsMWPA": {}}, "dateOfBirth": "1983-04-11", "firstName": "UMkawaGpAyrIwMif", "language": "cHp", "lastName": "Np5nodqpLm7FhJBN", "privateCustomAttributes": {"XzAFdO0Khqf6kiTd": {}, "SGv2LFjAKY7CbgsW": {}, "qFWZX7kPBom8F9GL": {}}, "status": "INACTIVE", "timeZone": "G8phc3n4iLoIllKl", "zipCode": "pO2pqiXJF3WGRaoQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'UpdateUserProfile' test.out

#- 32 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'omSJC4DdrKF7SUQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'DeleteUserProfile' test.out

#- 33 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'LG59e0k5ZtX6wK7P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetCustomAttributesInfo' test.out

#- 34 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'pUlcIW32iK7MGt1i' \
    --body '{"xY5rA1WoVeJIePF8": {}, "ZrQzP4zvtdxdbZUp": {}, "d6FJtHJ1pyVwyKQL": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateCustomAttributesPartially' test.out

#- 35 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'Y6FEO65Rb3z7CYLM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'GetPrivateCustomAttributesInfo' test.out

#- 36 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    '8IlsHqffnrfsGlfP' \
    --body '{"aZKBwa3Ddb60ufPp": {}, "zwj1QGIFmlVf4jva": {}, "pseE9LN9bvhOrHfl": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdatePrivateCustomAttributesPartially' test.out

#- 37 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'IOd6X3viLvtEk4mT' \
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

#- 40 GetNamespace1
$PYTHON -m $MODULE 'basic-get-namespace-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetNamespace1' test.out

#- 41 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'RwrKt2ecozL0TOg5' \
    '4vCE48L5oLF6M4lN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicGeneratedUploadUrl' test.out

#- 42 PublicGetCountries
eval_tap 0 42 'PublicGetCountries # SKIP deprecated' test.out

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
    'a4JUMSHNgqRqCV7u' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicGetUserProfilePublicInfoByIds' test.out

#- 46 PublicBulkGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-bulk-get-user-profile-public-info' \
    --body '{"userIds": ["samANkZlOX9Sfo95", "HgXqKhTPkwfLM9uS", "ybRzWek2gZvRrvr0"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicBulkGetUserProfilePublicInfo' test.out

#- 47 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'n9d9lvccKMLhrTrc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetUserProfileInfoByPublicId' test.out

#- 48 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGetNamespacePublisher' test.out

#- 49 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetMyProfileInfo' test.out

#- 50 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "BE2ItBS3KtKZWe8a", "avatarSmallUrl": "oFzAyBME74HUtipU", "avatarUrl": "WYhWV1qx8CzPML52", "customAttributes": {"faXUr9Sk4lq2faBc": {}, "AXXKlhvyH8paOJtx": {}, "qMPpcVfRwNj547fH": {}}, "dateOfBirth": "1998-06-30", "firstName": "rKEDpEY8VnocGAjc", "language": "Hx_682", "lastName": "J3sWCqQpQ2FbKPFM", "privateCustomAttributes": {"ycMSQ4qfAacR0LgB": {}, "5BUXvjcu2s6w3Vif": {}, "nKqmTSoGH1XEfY6Q": {}}, "timeZone": "AYn6WQ5UBEU1QAOH", "zipCode": "fZiGhxOdcuDXSxSc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdateMyProfile' test.out

#- 51 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "3aZPV87pna08gxef", "avatarSmallUrl": "TYKhuxaEc7M4P7Uc", "avatarUrl": "kSC6ePeN8i4GrFES", "customAttributes": {"9z7xueHpATHccee9": {}, "GXhKcjmSEwdrkEnn": {}, "qKzFsLfYalUlfwEQ": {}}, "dateOfBirth": "1989-03-12", "firstName": "fQrtfF3TQN0OcNDL", "language": "EQf_cPHE", "lastName": "yjMQAg5mPYhrLTyU", "privateCustomAttributes": {"8OhgfY9JQYGF4bYX": {}, "EcENx9xZlAchob44": {}, "lONDDwMvgI0HlyPR": {}}, "timeZone": "7wZNiVsF6xG2mXEQ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'CreateMyProfile' test.out

#- 52 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'GetMyPrivateCustomAttributesInfo' test.out

#- 53 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"dbzIVy8alncV7vWg": {}, "SHdfo07UctPErqxy": {}, "MyOK06MqQBErxgjV": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 54 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'GetMyZipCode' test.out

#- 55 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "BycvU4PbmRDcrg0D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'UpdateMyZipCode' test.out

#- 56 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'jQjBECXvea7H1m2l' \
    'JFRZ3ZprZ60zMjhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGeneratedUserUploadContentUrl' test.out

#- 57 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'Heh94TSenE5hCFkI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicGetUserProfileInfo' test.out

#- 58 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'f5weqZ18MH57l2Zs' \
    --body '{"avatarLargeUrl": "rh90ETtYmGukz3Mn", "avatarSmallUrl": "lrjcHp6B8Vj7rXFg", "avatarUrl": "DnDkdZ9bpjb1tdA3", "customAttributes": {"QhjCMW64f4XhIjSo": {}, "TB2NMKtezapPr2QE": {}, "Px3zTxBGtEJIYppu": {}}, "dateOfBirth": "1994-12-26", "firstName": "w7Rry0KK5rgAGO0d", "language": "WSy", "lastName": "MVUGKSZ4GcLkt4pK", "privateCustomAttributes": {"32sJxlZcCTpTdRtC": {}, "Hvuk6B6XTmSLyn50": {}, "sigBVZxiKdV57GvR": {}}, "timeZone": "yd9UuL02Le8HSCsl", "zipCode": "sDd4M1F5qRIblS7N"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicUpdateUserProfile' test.out

#- 59 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'z81GRazPAANjfBol' \
    --body '{"avatarLargeUrl": "dFOyqA2clJ5gEOaC", "avatarSmallUrl": "gM6Yn6RugbNEIpGB", "avatarUrl": "FUjOn5mM7k8nbLzv", "customAttributes": {"tCIW5ynMKquUicAe": {}, "IVXtoWAXhMlW4tLq": {}, "X7OICf5oD1e6oI9F": {}}, "dateOfBirth": "1977-09-14", "firstName": "Yel0kOw72o8Zkgk0", "language": "Kt-Dxzw", "lastName": "wfhKvrf2AaH4yCWr", "timeZone": "HSppnIZkNnTn3rzH"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicCreateUserProfile' test.out

#- 60 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    '5NvAtcvNedgS1fUf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetCustomAttributesInfo' test.out

#- 61 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'KmihDbmu8ePWlQMV' \
    --body '{"DXEHeiGTnwyEw6hI": {}, "WDZrpP7rz3ISW510": {}, "kHr4isTKWjmv67nu": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateCustomAttributesPartially' test.out

#- 62 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'HCXWfwnwGioVwVzm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicGetUserProfilePublicInfo' test.out

#- 63 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'mBVVFfpqx1AeLtzc' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
