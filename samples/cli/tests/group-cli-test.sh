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
group-create-group-configuration-admin-v1 '{"configurationCode": "vUjvFrRO", "description": "dSc9k35w", "globalRules": [{"allowedAction": "Pw13agv6", "ruleDetail": [{"ruleAttribute": "TuNz5A1e", "ruleCriteria": "MINIMUM", "ruleValue": 0.49423416373600426}, {"ruleAttribute": "5Kp9V3ig", "ruleCriteria": "MINIMUM", "ruleValue": 0.6902157696068804}, {"ruleAttribute": "WiqLzQGN", "ruleCriteria": "MINIMUM", "ruleValue": 0.06620617693536923}]}, {"allowedAction": "1QylhYz8", "ruleDetail": [{"ruleAttribute": "aGXiqylK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.33185946624051754}, {"ruleAttribute": "tyQDBSEA", "ruleCriteria": "EQUAL", "ruleValue": 0.6932996908460215}, {"ruleAttribute": "63NdC8YL", "ruleCriteria": "EQUAL", "ruleValue": 0.7059710580699303}]}, {"allowedAction": "aJGbUnyh", "ruleDetail": [{"ruleAttribute": "N6OXS5gQ", "ruleCriteria": "EQUAL", "ruleValue": 0.6594838811162199}, {"ruleAttribute": "BBNgFxkA", "ruleCriteria": "MINIMUM", "ruleValue": 0.8339417354050973}, {"ruleAttribute": "ovLmFjJa", "ruleCriteria": "EQUAL", "ruleValue": 0.027414740440546592}]}], "groupAdminRoleId": "N5uacsmk", "groupMaxMember": 71, "groupMemberRoleId": "WZFn1g2I", "name": "hYZzYbTK"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'slPIJsNb' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'wFho0NB7' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "MlAu98SW", "groupMaxMember": 16, "name": "L3yLgR05"}' 'CrMus0Zz' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "3ZWWMujM", "ruleCriteria": "EQUAL", "ruleValue": 0.42340514999546586}, {"ruleAttribute": "S8MMdbwe", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2880420893071275}, {"ruleAttribute": "3R2FjJF7", "ruleCriteria": "MINIMUM", "ruleValue": 0.2125469765410225}]}' 'Sfo2cBQU' 'vTCbAv3t' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'fcnsiUZj' 'i9sJrnA7' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'v7mb6TVN' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 '8Ru1TM8D' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'dSmlmR58' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "WYi8Co0o", "memberRolePermissions": [{"action": 42, "resourceName": "REzkuql5"}, {"action": 6, "resourceName": "6GhBQQVF"}, {"action": 67, "resourceName": "xEz0SZHc"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'efjdhg6S' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 '3v1dC86v' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "8cTY3cPx"}' '23KcTZgq' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 91, "resourceName": "5aoIRMB0"}, {"action": 13, "resourceName": "RZQckdJN"}, {"action": 78, "resourceName": "W07BTycd"}]}' '4H2riDE0' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "DBRohh0O", "customAttributes": {"OX5K7a0W": {}, "XEgrbiNI": {}, "sxDwikXX": {}}, "groupDescription": "XrjNiUN6", "groupIcon": "tCDrsyOz", "groupMaxMember": 25, "groupName": "Zqo5BjOS", "groupRegion": "Vbxu0hc0", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VCni4yUO", "ruleDetail": [{"ruleAttribute": "nu5H7KmF", "ruleCriteria": "MINIMUM", "ruleValue": 0.24602207030263834}, {"ruleAttribute": "K32NO2Fg", "ruleCriteria": "MINIMUM", "ruleValue": 0.7485704790430637}, {"ruleAttribute": "lXrZydwy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6956876355014582}]}, {"allowedAction": "X1OAmGtU", "ruleDetail": [{"ruleAttribute": "d0cG4853", "ruleCriteria": "MINIMUM", "ruleValue": 0.6917945209277451}, {"ruleAttribute": "f2zTLAPA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6213764840118037}, {"ruleAttribute": "i3GKb3jM", "ruleCriteria": "MINIMUM", "ruleValue": 0.05353545538178761}]}, {"allowedAction": "LFOzRAsR", "ruleDetail": [{"ruleAttribute": "okOSZOIg", "ruleCriteria": "EQUAL", "ruleValue": 0.3162713611985055}, {"ruleAttribute": "XWrJraRH", "ruleCriteria": "MINIMUM", "ruleValue": 0.602180712597884}, {"ruleAttribute": "zoX4RuNN", "ruleCriteria": "MINIMUM", "ruleValue": 0.4110583970830365}]}]}, "groupType": "zi9GWqCr"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 '5L3T4034' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "qR8Zu09p", "groupIcon": "xbflZcld", "groupName": "RVysnf2a", "groupRegion": "axYoCcQu", "groupType": "qWn7RCba"}' 'cYXv5iLM' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'Hp9vCrCw' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "0FTjNjBq", "groupIcon": "sCFaqRFU", "groupName": "euPNk2ta", "groupRegion": "9CCq8DLS", "groupType": "bYRyblbO"}' 'Pnmm7d9t' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"kCPpqhvO": {}, "1KTW3lAF": {}, "Gw6GfHKz": {}}}' 'Z7GWA0LB' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'C5wUNacO' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'qjGkaLGQ' --login_with_auth "Bearer foo"
group-join-group-v1 'a8cxYGCE' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'GWVvbDDJ' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'E5zPLGJS' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'ejRIfbFV' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"y8BZCsiK": {}, "rMZ2wBGm": {}, "UiMK6hT7": {}}}' 'Yq3hW9ne' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "4SuZibmj", "ruleCriteria": "MINIMUM", "ruleValue": 0.45266480080965554}, {"ruleAttribute": "NAb7KdYl", "ruleCriteria": "EQUAL", "ruleValue": 0.567013578097966}, {"ruleAttribute": "nQIpau9d", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8238792817134217}]}' 'Dr61mSe3' '3wGGgMjV' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 '9sUV2SPw' 'CCuZntQA' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "phrzjHzH"}' 'Bz7xmrXT' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "r9rI6ial"}' 'UaNXYSYH' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'BIr6CoKc' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'ienZvY8L' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 '1cSxzsmH' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'S7ytS6mr' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 '39Cf6YmA' --login_with_auth "Bearer foo"
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
    '{"configurationCode": "qJ2B7R19", "description": "Fg6MCxcB", "globalRules": [{"allowedAction": "d4MCbB8U", "ruleDetail": [{"ruleAttribute": "5S9qtIi2", "ruleCriteria": "EQUAL", "ruleValue": 0.6189804240967373}, {"ruleAttribute": "K8rtj7Ri", "ruleCriteria": "EQUAL", "ruleValue": 0.5028327340144123}, {"ruleAttribute": "O2F8HnJc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6744789461603191}]}, {"allowedAction": "M9mozMWR", "ruleDetail": [{"ruleAttribute": "5Ggyzv1U", "ruleCriteria": "MINIMUM", "ruleValue": 0.3741143967414303}, {"ruleAttribute": "bnlmR8Rn", "ruleCriteria": "MINIMUM", "ruleValue": 0.2693874134521338}, {"ruleAttribute": "UzH806AH", "ruleCriteria": "MAXIMUM", "ruleValue": 0.017115071045277208}]}, {"allowedAction": "Q9GXAQJF", "ruleDetail": [{"ruleAttribute": "U7IsxUE3", "ruleCriteria": "EQUAL", "ruleValue": 0.13802583595406237}, {"ruleAttribute": "5LqYCir1", "ruleCriteria": "MINIMUM", "ruleValue": 0.3644363963766297}, {"ruleAttribute": "eUB6yuoz", "ruleCriteria": "MINIMUM", "ruleValue": 0.448055620354356}]}], "groupAdminRoleId": "wthqYoVR", "groupMaxMember": 88, "groupMemberRoleId": "WBVTXPG3", "name": "mgCzheZF"}' \
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
    'hV19iaMx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'A55vzQxf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "r3dIb8Os", "groupMaxMember": 17, "name": "YoLm3NeI"}' \
    'VjG97SoG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "QBkCKWTC", "ruleCriteria": "MINIMUM", "ruleValue": 0.42549874600889004}, {"ruleAttribute": "p5PpTQUW", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7987312864736228}, {"ruleAttribute": "qwbmF82E", "ruleCriteria": "EQUAL", "ruleValue": 0.7500775326275194}]}' \
    'q1xS8SUK' \
    'KlSihhbj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'lWaPMVE9' \
    'jZSfREqI' \
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
    'EFhywqSG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'ADxT5BtZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'YYA4DO54' \
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
    '{"memberRoleName": "IH2mo2Vl", "memberRolePermissions": [{"action": 8, "resourceName": "olDaRt5W"}, {"action": 87, "resourceName": "5PNwXduc"}, {"action": 24, "resourceName": "RmnVuLyg"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'V2z0cGq3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'luWN7owG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "KMne9dxZ"}' \
    'torFLbLm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 1, "resourceName": "BRSFKVIL"}, {"action": 74, "resourceName": "VJs6dodv"}, {"action": 1, "resourceName": "ZzVhAQxk"}]}' \
    '2xdMuwVB' \
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
    '{"configurationCode": "ct1Vt2B9", "customAttributes": {"FAJMEwao": {}, "a5ROk5Ig": {}, "qhn0L2Wq": {}}, "groupDescription": "bqMwwZWQ", "groupIcon": "954WoapJ", "groupMaxMember": 84, "groupName": "UeP8vIqD", "groupRegion": "kfTQThO7", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "iYOuRsbq", "ruleDetail": [{"ruleAttribute": "AxSlDeNR", "ruleCriteria": "MINIMUM", "ruleValue": 0.7089421123079332}, {"ruleAttribute": "nxuOsz4m", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3359848180180681}, {"ruleAttribute": "eCaMNC9J", "ruleCriteria": "MINIMUM", "ruleValue": 0.25186186524889453}]}, {"allowedAction": "e8A7eo5F", "ruleDetail": [{"ruleAttribute": "xLZSHAD6", "ruleCriteria": "MINIMUM", "ruleValue": 0.32619401908005485}, {"ruleAttribute": "kl5p5dq7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.026677034330602423}, {"ruleAttribute": "yO247glx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35226151586792653}]}, {"allowedAction": "JI3ZEw3K", "ruleDetail": [{"ruleAttribute": "sn2UBaSA", "ruleCriteria": "MINIMUM", "ruleValue": 0.508257855504082}, {"ruleAttribute": "Ir8DzjVs", "ruleCriteria": "MINIMUM", "ruleValue": 0.9393988791503328}, {"ruleAttribute": "rL9EliOk", "ruleCriteria": "EQUAL", "ruleValue": 0.6219316752624072}]}]}, "groupType": "qTwSVgeK"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'SIqFJdWV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "J8YxUVG2", "groupIcon": "3uNgTSrJ", "groupName": "IhROjIO8", "groupRegion": "L4FoCtAD", "groupType": "QHMK1xVk"}' \
    '8iynxNV3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'VX0oKeHp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "OCcJRba7", "groupIcon": "G4YZxsEU", "groupName": "zjSp6ypa", "groupRegion": "1odYYvdP", "groupType": "vIm2kYE0"}' \
    'MyWwAkX6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"DlQlDWLE": {}, "wlNuMP6Z": {}, "Ita27mIg": {}}}' \
    'rLdRaoHm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'koIxXGqa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    '6SOPwsLr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'ryJrj8i5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'vLoS48uD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'RDyxk4Ix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'AVvWFaws' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"H1sHBIgW": {}, "MN3wYZUn": {}, "jlNymLUn": {}}}' \
    'BOsgcVrm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "TIpsc4tb", "ruleCriteria": "EQUAL", "ruleValue": 0.3526828602758616}, {"ruleAttribute": "aEeIHepX", "ruleCriteria": "MINIMUM", "ruleValue": 0.03662770156033823}, {"ruleAttribute": "scYOYDYY", "ruleCriteria": "EQUAL", "ruleValue": 0.317304964888499}]}' \
    'evqHCeaj' \
    '9OOKpJU1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'V2YIYeKE' \
    'IWUzzgmA' \
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
    '{"userId": "fQcQqnZR"}' \
    'hW47oiYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "VIN5FiMG"}' \
    'KtQs3F91' \
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
    'zdMtvelk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'yyUySPYP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'mKSQij9p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'oqAyrvPx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'YplE7rnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
