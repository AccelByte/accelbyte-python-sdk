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
reporting-admin-create-mod-action '{"actionId": "KbCwmRr0", "actionName": "jGmnvruk", "eventName": "8CXu8Dsm"}' --login_with_auth "Bearer foo"
reporting-admin-find-extension-category-list --login_with_auth "Bearer foo"
reporting-admin-create-extension-category '{"extensionCategory": "4LY9gNtT", "extensionCategoryName": "8RqHVGu8", "serviceSource": "Z0y4ttQV"}' --login_with_auth "Bearer foo"
reporting-get --login_with_auth "Bearer foo"
reporting-upsert '{"categoryLimits": [{"extensionCategory": "sk5QlOxb", "maxReportPerTicket": 16, "name": "WXwTzzEc"}, {"extensionCategory": "5W4ZTo1A", "maxReportPerTicket": 33, "name": "jxt7K7Io"}, {"extensionCategory": "ayM6iDIc", "maxReportPerTicket": 19, "name": "F2wwporb"}], "timeInterval": 79, "userMaxReportPerTimeInterval": 53}' --login_with_auth "Bearer foo"
reporting-admin-list-reason-groups --login_with_auth "Bearer foo"
reporting-create-reason-group '{"reasonIds": ["wifeRIKY", "1NZ0lIq8", "csyNKZyD"], "title": "onko2GOd"}' --login_with_auth "Bearer foo"
reporting-get-reason-group 'lC2V1Dda' --login_with_auth "Bearer foo"
reporting-delete-reason-group 'NHjGUGdF' --login_with_auth "Bearer foo"
reporting-update-reason-group '{"reasonIds": ["T8aQuDUL", "6JmOMugp", "P9rauXot"], "title": "Wh5tBdWL"}' 'Pqw3yRCz' --login_with_auth "Bearer foo"
reporting-admin-get-reasons --login_with_auth "Bearer foo"
reporting-create-reason '{"description": "0r1Edue6", "groupIds": ["c0CJoQs9", "nmycJQmm", "J2xbz9cC"], "title": "l8IxvKeZ"}' --login_with_auth "Bearer foo"
reporting-admin-get-all-reasons --login_with_auth "Bearer foo"
reporting-admin-get-unused-reasons 'q1Ac6fju' --login_with_auth "Bearer foo"
reporting-admin-get-reason 'KCUntbh7' --login_with_auth "Bearer foo"
reporting-delete-reason 's2V6DrAf' --login_with_auth "Bearer foo"
reporting-update-reason '{"description": "Xko1dec2", "groupIds": ["DwZKFqOt", "jmx9cQ4W", "4nTrpD9C"], "title": "3kGOyKvB"}' 'ilpPxNKq' --login_with_auth "Bearer foo"
reporting-list-reports --login_with_auth "Bearer foo"
reporting-admin-submit-report '{"additionalInfo": {"A3ojiFgb": {}, "VstL9zev": {}, "FXRHYYZB": {}}, "category": "CHAT", "comment": "6vmSWBp6", "extensionCategory": "S0I28N3u", "objectId": "RfsuGxTu", "objectType": "iBNdDikI", "reason": "ZIesdP48", "userId": "PnaG9AV4"}' --login_with_auth "Bearer foo"
reporting-create-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "Xc0jpipp", "duration": 68, "reason": "o90jJt0y", "skipNotif": false, "type": "M2Gyjpve"}, "deleteChat": true, "extensionActionIds": ["GJVVN0sI", "38JRIar3", "0l3q9TpW"], "hideContent": true}, "active": true, "category": "UGC", "extensionCategory": "d3gk2CxN", "reason": "UtHVokPd", "threshold": 59}' --login_with_auth "Bearer foo"
reporting-update-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "E7lNWU8V", "duration": 23, "reason": "jM3BKQnX", "skipNotif": false, "type": "eRSLaAuv"}, "deleteChat": false, "extensionActionIds": ["v7dCa160", "G1GBbmB7", "XsHXQoFf"], "hideContent": true}, "active": false, "category": "CHAT", "extensionCategory": "y2mhRHpf", "reason": "oreGtLmG", "threshold": 60}' 'l8LTDKID' --login_with_auth "Bearer foo"
reporting-delete-moderation-rule 'OdXraBJt' --login_with_auth "Bearer foo"
reporting-update-moderation-rule-status '{"active": true}' 'vJ5XTCVn' --login_with_auth "Bearer foo"
reporting-get-moderation-rules --login_with_auth "Bearer foo"
reporting-get-moderation-rule-details 'Nkah1TyX' --login_with_auth "Bearer foo"
reporting-list-tickets --login_with_auth "Bearer foo"
reporting-ticket-statistic 'OJmFu2vN' --login_with_auth "Bearer foo"
reporting-get-ticket-detail 'rYv0889i' --login_with_auth "Bearer foo"
reporting-delete-ticket 'zfyqYc9j' --login_with_auth "Bearer foo"
reporting-get-reports-by-ticket 'c86zSmcM' --login_with_auth "Bearer foo"
reporting-update-ticket-resolutions '{"notes": "AsCSdjNI", "status": "AUTO_MODERATED"}' 'N7Ra8ykz' --login_with_auth "Bearer foo"
reporting-public-list-reason-groups --login_with_auth "Bearer foo"
reporting-public-get-reasons --login_with_auth "Bearer foo"
reporting-submit-report '{"additionalInfo": {"xRrnXXlq": {}, "xVHO6RqH": {}, "1SCBlZld": {}}, "category": "USER", "comment": "Xf2rNohk", "extensionCategory": "9n6bEnih", "objectId": "ZYQdsbCG", "objectType": "ajoklCYm", "reason": "RVKC2Aei", "userId": "NGSh0YXz"}' --login_with_auth "Bearer foo"
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
    '{"actionId": "wGSyu3fF", "actionName": "s7XkbdWI", "eventName": "e73Jqbgi"}' \
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
    '{"extensionCategory": "uSHJsZEE", "extensionCategoryName": "jWdiOesQ", "serviceSource": "rQJflFun"}' \
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
    '{"categoryLimits": [{"extensionCategory": "Or44H7MX", "maxReportPerTicket": 28, "name": "yQtbkFDb"}, {"extensionCategory": "o2NVCnU5", "maxReportPerTicket": 64, "name": "25268gL0"}, {"extensionCategory": "33QhuPrS", "maxReportPerTicket": 64, "name": "xs2uvXNa"}], "timeInterval": 96, "userMaxReportPerTimeInterval": 28}' \
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
    '{"reasonIds": ["yn5NB7Al", "KPvUbWP9", "7TSWCy5N"], "title": "pMouFrAp"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
