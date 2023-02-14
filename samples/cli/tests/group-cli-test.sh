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
group-create-group-configuration-admin-v1 '{"allowMultiple": false, "configurationCode": "jbMzZ7nn", "description": "X5osVDID", "globalRules": [{"allowedAction": "bK4VxsJ1", "ruleDetail": [{"ruleAttribute": "48qSxuYi", "ruleCriteria": "EQUAL", "ruleValue": 0.3245895295610205}, {"ruleAttribute": "7J04lWI4", "ruleCriteria": "MINIMUM", "ruleValue": 0.21725651056365225}, {"ruleAttribute": "Fubve18V", "ruleCriteria": "EQUAL", "ruleValue": 0.8762487737792533}]}, {"allowedAction": "ioLEC57L", "ruleDetail": [{"ruleAttribute": "8aYCisPL", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6699530355429028}, {"ruleAttribute": "tvTLDlmm", "ruleCriteria": "MAXIMUM", "ruleValue": 0.66749679097074}, {"ruleAttribute": "NzK6B8wF", "ruleCriteria": "MINIMUM", "ruleValue": 0.7279271726817499}]}, {"allowedAction": "QYrOhKwg", "ruleDetail": [{"ruleAttribute": "FREOXCGi", "ruleCriteria": "MINIMUM", "ruleValue": 0.04079893461886952}, {"ruleAttribute": "HqdKkhYT", "ruleCriteria": "MINIMUM", "ruleValue": 0.7716701187053648}, {"ruleAttribute": "dzMy3Tkj", "ruleCriteria": "MINIMUM", "ruleValue": 0.48512358458791305}]}], "groupAdminRoleId": "UbSc3mIs", "groupMaxMember": 38, "groupMemberRoleId": "Vm9LEBli", "name": "2SKp8O2C"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'oZraNL59' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 'k7MkU4Qc' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "P6SiexmF", "groupMaxMember": 99, "name": "wPKTXt74"}' 'rA74mMEW' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "ZWF0exUP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7027114588495675}, {"ruleAttribute": "UDy6FsjE", "ruleCriteria": "MINIMUM", "ruleValue": 0.4750914049301569}, {"ruleAttribute": "Btcr2por", "ruleCriteria": "MINIMUM", "ruleValue": 0.3538268728710928}]}' 'B7Mkv9b6' 'cPVKYyBp' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'C4Yu8Qh9' 'qT2xxOLB' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 '6UZvch16' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'IzfmG2rz' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'yhDWIgn8' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "C1RiupHo", "memberRolePermissions": [{"action": 19, "resourceName": "yCSIMJpB"}, {"action": 45, "resourceName": "554qNsxE"}, {"action": 3, "resourceName": "n3UIEyCV"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'ezLAAFSS' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 '9UUI3llk' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "mswDlbOL"}' '12iY4uSb' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 71, "resourceName": "b8A0cOGS"}, {"action": 99, "resourceName": "VZ7xzNCe"}, {"action": 47, "resourceName": "9295CS5E"}]}' 'SrhWJhJY' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "mbLtIIBT", "customAttributes": {"a7OqKJ1Y": {}, "h6asPqlm": {}, "KE7d3R3F": {}}, "groupDescription": "9xJRz7V1", "groupIcon": "jmZMW25p", "groupMaxMember": 78, "groupName": "kpqXQLfm", "groupRegion": "8VvdjI4l", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "pE4Jfa88", "ruleDetail": [{"ruleAttribute": "UIhjQd8O", "ruleCriteria": "MINIMUM", "ruleValue": 0.06232212125732395}, {"ruleAttribute": "nLJk8v0I", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11526793333888385}, {"ruleAttribute": "3RdbXaar", "ruleCriteria": "MINIMUM", "ruleValue": 0.24692800557823757}]}, {"allowedAction": "kwh9cZRq", "ruleDetail": [{"ruleAttribute": "IJzFqxJJ", "ruleCriteria": "EQUAL", "ruleValue": 0.28022641426529415}, {"ruleAttribute": "Lns5Lbht", "ruleCriteria": "MINIMUM", "ruleValue": 0.05840232689253577}, {"ruleAttribute": "jjkVlegc", "ruleCriteria": "MAXIMUM", "ruleValue": 0.798689764604192}]}, {"allowedAction": "92B1Bg4g", "ruleDetail": [{"ruleAttribute": "VK1CAD3z", "ruleCriteria": "MINIMUM", "ruleValue": 0.2624352828468487}, {"ruleAttribute": "Dc6bpE0D", "ruleCriteria": "MINIMUM", "ruleValue": 0.8632219294702537}, {"ruleAttribute": "idEP1yI6", "ruleCriteria": "MINIMUM", "ruleValue": 0.6367490321893691}]}]}, "groupType": "StA6fGyA"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'Jbflkpo7' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "ZkPcxfGv", "groupIcon": "6iNKAFNl", "groupName": "yE0dP6Qq", "groupRegion": "wh4uWvfE", "groupType": "k4pZSZov"}' 'TUUBMcR4' --login_with_auth "Bearer foo"
group-delete-group-public-v1 '0AwxYDRD' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "S9QFWA86", "groupIcon": "IRGcy6SV", "groupName": "d2T9SztT", "groupRegion": "jk8QkU91", "groupType": "S6v5cGT5"}' 'BnZKt45q' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"dbG947ZL": {}, "NrPwWXoS": {}, "mFGYvUlM": {}}}' 'Zjc8X3Fv' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 '224yXzsy' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'caQSnr3g' --login_with_auth "Bearer foo"
group-join-group-v1 'RlVCKwza' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'w7NpXXA7' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'ZNIHm4sF' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'hgfkiyuH' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"W71yk9ST": {}, "UQ35qgUP": {}, "v7bwE1RR": {}}}' 'ft8YtniL' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "4zRgjXkM", "ruleCriteria": "MAXIMUM", "ruleValue": 0.39725819297306153}, {"ruleAttribute": "eN2WYUao", "ruleCriteria": "EQUAL", "ruleValue": 0.290998066898971}, {"ruleAttribute": "8pbc6v8c", "ruleCriteria": "MINIMUM", "ruleValue": 0.41166552891829333}]}' '7MhGpbjS' 'cOFIFkYi' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'eLKIA7gr' '7WrILSH4' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "xJ2O2nKn"}' 'QFTR9G1C' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "XdsBmYeT"}' 'E4r6TFxM' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'hpv9cK22' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'w6wWa888' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'KcvTCLzw' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'zbDdgmWN' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 '9ASLg3SX' --login_with_auth "Bearer foo"
group-get-user-joined-group-information-public-v2 'sB14hl1Q' --login_with_auth "Bearer foo"
group-create-new-group-public-v2 '{"configurationCode": "J5SdI2Pi", "customAttributes": {"bKaSgz5w": {}, "krp3TwzX": {}, "YTNisZjg": {}}, "groupDescription": "Jw9PDeY3", "groupIcon": "zZXLMDk6", "groupMaxMember": 94, "groupName": "bXM7JcT6", "groupRegion": "wlo2NueQ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "KikoDAKF", "ruleDetail": [{"ruleAttribute": "zcr69vwK", "ruleCriteria": "MAXIMUM", "ruleValue": 0.09966235878531549}, {"ruleAttribute": "K7JXhuaT", "ruleCriteria": "EQUAL", "ruleValue": 0.7357625014120778}, {"ruleAttribute": "CjVhDc6x", "ruleCriteria": "MINIMUM", "ruleValue": 0.18497540617146224}]}, {"allowedAction": "cNulMczh", "ruleDetail": [{"ruleAttribute": "MwkJOzqq", "ruleCriteria": "MINIMUM", "ruleValue": 0.336048609974814}, {"ruleAttribute": "XkhSfCsV", "ruleCriteria": "MINIMUM", "ruleValue": 0.5290633254460626}, {"ruleAttribute": "V5389mdC", "ruleCriteria": "EQUAL", "ruleValue": 0.16627349584827023}]}, {"allowedAction": "njBD8Iu8", "ruleDetail": [{"ruleAttribute": "7xh1lEXV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1280704316663861}, {"ruleAttribute": "k5m49bHl", "ruleCriteria": "MAXIMUM", "ruleValue": 0.41891177744631614}, {"ruleAttribute": "eMOJpW1e", "ruleCriteria": "EQUAL", "ruleValue": 0.48807294192029815}]}]}, "groupType": "BYhruheF"}' --login_with_auth "Bearer foo"
group-get-list-group-by-i-ds-v2 '{"groupIDs": ["aXcSkm2X", "Vvbzcst3", "Os8HnWe8"]}' --login_with_auth "Bearer foo"
group-update-put-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "8cDTJl4y", "groupIcon": "4jGIdGDC", "groupName": "UBPx13Tb", "groupRegion": "BXJDhsIb", "groupType": "z2ELgUIS"}' 'n7Y1FXVk' --login_with_auth "Bearer foo"
group-delete-group-public-v2 'eNgLu6OS' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v2 '{"customAttributes": {}, "groupDescription": "KvkFZaQ1", "groupIcon": "vIHtPPDa", "groupName": "I5kRUG4M", "groupRegion": "Qg7o0XYb", "groupType": "Mo057Omo"}' 'JNo3kozt' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v2 '{"customAttributes": {"Bg1phlZ3": {}, "110GH0p7": {}, "CGIMVtcD": {}}}' 'nftnGohy' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v2 'MYhzJy8T' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v2 '5WT4rtZU' --login_with_auth "Bearer foo"
group-get-group-invite-request-public-v2 '8ih0uAhl' --login_with_auth "Bearer foo"
group-join-group-v2 '8SvkGCTa' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v2 'lZY8cUBd' --login_with_auth "Bearer foo"
group-leave-group-public-v2 'Pj5j1ak2' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v2 '{"groupCustomRule": {"bTRpj4EG": {}, "wnSypQYs": {}, "HqzCorwm": {}}}' 'tF6Q3Wq8' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v2 '{"ruleDetail": [{"ruleAttribute": "MuoLOGqQ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.14304629605410035}, {"ruleAttribute": "V2Lkz280", "ruleCriteria": "MINIMUM", "ruleValue": 0.014392466301123452}, {"ruleAttribute": "pFyPcCMb", "ruleCriteria": "MINIMUM", "ruleValue": 0.23618886951183482}]}' 'wNFYKJn2' 'TVbrlumP' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v2 '0KCaBRKv' 'PTObUGt4' --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v2 --login_with_auth "Bearer foo"
group-update-member-role-public-v2 '{"userId": "whcDYQ21"}' 'mjSRJrcc' 'Mll60b1W' --login_with_auth "Bearer foo"
group-delete-member-role-public-v2 '{"userId": "ID9lp9zJ"}' '77QmO2f8' '3aqyLY3F' --login_with_auth "Bearer foo"
group-get-user-group-information-public-v2 --login_with_auth "Bearer foo"
group-get-my-group-join-request-v2 --login_with_auth "Bearer foo"
group-invite-group-public-v2 'aEOuDs4e' 'L2scYPqK' --login_with_auth "Bearer foo"
group-cancel-invitation-group-member-v2 'igLTbKJI' 'imLsjZKh' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v2 'qVgcs3iz' '4vsyKZtm' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v2 'bTBAgfaL' 'SLHUu3DT' --login_with_auth "Bearer foo"
group-kick-group-member-public-v2 'CSo4RXmo' 'xRSg5R7k' --login_with_auth "Bearer foo"
group-get-user-group-status-information-v2 'IiXxHF1V' 'Btpl1Sue' --login_with_auth "Bearer foo"
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
    '{"allowMultiple": false, "configurationCode": "fc00euqM", "description": "5nZCQOVl", "globalRules": [{"allowedAction": "D0Sv2iBx", "ruleDetail": [{"ruleAttribute": "82wWZrNr", "ruleCriteria": "MINIMUM", "ruleValue": 0.16955265232315653}, {"ruleAttribute": "aj1smqpX", "ruleCriteria": "MINIMUM", "ruleValue": 0.22866623448389234}, {"ruleAttribute": "DOJ38zLV", "ruleCriteria": "MINIMUM", "ruleValue": 0.15941679784192853}]}, {"allowedAction": "A3NQuJA9", "ruleDetail": [{"ruleAttribute": "Vv5281f5", "ruleCriteria": "MAXIMUM", "ruleValue": 0.755501480562522}, {"ruleAttribute": "GZaWOYIf", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7064316111383773}, {"ruleAttribute": "47WUm9cs", "ruleCriteria": "MINIMUM", "ruleValue": 0.4684733137980923}]}, {"allowedAction": "wKinncQ0", "ruleDetail": [{"ruleAttribute": "P4hMsmPY", "ruleCriteria": "MINIMUM", "ruleValue": 0.046435445283019905}, {"ruleAttribute": "2vl4tviZ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1889875969238375}, {"ruleAttribute": "cwijSTHZ", "ruleCriteria": "EQUAL", "ruleValue": 0.18167500941880776}]}], "groupAdminRoleId": "8uLdmJR4", "groupMaxMember": 60, "groupMemberRoleId": "bROXinM9", "name": "ibYIDGwa"}' \
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
    'qfU3zHl0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'Sc1kAZl2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "U8beZxGc", "groupMaxMember": 95, "name": "ePUMTpih"}' \
    '6b9sO2A4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "5ZxbuSa6", "ruleCriteria": "MAXIMUM", "ruleValue": 0.6776715721096439}, {"ruleAttribute": "xYheVyY7", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5380810578147976}, {"ruleAttribute": "pZZDkC5O", "ruleCriteria": "MINIMUM", "ruleValue": 0.011604026085751729}]}' \
    'OlKt4trB' \
    'HBT6bvAl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'f1qmORq4' \
    'c09QAbyL' \
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
    'Lb0KMY4l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'PFVOs7na' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'nR8teJpT' \
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
    '{"memberRoleName": "sbf7hVna", "memberRolePermissions": [{"action": 47, "resourceName": "iMjiO3Kt"}, {"action": 54, "resourceName": "tqZXqOsm"}, {"action": 53, "resourceName": "FerN5BrC"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'AYr6N0cU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    '0DjOduyO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "3vI5wWEl"}' \
    '7b0Id0Ci' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 94, "resourceName": "geRX8IrM"}, {"action": 84, "resourceName": "DLjsVfsz"}, {"action": 94, "resourceName": "bEJ44jXN"}]}' \
    'mhtaNIoI' \
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
    '{"configurationCode": "AasBe9ZB", "customAttributes": {"J3hUU0EQ": {}, "pFLb5PYY": {}, "ZummCIDs": {}}, "groupDescription": "eQor421K", "groupIcon": "cwDAZwGJ", "groupMaxMember": 19, "groupName": "1bHCb8Ft", "groupRegion": "Gy1JYagn", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "EcBt1kVB", "ruleDetail": [{"ruleAttribute": "fntvRAhF", "ruleCriteria": "MINIMUM", "ruleValue": 0.2925965998442751}, {"ruleAttribute": "Bv2kdQtN", "ruleCriteria": "EQUAL", "ruleValue": 0.016926281183100356}, {"ruleAttribute": "quKJpRFy", "ruleCriteria": "EQUAL", "ruleValue": 0.9729050203952876}]}, {"allowedAction": "VXJxG2Km", "ruleDetail": [{"ruleAttribute": "ZMxWHJVM", "ruleCriteria": "MINIMUM", "ruleValue": 0.5663016672499355}, {"ruleAttribute": "dYUxWO6a", "ruleCriteria": "MINIMUM", "ruleValue": 0.7676433647463553}, {"ruleAttribute": "N7HnhzAx", "ruleCriteria": "EQUAL", "ruleValue": 0.7252292499890399}]}, {"allowedAction": "2xOwdqxr", "ruleDetail": [{"ruleAttribute": "sRU86nlq", "ruleCriteria": "MAXIMUM", "ruleValue": 0.20563544217805585}, {"ruleAttribute": "6Jsc2Xrb", "ruleCriteria": "EQUAL", "ruleValue": 0.4380039570339591}, {"ruleAttribute": "zPOen78w", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8776894980035519}]}]}, "groupType": "HeJpf46n"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'Fr9OnTZE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "N3ugGZUF", "groupIcon": "eAJIujN5", "groupName": "WdldmwPw", "groupRegion": "fTwFziEf", "groupType": "jSzJnzr8"}' \
    'FAC2bIhd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'z3qmwBlK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "XibpWDGv", "groupIcon": "jrAC9XiN", "groupName": "jUB2qBKh", "groupRegion": "u8ddlfDj", "groupType": "tip2vseF"}' \
    'PAbe3sQe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"5wxJb5q4": {}, "ACsMB73m": {}, "kP8pc5g5": {}}}' \
    '7uWu951c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'OzLnKY2b' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'ptLr8K9t' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'QWvD343k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'HTJplrWf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'tM2H4Z0P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'lX96kRoh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"LLDMpXd3": {}, "Mxv21q3V": {}, "asm00d39": {}}}' \
    'Ng8165Fo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "boE9Zyhe", "ruleCriteria": "EQUAL", "ruleValue": 0.7622465097362406}, {"ruleAttribute": "0Vc6cKT9", "ruleCriteria": "MINIMUM", "ruleValue": 0.01627011951805979}, {"ruleAttribute": "lp5zV7sn", "ruleCriteria": "EQUAL", "ruleValue": 0.8030112523932263}]}' \
    'ftOjyAUs' \
    'AoLItO4m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    '0scUDAQh' \
    'xzZebJHZ' \
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
    '{"userId": "V9oyshwH"}' \
    'r6Ag5dWD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "Fruvyz61"}' \
    'VNdXXuUs' \
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
    'TyhRLFKl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'E5iuaP6E' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'QeO0eAzK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'ujlkLvFX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    '0TGKBGoX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out

