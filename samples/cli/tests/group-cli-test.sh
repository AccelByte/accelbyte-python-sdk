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
group-create-group-configuration-admin-v1 '{"configurationCode": "2wBcFbUc", "description": "X2JG0Uva", "globalRules": [{"allowedAction": "XNej2p2u", "ruleDetail": [{"ruleAttribute": "bAqPC4Ls", "ruleCriteria": "EQUAL", "ruleValue": 0.04767237835816396}, {"ruleAttribute": "YhglTIu5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6244388852879508}, {"ruleAttribute": "kfzjs1b6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9447320233278421}]}, {"allowedAction": "4V8pGaWc", "ruleDetail": [{"ruleAttribute": "ajS1VjDV", "ruleCriteria": "MINIMUM", "ruleValue": 0.47631345432408356}, {"ruleAttribute": "YI4W03qE", "ruleCriteria": "EQUAL", "ruleValue": 0.7804654951346989}, {"ruleAttribute": "hj4Jeq8V", "ruleCriteria": "EQUAL", "ruleValue": 0.14141911346386615}]}, {"allowedAction": "5UqG9dk1", "ruleDetail": [{"ruleAttribute": "YHewcwos", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06277968583650773}, {"ruleAttribute": "rDLW3r3A", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25411315423173075}, {"ruleAttribute": "3NdquDh5", "ruleCriteria": "MINIMUM", "ruleValue": 0.9711789197434281}]}], "groupAdminRoleId": "7ZXVaDCR", "groupMaxMember": 38, "groupMemberRoleId": "1hGHKwYF", "name": "P8lauVOZ"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 '6LLVzOnH' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'hshzqSqx' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "aDHCMaxY", "groupMaxMember": 85, "name": "T1khN9ER"}' 'H838eM9B' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "PfpJVWBf", "ruleCriteria": "EQUAL", "ruleValue": 0.46323390833969535}, {"ruleAttribute": "JDZquZN0", "ruleCriteria": "MINIMUM", "ruleValue": 0.4184913244926983}, {"ruleAttribute": "UDl3LnSa", "ruleCriteria": "MAXIMUM", "ruleValue": 0.005903014188289424}]}' 'WLsd6lmm' 'Yp7qvbD6' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'G2Bc8bek' '73DCPc51' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'GWbM8QdC' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'ZuDhVkes' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'nKll7GVe' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "mk9Ylzba", "memberRolePermissions": [{"action": 41, "resourceName": "rXsrfPWz"}, {"action": 15, "resourceName": "Amf7MbVm"}, {"action": 31, "resourceName": "8UPmOoMa"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 '8ayKEZ4z' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'liE87ybW' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "M3VSJfIn"}' 'Gt7glNid' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 47, "resourceName": "rOtDx5qy"}, {"action": 68, "resourceName": "Tk8c9ESm"}, {"action": 86, "resourceName": "82SvV9J9"}]}' 'FU9ZjDC0' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "b7uDJ4rp", "customAttributes": {"mJt5DeUo": {}, "C9zt4fjd": {}, "hd3zz2dr": {}}, "groupDescription": "yyUlYmp8", "groupIcon": "RqQVRqR6", "groupMaxMember": 38, "groupName": "n7MnNlMM", "groupRegion": "2QpkFwzJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "rSP9ubI3", "ruleDetail": [{"ruleAttribute": "msBpJ4Ss", "ruleCriteria": "MINIMUM", "ruleValue": 0.49088138332869213}, {"ruleAttribute": "5jaH9q7O", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9624023545933703}, {"ruleAttribute": "Z0oii5Aq", "ruleCriteria": "EQUAL", "ruleValue": 0.30359707525757884}]}, {"allowedAction": "PsoCVwV0", "ruleDetail": [{"ruleAttribute": "A8U3en5s", "ruleCriteria": "MAXIMUM", "ruleValue": 0.013614803503681272}, {"ruleAttribute": "BEd9cF0R", "ruleCriteria": "EQUAL", "ruleValue": 0.07328992748658125}, {"ruleAttribute": "9WsPeSR3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6811518526999558}]}, {"allowedAction": "kdWOw632", "ruleDetail": [{"ruleAttribute": "UZ7cldIW", "ruleCriteria": "EQUAL", "ruleValue": 0.8929273385509573}, {"ruleAttribute": "TVU9qVji", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9591358118031519}, {"ruleAttribute": "KeCIAjI4", "ruleCriteria": "EQUAL", "ruleValue": 0.8658309805416582}]}]}, "groupType": "j9BYnAeE"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'Y0RjH9xO' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "V7zFf3bS", "groupIcon": "58t819ME", "groupName": "F5Lr7RhI", "groupRegion": "5JcM96O5", "groupType": "8DLdVEGI"}' '5DXKXTam' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'yukoZnae' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "atgbpg72", "groupIcon": "XiClQxhL", "groupName": "xsOAfpdx", "groupRegion": "uoQyBijE", "groupType": "1VlKTGev"}' 'njVsEE75' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"qLFKzKlT": {}, "HacOCSYG": {}, "Mkl37BWO": {}}}' 'wjAtL7vW' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 '4lQVm3sO' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'V07T6rbl' --login_with_auth "Bearer foo"
group-join-group-v1 'jhWBc6qG' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 '1vLlYp85' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'pA5JMi6y' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 '6Lu2M56L' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"FyXwVWzG": {}, "F0Dx2Pzg": {}, "ou8re9fu": {}}}' 'JEBDsPop' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "70ZlBh3H", "ruleCriteria": "MAXIMUM", "ruleValue": 0.823148816571098}, {"ruleAttribute": "kPTaHpbY", "ruleCriteria": "EQUAL", "ruleValue": 0.08134143000080796}, {"ruleAttribute": "Bpv2wfj6", "ruleCriteria": "EQUAL", "ruleValue": 0.4438330203336507}]}' 'A65HBfSO' 'xkkFvYg9' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'EzLSYQD5' 'sDqOTGmI' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "d0IjmvNb"}' 'NTOxUOuf' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "gI8othEx"}' '8tN3bYTy' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 '7jX1CSRh' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'kRlISXXw' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'qzXNaFmV' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'Q8tNwQHE' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'vdJSGmhP' --login_with_auth "Bearer foo"
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
    '{"configurationCode": "h9HijSpl", "description": "X6U0EZMB", "globalRules": [{"allowedAction": "zXdkfmO5", "ruleDetail": [{"ruleAttribute": "HDYmWjq3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7394640622820786}, {"ruleAttribute": "gEO1hxlv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.427847638178374}, {"ruleAttribute": "34tCmYzj", "ruleCriteria": "MINIMUM", "ruleValue": 0.7155463895853742}]}, {"allowedAction": "bdk6U9PR", "ruleDetail": [{"ruleAttribute": "tZNPki1j", "ruleCriteria": "MINIMUM", "ruleValue": 0.6959593228785921}, {"ruleAttribute": "JbOQmVqO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6239209892114685}, {"ruleAttribute": "GQqijIJa", "ruleCriteria": "EQUAL", "ruleValue": 0.21763876131596427}]}, {"allowedAction": "goqBeah0", "ruleDetail": [{"ruleAttribute": "5I8p6zbg", "ruleCriteria": "EQUAL", "ruleValue": 0.13152447441102166}, {"ruleAttribute": "OHRRe7H9", "ruleCriteria": "EQUAL", "ruleValue": 0.0390839756024256}, {"ruleAttribute": "eI5qYLxL", "ruleCriteria": "EQUAL", "ruleValue": 0.09957504166753872}]}], "groupAdminRoleId": "rPp419tx", "groupMaxMember": 60, "groupMemberRoleId": "Uac6okdM", "name": "ztHAOqdI"}' \
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
    'p5Hjwl6B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'KElCRoNq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "NfUprBdZ", "groupMaxMember": 39, "name": "oNjHX85l"}' \
    'o6wkydin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "DUld0yop", "ruleCriteria": "EQUAL", "ruleValue": 0.06529629310651175}, {"ruleAttribute": "Cu3NlcBq", "ruleCriteria": "MINIMUM", "ruleValue": 0.598444976009284}, {"ruleAttribute": "1YrLYxYB", "ruleCriteria": "MINIMUM", "ruleValue": 0.6073398560567532}]}' \
    'H6KqkpHe' \
    'KI4TpxT3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    '89Ojykaq' \
    'JgtWCGEa' \
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
    'oJF9W2qc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'ASmP4I5U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'sBkKSF5o' \
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
    '{"memberRoleName": "stXibI7l", "memberRolePermissions": [{"action": 51, "resourceName": "tfNTpv0y"}, {"action": 26, "resourceName": "QVxXRGRI"}, {"action": 84, "resourceName": "DwVDEJar"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    '0rV7aHbd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'mnTYksPd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "shIF32am"}' \
    'R2izNIXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 30, "resourceName": "9ARlUJEd"}, {"action": 11, "resourceName": "gfPaJBeG"}, {"action": 59, "resourceName": "vVwcFHFM"}]}' \
    'n7j19WCf' \
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
    '{"configurationCode": "cKoe0n2Z", "customAttributes": {"icSLU9kg": {}, "idkzNvjt": {}, "8gnB5VeX": {}}, "groupDescription": "HnS8ywK9", "groupIcon": "hC1qqtJ9", "groupMaxMember": 16, "groupName": "r2npqxm0", "groupRegion": "OWvh03Tr", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "uwMnMcIx", "ruleDetail": [{"ruleAttribute": "4mRE9Oa2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6501776472627662}, {"ruleAttribute": "SppYRBCt", "ruleCriteria": "EQUAL", "ruleValue": 0.21414135648317678}, {"ruleAttribute": "RR0Ux8JS", "ruleCriteria": "MINIMUM", "ruleValue": 0.8601575733161018}]}, {"allowedAction": "8c6OX7hK", "ruleDetail": [{"ruleAttribute": "KiFXN5fd", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5397868510487194}, {"ruleAttribute": "1aN9M7z6", "ruleCriteria": "MINIMUM", "ruleValue": 0.8688762954451382}, {"ruleAttribute": "HtRB51Pf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48219823203689427}]}, {"allowedAction": "MXT7VA56", "ruleDetail": [{"ruleAttribute": "yXSelHhn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.16805198478126127}, {"ruleAttribute": "MmyK066z", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8697249877914836}, {"ruleAttribute": "V12FNgvL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.42336497416136276}]}]}, "groupType": "o7KyYu92"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'M790h1z0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "5CJffY4T", "groupIcon": "ux79RJXY", "groupName": "h7egCcf3", "groupRegion": "s7vEDy1X", "groupType": "nEzjVJzd"}' \
    'iEXfnirO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'Mjg1YO8M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "bSspniF3", "groupIcon": "S0GCLtCM", "groupName": "fGMUi794", "groupRegion": "QBWBPNmm", "groupType": "zPqbBcnU"}' \
    'syo694Sv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"QbsUWDeK": {}, "rtjdTa0M": {}, "Fd890Ft4": {}}}' \
    'uRBO35Qy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'sFHiUoKT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'oDVQkO6H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'mA5Xq0O0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'Fe0t873H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    '3FB4IJTY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'xb3HSpGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"xawkLF7q": {}, "iG07hRMX": {}, "I7ssG2kC": {}}}' \
    '4XpuyKg1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "NVw3eJkT", "ruleCriteria": "MINIMUM", "ruleValue": 0.9546539010983455}, {"ruleAttribute": "rtZjOZlA", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5574343249838201}, {"ruleAttribute": "2VESlzGz", "ruleCriteria": "MINIMUM", "ruleValue": 0.8584070671990314}]}' \
    'hf0C53Kb' \
    'k7TRKrgC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'NFbaeQrs' \
    'deQqiNAb' \
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
    '{"userId": "0o09Rj3C"}' \
    'bxP3NMSb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "lVVUZrPP"}' \
    'GN1iD2f9' \
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
    'FJG0Y9iB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    '8DZt9QvB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    '7BlHn0pX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'UFG7rUKY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'Zd1BLCmT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
