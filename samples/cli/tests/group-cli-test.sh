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
group-create-group-configuration-admin-v1 '{"allowMultiple": true, "configurationCode": "twYCA9kP", "description": "I6LZrkq6", "globalRules": [{"allowedAction": "Dc09nIW0", "ruleDetail": [{"ruleAttribute": "Oaiw9B0D", "ruleCriteria": "EQUAL", "ruleValue": 0.16151386158785097}, {"ruleAttribute": "tQG0h5JA", "ruleCriteria": "EQUAL", "ruleValue": 0.06294620295851983}, {"ruleAttribute": "c0qh4n8m", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24705726530903982}]}, {"allowedAction": "BJHPtcDs", "ruleDetail": [{"ruleAttribute": "8bBZLCXL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.47659211589930894}, {"ruleAttribute": "BXxyaNoM", "ruleCriteria": "MINIMUM", "ruleValue": 0.019251152430858398}, {"ruleAttribute": "Q1g7qbPn", "ruleCriteria": "EQUAL", "ruleValue": 0.1368774454546442}]}, {"allowedAction": "p6lyzSxw", "ruleDetail": [{"ruleAttribute": "ElFHHdgs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.855634703993088}, {"ruleAttribute": "Jub74CUk", "ruleCriteria": "MINIMUM", "ruleValue": 0.9442208722660982}, {"ruleAttribute": "oDLjWjkY", "ruleCriteria": "MINIMUM", "ruleValue": 0.01130034519468004}]}], "groupAdminRoleId": "XlFcDtgO", "groupMaxMember": 18, "groupMemberRoleId": "Y4YkHs1c", "name": "nz1JSDgY"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 '1TXp38zs' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'CTCrbCbP' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "OyNQkT7N", "groupMaxMember": 44, "name": "4OI18mAQ"}' 'LnzjMf8G' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "Z2WBZqxY", "ruleCriteria": "MINIMUM", "ruleValue": 0.8845518446918641}, {"ruleAttribute": "OQNOs1PX", "ruleCriteria": "EQUAL", "ruleValue": 0.6849401126529491}, {"ruleAttribute": "VKNCWP75", "ruleCriteria": "MINIMUM", "ruleValue": 0.8322652164801618}]}' '7oFgx4c8' 'OumKtPDK' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'JDXn7Z4U' '68su8Xfq' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'lqNiTvB6' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'SdAdIhUD' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'rwoZ5Mec' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "dKi5r6QE", "memberRolePermissions": [{"action": 1, "resourceName": "HuKeb9l3"}, {"action": 35, "resourceName": "6mXhzkzW"}, {"action": 22, "resourceName": "84hddSpH"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 't0P7MIIR' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 '7CkyF6C7' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "duuyZ0Gh"}' 'DogqrhBR' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 7, "resourceName": "N05MYzYi"}, {"action": 75, "resourceName": "PRZYdFLI"}, {"action": 54, "resourceName": "v7IPrDQQ"}]}' 'Rgat0Sev' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "kLGMS0ly", "customAttributes": {"uI9a2I9u": {}, "6Vpbsx5w": {}, "8hqUI06U": {}}, "groupDescription": "pOXGSLmC", "groupIcon": "VuHOPlLl", "groupMaxMember": 20, "groupName": "eabntBSx", "groupRegion": "TeIv53HG", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "CiljvjKo", "ruleDetail": [{"ruleAttribute": "yD6SCwGr", "ruleCriteria": "EQUAL", "ruleValue": 0.5020230788204871}, {"ruleAttribute": "jkQsfCaT", "ruleCriteria": "EQUAL", "ruleValue": 0.08835878454411339}, {"ruleAttribute": "8TgoNm03", "ruleCriteria": "MINIMUM", "ruleValue": 0.2924485142118628}]}, {"allowedAction": "9Q0mPVo3", "ruleDetail": [{"ruleAttribute": "twu0MesT", "ruleCriteria": "MAXIMUM", "ruleValue": 0.892936409155861}, {"ruleAttribute": "lMjGSWN2", "ruleCriteria": "EQUAL", "ruleValue": 0.21831000598272376}, {"ruleAttribute": "a7qxNeIx", "ruleCriteria": "MINIMUM", "ruleValue": 0.810248221485788}]}, {"allowedAction": "akUCTqGk", "ruleDetail": [{"ruleAttribute": "E7wcWfDs", "ruleCriteria": "EQUAL", "ruleValue": 0.8195962476973889}, {"ruleAttribute": "SYWytLPz", "ruleCriteria": "EQUAL", "ruleValue": 0.3983852105478587}, {"ruleAttribute": "YoNRKd3I", "ruleCriteria": "MINIMUM", "ruleValue": 0.0890212574771383}]}]}, "groupType": "PUBLIC"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'TAQ6iiPl' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "SC2uE4o5", "groupIcon": "Vwdo3feP", "groupName": "qIJA8IHt", "groupRegion": "rkmu0hpD", "groupType": "PRIVATE"}' '9HrNQy4u' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'ZAAiE0mi' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "t9RGCCHY", "groupIcon": "zUOcEdsc", "groupName": "KHPEqgA8", "groupRegion": "yu7Vk6Jt", "groupType": "OPEN"}' 'Ymos9Jcd' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"os4fYcTV": {}, "U6RBt0zY": {}, "oMcHyCUE": {}}}' 'XlAvxJMd' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'alwSyliW' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'MNW5NyLu' --login_with_auth "Bearer foo"
group-join-group-v1 '0M3VHh2E' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'I8JlDbPW' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'bQ6Q9lNm' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'qRBaAkLn' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"vxkT1X68": {}, "cmDc3fxU": {}, "8MyKrQpM": {}}}' '4hkkK6KK' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "XNB3Gv0I", "ruleCriteria": "MAXIMUM", "ruleValue": 0.0710297838402244}, {"ruleAttribute": "CnaLpUKp", "ruleCriteria": "EQUAL", "ruleValue": 0.9086710364498819}, {"ruleAttribute": "YUDjasWI", "ruleCriteria": "MINIMUM", "ruleValue": 0.8873298969695425}]}' 'bMrXsDr6' 'kILsSSyD' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'dmykmoPY' 'gc2L4jk4' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "Lo0LSP0p"}' 'f4IxjUkl' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "535X3ate"}' 'EKDpADz1' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'x3poD3Qg' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'b3boLQQ1' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'MzH7Qm8b' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'wbmXgdAP' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'h1EThG96' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-admin-v2 '{"groupIDs": ["gAFKK2WD", "gCcxvONZ", "m3EeERmD"]}' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 'nyeFoF7V' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "SZ6pf3vn", "customAttributes": {"eSD2Tb3g": {}, "7mSQUhAE": {}, "trmjqU6Y": {}}, "groupDescription": "E3p4lSck", "groupIcon": "0ZHn5GI3", "groupMaxMember": 30, "groupName": "YBHqaTHe", "groupRegion": "KtW18iGe", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Ulc9d9so", "ruleDetail": [{"ruleAttribute": "gWa24CKN", "ruleCriteria": "MINIMUM", "ruleValue": 0.3512818876823638}, {"ruleAttribute": "IYhGGSyE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9173468001419101}, {"ruleAttribute": "ZJJ42d3P", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12826518014504917}]}, {"allowedAction": "go5QB65l", "ruleDetail": [{"ruleAttribute": "SAiYnNjk", "ruleCriteria": "EQUAL", "ruleValue": 0.2648153515549724}, {"ruleAttribute": "Mrj3oZk0", "ruleCriteria": "MINIMUM", "ruleValue": 0.6895613767604295}, {"ruleAttribute": "XcKMDYDD", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3925999294329018}]}, {"allowedAction": "rOMlNFSr", "ruleDetail": [{"ruleAttribute": "UEirnjX9", "ruleCriteria": "EQUAL", "ruleValue": 0.7241213431663898}, {"ruleAttribute": "aiGVkydw", "ruleCriteria": "MINIMUM", "ruleValue": 0.7743228230381474}, {"ruleAttribute": "QG26yUZN", "ruleCriteria": "EQUAL", "ruleValue": 0.11665868557485892}]}]}, "groupType": "PRIVATE"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["BcvrbYCw", "ZtxFHyPL", "tI8ilbyD"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "PUIj88ce", "groupIcon": "kdqCt81P", "groupName": "1ktfIovm", "groupRegion": "v9gsR5cJ", "groupType": "OPEN"}' 'KOsb392k' --login_with_auth "Bearer foo"
group-delete-group-public-v2 '6YmJFfRB' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "yjlBiuFM", "groupIcon": "3FIoVk8T", "groupName": "3GpAnkCm", "groupRegion": "BUqg2SCn", "groupType": "PRIVATE"}' 's4Yw20DO' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"qOBSC2DK": {}, "HRuPMMWH": {}, "8Yb33T5U": {}}}' 'BJCjfcnL' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 'RfxeCSz9' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 'WEi8Kllo' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 'eH0JT1yd' --login_with_auth "Bearer foo"
group-join-group-v2 'uat2vQR3' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'biBfsu4j' --login_with_auth "Bearer foo"
group-leave-group-public-v2 'msRE2w1y' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"EkLgh3tI": {}, "Yt4SqYUT": {}, "LDx9gIiD": {}}}' 'andpGT2t' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "24aOMh5e", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5630715928469491}, {"ruleAttribute": "4EFZKBcY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.01381691884874825}, {"ruleAttribute": "3xreNDUW", "ruleCriteria": "EQUAL", "ruleValue": 0.19967201441659777}]}' 'x40NLRc6' 'm8heKnWh' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 'zfe2Nube' 'oKFeIaFQ' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "CYoDPICp"}' 'nduEEQlU' 'LdJz4mnR' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "BkMNxvvK"}' 'gAT8mJrY' 'q6hRkloq' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 'xM3gpwxc' 'fMy9Xzjj' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 'I5YbsKoA' 'DkzJEN2V' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 'Hzih3bit' '0VWn3CO3' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 '9PXDNxtX' 'geO3FgkX' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'hjDzaQY3' 'snn2ZkP7' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 'cFdP43e5' 'dC9XIBud' --login_with_auth "Bearer foo"
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
echo "1..73"

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
    '{"allowMultiple": false, "configurationCode": "VhyaKwwr", "description": "AP2aMlu7", "globalRules": [{"allowedAction": "WtjCtoYe", "ruleDetail": [{"ruleAttribute": "tOO847g8", "ruleCriteria": "MINIMUM", "ruleValue": 0.22833713388323207}, {"ruleAttribute": "Mm5cTtFW", "ruleCriteria": "EQUAL", "ruleValue": 0.836257459515951}, {"ruleAttribute": "3c46IjGa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8065740034146035}]}, {"allowedAction": "vYmmDg7V", "ruleDetail": [{"ruleAttribute": "YPXIuvUY", "ruleCriteria": "MINIMUM", "ruleValue": 0.8361658590639115}, {"ruleAttribute": "NereSvf9", "ruleCriteria": "MINIMUM", "ruleValue": 0.9942500685900362}, {"ruleAttribute": "9mCEHThU", "ruleCriteria": "MINIMUM", "ruleValue": 0.4641541255741708}]}, {"allowedAction": "MNFIurjh", "ruleDetail": [{"ruleAttribute": "2imdb4rb", "ruleCriteria": "EQUAL", "ruleValue": 0.16434214115653878}, {"ruleAttribute": "AYfJB8AT", "ruleCriteria": "EQUAL", "ruleValue": 0.32113046654539534}, {"ruleAttribute": "4Tv207Y2", "ruleCriteria": "MINIMUM", "ruleValue": 0.5798528602242713}]}], "groupAdminRoleId": "iwv1qlYB", "groupMaxMember": 90, "groupMemberRoleId": "OOlXVv8Z", "name": "GF7uYnGz"}' \
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
    'pipNDigN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'Jma1Mbqq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "ZtfNWql4", "groupMaxMember": 27, "name": "B4lkKB4E"}' \
    'YOkQ1jMD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "3cym8xIf", "ruleCriteria": "EQUAL", "ruleValue": 0.2254337493761921}, {"ruleAttribute": "0jJLHC9L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6021993392702211}, {"ruleAttribute": "x0KOww3H", "ruleCriteria": "MINIMUM", "ruleValue": 0.321143578431345}]}' \
    'ohLtl9Zu' \
    'hytm5UDr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'T6QXCs5S' \
    'PBbRPZTF' \
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
    '6oQAXVG7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'tnsZg5Qg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'XjvyGJPN' \
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
    '{"memberRoleName": "4eXbJE5V", "memberRolePermissions": [{"action": 38, "resourceName": "v6ecnEev"}, {"action": 5, "resourceName": "IXimBJeh"}, {"action": 50, "resourceName": "enmPZnGB"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    't4P7Wnbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'SJtjX7Zs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "hZyZl5x4"}' \
    'bRXBHUTr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 61, "resourceName": "q5xrgxSm"}, {"action": 51, "resourceName": "cYu3dpCR"}, {"action": 83, "resourceName": "W5DQyj4b"}]}' \
    'j5Ro2oga' \
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
    '{"configurationCode": "Kt2ujQSa", "customAttributes": {"3Zdb65UX": {}, "my0Zp6iI": {}, "aTIKUkmk": {}}, "groupDescription": "k9QM0NBM", "groupIcon": "A9ORxpzw", "groupMaxMember": 77, "groupName": "V3bu1bNC", "groupRegion": "tX7W40V6", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "Do5sYadC", "ruleDetail": [{"ruleAttribute": "CFrHHC3D", "ruleCriteria": "EQUAL", "ruleValue": 0.5657856750230359}, {"ruleAttribute": "zPyrVEiO", "ruleCriteria": "MINIMUM", "ruleValue": 0.504190280375971}, {"ruleAttribute": "viMarv8m", "ruleCriteria": "EQUAL", "ruleValue": 0.12128633322004834}]}, {"allowedAction": "MRWLVd3D", "ruleDetail": [{"ruleAttribute": "lhLuIpom", "ruleCriteria": "MINIMUM", "ruleValue": 0.519685663070588}, {"ruleAttribute": "EdlwuUcc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19818228428524354}, {"ruleAttribute": "X2tJoARt", "ruleCriteria": "EQUAL", "ruleValue": 0.4485731796952189}]}, {"allowedAction": "vepnDCjg", "ruleDetail": [{"ruleAttribute": "yJlXe36m", "ruleCriteria": "EQUAL", "ruleValue": 0.21497187605094004}, {"ruleAttribute": "x4V709xb", "ruleCriteria": "EQUAL", "ruleValue": 0.06600541267458315}, {"ruleAttribute": "9nzJ6fH2", "ruleCriteria": "EQUAL", "ruleValue": 0.7276258409656189}]}]}, "groupType": "PUBLIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    '05tVg8Jq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "U0jZpjvs", "groupIcon": "ugAOS7u8", "groupName": "RiWyerCS", "groupRegion": "a8SRgwsA", "groupType": "OPEN"}' \
    'rIxsB0NR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'sB1fPqqR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "Rulpqpym", "groupIcon": "DkQhtrHW", "groupName": "wRVnwVBO", "groupRegion": "qOHi8pWG", "groupType": "OPEN"}' \
    'AHjapIkY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"9Rf4wP57": {}, "dBZNR88Y": {}, "bCtmKy8M": {}}}' \
    '9zVrjfGX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'ZnqAQUoY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    '1GjlIIk0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'iKoTTS1j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '02o7JjTX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'AQN0qdsk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'dQV0TqI8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"EFnmDbxI": {}, "xi4YKlON": {}, "k2Q5Y4Jv": {}}}' \
    'aizwiila' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "tuUjjt9l", "ruleCriteria": "MINIMUM", "ruleValue": 0.6380566851428628}, {"ruleAttribute": "qF7Bl0Lc", "ruleCriteria": "EQUAL", "ruleValue": 0.9895138377016555}, {"ruleAttribute": "EIIlGcHB", "ruleCriteria": "MAXIMUM", "ruleValue": 0.456432552092487}]}' \
    'fR3ncDlw' \
    'i3v3MFFJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    '1KesKoEL' \
    'CpobBEG8' \
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
    '{"userId": "X645xpdX"}' \
    'pai0rYaT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "5hOPjaf3"}' \
    'H0tYighU' \
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
    '0VUfcYHJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'bBfAKSiP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'W3VgsZXi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'R1DJ7HVW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'qMkNSawQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-admin-v2' \
    '{"groupIDs": ["UWDFJvJB", "Wic7UkBe", "IXuqDuAX"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    'I66bQ71w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "0deoV9Lx", "customAttributes": {"5RDA1l2X": {}, "crciYNEz": {}, "vSZIPkhS": {}}, "groupDescription": "gORcz5S5", "groupIcon": "BvmgBLxh", "groupMaxMember": 76, "groupName": "ijFnE3Ta", "groupRegion": "m69qSZ7P", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "C6f6QkmZ", "ruleDetail": [{"ruleAttribute": "XElW9YfR", "ruleCriteria": "MINIMUM", "ruleValue": 0.574726851993626}, {"ruleAttribute": "u3pDMUAe", "ruleCriteria": "EQUAL", "ruleValue": 0.04352036736047504}, {"ruleAttribute": "zz0QKFlA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20449603743658373}]}, {"allowedAction": "VLu4AOec", "ruleDetail": [{"ruleAttribute": "0z8eBeeo", "ruleCriteria": "EQUAL", "ruleValue": 0.6472079399897399}, {"ruleAttribute": "fnwIdlNa", "ruleCriteria": "EQUAL", "ruleValue": 0.6539240589927269}, {"ruleAttribute": "JhtafxMS", "ruleCriteria": "MINIMUM", "ruleValue": 0.5915159894445038}]}, {"allowedAction": "HzGlLKWU", "ruleDetail": [{"ruleAttribute": "tDQs61OQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07771177024149467}, {"ruleAttribute": "xL4fZvWt", "ruleCriteria": "MINIMUM", "ruleValue": 0.13646342958243785}, {"ruleAttribute": "iPDGQhNP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.17924163011332062}]}]}, "groupType": "PUBLIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["iJCf2XJV", "rlzqQls1", "ozhLVA3k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "E8jKvgat", "groupIcon": "OEBM70Td", "groupName": "lNBJYOmp", "groupRegion": "u1VCarzB", "groupType": "PRIVATE"}' \
    '6Sw1I98j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'eZQ7hfxn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "hLd3Knak", "groupIcon": "noed9DHh", "groupName": "LOqQGhCU", "groupRegion": "r6iTrjyE", "groupType": "OPEN"}' \
    'iFc5HTHQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"IoVsGo7d": {}, "wV9DBqFK": {}, "HQkETJyT": {}}}' \
    'lUrwDTno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    'ujQD4IEi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    'H9Z5qXn3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    'aoRtlqOE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    'CohViHA5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    'CzgFSy8X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    '1A3PrIfa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"pq5AAeMe": {}, "4L3mDWOR": {}, "BVXTIIJM": {}}}' \
    '9XsYIIZx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "iXNMR9Bg", "ruleCriteria": "EQUAL", "ruleValue": 0.9145367277956933}, {"ruleAttribute": "AvQkqsGn", "ruleCriteria": "EQUAL", "ruleValue": 0.39213817859103905}, {"ruleAttribute": "oTsMWPAx", "ruleCriteria": "EQUAL", "ruleValue": 0.62446282782728}]}' \
    'kawaGpAy' \
    'rIwMif3B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    'OdkocVTd' \
    '4BxqGWV6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
$PYTHON -m $MODULE 'group-update-member-role-public-v2' \
    '{"userId": "mTJ0sQs6"}' \
    'XNbjvqhn' \
    'UVLWu8ol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "KdxL6ozR"}' \
    'mDD0jJvl' \
    'fV5OemPY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-group-information-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
$PYTHON -m $MODULE 'group-get-my-group-join-request-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
$PYTHON -m $MODULE 'group-invite-group-public-v2' \
    'dYT7DROC' \
    'jtuzFMbA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    'G9YI89hm' \
    'guB8FOTj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    'MLo4b9rI' \
    'zqYkEpst' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'yVTBcrM8' \
    'rG0rH0zc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    'swwVeMK6' \
    'MbGIVIu8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    'vvwLc7KY' \
    '3uVoJXTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
