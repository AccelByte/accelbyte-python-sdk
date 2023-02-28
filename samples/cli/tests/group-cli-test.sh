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
group-create-group-configuration-admin-v1 '{"allowMultiple": false, "configurationCode": "5UvFBlJS", "description": "FdJv9fHn", "globalRules": [{"allowedAction": "zBG2BA7K", "ruleDetail": [{"ruleAttribute": "w3mCi443", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8848195230125973}, {"ruleAttribute": "td4XYPqQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.5762888498669193}, {"ruleAttribute": "htrOSQXQ", "ruleCriteria": "EQUAL", "ruleValue": 0.5963119536741581}]}, {"allowedAction": "dC19eYCE", "ruleDetail": [{"ruleAttribute": "91JwdulM", "ruleCriteria": "EQUAL", "ruleValue": 0.5839723743285915}, {"ruleAttribute": "LhQWK8be", "ruleCriteria": "EQUAL", "ruleValue": 0.428780896284797}, {"ruleAttribute": "jurHf2dE", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9965581709087645}]}, {"allowedAction": "WmUrbwUm", "ruleDetail": [{"ruleAttribute": "S77W20cS", "ruleCriteria": "MINIMUM", "ruleValue": 0.38014091354284085}, {"ruleAttribute": "Fw5l3JzD", "ruleCriteria": "EQUAL", "ruleValue": 0.8006194112316304}, {"ruleAttribute": "o3Qmfc7m", "ruleCriteria": "EQUAL", "ruleValue": 0.26733861184262797}]}], "groupAdminRoleId": "qp0GVWNn", "groupMaxMember": 67, "groupMemberRoleId": "LCmIs0br", "name": "UZTsmxi1"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 '7gxVlYlv' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'LzBiQHsQ' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "OKmoJAde", "groupMaxMember": 5, "name": "GCXgRqt0"}' 'Br3BX94Y' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "Uvfp53JP", "ruleCriteria": "EQUAL", "ruleValue": 0.1392532440014843}, {"ruleAttribute": "vMubI3gP", "ruleCriteria": "EQUAL", "ruleValue": 0.4970224625749099}, {"ruleAttribute": "YwZZGVsD", "ruleCriteria": "MINIMUM", "ruleValue": 0.2167428983606915}]}' 'OYXiqyhy' 'fErMHmxR' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'MntHtNVf' '7P3NANdM' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'PAOyLv62' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'tNDJxfGU' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'K8nuK25r' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "VhuISOsu", "memberRolePermissions": [{"action": 8, "resourceName": "ZWXKdUmY"}, {"action": 5, "resourceName": "7s8HOpVn"}, {"action": 88, "resourceName": "lX7TdTh6"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'WVSiG7YO' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 '4Lc9xE6R' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "TQvfgg1i"}' 'lANzywXO' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 77, "resourceName": "8RsBrWA8"}, {"action": 32, "resourceName": "FmrbtK5V"}, {"action": 29, "resourceName": "i9VcFTwT"}]}' 'LeTfSgjW' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "0dUcs5xr", "customAttributes": {"iN0en1aN": {}, "cj4zjJgP": {}, "I1Q7dPBZ": {}}, "groupDescription": "oRfnnYjP", "groupIcon": "RwLBUFio", "groupMaxMember": 52, "groupName": "NkkKOMGN", "groupRegion": "YHIZiayw", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "FfM3tH6w", "ruleDetail": [{"ruleAttribute": "Dxxl63iD", "ruleCriteria": "EQUAL", "ruleValue": 0.997256228488175}, {"ruleAttribute": "QmVd2L8u", "ruleCriteria": "MINIMUM", "ruleValue": 0.20234443844804295}, {"ruleAttribute": "GMp6rMtz", "ruleCriteria": "EQUAL", "ruleValue": 0.12632357390654225}]}, {"allowedAction": "tAGw9q5j", "ruleDetail": [{"ruleAttribute": "3HEYy76I", "ruleCriteria": "MAXIMUM", "ruleValue": 0.25400114004272156}, {"ruleAttribute": "MHF3GWTd", "ruleCriteria": "EQUAL", "ruleValue": 0.12957678807734752}, {"ruleAttribute": "x0pOV4k6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7444430675523602}]}, {"allowedAction": "6YhsQT7a", "ruleDetail": [{"ruleAttribute": "bSyz2Bv0", "ruleCriteria": "EQUAL", "ruleValue": 0.3361881021880724}, {"ruleAttribute": "5zYYHsSf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21476297118452914}, {"ruleAttribute": "Ut9rk5J8", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13840436684080892}]}]}, "groupType": "PRIVATE"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 '83oQHwxF' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "pHGeKonA", "groupIcon": "oahPkZhI", "groupName": "UWO44tD7", "groupRegion": "HHTxfDQC", "groupType": "PUBLIC"}' 'ziMRPSk6' --login_with_auth "Bearer foo"
group-delete-group-public-v1 '4KopHJ8L' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "GAWkfeyw", "groupIcon": "B2veQ0YU", "groupName": "2o2TsoRu", "groupRegion": "3653OEW0", "groupType": "PUBLIC"}' '8T7EyMSR' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"ckpbcHdh": {}, "tOhsEE8u": {}, "O8PAX57y": {}}}' 'LXKWFFIS' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'di6o07gk' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'krCD400R' --login_with_auth "Bearer foo"
group-join-group-v1 'oLGZEBXG' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'v4JkRLd9' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'zfLazRdL' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'dLstVkgG' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"4IPIlwLq": {}, "4TPVX3lF": {}, "A7ZP5rb6": {}}}' 'rlgolGH4' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "tu0ZAVo5", "ruleCriteria": "MINIMUM", "ruleValue": 0.642620921815536}, {"ruleAttribute": "cnwmAQuN", "ruleCriteria": "EQUAL", "ruleValue": 0.44733641374516375}, {"ruleAttribute": "BabJisOp", "ruleCriteria": "MINIMUM", "ruleValue": 0.3440709533637275}]}' 'UeRenr6h' 'Op0Plcq5' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'hHc9Lkm0' 'TVlztm1P' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "e9gY2MYN"}' 'bI9cgoJM' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "12igZv58"}' 'W9yygxDf' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 '21aGErk0' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'KNsaw9uU' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'jgdNPcOQ' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 '8c4SXRd8' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'aNlH9xpg' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-admin-v2 '{"groupIDs": ["Ro5Jbt05", "Ab9qltLr", "6xc0XjCm"]}' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 'TKgxtNNc' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "sxE12LMO", "customAttributes": {"xPxJUHwG": {}, "nNLfgGVz": {}, "jIvlcMMe": {}}, "groupDescription": "FIZl2YiG", "groupIcon": "rXaVBB7m", "groupMaxMember": 89, "groupName": "Dxu0c9dl", "groupRegion": "sUNDubee", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "l3TSqrDU", "ruleDetail": [{"ruleAttribute": "Dmhid641", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6601515843312111}, {"ruleAttribute": "lYcRk6a2", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5315337708621114}, {"ruleAttribute": "NkhFFnz4", "ruleCriteria": "EQUAL", "ruleValue": 0.36056004876618897}]}, {"allowedAction": "GDZ1bov7", "ruleDetail": [{"ruleAttribute": "8rO8UvqD", "ruleCriteria": "EQUAL", "ruleValue": 0.2645499126395786}, {"ruleAttribute": "36CydqWP", "ruleCriteria": "EQUAL", "ruleValue": 0.8438457438427355}, {"ruleAttribute": "cQJXKzOY", "ruleCriteria": "MINIMUM", "ruleValue": 0.5196920152873492}]}, {"allowedAction": "ZwCAp2eg", "ruleDetail": [{"ruleAttribute": "ff5c6D0J", "ruleCriteria": "EQUAL", "ruleValue": 0.3767508407143232}, {"ruleAttribute": "AKg1GFj0", "ruleCriteria": "MINIMUM", "ruleValue": 0.3387620629932654}, {"ruleAttribute": "POxhYsEV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.050791508804033714}]}]}, "groupType": "PRIVATE"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["0mjpTMOU", "enk9mw5l", "qFtt37r1"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "U4kYBbiD", "groupIcon": "AzWGRu5R", "groupName": "Ke1DfUmL", "groupRegion": "SVzhE4WD", "groupType": "OPEN"}' 'IjLFEaRu' --login_with_auth "Bearer foo"
group-delete-group-public-v2 'BTZP6ZFL' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "YCKlDwAJ", "groupIcon": "mklPgT9m", "groupName": "NnFNkcAh", "groupRegion": "Lk8a8gfp", "groupType": "PUBLIC"}' '2ruXUyoM' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"X7dkjlZu": {}, "ToTXrfxt": {}, "WiasVA42": {}}}' 'GHZZl6V3' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 'Is2wN4a8' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 'dNLwccQH' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 'sEgCkODo' --login_with_auth "Bearer foo"
group-join-group-v2 'rBlzdWSJ' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'GOdMb7Dz' --login_with_auth "Bearer foo"
group-leave-group-public-v2 'N6eKPUpc' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"eVeZ5VGK": {}, "9AOfs9LP": {}, "OuDAbykI": {}}}' 'nP4lrC7A' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "inhaTiBk", "ruleCriteria": "EQUAL", "ruleValue": 0.12558289406357204}, {"ruleAttribute": "EGm78Q0k", "ruleCriteria": "EQUAL", "ruleValue": 0.6221116657945885}, {"ruleAttribute": "osAhbfJC", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3391935922631234}]}' 'Alw413P4' 'FOs1iz0T' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 'KBFOKFIg' 'DbPVxkZ4' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "OIG6xCFW"}' 'Lcc6WQLh' 'qafUxsnl' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "cOxACmxg"}' '5twJEiOl' '61mMTCjN' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 '15JDFy95' 'kkL94ei1' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 'CsUQi6qZ' 'LsBfpwGl' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 '6M3X12g1' 'oBocMbhd' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 'mBANadde' 'oWPMCw9i' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'wIpUn2c9' 'tjDXri5O' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 'vVfWohmL' 'j72dyob1' --login_with_auth "Bearer foo"
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
echo "1..73"

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
    '{"allowMultiple": false, "configurationCode": "R7nF5qfX", "description": "Y601s9bf", "globalRules": [{"allowedAction": "X73ykvgj", "ruleDetail": [{"ruleAttribute": "RfjUY7Wo", "ruleCriteria": "EQUAL", "ruleValue": 0.41272377160539686}, {"ruleAttribute": "00u3h1Cf", "ruleCriteria": "MINIMUM", "ruleValue": 0.0721282642545158}, {"ruleAttribute": "yPbrvlRi", "ruleCriteria": "MAXIMUM", "ruleValue": 0.12454662135914829}]}, {"allowedAction": "I1v3CMwd", "ruleDetail": [{"ruleAttribute": "JwJIKLp1", "ruleCriteria": "EQUAL", "ruleValue": 0.40794979107582297}, {"ruleAttribute": "yeqLCLi5", "ruleCriteria": "EQUAL", "ruleValue": 0.03575770945684131}, {"ruleAttribute": "S3GIQPlH", "ruleCriteria": "MINIMUM", "ruleValue": 0.19696420757301725}]}, {"allowedAction": "6glZUfa3", "ruleDetail": [{"ruleAttribute": "U1RqfkWR", "ruleCriteria": "EQUAL", "ruleValue": 0.5261621909060937}, {"ruleAttribute": "2zoOsBMM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7007061927000576}, {"ruleAttribute": "9WZMRg0n", "ruleCriteria": "EQUAL", "ruleValue": 0.5848422189793953}]}], "groupAdminRoleId": "ziua0IxE", "groupMaxMember": 78, "groupMemberRoleId": "jkUVERs9", "name": "1rf42tZm"}' \
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
    'xtYH6Kms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'hYzO5LC0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "4SDd3srH", "groupMaxMember": 69, "name": "UyMM5xUL"}' \
    '161LJRPu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "x5PsQ0Dt", "ruleCriteria": "MINIMUM", "ruleValue": 0.7328551799327967}, {"ruleAttribute": "9uVdHqTr", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5671027799169225}, {"ruleAttribute": "JYozuo9p", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21666657818934631}]}' \
    'SLjRn3fU' \
    '0DFctSa8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'EJtyCjQr' \
    'FnnPF8vd' \
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
    'G1O2jWJY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'KGT6WCNw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'ncWGZzRV' \
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
    '{"memberRoleName": "uoETqiHz", "memberRolePermissions": [{"action": 45, "resourceName": "op1vGb3r"}, {"action": 86, "resourceName": "LN1LpPbn"}, {"action": 42, "resourceName": "AewT12Fr"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'EAGrbAfE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    'XTX2ESzb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "aOEOuh2V"}' \
    'DuvSBtkA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 69, "resourceName": "PLXBVNcp"}, {"action": 93, "resourceName": "HNbiyNI0"}, {"action": 4, "resourceName": "W6RqW5nv"}]}' \
    '32jAKlYn' \
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
    '{"configurationCode": "cEdDTkGJ", "customAttributes": {"W4mMm3e1": {}, "bWs4B4Ec": {}, "qgdwq5al": {}}, "groupDescription": "D0VMfGIa", "groupIcon": "aVVuNFsD", "groupMaxMember": 47, "groupName": "EYgPmGsu", "groupRegion": "jq3OvP1p", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "871UnXhC", "ruleDetail": [{"ruleAttribute": "TUIOpYRn", "ruleCriteria": "MINIMUM", "ruleValue": 0.5311498631765673}, {"ruleAttribute": "uhqdM6t0", "ruleCriteria": "EQUAL", "ruleValue": 0.7417753621742202}, {"ruleAttribute": "3qHDMUfI", "ruleCriteria": "EQUAL", "ruleValue": 0.8369472754518666}]}, {"allowedAction": "RuHDcxLk", "ruleDetail": [{"ruleAttribute": "ufdEKBtO", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1076130463785796}, {"ruleAttribute": "hILEW8A3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2711754369279895}, {"ruleAttribute": "HliNaNv7", "ruleCriteria": "EQUAL", "ruleValue": 0.9350682169354902}]}, {"allowedAction": "pegpVyAM", "ruleDetail": [{"ruleAttribute": "bimpVJUG", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22774181414423023}, {"ruleAttribute": "JnM1KMNI", "ruleCriteria": "EQUAL", "ruleValue": 0.9965393343229477}, {"ruleAttribute": "ccNpSDpT", "ruleCriteria": "EQUAL", "ruleValue": 0.6731844163970716}]}]}, "groupType": "OPEN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'EiqCTkV2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "I0wQAvQd", "groupIcon": "ApF24AdL", "groupName": "4x54onXa", "groupRegion": "Cn1QZrBu", "groupType": "PRIVATE"}' \
    '8b6Yhz1E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'zPi37Emj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "zb4FuY97", "groupIcon": "0LHA2lBi", "groupName": "lsssQhzQ", "groupRegion": "u1ub2Ydc", "groupType": "PRIVATE"}' \
    '7zSqk5GY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"sL4Jmycy": {}, "M6QfNPpW": {}, "8UufoCBP": {}}}' \
    'C2r42plE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'kllHYi3K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'Mg8KABbT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'rlrgwS9E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    '5813QgLh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'KdOMUCl7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'iirwTopU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"RRDk4zWF": {}, "BLkDTFzH": {}, "Wk8YA8O6": {}}}' \
    'QxLbriDs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "2iRr6oQj", "ruleCriteria": "MINIMUM", "ruleValue": 0.11572297879630511}, {"ruleAttribute": "B8GqaP2e", "ruleCriteria": "EQUAL", "ruleValue": 0.04685141278216065}, {"ruleAttribute": "W9brWOb9", "ruleCriteria": "MINIMUM", "ruleValue": 0.5006621788093988}]}' \
    'adZGy3Ws' \
    'RBXuCpMA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    '19HEJPiN' \
    'OsTtmkha' \
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
    '{"userId": "1mm8fymt"}' \
    'LWEnFggY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "vrSspWps"}' \
    'sC9TFGLj' \
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
    'mA4iIAaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'B1kgUKAi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'p0sNL9mH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'yeiWVODZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'nX1O467Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetListGroupByIDsAdminV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-admin-v2' \
    '{"groupIDs": ["ChzL0d8Y", "lc3E3a8v", "UiGNfG0u"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetListGroupByIDsAdminV2' test.out

