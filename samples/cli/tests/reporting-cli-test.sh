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
reporting-admin-create-mod-action '{"actionId": "EAxcVpFrttufHIRd", "actionName": "H9UzVRiXbqlAw7r6", "eventName": "W2ktQG0h5JAav5kR"}' --login_with_auth "Bearer foo"
reporting-admin-find-extension-category-list --login_with_auth "Bearer foo"
reporting-admin-create-extension-category '{"extensionCategory": "a62WopBJHPtcDs8b", "extensionCategoryName": "BZLCXLx8bbgorQeF", "serviceSource": "bQ1g7qbPngUNB1vR"}' --login_with_auth "Bearer foo"
reporting-get --login_with_auth "Bearer foo"
reporting-upsert '{"categoryLimits": [{"extensionCategory": "odwpzS6DaDpv8N7Z", "maxReportPerTicket": 87, "name": "4CUkNmKJfh5pUkHO"}, {"extensionCategory": "DpoMF78NY4YkHs1c", "maxReportPerTicket": 27, "name": "EIC32ogW7olvbTgr"}, {"extensionCategory": "hRTcPiSuL0Sly6XM", "maxReportPerTicket": 50, "name": "OI18mAQLnzjMf8GZ"}], "timeInterval": 0, "userMaxReportPerTimeInterval": 100}' --login_with_auth "Bearer foo"
reporting-admin-list-reason-groups --login_with_auth "Bearer foo"
reporting-create-reason-group '{"reasonIds": ["gSrjJW2OQNOs1PXh", "T5FvdiRilZ7oFgx4", "c8OumKtPDKJDXn7Z"], "title": "4U68su8XfqlqNiTv"}' --login_with_auth "Bearer foo"
reporting-get-reason-group 'B6SdAdIhUDrwoZ5M' --login_with_auth "Bearer foo"
reporting-delete-reason-group 'ecdKi5r6QEa1ysLE' --login_with_auth "Bearer foo"
reporting-update-reason-group '{"reasonIds": ["zth6mXhzkzWkFeZS", "oEAcBdW19m4eu6d5", "tA5jUmiTqpyhPFdx"], "title": "LzFQN05MYzYiKWe5"}' 'dNRljv7IPrDQQRga' --login_with_auth "Bearer foo"
reporting-admin-get-reasons --login_with_auth "Bearer foo"
reporting-create-reason '{"description": "t0SevkLGMS0lyuI9", "groupIds": ["a2I9u6Vpbsx5w8hq", "UI06UpOXGSLmCVuH", "OPlLlkvR8sKgnuRk"], "title": "gghGoYupD391C2qt"}' --login_with_auth "Bearer foo"
reporting-admin-get-all-reasons --login_with_auth "Bearer foo"
reporting-admin-get-unused-reasons 'PYokahFjkQsfCaTm' --login_with_auth "Bearer foo"
reporting-admin-get-reason 't1d67FXGk2s9Q0mP' --login_with_auth "Bearer foo"
reporting-delete-reason 'Vo3twu0MesTCf9x4' --login_with_auth "Bearer foo"
reporting-update-reason '{"description": "rt69lna7qxNeIxPz", "groupIds": ["6MbwL6IY69z1UaLq", "YSYWytLPziZMdjxc", "BZufQxGiHPllG4cY"], "title": "EzfTD1ZBm3MqHcUm"}' 'LZZbSqb8RwNmn9Hr' --login_with_auth "Bearer foo"
reporting-list-reports --login_with_auth "Bearer foo"
reporting-admin-submit-report '{"additionalInfo": {"NQy4uZAAiE0mit9R": {}, "GCCHYzUOcEdscKHP": {}, "EqgA8yu7Vk6Jt4Ym": {}}, "category": "EXTENSION", "comment": "Zv15T7quIOvBMcaY", "extensionCategory": "mvCkGZ5dAgqxpBFm", "objectId": "aLoxozr6wfNPX2bO", "objectType": "ItRMvqtlB2jJCSQT", "reason": "279ZZPYGu0rdlgdW", "userId": "yOtXi3choQrpOsDB"}' --login_with_auth "Bearer foo"
reporting-create-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "5SepjChB3V0v52Dl", "duration": 50, "reason": "K6KKXNB3Gv0IqmF5", "skipNotif": false, "type": "khjYnaq6foWvXa3b"}, "deleteChat": false, "extensionActionIds": ["rXsDr6kILsSSyDdm", "ykmoPYgc2L4jk4Lo", "0LSP0pf4IxjUkl53"], "hideContent": true}, "active": false, "category": "UGC", "extensionCategory": "BXksUC9b6i5lZC9x", "reason": "v32e8c5csSovoqsZ", "threshold": 82}' --login_with_auth "Bearer foo"
reporting-update-moderation-rule '{"action": "HideContent", "actions": {"banAccount": {"comment": "Bdte9NDUPVJf6c2Z", "duration": 13, "reason": "QZxfgPubTDIHrvqA", "skipNotif": false, "type": "EeERmDnyeFoF7VSZ"}, "deleteChat": false, "extensionActionIds": ["pf3vneSD2Tb3g7mS", "QUhAEtrmjqU6YE3p", "4lSck0ZHn5GI39YB"], "hideContent": true}, "active": false, "category": "EXTENSION", "extensionCategory": "eKtW18iGeUlc9d9s", "reason": "ogWa24CKNS0GqVvU", "threshold": 12}' 'yEW4ZJJ42d3PBddN' --login_with_auth "Bearer foo"
reporting-delete-moderation-rule '8S48l9lyNApflxqM' --login_with_auth "Bearer foo"
reporting-update-moderation-rule-status '{"active": true}' 'QvGgbLdLsFzHkBMr' --login_with_auth "Bearer foo"
reporting-get-moderation-rules --login_with_auth "Bearer foo"
reporting-get-moderation-rule-details '1yrOMlNFSrUEirnj' --login_with_auth "Bearer foo"
reporting-list-tickets --login_with_auth "Bearer foo"
reporting-ticket-statistic 'X9fDmIbeZxzfTcyi' --login_with_auth "Bearer foo"
reporting-get-ticket-detail 'uATus9hsfpFDcSDG' --login_with_auth "Bearer foo"
reporting-delete-ticket '8aMVGLiBNrDjqoxc' --login_with_auth "Bearer foo"
reporting-get-reports-by-ticket 'wgGLXpUL4pp2ncYA' --login_with_auth "Bearer foo"
reporting-update-ticket-resolutions '{"notes": "HdNzDmeIP6rOvDz9", "status": "CLOSED"}' 'sb392k6YmJFfRByj' --login_with_auth "Bearer foo"
reporting-public-list-reason-groups --login_with_auth "Bearer foo"
reporting-public-get-reasons --login_with_auth "Bearer foo"
reporting-submit-report '{"additionalInfo": {"lBiuFM3FIoVk8T3G": {}, "pAnkCmBUqg2SCnqn": {}, "tX9y1aZSWMiVi10s": {}}, "category": "UGC", "comment": "6vxkfUcmqRRbceJ5", "extensionCategory": "i0EeDxOgBnhhqElI", "objectId": "aDml48wdNFLTm5T5", "objectType": "0x9WT0GfH2rtOa4E", "reason": "XsXzOXQAk4mqrxzT", "userId": "tuLl4XlbGL8QOxtj"}' --login_with_auth "Bearer foo"
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
    '{"actionId": "zm8y2wNhmwoYZyI4", "actionName": "EFZKBcYrCEAE7WIs", "eventName": "fmx40NLRc6m8heKn"}' \
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
    '{"extensionCategory": "Whzfe2NubeoKFeIa", "extensionCategoryName": "FQCYoDPICpnduEEQ", "serviceSource": "lULdJz4mnRBkMNxv"}' \
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
    '{"categoryLimits": [{"extensionCategory": "vKgAT8mJrYq6hRkl", "maxReportPerTicket": 30, "name": "7A68eaqC2J9jyEW6"}, {"extensionCategory": "GLbc0NaKDUL3sa13", "maxReportPerTicket": 22, "name": "VHzih3bit0VWn3CO"}, {"extensionCategory": "39PXDNxtXgeO3Fgk", "maxReportPerTicket": 38, "name": "hjDzaQY3snn2ZkP7"}], "timeInterval": 4, "userMaxReportPerTimeInterval": 79}' \
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
    '{"reasonIds": ["FdP43e5dC9XIBudf", "ZgrbHDIDm4hMzF4T", "xodenSrUTvfqU0bf"], "title": "oMm5cTtFWbotQyXJ"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'CreateReasonGroup' test.out

