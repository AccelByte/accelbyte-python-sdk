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
challenge-admin-create-challenge '{"activeGoalsPerRotation": 62, "assignmentRule": "RANDOMIZED", "code": "AxcVpFrttufHIRdH", "description": "9UzVRiXbqlAw7r6W", "endAfter": 9, "endDate": "1976-10-04T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "pzSn3ZPUdc0qh4n8", "randomizedPerRotation": false, "repeatAfter": 29, "resetConfig": {"resetDate": 51, "resetDay": 31, "resetTime": "Z0m8SAMTwE6I56Ia"}, "rotation": "NONE", "startDate": "1986-08-10T00:00:00Z"}' --login_with_auth "Bearer foo"
challenge-admin-get-active-challenges 'bbgorQeFbQ1g7qbP' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'ngUNB1vRodwpzS6D' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 1, "assignmentRule": "CUSTOM", "description": "Dpv8N7ZQVqGj6oDL", "endAfter": 19, "endDate": "1975-03-16T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "kY1aXlFcDtgOjchI", "randomizedPerRotation": true, "repeatAfter": 69, "resetConfig": {"resetDate": 0, "resetDay": 37, "resetTime": "5tWEIC32ogW7olvb"}, "rotation": "WEEKLY", "startDate": "1974-06-05T00:00:00Z"}' 'rhRTcPiSuL0Sly6X' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'M4OI18mAQLnzjMf8' --login_with_auth "Bearer foo"
challenge-admin-get-goals 'GZ2WBZqxYG3aREAu' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "2D6QVKNCWP75TB0i", "description": "7pKxR8dl0zRVW4EZ", "isActive": false, "name": "9m0XcgGVbMqSszE8", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "B6SdAdIhUDrwoZ5M", "parameterType": "ACHIEVEMENT", "statCycleId": "rXpc1C8XfwHuKeb9", "targetValue": 0.18532990893992962}, {"matcher": "EQUAL", "parameterName": "rGN9A3sNm84hddSp", "parameterType": "USERACCOUNT", "statCycleId": "cBdW19m4eu6d5tA5", "targetValue": 0.15939702882255602}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "miTqpyhPFdxLzFQN", "parameterType": "ENTITLEMENT", "statCycleId": "5MYzYiKWe5dNRljv", "targetValue": 0.9552728348709659}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "DQQRgat0SevkLGMS", "parameterType": "STATISTIC", "statCycleId": "lyuI9a2I9u6Vpbsx", "targetValue": 0.9216002871488022}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "xUfofvnnSuB0y5WU", "parameterType": "ENTITLEMENT", "statCycleId": "VuHOPlLlkvR8sKgn", "targetValue": 0.32483365190921987}, {"matcher": "EQUAL", "parameterName": "kgghGoYupD391C2q", "parameterType": "STATISTIC", "statCycleId": "6SCwGrncqmLtjQHA", "targetValue": 0.08835878454411339}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "67FXGk2s9Q0mPVo3", "parameterType": "STATISTIC", "statCycleId": "3td6TC6I3lMjGSWN", "targetValue": 0.872326435040707}, {"matcher": "GREATER_THAN", "parameterName": "na7qxNeIxPz6MbwL", "parameterType": "USERACCOUNT", "statCycleId": "IY69z1UaLqYSYWyt", "targetValue": 0.606196357260354}, {"matcher": "LESS_THAN", "parameterName": "0yYoNRKd3IL5TAQ6", "parameterType": "ENTITLEMENT", "statCycleId": "PllG4cYEzfTD1ZBm", "targetValue": 0.8955390162339444}]}], "rewards": [{"itemId": "MqHcUmLZZbSqb8Rw", "itemName": "Nmn9HrNQy4uZAAiE", "qty": 0.8522037441678852, "type": "ENTITLEMENT"}, {"itemId": "S5S5XUdjsoqwGyzz", "itemName": "Wi9gwQYv7t1o7TTr", "qty": 0.8700319476932833, "type": "STATISTIC"}, {"itemId": "4Ymos9Jcdos4fYcT", "itemName": "VU6RBt0zYoMcHyCU", "qty": 0.49213754711268565, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1977-08-08T00:00:00Z", "order": 1, "startTime": "1982-11-04T00:00:00Z"}, "tags": ["xJMdalwSyliWMNW5", "NyLu0M3VHh2EI8Jl", "DbPWbQ6Q9lNmqRBa"]}' 'AkLnvxkT1X68cmDc' --login_with_auth "Bearer foo"
challenge-admin-get-goal '3fxU8MyKrQpM4hkk' 'K6KKXNB3Gv0IqmF5' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "1TkhjYnaq6foWvXa", "isActive": false, "name": "vmEejtGeoyIPa8ZR", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "vjj7il35MXbN9oCM", "parameterType": "STATISTIC", "statCycleId": "LSP0pf4IxjUkl535", "targetValue": 0.799141949820038}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "ateEKDpADz1x3poD", "parameterType": "STATISTIC", "statCycleId": "Qgb3boLQQ1MzH7Qm", "targetValue": 0.9804680767992237}, {"matcher": "EQUAL", "parameterName": "Bdte9NDUPVJf6c2Z", "parameterType": "ACHIEVEMENT", "statCycleId": "QZxfgPubTDIHrvqA", "targetValue": 0.7346575773631501}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "uwjRHpKKTlmVr9Xu", "parameterType": "ENTITLEMENT", "statCycleId": "pf3vneSD2Tb3g7mS", "targetValue": 0.6835501069566925}, {"matcher": "EQUAL", "parameterName": "LQRENjEEztx1WsYS", "parameterType": "ENTITLEMENT", "statCycleId": "ck0ZHn5GI39YBHqa", "targetValue": 0.734679108802337}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "lvPG6bFYReVHQipc", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ogWa24CKNS0GqVvU", "targetValue": 0.09651506238920504}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "4ZJJ42d3PBddN8S4", "parameterType": "ENTITLEMENT", "statCycleId": "lSAiYnNjkfZrQvGg", "targetValue": 0.027834878675105257}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "03QXcKMDYDDxHSZj", "parameterType": "STATISTIC", "statCycleId": "NFSrUEirnjX9fDmI", "targetValue": 0.02436897729834009}, {"matcher": "EQUAL", "parameterName": "kydwYWQG26yUZNmT", "parameterType": "STATISTIC_CYCLE", "statCycleId": "fpFDcSDG8aMVGLiB", "targetValue": 0.636761878150197}]}], "rewards": [{"itemId": "rDjqoxcwgGLXpUL4", "itemName": "pp2ncYAHdNzDmeIP", "qty": 0.9381185628660332, "type": "STATISTIC"}, {"itemId": "sR5cJcHm3SZLxoRD", "itemName": "FuuuySj29a9LJE8H", "qty": 0.23432565652181536, "type": "ENTITLEMENT"}, {"itemId": "1X2PFAAMwzHPxB1U", "itemName": "skYs4Yw20DOqOBSC", "qty": 0.8785984750318062, "type": "STATISTIC"}], "schedule": {"endTime": "1998-10-27T00:00:00Z", "order": 69, "startTime": "1980-12-26T00:00:00Z"}, "tags": ["G6vxkfUcmqRRbceJ", "5i0EeDxOgBnhhqEl", "IaDml48wdNFLTm5T"]}' '50x9WT0GfH2rtOa4' 'EXsXzOXQAk4mqrxz' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'TtuLl4XlbGL8QOxt' 'jzm8y2wNhmwoYZyI' --login_with_auth "Bearer foo"
challenge-admin-get-periods '4EFZKBcYrCEAE7WI' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'sfmx40NLRc6m8heK' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'nWhzfe2NubeoKFeI' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "ACCELERATE", "endDate": "1984-09-11T00:00:00Z"}' '84Z8YYk6QEgJjBbE' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "DoNf3n0hEoRCAcf8", "extendType": "CUSTOM", "grpcServerAddress": "gAT8mJrYq6hRkloq"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "xM3gpwxcfMy9Xzjj", "extendType": "APP", "grpcServerAddress": "5YbsKoADkzJEN2VH"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["zih3bit0VWn3CO39", "PXDNxtXgeO3FgkXh", "jDzaQY3snn2ZkP7c"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["FdP43e5dC9XIBudf", "ZgrbHDIDm4hMzF4T", "xodenSrUTvfqU0bf"], "userId": "oMm5cTtFWbotQyXJ"}, {"rewardIds": ["RcQWsmqPNs92epxk", "0i8VxsZNereSvf96", "99mCEHThUJkETAsS"], "userId": "p7gh4TeUTkOkAYfJ"}, {"rewardIds": ["B8AT9t4Tv207Y2QD", "3oD5fLCr3OOlXVv8", "ZGF7uYnGzpipNDig"], "userId": "NJma1MbqqZtfNWql"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "4nmwAft4gqkNNlWk"}' 'D9eOziYRFOn0jJLH' 'C9LxhvNXTwGBCtoh' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression 'Ltl9Zuhytm5UDrT6' 'QXCs5SPBbRPZTF6o' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'QAXVG7tnsZg5QgXj' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["vyGJPN4eXbJE5Vs2", "GcyomQoIXimBJehy", "xlNsjUgxBkF6wFPo"]}' 'JeQediogEhhM2rIi' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'zGdKvOPdq5xrgxSm' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "y1DN9LFkYW5DQyj4"}' 'bj5Ro2ogaKt2ujQS' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'a3Zdb65UXmy0Zp6i' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'IaTIKUkmkk9QM0NB' '79' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["b76tFkEORV3bu1bN", "CtX7W40V6Do5sYad", "CCFrHHC3DpZxkrQD"]}' --login_with_auth "Bearer foo"
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
echo "1..34"

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
    '{"activeGoalsPerRotation": 16, "assignmentRule": "RANDOMIZED", "code": "OG4UcqsuGKHhMRWL", "description": "Vd3DlhLuIpomM8sm", "endAfter": 47, "endDate": "1990-06-16T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "UccE536ugBp3HBve", "randomizedPerRotation": true, "repeatAfter": 28, "resetConfig": {"resetDate": 41, "resetDay": 60, "resetTime": "dsMrok0WvGYYnx4V"}, "rotation": "MONTHLY", "startDate": "1980-07-15T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'eue9nzJ6fH24T805' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'tVg8JqU0jZpjvsug' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 55, "assignmentRule": "FIXED", "description": "S7u8RiWyerCSa8SR", "endAfter": 13, "endDate": "1997-06-30T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "sAj1ik1jglaDXTvK", "randomizedPerRotation": true, "repeatAfter": 33, "resetConfig": {"resetDate": 100, "resetDay": 89, "resetTime": "wNTAhd2wrS0uPdjh"}, "rotation": "DAILY", "startDate": "1982-03-10T00:00:00Z"}' \
    'RVnwVBOqOHi8pWGd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    '1juYhiqjRJOqB5F9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    '3zFQbJndUDpdONne' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "AczbBdHb2slt71B1", "description": "SmZp2JZp50CnPb71", "isActive": false, "name": "YcmQbTU5JX8ccLjM", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "I8EFnmDbxIxi4YKl", "parameterType": "STATISTIC", "statCycleId": "Nk2Q5Y4Jvaizwiil", "targetValue": 0.011943036093592707}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "p18lOC3mNqF7Bl0L", "parameterType": "ACHIEVEMENT", "statCycleId": "a9EIIlGcHB3CfR3n", "targetValue": 0.03817146295410734}, {"matcher": "LESS_THAN", "parameterName": "c1eMbEIjowLqc3ec", "parameterType": "ENTITLEMENT", "statCycleId": "ELCpobBEG8X645xp", "targetValue": 0.04876572048530958}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "j3giPg4x4yiPX6ue", "parameterType": "STATISTIC", "statCycleId": "0tYighU0VUfcYHJb", "targetValue": 0.4413143222319208}, {"matcher": "EQUAL", "parameterName": "8cM4NTwr0KHaAsmT", "parameterType": "ACHIEVEMENT", "statCycleId": "J7HVWqMkNSawQUWD", "targetValue": 0.5012048720004834}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "CSVq8PdH6hJPUAc0", "parameterType": "STATISTIC", "statCycleId": "VwXgAgntLMCuaXBW", "targetValue": 0.6912713319216469}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "6BqPg4xr0lCancUZ", "parameterType": "USERACCOUNT", "statCycleId": "vSZIPkhSgORcz5S5", "targetValue": 0.4391870900778726}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "0b65uvuKNuy0ytZQ", "parameterType": "USERACCOUNT", "statCycleId": "9qSZ7PC6f6QkmZXE", "targetValue": 0.19320747297144225}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "fRSse6AAz3S4czz0", "parameterType": "STATISTIC_CYCLE", "statCycleId": "KFlAVmVLu4AOec0z", "targetValue": 0.9769131607373959}]}], "rewards": [{"itemId": "eBeeoip68J1nsv4W", "itemName": "2OJhtafxMSJlHeb3", "qty": 0.9104442416434212, "type": "STATISTIC"}, {"itemId": "WUtDQs61OQAoxyyQ", "itemName": "pRWCiiPDGQhNPEwi", "qty": 0.5691109560858072, "type": "STATISTIC"}, {"itemId": "EJ7tnkY6Mca5afj1", "itemName": "2K2IzrBvvWm4udE0", "qty": 0.6558767379908036, "type": "STATISTIC"}], "schedule": {"endTime": "1998-01-25T00:00:00Z", "order": 94, "startTime": "1996-01-23T00:00:00Z"}, "tags": ["gNne8kJATwlc6esU", "p6Sw1I98jeZQ7hfx", "nhLd3Knaknoed9DH"]}' \
    'hLOqQGhCUr6iTrjy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'EgarAdNJOIG36I6t' \
    'RbRcrEveMdAdiPKD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "UVSC00PYeDcaggin", "isActive": true, "name": "iH9Z5qXn3aoRtlqO", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "CohViHA5CzgFSy8X", "parameterType": "USERACCOUNT", "statCycleId": "A3PrIfapq5AAeMe4", "targetValue": 0.5977746114468037}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "mDWORBVXTIIJM9Xs", "parameterType": "STATISTIC", "statCycleId": "IIZxiXNMR9BgaWcF", "targetValue": 0.7955641088655673}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "SUBhyoTsMWPAxUMk", "parameterType": "ACHIEVEMENT", "statCycleId": "EXFTlEMEsFzYqwgK", "targetValue": 0.8586996136121736}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "cVTd4BxqGWV6mTJ0", "parameterType": "STATISTIC", "statCycleId": "AFdO0Khqf6kiTdSG", "targetValue": 0.3490514232166151}, {"matcher": "GREATER_THAN", "parameterName": "LFjAKY7CbgsWqFWZ", "parameterType": "ENTITLEMENT", "statCycleId": "7kPBom8F9GLLTG8p", "targetValue": 0.11704614132612057}, {"matcher": "EQUAL", "parameterName": "tuzFMbAG9YI89hmg", "parameterType": "STATISTIC", "statCycleId": "iXJF3WGRaoQomSJC", "targetValue": 0.910863927106541}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "drKF7SUQPLG59e0k", "parameterType": "USERACCOUNT", "statCycleId": "ZtX6wK7PpUlcIW32", "targetValue": 0.13072944847677825}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "u8vvwLc7KY3uVoJX", "parameterType": "USERACCOUNT", "statCycleId": "IMtpgkieDyF97lGd", "targetValue": 0.6276738125737079}, {"matcher": "GREATER_THAN", "parameterName": "bZUpd6FJtHJ1pyVw", "parameterType": "STATISTIC_CYCLE", "statCycleId": "9tmmOnYnOpas6ghP", "targetValue": 0.860098867207497}]}], "rewards": [{"itemId": "y4Zi7s7QBlk44Z44", "itemName": "B1GZgKg4uKxaCgcG", "qty": 0.6086939623414059, "type": "STATISTIC"}, {"itemId": "pzwj1QGIFmlVf4jv", "itemName": "apseE9LN9bvhOrHf", "qty": 0.18381943848649773, "type": "ENTITLEMENT"}, {"itemId": "Od6X3viLvtEk4mTI", "itemName": "pUA9gxo8SV38nEho", "qty": 0.7979727530007418, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1982-11-09T00:00:00Z", "order": 57, "startTime": "1999-09-07T00:00:00Z"}, "tags": ["W7l6jHMA2rG3nako", "pAywelu01nryEJ0N", "qoTow0qiOiC4j0ik"]}' \
    'tm0ZPLkLOsp0LZ5n' \
    'jN86Hl8kUXzt6bSc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    '6bWvgpVyW9dD1kOm' \
    'vrAejcq2LgkQuaS7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'RBx3vim02jBOxrZD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminGetPeriods' test.out

