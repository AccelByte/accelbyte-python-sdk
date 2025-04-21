## Python Extend SDK CLI Sample App Operation Index for Group service.

### Operation `list_group_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-list-group-configuration-admin-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_group_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-create-group-configuration-admin-v1' \
    '{"allowMultiple": false, "configurationCode": "string", "description": "string", "globalRules": [{}], "groupAdminRoleId": "string", "groupMaxMember": 1, "groupMemberRoleId": "string", "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `initiate_group_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-initiate-group-configuration-admin-v1' \
    'string' \
    > result.txt
```

### Operation `get_group_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-configuration-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_configuration_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-configuration-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-configuration-admin-v1' \
    '{"description": "string", "groupMaxMember": 1, "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_configuration_global_rule_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_configuration_global_rule_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-configuration-global-rule-admin-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_list_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-list-admin-v1' \
    'string' \
    --configuration_code 'string' \
    --group_name 'string' \
    --group_region 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_single_group_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-single-group-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_members_list_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-members-list-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `get_member_roles_list_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-member-roles-list-admin-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_member_role_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-create-member-role-admin-v1' \
    '{"memberRoleName": "string", "memberRolePermissions": [{}]}' \
    'string' \
    > result.txt
```

### Operation `get_single_member_role_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-single-member-role-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_member_role_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-member-role-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_member_role_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_member_role_permission_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_list_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-list-public-v1' \
    'string' \
    --group_name 'string' \
    --group_region 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_new_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-create-new-group-public-v1' \
    '{"configurationCode": "string", "customAttributes": {"string": {}}, "groupDescription": "string", "groupIcon": "string", "groupMaxMember": 1, "groupName": "string", "groupRegion": "string", "groupRules": {}, "groupType": "OPEN"}' \
    'string' \
    > result.txt
```

### Operation `get_single_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-single-group-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_single_group_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_patch_single_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_custom_attributes_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `accept_group_invitation_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-accept-group-invitation-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reject_group_invitation_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-reject-group-invitation-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `join_group_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-join-group-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `cancel_group_join_request_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-cancel-group-join-request-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_join_request_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-join-request-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_group_members_list_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-members-list-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `update_group_custom_rule_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_predefined_rule_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_predefined_rule_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-predefined-rule-public-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `leave_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-leave-group-public-v1' \
    'string' \
    > result.txt
```

### Operation `get_member_roles_list_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-member-roles-list-public-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_member_role_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-member-role-public-v1' \
    '{"userId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_member_role_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-member-role-public-v1' \
    '{"userId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_invitation_request_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-invitation-request-public-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_group_information_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-user-group-information-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `invite_group_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-invite-group-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `accept_group_join_request_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-accept-group-join-request-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reject_group_join_request_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-reject-group-join-request-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `kick_group_member_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'group-kick-group-member-public-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_list_group_by_i_ds_admin_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-list-group-by-i-ds-admin-v2' \
    '{"groupIDs": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_user_joined_group_information_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-user-joined-group-information-public-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_user_group_status_information_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-admin-get-user-group-status-information-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_new_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-create-new-group-public-v2' \
    '{"configurationCode": "string", "customAttributes": {"string": {}}, "groupDescription": "string", "groupIcon": "string", "groupMaxMember": 1, "groupName": "string", "groupRegion": "string", "groupRules": {}, "groupType": "OPEN"}' \
    'string' \
    > result.txt
```

### Operation `get_list_group_by_i_ds_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `update_put_single_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-public-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_patch_single_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "string", "groupIcon": "string", "groupName": "string", "groupRegion": "string", "groupType": "OPEN"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_custom_attributes_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `accept_group_invitation_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-accept-group-invitation-public-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reject_group_invitation_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-reject-group-invitation-public-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_invite_request_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-invite-request-public-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `join_group_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-join-group-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_group_join_request_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-group-join-request-public-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `leave_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-leave-group-public-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_custom_rule_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_group_predefined_rule_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{}]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_group_predefined_rule_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-group-predefined-rule-public-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_member_roles_list_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-member-roles-list-public-v2' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_member_role_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-update-member-role-public-v2' \
    '{"userId": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_member_role_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-delete-member-role-public-v2' \
    '{"userId": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_group_information_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-user-group-information-public-v2' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_my_group_join_request_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-my-group-join-request-v2' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `invite_group_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-invite-group-public-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `cancel_invitation_group_member_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-cancel-invitation-group-member-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `accept_group_join_request_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-accept-group-join-request-public-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reject_group_join_request_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-reject-group-join-request-public-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `kick_group_member_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-kick-group-member-public-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_group_status_information_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'group-get-user-group-status-information-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