#- 10 GetReasonGroup
$PYTHON -m $MODULE 'reporting-get-reason-group' \
    'RcQWsmqPNs92epxk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'GetReasonGroup' test.out

#- 11 DeleteReasonGroup
$PYTHON -m $MODULE 'reporting-delete-reason-group' \
    '0i8VxsZNereSvf96' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'DeleteReasonGroup' test.out

#- 12 UpdateReasonGroup
$PYTHON -m $MODULE 'reporting-update-reason-group' \
    '{"reasonIds": ["99mCEHThUJkETAsS", "p7gh4TeUTkOkAYfJ", "B8AT9t4Tv207Y2QD"], "title": "3oD5fLCr3OOlXVv8"}' \
    'ZGF7uYnGzpipNDig' \
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
    '{"description": "NJma1MbqqZtfNWql", "groupIds": ["4nmwAft4gqkNNlWk", "D9eOziYRFOn0jJLH", "C9LxhvNXTwGBCtoh"], "title": "Ltl9Zuhytm5UDrT6"}' \
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
    'QXCs5SPBbRPZTF6o' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUnusedReasons' test.out

#- 17 AdminGetReason
$PYTHON -m $MODULE 'reporting-admin-get-reason' \
    'QAXVG7tnsZg5QgXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetReason' test.out