#- 46 GetUserJoinedGroupInformationPublicV2
$PYTHON -m $MODULE 'group-get-user-joined-group-information-public-v2' \
    'EfrrpaYK' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 46 'GetUserJoinedGroupInformationPublicV2' test.out

#- 47 CreateNewGroupPublicV2
$PYTHON -m $MODULE 'group-create-new-group-public-v2' \
    '{"configurationCode": "RbVi5zCD", "customAttributes": {"9eHp8z1b": {}, "KU9E1jEp": {}, "ZPWoni7X": {}}, "groupDescription": "00Zy99cs", "groupIcon": "5F2BeFSc", "groupMaxMember": 2, "groupName": "WeGyczsO", "groupRegion": "wS3Ox2oJ", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "MY5X7F6n", "ruleDetail": [{"ruleAttribute": "xP81Dt33", "ruleCriteria": "MINIMUM", "ruleValue": 0.9340933195138952}, {"ruleAttribute": "5pVBHpt6", "ruleCriteria": "EQUAL", "ruleValue": 0.24398545411837214}, {"ruleAttribute": "RZKMWuZm", "ruleCriteria": "EQUAL", "ruleValue": 0.2727148333150966}]}, {"allowedAction": "rjSS0VHl", "ruleDetail": [{"ruleAttribute": "gfwUMvHn", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7600870178373107}, {"ruleAttribute": "NQiHdezv", "ruleCriteria": "MINIMUM", "ruleValue": 0.9810016264630177}, {"ruleAttribute": "T1C0rAQ4", "ruleCriteria": "MINIMUM", "ruleValue": 0.8442014674880765}]}, {"allowedAction": "2dLpvyHu", "ruleDetail": [{"ruleAttribute": "qC8rRvjF", "ruleCriteria": "MINIMUM", "ruleValue": 0.5129159408179614}, {"ruleAttribute": "p13iKRMz", "ruleCriteria": "MINIMUM", "ruleValue": 0.4916427327522278}, {"ruleAttribute": "X3gGA6ep", "ruleCriteria": "MINIMUM", "ruleValue": 0.7160090754481022}]}]}, "groupType": "k0EXLL9U"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 47 'CreateNewGroupPublicV2' test.out

