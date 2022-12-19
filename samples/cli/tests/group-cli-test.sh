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
group-create-group-configuration-admin-v1 '{"configurationCode": "k6aT7Rr2", "description": "j7IiVZVe", "globalRules": [{"allowedAction": "NAkdMxNY", "ruleDetail": [{"ruleAttribute": "cbgXe760", "ruleCriteria": "EQUAL", "ruleValue": 0.3825768721613324}, {"ruleAttribute": "9vTftPgB", "ruleCriteria": "EQUAL", "ruleValue": 0.9215127242589303}, {"ruleAttribute": "1lUGv7GP", "ruleCriteria": "MAXIMUM", "ruleValue": 0.032045823579017196}]}, {"allowedAction": "NxyTSUfF", "ruleDetail": [{"ruleAttribute": "dE45R3GG", "ruleCriteria": "EQUAL", "ruleValue": 0.3400367723622022}, {"ruleAttribute": "pbb7z6Fx", "ruleCriteria": "MAXIMUM", "ruleValue": 0.9927966240089602}, {"ruleAttribute": "HJxLwNY3", "ruleCriteria": "MAXIMUM", "ruleValue": 0.48476914420341644}]}, {"allowedAction": "mZ35C59z", "ruleDetail": [{"ruleAttribute": "1X3hV2nI", "ruleCriteria": "EQUAL", "ruleValue": 0.1499255302209277}, {"ruleAttribute": "PDwJmMee", "ruleCriteria": "EQUAL", "ruleValue": 0.085813853803686}, {"ruleAttribute": "NTt0xZrI", "ruleCriteria": "MAXIMUM", "ruleValue": 0.21064808172449112}]}], "groupAdminRoleId": "DJUkiSIt", "groupMaxMember": 56, "groupMemberRoleId": "5kO6uxNa", "name": "kkmhktmG"}' --login_with_auth "Bearer foo"
group-initiate-group-configuration-admin-v1 --login_with_auth "Bearer foo"
group-get-group-configuration-admin-v1 'qEkMboyk' --login_with_auth "Bearer foo"
group-delete-group-configuration-v1 '3MwSXIXE' --login_with_auth "Bearer foo"
group-update-group-configuration-admin-v1 '{"description": "jFZNUQ6c", "groupMaxMember": 30, "name": "s5OsMvup"}' 'UQHAn2Dl' --login_with_auth "Bearer foo"
group-update-group-configuration-global-rule-admin-v1 '{"ruleDetail": [{"ruleAttribute": "GeRtZTSc", "ruleCriteria": "EQUAL", "ruleValue": 0.007137290939983942}, {"ruleAttribute": "WKxmFofn", "ruleCriteria": "EQUAL", "ruleValue": 0.052737106841463044}, {"ruleAttribute": "tm0R1wbS", "ruleCriteria": "MINIMUM", "ruleValue": 0.09951261277619139}]}' 'fNaP13lB' 'og9r3bCU' --login_with_auth "Bearer foo"
group-delete-group-configuration-global-rule-admin-v1 'ywcIEQIS' 'Awh2QNZD' --login_with_auth "Bearer foo"
group-get-group-list-admin-v1 --login_with_auth "Bearer foo"
group-get-single-group-admin-v1 'xyG6qgXx' --login_with_auth "Bearer foo"
group-delete-group-admin-v1 'kFpbULry' --login_with_auth "Bearer foo"
group-get-group-members-list-admin-v1 'FfMy6i9v' --login_with_auth "Bearer foo"
group-get-member-roles-list-admin-v1 --login_with_auth "Bearer foo"
group-create-member-role-admin-v1 '{"memberRoleName": "vhPZ1RVp", "memberRolePermissions": [{"action": 80, "resourceName": "whGLoosT"}, {"action": 5, "resourceName": "p0jyZpC1"}, {"action": 37, "resourceName": "3DprI3ZC"}]}' --login_with_auth "Bearer foo"
group-get-single-member-role-admin-v1 'uueNfVm8' --login_with_auth "Bearer foo"
group-delete-member-role-admin-v1 'Py4nYCuC' --login_with_auth "Bearer foo"
group-update-member-role-admin-v1 '{"memberRoleName": "VsmubA7B"}' 'uzchiH0p' --login_with_auth "Bearer foo"
group-update-member-role-permission-admin-v1 '{"memberRolePermissions": [{"action": 40, "resourceName": "uRU2PrEQ"}, {"action": 95, "resourceName": "tBhtDqeO"}, {"action": 21, "resourceName": "XjAsJAsK"}]}' 'KltKbwVh' --login_with_auth "Bearer foo"
group-get-group-list-public-v1 --login_with_auth "Bearer foo"
group-create-new-group-public-v1 '{"configurationCode": "tgrZ1CKn", "customAttributes": {"6SMAsTCZ": {}, "5ECfTcIb": {}, "UAxewt0t": {}}, "groupDescription": "1auYfRzg", "groupIcon": "fCPv7GqR", "groupMaxMember": 72, "groupName": "YRc7FKUE", "groupRegion": "iFOKvyUV", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "kkE7Q8kk", "ruleDetail": [{"ruleAttribute": "DrS6kEES", "ruleCriteria": "MINIMUM", "ruleValue": 0.10307016608558373}, {"ruleAttribute": "yzkFNyRG", "ruleCriteria": "EQUAL", "ruleValue": 0.013595087839971431}, {"ruleAttribute": "VTkMQvB4", "ruleCriteria": "MINIMUM", "ruleValue": 0.42263019882069985}]}, {"allowedAction": "qWCTcPD3", "ruleDetail": [{"ruleAttribute": "JDtzucE1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.22882084725498086}, {"ruleAttribute": "pqPKsXoi", "ruleCriteria": "EQUAL", "ruleValue": 0.9809547238161587}, {"ruleAttribute": "OcHfnmTX", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7107488282271618}]}, {"allowedAction": "qymFjQKb", "ruleDetail": [{"ruleAttribute": "Q4C3Cwei", "ruleCriteria": "MAXIMUM", "ruleValue": 0.4058030899281271}, {"ruleAttribute": "x7sLaRik", "ruleCriteria": "MINIMUM", "ruleValue": 0.8032734206271906}, {"ruleAttribute": "CwW0PuAS", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5274534476816034}]}]}, "groupType": "kU46xM7W"}' --login_with_auth "Bearer foo"
group-get-single-group-public-v1 'q3MeZZag' --login_with_auth "Bearer foo"
group-update-single-group-v1 '{"customAttributes": {}, "groupDescription": "1kX2CyGf", "groupIcon": "AlTpCBM8", "groupName": "MArmf1qd", "groupRegion": "Jc6BQlXC", "groupType": "DeAcRwBF"}' 'LzvhBobK' --login_with_auth "Bearer foo"
group-delete-group-public-v1 'xxaUTvO6' --login_with_auth "Bearer foo"
group-update-patch-single-group-public-v1 '{"customAttributes": {}, "groupDescription": "sySXfSdo", "groupIcon": "eB9biMMt", "groupName": "KhN1CE34", "groupRegion": "Dn0moPQA", "groupType": "IDorK0d9"}' '5vHbfVEn' --login_with_auth "Bearer foo"
group-update-group-custom-attributes-public-v1 '{"customAttributes": {"gdYlSWUl": {}, "JOzCPbXg": {}, "AcbpGxl6": {}}}' 'ILIXktCo' --login_with_auth "Bearer foo"
group-accept-group-invitation-public-v1 'MWKwYrB0' --login_with_auth "Bearer foo"
group-reject-group-invitation-public-v1 'FNSNc2rJ' --login_with_auth "Bearer foo"
group-join-group-v1 'mPlcX6Sn' --login_with_auth "Bearer foo"
group-cancel-group-join-request-v1 'fmmo2EOJ' --login_with_auth "Bearer foo"
group-get-group-join-request-public-v1 'jNPqovxo' --login_with_auth "Bearer foo"
group-get-group-members-list-public-v1 'jlEt2zNB' --login_with_auth "Bearer foo"
group-update-group-custom-rule-public-v1 '{"groupCustomRule": {"kR83abxi": {}, "EPXEXKfp": {}, "nX5ZKBa8": {}}}' 'g4RuYrgJ' --login_with_auth "Bearer foo"
group-update-group-predefined-rule-public-v1 '{"ruleDetail": [{"ruleAttribute": "1BrQJpAs", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3555115836771956}, {"ruleAttribute": "QpGP8Z7U", "ruleCriteria": "EQUAL", "ruleValue": 0.6013040114537164}, {"ruleAttribute": "bNQdsHq1", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2873733170565741}]}' 'Giu2utDv' 'ndoxCk1G' --login_with_auth "Bearer foo"
group-delete-group-predefined-rule-public-v1 'gFGZxIqr' 'UKpAoE3a' --login_with_auth "Bearer foo"
group-leave-group-public-v1 --login_with_auth "Bearer foo"
group-get-member-roles-list-public-v1 --login_with_auth "Bearer foo"
group-update-member-role-public-v1 '{"userId": "sozLeEro"}' 'If7mn0Zo' --login_with_auth "Bearer foo"
group-delete-member-role-public-v1 '{"userId": "peLyLCLi"}' 'mlyabp29' --login_with_auth "Bearer foo"
group-get-group-invitation-request-public-v1 --login_with_auth "Bearer foo"
group-get-user-group-information-public-v1 'n1YOmRxc' --login_with_auth "Bearer foo"
group-invite-group-public-v1 'Xn0UkoFN' --login_with_auth "Bearer foo"
group-accept-group-join-request-public-v1 'VwMrQgPD' --login_with_auth "Bearer foo"
group-reject-group-join-request-public-v1 'U6YWOCLY' --login_with_auth "Bearer foo"
group-kick-group-member-public-v1 'KVhgAcbO' --login_with_auth "Bearer foo"
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
    '{"configurationCode": "6CXqulCP", "description": "tc6lBwiN", "globalRules": [{"allowedAction": "3p6fUv95", "ruleDetail": [{"ruleAttribute": "uwtEJt0e", "ruleCriteria": "MINIMUM", "ruleValue": 0.7601927916896143}, {"ruleAttribute": "GLveOcHV", "ruleCriteria": "MAXIMUM", "ruleValue": 0.3593962818808055}, {"ruleAttribute": "G328TcQJ", "ruleCriteria": "MAXIMUM", "ruleValue": 0.1193978209337967}]}, {"allowedAction": "dtbQnCVr", "ruleDetail": [{"ruleAttribute": "rYac83zg", "ruleCriteria": "MINIMUM", "ruleValue": 0.7837352672451678}, {"ruleAttribute": "F2mxdLqP", "ruleCriteria": "EQUAL", "ruleValue": 0.634075848233672}, {"ruleAttribute": "ky5xdNYK", "ruleCriteria": "EQUAL", "ruleValue": 0.10704357027272482}]}, {"allowedAction": "psHcas8V", "ruleDetail": [{"ruleAttribute": "qvNxXJEw", "ruleCriteria": "MAXIMUM", "ruleValue": 0.2030574012761719}, {"ruleAttribute": "2GAxZWoj", "ruleCriteria": "MAXIMUM", "ruleValue": 0.7647179218256531}, {"ruleAttribute": "PvLVR1q1", "ruleCriteria": "EQUAL", "ruleValue": 0.7532832710905981}]}], "groupAdminRoleId": "GZP6PsXl", "groupMaxMember": 5, "groupMemberRoleId": "Tdfj9VTk", "name": "Rkyq3Fei"}' \
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
    'AyE11ZPb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'GetGroupConfigurationAdminV1' test.out

