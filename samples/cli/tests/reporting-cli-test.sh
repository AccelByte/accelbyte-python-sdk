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
reporting-admin-create-mod-action '{"actionId": "EAxcVpFr", "actionName": "ttufHIRd", "eventName": "H9UzVRiX"}' --login_with_auth "Bearer foo"
reporting-admin-find-extension-category-list --login_with_auth "Bearer foo"
reporting-admin-create-extension-category '{"extensionCategory": "bqlAw7r6", "extensionCategoryName": "W2ktQG0h", "serviceSource": "5JAav5kR"}' --login_with_auth "Bearer foo"
reporting-get --login_with_auth "Bearer foo"
reporting-upsert '{"categoryLimits": [{"extensionCategory": "a62WopBJ", "maxReportPerTicket": 68, "name": "8SAMTwE6"}, {"extensionCategory": "I56IaRDB", "maxReportPerTicket": 2, "name": "xyaNoMR6"}, {"extensionCategory": "hkspInrA", "maxReportPerTicket": 17, "name": "UNB1vRod"}], "timeInterval": 46, "userMaxReportPerTimeInterval": 63}' --login_with_auth "Bearer foo"
reporting-admin-list-reason-groups --login_with_auth "Bearer foo"
reporting-create-reason-group '{"reasonIds": ["pzS6DaDp", "v8N7ZQVq", "Gj6oDLjW"], "title": "jkY1aXlF"}' --login_with_auth "Bearer foo"
reporting-get-reason-group 'cDtgOjch' --login_with_auth "Bearer foo"
reporting-delete-reason-group 'Iua5tWEI' --login_with_auth "Bearer foo"
reporting-update-reason-group '{"reasonIds": ["C32ogW7o", "lvbTgrhR", "TcPiSuL0"], "title": "Sly6XM4O"}' 'I18mAQLn' --login_with_auth "Bearer foo"
reporting-admin-get-reasons --login_with_auth "Bearer foo"
reporting-create-reason '{"description": "zjMf8GZ2", "groupIds": ["WBZqxYG3", "aREAu2D6", "QVKNCWP7"], "title": "5TB0i7pK"}' --login_with_auth "Bearer foo"
reporting-admin-get-all-reasons --login_with_auth "Bearer foo"
reporting-admin-get-unused-reasons 'xR8dl0zR' --login_with_auth "Bearer foo"
reporting-admin-get-reason 'VW4EZG9m' --login_with_auth "Bearer foo"
reporting-delete-reason '0XcgGVbM' --login_with_auth "Bearer foo"
reporting-update-reason '{"description": "qSszE8GH", "groupIds": ["avj7AorK", "sxwkosAV", "erXpc1C8"], "title": "XfwHuKeb"}' '9l3rGN9A' --login_with_auth "Bearer foo"
reporting-list-reports --login_with_auth "Bearer foo"
reporting-admin-submit-report '{"additionalInfo": {"3sNm84hd": {}, "dSpHt0P7": {}, "MIIR7Cky": {}}, "category": "UGC", "comment": "6C7duuyZ", "extensionCategory": "0GhDogqr", "objectId": "hBRd8lDR", "objectType": "6qVNPRZY", "reason": "dFLIAjGG", "userId": "JddVCvu9"}' --login_with_auth "Bearer foo"
reporting-create-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "0SevkLGM", "duration": 91, "reason": "IuMBvaO3", "skipNotif": false, "type": "9u6Vpbsx"}, "deleteChat": true, "extensionActionIds": ["xUfofvnn", "SuB0y5WU", "lrMdI4sN"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "vR8sKgnu", "reason": "RkgghGoY", "threshold": 42}' --login_with_auth "Bearer foo"
reporting-update-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "pD391C2q", "duration": 39, "reason": "6SCwGrnc", "skipNotif": true, "type": "kQsfCaTm"}, "deleteChat": true, "extensionActionIds": ["8TgoNm03", "VLisV6zw", "Puo3td6T"], "hideContent": true}, "active": true, "category": "USER", "extensionCategory": "3lMjGSWN", "reason": "2laRlxfc", "threshold": 20}' 'IxPz6Mbw' --login_with_auth "Bearer foo"
reporting-delete-moderation-rule 'L6IY69z1' --login_with_auth "Bearer foo"
reporting-update-moderation-rule-status '{"active": false}' 'aLqYSYWy' --login_with_auth "Bearer foo"
reporting-get-moderation-rules --login_with_auth "Bearer foo"
reporting-get-moderation-rule-details 'tLPziZMd' --login_with_auth "Bearer foo"
reporting-list-tickets --login_with_auth "Bearer foo"
reporting-ticket-statistic 'jxcBZufQ' --login_with_auth "Bearer foo"
reporting-get-ticket-detail 'xGiHPllG' --login_with_auth "Bearer foo"
reporting-delete-ticket '4cYEzfTD' --login_with_auth "Bearer foo"
reporting-get-reports-by-ticket '1ZBm3MqH' --login_with_auth "Bearer foo"
reporting-update-ticket-resolutions '{"notes": "cUmLZZbS", "status": "OPEN"}' 'kmu0hpDD' --login_with_auth "Bearer foo"
reporting-public-list-reason-groups --login_with_auth "Bearer foo"
reporting-public-get-reasons --login_with_auth "Bearer foo"
reporting-submit-report '{"additionalInfo": {"WVAla2l5": {}, "BYNtIuS5": {}, "S5XUdjso": {}}, "category": "UGC", "comment": "UOcEdscK", "extensionCategory": "HPEqgA8y", "objectId": "u7Vk6Jt4", "objectType": "Ymos9Jcd", "reason": "os4fYcTV", "userId": "U6RBt0zY"}' --login_with_auth "Bearer foo"
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
    '{"actionId": "oMcHyCUE", "actionName": "XlAvxJMd", "eventName": "alwSyliW"}' \
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
    '{"extensionCategory": "MNW5NyLu", "extensionCategoryName": "0M3VHh2E", "serviceSource": "I8JlDbPW"}' \
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
    '{"categoryLimits": [{"extensionCategory": "bQ6Q9lNm", "maxReportPerTicket": 34, "name": "dWyOtXi3"}, {"extensionCategory": "choQrpOs", "maxReportPerTicket": 61, "name": "mDc3fxU8"}, {"extensionCategory": "MyKrQpM4", "maxReportPerTicket": 16, "name": "Dlym6puQ"}], "timeInterval": 57, "userMaxReportPerTimeInterval": 48}' \
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
    '{"reasonIds": ["Gv0IqmF5", "1TkhjYna", "q6foWvXa"], "title": "3bMrXsDr"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