#- 48 GetListGroupByIDsV2
$PYTHON -m $MODULE 'group-get-list-group-by-i-ds-v2' \
    '{"groupIDs": ["a0XHQb8Q", "ujTQGjRd", "w1uf3bQA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 48 'GetListGroupByIDsV2' test.out

#- 49 UpdatePutSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-put-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "1oKQtz8C", "groupIcon": "S3dcsjPo", "groupName": "gERhj0XK", "groupRegion": "1D8fpPBh", "groupType": "4hNPg0hG"}' \
    'hWKinFEj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 49 'UpdatePutSingleGroupPublicV2' test.out

#- 50 DeleteGroupPublicV2
$PYTHON -m $MODULE 'group-delete-group-public-v2' \
    'BpruTz90' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 50 'DeleteGroupPublicV2' test.out

#- 51 UpdatePatchSingleGroupPublicV2
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v2' \
    '{"customAttributes": {}, "groupDescription": "3prWVF3c", "groupIcon": "tsAc0AGe", "groupName": "zNidGU3V", "groupRegion": "7d9n2l4l", "groupType": "AybQJ9NH"}' \
    '0spFhTF3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 51 'UpdatePatchSingleGroupPublicV2' test.out

#- 52 UpdateGroupCustomAttributesPublicV2
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v2' \
    '{"customAttributes": {"n992XoRw": {}, "cCGqXdY0": {}, "FvcDnvYX": {}}}' \
    'xA9ZzqhL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 52 'UpdateGroupCustomAttributesPublicV2' test.out

