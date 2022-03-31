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
    '{"configurationCode": "FtBxyZcD", "description": "XBpGlsQu", "globalRules": [{"allowedAction": "Ju8vMf0I", "ruleDetail": [{"ruleAttribute": "sJkTrd8I", "ruleCriteria": "DcV2zXnT", "ruleValue": 0.5626513595937684}]}], "groupAdminRoleId": "XY1bPqam", "groupMaxMember": 17, "groupMemberRoleId": "Bxx9Cs18", "name": "EY84ekIt"}' \
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
    'qRzHU1oh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 5 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    '570KQBVa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupConfigurationV1'
delete_file $TEMP_FILE

#- 6 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "ewc72krS", "groupMaxMember": 14, "name": "a68n3Yno"}' \
    'zp1C2KmI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupConfigurationAdminV1'
delete_file $TEMP_FILE

#- 7 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "QTuBdNEU", "ruleCriteria": "sxFb8CJ1", "ruleValue": 0.9261416017879885}]}' \
    '7DJZaMSx' \
    'ECbZbygy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupConfigurationGlobalRuleAdminV1'
delete_file $TEMP_FILE

#- 8 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'oarORoeN' \
    'HSb8Rh3k' \
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
    'gs9qqJbn' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleGroupAdminV1'
delete_file $TEMP_FILE

#- 11 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'QsoBgiVp' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupAdminV1'
delete_file $TEMP_FILE

#- 12 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'P8Cm3yvA' \
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
    '{"memberRoleName": "SUoxdxxF", "memberRolePermissions": [{"action": 32, "resourceName": "mAGTJ8IE"}]}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 15 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'dagEtp4w' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 16 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    '29KOu9c1' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 17 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "9R6XDqWH"}' \
    'kkP8npLE' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMemberRoleAdminV1'
delete_file $TEMP_FILE

#- 18 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 73, "resourceName": "MfjiX7jp"}]}' \
    'kVZk3IaQ' \
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
    '{"configurationCode": "YEmqGodO", "customAttributes": {"EGt9gPOj": {}}, "groupDescription": "0c6i0Jkv", "groupIcon": "Ias73ucY", "groupMaxMember": 27, "groupName": "FAJ3DK5T", "groupRegion": "4Eogg0Y3", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "9UoYlpv5", "ruleDetail": [{"ruleAttribute": "bVAgtsDh", "ruleCriteria": "UTDUscbQ", "ruleValue": 0.4674496065247328}]}]}, "groupType": "bTQuPMz2"}' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CreateNewGroupPublicV1'
delete_file $TEMP_FILE

#- 21 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'PTRlkyU8' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 22 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "9ZPOw6zP", "groupIcon": "FJ42cwmz", "groupName": "BBSMNcoA", "groupRegion": "AOjKNjfc", "groupType": "YHm093aY"}' \
    'gBU1sqjy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateSingleGroupV1'
delete_file $TEMP_FILE

#- 23 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'K0XH45Pa' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'DeleteGroupPublicV1'
delete_file $TEMP_FILE

#- 24 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "RSOFQBtu", "groupIcon": "23REZ8hR", "groupName": "VX7LGOvD", "groupRegion": "dYiQS9i7", "groupType": "mV1C91pj"}' \
    'G9gpxL6y' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdatePatchSingleGroupPublicV1'
delete_file $TEMP_FILE

#- 25 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"cTQdvln2": {}}}' \
    'LAuSQWEX' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupCustomAttributesPublicV1'
delete_file $TEMP_FILE

#- 26 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'L6LFE1YH' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 27 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'o9m126ZW' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RejectGroupInvitationPublicV1'
delete_file $TEMP_FILE

#- 28 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'c8hHtWvb' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'JoinGroupV1'
delete_file $TEMP_FILE

#- 29 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'NYqgUqsl' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'CancelGroupJoinRequestV1'
delete_file $TEMP_FILE

#- 30 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'ArFPiHUI' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 31 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'vaCv8kU9' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetGroupMembersListPublicV1'
delete_file $TEMP_FILE

#- 32 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"dBBpdsJL": {}}}' \
    'hsVyExrk' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupCustomRulePublicV1'
delete_file $TEMP_FILE

#- 33 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "xoot0B7W", "ruleCriteria": "OfercZdp", "ruleValue": 0.5953687134744807}]}' \
    'i37Ds7YS' \
    'fExaI3uz' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateGroupPredefinedRulePublicV1'
delete_file $TEMP_FILE

#- 34 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'LteMbFAl' \
    't4hr7HmO' \
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
    '{"userId": "YiBA5ltA"}' \
    'OXmlG6eh' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'UpdateMemberRolePublicV1'
delete_file $TEMP_FILE

#- 38 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "1dTdoTFp"}' \
    'BIcuC1dQ' \
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
    'Y93OJnJ6' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'GetUserGroupInformationPublicV1'
delete_file $TEMP_FILE

#- 41 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'Te9vD8ld' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'InviteGroupPublicV1'
delete_file $TEMP_FILE

#- 42 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'z7Hu8AD7' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'AcceptGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 43 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    '9kdWunvi' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'RejectGroupJoinRequestPublicV1'
delete_file $TEMP_FILE

#- 44 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'zU0q1pHy' \
    --login_with_auth "Bearer foo" \
    >$TEMP_FILE 2>&1
update_status $? 'KickGroupMemberPublicV1'
delete_file $TEMP_FILE

delete_file 'tmp.dat'

exit $FAILED_COUNT