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
reporting-admin-create-mod-action '{"actionId": "YwTj000D", "actionName": "DujS9xkX", "eventName": "UqQZcFkq"}' --login_with_auth "Bearer foo"
reporting-admin-find-extension-category-list --login_with_auth "Bearer foo"
reporting-admin-create-extension-category '{"extensionCategory": "MaIyKNBf", "extensionCategoryName": "3tvw0CyG", "serviceSource": "wX6gNEGP"}' --login_with_auth "Bearer foo"
reporting-get --login_with_auth "Bearer foo"
reporting-upsert '{"categoryLimits": [{"extensionCategory": "0h5IIhrA", "maxReportPerTicket": 36, "name": "KtOHv912"}, {"extensionCategory": "HETxmBuD", "maxReportPerTicket": 57, "name": "J6hBqvRz"}, {"extensionCategory": "0LG7YfwD", "maxReportPerTicket": 12, "name": "rdkXf4fF"}], "timeInterval": 47, "userMaxReportPerTimeInterval": 98}' --login_with_auth "Bearer foo"
reporting-admin-list-reason-groups --login_with_auth "Bearer foo"
reporting-create-reason-group '{"reasonIds": ["zjFCsbNo", "fLyzjqxL", "cN2u3axi"], "title": "1zBP4FVX"}' --login_with_auth "Bearer foo"
reporting-get-reason-group '8G6VQYEi' --login_with_auth "Bearer foo"
reporting-delete-reason-group 'zlUKGhai' --login_with_auth "Bearer foo"
reporting-update-reason-group '{"reasonIds": ["nBPShzmV", "61QYjaTu", "nhIgysZK"], "title": "zMrLMzV3"}' 'l3N6yDWq' --login_with_auth "Bearer foo"
reporting-admin-get-reasons --login_with_auth "Bearer foo"
reporting-create-reason '{"description": "y0u7oikt", "groupIds": ["neWXJLfx", "ls7NKYr7", "LIENIq6a"], "title": "5nNYoWYg"}' --login_with_auth "Bearer foo"
reporting-admin-get-all-reasons --login_with_auth "Bearer foo"
reporting-admin-get-unused-reasons 'VY7wDhb1' --login_with_auth "Bearer foo"
reporting-admin-get-reason 'OsJByVjn' --login_with_auth "Bearer foo"
reporting-delete-reason 'xtegvumg' --login_with_auth "Bearer foo"
reporting-update-reason '{"description": "qzW6oJRq", "groupIds": ["0ymeNA7G", "OhDGAfTW", "2sonBkhi"], "title": "TnkZnW16"}' 'bp0x2VlP' --login_with_auth "Bearer foo"
reporting-list-reports --login_with_auth "Bearer foo"
reporting-admin-submit-report '{"additionalInfo": {"1PHkMMO7": {}, "1varqL6o": {}, "EeLL1omu": {}}, "category": "UGC", "comment": "Su3e5HDS", "extensionCategory": "6Bpfqu41", "objectId": "SET9Lgje", "objectType": "iT6wbnVD", "reason": "whZc7YoN", "userId": "FFKxDsTX"}' --login_with_auth "Bearer foo"
reporting-create-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "X7wIcEZJ", "duration": 50, "reason": "4Uq6NOIw", "skipNotif": true, "type": "E4xvG6yO"}, "deleteChat": true, "extensionActionIds": ["QTUq104a", "wHB8mEaT", "en2aqzni"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "S4HGoPyI", "reason": "IF2QKssJ", "threshold": 38}' --login_with_auth "Bearer foo"
reporting-update-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "JG67utaw", "duration": 1, "reason": "noNzqlAZ", "skipNotif": false, "type": "FmTIBu9W"}, "deleteChat": true, "extensionActionIds": ["2HipivJY", "utQ8vkHQ", "YLX6TbiO"], "hideContent": true}, "active": true, "category": "CHAT", "extensionCategory": "nVu2TgGU", "reason": "MDM4J3ME", "threshold": 93}' 'PNIAj8lC' --login_with_auth "Bearer foo"
reporting-delete-moderation-rule 'Zy55wUgB' --login_with_auth "Bearer foo"
reporting-update-moderation-rule-status '{"active": false}' 'uNlOw27L' --login_with_auth "Bearer foo"
reporting-get-moderation-rules --login_with_auth "Bearer foo"
reporting-get-moderation-rule-details 'iqiH2dNa' --login_with_auth "Bearer foo"
reporting-list-tickets --login_with_auth "Bearer foo"
reporting-ticket-statistic 'RjJCzwVp' --login_with_auth "Bearer foo"
reporting-get-ticket-detail '0Qmjqtai' --login_with_auth "Bearer foo"
reporting-delete-ticket 'FoXspt74' --login_with_auth "Bearer foo"
reporting-get-reports-by-ticket '34zFPROA' --login_with_auth "Bearer foo"
reporting-update-ticket-resolutions '{"notes": "ykcrtcon", "status": "CLOSED"}' 'RTOHiakz' --login_with_auth "Bearer foo"
reporting-public-list-reason-groups --login_with_auth "Bearer foo"
reporting-public-get-reasons --login_with_auth "Bearer foo"
reporting-submit-report '{"additionalInfo": {"AChTsr4S": {}, "YgDlLm28": {}, "a16oD8JI": {}}, "category": "EXTENSION", "comment": "TzGuNklP", "extensionCategory": "Wl7YDQ3o", "objectId": "Pi629UE1", "objectType": "ZHH5kbiK", "reason": "iyVoRVoD", "userId": "1LFydgCM"}' --login_with_auth "Bearer foo"
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
    '{"actionId": "Y407430t", "actionName": "7T3aDoI8", "eventName": "f1yLJXA3"}' \
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
    '{"extensionCategory": "kdfv6Cx4", "extensionCategoryName": "1QrXPRV5", "serviceSource": "yMEBoo2Q"}' \
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
    '{"categoryLimits": [{"extensionCategory": "OFXakZDK", "maxReportPerTicket": 5, "name": "s5BdD3Ji"}, {"extensionCategory": "KBKVttgT", "maxReportPerTicket": 6, "name": "RKA74fIQ"}, {"extensionCategory": "y7iZiBxa", "maxReportPerTicket": 2, "name": "Mzf0S1q6"}], "timeInterval": 53, "userMaxReportPerTimeInterval": 58}' \
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
    '{"reasonIds": ["LcKRmPV6", "UAd5itiW", "pDotjTd6"], "title": "cV7mdPuj"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
