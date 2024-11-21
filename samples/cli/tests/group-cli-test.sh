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
group-list-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-create-group-configuration-admin-v1 '{"allowMultiple": true, "configurationCode": "twYCA9kPI6LZrkq6", "description": "Dc09nIW0Oaiw9B0D", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ktQG0h5JAav5kRa6", "ruleCriteria": "EQUAL", "ruleValue": 0.22965718362292997}, {"ruleAttribute": "pBJHPtcDs8bBZLCX", "ruleCriteria": "MINIMUM", "ruleValue": 0.6960337785804731}, {"ruleAttribute": "DBXxyaNoMR6hkspI", "ruleCriteria": "EQUAL", "ruleValue": 0.670383760985477}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "Aip6lyzSxwElFHHd", "ruleCriteria": "EQUAL", "ruleValue": 0.4725870140020443}, {"ruleAttribute": "pv8N7ZQVqGj6oDLj", "ruleCriteria": "EQUAL", "ruleValue": 0.2472405520592631}, {"ruleAttribute": "UkHODpoMF78NY4Yk", "ruleCriteria": "MINIMUM", "ruleValue": 0.003696026594533164}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "cnz1JSDgY1TXp38z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2858670909754849}, {"ruleAttribute": "hRTcPiSuL0Sly6XM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6494097448606809}, {"ruleAttribute": "I18mAQLnzjMf8GZ2", "ruleCriteria": "EQUAL", "ruleValue": 0.43681487232294225}]}], "groupAdminRoleId": "ZqxYG3aREAu2D6QV", "groupMaxMember": 74, "groupMemberRoleId": "FvdiRilZ7oFgx4c8", "name": "OumKtPDKJDXn7Z4U"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 '68su8XfqlqNiTvB6' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'SdAdIhUDrwoZ5Mec' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "dKi5r6QEa1ysLEzt", "groupMaxMember": 14, "name": "rGN9A3sNm84hddSp"}' 'Ht0P7MIIR7CkyF6C' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "7duuyZ0GhDogqrhB", "ruleCriteria": "MINIMUM", "ruleValue": 0.686498262427911}, {"ruleAttribute": "N05MYzYiKWe5dNRl", "ruleCriteria": "EQUAL", "ruleValue": 0.4229557465918846}, {"ruleAttribute": "jGGJddVCvu9vx5KQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5925349259478901}]}' 'YnIuMBvaO35llzQR' 'aT5kPxUfofvnnSuB' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 '0y5WUlrMdI4sNvea' 'bntBSxTeIv53HGCi' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'ljvjKoyD6SCwGrnc' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'qmLtjQHAf8TgoNm0' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 '3VLisV6zwPuo3td6' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "TC6I3lMjGSWN2laR", "memberRolePermissions": [{"action": 23, "resourceName": "qxNeIxPz6MbwL6IY"}, {"action": 46, "resourceName": "z1UaLqYSYWytLPzi"}, {"action": 80, "resourceName": "oNRKd3IL5TAQ6iiP"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'lSC2uE4o5Vwdo3fe' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'PqIJA8IHtrkmu0hp' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "DDWVAla2l5BYNtIu"}' 'S5S5XUdjsoqwGyzz' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 100, "resourceName": "cKHPEqgA8yu7Vk6J"}, {"action": 39, "resourceName": "DmrhZv15T7quIOvB"}, {"action": 80, "resourceName": "VU6RBt0zYoMcHyCU"}]}' 'EXlAvxJMdalwSyli' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "WMNW5NyLu0M3VHh2", "customAttributes": {"EI8JlDbPWbQ6Q9lN": {}, "mqRBaAkLnvxkT1X6": {}, "8cmDc3fxU8MyKrQp": {}}, "groupDescription": "M4hkkK6KKXNB3Gv0", "groupIcon": "IqmF51TkhjYnaq6f", "groupMaxMember": 30, "groupName": "asWIPUvmEejtGeoy", "groupRegion": "IPa8ZRrvjj7il35M", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "4jk4Lo0LSP0pf4Ix", "ruleCriteria": "EQUAL", "ruleValue": 0.6405752133277357}, {"ruleAttribute": "kSQ70D0H6BXksUC9", "ruleCriteria": "EQUAL", "ruleValue": 0.4076614227255866}, {"ruleAttribute": "1x3poD3Qgb3boLQQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.6252388599576524}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "voqsZNBdte9NDUPV", "ruleCriteria": "MINIMUM", "ruleValue": 0.49572597508359506}, {"ruleAttribute": "ThG96gAFKK2WDgCc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5391771148223469}, {"ruleAttribute": "rvqAThuwjRHpKKTl", "ruleCriteria": "EQUAL", "ruleValue": 0.511521136515372}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "VSZ6pf3vneSD2Tb3", "ruleCriteria": "EQUAL", "ruleValue": 0.9115572791689714}, {"ruleAttribute": "Xxtu7LQRENjEEztx", "ruleCriteria": "EQUAL", "ruleValue": 0.29889483687088747}, {"ruleAttribute": "YSiZqan0nSBJroav", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8677481115469842}]}]}, "groupType": "PUBLIC"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'THeKtW18iGeUlc9d' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "9sogWa24CKNS0GqV", "groupIcon": "vUfHQvsHXNUNe4mh", "groupName": "go5QB65lSAiYnNjk", "groupRegion": "fZrQvGgbLdLsFzHk", "groupType": "PRIVATE"}' 'YDDxHSZjtqXyJ58f' --login_with_auth "Bearer foo"
group-delete-group-public-v1 '7Gc26SaiGVkydwYW' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "QG26yUZNmTBcvrbY", "groupIcon": "CwZtxFHyPLtI8ilb", "groupName": "yDPUIj88cekdqCt8", "groupRegion": "1P1ktfIovmv9gsR5", "groupType": "OPEN"}' 'z9KOsb392k6YmJFf' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"RByjlBiuFM3FIoVk": {}, "8T3GpAnkCmBUqg2S": {}, "CnqntX9y1aZSWMiV": {}}}' 'i10sG6vxkfUcmqRR' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'bceJ5i0EeDxOgBnh' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'hqElIaDml48wdNFL' --login_with_auth "Bearer foo"
group-join-group-v1 'Tm5T50x9WT0GfH2r' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'tOa4EXsXzOXQAk4m' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'qrxzTtuLl4XlbGL8' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'QOxtjzm8y2wNhmwo' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"YZyI4EFZKBcYrCEA": {}, "E7WIsfmx40NLRc6m": {}, "8heKnWhzfe2Nubeo": {}}}' 'KFeIaFQCYoDPICpn' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "duEEQlULdJz4mnRB", "ruleCriteria": "EQUAL", "ruleValue": 0.4584148795593471}, {"ruleAttribute": "Acf80zfFyabWAgIU", "ruleCriteria": "MINIMUM", "ruleValue": 0.1310438749696844}, {"ruleAttribute": "I07A68eaqC2J9jyE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.941949920016215}]}' 'GLbc0NaKDUL3sa13' 'lk1dQBHO86IlBhne' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'tU4RwTqUXlTDBzOu' 'YsaZA2yyd4mbqoOf' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "ADMMAXFaY9eKa699"}' 'bRVhyaKwwrAP2aMl' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "u7WtjCtoYetOO847"}' 'g8OudOfjnCuHZ3c4' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 '6IjGa23YvYmmDg7V' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'YPXIuvUYTZBRujIU' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'E1Tq5jyAZvkRCMNF' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'Iurjh2imdb4rbkXj' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 '0ZwsVC0gL97ZVJSP' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-admin-v2 '{"groupIDs": ["qJiwv1qlYB1RSKs6", "gQxC3Gb7S0o4zGYY", "7KQI1AeFgPqaOkvo"]}' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 '1aolB4lkKB4EYOkQ' --login_with_auth "Bearer foo"
group-admin-get-user-group-status-information-v2 '1jMD3cym8xIfkOVW' '2grREOLx0KOww3HI' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "CQLfl7MUBG7qtPu6", "customAttributes": {"4yAtURKLRkb738HG": {}, "S6rDgMdIIlhS1fSi": {}, "M9331m7Ta1PsKc50": {}}, "groupDescription": "Kv6ecnEevcAx2K2z", "groupIcon": "kRenmPZnGBt4P7Wn", "groupMaxMember": 2, "groupName": "PoJeQediogEhhM2r", "groupRegion": "IizGdKvOPdq5xrgx", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "my1DN9LFkYW5DQyj", "ruleCriteria": "EQUAL", "ruleValue": 0.7741640891832536}, {"ruleAttribute": "FCmpo6sPwVOEDSJs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.838183057164227}, {"ruleAttribute": "db65UXmy0Zp6iIaT", "ruleCriteria": "MINIMUM", "ruleValue": 0.34176031193335654}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "ck0upMzUYnb76tFk", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4048898417574385}, {"ruleAttribute": "wLR2AK6eXUGPJsw1", "ruleCriteria": "EQUAL", "ruleValue": 0.9397053877399802}, {"ruleAttribute": "Do5sYadCCFrHHC3D", "ruleCriteria": "EQUAL", "ruleValue": 0.5657856750230359}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "xkrQDXuNFviMarv8", "ruleCriteria": "EQUAL", "ruleValue": 0.5404404343626354}, {"ruleAttribute": "hMRWLVd3DlhLuIpo", "ruleCriteria": "EQUAL", "ruleValue": 0.7228542835858793}, {"ruleAttribute": "GEdlwuUccE536ugB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6969222120805957}]}]}, "groupType": "PRIVATE"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["HBvepnDCjgyJlXe3", "6mgWjLfFmteue9nz", "J6fH24T805tVg8Jq"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "U0jZpjvsugAOS7u8", "groupIcon": "RiWyerCSa8SRgwsA", "groupName": "j1ik1jglaDXTvKCW", "groupRegion": "wNTAhd2wrS0uPdjh", "groupType": "OPEN"}' 'wRVnwVBOqOHi8pWG' --login_with_auth "Bearer foo"
group-delete-group-public-v2 'd1juYhiqjRJOqB5F' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "93zFQbJndUDpdONn", "groupIcon": "eAczbBdHb2slt71B", "groupName": "1SmZp2JZp50CnPb7", "groupRegion": "1ORYcmQbTU5JX8cc", "groupType": "PUBLIC"}' 'dQV0TqI8EFnmDbxI' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"xi4YKlONk2Q5Y4Jv": {}, "aizwiilatuUjjt9l": {}, "IMGql5ElEa9EIIlG": {}}}' 'cHB3CfR3ncDlwi3v' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 '3MFFJ1KesKoELCpo' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 'bBEG8X645xpdXpai' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 '0rYaT5hOPjaf3H0t' --login_with_auth "Bearer foo"
group-join-group-v2 'YighU0VUfcYHJbBf' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'AKSiPW3VgsZXiR1D' --login_with_auth "Bearer foo"
group-leave-group-public-v2 'J7HVWqMkNSawQUWD' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"FJvJBWic7UkBeIXu": {}, "qDuAXI66bQ71w0de": {}, "oV9Lx5RDA1l2Xcrc": {}}}' 'iYNEzvSZIPkhSgOR' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "cz5S5BvmgBLxh4ij", "ruleCriteria": "MINIMUM", "ruleValue": 0.4017498584379524}, {"ruleAttribute": "0ytZQ7M6Nzy1adnS", "ruleCriteria": "MINIMUM", "ruleValue": 0.686785792247075}, {"ruleAttribute": "kmZXElW9YfRSse6A", "ruleCriteria": "MAXIMUM", "ruleValue": 0.623061309853444}]}' 'UAeeZ97SBROPYuG6' 'XqP6oo7G73zdxTgO' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 'fnwIdlNa29fDLh74' '1IslKHzGlLKWUtDQ' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "s61OQAoxyyQpRWCi"}' 'iPDGQhNPEwiJCf2X' 'JVrlzqQls1ozhLVA' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "3kE8jKvgatOEBM70"}' 'TdlNBJYOmpu1VCar' 'zBsV6xnZ5Jrzzjrc' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 'aug6CWVG8SWP3glU' '6muswVJnNnN7kAa7' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 'j0riFc5HTHQIoVsG' 'o7dwV9DBqFKHQkET' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 'JyTlUrwDTnoujQD4' 'IEiH9Z5qXn3aoRtl' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 'qOECohViHA5CzgFS' 'y8X1A3PrIfapq5AA' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'eMe4L3mDWORBVXTI' 'IJM9XsYIIZxiXNMR' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 '9BgaWcFX3SUBhyoT' 'sMWPAxUMkawaGpAy' --login_with_auth "Bearer foo"
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
echo "1..74"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 ListGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-list-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-create-group-configuration-admin-v1' \
    '{"allowMultiple": true, "configurationCode": "EsFzYqwgK1Np5nod", "description": "qpLm7FhJBNXzAFdO", "globalRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "hqf6kiTdSGv2LFjA", "ruleCriteria": "MINIMUM", "ruleValue": 0.6065399185820586}, {"ruleAttribute": "6ozRmDD0jJvlfV5O", "ruleCriteria": "EQUAL", "ruleValue": 0.1981056794989916}, {"ruleAttribute": "8F9GLLTG8phc3n4i", "ruleCriteria": "MINIMUM", "ruleValue": 0.018960425495917588}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "IllKlpO2pqiXJF3W", "ruleCriteria": "MINIMUM", "ruleValue": 0.6221879922540167}, {"ruleAttribute": "Lo4b9rIzqYkEpsty", "ruleCriteria": "MINIMUM", "ruleValue": 0.6891080844286342}, {"ruleAttribute": "PLG59e0k5ZtX6wK7", "ruleCriteria": "MINIMUM", "ruleValue": 0.0683813039444775}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "6MbGIVIu8vvwLc7K", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8989606680878668}, {"ruleAttribute": "uVoJXTIMtpgkieDy", "ruleCriteria": "MINIMUM", "ruleValue": 0.9162493198667471}, {"ruleAttribute": "zvtdxdbZUpd6FJtH", "ruleCriteria": "MINIMUM", "ruleValue": 0.40175548093349267}]}], "groupAdminRoleId": "O2KTK9tmmOnYnOpa", "groupMaxMember": 37, "groupMemberRoleId": "b3z7CYLM8IlsHqff", "name": "nrfsGlfPaZKBwa3D"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'CreateGroupConfigurationAdminV1' test.out

#- 4 InitiateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-initiate-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'InitiateGroupConfigurationAdminV1' test.out

#- 5 GetGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-get-group-configuration-admin-v1' \
    'db60ufPpzwj1QGIF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'mlVf4jvapseE9LN9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "bvhOrHflIOd6X3vi", "groupMaxMember": 78, "name": "sApRA6HX3RwrKt2e"}' \
    'cozL0TOg54vCE48L' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "5oLF6M4lNa4JUMSH", "ruleCriteria": "MINIMUM", "ruleValue": 0.08027775664301928}, {"ruleAttribute": "lu01nryEJ0NqoTow", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9990444416956116}, {"ruleAttribute": "Sfo95HgXqKhTPkwf", "ruleCriteria": "MINIMUM", "ruleValue": 0.6470764921890135}]}' \
    'sp0LZ5njN86Hl8kU' \
    'Xzt6bSc6bWvgpVyW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    '9dD1kOmvrAejcq2L' \
    'gkQuaS7RBx3vim02' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'DeleteGroupConfigurationGlobalRuleAdminV1' test.out

