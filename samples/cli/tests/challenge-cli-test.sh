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
challenge-admin-get-challenges --login_with_auth "Bearer foo"
challenge-admin-create-challenge '{"activeGoalsPerRotation": 62, "assignmentRule": "RANDOMIZED", "code": "AxcVpFrttufHIRdH", "description": "9UzVRiXbqlAw7r6W", "endAfter": 9, "endDate": "1976-10-04T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "pzSn3ZPUdc0qh4n8", "repeatAfter": 26, "rotation": "MONTHLY", "startDate": "1983-05-05T00:00:00Z"}' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'Z0m8SAMTwE6I56Ia' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 89, "assignmentRule": "RANDOMIZED", "description": "DBXxyaNoMR6hkspI", "endAfter": 27, "endDate": "1992-05-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "Aip6lyzSxwElFHHd", "repeatAfter": 13, "rotation": "WEEKLY", "startDate": "1980-05-03T00:00:00Z"}' '21Jub74CUkNmKJfh' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge '5pUkHODpoMF78NY4' --login_with_auth "Bearer foo"
challenge-admin-get-goals 'YkHs1cnz1JSDgY1T' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "Xp38zsCTCrbCbPOy", "description": "NQkT7NvyE3cwyALc", "isActive": true, "name": "zjMf8GZ2WBZqxYG3", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Os1PXhT5FvdiRilZ", "parameterType": "ACHIEVEMENT", "targetValue": 0.14128417150585826}, {"matcher": "EQUAL", "parameterName": "pKxR8dl0zRVW4EZG", "parameterType": "ACHIEVEMENT", "targetValue": 0.8304563451260242}, {"matcher": "EQUAL", "parameterName": "68su8XfqlqNiTvB6", "parameterType": "USERACCOUNT", "targetValue": 0.9669805024082485}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "orKsxwkosAVerXpc", "parameterType": "STATISTIC", "targetValue": 0.2857255039397766}, {"matcher": "EQUAL", "parameterName": "Ea1ysLEzth6mXhzk", "parameterType": "STATISTIC", "targetValue": 0.634717701187626}, {"matcher": "GREATER_THAN", "parameterName": "kFeZSoEAcBdW19m4", "parameterType": "ACHIEVEMENT", "targetValue": 0.9564883882594899}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "d5tA5jUmiTqpyhPF", "parameterType": "ACHIEVEMENT", "targetValue": 0.26965850879764464}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LzFQN05MYzYiKWe5", "parameterType": "ACHIEVEMENT", "targetValue": 0.04988102340579059}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Rljv7IPrDQQRgat0", "parameterType": "USERACCOUNT", "targetValue": 0.9341731747756056}]}], "rewards": [{"itemId": "KQ7KYnIuMBvaO35l", "itemName": "lzQRaT5kPxUfofvn", "qty": 0.2232956644546582, "type": "STATISTIC"}, {"itemId": "uB0y5WUlrMdI4sNv", "itemName": "eabntBSxTeIv53HG", "qty": 0.45923642317493263, "type": "ENTITLEMENT"}, {"itemId": "pD391C2qtPYokahF", "itemName": "jkQsfCaTmt1d67FX", "qty": 0.5312279082514675, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1995-11-03T00:00:00Z", "order": 37, "startTime": "1975-05-30T00:00:00Z"}, "tags": ["Q0mPVo3twu0MesTC", "f9x4rt69lna7qxNe", "IxPz6MbwL6IY69z1"]}' 'UaLqYSYWytLPziZM' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'djxcBZufQxGiHPll' 'G4cYEzfTD1ZBm3Mq' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "HcUmLZZbSqb8RwNm", "isActive": false, "name": "DWVAla2l5BYNtIuS", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "UdjsoqwGyzzWi9gw", "parameterType": "USERACCOUNT", "targetValue": 0.27361724392026954}, {"matcher": "EQUAL", "parameterName": "v7t1o7TTr1DmrhZv", "parameterType": "USERACCOUNT", "targetValue": 0.9335034641234603}, {"matcher": "EQUAL", "parameterName": "7quIOvBMcaYmvCkG", "parameterType": "ACHIEVEMENT", "targetValue": 0.9205732168257932}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "AgqxpBFmaLoxozr6", "parameterType": "STATISTIC", "targetValue": 0.7190217382010317}, {"matcher": "LESS_THAN", "parameterName": "NPX2bOItRMvqtlB2", "parameterType": "ACHIEVEMENT", "targetValue": 0.12793256765368222}, {"matcher": "LESS_THAN", "parameterName": "EI8JlDbPWbQ6Q9lN", "parameterType": "ACHIEVEMENT", "targetValue": 0.10519896647327787}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "yOtXi3choQrpOsDB", "parameterType": "USERACCOUNT", "targetValue": 0.03234834175570289}, {"matcher": "EQUAL", "parameterName": "epjChB3V0v52Dlym", "parameterType": "USERACCOUNT", "targetValue": 0.24666892432892407}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "XNB3Gv0IqmF51Tkh", "parameterType": "ACHIEVEMENT", "targetValue": 0.2567886994347076}]}], "rewards": [{"itemId": "44YUDjasWIPUvmEe", "itemName": "jtGeoyIPa8ZRrvjj", "qty": 0.9639393332061913, "type": "ENTITLEMENT"}, {"itemId": "PYgc2L4jk4Lo0LSP", "itemName": "0pf4IxjUkl535X3a", "qty": 0.3170670080966582, "type": "ENTITLEMENT"}, {"itemId": "XksUC9b6i5lZC9xv", "itemName": "32e8c5csSovoqsZN", "qty": 0.4416522336530031, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-06-11T00:00:00Z", "order": 25, "startTime": "1973-02-24T00:00:00Z"}, "tags": ["NDUPVJf6c2Z0QZxf", "gPubTDIHrvqAThuw", "jRHpKKTlmVr9XuoJ"]}' 'bRFQSKVPHbn4Xxtu' '7LQRENjEEztx1WsY' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'SiZqan0nSBJroav9' '1GXlvPG6bFYReVHQ' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'ipcCx9Zw5D2L7vIY' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'hGGSyEW4ZJJ42d3P' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'BddN8S48l9lyNApf' --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["lxqMrj3oZk03QXcK", "MDYDDxHSZjtqXyJ5", "8f7Gc26SaiGVkydw"]}' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'YWQG26yUZNmTBcvr' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'bYCwZtxFHyPLtI8i' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'lbyDPUIj88cekdqC' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["t81P1ktfIovmv9gs", "R5cJcHm3SZLxoRDF", "uuuySj29a9LJE8Ho"]}' --login_with_auth "Bearer foo"
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
echo "1..22"

