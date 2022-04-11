#!/bin/bash

#Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
#This is licensed software from AccelByte Inc, for limitations
#and restrictions contact your company contract manager.

#Meta:
#- random seed: 256
#- template file: python-cli-unit-test.j2

#Instructions:
#- Run the Justice SDK Mock Server first before running this script.

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='../samples/cli'
TEMP_FILE='file.tmp'

OPERATIONS_COUNT=44

FINISHED_COUNT=0
SUCCESS_COUNT=0
FAILED_COUNT=0

export AB_BASE_URL="http://0.0.0.0:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"
export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

get_current_year() { echo $(date +'%Y'); }
get_adult_birthday() { echo "$(( $(get_current_year) - 22))-01-01"; }

get_random_int() { echo $(( $1 + ( RANDOM % (($2 - $1)) ) )); }
get_random_bool() { ( (( (RANDOM % 2) == 1)) && echo "true" ) || ( echo "false" ) }
get_random_element() { declare -a a=("$@"); r=$((RANDOM % ${#a[@]})); echo ${a[$r]}; }

create_file() {
    touch $1
}

delete_file() {
    [ ! -e $1 ] || rm $1
}

update_status() {
    return_code=$1
    operation_name=$2

    FINISHED_COUNT=$(( $FINISHED_COUNT + 1 ))

    if [ $return_code == 0 ]
    then
        SUCCESS_COUNT=$(( $SUCCESS_COUNT + 1 ))
        echo "ok $FINISHED_COUNT $operation_name"
    else
        FAILED_COUNT=$(( $FAILED_COUNT + 1 ))
        echo "not ok $FINISHED_COUNT - $operation_name"
        echo '  ---'
        echo '  error: |-'
        while read line; do
          echo "    $line" | tr '\n' ' '
        echo $line
        done < $TEMP_FILE
    fi
}

create_file 'tmp.dat'

echo 'TAP version 13'
echo "1..$OPERATIONS_COUNT"

#- 1 ListGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-list-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'ListGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 2 CreateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-create-group-configuration-admin-v1' \
    '{"configurationCode": "FtBxyZcD", "description": "XBpGlsQu", "globalRules": [{"allowedAction": "Ju8vMf0I", "ruleDetail": [{"ruleAttribute": "sJkTrd8I", "ruleCriteria": "MINIMUM", "ruleValue": 0.9953468146489199}]}], "groupAdminRoleId": "V2zXnTKj", "groupMaxMember": 99, "groupMemberRoleId": "Y1bPqami", "name": "Bxx9Cs18"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 3 InitiateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-initiate-group-configuration-admin-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'InitiateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 4 GetGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-get-group-configuration-admin-v1' \
    'EY84ekIt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 5 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'qRzHU1oh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupConfigurationV1'
delete_file $TEMP_FILE

#- 6 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "570KQBVa", "groupMaxMember": 8, "name": "wc72krSh"}' \
    'a68n3Yno' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "zp1C2KmI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7164070183072041}]}' \
    'BdNEUsxF' \
    'b8CJ17M7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 8 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'DJZaMSxE' \
    'CbZbygyo' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 9 GetGroupListAdminV1
$PYTHON -m $MODULE 'group-get-group-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupListAdminV1'
delete_file $TEMP_FILE

#- 10 GetSingleGroupAdminV1
$PYTHON -m $MODULE 'group-get-single-group-admin-v1' \
    'arORoeNH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleGroupAdminV1'
delete_file $TEMP_FILE

#- 11 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'Sb8Rh3kg' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupAdminV1'
delete_file $TEMP_FILE

#- 12 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    's9qqJbnQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupMembersListAdminV1'
delete_file $TEMP_FILE

#- 13 GetMemberRolesListAdminV1
$PYTHON -m $MODULE 'group-get-member-roles-list-admin-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetMemberRolesListAdminV1'
delete_file $TEMP_FILE

#- 14 CreateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-create-member-role-admin-v1' \
    '{"memberRoleName": "soBgiVpP", "memberRolePermissions": [{"action": 56, "resourceName": "m3yvASUo"}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 15 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'xdxxFqmA' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 16 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'GTJ8IEda' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 17 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "gEtp4w29"}' \
    'KOu9c19R' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 18 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 98, "resourceName": "DqWHkkP8"}]}' \
    'npLEKMfj' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMemberRolePermissionAdminV1'
delete_file $TEMP_FILE

#- 19 GetGroupListPublicV1
$PYTHON -m $MODULE 'group-get-group-list-public-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupListPublicV1'
delete_file $TEMP_FILE

#- 20 CreateNewGroupPublicV1
$PYTHON -m $MODULE 'group-create-new-group-public-v1' \
    '{"configurationCode": "iX7jpkVZ", "customAttributes": {"k3IaQYEm": {}}, "groupDescription": "qGodOEGt", "groupIcon": "9gPOj0c6", "groupMaxMember": 16, "groupName": "0JkvIas7", "groupRegion": "3ucYnFAJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3DK5T4Eo", "ruleDetail": [{"ruleAttribute": "gg0Y39Uo", "ruleCriteria": "EQUAL", "ruleValue": 0.2433158706293611}]}]}, "groupType": "5bVAgtsD"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateNewGroupPublicV1'
delete_file $TEMP_FILE

#- 21 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'hUTDUscb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 22 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "QDjbTQuP", "groupIcon": "Mz2PTRlk", "groupName": "yU89ZPOw", "groupRegion": "6zPFJ42c", "groupType": "wmzBBSMN"}' \
    'coAAOjKN' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSingleGroupV1'
delete_file $TEMP_FILE

#- 23 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'jfcYHm09' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupPublicV1'
delete_file $TEMP_FILE

#- 24 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "3aYgBU1s", "groupIcon": "qjyK0XH4", "groupName": "5PaRSOFQ", "groupRegion": "Btu23REZ", "groupType": "8hRVX7LG"}' \
    'OvDdYiQS' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePatchSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 25 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"9i7mV1C9": {}}}' \
    '1pjG9gpx' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupCustomAttributesPublicV1'