#- 47 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    '9X1y2I7Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'GetUserJoinedGroupInformationPublicV2' test.out

#- 48 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "eSIPRXiH", "customAttributes": {"T8M2MXXi": {}, "Ti7joHle": {}, "ZMdIGLw8": {}}, "groupDescription": "ZCljQat9", "groupIcon": "zCnGe6lA", "groupMaxMember": 51, "groupName": "tfx9zbvQ", "groupRegion": "1LPFxTTW", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "7W6U6Ixn", "ruleDetail": [{"ruleAttribute": "vSqrkJF2", "ruleCriteria": "EQUAL", "ruleValue": 0.5621384156971133}, {"ruleAttribute": "mUVUvCPj", "ruleCriteria": "MINIMUM", "ruleValue": 0.4065625137971308}, {"ruleAttribute": "jwRFETvY", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09034862471821192}]}, {"allowedAction": "lPIws417", "ruleDetail": [{"ruleAttribute": "Syn2mjun", "ruleCriteria": "MINIMUM", "ruleValue": 0.953700838890041}, {"ruleAttribute": "TjQ1NCB6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.32210129131727705}, {"ruleAttribute": "0VMsMlLb", "ruleCriteria": "EQUAL", "ruleValue": 0.7508011075444526}]}, {"allowedAction": "jaqsY6A0", "ruleDetail": [{"ruleAttribute": "fslbp6dt", "ruleCriteria": "MINIMUM", "ruleValue": 0.42347862756372123}, {"ruleAttribute": "ii44l3c9", "ruleCriteria": "EQUAL", "ruleValue": 0.21092421216622592}, {"ruleAttribute": "5dEFisOU", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5199763427561521}]}]}, "groupType": "PUBLIC"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'CreateNewGroupPublicV2' test.out