#- 1 Login
eval_tap 0 1 'Login # SKIP not tested' test.out
if [ $EXIT_CODE -ne 0 ]; then
  echo "Bail out! Login failed."
  exit $EXIT_CODE
fi

#- 2 AdminGetChallenges
$PYTHON -m $MODULE 'challenge-admin-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 2 'AdminGetChallenges' test.out

#- 3 AdminCreateChallenge
$PYTHON -m $MODULE 'challenge-admin-create-challenge' \
    '{"activeGoalsPerRotation": 89, "assignmentRule": "UNSCHEDULED", "code": "k8T3GpAnkCmBUqg2", "description": "SCnqntX9y1aZSWMi", "endAfter": 98, "endDate": "1999-03-09T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "10sG6vxkfUcmqRRb", "repeatAfter": 5, "rotation": "DAILY", "startDate": "1985-10-19T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'JCjfcnLRfxeCSz9W' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 63, "assignmentRule": "UNSCHEDULED", "description": "i8KlloeH0JT1ydua", "endAfter": 39, "endDate": "1997-07-08T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "9WT0GfH2rtOa4EXs", "repeatAfter": 47, "rotation": "WEEKLY", "startDate": "1998-11-21T00:00:00Z"}' \
    'yEkLgh3tIYt4SqYU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'TLDx9gIiDandpGT2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    't24aOMh5eC3IHeHS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "KLCa3xreNDUWehwH", "description": "3q31A806DJgas4b6", "isActive": true, "name": "2NubeoKFeIaFQCYo", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "ICpnduEEQlULdJz4", "parameterType": "ACHIEVEMENT", "targetValue": 0.12352299847260462}, {"matcher": "LESS_THAN", "parameterName": "RBkMNxvvKgAT8mJr", "parameterType": "ACHIEVEMENT", "targetValue": 0.25996647441765475}, {"matcher": "EQUAL", "parameterName": "XiI07A68eaqC2J9j", "parameterType": "STATISTIC", "targetValue": 0.9857080242354523}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "GLbc0NaKDUL3sa13", "parameterType": "ACHIEVEMENT", "targetValue": 0.7716760051401861}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "1dQBHO86IlBhnetU", "parameterType": "USERACCOUNT", "targetValue": 0.7018374785281746}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "DNxtXgeO3FgkXhjD", "parameterType": "STATISTIC", "targetValue": 0.875456951600817}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Y3snn2ZkP7cFdP43", "parameterType": "ACHIEVEMENT", "targetValue": 0.8183472002687358}, {"matcher": "EQUAL", "parameterName": "eKa699bRVhyaKwwr", "parameterType": "STATISTIC", "targetValue": 0.19408973801885898}, {"matcher": "EQUAL", "parameterName": "aMlu7WtjCtoYetOO", "parameterType": "STATISTIC", "targetValue": 0.9067735355060624}]}], "rewards": [{"itemId": "7g8OudOfjnCuHZ3c", "itemName": "46IjGa23YvYmmDg7", "qty": 0.7698298189773561, "type": "STATISTIC"}, {"itemId": "PXIuvUYTZBRujIUE", "itemName": "1Tq5jyAZvkRCMNFI", "qty": 0.3292244055362745, "type": "STATISTIC"}, {"itemId": "p7gh4TeUTkOkAYfJ", "itemName": "B8AT9t4Tv207Y2QD", "qty": 0.8981095653681718, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1982-09-03T00:00:00Z", "order": 34, "startTime": "1973-04-07T00:00:00Z"}, "tags": ["LCr3OOlXVv8ZGF7u", "YnGzpipNDigNJma1", "MbqqZtfNWql4nmwA"]}' \
    'ft4gqkNNlWkD9eOz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'iYRFOn0jJLHC9Lxh' \
    'vNXTwGBCtohLtl9Z' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "uhytm5UDrT6QXCs5", "isActive": false, "name": "BbRPZTF6oQAXVG7t", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "sZg5QgXjvyGJPN4e", "parameterType": "STATISTIC", "targetValue": 0.02322000700641924}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "c50Kv6ecnEevcAx2", "parameterType": "USERACCOUNT", "targetValue": 0.44148012165470363}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "zkRenmPZnGBt4P7W", "parameterType": "ACHIEVEMENT", "targetValue": 0.515988595940881}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "SJtjX7ZshZyZl5x4", "parameterType": "ACHIEVEMENT", "targetValue": 0.40395239514169357}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "XBHUTrDzZSKscfOc", "parameterType": "STATISTIC", "targetValue": 0.32574485717629165}, {"matcher": "EQUAL", "parameterName": "LFkYW5DQyj4bj5Ro", "parameterType": "ACHIEVEMENT", "targetValue": 0.2401726092984704}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "aKt2ujQSa3Zdb65U", "parameterType": "ACHIEVEMENT", "targetValue": 0.19835491899032331}, {"matcher": "LESS_THAN", "parameterName": "2iS5EpGhhvXYck0u", "parameterType": "STATISTIC", "targetValue": 0.6930474834723405}, {"matcher": "LESS_THAN", "parameterName": "0NBMA9ORxpzwLR2A", "parameterType": "USERACCOUNT", "targetValue": 0.8671652223648961}]}], "rewards": [{"itemId": "bNCtX7W40V6Do5sY", "itemName": "adCCFrHHC3DpZxkr", "qty": 0.6815841851690734, "type": "STATISTIC"}, {"itemId": "EiOG4UcqsuGKHhMR", "itemName": "WLVd3DlhLuIpomM8", "qty": 0.3041680906224914, "type": "ENTITLEMENT"}, {"itemId": "lwuUccE536ugBp3H", "itemName": "BvepnDCjgyJlXe36", "qty": 0.19888699664074383, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1977-07-14T00:00:00Z", "order": 19, "startTime": "1990-02-11T00:00:00Z"}, "tags": ["709xbnGezKsDwG2o", "mOR2nvYI9TVqJdvz", "cWbfUpaXp5JMl5LL"]}' \
    '4bTxBmZjdrrIxsB0' \
    'NRsB1fPqqRRulpqp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'ymDkQhtrHWwRVnwV' \
    'BOqOHi8pWGd1juYh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'iqjRJOqB5F93zFQb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'JndUDpdONneAczbB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'dHb2slt71B1SmZp2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["JZp50CnPb71ORYcm", "QbTU5JX8ccLjMXJR", "k0eaKQDOJvrTefgl"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'Ss6g4iY9u02aCNYI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetUserRewards' test.out

#- 17 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'GetChallenges' test.out

#- 18 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'Wekp18lOC3mNqF7B' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'PublicGetScheduledGoals' test.out

#- 19 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'EvaluateMyProgress' test.out

#- 20 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'l0LcghVHfPEspxwh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserProgression' test.out

#- 21 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicGetUserRewards' test.out

#- 22 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["RON0bc1eMbEIjowL", "qc3ecjXJbZDKKoxL", "E1Y3Dymtj3giPg4x"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
