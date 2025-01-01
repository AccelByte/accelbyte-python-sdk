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
challenge-admin-list-schedules-by-goal '4EFZKBcYrCEAE7WI' 'sfmx40NLRc6m8heK' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'nWhzfe2NubeoKFeI' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'aFQCYoDPICpnduEE' --login_with_auth "Bearer foo"
challenge-admin-list-schedules 'QlULdJz4mnRBkMNx' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'vvKgAT8mJrYq6hRk' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "ACCELERATE", "endDate": "1998-04-28T00:00:00Z"}' '7A68eaqC2J9jyEW6' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "GLbc0NaKDUL3sa13", "extendType": "APP", "grpcServerAddress": "VHzih3bit0VWn3CO"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "39PXDNxtXgeO3Fgk", "extendType": "CUSTOM", "grpcServerAddress": "hjDzaQY3snn2ZkP7"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["cFdP43e5dC9XIBud", "fZgrbHDIDm4hMzF4", "TxodenSrUTvfqU0b"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["foMm5cTtFWbotQyX", "JRcQWsmqPNs92epx", "k0i8VxsZNereSvf9"], "userId": "699mCEHThUJkETAs"}, {"rewardIds": ["Sp7gh4TeUTkOkAYf", "JB8AT9t4Tv207Y2Q", "D3oD5fLCr3OOlXVv"], "userId": "8ZGF7uYnGzpipNDi"}, {"rewardIds": ["gNJma1MbqqZtfNWq", "l4nmwAft4gqkNNlW", "kD9eOziYRFOn0jJL"], "userId": "HC9LxhvNXTwGBCto"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "hLtl9Zuhytm5UDrT"}' '6QXCs5SPBbRPZTF6' 'oQAXVG7tnsZg5QgX' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression 'jvyGJPN4eXbJE5Vs' '2GcyomQoIXimBJeh' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'yxlNsjUgxBkF6wFP' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["oJeQediogEhhM2rI", "izGdKvOPdq5xrgxS", "my1DN9LFkYW5DQyj"]}' '4bj5Ro2ogaKt2ujQ' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'Sa3Zdb65UXmy0Zp6' --login_with_auth "Bearer foo"
challenge-public-list-schedules-by-goal 'iIaTIKUkmkk9QM0N' 'BMA9ORxpzwLR2AK6' --login_with_auth "Bearer foo"
challenge-public-list-schedules 'eXUGPJsw1fiP80G9' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "Pclxcft2ulIJzPyr"}' 'VEiOG4UcqsuGKHhM' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'RWLVd3DlhLuIpomM' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression '8sm1MiaI1mX2tJoA' '89' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["3HBvepnDCjgyJlXe", "36mgWjLfFmteue9n", "zJ6fH24T805tVg8J"]}' --login_with_auth "Bearer foo"
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
echo "1..38"

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
    '{"activeGoalsPerRotation": 33, "assignmentRule": "RANDOMIZED", "code": "jZpjvsugAOS7u8Ri", "description": "WyerCSa8SRgwsAj1", "endAfter": 16, "endDate": "1983-03-26T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1jglaDXTvKCWwNTA", "randomizedPerRotation": false, "repeatAfter": 34, "resetConfig": {"resetDate": 7, "resetDay": 31, "resetTime": "2wrS0uPdjhdinpng"}, "rotation": "WEEKLY", "startDate": "1985-11-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'Ly8wbhMssAHjapIk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'Y9Rf4wP57dBZNR88' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 6, "assignmentRule": "CUSTOM", "description": "UDpdONneAczbBdHb", "endAfter": 28, "endDate": "1980-05-14T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "AQUoY1GjlIIk0iKo", "randomizedPerRotation": false, "repeatAfter": 94, "resetConfig": {"resetDate": 86, "resetDay": 92, "resetTime": "b71ORYcmQbTU5JX8"}, "rotation": "DAILY", "startDate": "1980-01-17T00:00:00Z"}' \
    'kdQV0TqI8EFnmDbx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'Ixi4YKlONk2Q5Y4J' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'vaizwiilatuUjjt9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "lIMGql5ElEa9EIIl", "description": "GcHB3CfR3ncDlwi3", "isActive": true, "name": "EIjowLqc3ecjXJbZ", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "KKoxLE1Y3Dymtj3g", "parameterType": "ENTITLEMENT", "statCycleId": "rYaT5hOPjaf3H0tY", "targetValue": 0.14481148210713324}, {"matcher": "EQUAL", "parameterName": "kg1yLVbLFzHEP8cM", "parameterType": "ENTITLEMENT", "statCycleId": "NTwr0KHaAsmTej52", "targetValue": 0.7898035926700356}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "qMkNSawQUWDFJvJB", "parameterType": "ENTITLEMENT", "statCycleId": "PdH6hJPUAc0RVwXg", "targetValue": 0.4242826323117166}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "ntLMCuaXBWQi6BqP", "parameterType": "ACHIEVEMENT", "statCycleId": "1l2XcrciYNEzvSZI", "targetValue": 0.6661646277808061}, {"matcher": "GREATER_THAN", "parameterName": "oLfR1KtOv7Zy0b65", "parameterType": "STATISTIC", "statCycleId": "xh4ijFnE3Tam69qS", "targetValue": 0.8240580588193687}, {"matcher": "EQUAL", "parameterName": "C6f6QkmZXElW9YfR", "parameterType": "USERACCOUNT", "statCycleId": "se6AAz3S4czz0QKF", "targetValue": 0.19291005787340765}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "mVLu4AOec0z8eBee", "parameterType": "ENTITLEMENT", "statCycleId": "gOfnwIdlNa29fDLh", "targetValue": 0.9575937017937833}, {"matcher": "EQUAL", "parameterName": "1IslKHzGlLKWUtDQ", "parameterType": "STATISTIC", "statCycleId": "5LLLOexL4fZvWtND", "targetValue": 0.8812657644896864}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "DGQhNPEwiJCf2XJV", "parameterType": "STATISTIC", "statCycleId": "Y6Mca5afj12K2Izr", "targetValue": 0.4369555858609173}]}], "rewards": [{"itemId": "vvWm4udE0OXudXgN", "itemName": "ne8kJATwlc6esUp6", "qty": 0.7143368791302254, "type": "STATISTIC"}, {"itemId": "xnZ5Jrzzjrcaug6C", "itemName": "WVG8SWP3glU6musw", "qty": 0.7603074810276091, "type": "ENTITLEMENT"}, {"itemId": "hCUr6iTrjyEgarAd", "itemName": "NJOIG36I6tRbRcrE", "qty": 0.3438866605244085, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1987-11-07T00:00:00Z", "order": 74, "startTime": "1972-10-01T00:00:00Z"}, "tags": ["AdiPKDUVSC00PYeD", "cagginxnFIna3ydd", "cbsPheTH26IUJNvY"]}' \
    'uGRUvpZaHCuESOiI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'ZsMfB4ZH3mtgWgU4' \
    'pCAKxeE70CaunQNx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "ot371W9G4AvQkqsG", "isActive": false, "name": "hyoTsMWPAxUMkawa", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "AyrIwMif3BOdkocV", "parameterType": "ENTITLEMENT", "statCycleId": "d4BxqGWV6mTJ0sQs", "targetValue": 0.9428965349289447}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "bjvqhnUVLWu8olKd", "parameterType": "STATISTIC", "statCycleId": "KY7CbgsWqFWZX7kP", "targetValue": 0.44389852628706716}, {"matcher": "GREATER_THAN", "parameterName": "emPYdYT7DROCjtuz", "parameterType": "USERACCOUNT", "statCycleId": "iLoIllKlpO2pqiXJ", "targetValue": 0.5070542070929925}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "MLo4b9rIzqYkEpst", "parameterType": "STATISTIC_CYCLE", "statCycleId": "SUQPLG59e0k5ZtX6", "targetValue": 0.3616357547557504}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "wVeMK6MbGIVIu8vv", "parameterType": "STATISTIC", "statCycleId": "1ixY5rA1WoVeJIeP", "targetValue": 0.5078638352740438}, {"matcher": "GREATER_THAN", "parameterName": "ZrQzP4zvtdxdbZUp", "parameterType": "ACHIEVEMENT", "statCycleId": "WCYzo8yO2KTK9tmm", "targetValue": 0.6494469712989864}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "YnOpas6ghP1y4Zi7", "parameterType": "STATISTIC", "statCycleId": "sHqffnrfsGlfPaZK", "targetValue": 0.45110394879339744}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "4uKxaCgcGLuC3brW", "parameterType": "ACHIEVEMENT", "statCycleId": "GIFmlVf4jvapseE9", "targetValue": 0.6098341965022664}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "9bvhOrHflIOd6X3v", "parameterType": "ENTITLEMENT", "statCycleId": "msApRA6HX3RwrKt2", "targetValue": 0.07190610455309188}]}], "rewards": [{"itemId": "cozL0TOg54vCE48L", "itemName": "5oLF6M4lNa4JUMSH", "qty": 0.629614160062952, "type": "ENTITLEMENT"}, {"itemId": "lu01nryEJ0NqoTow", "itemName": "0qiOiC4j0iktm0ZP", "qty": 0.6052719381773668, "type": "ENTITLEMENT"}, {"itemId": "fLM9uSybRzWek2gZ", "itemName": "vRrvr0n9d9lvccKM", "qty": 0.6078663646828965, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1995-05-19T00:00:00Z", "order": 94, "startTime": "1972-05-26T00:00:00Z"}, "tags": ["D1kOmvrAejcq2Lgk", "QuaS7RBx3vim02jB", "OxrZDyvpcLYOWA8N"]}' \
    'jxOnaEok4nOOCzfs' \
    'flhjbngJOUn18G5M' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'lfDTk8aG40Nlncce' \
    'IZSwgAIkgzh4pTU0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-admin-list-schedules-by-goal' \
    'Am4DZhl0bQxFJ3sW' \
    'CqQpQ2FbKPFMycMS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'Q4qfAacR0LgB5BUX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'vjcu2s6w3VifnKqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
