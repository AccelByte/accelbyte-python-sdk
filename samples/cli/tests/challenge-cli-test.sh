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
challenge-admin-get-challenge 'bbgorQeFbQ1g7qbP' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 28, "assignmentRule": "RANDOMIZED", "description": "gUNB1vRodwpzS6Da", "endAfter": 60, "endDate": "1980-05-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1Jub74CUkNmKJfh5", "randomizedPerRotation": false, "repeatAfter": 21, "resetConfig": {"resetDate": 95, "resetDay": 21, "resetTime": "1aXlFcDtgOjchIua"}, "rotation": "NONE", "startDate": "1972-04-21T00:00:00Z"}' 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'hRTcPiSuL0Sly6XM' --login_with_auth "Bearer foo"
challenge-admin-get-goals '4OI18mAQLnzjMf8G' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "Z2WBZqxYG3aREAu2", "description": "D6QVKNCWP75TB0i7", "isActive": false, "name": "x4c8OumKtPDKJDXn", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "68su8XfqlqNiTvB6", "parameterType": "ACHIEVEMENT", "statCycleId": "AorKsxwkosAVerXp", "targetValue": 0.044827790074906226}, {"matcher": "LESS_THAN", "parameterName": "r6QEa1ysLEzth6mX", "parameterType": "ENTITLEMENT", "statCycleId": "A3sNm84hddSpHt0P", "targetValue": 0.9573950533618901}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "m4eu6d5tA5jUmiTq", "parameterType": "ENTITLEMENT", "statCycleId": "GhDogqrhBRd8lDR6", "targetValue": 0.2614624114028117}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "PRZYdFLIAjGGJddV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Rgat0SevkLGMS0ly", "targetValue": 0.3296200435831247}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "aO35llzQRaT5kPxU", "parameterType": "ACHIEVEMENT", "statCycleId": "qUI06UpOXGSLmCVu", "targetValue": 0.5432320240791549}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "PlLlkvR8sKgnuRkg", "parameterType": "ACHIEVEMENT", "statCycleId": "53HGCiljvjKoyD6S", "targetValue": 0.4630900639157074}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "GrncqmLtjQHAf8Tg", "parameterType": "ENTITLEMENT", "statCycleId": "7FXGk2s9Q0mPVo3t", "targetValue": 0.36968420675412095}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "d6TC6I3lMjGSWN2l", "parameterType": "ACHIEVEMENT", "statCycleId": "a7qxNeIxPz6MbwL6", "targetValue": 0.5498505917979803}, {"matcher": "LESS_THAN", "parameterName": "69z1UaLqYSYWytLP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "0yYoNRKd3IL5TAQ6", "targetValue": 0.140088987889472}]}], "rewards": [{"itemId": "iPlSC2uE4o5Vwdo3", "itemName": "fePqIJA8IHtrkmu0", "qty": 0.1180749210271913, "type": "STATISTIC"}, {"itemId": "mn9HrNQy4uZAAiE0", "itemName": "mit9RGCCHYzUOcEd", "qty": 0.2985504998682327, "type": "ENTITLEMENT"}, {"itemId": "i9gwQYv7t1o7TTr1", "itemName": "DmrhZv15T7quIOvB", "qty": 0.627304395825015, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1994-01-02T00:00:00Z", "order": 90, "startTime": "1977-08-15T00:00:00Z"}, "tags": ["vCkGZ5dAgqxpBFma", "Loxozr6wfNPX2bOI", "tRMvqtlB2jJCSQT2"]}' '79ZZPYGu0rdlgdWy' --login_with_auth "Bearer foo"
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
challenge-public-get-past-user-progression 'Q1jMD3cym8xIfkOV' '100' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["JLHC9LxhvNXTwGBC", "tohLtl9Zuhytm5UD", "rT6QXCs5SPBbRPZT"]}' --login_with_auth "Bearer foo"
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
echo "1..25"

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
    '{"activeGoalsPerRotation": 64, "assignmentRule": "UNSCHEDULED", "code": "6oQAXVG7tnsZg5Qg", "description": "XjvyGJPN4eXbJE5V", "endAfter": 38, "endDate": "1981-09-27T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "cyomQoIXimBJehyx", "randomizedPerRotation": false, "repeatAfter": 26, "resetConfig": {"resetDate": 81, "resetDay": 85, "resetTime": "sjUgxBkF6wFPoJeQ"}, "rotation": "DAILY", "startDate": "1996-01-28T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    '7ZshZyZl5x4bRXBH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 96, "assignmentRule": "UNSCHEDULED", "description": "TrDzZSKscfOcYu3d", "endAfter": 32, "endDate": "1987-08-25T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "ROYqUiGKXVFCmpo6", "randomizedPerRotation": true, "repeatAfter": 0, "resetConfig": {"resetDate": 86, "resetDay": 75, "resetTime": "wVOEDSJsEK5QpNhl"}, "rotation": "WEEKLY", "startDate": "1999-03-04T00:00:00Z"}' \
    'Zp6iIaTIKUkmkk9Q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'M0NBMA9ORxpzwLR2' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'AK6eXUGPJsw1fiP8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "0G9Pclxcft2ulIJz", "description": "PyrVEiOG4UcqsuGK", "isActive": false, "name": "hMRWLVd3DlhLuIpo", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "GEdlwuUccE536ugB", "parameterType": "STATISTIC", "statCycleId": "RtdbBe7udsMrok0W", "targetValue": 0.3449427924495365}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "6mgWjLfFmteue9nz", "parameterType": "USERACCOUNT", "statCycleId": "sDwG2omOR2nvYI9T", "targetValue": 0.7603933724742137}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "jZpjvsugAOS7u8Ri", "parameterType": "ENTITLEMENT", "statCycleId": "yerCSa8SRgwsAj1i", "targetValue": 0.16858403610366324}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "0NRsB1fPqqRRulpq", "parameterType": "ENTITLEMENT", "statCycleId": "2wrS0uPdjhdinpng", "targetValue": 0.9333933028392105}, {"matcher": "LESS_THAN", "parameterName": "OqOHi8pWGd1juYhi", "parameterType": "STATISTIC", "statCycleId": "Y9Rf4wP57dBZNR88", "targetValue": 0.8183943632941597}, {"matcher": "EQUAL", "parameterName": "UDpdONneAczbBdHb", "parameterType": "ENTITLEMENT", "statCycleId": "slt71B1SmZp2JZp5", "targetValue": 0.8517753424555412}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "TS1j02o7JjTXAQN0", "parameterType": "STATISTIC", "statCycleId": "8ccLjMXJRk0eaKQD", "targetValue": 0.6463301332684692}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "xIxi4YKlONk2Q5Y4", "parameterType": "USERACCOUNT", "statCycleId": "02aCNYIWekp18lOC", "targetValue": 0.8983793347380894}, {"matcher": "GREATER_THAN", "parameterName": "IMGql5ElEa9EIIlG", "parameterType": "ACHIEVEMENT", "statCycleId": "spxwhRON0bc1eMbE", "targetValue": 0.5506595717763593}]}], "rewards": [{"itemId": "jowLqc3ecjXJbZDK", "itemName": "KoxLE1Y3Dymtj3gi", "qty": 0.6670445338537666, "type": "ENTITLEMENT"}, {"itemId": "aT5hOPjaf3H0tYig", "itemName": "hU0VUfcYHJbBfAKS", "qty": 0.13851733230896857, "type": "STATISTIC"}, {"itemId": "3VgsZXiR1DJ7HVWq", "itemName": "MkNSawQUWDFJvJBW", "qty": 0.13703499487204396, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1972-10-05T00:00:00Z", "order": 96, "startTime": "1976-03-05T00:00:00Z"}, "tags": ["BeIXuqDuAXI66bQ7", "1w0deoV9Lx5RDA1l", "2XcrciYNEzvSZIPk"]}' \
    'hSgORcz5S5BvmgBL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'xh4ijFnE3Tam69qS' \
    'Z7PC6f6QkmZXElW9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "YfRSse6AAz3S4czz", "isActive": true, "name": "KFlAVmVLu4AOec0z", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "Beeoip68J1nsv4W2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "JhtafxMSJlHeb34s", "targetValue": 0.8300711270153808}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "tDQs61OQAoxyyQpR", "parameterType": "STATISTIC", "statCycleId": "CiiPDGQhNPEwiJCf", "targetValue": 0.8775573220604541}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "JVrlzqQls1ozhLVA", "parameterType": "STATISTIC_CYCLE", "statCycleId": "kE8jKvgatOEBM70T", "targetValue": 0.05459859299479697}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "BJYOmpu1VCarzBsV", "parameterType": "STATISTIC", "statCycleId": "xnZ5Jrzzjrcaug6C", "targetValue": 0.7836751184539907}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "G8SWP3glU6muswVJ", "parameterType": "ENTITLEMENT", "statCycleId": "hCUr6iTrjyEgarAd", "targetValue": 0.6403624247088936}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "HQIoVsGo7dwV9DBq", "parameterType": "USERACCOUNT", "statCycleId": "MdAdiPKDUVSC00PY", "targetValue": 0.07552958455363312}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "cagginxnFIna3ydd", "parameterType": "ACHIEVEMENT", "statCycleId": "oRtlqOECohViHA5C", "targetValue": 0.41683379952059063}, {"matcher": "EQUAL", "parameterName": "RUvpZaHCuESOiIZs", "parameterType": "STATISTIC_CYCLE", "statCycleId": "fB4ZH3mtgWgU4pCA", "targetValue": 0.5940105509526828}, {"matcher": "LESS_THAN", "parameterName": "IJM9XsYIIZxiXNMR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "9G4AvQkqsGnmyo5J", "targetValue": 0.5686449392615506}]}], "rewards": [{"itemId": "TUVmb8GEXFTlEMEs", "itemName": "FzYqwgK1Np5nodqp", "qty": 0.6059084554956198, "type": "ENTITLEMENT"}, {"itemId": "GWV6mTJ0sQs6XNbj", "itemName": "vqhnUVLWu8olKdxL", "qty": 0.9361027252754512, "type": "ENTITLEMENT"}, {"itemId": "CbgsWqFWZX7kPBom", "itemName": "8F9GLLTG8phc3n4i", "qty": 0.6018534527641566, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1984-10-09T00:00:00Z", "order": 67, "startTime": "1977-04-05T00:00:00Z"}, "tags": ["YI89hmguB8FOTjML", "o4b9rIzqYkEpstyV", "TBcrM8rG0rH0zcsw"]}' \
    'wVeMK6MbGIVIu8vv' \
    'wLc7KY3uVoJXTIMt' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'pgkieDyF97lGdMiH' \
    'KxbWCYzo8yO2KTK9' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'tmmOnYnOpas6ghP1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'y4Zi7s7QBlk44Z44' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'B1GZgKg4uKxaCgcG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["LuC3brWdTYCfHkIy", "Sok5DiXZtLW87rGy", "sryod3dNQrmsApRA"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminEvaluateProgress' test.out

#- 16 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["6HX3RwrKt2ecozL0", "TOg54vCE48L5oLF6", "M4lNa4JUMSHNgqRq"], "userId": "CV7usamANkZlOX9S"}, {"rewardIds": ["fo95HgXqKhTPkwfL", "M9uSybRzWek2gZvR", "rvr0n9d9lvccKMLh"], "userId": "rTrcBE2ItBS3KtKZ"}, {"rewardIds": ["We8aoFzAyBME74HU", "tipUWYhWV1qx8CzP", "ML52faXUr9Sk4lq2"], "userId": "faBcAXXKlhvyH8pa"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminClaimUsersRewards' test.out

#- 17 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'OJtxqMPpcVfRwNj5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminGetUserRewards' test.out

#- 18 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["47fH0XrKEDpEY8Vn", "ocGAjci0V3tBf2jn", "HGKXphn50c9tNLDl"]}' \
    'jhZ2jxLRX3z46OCa' \
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
    'GBeMfPlNos4yBRjr' \
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
    'ERHEonAZR8GmEu0q' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'PublicGetUserProgression' test.out

#- 23 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    '1p6QCyY6vSkVFWds' \
    '3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'PublicGetPastUserProgression' test.out

#- 24 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetUserRewards' test.out

#- 25 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["iGhxOdcuDXSxSc3a", "ZPV87pna08gxefTY", "KhuxaEc7M4P7UckS"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