#- 18 DeleteReason
$PYTHON -m $MODULE 'reporting-delete-reason' \
    'vyGJPN4eXbJE5Vs2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'DeleteReason' test.out

#- 19 UpdateReason
$PYTHON -m $MODULE 'reporting-update-reason' \
    '{"description": "GcyomQoIXimBJehy", "groupIds": ["xlNsjUgxBkF6wFPo", "JeQediogEhhM2rIi", "zGdKvOPdq5xrgxSm"], "title": "y1DN9LFkYW5DQyj4"}' \
    'bj5Ro2ogaKt2ujQS' \
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
    '{"additionalInfo": {"a3Zdb65UXmy0Zp6i": {}, "IaTIKUkmkk9QM0NB": {}, "MA9ORxpzwLR2AK6e": {}}, "category": "USER", "comment": "UGPJsw1fiP80G9Pc", "extensionCategory": "lxcft2ulIJzPyrVE", "objectId": "iOG4UcqsuGKHhMRW", "objectType": "LVd3DlhLuIpomM8s", "reason": "m1MiaI1mX2tJoARt", "userId": "dbBe7udsMrok0WvG"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminSubmitReport' test.out

#- 22 CreateModerationRule
$PYTHON -m $MODULE 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "Ynx4V709xbnGezKs", "duration": 60, "reason": "fH24T805tVg8JqU0", "skipNotif": false, "type": "JdvzcWbfUpaXp5JM"}, "deleteChat": false, "extensionActionIds": ["yerCSa8SRgwsAj1i", "k1jglaDXTvKCWwNT", "Ahd2wrS0uPdjhdin"], "hideContent": false}, "active": false, "category": "EXTENSION", "extensionCategory": "wVBOqOHi8pWGd1ju", "reason": "YhiqjRJOqB5F93zF", "threshold": 87}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'CreateModerationRule' test.out

#- 23 UpdateModerationRule
$PYTHON -m $MODULE 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {"banAccount": {"comment": "88YbCtmKy8M9zVrj", "duration": 11, "reason": "dHb2slt71B1SmZp2", "skipNotif": false, "type": "Zp50CnPb71ORYcmQ"}, "deleteChat": false, "extensionActionIds": ["XAQN0qdskdQV0TqI", "8EFnmDbxIxi4YKlO", "Nk2Q5Y4Jvaizwiil"], "hideContent": false}, "active": false, "category": "UGC", "extensionCategory": "p18lOC3mNqF7Bl0L", "reason": "cghVHfPEspxwhRON", "threshold": 4}' \
    'bc1eMbEIjowLqc3e' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'UpdateModerationRule' test.out

#- 24 DeleteModerationRule
$PYTHON -m $MODULE 'reporting-delete-moderation-rule' \
    'cjXJbZDKKoxLE1Y3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'DeleteModerationRule' test.out

#- 25 UpdateModerationRuleStatus
$PYTHON -m $MODULE 'reporting-update-moderation-rule-status' \
    '{"active": true}' \
    'pdXpai0rYaT5hOPj' \
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
    'af3H0tYighU0VUfc' \
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
    'YHJbBfAKSiPW3Vgs' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'TicketStatistic' test.out

#- 30 GetTicketDetail
$PYTHON -m $MODULE 'reporting-get-ticket-detail' \
    'ZXiR1DJ7HVWqMkNS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetTicketDetail' test.out

#- 31 DeleteTicket
$PYTHON -m $MODULE 'reporting-delete-ticket' \
    'awQUWDFJvJBWic7U' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'DeleteTicket' test.out

#- 32 GetReportsByTicket
$PYTHON -m $MODULE 'reporting-get-reports-by-ticket' \
    'kBeIXuqDuAXI66bQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'GetReportsByTicket' test.out

#- 33 UpdateTicketResolutions
$PYTHON -m $MODULE 'reporting-update-ticket-resolutions' \
    '{"notes": "71w0deoV9Lx5RDA1", "status": "CLOSED"}' \
    'xr0lCancUZGCHsZY' \
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
    '{"additionalInfo": {"oLfR1KtOv7Zy0b65": {}, "uvuKNuy0ytZQ7M6N": {}, "zy1adnSKOLFKx1dX": {}}, "category": "CHAT", "comment": "uWJu3pDMUAeeZ97S", "extensionCategory": "BROPYuG6XqP6oo7G", "objectId": "73zdxTgOfnwIdlNa", "objectType": "29fDLh741IslKHzG", "reason": "lLKWUtDQs61OQAox", "userId": "yyQpRWCiiPDGQhNP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'SubmitReport' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
