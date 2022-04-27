#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error > test.out 2>&1 << END
group-list-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-create-group-configuration-admin-v1 '{"configurationCode": "FtBxyZcD", "description": "XBpGlsQu", "globalRules": [{"allowedAction": "Ju8vMf0I", "ruleDetail": [{"ruleAttribute": "sJkTrd8I", "ruleCriteria": "MINIMUM", "ruleValue": 0.9953468146489199}]}], "groupAdminRoleId": "V2zXnTKj", "groupMaxMember": 99, "groupMemberRoleId": "Y1bPqami", "name": "Bxx9Cs18"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'EY84ekIt' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'qRzHU1oh' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "570KQBVa", "groupMaxMember": 8, "name": "wc72krSh"}' 'a68n3Yno' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "zp1C2KmI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7164070183072041}]}' 'BdNEUsxF' 'b8CJ17M7' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'DJZaMSxE' 'CbZbygyo' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'arORoeNH' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'Sb8Rh3kg' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 's9qqJbnQ' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "soBgiVpP", "memberRolePermissions": [{"action": 56, "resourceName": "m3yvASUo"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'xdxxFqmA' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'GTJ8IEda' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "gEtp4w29"}' 'KOu9c19R' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 98, "resourceName": "DqWHkkP8"}]}' 'npLEKMfj' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "iX7jpkVZ", "customAttributes": {"k3IaQYEm": {}}, "groupDescription": "qGodOEGt", "groupIcon": "9gPOj0c6", "groupMaxMember": 16, "groupName": "0JkvIas7", "groupRegion": "3ucYnFAJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3DK5T4Eo", "ruleDetail": [{"ruleAttribute": "gg0Y39Uo", "ruleCriteria": "EQUAL", "ruleValue": 0.2433158706293611}]}]}, "groupType": "5bVAgtsD"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'hUTDUscb' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "QDjbTQuP", "groupIcon": "Mz2PTRlk", "groupName": "yU89ZPOw", "groupRegion": "6zPFJ42c", "groupType": "wmzBBSMN"}' 'coAAOjKN' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'jfcYHm09' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "3aYgBU1s", "groupIcon": "qjyK0XH4", "groupName": "5PaRSOFQ", "groupRegion": "Btu23REZ", "groupType": "8hRVX7LG"}' 'OvDdYiQS' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"9i7mV1C9": {}}}' '1pjG9gpx' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'L6ycTQdv' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'ln2LAuSQ' --login_with_auth "Bearer foo"
group-join-group-v1 'WEXL6LFE' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 '1YHo9m12' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 '6ZWc8hHt' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'WvbNYqgU' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"qslArFPi": {}}}' 'HUIvaCv8' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "kU9dBBpd", "ruleCriteria": "MINIMUM", "ruleValue": 0.5572810812875463}]}' 'hsVyExrk' 'xoot0B7W' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'OfercZdp' 'Mci37Ds7' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "YSfExaI3"}' 'uzLteMbF' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "Alt4hr7H"}' 'mOYiBA5l' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'tAOXmlG6' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'eh1dTdoT' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'FpBIcuC1' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'dQY93OJn' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'J6Te9vD8' --login_with_auth "Bearer foo"
END

exit $EXIT_CODE