#- 6 DeleteGroupConfigurationV1
$PYTHON -m $MODULE 'group-delete-group-configuration-v1' \
    'z2d3MmTM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'DeleteGroupConfigurationV1' test.out

#- 7 UpdateGroupConfigurationAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-admin-v1' \
    '{"description": "ty0Ta2hj", "groupMaxMember": 82, "name": "fubNAvUN"}' \
    'dVYplPe7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'UpdateGroupConfigurationAdminV1' test.out

#- 8 UpdateGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-update-group-configuration-global-rule-admin-v1' \
    '{"ruleDetail": [{"ruleAttribute": "TTzAVVdv", "ruleCriteria": "MAXIMUM", "ruleValue": 0.5768864402116012}, {"ruleAttribute": "f8k7lKEj", "ruleCriteria": "EQUAL", "ruleValue": 0.22946382569876456}, {"ruleAttribute": "IvUFTgfc", "ruleCriteria": "EQUAL", "ruleValue": 0.07718313342163119}]}' \
    'NoXrq0pU' \
    'PVHHzCFs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'UpdateGroupConfigurationGlobalRuleAdminV1' test.out

#- 9 DeleteGroupConfigurationGlobalRuleAdminV1
$PYTHON -m $MODULE 'group-delete-group-configuration-global-rule-admin-v1' \
    'qIXszBzx' \
    '4bRDzwzD' \
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
    'DPFWW2DM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'GetSingleGroupAdminV1' test.out

#- 12 DeleteGroupAdminV1
$PYTHON -m $MODULE 'group-delete-group-admin-v1' \
    'eLrxt9f8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'DeleteGroupAdminV1' test.out

#- 13 GetGroupMembersListAdminV1
$PYTHON -m $MODULE 'group-get-group-members-list-admin-v1' \
    'RW7k6VzY' \
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
    '{"memberRoleName": "MAVG8csw", "memberRolePermissions": [{"action": 68, "resourceName": "nP9jmHNm"}, {"action": 20, "resourceName": "7xqHhCLl"}, {"action": 75, "resourceName": "TsVfQ3YT"}]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'CreateMemberRoleAdminV1' test.out

#- 16 GetSingleMemberRoleAdminV1
$PYTHON -m $MODULE 'group-get-single-member-role-admin-v1' \
    'AibsRnnW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetSingleMemberRoleAdminV1' test.out

#- 17 DeleteMemberRoleAdminV1
$PYTHON -m $MODULE 'group-delete-member-role-admin-v1' \
    '19EXmyq2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'DeleteMemberRoleAdminV1' test.out

#- 18 UpdateMemberRoleAdminV1
$PYTHON -m $MODULE 'group-update-member-role-admin-v1' \
    '{"memberRoleName": "AZCUTJ5o"}' \
    'qc5r6wSF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'UpdateMemberRoleAdminV1' test.out

#- 19 UpdateMemberRolePermissionAdminV1
$PYTHON -m $MODULE 'group-update-member-role-permission-admin-v1' \
    '{"memberRolePermissions": [{"action": 58, "resourceName": "RbxFvVEc"}, {"action": 97, "resourceName": "ZUj83H4u"}, {"action": 28, "resourceName": "Ieow13Nv"}]}' \
    'Ymb9p14f' \
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
    '{"configurationCode": "d9L5kEtK", "customAttributes": {"ZSWZnJzm": {}, "cvG2cwMx": {}, "DXFwCf2p": {}}, "groupDescription": "NpxFykRX", "groupIcon": "AGtLy2ps", "groupMaxMember": 98, "groupName": "UQMk9QaL", "groupRegion": "Y7ZN1o4t", "groupRules": {"groupCustomRule": {}, "groupPredefinedRules": [{"allowedAction": "VJCxVCwT", "ruleDetail": [{"ruleAttribute": "sDV8sJuo", "ruleCriteria": "MAXIMUM", "ruleValue": 0.11945886661988425}, {"ruleAttribute": "EdaDetM0", "ruleCriteria": "MAXIMUM", "ruleValue": 0.29672164091013686}, {"ruleAttribute": "9q7jI5iQ", "ruleCriteria": "MINIMUM", "ruleValue": 0.055081200921677675}]}, {"allowedAction": "4JjgeekS", "ruleDetail": [{"ruleAttribute": "75gQWHVE", "ruleCriteria": "EQUAL", "ruleValue": 0.10769545973119177}, {"ruleAttribute": "PYvmq6V4", "ruleCriteria": "MINIMUM", "ruleValue": 0.9823197240470549}, {"ruleAttribute": "gG9ISoiB", "ruleCriteria": "EQUAL", "ruleValue": 0.3905622625882761}]}, {"allowedAction": "8dSQ41Rh", "ruleDetail": [{"ruleAttribute": "15HlM86i", "ruleCriteria": "MINIMUM", "ruleValue": 0.4210855700180036}, {"ruleAttribute": "6yPNK6qD", "ruleCriteria": "MINIMUM", "ruleValue": 0.6398657656386487}, {"ruleAttribute": "45m3CWSv", "ruleCriteria": "EQUAL", "ruleValue": 0.28004635756244345}]}]}, "groupType": "WW6l3lTv"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'CreateNewGroupPublicV1' test.out

#- 22 GetSingleGroupPublicV1
$PYTHON -m $MODULE 'group-get-single-group-public-v1' \
    'v5kvUl4f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'GetSingleGroupPublicV1' test.out

#- 23 UpdateSingleGroupV1
$PYTHON -m $MODULE 'group-update-single-group-v1' \
    '{"customAttributes": {}, "groupDescription": "48g0JAYm", "groupIcon": "2M3UhO7h", "groupName": "ps9AHLUL", "groupRegion": "ff9tH3jY", "groupType": "PNpqxGTQ"}' \
    '5Yt5lAUI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateSingleGroupV1' test.out

#- 24 DeleteGroupPublicV1
$PYTHON -m $MODULE 'group-delete-group-public-v1' \
    'LFF9pEZt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteGroupPublicV1' test.out