delete_file $TEMP_FILE

#- 26 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'L6ycTQdv' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 27 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'ln2LAuSQ' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RejectGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 28 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'WEXL6LFE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'JoinGroupV1'
delete_file $TEMP_FILE

#- 29 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '1YHo9m12' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CancelGroupJoinRequestV1'
delete_file $TEMP_FILE

#- 30 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    '6ZWc8hHt' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 31 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'WvbNYqgU' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupMembersListPublicV1'
delete_file $TEMP_FILE

#- 32 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"qslArFPi": {}}}' \
    'HUIvaCv8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupCustomRulePublicV1'
delete_file $TEMP_FILE

#- 33 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "kU9dBBpd", "ruleCriteria": "MINIMUM", "ruleValue": 0.5572810812875463}]}' \
    'hsVyExrk' \
    'xoot0B7W' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 34 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'OfercZdp' \
    'Mci37Ds7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 35 LeaveGroupPublicV1
$PYTHON -m $MODULE 'group-leave-group-public-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'LeaveGroupPublicV1'
delete_file $TEMP_FILE

#- 36 GetMemberRolesListPublicV1
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetMemberRolesListPublicV1'
delete_file $TEMP_FILE

#- 37 UpdateMemberRolePublicV1
$PYTHON -m $MODULE 'group-update-member-role-public-v1' \
    '{"userId": "YSfExaI3"}' \
    'uzLteMbF' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMemberRolePublicV1'
delete_file $TEMP_FILE

#- 38 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "Alt4hr7H"}' \
    'mOYiBA5l' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteMemberRolePublicV1'
delete_file $TEMP_FILE

#- 39 GetGroupInvitationRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-invitation-request-public-v1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupInvitationRequestPublicV1'
delete_file $TEMP_FILE

#- 40 GetUserGroupInformationPublicV1
$PYTHON -m $MODULE 'group-get-user-group-information-public-v1' \
    'tAOXmlG6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserGroupInformationPublicV1'
delete_file $TEMP_FILE

#- 41 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'eh1dTdoT' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'InviteGroupPublicV1'
delete_file $TEMP_FILE

#- 42 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'FpBIcuC1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 43 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'dQY93OJn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RejectGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 44 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'J6Te9vD8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'KickGroupMemberPublicV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT