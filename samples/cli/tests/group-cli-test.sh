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
group-create-group-configuration-admin-v1 '{"configurationCode": "ZL6XlmSf", "description": "K1oAiczb", "globalRules": [{"allowedAction": "d4dt3Na1", "ruleDetail": [{"ruleAttribute": "Jjpce15j", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8144794087366146}, {"ruleAttribute": "7E7dlmIU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4366415521985546}, {"ruleAttribute": "gx54mK9b", "ruleCriteria": "MINIMUM", "ruleValue": 0.4956958577066346}]}, {"allowedAction": "h9aYkAwh", "ruleDetail": [{"ruleAttribute": "49gtkHcu", "ruleCriteria": "MINIMUM", "ruleValue": 0.6791049695445198}, {"ruleAttribute": "BvoZUQD3", "ruleCriteria": "EQUAL", "ruleValue": 0.022805300811985063}, {"ruleAttribute": "EQGbZcft", "ruleCriteria": "MINIMUM", "ruleValue": 0.3660338056257908}]}, {"allowedAction": "tcMltIKn", "ruleDetail": [{"ruleAttribute": "D4e9wVlv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4807123003030619}, {"ruleAttribute": "WaaEUjUC", "ruleCriteria": "MINIMUM", "ruleValue": 0.3529083177415451}, {"ruleAttribute": "NjW8KRzG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.34863095941413413}]}], "groupAdminRoleId": "HkdwFQyM", "groupMaxMember": 57, "groupMemberRoleId": "74aRUpze", "name": "fxDkgWJn"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'OpHbpX88' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'bYPOpMle' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "i13rz7tj", "groupMaxMember": 57, "name": "hqlCYj5U"}' 'lt2DtNws' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "18fO1b9r", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1872280535691353}, {"ruleAttribute": "J7A0mDta", "ruleCriteria": "EQUAL", "ruleValue": 0.6739449690344542}, {"ruleAttribute": "Ga1FqgE8", "ruleCriteria": "EQUAL", "ruleValue": 0.7060511718126945}]}' '2aUq2es8' 'bqQYx81p' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'bOzxlAV6' 'ikC07dNu' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'EQLxpphR' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'wNWdlNsM' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'EmiCqMtN' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "vrovspW0", "memberRolePermissions": [{"action": 5, "resourceName": "2iWVgBIA"}, {"action": 52, "resourceName": "Hds3YOcX"}, {"action": 94, "resourceName": "c9cZ2ImL"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'v8HsASZ9' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'tREMgFIM' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "CtdwgpAh"}' 'puweJ3RE' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 61, "resourceName": "izRyiYd2"}, {"action": 32, "resourceName": "sJ0WlfgO"}, {"action": 97, "resourceName": "T4KMfMYQ"}]}' 'nuJ6m60w' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "8NsoMz1s", "customAttributes": {"Pyb1ka5i": {}, "pqdclzR7": {}, "oRQInqZJ": {}}, "groupDescription": "ZzHigGov", "groupIcon": "YQFu9OtO", "groupMaxMember": 4, "groupName": "ZfnXj7N2", "groupRegion": "7gtSzein", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "wfnSxawN", "ruleDetail": [{"ruleAttribute": "B814UjCi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32369778026843155}, {"ruleAttribute": "0tWRjbfr", "ruleCriteria": "EQUAL", "ruleValue": 0.6936603796240708}, {"ruleAttribute": "AUe6XyWH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.774152563124976}]}, {"allowedAction": "cCYpdceJ", "ruleDetail": [{"ruleAttribute": "KszgGf16", "ruleCriteria": "MAXIMUM", "ruleValue": 0.010021541691244695}, {"ruleAttribute": "Z0NbkXcU", "ruleCriteria": "MINIMUM", "ruleValue": 0.8417835481860636}, {"ruleAttribute": "Vtn5mQzb", "ruleCriteria": "MINIMUM", "ruleValue": 0.2404952485105991}]}, {"allowedAction": "1ecY9KIs", "ruleDetail": [{"ruleAttribute": "4yYwbVUI", "ruleCriteria": "MINIMUM", "ruleValue": 0.502543722065686}, {"ruleAttribute": "r3gSrNdc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4482427582251284}, {"ruleAttribute": "XC4UDCaW", "ruleCriteria": "MINIMUM", "ruleValue": 0.28315305665419166}]}]}, "groupType": "IjzWDZv5"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'gC1A1ZNr' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "vmhcMNBA", "groupIcon": "lriR3GdL", "groupName": "Y1eGoOAV", "groupRegion": "t7p2iHND", "groupType": "k4k6bpBE"}' '2E5Q5gBp' --login_with_auth "Bearer foo"
group-delete-group-public-v1 '0n8pSU6l' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "xYy7G7TP", "groupIcon": "ACF8sF8y", "groupName": "j8zex27w", "groupRegion": "gSMhihoo", "groupType": "9LCC49ax"}' 'ySfnFZLK' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"WfjdLMEI": {}, "CHoSneri": {}, "ibsgZ2vo": {}}}' 'y9yYLZHn' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'e35GPyct' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'S3dMDsT3' --login_with_auth "Bearer foo"
group-join-group-v1 'jzekd2iw' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'wvEZX8mO' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 '7yAOd25l' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'Q5jHNsks' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"HJe4q6ON": {}, "GrHj4nGZ": {}, "Gm2UU5fi": {}}}' 'i9kIM9RJ' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "a9wiIKJz", "ruleCriteria": "MINIMUM", "ruleValue": 0.1544312597043087}, {"ruleAttribute": "P6MhgaQN", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6721784391088768}, {"ruleAttribute": "iGz4bYTS", "ruleCriteria": "EQUAL", "ruleValue": 0.7837643762104457}]}' 'raGNqkvp' 'MYQa8KKj' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'N50nwgFY' 'V0CJVMzf' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "KdnbnEiY"}' 'wKOmDz5A' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "R76E8VXF"}' 'AhC5MKm2' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 '62T6MGXX' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'vVf64XWP' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'SJt79pGu' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'ENoN6S2S' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 's6R1eNOz' --login_with_auth "Bearer foo"
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
echo "1..45"

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
    '{"configurationCode": "xNGFg0bu", "description": "JRLaIbga", "globalRules": [{"allowedAction": "WPndeEp9", "ruleDetail": [{"ruleAttribute": "kId12tlt", "ruleCriteria": "EQUAL", "ruleValue": 0.0618469216961659}, {"ruleAttribute": "VPFJ3fmp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.846513133636081}, {"ruleAttribute": "eMDndOSn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7500892935733989}]}, {"allowedAction": "Q7Y9Z3Co", "ruleDetail": [{"ruleAttribute": "dnEkMMvx", "ruleCriteria": "MINIMUM", "ruleValue": 0.3811133516336247}, {"ruleAttribute": "hXc6VwUp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.024977872572227278}, {"ruleAttribute": "nTOIqQg5", "ruleCriteria": "EQUAL", "ruleValue": 0.42117520663122043}]}, {"allowedAction": "lTXpeaOw", "ruleDetail": [{"ruleAttribute": "XJoqHigR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12957394998851668}, {"ruleAttribute": "VELSE6eZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7366522632693414}, {"ruleAttribute": "k8V1fi44", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3880696828606305}]}], "groupAdminRoleId": "M9eS8szo", "groupMaxMember": 16, "groupMemberRoleId": "KHchXdlG", "name": "aJmfqLAj"}' \
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
    'vYaWsDSw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'X82k7eRV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "IUJZOZAC", "groupMaxMember": 85, "name": "4mudWB4P"}' \
    '2XSsL20a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "OCbS9Vfc", "ruleCriteria": "EQUAL", "ruleValue": 0.3569467116952473}, {"ruleAttribute": "0FAHxLfx", "ruleCriteria": "EQUAL", "ruleValue": 0.17983444466234266}, {"ruleAttribute": "o5iEg8TX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9679769937731618}]}' \
    'uJWPcjNJ' \
    'D2mJlyzz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'ZcGXoYgF' \
    'szgoLFOB' \
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
    'IMXDnijL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'Z7CREG6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    '9z5P69Oi' \
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
    '{"memberRoleName": "69sMcinF", "memberRolePermissions": [{"action": 17, "resourceName": "y3EfTnYt"}, {"action": 38, "resourceName": "U64ux9uK"}, {"action": 4, "resourceName": "f0RqcmK8"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'X2OS895V' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'jNWruO6K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "ysle5mXy"}' \
    '4WcR4ZiH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 48, "resourceName": "uI9xswc6"}, {"action": 83, "resourceName": "pyMgEeL2"}, {"action": 86, "resourceName": "ArLQRHED"}]}' \
    'm37RlIGz' \
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
    '{"configurationCode": "sEQ3TsfF", "customAttributes": {"FqvmfeWS": {}, "GMIMXs2V": {}, "j5cOVLLt": {}}, "groupDescription": "MjiizzKL", "groupIcon": "6Qzfgdh8", "groupMaxMember": 18, "groupName": "aNu0nO4P", "groupRegion": "jxStnItB", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "WUWtc4dt", "ruleDetail": [{"ruleAttribute": "Lv5upWHp", "ruleCriteria": "EQUAL", "ruleValue": 0.2686249293865588}, {"ruleAttribute": "79axHxwI", "ruleCriteria": "MINIMUM", "ruleValue": 0.01230796844140769}, {"ruleAttribute": "AnJOIr0T", "ruleCriteria": "MINIMUM", "ruleValue": 0.27063476640118644}]}, {"allowedAction": "rbWnhXaB", "ruleDetail": [{"ruleAttribute": "pqmTJQyq", "ruleCriteria": "EQUAL", "ruleValue": 0.9377972361516503}, {"ruleAttribute": "H85coZQz", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7913417081879588}, {"ruleAttribute": "eFT2E98L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9484640951223144}]}, {"allowedAction": "wXSk8HGB", "ruleDetail": [{"ruleAttribute": "GRWYoK5L", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3865480689822808}, {"ruleAttribute": "QdXIbhjt", "ruleCriteria": "MINIMUM", "ruleValue": 0.9344844623461271}, {"ruleAttribute": "XRkkPaMq", "ruleCriteria": "EQUAL", "ruleValue": 0.5833149401950705}]}]}, "groupType": "kW0xmJoD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'fhlNA9NH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "bOukBnp0", "groupIcon": "BJcAlhME", "groupName": "SJIOXz07", "groupRegion": "3Ykzx9pv", "groupType": "OUsatxxJ"}' \
    '6V7tdTsQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'nuXFje3I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "kSvVoW61", "groupIcon": "YwZrbTDY", "groupName": "AA5MuRtL", "groupRegion": "ZXJauk44", "groupType": "EBxFQEN6"}' \
    '7bC14xUv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"EMhps0JA": {}, "c4d0udF6": {}, "hH2bvxqM": {}}}' \
    'iQw34j2S' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'sHTzg9PD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'zN6FYZVr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'Od3hkHIY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '5nPKg86w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'PgIgsnFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'AWcSAgWZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"jOTSDtGl": {}, "jfWtbU3Q": {}, "ux4TVO1V": {}}}' \
    '5SAok6OP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "XAW44ihM", "ruleCriteria": "EQUAL", "ruleValue": 0.23321813083973875}, {"ruleAttribute": "LuiWKNVC", "ruleCriteria": "EQUAL", "ruleValue": 0.6660834927220454}, {"ruleAttribute": "Chi72x5Y", "ruleCriteria": "MINIMUM", "ruleValue": 0.2517762963798601}]}' \
    '0HwuMzUm' \
    '4M9pwbHy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'mSxhqvms' \
    'eYhRbKwf' \
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
    '{"userId": "E496UhCz"}' \
    '8NObNtU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "XOaGyO9e"}' \
    'uNDA7DHO' \
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
    'ITSrAZXK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'kwVzHyZ8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    '14dVTdy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'JOon9UqN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'XpS7MmZF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