#- 25 UpdatePatchSingleGroupPublicV1
$PYTHON -m $MODULE 'group-update-patch-single-group-public-v1' \
    '{"customAttributes": {}, "groupDescription": "pFY91m7z", "groupIcon": "MPYxxAc3", "groupName": "i0bYv3o9", "groupRegion": "LC9ToLyQ", "groupType": "e8EVGYNV"}' \
    '37ns6uAf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdatePatchSingleGroupPublicV1' test.out

#- 26 UpdateGroupCustomAttributesPublicV1
$PYTHON -m $MODULE 'group-update-group-custom-attributes-public-v1' \
    '{"customAttributes": {"ciH9ngFN": {}, "ect2c8Q3": {}, "g50uHgi6": {}}}' \
    'ws09WHu3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'UpdateGroupCustomAttributesPublicV1' test.out

#- 27 AcceptGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-accept-group-invitation-public-v1' \
    'lqtKndcG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AcceptGroupInvitationPublicV1' test.out

#- 28 RejectGroupInvitationPublicV1
$PYTHON -m $MODULE 'group-reject-group-invitation-public-v1' \
    'm39S2UQJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'RejectGroupInvitationPublicV1' test.out

#- 29 JoinGroupV1
$PYTHON -m $MODULE 'group-join-group-v1' \
    'FuLpQKne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'JoinGroupV1' test.out

#- 30 CancelGroupJoinRequestV1
$PYTHON -m $MODULE 'group-cancel-group-join-request-v1' \
    'JRtDPZ4U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'CancelGroupJoinRequestV1' test.out

#- 31 GetGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-get-group-join-request-public-v1' \
    'NHpLH0dw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'GetGroupJoinRequestPublicV1' test.out

#- 32 GetGroupMembersListPublicV1
$PYTHON -m $MODULE 'group-get-group-members-list-public-v1' \
    'zqN40c3y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetGroupMembersListPublicV1' test.out

#- 33 UpdateGroupCustomRulePublicV1
$PYTHON -m $MODULE 'group-update-group-custom-rule-public-v1' \
    '{"groupCustomRule": {"4AXcrxa1": {}, "zA5oameL": {}, "gIbqSRj1": {}}}' \
    'k6G9zvOZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateGroupCustomRulePublicV1' test.out

#- 34 UpdateGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-update-group-predefined-rule-public-v1' \
    '{"ruleDetail": [{"ruleAttribute": "24dSCQ47", "ruleCriteria": "MINIMUM", "ruleValue": 0.7332893883840631}, {"ruleAttribute": "UllvA2cm", "ruleCriteria": "EQUAL", "ruleValue": 0.9195020800999322}, {"ruleAttribute": "rdFqrDPe", "ruleCriteria": "MINIMUM", "ruleValue": 0.6496964257802781}]}' \
    'Q08qsmu6' \
    'SlFpBtfv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'UpdateGroupPredefinedRulePublicV1' test.out

#- 35 DeleteGroupPredefinedRulePublicV1
$PYTHON -m $MODULE 'group-delete-group-predefined-rule-public-v1' \
    '5SLvDZvs' \
    'CXbXPvZu' \
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
    '{"userId": "4TxA3YTq"}' \
    'w5D8Er1I' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'UpdateMemberRolePublicV1' test.out

#- 39 DeleteMemberRolePublicV1
$PYTHON -m $MODULE 'group-delete-member-role-public-v1' \
    '{"userId": "KxuP26BG"}' \
    'XPWfJsKF' \
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
    'BF1izHAo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'GetUserGroupInformationPublicV1' test.out

#- 42 InviteGroupPublicV1
$PYTHON -m $MODULE 'group-invite-group-public-v1' \
    'kq24hybw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 42 'InviteGroupPublicV1' test.out

#- 43 AcceptGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-accept-group-join-request-public-v1' \
    'ipyAEXz4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 43 'AcceptGroupJoinRequestPublicV1' test.out

#- 44 RejectGroupJoinRequestPublicV1
$PYTHON -m $MODULE 'group-reject-group-join-request-public-v1' \
    'JHKa3V9K' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 44 'RejectGroupJoinRequestPublicV1' test.out

#- 45 KickGroupMemberPublicV1
$PYTHON -m $MODULE 'group-kick-group-member-public-v1' \
    'AlqWgWqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 45 'KickGroupMemberPublicV1' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
