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
basic-update-namespace --body '{"displayName": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
basic-get-child-namespaces --login_with_auth "Bearer foo"
basic-create-config --body '{"key": "a62WopBJHPtcDs8b", "value": "BZLCXLx8bbgorQeF"}' --login_with_auth "Bearer foo"
basic-get-config 'bQ1g7qbPngUNB1vR' --login_with_auth "Bearer foo"
basic-delete-config 'odwpzS6DaDpv8N7Z' --login_with_auth "Bearer foo"
basic-update-config 'QVqGj6oDLjWjkY1a' --body '{"value": "XlFcDtgOjchIua5t"}' --login_with_auth "Bearer foo"
basic-get-namespace-context --login_with_auth "Bearer foo"
basic-generated-upload-url 'WEIC32ogW7olvbTg' 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
basic-get-game-namespaces --login_with_auth "Bearer foo"
basic-get-country-groups --login_with_auth "Bearer foo"
basic-add-country-group --body '{"countries": [{"code": "M4OI18mAQLnzjMf8", "name": "GZ2WBZqxYG3aREAu"}, {"code": "2D6QVKNCWP75TB0i", "name": "7pKxR8dl0zRVW4EZ"}, {"code": "G9m0XcgGVbMqSszE", "name": "8GHavj7AorKsxwko"}], "countryGroupCode": "sAVerXpc1C8XfwHu", "countryGroupName": "Keb9l3rGN9A3sNm8"}' --login_with_auth "Bearer foo"
basic-update-country-group '4hddSpHt0P7MIIR7' --body '{"countries": [{"code": "CkyF6C7duuyZ0GhD", "name": "ogqrhBRd8lDR6qVN"}, {"code": "PRZYdFLIAjGGJddV", "name": "Cvu9vx5KQ7KYnIuM"}, {"code": "BvaO35llzQRaT5kP", "name": "xUfofvnnSuB0y5WU"}], "countryGroupName": "lrMdI4sNveabntBS"}' --login_with_auth "Bearer foo"
basic-delete-country-group 'xTeIv53HGCiljvjK' --login_with_auth "Bearer foo"
basic-get-languages --login_with_auth "Bearer foo"
basic-get-time-zones --login_with_auth "Bearer foo"
basic-get-user-profile-info-by-public-id 'oyD6SCwGrncqmLtj' --login_with_auth "Bearer foo"
basic-admin-get-user-profile-public-info-by-ids --body '{"userIds": ["QHAf8TgoNm03VLis", "V6zwPuo3td6TC6I3", "lMjGSWN2laRlxfcj"]}' --login_with_auth "Bearer foo"
basic-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-publisher-config 'HfYakUCTqGkE7wcW' --login_with_auth "Bearer foo"
basic-change-namespace-status --body '{"status": "ACTIVE"}' --login_with_auth "Bearer foo"
basic-anonymize-user-profile 'aLqYSYWytLPziZMd' --login_with_auth "Bearer foo"
basic-generated-user-upload-content-url 'jxcBZufQxGiHPllG' '4cYEzfTD1ZBm3MqH' --login_with_auth "Bearer foo"
basic-get-user-profile-info 'cUmLZZbSqb8RwNmn' --login_with_auth "Bearer foo"
basic-update-user-profile '9HrNQy4uZAAiE0mi' --body '{"avatarLargeUrl": "t9RGCCHYzUOcEdsc", "avatarSmallUrl": "KHPEqgA8yu7Vk6Jt", "avatarUrl": "4Ymos9Jcdos4fYcT", "customAttributes": {"VU6RBt0zYoMcHyCU": {}, "EXlAvxJMdalwSyli": {}, "WMNW5NyLu0M3VHh2": {}}, "dateOfBirth": "1986-10-06", "firstName": "QT279ZZPYGu0rdlg", "language": "tx-pbTK", "lastName": "nvxkT1X68cmDc3fx", "privateCustomAttributes": {"U8MyKrQpM4hkkK6K": {}, "KXNB3Gv0IqmF51Tk": {}, "hjYnaq6foWvXa3bM": {}}, "status": "INACTIVE", "timeZone": "EejtGeoyIPa8ZRrv", "zipCode": "jj7il35MXbN9oCMN"}' --login_with_auth "Bearer foo"
basic-delete-user-profile 'qq98SjTvhZNkSQ70' --login_with_auth "Bearer foo"
basic-get-custom-attributes-info 'D0H6BXksUC9b6i5l' --login_with_auth "Bearer foo"
basic-update-custom-attributes-partially 'ZC9xv32e8c5csSov' --body '{"oqsZNBdte9NDUPVJ": {}, "f6c2Z0QZxfgPubTD": {}, "IHrvqAThuwjRHpKK": {}}' --login_with_auth "Bearer foo"
basic-get-private-custom-attributes-info 'TlmVr9XuoJbRFQSK' --login_with_auth "Bearer foo"
basic-update-private-custom-attributes-partially 'VPHbn4Xxtu7LQREN' --body '{"jEEztx1WsYSiZqan": {}, "0nSBJroav91GXlvP": {}, "G6bFYReVHQipcCx9": {}}' --login_with_auth "Bearer foo"
basic-update-user-profile-status 'Zw5D2L7vIYhGGSyE' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
basic-public-get-time --login_with_auth "Bearer foo"
basic-public-get-namespaces --login_with_auth "Bearer foo"
basic-get-namespace-1 --login_with_auth "Bearer foo"
basic-public-generated-upload-url '4ZJJ42d3PBddN8S4' '8l9lyNApflxqMrj3' --login_with_auth "Bearer foo"
basic-public-get-languages --login_with_auth "Bearer foo"
basic-public-get-time-zones --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info-by-ids 'oZk03QXcKMDYDDxH' --login_with_auth "Bearer foo"
basic-public-bulk-get-user-profile-public-info --body '{"userIds": ["SZjtqXyJ58f7Gc26", "SaiGVkydwYWQG26y", "UZNmTBcvrbYCwZtx"]}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info-by-public-id 'FHyPLtI8ilbyDPUI' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "j88cekdqCt81P1kt", "avatarSmallUrl": "fIovmv9gsR5cJcHm", "avatarUrl": "3SZLxoRDFuuuySj2", "customAttributes": {"9a9LJE8HoRS1X2PF": {}, "AAMwzHPxB1UskYs4": {}, "Yw20DOqOBSC2DKHR": {}}, "dateOfBirth": "1981-12-07", "firstName": "vxkfUcmqRRbceJ5i", "language": "fC", "lastName": "DxOgBnhhqElIaDml", "privateCustomAttributes": {"48wdNFLTm5T50x9W": {}, "T0GfH2rtOa4EXsXz": {}, "OXQAk4mqrxzTtuLl": {}}, "timeZone": "4XlbGL8QOxtjzm8y", "zipCode": "2wNhmwoYZyI4EFZK"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "BcYrCEAE7WIsfmx4", "avatarSmallUrl": "0NLRc6m8heKnWhzf", "avatarUrl": "e2NubeoKFeIaFQCY", "customAttributes": {"oDPICpnduEEQlULd": {}, "Jz4mnRBkMNxvvKgA": {}, "T8mJrYq6hRkloqxM": {}}, "dateOfBirth": "1999-01-28", "firstName": "gpwxcfMy9XzjjI5Y", "language": "pS", "lastName": "DUL3sa13lk1dQBHO", "privateCustomAttributes": {"86IlBhnetU4RwTqU": {}, "XlTDBzOuYsaZA2yy": {}, "d4mbqoOfADMMAXFa": {}}, "timeZone": "Y9eKa699bRVhyaKw"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"wrAP2aMlu7WtjCto": {}, "YetOO847g8OudOfj": {}, "nCuHZ3c46IjGa23Y": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "vYmmDg7VYPXIuvUY"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'TZBRujIUE1Tq5jyA' 'ZvkRCMNFIurjh2im' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'db4rbkXj0ZwsVC0g' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'L97ZVJSPqJiwv1ql' --body '{"avatarLargeUrl": "YB1RSKs6gQxC3Gb7", "avatarSmallUrl": "S0o4zGYY7KQI1AeF", "avatarUrl": "gPqaOkvo1aolB4lk", "customAttributes": {"KB4EYOkQ1jMD3cym": {}, "8xIfkOVW2grREOLx": {}, "0KOww3HICQLfl7MU": {}}, "dateOfBirth": "1985-03-01", "firstName": "G7qtPu64yAtURKLR", "language": "cB", "lastName": "rDgMdIIlhS1fSiM9", "privateCustomAttributes": {"331m7Ta1PsKc50Kv": {}, "6ecnEevcAx2K2zkR": {}, "enmPZnGBt4P7Wnbd": {}}, "timeZone": "SJtjX7ZshZyZl5x4", "zipCode": "bRXBHUTrDzZSKscf"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'OcYu3dpCROYqUiGK' --body '{"avatarLargeUrl": "XVFCmpo6sPwVOEDS", "avatarSmallUrl": "JsEK5QpNhlI2iS5E", "avatarUrl": "pGhhvXYck0upMzUY", "customAttributes": {"nb76tFkEORV3bu1b": {}, "NCtX7W40V6Do5sYa": {}, "dCCFrHHC3DpZxkrQ": {}}, "dateOfBirth": "1986-09-05", "firstName": "XuNFviMarv8mnfHK", "language": "dwdD-Iq", "lastName": "LuIpomM8sm1MiaI1", "timeZone": "mX2tJoARtdbBe7ud"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'sMrok0WvGYYnx4V7' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially '09xbnGezKsDwG2om' --body '{"OR2nvYI9TVqJdvzc": {}, "WbfUpaXp5JMl5LL4": {}, "bTxBmZjdrrIxsB0N": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'RsB1fPqqRRulpqpy' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'mDkQhtrHWwRVnwVB' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
    --body '{"displayName": "y8wbhMssAHjapIkY", "namespace": "9Rf4wP57dBZNR88Y"}' \
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
    --body '{"displayName": "bCtmKy8M9zVrjfGX"}' \
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
    --body '{"key": "ZnqAQUoY1GjlIIk0", "value": "iKoTTS1j02o7JjTX"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    'AQN0qdskdQV0TqI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    'EFnmDbxIxi4YKlON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    'k2Q5Y4Jvaizwiila' \
    --body '{"value": "tuUjjt9lIMGql5El"}' \
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
    'Ea9EIIlGcHB3CfR3' \
    'ncDlwi3v3MFFJ1Ke' \
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
    --body '{"countries": [{"code": "sKoELCpobBEG8X64", "name": "5xpdXpai0rYaT5hO"}, {"code": "Pjaf3H0tYighU0VU", "name": "fcYHJbBfAKSiPW3V"}, {"code": "gsZXiR1DJ7HVWqMk", "name": "NSawQUWDFJvJBWic"}], "countryGroupCode": "7UkBeIXuqDuAXI66", "countryGroupName": "bQ71w0deoV9Lx5RD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'A1l2XcrciYNEzvSZ' \
    --body '{"countries": [{"code": "IPkhSgORcz5S5Bvm", "name": "gBLxh4ijFnE3Tam6"}, {"code": "9qSZ7PC6f6QkmZXE", "name": "lW9YfRSse6AAz3S4"}, {"code": "czz0QKFlAVmVLu4A", "name": "Oec0z8eBeeoip68J"}], "countryGroupName": "1nsv4W2OJhtafxMS"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'JlHeb34sZKHcl5LL' \
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
    'LOexL4fZvWtND2tc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["BFpX8lNtFEJ7tnkY", "6Mca5afj12K2IzrB", "vvWm4udE0OXudXgN"]}' \
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
    'ne8kJATwlc6esUp6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'GetPublisherConfig' test.out

#- 26 ChangeNamespaceStatus
$PYTHON -m $MODULE 'basic-change-namespace-status' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'ChangeNamespaceStatus' test.out

#- 27 AnonymizeUserProfile
$PYTHON -m $MODULE 'basic-anonymize-user-profile' \
    'xnZ5Jrzzjrcaug6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'WVG8SWP3glU6musw' \
    'VJnNnN7kAa7j0riF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'c5HTHQIoVsGo7dwV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    '9DBqFKHQkETJyTlU' \
    --body '{"avatarLargeUrl": "rwDTnoujQD4IEiH9", "avatarSmallUrl": "Z5qXn3aoRtlqOECo", "avatarUrl": "hViHA5CzgFSy8X1A", "customAttributes": {"3PrIfapq5AAeMe4L": {}, "3mDWORBVXTIIJM9X": {}, "sYIIZxiXNMR9BgaW": {}}, "dateOfBirth": "1972-06-25", "firstName": "FX3SUBhyoTsMWPAx", "language": "nL-Mb", "lastName": "EMEsFzYqwgK1Np5n", "privateCustomAttributes": {"odqpLm7FhJBNXzAF": {}, "dO0Khqf6kiTdSGv2": {}, "LFjAKY7CbgsWqFWZ": {}}, "status": "ACTIVE", "timeZone": "7kPBom8F9GLLTG8p", "zipCode": "hc3n4iLoIllKlpO2"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'pqiXJF3WGRaoQomS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'JC4DdrKF7SUQPLG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    '9e0k5ZtX6wK7PpUl' \
    --body '{"cIW32iK7MGt1ixY5": {}, "rA1WoVeJIePF8ZrQ": {}, "zP4zvtdxdbZUpd6F": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'JtHJ1pyVwyKQLY6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'EO65Rb3z7CYLM8Il' \
    --body '{"sHqffnrfsGlfPaZK": {}, "Bwa3Ddb60ufPpzwj": {}, "1QGIFmlVf4jvapse": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    'E9LN9bvhOrHflIOd' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'UpdateUserProfileStatus' test.out

#- 37 PublicGetTime
$PYTHON -m $MODULE 'basic-public-get-time' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetTime' test.out

#- 38 PublicGetNamespaces
$PYTHON -m $MODULE 'basic-public-get-namespaces' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetNamespaces' test.out

#- 39 GetNamespace1
$PYTHON -m $MODULE 'basic-get-namespace-1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'GetNamespace1' test.out

#- 40 PublicGeneratedUploadUrl
$PYTHON -m $MODULE 'basic-public-generated-upload-url' \
    'X3viLvtEk4mTIpUA' \
    '9gxo8SV38nEhoXmM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGeneratedUploadUrl' test.out

#- 41 PublicGetCountries
eval_tap 0 41 'PublicGetCountries # SKIP deprecated' test.out

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
    '2W7l6jHMA2rG3nak' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicBulkGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-bulk-get-user-profile-public-info' \
    --body '{"userIds": ["opAywelu01nryEJ0", "NqoTow0qiOiC4j0i", "ktm0ZPLkLOsp0LZ5"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'PublicBulkGetUserProfilePublicInfo' test.out

#- 46 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    'njN86Hl8kUXzt6bS' \
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
    --body '{"avatarLargeUrl": "c6bWvgpVyW9dD1kO", "avatarSmallUrl": "mvrAejcq2LgkQuaS", "avatarUrl": "7RBx3vim02jBOxrZ", "customAttributes": {"DyvpcLYOWA8NjxOn": {}, "aEok4nOOCzfsflhj": {}, "bngJOUn18G5MlfDT": {}}, "dateOfBirth": "1976-05-07", "firstName": "8aG40NlncceIZSwg", "language": "fje", "lastName": "gzh4pTU0Am4DZhl0", "privateCustomAttributes": {"bQxFJ3sWCqQpQ2Fb": {}, "KPFMycMSQ4qfAacR": {}, "0LgB5BUXvjcu2s6w": {}}, "timeZone": "3VifnKqmTSoGH1XE", "zipCode": "fY6QAYn6WQ5UBEU1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdateMyProfile' test.out

#- 50 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "QAOHfZiGhxOdcuDX", "avatarSmallUrl": "SxSc3aZPV87pna08", "avatarUrl": "gxefTYKhuxaEc7M4", "customAttributes": {"P7UckSC6ePeN8i4G": {}, "rFES9z7xueHpATHc": {}, "cee9GXhKcjmSEwdr": {}}, "dateOfBirth": "1976-04-27", "firstName": "EnnqKzFsLfYalUlf", "language": "afF", "lastName": "U7eHGebSVu0LQ40k", "privateCustomAttributes": {"epEaC4dfiOMZfEhH": {}, "r39pysFO3Zvc1BZG": {}, "99LyvfvHEsJKQQew": {}}, "timeZone": "VLMUoAnaRcYp7FUj"}' \
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
    --body '{"fIGaffoflEIByYqe": {}, "KN0meGelYF5wWaDh": {}, "ukU4khGG4vZFTYnP": {}}' \
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
    '{"zipCode": "kmSu4PWam1jxR7SE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateMyZipCode' test.out

#- 55 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    'TWjteoc8fgvZDDho' \
    'O05oKqymxLD1Lcvw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGeneratedUserUploadContentUrl' test.out

#- 56 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    '6T6mZEiwxxElpMYS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicGetUserProfileInfo' test.out

#- 57 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'WIeVzm7z9noowmlT' \
    --body '{"avatarLargeUrl": "IKVowi0RY2VN4ZON", "avatarSmallUrl": "JREdUQ3z9F1BxNNg", "avatarUrl": "nke4akncw7wu9TmX", "customAttributes": {"fJWBPrx9Ns8eLzYE": {}, "vwSWTaLQjctvrK2j": {}, "hsYpKPlXn77AtYoF": {}}, "dateOfBirth": "1984-01-02", "firstName": "LAATPY8P8P3cfoiv", "language": "ksj_VPEV", "lastName": "USsKoHw2hyd12uSE", "privateCustomAttributes": {"7BEv3aevq6iohU1c": {}, "g4W1IS3Uv1BpWoJB": {}, "aqdg2FHcunsS1lna": {}}, "timeZone": "O2m9vqjhbeK2qN8g", "zipCode": "6x2PyYDo5R3hLiD5"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicUpdateUserProfile' test.out

#- 58 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'sf5y1JsxJNGmyt0S' \
    --body '{"avatarLargeUrl": "QDUDoWBZVGLlkUet", "avatarSmallUrl": "zCAWc9x1aMjgGim5", "avatarUrl": "1T107XIZRZ7tZdIs", "customAttributes": {"0xf4czdt7zqmSKxO": {}, "EQlVcx6GqsBq8vdh": {}, "WVnuYLgpZehK0G2n": {}}, "dateOfBirth": "1977-04-08", "firstName": "yuViB9kRTcSQdTnN", "language": "PEjb", "lastName": "FG3wSkHKufBdS3ZO", "timeZone": "okZB4cXnAXyuGz6L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicCreateUserProfile' test.out

#- 59 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'lxHv8SwyagYvDJ3w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicGetCustomAttributesInfo' test.out

#- 60 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    '3UNgIGj2jZtEYT8s' \
    --body '{"IPSE1XXPzySa0sZo": {}, "FS6xCOWMpyh9pMsQ": {}, "gb64ELbzDMwyo4nI": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicUpdateCustomAttributesPartially' test.out

#- 61 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'RysQdbufXjYnSoIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicGetUserProfilePublicInfo' test.out

#- 62 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'eouC2m38kXrDZWlG' \
    --body '{"status": "ACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
