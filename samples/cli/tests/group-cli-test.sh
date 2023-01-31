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
group-create-group-configuration-admin-v1 '{"allowMultiple": false, "configurationCode": "OKcCWWU9", "description": "lFsKpCkN", "globalRules": [{"allowedAction": "3tTfG9ZA", "ruleDetail": [{"ruleAttribute": "88WpjQgv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.44695486906052506}, {"ruleAttribute": "tIiUvMWx", "ruleCriteria": "EQUAL", "ruleValue": 0.7463873687472691}, {"ruleAttribute": "owHXZWKj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8244248318480174}]}, {"allowedAction": "ygbMjsLJ", "ruleDetail": [{"ruleAttribute": "XxuPJH5Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5557355557880578}, {"ruleAttribute": "rbBqfrsf", "ruleCriteria": "MINIMUM", "ruleValue": 0.9629166316987822}, {"ruleAttribute": "4VSiAhOW", "ruleCriteria": "MINIMUM", "ruleValue": 0.6945142051818081}]}, {"allowedAction": "eM4By0iw", "ruleDetail": [{"ruleAttribute": "YSAKPQQ2", "ruleCriteria": "MINIMUM", "ruleValue": 0.4311531259315817}, {"ruleAttribute": "UmmshO21", "ruleCriteria": "MINIMUM", "ruleValue": 0.5595118077460322}, {"ruleAttribute": "VqvaVOQz", "ruleCriteria": "MINIMUM", "ruleValue": 0.6025714482249201}]}], "groupAdminRoleId": "roShayAn", "groupMaxMember": 63, "groupMemberRoleId": "3xuL0vh3", "name": "hgdzV1ss"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'lOfDDyf1' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'k5HkHFXE' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "soyuxzsr", "groupMaxMember": 84, "name": "LdgUMk99"}' 'A5J0jYlv' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "XpLQOBu8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.025853819729652616}, {"ruleAttribute": "eELSxzry", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6400866682270897}, {"ruleAttribute": "2TVzBR6d", "ruleCriteria": "MINIMUM", "ruleValue": 0.8940283797748102}]}' '35bmhasc' 'tZGx9DJ3' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'Rt23x7YT' 'sCxPcmFD' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'Wums7mUj' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'LJpQpmO4' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'jkYrZbYk' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "PWLGGIUI", "memberRolePermissions": [{"action": 85, "resourceName": "j98RnuDH"}, {"action": 29, "resourceName": "jiviqNnY"}, {"action": 49, "resourceName": "bcznI1o6"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'K0dvMgpb' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'igWKMjal' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "QgGp86ox"}' 'XfSOOsl4' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 22, "resourceName": "HUNuiXx1"}, {"action": 40, "resourceName": "PqUCaATT"}, {"action": 22, "resourceName": "WyQ0eVWb"}]}' 'jFaoQdgi' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "QHWSURwO", "customAttributes": {"iTEHkzoD": {}, "cQJMUeTs": {}, "jK9mLEJ3": {}}, "groupDescription": "grw1tErY", "groupIcon": "5hTd1FZp", "groupMaxMember": 84, "groupName": "xVaaqvNB", "groupRegion": "wMO5F79k", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "AixUNtV3", "ruleDetail": [{"ruleAttribute": "lic0ie04", "ruleCriteria": "MINIMUM", "ruleValue": 0.8675716681201232}, {"ruleAttribute": "HpkRdgYu", "ruleCriteria": "MINIMUM", "ruleValue": 0.36912307524714516}, {"ruleAttribute": "FaSL4HqQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.18854481083313945}]}, {"allowedAction": "Fwp0fPAP", "ruleDetail": [{"ruleAttribute": "mgP1bevm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2669420499878816}, {"ruleAttribute": "2tSrRDPj", "ruleCriteria": "EQUAL", "ruleValue": 0.7345474486286178}, {"ruleAttribute": "yUMrDKgf", "ruleCriteria": "MINIMUM", "ruleValue": 0.5177666971296692}]}, {"allowedAction": "WGAs0t5X", "ruleDetail": [{"ruleAttribute": "cozLmpKH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7940936459612825}, {"ruleAttribute": "aye6YeTG", "ruleCriteria": "MINIMUM", "ruleValue": 0.04742942018320484}, {"ruleAttribute": "6Q7vWjcS", "ruleCriteria": "MINIMUM", "ruleValue": 0.1595862130949195}]}]}, "groupType": "a4ND7FzE"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'ImXmW4Y7' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "tGmbQ4fn", "groupIcon": "RSdxagC3", "groupName": "UlpCQOQF", "groupRegion": "I5f6BBaA", "groupType": "AFWD7P0M"}' 'I2gsAjH7' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'bY60r3WQ' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "DO4Ponpc", "groupIcon": "Gex5WyM4", "groupName": "k98pijKb", "groupRegion": "5LDCv9dS", "groupType": "tiexd050"}' 'XNKNWUtX' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"C8VItP5P": {}, "ch2mAWBm": {}, "wwqWAwVR": {}}}' 'xrEYnHGS' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'cT5snIcv' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'QV0sh8oJ' --login_with_auth "Bearer foo"
group-join-group-v1 'NCTWq4xx' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'CJ9gmCkx' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'scWy5Gx6' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 '6KcVcspa' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"NPeEfCxu": {}, "I2A50PaK": {}, "VhpHLZTZ": {}}}' 'oPEbCHye' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "sZNXaMvp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5789652367902192}, {"ruleAttribute": "otS9EyNy", "ruleCriteria": "MINIMUM", "ruleValue": 0.07778267056489985}, {"ruleAttribute": "dadHJx8Z", "ruleCriteria": "EQUAL", "ruleValue": 0.10812268088464161}]}' '8lkM5oel' 'Opd8FDt4' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'qQCW09p1' 'inA5Qta9' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "jZ2drytd"}' 'RGVjQS1Y' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "CJW0txol"}' 'zkvNFv8q' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'chGHEKhN' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'RmDiYIbw' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'P7lJOrBi' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'D2pEDxg9' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'e2LHiyi9' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 'pdchbNyZ' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "lnVhGjLl", "customAttributes": {"nPl2E11g": {}, "C82IaEGz": {}, "zZ8wI7r2": {}}, "groupDescription": "ZiMOX0CH", "groupIcon": "RznEZnOd", "groupMaxMember": 30, "groupName": "Ov99vB5C", "groupRegion": "eCKaZLcU", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "3c5j78rV", "ruleDetail": [{"ruleAttribute": "NOKVtZh1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.19035714254897929}, {"ruleAttribute": "Jx8U0wxs", "ruleCriteria": "EQUAL", "ruleValue": 0.6846503444080004}, {"ruleAttribute": "KlF51yZT", "ruleCriteria": "EQUAL", "ruleValue": 0.0999689338104287}]}, {"allowedAction": "Xw0IoWRF", "ruleDetail": [{"ruleAttribute": "O2i7CHd9", "ruleCriteria": "MINIMUM", "ruleValue": 0.8862162496176748}, {"ruleAttribute": "CcjrytJm", "ruleCriteria": "EQUAL", "ruleValue": 0.09948519272807166}, {"ruleAttribute": "KqbfZqfR", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9965137029051877}]}, {"allowedAction": "RIRLQB3z", "ruleDetail": [{"ruleAttribute": "OZgp8fY0", "ruleCriteria": "MINIMUM", "ruleValue": 0.958571638191354}, {"ruleAttribute": "j4YeFh0c", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7398714064946691}, {"ruleAttribute": "b9jmCkFu", "ruleCriteria": "EQUAL", "ruleValue": 0.5543598931939304}]}]}, "groupType": "Q2w1iLOj"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["g0CBQrJy", "XZlza149", "yrV6cHP0"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "xQZbDVIg", "groupIcon": "3IjMHPls", "groupName": "UFRw5Vjb", "groupRegion": "iCEa5LOf", "groupType": "10eKNz0S"}' 'E3bI3dZD' --login_with_auth "Bearer foo"
group-delete-group-public-v2 'NyaoASNh' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "pCxPcBVh", "groupIcon": "oPaaJGXC", "groupName": "d1OAX0hh", "groupRegion": "q4K1PlVv", "groupType": "Fe4DE0QK"}' 'UtrxabFy' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"lcnezml1": {}, "r0MXxNYb": {}, "zEdOgzIG": {}}}' 'gUDv4ktO' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 'Qhp3Y1ao' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 'rjp4WCkZ' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 'HXAjervi' --login_with_auth "Bearer foo"
group-join-group-v2 'Z44JHJpu' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'frDpvING' --login_with_auth "Bearer foo"
group-leave-group-public-v2 'l6XkZS62' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"okLZ7ocJ": {}, "HNBB3mKU": {}, "DlPDSVYE": {}}}' 'dmwzUdGU' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "pVfbPXBH", "ruleCriteria": "MINIMUM", "ruleValue": 0.35761731684686715}, {"ruleAttribute": "XyyZREcL", "ruleCriteria": "MINIMUM", "ruleValue": 0.611850978107606}, {"ruleAttribute": "ReXC5iAG", "ruleCriteria": "MINIMUM", "ruleValue": 0.1384599542636903}]}' '2k6BCaLY' 'xRuE2PMz' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 'vq81WCws' 'GNhnfeDq' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "l72Ym48h"}' 'p92XGdkN' 'CZZQdXir' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "1Ac9NefT"}' 'Jf3qFHu9' '7sLVVHBl' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 'L8paJ2kv' 'Ho89thZY' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 'CvbEmwcX' 'eDEUn7FC' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 'jmhfHWKo' 'wLrGHDNg' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 'a0AqZInh' 'JcyAfBMd' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'D08d861K' 'DXR8fX5r' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 'k0meeNGX' '0PnxeGt4' --login_with_auth "Bearer foo"
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
echo "1..72"

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
    '{"allowMultiple": true, "configurationCode": "HdKHH2Wr", "description": "BzDVhSsT", "globalRules": [{"allowedAction": "qUQi4bs5", "ruleDetail": [{"ruleAttribute": "prAhG6XT", "ruleCriteria": "EQUAL", "ruleValue": 0.42851966617105774}, {"ruleAttribute": "FU3gEE72", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5290309731971419}, {"ruleAttribute": "7WXs8HPd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.10945591510773034}]}, {"allowedAction": "gcZwu9sA", "ruleDetail": [{"ruleAttribute": "xrCyYmqJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.897940761707725}, {"ruleAttribute": "4WqZ4T8g", "ruleCriteria": "EQUAL", "ruleValue": 0.8039642536603773}, {"ruleAttribute": "QHjAD1Pb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6900079362589149}]}, {"allowedAction": "jAU0ClhO", "ruleDetail": [{"ruleAttribute": "vNEsCo6k", "ruleCriteria": "MINIMUM", "ruleValue": 0.6290499162637183}, {"ruleAttribute": "spEGNxBG", "ruleCriteria": "MINIMUM", "ruleValue": 0.8257986371273084}, {"ruleAttribute": "iqpts8gg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.842602765934618}]}], "groupAdminRoleId": "RV4TRztU", "groupMaxMember": 97, "groupMemberRoleId": "gaPBvT4b", "name": "H0dGp3Of"}' \
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
    'vuArsEqr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    '0QWZBHVn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "ptTq956W", "groupMaxMember": 88, "name": "YZ6pli65"}' \
    'ZE7JBPXs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "YaOAycGh", "ruleCriteria": "MINIMUM", "ruleValue": 0.08539121232884239}, {"ruleAttribute": "6QtKRe9S", "ruleCriteria": "EQUAL", "ruleValue": 0.5769234824882958}, {"ruleAttribute": "dwhmVmut", "ruleCriteria": "EQUAL", "ruleValue": 0.5813544690279762}]}' \
    'YxFnl0m0' \
    'kple9254' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'ge9IncIq' \
    'NxDyTa2h' \
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
    'DhVQLaoS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'kopkOeaJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'r4GYCh2S' \
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
    '{"memberRoleName": "aKOxoLYu", "memberRolePermissions": [{"action": 48, "resourceName": "yb8zPEgC"}, {"action": 81, "resourceName": "YFCmTqSJ"}, {"action": 55, "resourceName": "b4c8FtWy"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'YfDsYFYN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'rM9XNPlC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "mZ1Yiy1H"}' \
    'bJbn8OGQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 17, "resourceName": "KeCaF8fD"}, {"action": 100, "resourceName": "3uL2gvGK"}, {"action": 39, "resourceName": "ee0RnQRz"}]}' \
    'bHnBpT84' \
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
    '{"configurationCode": "7DgpJUxL", "customAttributes": {"Kdg66kEp": {}, "dcPsQ7N1": {}, "y3WCD7k4": {}}, "groupDescription": "8yaSEegC", "groupIcon": "LLvWPSLH", "groupMaxMember": 34, "groupName": "XWE8VxCa", "groupRegion": "y2AcC9an", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "ujgBgmy0", "ruleDetail": [{"ruleAttribute": "L6xXcVTD", "ruleCriteria": "MINIMUM", "ruleValue": 0.5728857717418725}, {"ruleAttribute": "ll1CnZdA", "ruleCriteria": "MINIMUM", "ruleValue": 0.2800543592873621}, {"ruleAttribute": "HVEzCX4A", "ruleCriteria": "EQUAL", "ruleValue": 0.9584732770295321}]}, {"allowedAction": "deEaQvkT", "ruleDetail": [{"ruleAttribute": "7bUMrc04", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6694728960476323}, {"ruleAttribute": "RwrpjKV0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5063165353567166}, {"ruleAttribute": "zqUTQNu5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.49467486124503113}]}, {"allowedAction": "t0m0XAuY", "ruleDetail": [{"ruleAttribute": "73Li6mkP", "ruleCriteria": "EQUAL", "ruleValue": 0.15607221450264552}, {"ruleAttribute": "Gzr1mtS6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.40878450637294295}, {"ruleAttribute": "jABcGXnb", "ruleCriteria": "MINIMUM", "ruleValue": 0.9467615725052227}]}]}, "groupType": "H4sIwPT3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'yjI2gmuN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "QCUjrmBF", "groupIcon": "KX5Cd2xe", "groupName": "zB4rwuUq", "groupRegion": "A0lOEVY9", "groupType": "pkhFw7Pp"}' \
    'V5hHRrbF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'E8717SwS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "IdhwgYg6", "groupIcon": "hQMAb8od", "groupName": "1ebtgkYb", "groupRegion": "nDxZmJW2", "groupType": "AMLn6v4q"}' \
    'HVeHaobk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"sUNiRwFa": {}, "4vl5pPx3": {}, "amiac6zR": {}}}' \
    'madE3Wm6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'KeCRRPZu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'pmLogHUL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    '9msLpW7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'N8hbCpCK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    '0yXFPwmC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'd2ob5qPm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"GMipz822": {}, "LT9dSlfd": {}, "DSYqbRD4": {}}}' \
    'SgWzHeYl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "6CEhAyxI", "ruleCriteria": "EQUAL", "ruleValue": 0.0028521909093685016}, {"ruleAttribute": "dcRwAzqj", "ruleCriteria": "EQUAL", "ruleValue": 0.34012646574416716}, {"ruleAttribute": "YWuZcL2Y", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24992848767414677}]}' \
    'AXbgOrZX' \
    'KtpmDI4w' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'FizMRPgU' \
    'NTlaZuHS' \
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
    '{"userId": "M5eGvqlw"}' \
    '9S3M2TXO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "Q8bF6q5S"}' \
    'zNXBq3nU' \
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
    'mZf6H5Bl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    '4XwI1snx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'u7Azn4zR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'qpp3KLT8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'jmsC4I8i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    'o5vEDzuE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "E9hJeAkV", "customAttributes": {"50RrLxFQ": {}, "yZimbre7": {}, "7QNUWChn": {}}, "groupDescription": "82nulwZF", "groupIcon": "4pItczr9", "groupMaxMember": 25, "groupName": "idUsOaym", "groupRegion": "HNjKqTxp", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "TUdEsOHK", "ruleDetail": [{"ruleAttribute": "cSAxn59u", "ruleCriteria": "MINIMUM", "ruleValue": 0.36507233752180246}, {"ruleAttribute": "D2ar6Iol", "ruleCriteria": "MINIMUM", "ruleValue": 0.73839140580644}, {"ruleAttribute": "5s0s1F8n", "ruleCriteria": "EQUAL", "ruleValue": 0.9936007590844887}]}, {"allowedAction": "QNM3cvJO", "ruleDetail": [{"ruleAttribute": "zY4pMnJv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41933651228923385}, {"ruleAttribute": "zYAtGkpa", "ruleCriteria": "EQUAL", "ruleValue": 0.8576307232344736}, {"ruleAttribute": "PaPDVIiU", "ruleCriteria": "MINIMUM", "ruleValue": 0.17966969475974615}]}, {"allowedAction": "6oqScewo", "ruleDetail": [{"ruleAttribute": "hsqfjOMP", "ruleCriteria": "MINIMUM", "ruleValue": 0.6905033255440992}, {"ruleAttribute": "y7MDCfIu", "ruleCriteria": "EQUAL", "ruleValue": 0.6180960306893793}, {"ruleAttribute": "xUaLt290", "ruleCriteria": "MINIMUM", "ruleValue": 0.33451763327462947}]}]}, "groupType": "Kcot19Oc"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["Jb1GQder", "lRk80Io0", "6h0ChSQH"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "ZhBVUcWw", "groupIcon": "CrAHWDc0", "groupName": "rv6IXxUS", "groupRegion": "K59HYJxD", "groupType": "yesyFrzW"}' \
    'FmmRlyXP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'ebzn42JB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "2pplLEws", "groupIcon": "hVRbK2av", "groupName": "tdkKUel4", "groupRegion": "jMMu34Oe", "groupType": "X0eW6XVC"}' \
    'RH2L2x3s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"AIk4Yb21": {}, "pstsou9X": {}, "GIrxobbT": {}}}' \
    '76Wif6RA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    '1kNn0IFl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    'IAgnsiXr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    'Pq6KSZKn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    'vpJKC6mC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    'H1T7bIvh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    'I9ewHTy2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"SKJtV6lE": {}, "i8bM2Egt": {}, "WSStk29w": {}}}' \
    'cdJ2x8hE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "mJI6WGr3", "ruleCriteria": "MINIMUM", "ruleValue": 0.20579988506219382}, {"ruleAttribute": "AR6iEgde", "ruleCriteria": "MINIMUM", "ruleValue": 0.6657158848975278}, {"ruleAttribute": "oIZkNDUT", "ruleCriteria": "MINIMUM", "ruleValue": 0.22491074534626443}]}' \
    'DIADPcUK' \
    'HHTSJEJw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    'PlNvNHQS' \
    'CqrsDIq0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'DeleteGroupPredefinedRulePublicV2' test.out

#- 62 GetMemberRolesListPublicV2
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'GetMemberRolesListPublicV2' test.out

#- 63 UpdateMemberRolePublicV2
$PYTHON -m $MODULE 'group-update-member-role-public-v2' \
    '{"userId": "fbb1phRz"}' \
    'nMfrG5nR' \
    '1QhkL2GN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "7VHsl4u7"}' \
    'jxowkWby' \
    '6AquuW8D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'DeleteMemberRolePublicV2' test.out

#- 65 GetUserGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-group-information-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'GetUserGroupInformationPublicV2' test.out

#- 66 GetMyGroupJoinRequestV2
$PYTHON -m $MODULE 'group-get-my-group-join-request-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetMyGroupJoinRequestV2' test.out

#- 67 InviteGroupPublicV2
$PYTHON -m $MODULE 'group-invite-group-public-v2' \
    'CPTEpkok' \
    '5QGybn2F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    'hvghbbRR' \
    'SImGvFkR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    'XJKtTyCA' \
    '9AUI2jfR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'lbQb8WwU' \
    '3Yww4er7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    '3k9RARIC' \
    'Q2rSLPjI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    '3LUbasAH' \
    'qQEAS4ol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
