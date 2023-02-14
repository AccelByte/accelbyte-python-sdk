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
reporting-admin-find-action-list --login_with_auth "Bearer foo"
reporting-admin-create-mod-action '{"actionId": "8dhrDSTb", "actionName": "CbkbN7GA", "eventName": "GlOzN8fB"}' --login_with_auth "Bearer foo"
reporting-admin-find-extension-category-list --login_with_auth "Bearer foo"
reporting-admin-create-extension-category '{"extensionCategory": "T5JRwVIv", "extensionCategoryName": "Gy7cc9lL", "serviceSource": "zd2QzLwL"}' --login_with_auth "Bearer foo"
reporting-get --login_with_auth "Bearer foo"
reporting-upsert '{"categoryLimits": [{"extensionCategory": "EMDBGZRE", "maxReportPerTicket": 13, "name": "lG2uAd3Z"}, {"extensionCategory": "LsIZMn6Z", "maxReportPerTicket": 91, "name": "5ahJtONa"}, {"extensionCategory": "0sRUoZm7", "maxReportPerTicket": 13, "name": "aJ6Skuu0"}], "timeInterval": 33, "userMaxReportPerTimeInterval": 97}' --login_with_auth "Bearer foo"
reporting-admin-list-reason-groups --login_with_auth "Bearer foo"
reporting-create-reason-group '{"reasonIds": ["jqMjUsC9", "8hh7G6cO", "62DDY4zi"], "title": "Dnen6Kti"}' --login_with_auth "Bearer foo"
reporting-get-reason-group 'TOFAL706' --login_with_auth "Bearer foo"
reporting-delete-reason-group 'VEynkeXI' --login_with_auth "Bearer foo"
reporting-update-reason-group '{"reasonIds": ["GVYf1182", "R7jxoz1r", "D1ezJvrA"], "title": "Kb2ColEx"}' 'T5g9WEiS' --login_with_auth "Bearer foo"
reporting-admin-get-reasons --login_with_auth "Bearer foo"
reporting-create-reason '{"description": "TOSS0R1w", "groupIds": ["cEWzFNxv", "UT7dWttg", "xAD3FuMY"], "title": "low2qfEL"}' --login_with_auth "Bearer foo"
reporting-admin-get-all-reasons --login_with_auth "Bearer foo"
reporting-admin-get-unused-reasons '69Hbz82i' --login_with_auth "Bearer foo"
reporting-admin-get-reason '3va9Sp55' --login_with_auth "Bearer foo"
reporting-delete-reason 'AiQ7P0zy' --login_with_auth "Bearer foo"
reporting-update-reason '{"description": "Q9Nqd3a1", "groupIds": ["f4t4Hfl2", "rLnbegPJ", "cuwV8I1L"], "title": "qchciNEh"}' 'cTVgGt2S' --login_with_auth "Bearer foo"
reporting-list-reports --login_with_auth "Bearer foo"
reporting-admin-submit-report '{"additionalInfo": {"ATxpLbz0": {}, "B7hikwco": {}, "b08IdqKU": {}}, "category": "USER", "comment": "B2vGut3S", "extensionCategory": "Muk5fV1m", "objectId": "1J8NlrEo", "objectType": "DynjvuQv", "reason": "62iFuOrJ", "userId": "SDGrUy8S"}' --login_with_auth "Bearer foo"
reporting-create-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "6puRkAfe", "duration": 25, "reason": "FfouOHGc", "skipNotif": true, "type": "ANwapggz"}, "deleteChat": true, "extensionActionIds": ["dbr4pqBo", "YIQMKPmi", "HBd5T135"], "hideContent": true}, "active": true, "category": "EXTENSION", "extensionCategory": "uvTg37GG", "reason": "c3lBgBEr", "threshold": 71}' --login_with_auth "Bearer foo"
reporting-update-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "Pl7TlpPz", "duration": 92, "reason": "WJDX8jli", "skipNotif": false, "type": "fPkTFPEt"}, "deleteChat": true, "extensionActionIds": ["2uPqbgO7", "OBVGeeFa", "wgDLpcWG"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "xK7DY7up", "reason": "fIlgjl3Z", "threshold": 91}' 'cXuFV1TO' --login_with_auth "Bearer foo"
reporting-delete-moderation-rule 'Xl1htusb' --login_with_auth "Bearer foo"
reporting-update-moderation-rule-status '{"active": true}' 'TWNeLmiG' --login_with_auth "Bearer foo"
reporting-get-moderation-rules --login_with_auth "Bearer foo"
reporting-get-moderation-rule-details 'XsrMQS6h' --login_with_auth "Bearer foo"
reporting-list-tickets --login_with_auth "Bearer foo"
reporting-ticket-statistic '65FZNuu2' --login_with_auth "Bearer foo"
reporting-get-ticket-detail 'uJQ4jOY7' --login_with_auth "Bearer foo"
reporting-delete-ticket '652Lt6QR' --login_with_auth "Bearer foo"
reporting-get-reports-by-ticket 'vrv6uc0d' --login_with_auth "Bearer foo"
reporting-update-ticket-resolutions '{"notes": "FLtTKVf7", "status": "OPEN"}' 'mgddkoCC' --login_with_auth "Bearer foo"
reporting-public-list-reason-groups --login_with_auth "Bearer foo"
reporting-public-get-reasons --login_with_auth "Bearer foo"
reporting-submit-report '{"additionalInfo": {"zzhOSJ1c": {}, "e9n9495Y": {}, "E19DXkjE": {}}, "category": "CHAT", "comment": "MAjeApEQ", "extensionCategory": "DwHniduU", "objectId": "JR4JlyCp", "objectType": "GGN845qN", "reason": "tf6nZwXp", "userId": "8NUafZRc"}' --login_with_auth "Bearer foo"
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
echo "1..36"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminFindActionList
$PYTHON -m $MODULE 'reporting-admin-find-action-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminFindActionList' test.out