#- 53 AcceptGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v2' \
    '5QRYBDke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 53 'AcceptGroupInvitationPublicV2' test.out

#- 54 RejectGroupInvitationPublicV2
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v2' \
    'hkjhupmh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 54 'RejectGroupInvitationPublicV2' test.out

#- 55 GetGroupInviteRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-invite-request-public-v2' \
    'BEGpQ6ta' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 55 'GetGroupInviteRequestPublicV2' test.out

#- 56 JoinGroupV2
$PYTHON -m $MODULE 'group-join-group-v2' \
    '7zLwW8KR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 56 'JoinGroupV2' test.out

#- 57 GetGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-get-group-join-request-public-v2' \
    'ZhqpEByI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 57 'GetGroupJoinRequestPublicV2' test.out

#- 58 LeaveGroupPublicV2
$PYTHON -m $MODULE 'group-leave-group-public-v2' \
    '6vqRA6CH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 58 'LeaveGroupPublicV2' test.out

#- 59 UpdateGroupCustomRulePublicV2
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v2' \
    '{"groupCustomRule": {"kjAuvnet": {}, "JGX7CBOQ": {}, "Ac4I9LaZ": {}}}' \
    'MLMMXgc4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 59 'UpdateGroupCustomRulePublicV2' test.out

#- 60 UpdateGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v2' \
    '{"ruleDetail": [{"ruleAttribute": "bTHEfHgy", "ruleCriteria": "MAXIMUM", "ruleValue": 0.8940430135631235}, {"ruleAttribute": "3LqmFck7", "ruleCriteria": "MINIMUM", "ruleValue": 0.6610881791697722}, {"ruleAttribute": "Y8wFvEcS", "ruleCriteria": "EQUAL", "ruleValue": 0.005269739862140965}]}' \
    'f5RynPKG' \
    'KxYdJ21c' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 60 'UpdateGroupPredefinedRulePublicV2' test.out