$PYTHON -m $MODULE 'reporting-get-reason-group' \
    '6kILsSSy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
$PYTHON -m $MODULE 'reporting-delete-reason-group' \
    'DdmykmoP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
$PYTHON -m $MODULE 'reporting-update-reason-group' \
    '{"reasonIds": ["Ygc2L4jk", "4Lo0LSP0", "pf4IxjUk"], "title": "l535X3at"}' \
    'eEKDpADz' \
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
    '{"description": "1x3poD3Q", "groupIds": ["gb3boLQQ", "1MzH7Qm8", "bwbmXgdA"], "title": "Ph1EThG9"}' \
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
    '6gAFKK2W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
$PYTHON -m $MODULE 'reporting-admin-get-reason' \
    'DgCcxvON' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
$PYTHON -m $MODULE 'reporting-delete-reason' \
    'Zm3EeERm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
$PYTHON -m $MODULE 'reporting-update-reason' \
    '{"description": "DnyeFoF7", "groupIds": ["VSZ6pf3v", "neSD2Tb3", "g7mSQUhA"], "title": "EtrmjqU6"}' \
    'YE3p4lSc' \
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
    '{"additionalInfo": {"k0ZHn5GI": {}, "39YBHqaT": {}, "HeKtW18i": {}}, "category": "CHAT", "comment": "eVHQipcC", "extensionCategory": "x9Zw5D2L", "objectId": "7vIYhGGS", "objectType": "yEW4ZJJ4", "reason": "2d3PBddN", "userId": "8S48l9ly"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
$PYTHON -m $MODULE 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "nNjkfZrQ", "duration": 44, "reason": "3oZk03QX", "skipNotif": false, "type": "zHkBMr1y"}, "deleteChat": true, "extensionActionIds": ["SZjtqXyJ", "58f7Gc26", "SaiGVkyd"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "QG26yUZN", "reason": "mTBcvrbY", "threshold": 59}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
$PYTHON -m $MODULE 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "wZtxFHyP", "duration": 77, "reason": "BNrDjqox", "skipNotif": false, "type": "PUIj88ce"}, "deleteChat": false, "extensionActionIds": ["4pp2ncYA", "HdNzDmeI", "P6rOvDz9"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "SZLxoRDF", "reason": "uuuySj29", "threshold": 1}' \
    'iuFM3FIo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
$PYTHON -m $MODULE 'reporting-delete-moderation-rule' \
    'Vk8T3GpA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
$PYTHON -m $MODULE 'reporting-update-moderation-rule-status' \
    '{"active": false}' \
    'MwzHPxB1' \
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
    'UskYs4Yw' \
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
    '20DOqOBS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
$PYTHON -m $MODULE 'reporting-get-ticket-detail' \
    'C2DKHRuP' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
$PYTHON -m $MODULE 'reporting-delete-ticket' \
    'MMWH8Yb3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
$PYTHON -m $MODULE 'reporting-get-reports-by-ticket' \
    '3T5UBJCj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
$PYTHON -m $MODULE 'reporting-update-ticket-resolutions' \
    '{"notes": "fcnLRfxe", "status": "UNKNOWN"}' \
    'hhqElIaD' \
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
    '{"additionalInfo": {"ml48wdNF": {}, "LTm5T50x": {}, "9WT0GfH2": {}}, "category": "UGC", "comment": "u4jmsRE2", "extensionCategory": "w1yEkLgh", "objectId": "3tIYt4Sq", "objectType": "YUTLDx9g", "reason": "IiDandpG", "userId": "T2t24aOM"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