$PYTHON -m $MODULE 'reporting-get-reason-group' \
    'cQDTYzec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
$PYTHON -m $MODULE 'reporting-delete-reason-group' \
    'kTyorSEs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
$PYTHON -m $MODULE 'reporting-update-reason-group' \
    '{"reasonIds": ["jVR2ghJB", "0NsqNluo", "T1HU4rao"], "title": "9bRl3bGS"}' \
    'BBIAMNnM' \
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
    '{"description": "HAB2CqGb", "groupIds": ["ZLN9Evzk", "F5YU0TMo", "fiDdDGNl"], "title": "5SV7jMKn"}' \
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
    'c193fWTO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
$PYTHON -m $MODULE 'reporting-admin-get-reason' \
    'DC09Jnm4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
$PYTHON -m $MODULE 'reporting-delete-reason' \
    'KlzjlMdM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
$PYTHON -m $MODULE 'reporting-update-reason' \
    '{"description": "LQoZmZKC", "groupIds": ["fGx92Gv6", "5DpN697G", "XjFs3nCh"], "title": "KlAZ5Muj"}' \
    '9ghPbhbF' \
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
    '{"additionalInfo": {"Hhg1WX3G": {}, "dBHXbme5": {}, "7WvPPnCq": {}}, "category": "UGC", "comment": "fO5c6uIh", "extensionCategory": "lHhyX7sy", "objectId": "MfwtjcPI", "objectType": "WnTydqYE", "reason": "RqUdC68W", "userId": "AgwJXESq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
$PYTHON -m $MODULE 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "96AXa0pg", "duration": 84, "reason": "fW3qXoJj", "skipNotif": true, "type": "3nbfXBlp"}, "deleteChat": false, "extensionActionIds": ["3Z7eaVxI", "We3FdQdg", "Um5o9ntt"], "hideContent": false}, "active": true, "category": "USER", "extensionCategory": "97MY0hAt", "reason": "fM9Jsv9b", "threshold": 91}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
$PYTHON -m $MODULE 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "aKHOCIN3", "duration": 86, "reason": "WLZ4GwNX", "skipNotif": false, "type": "pnPiFOKc"}, "deleteChat": false, "extensionActionIds": ["O7yuXAne", "rIgCXIfT", "5WO3TRXX"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "LJqsfA6q", "reason": "89CKGrX3", "threshold": 50}' \
    '1x3M0e6m' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
$PYTHON -m $MODULE 'reporting-delete-moderation-rule' \
    'fSx482Qq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
$PYTHON -m $MODULE 'reporting-update-moderation-rule-status' \
    '{"active": true}' \
    'GDYZd5yr' \
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
    'l6vkXPif' \
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
    'oX54Cxlt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
$PYTHON -m $MODULE 'reporting-get-ticket-detail' \
    'U665b3Ig' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
$PYTHON -m $MODULE 'reporting-delete-ticket' \
    'WSpwPJMp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
$PYTHON -m $MODULE 'reporting-get-reports-by-ticket' \
    'JEqxtrE6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
$PYTHON -m $MODULE 'reporting-update-ticket-resolutions' \
    '{"notes": "LRELwh8h", "status": "OPEN"}' \
    '1wDuYqBY' \
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
    '{"additionalInfo": {"3z3PyVw1": {}, "mV8fPxTI": {}, "GJXrKvaX": {}}, "category": "UGC", "comment": "gNIP1rEh", "extensionCategory": "fbdNCWFb", "objectId": "nEtUUKf2", "objectType": "pYdxaiDz", "reason": "hmiqCp5K", "userId": "YpEX5yQw"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