#- 61 DeleteGroupPredefinedRulePublicV2
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v2' \
    'IoLMahBy' \
    'pVplR8h8' \
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
    '{"userId": "2CB6sVq5"}' \
    'Z6lP3iId' \
    'VX8L7zfd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 63 'UpdateMemberRolePublicV2' test.out

#- 64 DeleteMemberRolePublicV2
$PYTHON -m $MODULE 'group-delete-member-role-public-v2' \
    '{"userId": "h4ilpqY7"}' \
    'uBF2VFlH' \
    '7iB1XtOU' \
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
    'g9ZbgawK' \
    'bL1PHiTI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 67 'InviteGroupPublicV2' test.out

#- 68 CancelInvitationGroupMemberV2
$PYTHON -m $MODULE 'group-cancel-invitation-group-member-v2' \
    'cZICkMCm' \
    'GzxN0l7h' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 68 'CancelInvitationGroupMemberV2' test.out

#- 69 AcceptGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v2' \
    'CUbwJZ1E' \
    'W0GmfUPG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 69 'AcceptGroupJoinRequestPublicV2' test.out

#- 70 RejectGroupJoinRequestPublicV2
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v2' \
    'qTXIwa7f' \
    'lnk9UXC2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 70 'RejectGroupJoinRequestPublicV2' test.out

#- 71 KickGroupMemberPublicV2
$PYTHON -m $MODULE 'group-kick-group-member-public-v2' \
    'K923YR70' \
    'UJWLeUqf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 71 'KickGroupMemberPublicV2' test.out

#- 72 GetUserGroupStatusInformationV2
$PYTHON -m $MODULE 'group-get-user-group-status-information-v2' \
    '7akw5a4o' \
    'SAfmkBv4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 72 'GetUserGroupStatusInformationV2' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
