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
basic-public-get-user-profile-info-by-public-id 'SZjtqXyJ58f7Gc26' --login_with_auth "Bearer foo"
basic-public-get-namespace-publisher --login_with_auth "Bearer foo"
basic-get-my-profile-info --login_with_auth "Bearer foo"
basic-update-my-profile --body '{"avatarLargeUrl": "SaiGVkydwYWQG26y", "avatarSmallUrl": "UZNmTBcvrbYCwZtx", "avatarUrl": "FHyPLtI8ilbyDPUI", "customAttributes": {"j88cekdqCt81P1kt": {}, "fIovmv9gsR5cJcHm": {}, "3SZLxoRDFuuuySj2": {}}, "dateOfBirth": "1985-01-04", "firstName": "iuFM3FIoVk8T3GpA", "language": "oL-Nicq-472", "lastName": "nqntX9y1aZSWMiVi", "privateCustomAttributes": {"10sG6vxkfUcmqRRb": {}, "ceJ5i0EeDxOgBnhh": {}, "qElIaDml48wdNFLT": {}}, "timeZone": "m5T50x9WT0GfH2rt", "zipCode": "Oa4EXsXzOXQAk4mq"}' --login_with_auth "Bearer foo"
basic-create-my-profile --body '{"avatarLargeUrl": "rxzTtuLl4XlbGL8Q", "avatarSmallUrl": "Oxtjzm8y2wNhmwoY", "avatarUrl": "ZyI4EFZKBcYrCEAE", "customAttributes": {"7WIsfmx40NLRc6m8": {}, "heKnWhzfe2NubeoK": {}, "FeIaFQCYoDPICpnd": {}}, "dateOfBirth": "1981-03-17", "firstName": "EEQlULdJz4mnRBkM", "language": "CYGV-Fbgv_ky", "lastName": "rYq6hRkloqxM3gpw", "privateCustomAttributes": {"xcfMy9XzjjI5YbsK": {}, "oADkzJEN2VHzih3b": {}, "it0VWn3CO39PXDNx": {}}, "timeZone": "tXgeO3FgkXhjDzaQ"}' --login_with_auth "Bearer foo"
basic-get-my-private-custom-attributes-info --login_with_auth "Bearer foo"
basic-update-my-private-custom-attributes-partially --body '{"Y3snn2ZkP7cFdP43": {}, "e5dC9XIBudfZgrbH": {}, "DIDm4hMzF4Txoden": {}}' --login_with_auth "Bearer foo"
basic-get-my-zip-code --login_with_auth "Bearer foo"
basic-update-my-zip-code '{"zipCode": "SrUTvfqU0bfoMm5c"}' --login_with_auth "Bearer foo"
basic-public-generated-user-upload-content-url 'TtFWbotQyXJRcQWs' 'mqPNs92epxk0i8Vx' --login_with_auth "Bearer foo"
basic-public-get-user-profile-info 'sZNereSvf9699mCE' --login_with_auth "Bearer foo"
basic-public-update-user-profile 'HThUJkETAsSp7gh4' --body '{"avatarLargeUrl": "TeUTkOkAYfJB8AT9", "avatarSmallUrl": "t4Tv207Y2QD3oD5f", "avatarUrl": "LCr3OOlXVv8ZGF7u", "customAttributes": {"YnGzpipNDigNJma1": {}, "MbqqZtfNWql4nmwA": {}, "ft4gqkNNlWkD9eOz": {}}, "dateOfBirth": "1975-07-16", "firstName": "RFOn0jJLHC9LxhvN", "language": "vWWX-dOsH", "lastName": "tl9Zuhytm5UDrT6Q", "privateCustomAttributes": {"XCs5SPBbRPZTF6oQ": {}, "AXVG7tnsZg5QgXjv": {}, "yGJPN4eXbJE5Vs2G": {}}, "timeZone": "cyomQoIXimBJehyx", "zipCode": "lNsjUgxBkF6wFPoJ"}' --login_with_auth "Bearer foo"
basic-public-create-user-profile 'eQediogEhhM2rIiz' --body '{"avatarLargeUrl": "GdKvOPdq5xrgxSmy", "avatarSmallUrl": "1DN9LFkYW5DQyj4b", "avatarUrl": "j5Ro2ogaKt2ujQSa", "customAttributes": {"3Zdb65UXmy0Zp6iI": {}, "aTIKUkmkk9QM0NBM": {}, "A9ORxpzwLR2AK6eX": {}}, "dateOfBirth": "1994-06-07", "firstName": "GPJsw1fiP80G9Pcl", "language": "gCS-783", "lastName": "JzPyrVEiOG4Ucqsu", "timeZone": "GKHhMRWLVd3DlhLu"}' --login_with_auth "Bearer foo"
basic-public-get-custom-attributes-info 'IpomM8sm1MiaI1mX' --login_with_auth "Bearer foo"
basic-public-update-custom-attributes-partially '2tJoARtdbBe7udsM' --body '{"rok0WvGYYnx4V709": {}, "xbnGezKsDwG2omOR": {}, "2nvYI9TVqJdvzcWb": {}}' --login_with_auth "Bearer foo"
basic-public-get-user-profile-public-info 'fUpaXp5JMl5LL4bT' --login_with_auth "Bearer foo"
basic-public-update-user-profile-status 'xBmZjdrrIxsB0NRs' --body '{"status": "INACTIVE"}' --login_with_auth "Bearer foo"
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
echo "1..61"

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
    --body '{"displayName": "XTvKCWwNTAhd2wrS", "namespace": "0uPdjhdinpng5BLy"}' \
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
    --body '{"displayName": "8wbhMssAHjapIkY9"}' \
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
    --body '{"key": "Rf4wP57dBZNR88Yb", "value": "CtmKy8M9zVrjfGXZ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'CreateConfig' test.out

