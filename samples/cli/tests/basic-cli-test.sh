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
basic-create-namespace --body '{"displayName": "EAxcVpFrttufHIRd", "namespace": "H9UzVRiXbqlAw7r6"}' --login_with_auth "Bearer foo"
basic-get-namespace --login_with_auth "Bearer foo"
basic-delete-namespace --login_with_auth "Bearer foo"
basic-get-actions --login_with_auth "Bearer foo"
basic-ban-users --body '{"actionId": 100, "comment": "7eHpzSn3ZPUdc0qh", "userIds": ["4n8mzZ0m8SAMTwE6", "I56IaRDBXxyaNoMR", "6hkspInrAip6lyzS"]}' --login_with_auth "Bearer foo"
basic-get-banned-users '["xwElFHHdgs21Jub7", "4CUkNmKJfh5pUkHO", "DpoMF78NY4YkHs1c"]' --login_with_auth "Bearer foo"
basic-report-user --body '{"category": "nz1JSDgY1TXp38zs", "description": "CTCrbCbPOyNQkT7N", "gameSessionId": "vyE3cwyALczNIicX", "subcategory": "m7agSrjJW2OQNOs1", "userId": "PXhT5FvdiRilZ7oF"}' --login_with_auth "Bearer foo"
basic-get-user-status 'gx4c8OumKtPDKJDX' --login_with_auth "Bearer foo"
basic-un-ban-users --body '{"comment": "n7Z4U68su8XfqlqN", "userIds": ["iTvB6SdAdIhUDrwo", "Z5MecdKi5r6QEa1y", "sLEzth6mXhzkzWkF"]}' --login_with_auth "Bearer foo"
basic-update-namespace --body '{"displayName": "eZSoEAcBdW19m4eu"}' --login_with_auth "Bearer foo"
basic-get-child-namespaces --login_with_auth "Bearer foo"
basic-create-config --body '{"key": "6d5tA5jUmiTqpyhP", "value": "FdxLzFQN05MYzYiK"}' --login_with_auth "Bearer foo"
basic-get-config-1 'We5dNRljv7IPrDQQ' --login_with_auth "Bearer foo"
basic-delete-config-1 'Rgat0SevkLGMS0ly' --login_with_auth "Bearer foo"
basic-update-config-1 'uI9a2I9u6Vpbsx5w' --body '{"value": "8hqUI06UpOXGSLmC"}' --login_with_auth "Bearer foo"
basic-get-namespace-context --login_with_auth "Bearer foo"
basic-get-config --login_with_auth "Bearer foo"
basic-delete-config --login_with_auth "Bearer foo"
basic-update-config --body '{"apiKey": "VuHOPlLlkvR8sKgn"}' --login_with_auth "Bearer foo"
basic-generated-upload-url 'uRkgghGoYupD391C' '2qtPYokahFjkQsfC' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "aTmt1d67FXGk2s9Q", "name": "0mPVo3twu0MesTCf"}, {"code": "9x4rt69lna7qxNeI", "name": "xPz6MbwL6IY69z1U"}, {"code": "aLqYSYWytLPziZMd", "name": "jxcBZufQxGiHPllG"}], "countryGroupCode": "4cYEzfTD1ZBm3MqH", "countryGroupName": "cUmLZZbSqb8RwNmn"}' --login_with_auth "Bearer foo"
basic-update-country-group '9HrNQy4uZAAiE0mi' --body '{"countries": [{"code": "t9RGCCHYzUOcEdsc", "name": "KHPEqgA8yu7Vk6Jt"}, {"code": "4Ymos9Jcdos4fYcT", "name": "VU6RBt0zYoMcHyCU"}, {"code": "EXlAvxJMdalwSyli", "name": "WMNW5NyLu0M3VHh2"}], "countryGroupName": "EI8JlDbPWbQ6Q9lN"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'mqRBaAkLnvxkT1X6' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id '8cmDc3fxU8MyKrQp' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["M4hkkK6KKXNB3Gv0", "IqmF51TkhjYnaq6f", "oWvXa3bMrXsDr6kI"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-publisher-config 'LsSSyDdmykmoPYgc' --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile '4jk4Lo0LSP0pf4Ix' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'jUkl535X3ateEKDp' 'ADz1x3poD3Qgb3bo' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'LQQ1MzH7Qm8bwbmX' --login_with_auth "Bearer foo"
basic-update-user-profile 'gdAPh1EThG96gAFK' --body '{"avatarLargeUrl": "K2WDgCcxvONZm3Ee", "avatarSmallUrl": "ERmDnyeFoF7VSZ6p", "avatarUrl": "f3vneSD2Tb3g7mSQ", "customAttributes": {"UhAEtrmjqU6YE3p4": {}, "lSck0ZHn5GI39YBH": {}, "qaTHeKtW18iGeUlc": {}}, "dateOfBirth": "1975-01-26", "firstName": "pcCx9Zw5D2L7vIYh", "language": "Whwt-899", "lastName": "NUNe4mhgo5QB65lS", "privateCustomAttributes": {"AiYnNjkfZrQvGgbL": {}, "dLsFzHkBMr1yrOMl": {}, "NFSrUEirnjX9fDmI": {}}, "status": "ACTIVE", "timeZone": "VkydwYWQG26yUZNm", "zipCode": "TBcvrbYCwZtxFHyP"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'LtI8ilbyDPUIj88c' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'ekdqCt81P1ktfIov' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'mv9gsR5cJcHm3SZL' --body '{"xoRDFuuuySj29a9L": {}, "JE8HoRS1X2PFAAMw": {}, "zHPxB1UskYs4Yw20": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'DOqOBSC2DKHRuPMM' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'WH8Yb33T5UBJCjfc' --body '{"nLRfxeCSz9WEi8Kl": {}, "loeH0JT1yduat2vQ": {}, "R3biBfsu4jmsRE2w": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status '1yEkLgh3tIYt4SqY' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-public-generated-upload-url 'Dx9gIiDandpGT2t2' '4aOMh5eC3IHeHSKL' --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'Ca3xreNDUWehwH3q' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id '31A806DJgas4b6z3' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "LNUj7fdgLA84Z8YY", "avatarSmallUrl": "k6QEgJjBbEDoNf3n", "avatarUrl": "0hEoRCAcf80zfFya", "customAttributes": {"bWAgIUXiI07A68ea": {}, "qC2J9jyEW6GLbc0N": {}, "aKDUL3sa13lk1dQB": {}}, "dateOfBirth": "1988-01-13", "firstName": "O86IlBhnetU4RwTq", "language": "UzyM", "lastName": "DBzOuYsaZA2yyd4m", "privateCustomAttributes": {"bqoOfADMMAXFaY9e": {}, "Ka699bRVhyaKwwrA": {}, "P2aMlu7WtjCtoYet": {}}, "timeZone": "OO847g8OudOfjnCu", "zipCode": "HZ3c46IjGa23YvYm"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "mDg7VYPXIuvUYTZB", "avatarSmallUrl": "RujIUE1Tq5jyAZvk", "avatarUrl": "RCMNFIurjh2imdb4", "customAttributes": {"rbkXj0ZwsVC0gL97": {}, "ZVJSPqJiwv1qlYB1": {}, "RSKs6gQxC3Gb7S0o": {}}, "dateOfBirth": "1978-07-26", "firstName": "ipNDigNJma1MbqqZ", "language": "KFV_LN", "lastName": "B4lkKB4EYOkQ1jMD", "privateCustomAttributes": {"3cym8xIfkOVW2grR": {}, "EOLx0KOww3HICQLf": {}, "l7MUBG7qtPu64yAt": {}}, "timeZone": "URKLRkb738HGS6rD"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"gMdIIlhS1fSiM933": {}, "1m7Ta1PsKc50Kv6e": {}, "cnEevcAx2K2zkRen": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "mPZnGBt4P7WnbdSJ"}' --login_with_auth "Bearer foo"
basic-public-report-user 'tjX7ZshZyZl5x4bR' --body '{"category": "XBHUTrDzZSKscfOc", "description": "Yu3dpCROYqUiGKXV", "gameSessionId": "FCmpo6sPwVOEDSJs", "subcategory": "EK5QpNhlI2iS5EpG", "userId": "hhvXYck0upMzUYnb"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url '76tFkEORV3bu1bNC' 'tX7W40V6Do5sYadC' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'CFrHHC3DpZxkrQDX' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'uNFviMarv8mnfHK8' --body '{"avatarLargeUrl": "CCmE2lPnsbD3SGEd", "avatarSmallUrl": "lwuUccE536ugBp3H", "avatarUrl": "BvepnDCjgyJlXe36", "customAttributes": {"mgWjLfFmteue9nzJ": {}, "6fH24T805tVg8JqU": {}, "0jZpjvsugAOS7u8R": {}}, "dateOfBirth": "1975-11-12", "firstName": "WyerCSa8SRgwsAj1", "language": "YK-GoLs", "lastName": "sB1fPqqRRulpqpym", "privateCustomAttributes": {"DkQhtrHWwRVnwVBO": {}, "qOHi8pWGd1juYhiq": {}, "jRJOqB5F93zFQbJn": {}}, "timeZone": "dUDpdONneAczbBdH", "zipCode": "b2slt71B1SmZp2JZ"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'p50CnPb71ORYcmQb' --body '{"avatarLargeUrl": "TU5JX8ccLjMXJRk0", "avatarSmallUrl": "eaKQDOJvrTefglSs", "avatarUrl": "6g4iY9u02aCNYIWe", "customAttributes": {"kp18lOC3mNqF7Bl0": {}, "LcghVHfPEspxwhRO": {}, "N0bc1eMbEIjowLqc": {}}, "dateOfBirth": "1999-05-28", "firstName": "ecjXJbZDKKoxLE1Y", "language": "ePZ", "lastName": "Xpai0rYaT5hOPjaf", "timeZone": "3H0tYighU0VUfcYH"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'JbBfAKSiPW3VgsZX' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially 'iR1DJ7HVWqMkNSaw' --body '{"QUWDFJvJBWic7UkB": {}, "eIXuqDuAXI66bQ71": {}, "w0deoV9Lx5RDA1l2": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'XcrciYNEzvSZIPkh' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'SgORcz5S5BvmgBLx' --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..70"

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
    --body '{"displayName": "uKNuy0ytZQ7M6Nzy", "namespace": "1adnSKOLFKx1dX4L"}' \
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
    --body '{"actionId": 41, "comment": "RSse6AAz3S4czz0Q", "userIds": ["KFlAVmVLu4AOec0z", "8eBeeoip68J1nsv4", "W2OJhtafxMSJlHeb"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'BanUsers' test.out

#- 8 GetBannedUsers
$PYTHON -m $MODULE 'basic-get-banned-users' \
    '["34sZKHcl5LLLOexL", "4fZvWtND2tcBFpX8", "lNtFEJ7tnkY6Mca5"]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'GetBannedUsers' test.out

#- 9 ReportUser
$PYTHON -m $MODULE 'basic-report-user' \
    --body '{"category": "afj12K2IzrBvvWm4", "description": "udE0OXudXgNne8kJ", "gameSessionId": "ATwlc6esUp6Sw1I9", "subcategory": "8jeZQ7hfxnhLd3Kn", "userId": "aknoed9DHhLOqQGh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'ReportUser' test.out

#- 10 GetUserStatus
$PYTHON -m $MODULE 'basic-get-user-status' \
    'CUr6iTrjyEgarAdN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetUserStatus' test.out

#- 11 UnBanUsers
$PYTHON -m $MODULE 'basic-un-ban-users' \
    --body '{"comment": "JOIG36I6tRbRcrEv", "userIds": ["eMdAdiPKDUVSC00P", "YeDcagginxnFIna3", "yddcbsPheTH26IUJ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'UnBanUsers' test.out

#- 12 UpdateNamespace
$PYTHON -m $MODULE 'basic-update-namespace' \
    --body '{"displayName": "NvYuGRUvpZaHCuES"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateNamespace' test.out

#- 13 GetChildNamespaces
$PYTHON -m $MODULE 'basic-get-child-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetChildNamespaces' test.out

#- 14 CreateConfig
$PYTHON -m $MODULE 'basic-create-config' \
    --body '{"key": "OiIZsMfB4ZH3mtgW", "value": "gU4pCAKxeE70Caun"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateConfig' test.out

#- 15 GetConfig1
$PYTHON -m $MODULE 'basic-get-config-1' \
    'QNxot371W9G4AvQk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'GetConfig1' test.out

#- 16 DeleteConfig1
$PYTHON -m $MODULE 'basic-delete-config-1' \
    'qsGnmyo5JJTUVmb8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'DeleteConfig1' test.out

#- 17 UpdateConfig1
$PYTHON -m $MODULE 'basic-update-config-1' \
    'GEXFTlEMEsFzYqwg' \
    --body '{"value": "K1Np5nodqpLm7FhJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'UpdateConfig1' test.out

#- 18 GetNamespaceContext
$PYTHON -m $MODULE 'basic-get-namespace-context' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'GetNamespaceContext' test.out

#- 19 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetConfig' test.out

#- 20 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'DeleteConfig' test.out

#- 21 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    --body '{"apiKey": "BNXzAFdO0Khqf6ki"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'UpdateConfig' test.out

#- 22 GeneratedUploadUrl
$PYTHON -m $MODULE 'basic-generated-upload-url' \
    'TdSGv2LFjAKY7Cbg' \
    'sWqFWZX7kPBom8F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GeneratedUploadUrl' test.out

#- 23 GetGameNamespaces
$PYTHON -m $MODULE 'basic-get-game-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetGameNamespaces' test.out

#- 24 GetCountries
eval_tap 0 24 'GetCountries # SKIP deprecated' test.out

#- 25 GetCountryGroups
$PYTHON -m $MODULE 'basic-get-country-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetCountryGroups' test.out

#- 26 AddCountryGroup
$PYTHON -m $MODULE 'basic-add-country-group' \
    --body '{"countries": [{"code": "GLLTG8phc3n4iLoI", "name": "llKlpO2pqiXJF3WG"}, {"code": "RaoQomSJC4DdrKF7", "name": "SUQPLG59e0k5ZtX6"}, {"code": "wK7PpUlcIW32iK7M", "name": "Gt1ixY5rA1WoVeJI"}], "countryGroupCode": "ePF8ZrQzP4zvtdxd", "countryGroupName": "bZUpd6FJtHJ1pyVw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AddCountryGroup' test.out

#- 27 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'yKQLY6FEO65Rb3z7' \
    --body '{"countries": [{"code": "CYLM8IlsHqffnrfs", "name": "GlfPaZKBwa3Ddb60"}, {"code": "ufPpzwj1QGIFmlVf", "name": "4jvapseE9LN9bvhO"}, {"code": "rHflIOd6X3viLvtE", "name": "k4mTIpUA9gxo8SV3"}], "countryGroupName": "8nEhoXmM2W7l6jHM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'UpdateCountryGroup' test.out

#- 28 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'A2rG3nakopAywelu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'DeleteCountryGroup' test.out

#- 29 GetLanguages
$PYTHON -m $MODULE 'basic-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetLanguages' test.out

#- 30 GetTimeZones
$PYTHON -m $MODULE 'basic-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTimeZones' test.out

#- 31 GetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-get-user-profile-info-by-public-id' \
    '01nryEJ0NqoTow0q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetUserProfileInfoByPublicId' test.out

#- 32 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["iOiC4j0iktm0ZPLk", "LOsp0LZ5njN86Hl8", "kUXzt6bSc6bWvgpV"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'AdminGetUserProfilePublicInfoByIds' test.out

#- 33 GetNamespacePublisher
$PYTHON -m $MODULE 'basic-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'GetNamespacePublisher' test.out

#- 34 GetPublisherConfig
$PYTHON -m $MODULE 'basic-get-publisher-config' \
    'yW9dD1kOmvrAejcq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPublisherConfig' test.out

#- 35 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'ChangeNamespaceStatus' test.out

#- 36 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'e8aoFzAyBME74HUt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'AnonymizeUserProfile' test.out

#- 37 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'ipUWYhWV1qx8CzPM' \
    'L52faXUr9Sk4lq2f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GeneratedUserUploadContentUrl' test.out

#- 38 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'aBcAXXKlhvyH8paO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'GetUserProfileInfo' test.out

#- 39 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'JtxqMPpcVfRwNj54' \
    --body '{"avatarLargeUrl": "7fH0XrKEDpEY8Vno", "avatarSmallUrl": "cGAjci0V3tBf2jnH", "avatarUrl": "GKXphn50c9tNLDlj", "customAttributes": {"hZ2jxLRX3z46OCaG": {}, "BeMfPlNos4yBRjrE": {}, "RHEonAZR8GmEu0q1": {}}, "dateOfBirth": "1979-12-20", "firstName": "Q5UBEU1QAOHfZiGh", "language": "fph", "lastName": "xYheR3j5mNZ6vwv7", "privateCustomAttributes": {"K8Asvt1j1Rx59hes": {}, "NWy2NvZ85DDKDAF8": {}, "KDsBZOuYQJ03BAHZ": {}}, "status": "ACTIVE", "timeZone": "Hccee9GXhKcjmSEw", "zipCode": "drkEnnqKzFsLfYal"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'UpdateUserProfile' test.out

#- 40 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'UlfwEQKjU7eHGebS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'DeleteUserProfile' test.out

#- 41 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'Vu0LQ40kepEaC4df' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetCustomAttributesInfo' test.out

#- 42 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'iOMZfEhHr39pysFO' \
    --body '{"3Zvc1BZG99LyvfvH": {}, "EsJKQQewVLMUoAna": {}, "RcYp7FUjfIGaffof": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'UpdateCustomAttributesPartially' test.out

#- 43 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'lEIByYqeKN0meGel' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'GetPrivateCustomAttributesInfo' test.out

#- 44 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'YF5wWaDhukU4khGG' \
    --body '{"4vZFTYnPkmSu4PWa": {}, "m1jxR7SETWjteoc8": {}, "fgvZDDhoO05oKqym": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'UpdatePrivateCustomAttributesPartially' test.out

#- 45 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'xLD1Lcvw6T6mZEiw' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'UpdateUserProfileStatus' test.out

#- 46 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'PublicGetTime' test.out

#- 47 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'PublicGetNamespaces' test.out

#- 48 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'FRZ3ZprZ60zMjhTH' \
    'eh94TSenE5hCFkIf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'PublicGeneratedUploadUrl' test.out

#- 49 PublicGetCountries
eval_tap 0 49 'PublicGetCountries # SKIP deprecated' test.out

#- 50 PublicGetLanguages
$PYTHON -m $MODULE 'basic-public-get-languages' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'PublicGetLanguages' test.out

#- 51 PublicGetTimeZones
$PYTHON -m $MODULE 'basic-public-get-time-zones' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'PublicGetTimeZones' test.out

#- 52 PublicGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info-by-ids' \
    '5weqZ18MH57l2Zsr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'PublicGetUserProfilePublicInfoByIds' test.out

#- 53 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'h90ETtYmGukz3Mnl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'PublicGetUserProfileInfoByPublicId' test.out

#- 54 PublicGetNamespacePublisher
$PYTHON -m $MODULE 'basic-public-get-namespace-publisher' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGetNamespacePublisher' test.out

#- 55 GetMyProfileInfo
$PYTHON -m $MODULE 'basic-get-my-profile-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetMyProfileInfo' test.out

#- 56 UpdateMyProfile
$PYTHON -m $MODULE 'basic-update-my-profile' \
    --body '{"avatarLargeUrl": "rjcHp6B8Vj7rXFgD", "avatarSmallUrl": "nDkdZ9bpjb1tdA3Q", "avatarUrl": "hjCMW64f4XhIjSoT", "customAttributes": {"B2NMKtezapPr2QEP": {}, "x3zTxBGtEJIYppuU": {}, "SsKoHw2hyd12uSE7": {}}, "dateOfBirth": "1984-09-05", "firstName": "8rX2MVUGKSZ4GcLk", "language": "jPt-YPLy", "lastName": "cCTpTdRtCHvuk6B6", "privateCustomAttributes": {"XTmSLyn50sigBVZx": {}, "iKdV57GvRyd9UuL0": {}, "2Le8HSCslsDd4M1F": {}}, "timeZone": "5qRIblS7Nz81GRaz", "zipCode": "PAANjfBoldFOyqA2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'UpdateMyProfile' test.out

#- 57 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "clJ5gEOaCgM6Yn6R", "avatarSmallUrl": "ugbNEIpGBFUjOn5m", "avatarUrl": "M7k8nbLzvtCIW5yn", "customAttributes": {"MKquUicAeIVXtoWA": {}, "XhMlW4tLqX7OICf5": {}, "oD1e6oI9FmYel0kO": {}}, "dateOfBirth": "1982-10-24", "firstName": "72o8Zkgk0jS6rDWU", "language": "bGz-619", "lastName": "AaH4yCWrHSppnIZk", "privateCustomAttributes": {"NnTn3rzH5NvAtcvN": {}, "edgS1fUfKmihDbmu": {}, "8ePWlQMVDXEHeiGT": {}}, "timeZone": "nwyEw6hIWDZrpP7r"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'CreateMyProfile' test.out

#- 58 GetMyPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-my-private-custom-attributes-info' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetMyPrivateCustomAttributesInfo' test.out

#- 59 UpdateMyPrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-my-private-custom-attributes-partially' \
    --body '{"z3ISW510kHr4isTK": {}, "Wjmv67nuHCXWfwnw": {}, "GioVwVzmmBVVFfpq": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateMyPrivateCustomAttributesPartially' test.out

#- 60 GetMyZipCode
$PYTHON -m $MODULE 'basic-get-my-zip-code' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'GetMyZipCode' test.out

#- 61 UpdateMyZipCode
$PYTHON -m $MODULE 'basic-update-my-zip-code' \
    '{"zipCode": "x1AeLtzcPJ3jtDYB"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateMyZipCode' test.out

#- 62 PublicReportUser
$PYTHON -m $MODULE 'basic-public-report-user' \
    'o4FUTH7CGfKSyxgR' \
    --body '{"category": "R1DiCqSMzpqIFGLk", "description": "Ds7ACC1RgBfoNrHl", "gameSessionId": "Fi2qJLgmBLE35Yhy", "subcategory": "iDV90SeI5yppBHoy", "userId": "tVznCgNyx9fbT63S"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicReportUser' test.out

#- 63 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'hEh8PbGikLjgjcj3' \
    '4uulU6FYBZsWFbr3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'PublicGeneratedUserUploadContentUrl' test.out

#- 64 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'RSP0W9nBhvhf8Q0D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'PublicGetUserProfileInfo' test.out

#- 65 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'tJMcYQdN66bswAgt' \
    --body '{"avatarLargeUrl": "65X4N1LQZmB61JMd", "avatarSmallUrl": "twCVUrYQue84dwmb", "avatarUrl": "wFEnAZaWsQJtRYoa", "customAttributes": {"gRJK5PX9UcOvhPyE": {}, "11TRT2SKseoe8VLi": {}, "e0LBa36KNzjf005C": {}}, "dateOfBirth": "1996-11-03", "firstName": "NGehQ2aTjTDfKFDX", "language": "LzE-Dkde", "lastName": "Wh9YWqc0qgV6d9yO", "privateCustomAttributes": {"fIMLds2DbPcaoMdt": {}, "RLTmSvTkQQgB7exY": {}, "vmHMxr5hPCJJztJB": {}}, "timeZone": "g0tTJg46IewOXE2A", "zipCode": "kCh3QIZsUf8lGFXc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'PublicUpdateUserProfile' test.out

#- 66 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'mwTERHclOdxIwqej' \
    --body '{"avatarLargeUrl": "xe18rNdb8Otq6j1m", "avatarSmallUrl": "qUav7k05HAQltnSo", "avatarUrl": "jV4jT65yclX2FtAz", "customAttributes": {"0vJjFIYWOaNdsimm": {}, "kW2miH3xRHAKy4Qx": {}, "ZkaXZ7vmiEd0JPxV": {}}, "dateOfBirth": "1983-06-04", "firstName": "QpshaDwNqTbbFMXA", "language": "wFFx_835", "lastName": "eMgsRsmH1EQrYmkP", "timeZone": "KTPOlhTtSiZNCxuo"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'PublicCreateUserProfile' test.out

#- 67 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'gFteTHJe4BhSSQkQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'PublicGetCustomAttributesInfo' test.out

#- 68 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'D6WmOt6D7ufFVTOh' \
    --body '{"vQpfbBke8aEdd36x": {}, "j6wySoltDxsbzxrl": {}, "aKEfkoYjY2o6ouRW": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'PublicUpdateCustomAttributesPartially' test.out

#- 69 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    '9UtNquwC3WgumrIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'PublicGetUserProfilePublicInfo' test.out

#- 70 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    '4NhGztZpr4U4fwQI' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