#- 3 AdminCreateModAction
$PYTHON -m $MODULE 'reporting-admin-create-mod-action' \
    '{"actionId": "xW4g5GVl", "actionName": "afqF3xpZ", "eventName": "uzfnVrQt"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateModAction' test.out

#- 4 AdminFindExtensionCategoryList
$PYTHON -m $MODULE 'reporting-admin-find-extension-category-list' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminFindExtensionCategoryList' test.out

#- 5 AdminCreateExtensionCategory
$PYTHON -m $MODULE 'reporting-admin-create-extension-category' \
    '{"extensionCategory": "qw8Ff8vQ", "extensionCategoryName": "Y9PjErXM", "serviceSource": "Aqq5kmnE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminCreateExtensionCategory' test.out

#- 6 Get
$PYTHON -m $MODULE 'reporting-get' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'Get' test.out

#- 7 Upsert
$PYTHON -m $MODULE 'reporting-upsert' \
    '{"categoryLimits": [{"extensionCategory": "mJcECrh0", "maxReportPerTicket": 96, "name": "u59ndeEM"}, {"extensionCategory": "LR8mdQZ2", "maxReportPerTicket": 33, "name": "1cO4hcsw"}, {"extensionCategory": "Vf3rWzPK", "maxReportPerTicket": 95, "name": "G8vNLFqm"}], "timeInterval": 62, "userMaxReportPerTimeInterval": 47}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'Upsert' test.out

#- 8 AdminListReasonGroups
$PYTHON -m $MODULE 'reporting-admin-list-reason-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminListReasonGroups' test.out

#- 9 CreateReasonGroup
$PYTHON -m $MODULE 'reporting-create-reason-group' \
    '{"reasonIds": ["IffyJDy6", "QqV4pKNg", "dNtqvEQB"], "title": "G98t2kfO"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
$PYTHON -m $MODULE 'reporting-get-reason-group' \
    'BHGQN80R' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
$PYTHON -m $MODULE 'reporting-delete-reason-group' \
    'YzLgPkxD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
$PYTHON -m $MODULE 'reporting-update-reason-group' \
    '{"reasonIds": ["AggbtJlq", "InOq1E2n", "TNtCW1q1"], "title": "ZUm26jG6"}' \
    'xE6W9P1s' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'UpdateReasonGroup' test.out

#- 13 AdminGetReasons
$PYTHON -m $MODULE 'reporting-admin-get-reasons' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetReasons' test.out

#- 14 CreateReason
$PYTHON -m $MODULE 'reporting-create-reason' \
    '{"description": "A9nrjqXe", "groupIds": ["BS6bWz2o", "RfV3dFwR", "DYx7iWfe"], "title": "fksACiOn"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'CreateReason' test.out

