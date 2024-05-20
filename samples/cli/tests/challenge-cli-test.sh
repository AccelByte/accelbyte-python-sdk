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
challenge-admin-create-goal '{"code": "Xp38zsCTCrbCbPOy", "description": "NQkT7NvyE3cwyALc", "isActive": true, "name": "zjMf8GZ2WBZqxYG3", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Os1PXhT5FvdiRilZ", "parameterType": "STATISTIC", "statCycleId": "i7pKxR8dl0zRVW4E", "targetValue": 0.8380605562901376}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "n7Z4U68su8XfqlqN", "parameterType": "STATISTIC", "statCycleId": "GHavj7AorKsxwkos", "targetValue": 0.42274927292755815}, {"matcher": "EQUAL", "parameterName": "ecdKi5r6QEa1ysLE", "parameterType": "USERACCOUNT", "statCycleId": "l3rGN9A3sNm84hdd", "targetValue": 0.71805868669012}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Ht0P7MIIR7CkyF6C", "parameterType": "STATISTIC", "statCycleId": "duuyZ0GhDogqrhBR", "targetValue": 0.05902198435088035}, {"matcher": "GREATER_THAN", "parameterName": "5MYzYiKWe5dNRljv", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ddVCvu9vx5KQ7KYn", "targetValue": 0.5503561783847083}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "lyuI9a2I9u6Vpbsx", "parameterType": "STATISTIC_CYCLE", "statCycleId": "xUfofvnnSuB0y5WU", "targetValue": 0.18104465135101555}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "MdI4sNveabntBSxT", "parameterType": "ACHIEVEMENT", "statCycleId": "kgghGoYupD391C2q", "targetValue": 0.307372130085386}, {"matcher": "LESS_THAN", "parameterName": "okahFjkQsfCaTmt1", "parameterType": "ACHIEVEMENT", "statCycleId": "goNm03VLisV6zwPu", "targetValue": 0.23204256832569836}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "td6TC6I3lMjGSWN2", "parameterType": "STATISTIC", "statCycleId": "na7qxNeIxPz6MbwL", "targetValue": 0.9370297381712973}]}], "rewards": [{"itemId": "IY69z1UaLqYSYWyt", "itemName": "LPziZMdjxcBZufQx", "qty": 0.5186542248728682, "type": "ENTITLEMENT"}, {"itemId": "6iiPlSC2uE4o5Vwd", "itemName": "o3fePqIJA8IHtrkm", "qty": 0.32441777518722514, "type": "STATISTIC"}, {"itemId": "hpDDWVAla2l5BYNt", "itemName": "IuS5S5XUdjsoqwGy", "qty": 0.41294625439238875, "type": "STATISTIC"}], "schedule": {"endTime": "1980-01-23T00:00:00Z", "order": 17, "startTime": "1989-10-02T00:00:00Z"}, "tags": ["gwQYv7t1o7TTr1Dm", "rhZv15T7quIOvBMc", "aYmvCkGZ5dAgqxpB"]}' 'FmaLoxozr6wfNPX2' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'bOItRMvqtlB2jJCS' 'QT279ZZPYGu0rdlg' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "dWyOtXi3choQrpOs", "isActive": true, "name": "mDc3fxU8MyKrQpM4", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "kkK6KKXNB3Gv0Iqm", "parameterType": "STATISTIC", "statCycleId": "51TkhjYnaq6foWvX", "targetValue": 0.005608630638184953}, {"matcher": "EQUAL", "parameterName": "vmEejtGeoyIPa8ZR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "mykmoPYgc2L4jk4L", "targetValue": 0.23972943158936733}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LSP0pf4IxjUkl535", "parameterType": "ACHIEVEMENT", "statCycleId": "6BXksUC9b6i5lZC9", "targetValue": 0.371030313393404}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "32e8c5csSovoqsZN", "parameterType": "USERACCOUNT", "statCycleId": "wbmXgdAPh1EThG96", "targetValue": 0.10337554430192475}, {"matcher": "LESS_THAN", "parameterName": "ZxfgPubTDIHrvqAT", "parameterType": "STATISTIC", "statCycleId": "EeERmDnyeFoF7VSZ", "targetValue": 0.9402783158146515}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "JbRFQSKVPHbn4Xxt", "parameterType": "STATISTIC_CYCLE", "statCycleId": "UhAEtrmjqU6YE3p4", "targetValue": 0.18072800126000954}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Zqan0nSBJroav91G", "parameterType": "STATISTIC", "statCycleId": "eKtW18iGeUlc9d9s", "targetValue": 0.23761844917164}, {"matcher": "EQUAL", "parameterName": "9Zw5D2L7vIYhGGSy", "parameterType": "USERACCOUNT", "statCycleId": "QvsHXNUNe4mhgo5Q", "targetValue": 0.4507852562022244}, {"matcher": "GREATER_THAN", "parameterName": "lSAiYnNjkfZrQvGg", "parameterType": "ACHIEVEMENT", "statCycleId": "k03QXcKMDYDDxHSZ", "targetValue": 0.14893701811610782}]}], "rewards": [{"itemId": "tqXyJ58f7Gc26Sai", "itemName": "GVkydwYWQG26yUZN", "qty": 0.20098313776149357, "type": "STATISTIC"}, {"itemId": "BcvrbYCwZtxFHyPL", "itemName": "tI8ilbyDPUIj88ce", "qty": 0.1743432947601835, "type": "ENTITLEMENT"}, {"itemId": "pp2ncYAHdNzDmeIP", "itemName": "6rOvDz9KOsb392k6", "qty": 0.8147044217061608, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1987-10-21T00:00:00Z", "order": 42, "startTime": "1987-06-19T00:00:00Z"}, "tags": ["fRByjlBiuFM3FIoV", "k8T3GpAnkCmBUqg2", "SCnqntX9y1aZSWMi"]}' 'Vi10sG6vxkfUcmqR' 'RbceJ5i0EeDxOgBn' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'hhqElIaDml48wdNF' 'LTm5T50x9WT0GfH2' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'rtOa4EXsXzOXQAk4' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'mqrxzTtuLl4XlbGL' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge '8QOxtjzm8y2wNhmw' --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["oYZyI4EFZKBcYrCE", "AE7WIsfmx40NLRc6", "m8heKnWhzfe2Nube"]}' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'oKFeIaFQCYoDPICp' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'nduEEQlULdJz4mnR' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'BkMNxvvKgAT8mJrY' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["q6hRkloqxM3gpwxc", "fMy9XzjjI5YbsKoA", "DkzJEN2VHzih3bit"]}' --login_with_auth "Bearer foo"
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
    '{"activeGoalsPerRotation": 71, "assignmentRule": "FIXED", "code": "Wn3CO39PXDNxtXge", "description": "O3FgkXhjDzaQY3sn", "endAfter": 28, "endDate": "1979-05-01T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "fADMMAXFaY9eKa69", "repeatAfter": 43, "rotation": "DAILY", "startDate": "1973-12-29T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'fZgrbHDIDm4hMzF4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 93, "assignmentRule": "RANDOMIZED", "description": "tjCtoYetOO847g8O", "endAfter": 41, "endDate": "1990-01-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "OfjnCuHZ3c46IjGa", "repeatAfter": 99, "rotation": "NONE", "startDate": "1996-04-08T00:00:00Z"}' \
    'vYmmDg7VYPXIuvUY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'TZBRujIUE1Tq5jyA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'ZvkRCMNFIurjh2im' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "db4rbkXj0ZwsVC0g", "description": "L97ZVJSPqJiwv1ql", "isActive": true, "name": "B1RSKs6gQxC3Gb7S", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "4zGYY7KQI1AeFgPq", "parameterType": "ACHIEVEMENT", "statCycleId": "ZtfNWql4nmwAft4g", "targetValue": 0.2599040255980746}, {"matcher": "GREATER_THAN", "parameterName": "OkQ1jMD3cym8xIfk", "parameterType": "STATISTIC", "statCycleId": "W2grREOLx0KOww3H", "targetValue": 0.5595393055762616}, {"matcher": "LESS_THAN", "parameterName": "ohLtl9Zuhytm5UDr", "parameterType": "USERACCOUNT", "statCycleId": "6QXCs5SPBbRPZTF6", "targetValue": 0.23852655500367037}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "gMdIIlhS1fSiM933", "parameterType": "STATISTIC", "statCycleId": "JPN4eXbJE5Vs2Gcy", "targetValue": 0.2414510509760942}, {"matcher": "GREATER_THAN", "parameterName": "evcAx2K2zkRenmPZ", "parameterType": "STATISTIC", "statCycleId": "UgxBkF6wFPoJeQed", "targetValue": 0.1305669012554801}, {"matcher": "GREATER_THAN", "parameterName": "shZyZl5x4bRXBHUT", "parameterType": "STATISTIC_CYCLE", "statCycleId": "dq5xrgxSmy1DN9LF", "targetValue": 0.1743393071071534}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "UiGKXVFCmpo6sPwV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "EDSJsEK5QpNhlI2i", "targetValue": 0.7117566410393689}, {"matcher": "LESS_THAN", "parameterName": "iIaTIKUkmkk9QM0N", "parameterType": "USERACCOUNT", "statCycleId": "nb76tFkEORV3bu1b", "targetValue": 0.6319072603496648}, {"matcher": "LESS_THAN", "parameterName": "UGPJsw1fiP80G9Pc", "parameterType": "STATISTIC", "statCycleId": "CFrHHC3DpZxkrQDX", "targetValue": 0.3323122013871699}]}], "rewards": [{"itemId": "NFviMarv8mnfHK8C", "itemName": "CmE2lPnsbD3SGEdl", "qty": 0.36956195996585484, "type": "STATISTIC"}, {"itemId": "iaI1mX2tJoARtdbB", "itemName": "e7udsMrok0WvGYYn", "qty": 0.3817896258195451, "type": "ENTITLEMENT"}, {"itemId": "709xbnGezKsDwG2o", "itemName": "mOR2nvYI9TVqJdvz", "qty": 0.03948707352260006, "type": "STATISTIC"}], "schedule": {"endTime": "1971-02-26T00:00:00Z", "order": 10, "startTime": "1984-11-26T00:00:00Z"}, "tags": ["paXp5JMl5LL4bTxB", "mZjdrrIxsB0NRsB1", "fPqqRRulpqpymDkQ"]}' \
    'htrHWwRVnwVBOqOH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'i8pWGd1juYhiqjRJ' \
    'OqB5F93zFQbJndUD' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "pdONneAczbBdHb2s", "isActive": false, "name": "AQUoY1GjlIIk0iKo", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "1j02o7JjTXAQN0qd", "parameterType": "STATISTIC_CYCLE", "statCycleId": "cLjMXJRk0eaKQDOJ", "targetValue": 0.3497309502470263}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "xi4YKlONk2Q5Y4Jv", "parameterType": "ACHIEVEMENT", "statCycleId": "aCNYIWekp18lOC3m", "targetValue": 0.6380566851428628}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Gql5ElEa9EIIlGcH", "parameterType": "USERACCOUNT", "statCycleId": "xwhRON0bc1eMbEIj", "targetValue": 0.2280946858602354}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "Lqc3ecjXJbZDKKox", "parameterType": "USERACCOUNT", "statCycleId": "645xpdXpai0rYaT5", "targetValue": 0.12570592316175022}, {"matcher": "GREATER_THAN", "parameterName": "Pjaf3H0tYighU0VU", "parameterType": "ACHIEVEMENT", "statCycleId": "bLFzHEP8cM4NTwr0", "targetValue": 0.5961497969621888}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "ZXiR1DJ7HVWqMkNS", "parameterType": "ACHIEVEMENT", "statCycleId": "AURt9plCSVq8PdH6", "targetValue": 0.12524752646805093}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "UAc0RVwXgAgntLMC", "parameterType": "STATISTIC_CYCLE", "statCycleId": "deoV9Lx5RDA1l2Xc", "targetValue": 0.27555511484509476}, {"matcher": "EQUAL", "parameterName": "ancUZGCHsZYoLfR1", "parameterType": "ACHIEVEMENT", "statCycleId": "tOv7Zy0b65uvuKNu", "targetValue": 0.4017498584379524}, {"matcher": "LESS_THAN", "parameterName": "ytZQ7M6Nzy1adnSK", "parameterType": "STATISTIC", "statCycleId": "LFKx1dX4LuWJu3pD", "targetValue": 0.623061309853444}]}], "rewards": [{"itemId": "UAeeZ97SBROPYuG6", "itemName": "XqP6oo7G73zdxTgO", "qty": 0.08964835814848815, "type": "ENTITLEMENT"}, {"itemId": "8J1nsv4W2OJhtafx", "itemName": "MSJlHeb34sZKHcl5", "qty": 0.6060620238579979, "type": "STATISTIC"}, {"itemId": "exL4fZvWtND2tcBF", "itemName": "pX8lNtFEJ7tnkY6M", "qty": 0.03415281833405337, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1976-06-03T00:00:00Z", "order": 1, "startTime": "1998-02-09T00:00:00Z"}, "tags": ["ozhLVA3kE8jKvgat", "OEBM70TdlNBJYOmp", "u1VCarzBsV6xnZ5J"]}' \
    'rzzjrcaug6CWVG8S' \
    'WP3glU6muswVJnNn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'N7kAa7j0riFc5HTH' \
    'QIoVsGo7dwV9DBqF' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'KHQkETJyTlUrwDTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'oujQD4IEiH9Z5qXn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    '3aoRtlqOECohViHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["5CzgFSy8X1A3PrIf", "apq5AAeMe4L3mDWO", "RBVXTIIJM9XsYIIZ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'xiXNMR9BgaWcFX3S' \
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
    'UBhyoTsMWPAxUMka' \
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
    'waGpAyrIwMif3BOd' \
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
    '{"rewardIDs": ["kocVTd4BxqGWV6mT", "J0sQs6XNbjvqhnUV", "LWu8olKdxL6ozRmD"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