$PYTHON -m $MODULE 'challenge-admin-list-schedules' \
    'TSoGH1XEfY6QAYn6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'WQ5UBEU1QAOHfZiG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "ACCELERATE", "endDate": "1995-07-07T00:00:00Z"}' \
    'EGVxYheR3j5mNZ6v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminUpdateTiedChallengeSchedule' test.out

#- 19 AdminGetAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-get-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetAssignmentPlugin' test.out

#- 20 AdminUpdateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-update-assignment-plugin' \
    '{"appName": "wv7K8Asvt1j1Rx59", "extendType": "APP", "grpcServerAddress": "aEc7M4P7UckSC6eP"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "eN8i4GrFES9z7xue", "extendType": "CUSTOM", "grpcServerAddress": "Z7c53q7akMpcmnnx"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminCreateAssignmentPlugin' test.out

#- 22 AdminDeleteAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-delete-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminDeleteAssignmentPlugin' test.out

#- 23 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["6RVBrop9v7aZK3h6", "5hbN15zfQSfQrtfF", "3TQN0OcNDLr36vzo"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["hZyjMQAg5mPYhrLT", "yU8OhgfY9JQYGF4b", "YXEcENx9xZlAchob"], "userId": "44lONDDwMvgI0Hly"}, {"rewardIds": ["PR7wZNiVsF6xG2mX", "EQdbzIVy8alncV7v", "WgSHdfo07UctPErq"], "userId": "xyMyOK06MqQBErxg"}, {"rewardIds": ["jVBycvU4PbmRDcrg", "0DjQjBECXvea7H1m", "2lJFRZ3ZprZ60zMj"], "userId": "hTHeh94TSenE5hCF"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "kIf5weqZ18MH57l2"}' \
    'Zsrh90ETtYmGukz3' \
    'MnlrjcHp6B8Vj7rX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'FgDnDkdZ9bpjb1td' \
    'A3QhjCMW64f4XhIj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'SoTB2NMKtezapPr2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["QEPx3zTxBGtEJIYp", "puUSsKoHw2hyd12u", "SE7BEv3aevq6iohU"]}' \
    '1cg4W1IS3Uv1BpWo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewards' test.out

#- 29 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'GetChallenges' test.out

#- 30 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'JBaqdg2FHcunsS1l' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-public-list-schedules-by-goal' \
    'naO2m9vqjhbeK2qN' \
    '8g6x2PyYDo5R3hLi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
$PYTHON -m $MODULE 'challenge-public-list-schedules' \
    'D5sf5y1JsxJNGmyt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "0SQDUDoWBZVGLlkU"}' \
    'etzCAWc9x1aMjgGi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicClaimUserRewardsByGoalCode' test.out

#- 34 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'EvaluateMyProgress' test.out

#- 35 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'm51T107XIZRZ7tZd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    'Is0xf4czdt7zqmSK' \
    '49' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetPastUserProgression' test.out

#- 37 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetUserRewards' test.out

#- 38 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["7k8nbLzvtCIW5ynM", "KquUicAeIVXtoWAX", "hMlW4tLqX7OICf5o"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