#- 49 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["8aDCI09o", "aaJDNSII", "37AgkHdE"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'GetListGroupByIDsV2' test.out

#- 50 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "ba2HoKBV", "groupIcon": "3ftxsyIT", "groupName": "bz8YzbXl", "groupRegion": "rl7kz0VG", "groupType": "PUBLIC"}' \
    'Rpz8JPLC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'UpdatePutSingleGroupPublicV2' test.out

#- 51 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'hAVPe3Yj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'DeleteGroupPublicV2' test.out

#- 52 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "84bJQ6RF", "groupIcon": "wOJWIbZs", "groupName": "VVJATNxm", "groupRegion": "JLGCTRPn", "groupType": "PUBLIC"}' \
    'z96DeLKs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdatePatchSingleGroupPublicV2' test.out

#- 53 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"tcReG1J3": {}, "YX5mV98V": {}, "T9o0gcxy": {}}}' \
    'ZJYKEZjB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'UpdateGroupCustomAttributesPublicV2' test.out

#- 54 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    'vCpzGwtT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'AcceptGroupInvitationPublicV2' test.out

#- 55 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    'k8F7E4Ow' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'RejectGroupInvitationPublicV2' test.out

#- 56 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    '5VSsyBR1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'GetGroupInviteRequestPublicV2' test.out