#- 14 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'yvpcLYOWA8NjxOna' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminRandomizeChallenge' test.out

#- 15 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'Eok4nOOCzfsflhjb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminDeleteTiedChallenge' test.out

#- 16 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "ACCELERATE", "endDate": "1977-02-22T00:00:00Z"}' \
    'hvyH8paOJtxqMPpc' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateTiedChallengeSchedule' test.out

#- 17 AdminGetAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-get-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetAssignmentPlugin' test.out

#- 18 AdminUpdateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-update-assignment-plugin' \
    '{"appName": "VfRwNj547fH0XrKE", "extendType": "CUSTOM", "grpcServerAddress": "kgzh4pTU0Am4DZhl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateAssignmentPlugin' test.out

#- 19 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "0bQxFJ3sWCqQpQ2F", "extendType": "APP", "grpcServerAddress": "9tNLDljhZ2jxLRX3"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminCreateAssignmentPlugin' test.out

#- 20 AdminDeleteAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-delete-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteAssignmentPlugin' test.out

#- 21 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["z46OCaGBeMfPlNos", "4yBRjrERHEonAZR8", "GmEu0q1p6QCyY6vS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminEvaluateProgress' test.out

#- 22 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["kVFWdsbYuVEGVxYh", "eR3j5mNZ6vwv7K8A", "svt1j1Rx59hesNWy"], "userId": "2NvZ85DDKDAF8KDs"}, {"rewardIds": ["BZOuYQJ03BAHZ7c5", "3q7akMpcmnnx6RVB", "rop9v7aZK3h65hbN"], "userId": "15zfQSfQrtfF3TQN"}, {"rewardIds": ["0OcNDLr36vzohZyj", "MQAg5mPYhrLTyU8O", "hgfY9JQYGF4bYXEc"], "userId": "ENx9xZlAchob44lO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUsersRewards' test.out