#- 10 GetGroupListAdminV1
$PYTHON -m $MODULE 'group-get-group-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetGroupListAdminV1' test.out

#- 11 GetSingleGroupAdminV1
$PYTHON -m $MODULE 'group-get-single-group-admin-v1' \
    'jBOxrZDyvpcLYOWA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    '8NjxOnaEok4nOOCz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'fsflhjbngJOUn18G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'GetGroupMembersListAdminV1' test.out

#- 14 GetMemberRolesListAdminV1
$PYTHON -m $MODULE 'group-get-member-roles-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'GetMemberRolesListAdminV1' test.out

#- 15 CreateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-create-member-role-admin-v1' \
    '{"memberRoleName": "5MlfDTk8aG40Nlnc", "memberRolePermissions": [{"action": 4, "resourceName": "7fH0XrKEDpEY8Vno"}, {"action": 5, "resourceName": "0Am4DZhl0bQxFJ3s"}, {"action": 99, "resourceName": "KXphn50c9tNLDljh"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'Z2jxLRX3z46OCaGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'eMfPlNos4yBRjrER' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "HEonAZR8GmEu0q1p"}' \
    '6QCyY6vSkVFWdsbY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 41, "resourceName": "hxOdcuDXSxSc3aZP"}, {"action": 98, "resourceName": "vwv7K8Asvt1j1Rx5"}, {"action": 49, "resourceName": "hesNWy2NvZ85DDKD"}]}' \
    'AF8KDsBZOuYQJ03B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateMemberRolePermissionAdminV1' test.out

#- 20 GetGroupListPublicV1
$PYTHON -m $MODULE 'group-get-group-list-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'GetGroupListPublicV1' test.out

#- 21 CreateNewGroupPublicV1
$PYTHON -m $MODULE 'group-create-new-group-public-v1' \
    '{"configurationCode": "AHZ7c53q7akMpcmn", "customAttributes": {"nx6RVBrop9v7aZK3": {}, "h65hbN15zfQSfQrt": {}, "fF3TQN0OcNDLr36v": {}}, "groupDescription": "zohZyjMQAg5mPYhr", "groupIcon": "LTyU8OhgfY9JQYGF", "groupMaxMember": 43, "groupName": "bYXEcENx9xZlAcho", "groupRegion": "b44lONDDwMvgI0Hl", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "foflEIByYqeKN0me", "ruleCriteria": "MINIMUM", "ruleValue": 0.48824988359635035}, {"ruleAttribute": "QdbzIVy8alncV7vW", "ruleCriteria": "EQUAL", "ruleValue": 0.5217093803932801}, {"ruleAttribute": "4vZFTYnPkmSu4PWa", "ruleCriteria": "EQUAL", "ruleValue": 0.394253409372755}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "K06MqQBErxgjVByc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.82670863533661}, {"ruleAttribute": "DDhoO05oKqymxLD1", "ruleCriteria": "MINIMUM", "ruleValue": 0.4637552279238978}, {"ruleAttribute": "Xvea7H1m2lJFRZ3Z", "ruleCriteria": "EQUAL", "ruleValue": 0.8165350577562528}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "zMjhTHeh94TSenE5", "ruleCriteria": "EQUAL", "ruleValue": 0.2333337848298469}, {"ruleAttribute": "wi0RY2VN4ZONJREd", "ruleCriteria": "MINIMUM", "ruleValue": 0.8286065377023659}, {"ruleAttribute": "srh90ETtYmGukz3M", "ruleCriteria": "EQUAL", "ruleValue": 0.038992816104582384}]}]}, "groupType": "PRIVATE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'rjcHp6B8Vj7rXFgD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "nDkdZ9bpjb1tdA3Q", "groupIcon": "hjCMW64f4XhIjSoT", "groupName": "B2NMKtezapPr2QEP", "groupRegion": "x3zTxBGtEJIYppuU", "groupType": "PUBLIC"}' \
    'w7Rry0KK5rgAGO0d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'W8rX2MVUGKSZ4GcL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "kt4pK32sJxlZcCTp", "groupIcon": "TdRtCHvuk6B6XTmS", "groupName": "Lyn50sigBVZxiKdV", "groupRegion": "57GvRyd9UuL02Le8", "groupType": "PUBLIC"}' \
    '5y1JsxJNGmyt0SQD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"UDoWBZVGLlkUetzC": {}, "AWc9x1aMjgGim51T": {}, "107XIZRZ7tZdIs0x": {}}}' \
    'f4czdt7zqmSKxOEQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'lVcx6GqsBq8vdhWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'nuYLgpZehK0G2nmy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'uViB9kRTcSQdTnNY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'GeAfYFG3wSkHKufB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'dS3ZOokZB4cXnAXy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'uGz6LlxHv8SwyagY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"vDJ3w3UNgIGj2jZt": {}, "EYT8sIPSE1XXPzyS": {}, "a0sZoFS6xCOWMpyh": {}}}' \
    '9pMsQgb64ELbzDMw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "yo4nIRysQdbufXjY", "ruleCriteria": "EQUAL", "ruleValue": 0.14238191191668814}, {"ruleAttribute": "sTKWjmv67nuHCXWf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7884038851963554}, {"ruleAttribute": "lGVE9sJ4NpUtKp6M", "ruleCriteria": "MAXIMUM", "ruleValue": 0.559443573466175}]}' \
    '6nEwnZhsjwJeGwaP' \
    'SDMZz95OYKiqaZD6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    '3xe5rruJVfLGea0Z' \
    'tlzUcuHAXz0UV31M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'DeleteGroupPredefinedRulePublicV1' test.out

