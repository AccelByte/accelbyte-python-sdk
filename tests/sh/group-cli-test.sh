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

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

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

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

echo "TAP version 13"
echo "1..45"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out

if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

touch "tmp.dat"

#- 2 ListGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-list-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'ListGroupConfigurationAdminV1' test.out

#- 3 CreateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-create-group-configuration-admin-v1' \
    '{"configurationCode": "FtBxyZcD", "description": "XBpGlsQu", "globalRules": [{"allowedAction": "Ju8vMf0I", "ruleDetail": [{"ruleAttribute": "sJkTrd8I", "ruleCriteria": "MINIMUM", "ruleValue": 0.9953468146489199}]}], "groupAdminRoleId": "V2zXnTKj", "groupMaxMember": 99, "groupMemberRoleId": "Y1bPqami", "name": "Bxx9Cs18"}' \
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
    'EY84ekIt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'qRzHU1oh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "570KQBVa", "groupMaxMember": 8, "name": "wc72krSh"}' \
    'a68n3Yno' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "zp1C2KmI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7164070183072041}]}' \
    'BdNEUsxF' \
    'b8CJ17M7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'DJZaMSxE' \
    'CbZbygyo' \
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
    'arORoeNH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'Sb8Rh3kg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    's9qqJbnQ' \
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
    '{"memberRoleName": "soBgiVpP", "memberRolePermissions": [{"action": 56, "resourceName": "m3yvASUo"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'xdxxFqmA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'GTJ8IEda' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "gEtp4w29"}' \
    'KOu9c19R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 98, "resourceName": "DqWHkkP8"}]}' \
    'npLEKMfj' \
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
    '{"configurationCode": "iX7jpkVZ", "customAttributes": {"k3IaQYEm": {}}, "groupDescription": "qGodOEGt", "groupIcon": "9gPOj0c6", "groupMaxMember": 16, "groupName": "0JkvIas7", "groupRegion": "3ucYnFAJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3DK5T4Eo", "ruleDetail": [{"ruleAttribute": "gg0Y39Uo", "ruleCriteria": "EQUAL", "ruleValue": 0.2433158706293611}]}]}, "groupType": "5bVAgtsD"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'hUTDUscb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "QDjbTQuP", "groupIcon": "Mz2PTRlk", "groupName": "yU89ZPOw", "groupRegion": "6zPFJ42c", "groupType": "wmzBBSMN"}' \
    'coAAOjKN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'jfcYHm09' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "3aYgBU1s", "groupIcon": "qjyK0XH4", "groupName": "5PaRSOFQ", "groupRegion": "Btu23REZ", "groupType": "8hRVX7LG"}' \
    'OvDdYiQS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"9i7mV1C9": {}}}' \
    '1pjG9gpx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'L6ycTQdv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'ln2LAuSQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'WEXL6LFE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '1YHo9m12' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    '6ZWc8hHt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'WvbNYqgU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"qslArFPi": {}}}' \
    'HUIvaCv8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "kU9dBBpd", "ruleCriteria": "MINIMUM", "ruleValue": 0.5572810812875463}]}' \
    'hsVyExrk' \
    'xoot0B7W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'OfercZdp' \
    'Mci37Ds7' \
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
    '{"userId": "YSfExaI3"}' \
    'uzLteMbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "Alt4hr7H"}' \
    'mOYiBA5l' \
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
    'tAOXmlG6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'eh1dTdoT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'FpBIcuC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'dQY93OJn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'J6Te9vD8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


rm -f "tmp.dat"

exit $EXIT_CODE