#- 15 AdminGetAllReasons
$PYTHON -m $MODULE 'reporting-admin-get-all-reasons' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAllReasons' test.out

#- 16 AdminGetUnusedReasons
$PYTHON -m $MODULE 'reporting-admin-get-unused-reasons' \
    'PlLscY9a' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
$PYTHON -m $MODULE 'reporting-admin-get-reason' \
    'y2v8EmUP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
$PYTHON -m $MODULE 'reporting-delete-reason' \
    'QsdDneXS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
$PYTHON -m $MODULE 'reporting-update-reason' \
    '{"description": "BQHSt0zt", "groupIds": ["ZpY1yuMJ", "6unRZE6C", "tYRIcwov"], "title": "bkgJ0JiP"}' \
    'Ks7yMydi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'UpdateReason' test.out

#- 20 ListReports
$PYTHON -m $MODULE 'reporting-list-reports' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'ListReports' test.out

#- 21 AdminSubmitReport
$PYTHON -m $MODULE 'reporting-admin-submit-report' \
    '{"additionalInfo": {"lYTj4QxG": {}, "AGLp58cf": {}, "JbwiNt6z": {}}, "category": "USER", "comment": "NL4kuuyd", "extensionCategory": "WZEqcCdz", "objectId": "if6vh7ND", "objectType": "pGDwTWcw", "reason": "8rxurCgj", "userId": "36bGRRHx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
$PYTHON -m $MODULE 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "0OtJHuKg", "duration": 15, "reason": "qAscRBIS", "skipNotif": false, "type": "WApYhTSc"}, "deleteChat": true, "extensionActionIds": ["dU9aqygN", "GsRKEJAA", "djwD6uwI"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "rKzEy9pC", "reason": "qAiYGWQB", "threshold": 84}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
$PYTHON -m $MODULE 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "SH4v2MUl", "duration": 4, "reason": "NzpB8yhz", "skipNotif": false, "type": "EnmyYJqL"}, "deleteChat": false, "extensionActionIds": ["3MWp7ZO5", "gNAqQEnq", "LJyDiSDa"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "gC9fvllD", "reason": "aJtbVVD6", "threshold": 2}' \
    'U3xmOeih' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
$PYTHON -m $MODULE 'reporting-delete-moderation-rule' \
    'eA2KwYFy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
$PYTHON -m $MODULE 'reporting-update-moderation-rule-status' \
    '{"active": true}' \
    'KUIENtZI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'UpdateModerationRuleStatus' test.out

#- 26 GetModerationRules
$PYTHON -m $MODULE 'reporting-get-moderation-rules' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'GetModerationRules' test.out

#- 27 GetModerationRuleDetails
$PYTHON -m $MODULE 'reporting-get-moderation-rule-details' \
    'U19okm6P' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetModerationRuleDetails' test.out

#- 28 ListTickets
$PYTHON -m $MODULE 'reporting-list-tickets' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'ListTickets' test.out

#- 29 TicketStatistic
$PYTHON -m $MODULE 'reporting-ticket-statistic' \
    'PM8MsRM8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
$PYTHON -m $MODULE 'reporting-get-ticket-detail' \
    'H8HY3hlM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
$PYTHON -m $MODULE 'reporting-delete-ticket' \
    'FbT2kuEM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
$PYTHON -m $MODULE 'reporting-get-reports-by-ticket' \
    'Nt85Kiqu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
$PYTHON -m $MODULE 'reporting-update-ticket-resolutions' \
    '{"notes": "bvVTRVj9", "status": "AUTO_MODERATED"}' \
    'WQQjGOv0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'UpdateTicketResolutions' test.out

#- 34 PublicListReasonGroups
$PYTHON -m $MODULE 'reporting-public-list-reason-groups' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicListReasonGroups' test.out

#- 35 PublicGetReasons
$PYTHON -m $MODULE 'reporting-public-get-reasons' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGetReasons' test.out

#- 36 SubmitReport
$PYTHON -m $MODULE 'reporting-submit-report' \
    '{"additionalInfo": {"AqmwcCrQ": {}, "SCulkyo1": {}, "Ji5bm7V0": {}}, "category": "CHAT", "comment": "D2OOTlB6", "extensionCategory": "H0xYmJ1q", "objectId": "IGvV7C4i", "objectType": "lWBTaZc8", "reason": "DCT2mePR", "userId": "W0Y7SElz"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
