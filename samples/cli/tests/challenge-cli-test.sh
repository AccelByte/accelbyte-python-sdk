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
challenge-admin-create-challenge '{"activeGoalsPerRotation": 62, "assignmentRule": "RANDOMIZED", "code": "AxcVpFrttufHIRdH", "description": "9UzVRiXbqlAw7r6W", "endDate": "1999-02-03T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "HpzSn3ZPUdc0qh4n", "rotation": "MONTHLY", "startDate": "1978-07-26T00:00:00Z"}' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'pBJHPtcDs8bBZLCX' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 77, "assignmentRule": "UNSCHEDULED", "description": "x8bbgorQeFbQ1g7q", "endDate": "1971-04-22T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "ngUNB1vRodwpzS6D", "rotation": "DAILY", "startDate": "1974-08-30T00:00:00Z"}' 's21Jub74CUkNmKJf' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'h5pUkHODpoMF78NY' --login_with_auth "Bearer foo"
challenge-admin-get-goals '4YkHs1cnz1JSDgY1' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "TXp38zsCTCrbCbPO", "description": "yNQkT7NvyE3cwyAL", "isActive": false, "name": "nzjMf8GZ2WBZqxYG", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Os1PXhT5FvdiRilZ", "parameterType": "ACHIEVEMENT", "targetValue": 0.14128417150585826}, {"matcher": "EQUAL", "parameterName": "pKxR8dl0zRVW4EZG", "parameterType": "ACHIEVEMENT", "targetValue": 0.8304563451260242}, {"matcher": "EQUAL", "parameterName": "68su8XfqlqNiTvB6", "parameterType": "USERACCOUNT", "targetValue": 0.9669805024082485}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "orKsxwkosAVerXpc", "parameterType": "STATISTIC", "targetValue": 0.2857255039397766}, {"matcher": "EQUAL", "parameterName": "Ea1ysLEzth6mXhzk", "parameterType": "STATISTIC", "targetValue": 0.634717701187626}, {"matcher": "GREATER_THAN", "parameterName": "kFeZSoEAcBdW19m4", "parameterType": "ACHIEVEMENT", "targetValue": 0.9564883882594899}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "d5tA5jUmiTqpyhPF", "parameterType": "ACHIEVEMENT", "targetValue": 0.26965850879764464}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LzFQN05MYzYiKWe5", "parameterType": "ACHIEVEMENT", "targetValue": 0.04988102340579059}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Rljv7IPrDQQRgat0", "parameterType": "USERACCOUNT", "targetValue": 0.9341731747756056}]}], "rewards": [{"itemId": "KQ7KYnIuMBvaO35l", "itemName": "lzQRaT5kPxUfofvn", "qty": 0.2232956644546582, "type": "STATISTIC"}, {"itemId": "uB0y5WUlrMdI4sNv", "itemName": "eabntBSxTeIv53HG", "qty": 0.45923642317493263, "type": "ENTITLEMENT"}, {"itemId": "pD391C2qtPYokahF", "itemName": "jkQsfCaTmt1d67FX", "qty": 0.5312279082514675, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1995-11-03T00:00:00Z", "order": 37, "startTime": "1975-05-30T00:00:00Z"}, "tags": ["Q0mPVo3twu0MesTC", "f9x4rt69lna7qxNe", "IxPz6MbwL6IY69z1"]}' 'UaLqYSYWytLPziZM' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'djxcBZufQxGiHPll' 'G4cYEzfTD1ZBm3Mq' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "HcUmLZZbSqb8RwNm", "isActive": false, "name": "DWVAla2l5BYNtIuS", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "UdjsoqwGyzzWi9gw", "parameterType": "USERACCOUNT", "targetValue": 0.27361724392026954}, {"matcher": "EQUAL", "parameterName": "v7t1o7TTr1DmrhZv", "parameterType": "USERACCOUNT", "targetValue": 0.9335034641234603}, {"matcher": "EQUAL", "parameterName": "7quIOvBMcaYmvCkG", "parameterType": "ACHIEVEMENT", "targetValue": 0.9205732168257932}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "AgqxpBFmaLoxozr6", "parameterType": "STATISTIC", "targetValue": 0.7190217382010317}, {"matcher": "LESS_THAN", "parameterName": "NPX2bOItRMvqtlB2", "parameterType": "ACHIEVEMENT", "targetValue": 0.12793256765368222}, {"matcher": "LESS_THAN", "parameterName": "EI8JlDbPWbQ6Q9lN", "parameterType": "ACHIEVEMENT", "targetValue": 0.10519896647327787}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "yOtXi3choQrpOsDB", "parameterType": "USERACCOUNT", "targetValue": 0.03234834175570289}, {"matcher": "EQUAL", "parameterName": "epjChB3V0v52Dlym", "parameterType": "USERACCOUNT", "targetValue": 0.24666892432892407}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "XNB3Gv0IqmF51Tkh", "parameterType": "ACHIEVEMENT", "targetValue": 0.2567886994347076}]}], "rewards": [{"itemId": "44YUDjasWIPUvmEe", "itemName": "jtGeoyIPa8ZRrvjj", "qty": 0.9639393332061913, "type": "ENTITLEMENT"}, {"itemId": "PYgc2L4jk4Lo0LSP", "itemName": "0pf4IxjUkl535X3a", "qty": 0.3170670080966582, "type": "ENTITLEMENT"}, {"itemId": "XksUC9b6i5lZC9xv", "itemName": "32e8c5csSovoqsZN", "qty": 0.4416522336530031, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1971-06-11T00:00:00Z", "order": 25, "startTime": "1973-02-24T00:00:00Z"}, "tags": ["NDUPVJf6c2Z0QZxf", "gPubTDIHrvqAThuw", "jRHpKKTlmVr9XuoJ"]}' 'bRFQSKVPHbn4Xxtu' '7LQRENjEEztx1WsY' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'SiZqan0nSBJroav9' '1GXlvPG6bFYReVHQ' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'ipcCx9Zw5D2L7vIY' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'hGGSyEW4ZJJ42d3P' --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["BddN8S48l9lyNApf", "lxqMrj3oZk03QXcK", "MDYDDxHSZjtqXyJ5"]}' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards '8f7Gc26SaiGVkydw' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'YWQG26yUZNmTBcvr' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'bYCwZtxFHyPLtI8i' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["lbyDPUIj88cekdqC", "t81P1ktfIovmv9gs", "R5cJcHm3SZLxoRDF"]}' --login_with_auth "Bearer foo"
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
echo "1..21"

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
    '{"activeGoalsPerRotation": 42, "assignmentRule": "UNSCHEDULED", "code": "uuySj29a9LJE8HoR", "description": "S1X2PFAAMwzHPxB1", "endDate": "1995-12-26T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "CnqntX9y1aZSWMiV", "rotation": "MONTHLY", "startDate": "1986-10-30T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    '0sG6vxkfUcmqRRbc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 10, "assignmentRule": "RANDOMIZED", "description": "J5i0EeDxOgBnhhqE", "endDate": "1977-09-11T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "aDml48wdNFLTm5T5", "rotation": "WEEKLY", "startDate": "1981-12-19T00:00:00Z"}' \
    'WT0GfH2rtOa4EXsX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'zOXQAk4mqrxzTtuL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'l4XlbGL8QOxtjzm8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "y2wNhmwoYZyI4EFZ", "description": "KBcYrCEAE7WIsfmx", "isActive": true, "name": "LRc6m8heKnWhzfe2", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Uj7fdgLA84Z8YYk6", "parameterType": "USERACCOUNT", "targetValue": 0.2541000432500037}, {"matcher": "GREATER_THAN", "parameterName": "gJjBbEDoNf3n0hEo", "parameterType": "USERACCOUNT", "targetValue": 0.17478063299070945}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Acf80zfFyabWAgIU", "parameterType": "USERACCOUNT", "targetValue": 0.1310438749696844}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "7A68eaqC2J9jyEW6", "parameterType": "USERACCOUNT", "targetValue": 0.15898631216785641}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "bc0NaKDUL3sa13lk", "parameterType": "STATISTIC", "targetValue": 0.05092744633132218}, {"matcher": "GREATER_THAN", "parameterName": "BHO86IlBhnetU4Rw", "parameterType": "USERACCOUNT", "targetValue": 0.6389108320475317}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "XlTDBzOuYsaZA2yy", "parameterType": "ACHIEVEMENT", "targetValue": 0.9013268121624}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "mbqoOfADMMAXFaY9", "parameterType": "ACHIEVEMENT", "targetValue": 0.46361715035474116}, {"matcher": "EQUAL", "parameterName": "XIBudfZgrbHDIDm4", "parameterType": "ACHIEVEMENT", "targetValue": 0.007005852644861532}]}], "rewards": [{"itemId": "Mlu7WtjCtoYetOO8", "itemName": "47g8OudOfjnCuHZ3", "qty": 0.03663670778851047, "type": "STATISTIC"}, {"itemId": "6IjGa23YvYmmDg7V", "itemName": "YPXIuvUYTZBRujIU", "qty": 0.4940351395838205, "type": "STATISTIC"}, {"itemId": "9mCEHThUJkETAsSp", "itemName": "7gh4TeUTkOkAYfJB", "qty": 0.9780504164348797, "type": "STATISTIC"}], "schedule": {"endTime": "1985-02-21T00:00:00Z", "order": 41, "startTime": "1990-06-27T00:00:00Z"}, "tags": ["ZVJSPqJiwv1qlYB1", "RSKs6gQxC3Gb7S0o", "4zGYY7KQI1AeFgPq"]}' \
    'aOkvo1aolB4lkKB4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'EYOkQ1jMD3cym8xI' \
    'fkOVW2grREOLx0KO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "ww3HICQLfl7MUBG7", "isActive": true, "name": "m5UDrT6QXCs5SPBb", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "QAXVG7tnsZg5QgXj", "parameterType": "STATISTIC", "targetValue": 0.9018849610570491}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "m7Ta1PsKc50Kv6ec", "parameterType": "ACHIEVEMENT", "targetValue": 0.2414510509760942}, {"matcher": "GREATER_THAN", "parameterName": "evcAx2K2zkRenmPZ", "parameterType": "ACHIEVEMENT", "targetValue": 0.7450867408797518}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "xBkF6wFPoJeQedio", "parameterType": "ACHIEVEMENT", "targetValue": 0.11591019098611921}, {"matcher": "EQUAL", "parameterName": "yZl5x4bRXBHUTrDz", "parameterType": "STATISTIC", "targetValue": 0.7111927738496974}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "gxSmy1DN9LFkYW5D", "parameterType": "USERACCOUNT", "targetValue": 0.1445492386713232}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "4bj5Ro2ogaKt2ujQ", "parameterType": "USERACCOUNT", "targetValue": 0.5783830434322896}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "3Zdb65UXmy0Zp6iI", "parameterType": "ACHIEVEMENT", "targetValue": 0.11368011488929797}, {"matcher": "GREATER_THAN", "parameterName": "IKUkmkk9QM0NBMA9", "parameterType": "USERACCOUNT", "targetValue": 0.319893037481084}]}], "rewards": [{"itemId": "FkEORV3bu1bNCtX7", "itemName": "W40V6Do5sYadCCFr", "qty": 0.5400995635645865, "type": "STATISTIC"}, {"itemId": "ulIJzPyrVEiOG4Uc", "itemName": "qsuGKHhMRWLVd3Dl", "qty": 0.12898487348054244, "type": "ENTITLEMENT"}, {"itemId": "uIpomM8sm1MiaI1m", "itemName": "X2tJoARtdbBe7uds", "qty": 0.6266142360667261, "type": "STATISTIC"}], "schedule": {"endTime": "1983-04-29T00:00:00Z", "order": 74, "startTime": "1976-04-06T00:00:00Z"}, "tags": ["0WvGYYnx4V709xbn", "GezKsDwG2omOR2nv", "YI9TVqJdvzcWbfUp"]}' \
    'aXp5JMl5LL4bTxBm' \
    'ZjdrrIxsB0NRsB1f' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'PqqRRulpqpymDkQh' \
    'trHWwRVnwVBOqOHi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    '8pWGd1juYhiqjRJO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'qB5F93zFQbJndUDp' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["dONneAczbBdHb2sl", "t71B1SmZp2JZp50C", "nPb71ORYcmQbTU5J"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminEvaluateProgress' test.out

#- 15 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'X8ccLjMXJRk0eaKQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetUserRewards' test.out

#- 16 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'GetChallenges' test.out

#- 17 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'DOJvrTefglSs6g4i' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'PublicGetScheduledGoals' test.out

#- 18 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'EvaluateMyProgress' test.out

#- 19 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'Y9u02aCNYIWekp18' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'PublicGetUserProgression' test.out

#- 20 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetUserRewards' test.out

#- 21 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["lOC3mNqF7Bl0Lcgh", "VHfPEspxwhRON0bc", "1eMbEIjowLqc3ecj"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
