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
group-create-group-configuration-admin-v1 '{"configurationCode": "cvbySv88", "description": "bBpB1IWo", "globalRules": [{"allowedAction": "Vr0KFFnw", "ruleDetail": [{"ruleAttribute": "eccZ3tG5", "ruleCriteria": "MINIMUM", "ruleValue": 0.8306808156223626}, {"ruleAttribute": "LJqNQbQX", "ruleCriteria": "MINIMUM", "ruleValue": 0.13731796593151235}, {"ruleAttribute": "JdT4Lpre", "ruleCriteria": "MAXIMUM", "ruleValue": 0.06645368800737839}]}, {"allowedAction": "smXXpw3I", "ruleDetail": [{"ruleAttribute": "V8N7b8L1", "ruleCriteria": "MINIMUM", "ruleValue": 0.22775347829417725}, {"ruleAttribute": "1jX1oLhq", "ruleCriteria": "EQUAL", "ruleValue": 0.4709977745350534}, {"ruleAttribute": "YG1Xbwh4", "ruleCriteria": "MINIMUM", "ruleValue": 0.007928327888433895}]}, {"allowedAction": "1DVfeAS7", "ruleDetail": [{"ruleAttribute": "v0nQ9S9o", "ruleCriteria": "EQUAL", "ruleValue": 0.6080551580710144}, {"ruleAttribute": "USfrIgRl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.24691123780409352}, {"ruleAttribute": "bNWnEJCs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2081220900297428}]}], "groupAdminRoleId": "AeSOIqpd", "groupMaxMember": 73, "groupMemberRoleId": "Ag1NLMAC", "name": "9dkPOOEf"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'MkdmolRN' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'FyCFMMlI' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "AfPRO2rC", "groupMaxMember": 45, "name": "zSxYmpoZ"}' 'HV8pWlWb' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "7QCTAH29", "ruleCriteria": "EQUAL", "ruleValue": 0.5320108555500762}, {"ruleAttribute": "CiGDjOuw", "ruleCriteria": "EQUAL", "ruleValue": 0.57339729364655}, {"ruleAttribute": "48jsNbj6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8875181589737077}]}' 'w6hr6HuO' 'jgAW049C' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'JABZvRfz' 'YomIBCcy' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'R4qng1jU' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 '2G3Pggbb' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'ClPGdMjZ' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "EHmyOg13", "memberRolePermissions": [{"action": 43, "resourceName": "c1MIayST"}, {"action": 31, "resourceName": "s31ouiXd"}, {"action": 70, "resourceName": "GcsILxqN"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'mpoUzdMU' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 '4R3yHztd' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "Nx93nn6o"}' 'wGQPNBF8' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 47, "resourceName": "hrsKiBf0"}, {"action": 41, "resourceName": "xP1BEQDM"}, {"action": 25, "resourceName": "6092VAkf"}]}' 'rFlfD8nj' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "z62sHA3H", "customAttributes": {"XMGOpLKo": {}, "vSxgWKtT": {}, "FPqTd1wD": {}}, "groupDescription": "pQXNCJVR", "groupIcon": "JayqdmJ3", "groupMaxMember": 23, "groupName": "Nzns5HEI", "groupRegion": "VWxxzltE", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "UPQrztjO", "ruleDetail": [{"ruleAttribute": "x9rJDEbg", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7248944646917574}, {"ruleAttribute": "UDEk5J7M", "ruleCriteria": "MINIMUM", "ruleValue": 0.2116556619539075}, {"ruleAttribute": "8SqYDB1U", "ruleCriteria": "MINIMUM", "ruleValue": 0.09419777115434491}]}, {"allowedAction": "dt3MzhOy", "ruleDetail": [{"ruleAttribute": "gjozlTBu", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8909341087561337}, {"ruleAttribute": "2Y7HHEmL", "ruleCriteria": "MINIMUM", "ruleValue": 0.8758609249037285}, {"ruleAttribute": "K9sL1Zf4", "ruleCriteria": "MAXIMUM", "ruleValue": 0.07510520169776602}]}, {"allowedAction": "B2EU5IQW", "ruleDetail": [{"ruleAttribute": "XQgneGjj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8380713300601701}, {"ruleAttribute": "RQlvEpuv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.550154922096069}, {"ruleAttribute": "PcHGTyb8", "ruleCriteria": "EQUAL", "ruleValue": 0.5890058063877671}]}]}, "groupType": "XWhPRdcC"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'It7zdg59' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "KLZT1HWB", "groupIcon": "HxsBL51U", "groupName": "ZO5J4Ekj", "groupRegion": "EIwbeo4s", "groupType": "Q0tsvUk0"}' 'eBHuGEU9' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'Bfg95R9k' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "DiRIxuLH", "groupIcon": "oNkmp6AY", "groupName": "EmD3GAQ1", "groupRegion": "hFQ5M2oR", "groupType": "DiNmN9mx"}' 'gfwL96Ed' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"4DoJNBGM": {}, "aCPTwBYb": {}, "XUzel1kP": {}}}' 'wYFelvq0' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'V8y8CnNf' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 '2qCqTWyp' --login_with_auth "Bearer foo"
group-join-group-v1 'k3DKmq6a' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'HOSw93oH' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'Eu7XyAS6' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'NUDBgkhO' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"QswpfdjM": {}, "Y6Tux0hL": {}, "0N5B88wV": {}}}' 'jePwu0p2' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "YHYVIR56", "ruleCriteria": "MINIMUM", "ruleValue": 0.8588777608236153}, {"ruleAttribute": "uHazXLwi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6672834440808774}, {"ruleAttribute": "wqSOBE72", "ruleCriteria": "MINIMUM", "ruleValue": 0.6697959280958874}]}' '5dmOToe1' '1IE9b7QJ' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'wnrWHVXW' 'SbHNbEzg' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "qkglHAwI"}' 'nfHHaWCa' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "ozgVhXuX"}' 'LvIdjtGL' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'WZUxAvRb' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'UNAU4bwY' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'tbA4AG9f' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'oqXj2lDN' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'IgmKgBDJ' --login_with_auth "Bearer foo"
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
    '{"configurationCode": "cIGsj2X2", "description": "Gkxmyaoe", "globalRules": [{"allowedAction": "8FEaUFtI", "ruleDetail": [{"ruleAttribute": "rEeIXVlK", "ruleCriteria": "MINIMUM", "ruleValue": 0.633913034367355}, {"ruleAttribute": "vBz36p4j", "ruleCriteria": "MINIMUM", "ruleValue": 0.37957976656842374}, {"ruleAttribute": "blaFr22F", "ruleCriteria": "MAXIMUM", "ruleValue": 0.956099271061138}]}, {"allowedAction": "YEKMZ8ED", "ruleDetail": [{"ruleAttribute": "l380kZxd", "ruleCriteria": "EQUAL", "ruleValue": 0.19464992069695963}, {"ruleAttribute": "jjCPLTt7", "ruleCriteria": "EQUAL", "ruleValue": 0.8790877804369471}, {"ruleAttribute": "90KxQJk4", "ruleCriteria": "EQUAL", "ruleValue": 0.20039688570894765}]}, {"allowedAction": "L8YTP7g3", "ruleDetail": [{"ruleAttribute": "I1Tos5aV", "ruleCriteria": "EQUAL", "ruleValue": 0.10736384521566666}, {"ruleAttribute": "BWEgtG7q", "ruleCriteria": "MINIMUM", "ruleValue": 0.16433235771380383}, {"ruleAttribute": "yDoWbGm9", "ruleCriteria": "MINIMUM", "ruleValue": 0.8049796955285751}]}], "groupAdminRoleId": "mbeAwlAu", "groupMaxMember": 65, "groupMemberRoleId": "FjzKsKfz", "name": "iyvEqnCZ"}' \
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
    'WJah4hSW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'a1Se28cC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "TDFDBSfx", "groupMaxMember": 5, "name": "vd6HG7rs"}' \
    '4yEAcslt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "Jz2QfcBq", "ruleCriteria": "EQUAL", "ruleValue": 0.4129008730127359}, {"ruleAttribute": "fvcZet0e", "ruleCriteria": "MINIMUM", "ruleValue": 0.13900502103529466}, {"ruleAttribute": "PRaenOOd", "ruleCriteria": "EQUAL", "ruleValue": 0.8188425067589395}]}' \
    'wbHfvGi4' \
    'VQV18FTR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'IOtiCMWI' \
    'bG1MzHPI' \
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
    'f7e4TlFD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'DV9XGGoD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'QjBsDtqG' \
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
    '{"memberRoleName": "AuB5ce6n", "memberRolePermissions": [{"action": 15, "resourceName": "fERysgxU"}, {"action": 47, "resourceName": "usneQkcK"}, {"action": 45, "resourceName": "rFeJyn3z"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'sXMMYd30' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    '9956U49c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "5CmnKUZv"}' \
    'q92nEaEw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 60, "resourceName": "J1awMDa9"}, {"action": 18, "resourceName": "UHFQrdNf"}, {"action": 61, "resourceName": "HtudGsbu"}]}' \
    'JgJ7k0bT' \
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
    '{"configurationCode": "hvFedrkx", "customAttributes": {"F7F5awWd": {}, "w6Q0nbKN": {}, "AdcaCTYS": {}}, "groupDescription": "8fnPpW4N", "groupIcon": "7QTrvrbi", "groupMaxMember": 57, "groupName": "hE0jvVyG", "groupRegion": "mHSKIDUv", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "xZRXS4X6", "ruleDetail": [{"ruleAttribute": "Nc2i8bMW", "ruleCriteria": "EQUAL", "ruleValue": 0.7252432496121196}, {"ruleAttribute": "Gj32Zgwk", "ruleCriteria": "MINIMUM", "ruleValue": 0.9331584766821374}, {"ruleAttribute": "P5bG0xOc", "ruleCriteria": "EQUAL", "ruleValue": 0.42144202554022736}]}, {"allowedAction": "Xv7Kh6wP", "ruleDetail": [{"ruleAttribute": "7Jo6TkYL", "ruleCriteria": "EQUAL", "ruleValue": 0.640965665236971}, {"ruleAttribute": "f9jJeg3N", "ruleCriteria": "MINIMUM", "ruleValue": 0.27487044358468027}, {"ruleAttribute": "RYve3qOk", "ruleCriteria": "MINIMUM", "ruleValue": 0.9896661968782006}]}, {"allowedAction": "B2yX7nZQ", "ruleDetail": [{"ruleAttribute": "0GIJnAb2", "ruleCriteria": "EQUAL", "ruleValue": 0.47907562650799906}, {"ruleAttribute": "w9O2pXRF", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6223327689809693}, {"ruleAttribute": "HAvmQqbG", "ruleCriteria": "EQUAL", "ruleValue": 0.6881632049732923}]}]}, "groupType": "jh0MDYTn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'SfWS8nPM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "TIvarxrp", "groupIcon": "riIEIu6F", "groupName": "cB2V3dOm", "groupRegion": "HOiiAiRA", "groupType": "pjg1dNTd"}' \
    'TNb93X5Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    '53F8HZh7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "i7oI00sJ", "groupIcon": "wdUvdOfl", "groupName": "3BStw5Y4", "groupRegion": "T1jcRe7z", "groupType": "0uf2c49w"}' \
    'XHOWqUyp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"EufNkPAN": {}, "ebnBsokv": {}, "zeRItEsS": {}}}' \
    'VMTe8ngX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'TTuDWpYp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    '5F9zmRIz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'tc5LkZEj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'GiDf6Ejy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'zGqWjv0H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'ZVgKjYET' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"FizGEGCi": {}, "QpjXdZug": {}, "LLoeh6a5": {}}}' \
    'D7yUiwQP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "42M1SaTa", "ruleCriteria": "EQUAL", "ruleValue": 0.27287420403896}, {"ruleAttribute": "8B6tVpdr", "ruleCriteria": "EQUAL", "ruleValue": 0.9797844096801769}, {"ruleAttribute": "nmZVRaN7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4841684584481518}]}' \
    'M7G2l4oK' \
    'dbf3ktjs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    'hHyH54gu' \
    'agR9AfiZ' \
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
    '{"userId": "umPTNhIY"}' \
    'WnkcwQzF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "6qldpio7"}' \
    'C93OB7qU' \
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
    'ME7xQJMW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'J8qLWlyY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'efpMQ5vL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'WFdRs95N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'WsDr2TFx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
