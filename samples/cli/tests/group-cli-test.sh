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
group-create-group-configuration-admin-v1 '{"configurationCode": "xbjxrXCR", "description": "44FdX85U", "globalRules": [{"allowedAction": "1OdJCzkY", "ruleDetail": [{"ruleAttribute": "4Yi9ClvR", "ruleCriteria": "MINIMUM", "ruleValue": 0.10553823589888689}, {"ruleAttribute": "wTXXLq3y", "ruleCriteria": "MINIMUM", "ruleValue": 0.10168420356409547}, {"ruleAttribute": "JswW3sVI", "ruleCriteria": "EQUAL", "ruleValue": 0.5464765244562219}]}, {"allowedAction": "5JnG7kab", "ruleDetail": [{"ruleAttribute": "2mIr9GZJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07867308785997107}, {"ruleAttribute": "CTozlFop", "ruleCriteria": "EQUAL", "ruleValue": 0.3796576633332618}, {"ruleAttribute": "JfknqCyv", "ruleCriteria": "MINIMUM", "ruleValue": 0.8538148902278258}]}, {"allowedAction": "yNT7lauv", "ruleDetail": [{"ruleAttribute": "FszdSggL", "ruleCriteria": "EQUAL", "ruleValue": 0.3265994281013549}, {"ruleAttribute": "lEMUhdGl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2923169028709758}, {"ruleAttribute": "axcq5dUT", "ruleCriteria": "EQUAL", "ruleValue": 0.5831848262338264}]}], "groupAdminRoleId": "ocFP8nhx", "groupMaxMember": 93, "groupMemberRoleId": "D0FF2fNE", "name": "AO7PwmdY"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'zKXAPYGn' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'fsWILym5' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "m656dIYp", "groupMaxMember": 79, "name": "C6K1YW2s"}' 'umUuelBP' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "4LsWrPuZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06540602852086841}, {"ruleAttribute": "IZX5iqJw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5965507522532593}, {"ruleAttribute": "YpcHQCLp", "ruleCriteria": "MAXIMUM", "ruleValue": 0.36310451552040035}]}' 'AhIUENbp' 'teeYx8xQ' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 '80z5TnOs' '75FR3XAr' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'v7Q883qb' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'KKPHH5Nr' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'm8rviHe8' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "Do28V7CS", "memberRolePermissions": [{"action": 67, "resourceName": "Ydk9vJ1y"}, {"action": 70, "resourceName": "zSpzkMHM"}, {"action": 4, "resourceName": "MlK6GMYq"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'yOTlM4tz' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'z0bM1O57' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "Um6zEhOn"}' '3pcHE6QW' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 25, "resourceName": "eQVBR7gF"}, {"action": 76, "resourceName": "rJM1w34U"}, {"action": 57, "resourceName": "POmUlKqn"}]}' 'dQYXgKRO' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "aYO12KSp", "customAttributes": {"350VMOGa": {}, "T0lRWWNk": {}, "o9NdNUsZ": {}}, "groupDescription": "Z4szluD2", "groupIcon": "2Dl3gmjt", "groupMaxMember": 30, "groupName": "ieD5fuwe", "groupRegion": "m0CXLQnD", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "rypm7IDV", "ruleDetail": [{"ruleAttribute": "xWwGYp03", "ruleCriteria": "EQUAL", "ruleValue": 0.4323577110613913}, {"ruleAttribute": "glubkblh", "ruleCriteria": "EQUAL", "ruleValue": 0.4496375531476797}, {"ruleAttribute": "fsCdhmR4", "ruleCriteria": "EQUAL", "ruleValue": 0.5839057207426633}]}, {"allowedAction": "a22iaEs2", "ruleDetail": [{"ruleAttribute": "4hLLvKia", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5066071316791042}, {"ruleAttribute": "PM55PaJx", "ruleCriteria": "EQUAL", "ruleValue": 0.7080133436294607}, {"ruleAttribute": "hSfnrXao", "ruleCriteria": "EQUAL", "ruleValue": 0.7778484433426972}]}, {"allowedAction": "ayo9dif0", "ruleDetail": [{"ruleAttribute": "pDDutNfd", "ruleCriteria": "MINIMUM", "ruleValue": 0.8207693956902133}, {"ruleAttribute": "uzAJJLOC", "ruleCriteria": "MINIMUM", "ruleValue": 0.8352317509742505}, {"ruleAttribute": "ht2SvHJo", "ruleCriteria": "MINIMUM", "ruleValue": 0.524436412243155}]}]}, "groupType": "KtbMljNI"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'gJz2IGXI' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "HkfBi50y", "groupIcon": "DtlrCCHx", "groupName": "N5QlTkCr", "groupRegion": "qKAqvfXA", "groupType": "kl3aHuZ0"}' '5DmqZ0ul' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'tEYwufyD' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "MrKd39bx", "groupIcon": "Lu3DJ85w", "groupName": "APJ9A9Ms", "groupRegion": "xxS6t6DP", "groupType": "nYgQzo5B"}' 'Lm2AupJO' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"hor7NzNJ": {}, "8C8WPxp9": {}, "JhzSahcB": {}}}' '5gk1sMvl' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'iYRAyLzE' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'N9FV7Y1x' --login_with_auth "Bearer foo"
group-join-group-v1 'Smy6xbAA' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 '9hvunn4r' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'X4DBAEBF' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'F34Ye5RZ' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"OC4o5nD9": {}, "u2cvR25F": {}, "OmvPmAoF": {}}}' 'TLktT2zW' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "ETkSCKkG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3342700394386683}, {"ruleAttribute": "juL6cvHi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.35153021192776923}, {"ruleAttribute": "c31hf28Q", "ruleCriteria": "MINIMUM", "ruleValue": 0.9597500364823747}]}' 'gqra9mLf' 'yh8IH8Fl' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 '6z5aj0GA' 'P4UZdGGG' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "UBx1CibL"}' 'HG5USVtU' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "UOEnMYLO"}' 'R1mJKv5l' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'nHgHTz9C' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'qUXJjIZY' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'oyeeXmtl' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'RHRzzT63' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'nLVQJehH' --login_with_auth "Bearer foo"
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
    '{"configurationCode": "odt58MxQ", "description": "jJpUWGUi", "globalRules": [{"allowedAction": "H2TMXS3O", "ruleDetail": [{"ruleAttribute": "gTwfRyY6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2678942906709848}, {"ruleAttribute": "6rgIYiMa", "ruleCriteria": "EQUAL", "ruleValue": 0.6569037226305742}, {"ruleAttribute": "ALrig4VQ", "ruleCriteria": "EQUAL", "ruleValue": 0.037498851901131225}]}, {"allowedAction": "u7xLM91L", "ruleDetail": [{"ruleAttribute": "Bo58I3D9", "ruleCriteria": "EQUAL", "ruleValue": 0.23042100745781713}, {"ruleAttribute": "fjEaYHLv", "ruleCriteria": "EQUAL", "ruleValue": 0.8706019484651656}, {"ruleAttribute": "mleq595K", "ruleCriteria": "MINIMUM", "ruleValue": 0.0789555951803027}]}, {"allowedAction": "5tLVgsLn", "ruleDetail": [{"ruleAttribute": "uf5k6ngy", "ruleCriteria": "MINIMUM", "ruleValue": 0.5546764385573105}, {"ruleAttribute": "2fTKMzax", "ruleCriteria": "EQUAL", "ruleValue": 0.6452212819041591}, {"ruleAttribute": "9yaRKvyP", "ruleCriteria": "EQUAL", "ruleValue": 0.7732519496978293}]}], "groupAdminRoleId": "8290euRN", "groupMaxMember": 64, "groupMemberRoleId": "iGF09Cdn", "name": "fi4xVRux"}' \
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
    'BcbhjCQi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'PfiWHeLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "le4updHk", "groupMaxMember": 74, "name": "lU5wqiM6"}' \
    'Go383Tc8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "VMXqQwej", "ruleCriteria": "MINIMUM", "ruleValue": 0.04921024890301151}, {"ruleAttribute": "ZgzOyMbT", "ruleCriteria": "EQUAL", "ruleValue": 0.051654193136624116}, {"ruleAttribute": "XspKBwAs", "ruleCriteria": "MINIMUM", "ruleValue": 0.14248458304438794}]}' \
    'FFV1TvFs' \
    'RdXsp2Nd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'O3bDrGjC' \
    'tjG3cvJp' \
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
    'euLIQmYu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    '7WzXJSCe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'Hz2mapym' \
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
    '{"memberRoleName": "FBiShKRP", "memberRolePermissions": [{"action": 9, "resourceName": "5G9FxiA6"}, {"action": 59, "resourceName": "6r2kt9GB"}, {"action": 60, "resourceName": "3BgRypME"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'jZDnrGfD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'xs6MOv0x' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "4jFRZvWN"}' \
    'TOvA8Rkw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 7, "resourceName": "tWFfHQTG"}, {"action": 20, "resourceName": "kHDPqQY0"}, {"action": 14, "resourceName": "3ULDaxuq"}]}' \
    '4GNLFgOh' \
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
    '{"configurationCode": "hdw581zl", "customAttributes": {"3FXEjQUG": {}, "oSI5GmZI": {}, "LBlTgSSE": {}}, "groupDescription": "T5MlujsR", "groupIcon": "lUcbz63X", "groupMaxMember": 49, "groupName": "eJTlscA2", "groupRegion": "6JmH07I6", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "QvVt1Pkh", "ruleDetail": [{"ruleAttribute": "HcI0K97w", "ruleCriteria": "EQUAL", "ruleValue": 0.40522167315707613}, {"ruleAttribute": "rtKMhLHE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8293209168621329}, {"ruleAttribute": "dBgEWacb", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8695204469712624}]}, {"allowedAction": "GBAiAhvo", "ruleDetail": [{"ruleAttribute": "1fma6Wtl", "ruleCriteria": "MINIMUM", "ruleValue": 0.05257387295006688}, {"ruleAttribute": "7bczP6On", "ruleCriteria": "MAXIMUM", "ruleValue": 0.03055918011457004}, {"ruleAttribute": "YQ6Nwpci", "ruleCriteria": "EQUAL", "ruleValue": 0.6289751734287927}]}, {"allowedAction": "Y8qRNm43", "ruleDetail": [{"ruleAttribute": "syImTgd9", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3279119567555089}, {"ruleAttribute": "8oToYGqt", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3948967907599443}, {"ruleAttribute": "DPNdohLw", "ruleCriteria": "EQUAL", "ruleValue": 0.57476476716492}]}]}, "groupType": "zCcl6xi8"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'oGOBb44A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "uuBrU6Pt", "groupIcon": "cFTiQuJl", "groupName": "C7LxGrhU", "groupRegion": "uUsALnvo", "groupType": "D28JqbXM"}' \
    'Sjds2QnQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'm72SjGaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "0pNUKzsn", "groupIcon": "QBWTTA7V", "groupName": "UPRRC4FD", "groupRegion": "v20kDRwQ", "groupType": "KSMii0y1"}' \
    'm4NMm3xe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"CIGqJCj6": {}, "WyWfAvsn": {}, "E2K28ZTP": {}}}' \
    'yopSy4EU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'DW2niFNV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'ab6mLDYz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'LOUoo5AA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'WBqLDdO6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'SacjCh0G' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    '8c5m8yAy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"d4BoIcIb": {}, "FznaDLPJ": {}, "34bwRpr6": {}}}' \
    'pbQPYWtq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "xJzct4lq", "ruleCriteria": "MINIMUM", "ruleValue": 0.4431434622650883}, {"ruleAttribute": "sEwbKwyZ", "ruleCriteria": "EQUAL", "ruleValue": 0.8348674452784436}, {"ruleAttribute": "n19B7cgt", "ruleCriteria": "EQUAL", "ruleValue": 0.16130992178972825}]}' \
    'UeE4j0RE' \
    'hPXqyB22' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'kvzzZXhE' \
    'KbYZ1ZOw' \
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
    '{"userId": "1EofL0ad"}' \
    'TvWCD8rL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "LqkSva8q"}' \
    'rZxqpfjZ' \
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
    '7fVUirgn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'TnH0T8C0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'HlhX4kSA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'yr40bc1y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    '9RH19g7A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
