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
challenge-admin-create-challenge '{"activeGoalsPerRotation": 62, "assignmentRule": "RANDOMIZED", "code": "AxcVpFrttufHIRdH", "description": "9UzVRiXbqlAw7r6W", "endAfter": 9, "endDate": "1976-10-04T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "pzSn3ZPUdc0qh4n8", "repeatAfter": 26, "resetConfig": {"resetDate": 29, "resetDay": 51, "resetTime": "pBJHPtcDs8bBZLCX"}, "rotation": "NONE", "startDate": "1986-08-10T00:00:00Z"}' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'bbgorQeFbQ1g7qbP' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 28, "assignmentRule": "RANDOMIZED", "description": "gUNB1vRodwpzS6Da", "endAfter": 60, "endDate": "1980-05-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1Jub74CUkNmKJfh5", "repeatAfter": 31, "resetConfig": {"resetDate": 21, "resetDay": 95, "resetTime": "Y1aXlFcDtgOjchIu"}, "rotation": "DAILY", "startDate": "1980-06-11T00:00:00Z"}' 'cnz1JSDgY1TXp38z' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'sCTCrbCbPOyNQkT7' --login_with_auth "Bearer foo"
challenge-admin-get-goals 'NvyE3cwyALczNIic' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "Xm7agSrjJW2OQNOs", "description": "1PXhT5FvdiRilZ7o", "isActive": false, "name": "pKxR8dl0zRVW4EZG", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "68su8XfqlqNiTvB6", "parameterType": "ACHIEVEMENT", "statCycleId": "AorKsxwkosAVerXp", "targetValue": 0.044827790074906226}, {"matcher": "LESS_THAN", "parameterName": "r6QEa1ysLEzth6mX", "parameterType": "ENTITLEMENT", "statCycleId": "A3sNm84hddSpHt0P", "targetValue": 0.9573950533618901}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "m4eu6d5tA5jUmiTq", "parameterType": "ENTITLEMENT", "statCycleId": "GhDogqrhBRd8lDR6", "targetValue": 0.2614624114028117}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "PRZYdFLIAjGGJddV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Rgat0SevkLGMS0ly", "targetValue": 0.3296200435831247}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "aO35llzQRaT5kPxU", "parameterType": "ACHIEVEMENT", "statCycleId": "qUI06UpOXGSLmCVu", "targetValue": 0.5432320240791549}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "PlLlkvR8sKgnuRkg", "parameterType": "ACHIEVEMENT", "statCycleId": "53HGCiljvjKoyD6S", "targetValue": 0.4630900639157074}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "GrncqmLtjQHAf8Tg", "parameterType": "ENTITLEMENT", "statCycleId": "7FXGk2s9Q0mPVo3t", "targetValue": 0.36968420675412095}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "d6TC6I3lMjGSWN2l", "parameterType": "ACHIEVEMENT", "statCycleId": "a7qxNeIxPz6MbwL6", "targetValue": 0.5498505917979803}, {"matcher": "LESS_THAN", "parameterName": "69z1UaLqYSYWytLP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "0yYoNRKd3IL5TAQ6", "targetValue": 0.140088987889472}]}], "rewards": [{"itemId": "iPlSC2uE4o5Vwdo3", "itemName": "fePqIJA8IHtrkmu0", "qty": 0.1180749210271913, "type": "STATISTIC"}, {"itemId": "mn9HrNQy4uZAAiE0", "itemName": "mit9RGCCHYzUOcEd", "qty": 0.2985504998682327, "type": "ENTITLEMENT"}, {"itemId": "i9gwQYv7t1o7TTr1", "itemName": "DmrhZv15T7quIOvB", "qty": 0.627304395825015, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1994-01-02T00:00:00Z", "order": 90, "startTime": "1977-08-15T00:00:00Z"}, "tags": ["vCkGZ5dAgqxpBFma", "Loxozr6wfNPX2bOI", "tRMvqtlB2jJCSQT2"]}' '79ZZPYGu0rdlgdWy' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'OtXi3choQrpOsDBU' '5SepjChB3V0v52Dl' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "ym6puQ23xoJ8aeCn", "isActive": false, "name": "1TkhjYnaq6foWvXa", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "MrXsDr6kILsSSyDd", "parameterType": "ENTITLEMENT", "statCycleId": "vjj7il35MXbN9oCM", "targetValue": 0.6426563176887718}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LSP0pf4IxjUkl535", "parameterType": "USERACCOUNT", "statCycleId": "ateEKDpADz1x3poD", "targetValue": 0.9024476287590735}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "gb3boLQQ1MzH7Qm8", "parameterType": "ACHIEVEMENT", "statCycleId": "Bdte9NDUPVJf6c2Z", "targetValue": 0.8395216845227446}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "xfgPubTDIHrvqATh", "parameterType": "STATISTIC", "statCycleId": "eERmDnyeFoF7VSZ6", "targetValue": 0.2504161639501601}, {"matcher": "EQUAL", "parameterName": "bRFQSKVPHbn4Xxtu", "parameterType": "ACHIEVEMENT", "statCycleId": "LQRENjEEztx1WsYS", "targetValue": 0.13302522177831455}, {"matcher": "GREATER_THAN", "parameterName": "qan0nSBJroav91GX", "parameterType": "ENTITLEMENT", "statCycleId": "eKtW18iGeUlc9d9s", "targetValue": 0.23761844917164}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "w5D2L7vIYhGGSyEW", "parameterType": "STATISTIC", "statCycleId": "ZJJ42d3PBddN8S48", "targetValue": 0.18641370678755087}, {"matcher": "GREATER_THAN", "parameterName": "AiYnNjkfZrQvGgbL", "parameterType": "ACHIEVEMENT", "statCycleId": "3QXcKMDYDDxHSZjt", "targetValue": 0.26854986325450836}, {"matcher": "LESS_THAN", "parameterName": "rUEirnjX9fDmIbeZ", "parameterType": "STATISTIC", "statCycleId": "dwYWQG26yUZNmTBc", "targetValue": 0.3432922624655086}]}], "rewards": [{"itemId": "rbYCwZtxFHyPLtI8", "itemName": "ilbyDPUIj88cekdq", "qty": 0.4619540116281702, "type": "STATISTIC"}, {"itemId": "ncYAHdNzDmeIP6rO", "itemName": "vDz9KOsb392k6YmJ", "qty": 0.5081712926708803, "type": "ENTITLEMENT"}, {"itemId": "uySj29a9LJE8HoRS", "itemName": "1X2PFAAMwzHPxB1U", "qty": 0.3039074127269502, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1977-05-17T00:00:00Z", "order": 38, "startTime": "1977-06-08T00:00:00Z"}, "tags": ["Yw20DOqOBSC2DKHR", "uPMMWH8Yb33T5UBJ", "CjfcnLRfxeCSz9WE"]}' 'i8KlloeH0JT1ydua' 't2vQR3biBfsu4jms' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'RE2w1yEkLgh3tIYt' '4SqYUTLDx9gIiDan' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'dpGT2t24aOMh5eC3' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'IHeHSKLCa3xreNDU' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'WehwH3q31A806DJg' --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["as4b6z3LNUj7fdgL", "A84Z8YYk6QEgJjBb", "EDoNf3n0hEoRCAcf"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["80zfFyabWAgIUXiI", "07A68eaqC2J9jyEW", "6GLbc0NaKDUL3sa1"], "userId": "3lk1dQBHO86IlBhn"}, {"rewardIds": ["etU4RwTqUXlTDBzO", "uYsaZA2yyd4mbqoO", "fADMMAXFaY9eKa69"], "userId": "9bRVhyaKwwrAP2aM"}, {"rewardIds": ["lu7WtjCtoYetOO84", "7g8OudOfjnCuHZ3c", "46IjGa23YvYmmDg7"], "userId": "VYPXIuvUYTZBRujI"}]' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'UE1Tq5jyAZvkRCMN' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["FIurjh2imdb4rbkX", "j0ZwsVC0gL97ZVJS", "PqJiwv1qlYB1RSKs"]}' '6gQxC3Gb7S0o4zGY' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'Y7KQI1AeFgPqaOkv' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'o1aolB4lkKB4EYOk' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["Q1jMD3cym8xIfkOV", "W2grREOLx0KOww3H", "ICQLfl7MUBG7qtPu"]}' --login_with_auth "Bearer foo"
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
echo "1..24"

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
    '{"activeGoalsPerRotation": 36, "assignmentRule": "UNSCHEDULED", "code": "yAtURKLRkb738HGS", "description": "6rDgMdIIlhS1fSiM", "endAfter": 19, "endDate": "1999-06-25T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1m7Ta1PsKc50Kv6e", "repeatAfter": 4, "resetConfig": {"resetDate": 51, "resetDay": 28, "resetTime": "omQoIXimBJehyxlN"}, "rotation": "NONE", "startDate": "1997-03-14T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'nGBt4P7WnbdSJtjX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 16, "assignmentRule": "FIXED", "description": "shZyZl5x4bRXBHUT", "endAfter": 36, "endDate": "1972-09-04T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "zZSKscfOcYu3dpCR", "repeatAfter": 83, "resetConfig": {"resetDate": 100, "resetDay": 34, "resetTime": "DQyj4bj5Ro2ogaKt"}, "rotation": "NONE", "startDate": "1986-03-20T00:00:00Z"}' \
    'DSJsEK5QpNhlI2iS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    '5EpGhhvXYck0upMz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'UYnb76tFkEORV3bu' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "1bNCtX7W40V6Do5s", "description": "YadCCFrHHC3DpZxk", "isActive": true, "name": "rVEiOG4UcqsuGKHh", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "d3DlhLuIpomM8sm1", "parameterType": "USERACCOUNT", "statCycleId": "uUccE536ugBp3HBv", "targetValue": 0.06522164549941556}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "7udsMrok0WvGYYnx", "parameterType": "USERACCOUNT", "statCycleId": "V709xbnGezKsDwG2", "targetValue": 0.22662229633052522}, {"matcher": "GREATER_THAN", "parameterName": "805tVg8JqU0jZpjv", "parameterType": "STATISTIC", "statCycleId": "WbfUpaXp5JMl5LL4", "targetValue": 0.019838862162606774}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "RgwsAj1ik1jglaDX", "parameterType": "ACHIEVEMENT", "statCycleId": "vKCWwNTAhd2wrS0u", "targetValue": 0.6614576229025841}, {"matcher": "EQUAL", "parameterName": "rHWwRVnwVBOqOHi8", "parameterType": "ENTITLEMENT", "statCycleId": "MssAHjapIkY9Rf4w", "targetValue": 0.6742448280044169}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "7dBZNR88YbCtmKy8", "parameterType": "USERACCOUNT", "statCycleId": "eAczbBdHb2slt71B", "targetValue": 0.8581183840389944}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "Zp2JZp50CnPb71OR", "parameterType": "ACHIEVEMENT", "statCycleId": "JjTXAQN0qdskdQV0", "targetValue": 0.7307744004330512}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "k0eaKQDOJvrTefgl", "parameterType": "STATISTIC", "statCycleId": "Nk2Q5Y4Jvaizwiil", "targetValue": 0.011943036093592707}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "p18lOC3mNqF7Bl0L", "parameterType": "ACHIEVEMENT", "statCycleId": "a9EIIlGcHB3CfR3n", "targetValue": 0.03817146295410734}]}], "rewards": [{"itemId": "Dlwi3v3MFFJ1KesK", "itemName": "oELCpobBEG8X645x", "qty": 0.2442175849600673, "type": "ENTITLEMENT"}, {"itemId": "mtj3giPg4x4yiPX6", "itemName": "ues1Hhhkg1yLVbLF", "qty": 0.41532618984337, "type": "ENTITLEMENT"}, {"itemId": "EP8cM4NTwr0KHaAs", "itemName": "mTej52WKi6tArAUR", "qty": 0.3223408966322733, "type": "STATISTIC"}], "schedule": {"endTime": "1979-09-13T00:00:00Z", "order": 23, "startTime": "1989-08-18T00:00:00Z"}, "tags": ["vJBWic7UkBeIXuqD", "uAXI66bQ71w0deoV", "9Lx5RDA1l2XcrciY"]}' \
    'NEzvSZIPkhSgORcz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    '5S5BvmgBLxh4ijFn' \
    'E3Tam69qSZ7PC6f6' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "QkmZXElW9YfRSse6", "isActive": true, "name": "DMUAeeZ97SBROPYu", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "4AOec0z8eBeeoip6", "parameterType": "STATISTIC", "statCycleId": "J1nsv4W2OJhtafxM", "targetValue": 0.7201033844542121}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "KHzGlLKWUtDQs61O", "parameterType": "STATISTIC_CYCLE", "statCycleId": "exL4fZvWtND2tcBF", "targetValue": 0.24664860692685509}, {"matcher": "LESS_THAN", "parameterName": "lNtFEJ7tnkY6Mca5", "parameterType": "ACHIEVEMENT", "statCycleId": "1ozhLVA3kE8jKvga", "targetValue": 0.32208679654640826}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "0OXudXgNne8kJATw", "parameterType": "ENTITLEMENT", "statCycleId": "VCarzBsV6xnZ5Jrz", "targetValue": 0.4123320928589145}, {"matcher": "GREATER_THAN", "parameterName": "7hfxnhLd3Knaknoe", "parameterType": "ACHIEVEMENT", "statCycleId": "lU6muswVJnNnN7kA", "targetValue": 0.004936384328902088}, {"matcher": "GREATER_THAN", "parameterName": "j0riFc5HTHQIoVsG", "parameterType": "ENTITLEMENT", "statCycleId": "tRbRcrEveMdAdiPK", "targetValue": 0.4765700876258757}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "rwDTnoujQD4IEiH9", "parameterType": "ENTITLEMENT", "statCycleId": "5qXn3aoRtlqOECoh", "targetValue": 0.7628790494037759}, {"matcher": "GREATER_THAN", "parameterName": "JNvYuGRUvpZaHCuE", "parameterType": "USERACCOUNT", "statCycleId": "OiIZsMfB4ZH3mtgW", "targetValue": 0.10516429433349572}, {"matcher": "LESS_THAN", "parameterName": "pCAKxeE70CaunQNx", "parameterType": "ENTITLEMENT", "statCycleId": "XNMR9BgaWcFX3SUB", "targetValue": 0.11412018683053804}]}], "rewards": [{"itemId": "yoTsMWPAxUMkawaG", "itemName": "pAyrIwMif3BOdkoc", "qty": 0.7738112004177365, "type": "ENTITLEMENT"}, {"itemId": "d4BxqGWV6mTJ0sQs", "itemName": "6XNbjvqhnUVLWu8o", "qty": 0.18522450703618587, "type": "ENTITLEMENT"}, {"itemId": "dxL6ozRmDD0jJvlf", "itemName": "V5OemPYdYT7DROCj", "qty": 0.3161755867436815, "type": "STATISTIC"}], "schedule": {"endTime": "1977-07-26T00:00:00Z", "order": 65, "startTime": "1975-11-16T00:00:00Z"}, "tags": ["LoIllKlpO2pqiXJF", "3WGRaoQomSJC4Ddr", "KF7SUQPLG59e0k5Z"]}' \
    'tX6wK7PpUlcIW32i' \
    'K7MGt1ixY5rA1WoV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'eJIePF8ZrQzP4zvt' \
    'dxdbZUpd6FJtHJ1p' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'yVwyKQLY6FEO65Rb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    '3z7CYLM8IlsHqffn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'rfsGlfPaZKBwa3Dd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["b60ufPpzwj1QGIFm", "lVf4jvapseE9LN9b", "vhOrHflIOd6X3viL"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["vtEk4mTIpUA9gxo8", "SV38nEhoXmM2W7l6", "jHMA2rG3nakopAyw"], "userId": "elu01nryEJ0NqoTo"}, {"rewardIds": ["w0qiOiC4j0iktm0Z", "PLkLOsp0LZ5njN86", "Hl8kUXzt6bSc6bWv"], "userId": "gpVyW9dD1kOmvrAe"}, {"rewardIds": ["jcq2LgkQuaS7RBx3", "vim02jBOxrZDyvpc", "LYOWA8NjxOnaEok4"], "userId": "nOOCzfsflhjbngJO"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminClaimUsersRewards' test.out

#- 17 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'Un18G5MlfDTk8aG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserRewards' test.out

#- 18 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["0NlncceIZSwgAIkg", "zh4pTU0Am4DZhl0b", "QxFJ3sWCqQpQ2FbK"]}' \
    'PFMycMSQ4qfAacR0' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminClaimUserRewards' test.out

#- 19 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'GetChallenges' test.out

#- 20 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'LgB5BUXvjcu2s6w3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'PublicGetScheduledGoals' test.out

#- 21 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'EvaluateMyProgress' test.out

#- 22 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'VifnKqmTSoGH1XEf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetUserProgression' test.out

#- 23 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicGetUserRewards' test.out

#- 24 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["Y6QAYn6WQ5UBEU1Q", "AOHfZiGhxOdcuDXS", "xSc3aZPV87pna08g"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