#- 9 GetConfig
$PYTHON -m $MODULE 'basic-get-config' \
    'nqAQUoY1GjlIIk0i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'GetConfig' test.out

#- 10 DeleteConfig
$PYTHON -m $MODULE 'basic-delete-config' \
    'KoTTS1j02o7JjTXA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'DeleteConfig' test.out

#- 11 UpdateConfig
$PYTHON -m $MODULE 'basic-update-config' \
    'QN0qdskdQV0TqI8E' \
    --body '{"value": "FnmDbxIxi4YKlONk"}' \
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
    '2Q5Y4Jvaizwiilat' \
    'uUjjt9lIMGql5ElE' \
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
    --body '{"countries": [{"code": "a9EIIlGcHB3CfR3n", "name": "cDlwi3v3MFFJ1Kes"}, {"code": "KoELCpobBEG8X645", "name": "xpdXpai0rYaT5hOP"}, {"code": "jaf3H0tYighU0VUf", "name": "cYHJbBfAKSiPW3Vg"}], "countryGroupCode": "sZXiR1DJ7HVWqMkN", "countryGroupName": "SawQUWDFJvJBWic7"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AddCountryGroup' test.out

#- 18 UpdateCountryGroup
$PYTHON -m $MODULE 'basic-update-country-group' \
    'UkBeIXuqDuAXI66b' \
    --body '{"countries": [{"code": "Q71w0deoV9Lx5RDA", "name": "1l2XcrciYNEzvSZI"}, {"code": "PkhSgORcz5S5Bvmg", "name": "BLxh4ijFnE3Tam69"}, {"code": "qSZ7PC6f6QkmZXEl", "name": "W9YfRSse6AAz3S4c"}], "countryGroupName": "zz0QKFlAVmVLu4AO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateCountryGroup' test.out

#- 19 DeleteCountryGroup
$PYTHON -m $MODULE 'basic-delete-country-group' \
    'ec0z8eBeeoip68J1' \
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
    'nsv4W2OJhtafxMSJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetUserProfileInfoByPublicId' test.out

#- 23 AdminGetUserProfilePublicInfoByIds
$PYTHON -m $MODULE 'basic-admin-get-user-profile-public-info-by-ids' \
    --body '{"userIds": ["lHeb34sZKHcl5LLL", "OexL4fZvWtND2tcB", "FpX8lNtFEJ7tnkY6"]}' \
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
    'Mca5afj12K2IzrBv' \
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
    'KvgatOEBM70TdlNB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AnonymizeUserProfile' test.out

#- 28 GeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-generated-user-upload-content-url' \
    'JYOmpu1VCarzBsV6' \
    'xnZ5Jrzzjrcaug6C' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'GeneratedUserUploadContentUrl' test.out