#- 36 LeaveGroupPublicV1
$PYTHON -m $MODULE 'group-leave-group-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'LeaveGroupPublicV1' test.out

#- 37 GetMemberRolesListPublicV1
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'GetMemberRolesListPublicV1' test.out

#- 38 UpdateMemberRolePublicV1
$PYTHON -m $MODULE 'group-update-member-role-public-v1' \
    '{"userId": "fuGaXsAuGsZaSHev"}' \
    'O0TQNEI3kfabxJWW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "SI1ECUo1NPpeFhUz"}' \
    'tXDgB7n4C97uAPP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'DeleteMemberRolePublicV1' test.out

#- 40 GetGroupInvitationRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-invitation-request-public-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'GetGroupInvitationRequestPublicV1' test.out

#- 41 GetUserGroupInformationPublicV1
$PYTHON -m $MODULE 'group-get-user-group-information-public-v1' \
    'PATLpUpxeJlsBJT6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'Hh3OMjAjq2mK8lbS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'EEelxnb5QxWG2HFn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'ZlA6HKWW4fI1IQco' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'BQELcNlZkqTZrKgX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-admin-v2' \
    '{"groupIDs": ["Nwvm4e5GX6H742Oi", "xhtAoKiVm6URT95X", "hnUcvWB28Mpusuhh"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    'DJ5slzgiWZEtyd56' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 AdminGetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-admin-get-user-group-status-information-v2' \
    'LfxnbY97jjYgXchC' \
    'bkXX26uEdCfQaMAQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'AdminGetUserGroupStatusInformationV2' test.out

#- 49 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "uTKfC0I2kNjCMDtD", "customAttributes": {"Mrentgn3DhqciwIe": {}, "ShF9RKb9vvxuJlhX": {}, "bWhbwPwToC6knjVw": {}}, "groupDescription": "VnzaqSfJiQFC2gXo", "groupIcon": "da0kg16yUSpSOAjH", "groupMaxMember": 73, "groupName": "clOdxIwqejxe18rN", "groupRegion": "db8Otq6j1mqUav7k", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "HAQltnSojV4jT65y", "ruleCriteria": "EQUAL", "ruleValue": 0.7359011708755078}, {"ruleAttribute": "4AbGptKaWNvPbpg7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6359822547336533}, {"ruleAttribute": "dsimmkW2miH3xRHA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8654536932320653}]}, {"allowedAction": "joinGroup", "ruleDetail": [{"ruleAttribute": "QxZkaXZ7vmiEd0JP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8588554096594884}, {"ruleAttribute": "Ps3ztUIV0dS6hIH9", "ruleCriteria": "EQUAL", "ruleValue": 0.42279697885178225}, {"ruleAttribute": "MfVXe0GZeMgsRsmH", "ruleCriteria": "EQUAL", "ruleValue": 0.4987657491986487}]}, {"allowedAction": "createGroup", "ruleDetail": [{"ruleAttribute": "rYmkPKTPOlhTtSiZ", "ruleCriteria": "MINIMUM", "ruleValue": 0.06110062052065135}, {"ruleAttribute": "nWIYN2NVL70Iw157", "ruleCriteria": "EQUAL", "ruleValue": 0.6784281719056766}, {"ruleAttribute": "kQD6WmOt6D7ufFVT", "ruleCriteria": "MINIMUM", "ruleValue": 0.6439256676519324}]}]}, "groupType": "PRIVATE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'CreateNewGroupPublicV2' test.out

#- 50 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["vQpfbBke8aEdd36x", "j6wySoltDxsbzxrl", "aKEfkoYjY2o6ouRW"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'GetListGroupByIDsV2' test.out

#- 51 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "9UtNquwC3WgumrIz", "groupIcon": "4NhGztZpr4U4fwQI", "groupName": "iLXgmRasvjO4lj8m", "groupRegion": "3XEwP2b4gd3xOeii", "groupType": "PUBLIC"}' \
    'Jnmssep2xD2NY0kA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdatePutSingleGroupPublicV2' test.out

#- 52 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'BeGs9yxahld1pO0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'DeleteGroupPublicV2' test.out

#- 53 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "yf5PO3COyMvczgEp", "groupIcon": "zZ3FbtxfhcRC7IVY", "groupName": "a6iZ5uFRYNn3SHiW", "groupRegion": "xF0YbuU5ar5qTLWU", "groupType": "PRIVATE"}' \
    '9Rrbk6C2cVWf6ttv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdatePatchSingleGroupPublicV2' test.out

#- 54 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"bU1PO6ApCD2VXidT": {}, "7w0Oc15N8WXBPp17": {}, "PAewqSm5x3B4t7WQ": {}}}' \
    'np8jXZedgt5cyNe2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'UpdateGroupCustomAttributesPublicV2' test.out

#- 55 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    '7HLtwtVOaxgP6Jbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'AcceptGroupInvitationPublicV2' test.out

#- 56 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    't8puMybYGxD9IPmm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'RejectGroupInvitationPublicV2' test.out

#- 57 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    'sLmu3kaPj0O4zd8T' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGroupInviteRequestPublicV2' test.out

#- 58 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    'b7cUNGPTBxiFFCrn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'JoinGroupV2' test.out

#- 59 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    '7djjs69FTFVGUVhv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'GetGroupJoinRequestPublicV2' test.out

#- 60 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    'KhJCmeisql14mUHV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'LeaveGroupPublicV2' test.out

#- 61 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"bMPimNhcZsU3VAdM": {}, "Dcb4qlkiFAamqvZI": {}, "2KwjqPBiWXade41s": {}}}' \
    '3rH34mB2yPlRpWjm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupCustomRulePublicV2' test.out

#- 62 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "HZAAvKTH8MuqIg0C", "ruleCriteria": "MAXIMUM", "ruleValue": 0.864764795947631}, {"ruleAttribute": "cK8QTwiIAvxSvNDl", "ruleCriteria": "EQUAL", "ruleValue": 0.4695928366605717}, {"ruleAttribute": "bi9BzupBsFpYc77G", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9149376951085384}]}' \
    'mEh9tRk8knYSV30l' \
    'nroQehMDli6t9unQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'UpdateGroupPredefinedRulePublicV2' test.out

#- 63 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    'LYXxm09wpGAbpEmD' \
    'Y9vLh3u6EDsUmrV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'DeleteGroupPredefinedRulePublicV2' test.out

#- 64 GetMemberRolesListPublicV2
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'GetMemberRolesListPublicV2' test.out

#- 65 UpdateMemberRolePublicV2
$PYTHON -m $MODULE 'group-update-member-role-public-v2' \
    '{"userId": "kH4OotKwG3UC6XCn"}' \
    'nZxF8CmQr17W65br' \
    '34rBBN9tU6TDm5Gl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'UpdateMemberRolePublicV2' test.out

#- 66 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "oFSKWM1eym5ydC6p"}' \
    '25xCWTqUOYZENJ1Q' \
    'HZQxPRXH7uxBJEEC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'DeleteMemberRolePublicV2' test.out

#- 67 GetUserGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-group-information-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetUserGroupInformationPublicV2' test.out

#- 68 GetMyGroupJoinRequestV2
$PYTHON -m $MODULE 'group-get-my-group-join-request-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'GetMyGroupJoinRequestV2' test.out

#- 69 InviteGroupPublicV2
$PYTHON -m $MODULE 'group-invite-group-public-v2' \
    'QE1li3Bg7Jxc9pUn' \
    'ZmvhidwCkZwqjYLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'InviteGroupPublicV2' test.out

#- 70 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    'TiCO1NDBvQvRPnAz' \
    '4VzW0CpoBCbyJsF5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'CancelInvitationGroupMemberV2' test.out

#- 71 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    'IjF1c0W338HS6CBg' \
    'VRyihYNZ84CVhziX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'AcceptGroupJoinRequestPublicV2' test.out

#- 72 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'V8HwSmvcvcDKF19y' \
    'VRafCjOuSYht83Ad' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'RejectGroupJoinRequestPublicV2' test.out

#- 73 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    'vBaagTiRJ8daGTVX' \
    '3Bb7jlz5IfHgKjI9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'KickGroupMemberPublicV2' test.out

#- 74 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    'mwJSrN8jkIykR2zb' \
    'aI6PD7fEscShnGUG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 74 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