#- 23 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "NDDwMvgI0HlyPR7w"}' \
    'ZNiVsF6xG2mXEQdb' \
    'zIVy8alncV7vWgSH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminClaimUserRewardsByGoalCode' test.out

#- 24 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'dfo07UctPErqxyMy' \
    'OK06MqQBErxgjVBy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminGetUserProgression' test.out

#- 25 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'cvU4PbmRDcrg0DjQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminGetUserRewards' test.out

#- 26 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["jBECXvea7H1m2lJF", "RZ3ZprZ60zMjhTHe", "h94TSenE5hCFkIf5"]}' \
    'weqZ18MH57l2Zsrh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewards' test.out

#- 27 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'GetChallenges' test.out

#- 28 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    '90ETtYmGukz3Mnlr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetScheduledGoals' test.out

#- 29 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "jcHp6B8Vj7rXFgDn"}' \
    'DkdZ9bpjb1tdA3Qh' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewardsByGoalCode' test.out

#- 30 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'EvaluateMyProgress' test.out

#- 31 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'jCMW64f4XhIjSoTB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetUserProgression' test.out

#- 32 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    '2NMKtezapPr2QEPx' \
    '84' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicGetPastUserProgression' test.out

#- 33 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicGetUserRewards' test.out

#- 34 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["zTxBGtEJIYppuUSs", "KoHw2hyd12uSE7BE", "v3aevq6iohU1cg4W"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