#- 29 GetUserProfileInfo
$PYTHON -m $MODULE 'basic-get-user-profile-info' \
    'WVG8SWP3glU6musw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetUserProfileInfo' test.out

#- 30 UpdateUserProfile
$PYTHON -m $MODULE 'basic-update-user-profile' \
    'VJnNnN7kAa7j0riF' \
    --body '{"avatarLargeUrl": "c5HTHQIoVsGo7dwV", "avatarSmallUrl": "9DBqFKHQkETJyTlU", "avatarUrl": "rwDTnoujQD4IEiH9", "customAttributes": {"Z5qXn3aoRtlqOECo": {}, "hViHA5CzgFSy8X1A": {}, "3PrIfapq5AAeMe4L": {}}, "dateOfBirth": "1999-05-31", "firstName": "mDWORBVXTIIJM9Xs", "language": "jOk-PzUo_CV", "lastName": "FX3SUBhyoTsMWPAx", "privateCustomAttributes": {"UMkawaGpAyrIwMif": {}, "3BOdkocVTd4BxqGW": {}, "V6mTJ0sQs6XNbjvq": {}}, "status": "ACTIVE", "timeZone": "kiTdSGv2LFjAKY7C", "zipCode": "bgsWqFWZX7kPBom8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'UpdateUserProfile' test.out

#- 31 DeleteUserProfile
$PYTHON -m $MODULE 'basic-delete-user-profile' \
    'F9GLLTG8phc3n4iL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteUserProfile' test.out

#- 32 GetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-custom-attributes-info' \
    'oIllKlpO2pqiXJF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetCustomAttributesInfo' test.out

#- 33 UpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-custom-attributes-partially' \
    'WGRaoQomSJC4DdrK' \
    --body '{"F7SUQPLG59e0k5Zt": {}, "X6wK7PpUlcIW32iK": {}, "7MGt1ixY5rA1WoVe": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateCustomAttributesPartially' test.out

#- 34 GetPrivateCustomAttributesInfo
$PYTHON -m $MODULE 'basic-get-private-custom-attributes-info' \
    'JIePF8ZrQzP4zvtd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'GetPrivateCustomAttributesInfo' test.out

#- 35 UpdatePrivateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-update-private-custom-attributes-partially' \
    'xdbZUpd6FJtHJ1py' \
    --body '{"VwyKQLY6FEO65Rb3": {}, "z7CYLM8IlsHqffnr": {}, "fsGlfPaZKBwa3Ddb": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'UpdatePrivateCustomAttributesPartially' test.out

#- 36 UpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-update-user-profile-status' \
    '60ufPpzwj1QGIFml' \
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
    'f4jvapseE9LN9bvh' \
    'OrHflIOd6X3viLvt' \
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
    'Ek4mTIpUA9gxo8SV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'PublicGetUserProfilePublicInfoByIds' test.out

#- 45 PublicGetUserProfileInfoByPublicId
$PYTHON -m $MODULE 'basic-public-get-user-profile-info-by-public-id' \
    '38nEhoXmM2W7l6jH' \
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
    --body '{"avatarLargeUrl": "MA2rG3nakopAywel", "avatarSmallUrl": "u01nryEJ0NqoTow0", "avatarUrl": "qiOiC4j0iktm0ZPL", "customAttributes": {"kLOsp0LZ5njN86Hl": {}, "8kUXzt6bSc6bWvgp": {}, "VyW9dD1kOmvrAejc": {}}, "dateOfBirth": "1979-10-26", "firstName": "2LgkQuaS7RBx3vim", "language": "JJc-HeyZ-597", "lastName": "OWA8NjxOnaEok4nO", "privateCustomAttributes": {"OCzfsflhjbngJOUn": {}, "18G5MlfDTk8aG40N": {}, "lncceIZSwgAIkgzh": {}}, "timeZone": "4pTU0Am4DZhl0bQx", "zipCode": "FJ3sWCqQpQ2FbKPF"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'UpdateMyProfile' test.out