#- 57 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    'ov4y0TjM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'JoinGroupV2' test.out

#- 58 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    'TkDS39qI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'GetGroupJoinRequestPublicV2' test.out

#- 59 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    'gaMC0acb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'LeaveGroupPublicV2' test.out

#- 60 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"DQcv8MWc": {}, "q28OajMv": {}, "lKoU7h5o": {}}}' \
    'UG0FUu3d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupCustomRulePublicV2' test.out

#- 61 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "TQZCVLXV", "ruleCriteria": "MINIMUM", "ruleValue": 0.22495005923774247}, {"ruleAttribute": "8G0Ns2AM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.13852239484316287}, {"ruleAttribute": "qIb8EFXI", "ruleCriteria": "MINIMUM", "ruleValue": 0.3201284732052251}]}' \
    'TThza2zA' \
    '1zd9USNR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 61 'UpdateGroupPredefinedRulePublicV2' test.out

#- 62 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    'bDGthPNR' \
    'DccTiAcN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 62 'DeleteGroupPredefinedRulePublicV2' test.out

#- 63 GetMemberRolesListPublicV2
$PYTHON -m $MODULE 'group-get-member-roles-list-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'GetMemberRolesListPublicV2' test.out

#- 64 UpdateMemberRolePublicV2
$PYTHON -m $MODULE 'group-update-member-role-public-v2' \
    '{"userId": "j6TQbnsg"}' \
    'gVXA7NuX' \
    'BLEjWDXf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 64 'UpdateMemberRolePublicV2' test.out

#- 65 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "VUbfMxJp"}' \
    'ubppnPJI' \
    'yGcdTLZr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 65 'DeleteMemberRolePublicV2' test.out

#- 66 GetUserGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-group-information-public-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 66 'GetUserGroupInformationPublicV2' test.out

#- 67 GetMyGroupJoinRequestV2
$PYTHON -m $MODULE 'group-get-my-group-join-request-v2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'GetMyGroupJoinRequestV2' test.out

#- 68 InviteGroupPublicV2
$PYTHON -m $MODULE 'group-invite-group-public-v2' \
    'JUMLtRtP' \
    '0PYXQyDj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'InviteGroupPublicV2' test.out

#- 69 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    'zvOm57sk' \
    'VGVH522a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'CancelInvitationGroupMemberV2' test.out

#- 70 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    'rwKlsyWh' \
    'Nc6hNr7j' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'AcceptGroupJoinRequestPublicV2' test.out

#- 71 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'K9L5urjb' \
    'ma3xxjzZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'RejectGroupJoinRequestPublicV2' test.out

#- 72 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    'zNhqlblb' \
    'oLw5sGAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'KickGroupMemberPublicV2' test.out

#- 73 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    'FWzdmrKD' \
    'kCK8imaW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 73 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