$PYTHON -m $MODULE 'reporting-get-reason-group' \
    'c09e20Bp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
$PYTHON -m $MODULE 'reporting-delete-reason-group' \
    '9YmrwY1o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
$PYTHON -m $MODULE 'reporting-update-reason-group' \
    '{"reasonIds": ["LB6GOzh0", "PEoX0yD2", "Kdtal7sk"], "title": "tbHNhILk"}' \
    'zGIIx7mS' \
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
    '{"description": "Pjjv0Dig", "groupIds": ["GUwMnw0W", "3ZKVc27W", "c74Cw6C3"], "title": "a2EcIjdL"}' \
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
    'WkESoEi7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
$PYTHON -m $MODULE 'reporting-admin-get-reason' \
    'V6eTYP0e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
$PYTHON -m $MODULE 'reporting-delete-reason' \
    '2nDwrRG5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
$PYTHON -m $MODULE 'reporting-update-reason' \
    '{"description": "v7Tjg0Iw", "groupIds": ["vbRxDwlP", "c2UA0E1c", "vaoCFd5F"], "title": "ZruMFuCw"}' \
    'KtnwWz0K' \
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
    '{"additionalInfo": {"PcoQzq9F": {}, "4MCuDFQ4": {}, "63N4QzX5": {}}, "category": "UGC", "comment": "3HL0khI7", "extensionCategory": "RAietCFh", "objectId": "AMywglUf", "objectType": "hTnQeWUI", "reason": "VrcXHQsQ", "userId": "HEwFVU8L"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
$PYTHON -m $MODULE 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "QGIoc4Ep", "duration": 49, "reason": "47ofFvDL", "skipNotif": false, "type": "spWEs0Qv"}, "deleteChat": true, "extensionActionIds": ["wWqKhZAl", "dEBIOfv2", "OSCnrNg9"], "hideContent": false}, "active": true, "category": "UGC", "extensionCategory": "sFmBMry8", "reason": "opEmBjdU", "threshold": 25}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
$PYTHON -m $MODULE 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "9CFXbU1n", "duration": 44, "reason": "IjMWL4G0", "skipNotif": false, "type": "BD0KQsd8"}, "deleteChat": false, "extensionActionIds": ["drpErKks", "h8U2zhhg", "uGQXCZuS"], "hideContent": false}, "active": true, "category": "CHAT", "extensionCategory": "DRjOWQpo", "reason": "BKLEcm39", "threshold": 25}' \
    '5xczgLT5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
$PYTHON -m $MODULE 'reporting-delete-moderation-rule' \
    'AEUUeW9A' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
$PYTHON -m $MODULE 'reporting-update-moderation-rule-status' \
    '{"active": true}' \
    'zPqrXD9U' \
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
    '5UuBfr5K' \
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
    'nlrpTy4O' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
$PYTHON -m $MODULE 'reporting-get-ticket-detail' \
    '5vGTjNaj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
$PYTHON -m $MODULE 'reporting-delete-ticket' \
    'm254xmuq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
$PYTHON -m $MODULE 'reporting-get-reports-by-ticket' \
    'f7dqrYJM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
$PYTHON -m $MODULE 'reporting-update-ticket-resolutions' \
    '{"notes": "JAW0tajV", "status": "AUTO_MODERATED"}' \
    'TRUSKOmt' \
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
    '{"additionalInfo": {"JR0hYhhm": {}, "y5Wim0ov": {}, "wZV7rwoE": {}}, "category": "USER", "comment": "Yqz7FycM", "extensionCategory": "3mBqoz5G", "objectId": "VqoGfoNr", "objectType": "wELy76vj", "reason": "25pPjI1F", "userId": "BJTXCrZu"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