#- 49 CreateMyProfile
$PYTHON -m $MODULE 'basic-create-my-profile' \
    --body '{"avatarLargeUrl": "MycMSQ4qfAacR0Lg", "avatarSmallUrl": "B5BUXvjcu2s6w3Vi", "avatarUrl": "fnKqmTSoGH1XEfY6", "customAttributes": {"QAYn6WQ5UBEU1QAO": {}, "HfZiGhxOdcuDXSxS": {}, "c3aZPV87pna08gxe": {}}, "dateOfBirth": "1973-03-20", "firstName": "TYKhuxaEc7M4P7Uc", "language": "te-eqbE", "lastName": "DsBZOuYQJ03BAHZ7", "privateCustomAttributes": {"c53q7akMpcmnnx6R": {}, "VBrop9v7aZK3h65h": {}, "bN15zfQSfQrtfF3T": {}}, "timeZone": "QN0OcNDLr36vzohZ"}' \
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
    --body '{"yjMQAg5mPYhrLTyU": {}, "8OhgfY9JQYGF4bYX": {}, "EcENx9xZlAchob44": {}}' \
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
    '{"zipCode": "lONDDwMvgI0HlyPR"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateMyZipCode' test.out

#- 54 PublicGeneratedUserUploadContentUrl
$PYTHON -m $MODULE 'basic-public-generated-user-upload-content-url' \
    '7wZNiVsF6xG2mXEQ' \
    'dbzIVy8alncV7vWg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'PublicGeneratedUserUploadContentUrl' test.out

#- 55 PublicGetUserProfileInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-info' \
    'SHdfo07UctPErqxy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'PublicGetUserProfileInfo' test.out

#- 56 PublicUpdateUserProfile
$PYTHON -m $MODULE 'basic-public-update-user-profile' \
    'MyOK06MqQBErxgjV' \
    --body '{"avatarLargeUrl": "BycvU4PbmRDcrg0D", "avatarSmallUrl": "jQjBECXvea7H1m2l", "avatarUrl": "JFRZ3ZprZ60zMjhT", "customAttributes": {"Heh94TSenE5hCFkI": {}, "f5weqZ18MH57l2Zs": {}, "rh90ETtYmGukz3Mn": {}}, "dateOfBirth": "1976-07-04", "firstName": "rjcHp6B8Vj7rXFgD", "language": "Te", "lastName": "dZ9bpjb1tdA3QhjC", "privateCustomAttributes": {"MW64f4XhIjSoTB2N": {}, "MKtezapPr2QEPx3z": {}, "TxBGtEJIYppuUSsK": {}}, "timeZone": "oHw2hyd12uSE7BEv", "zipCode": "3aevq6iohU1cg4W1"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'PublicUpdateUserProfile' test.out

#- 57 PublicCreateUserProfile
$PYTHON -m $MODULE 'basic-public-create-user-profile' \
    'IS3Uv1BpWoJBaqdg' \
    --body '{"avatarLargeUrl": "2FHcunsS1lnaO2m9", "avatarSmallUrl": "vqjhbeK2qN8g6x2P", "avatarUrl": "yYDo5R3hLiD5sf5y", "customAttributes": {"1JsxJNGmyt0SQDUD": {}, "oWBZVGLlkUetzCAW": {}, "c9x1aMjgGim51T10": {}}, "dateOfBirth": "1971-08-27", "firstName": "IZRZ7tZdIs0xf4cz", "language": "gT-uM", "lastName": "KxOEQlVcx6GqsBq8", "timeZone": "vdhWVnuYLgpZehK0"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'PublicCreateUserProfile' test.out

#- 58 PublicGetCustomAttributesInfo
$PYTHON -m $MODULE 'basic-public-get-custom-attributes-info' \
    'G2nmyuViB9kRTcSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'PublicGetCustomAttributesInfo' test.out

#- 59 PublicUpdateCustomAttributesPartially
$PYTHON -m $MODULE 'basic-public-update-custom-attributes-partially' \
    'dTnNYGeAfYFG3wSk' \
    --body '{"HKufBdS3ZOokZB4c": {}, "XnAXyuGz6LlxHv8S": {}, "wyagYvDJ3w3UNgIG": {}}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'PublicUpdateCustomAttributesPartially' test.out

#- 60 PublicGetUserProfilePublicInfo
$PYTHON -m $MODULE 'basic-public-get-user-profile-public-info' \
    'j2jZtEYT8sIPSE1X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'PublicGetUserProfilePublicInfo' test.out

#- 61 PublicUpdateUserProfileStatus
$PYTHON -m $MODULE 'basic-public-update-user-profile-status' \
    'XPzySa0sZoFS6xCO' \
    --body '{"status": "INACTIVE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'PublicUpdateUserProfileStatus' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
