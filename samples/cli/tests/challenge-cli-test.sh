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
challenge-admin-create-challenge '{"activeGoalsPerRotation": 62, "assignmentRule": "RANDOMIZED", "code": "AxcVpFrttufHIRdH", "description": "9UzVRiXbqlAw7r6W", "endAfter": 9, "endDate": "1976-10-04T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "pzSn3ZPUdc0qh4n8", "randomizedPerRotation": false, "repeatAfter": 29, "resetConfig": {"resetDate": 51, "resetDay": 31, "resetTime": "Z0m8SAMTwE6I56Ia"}, "rotation": "NONE", "startDate": "1986-08-10T00:00:00Z", "tags": ["bbgorQeFbQ1g7qbP", "ngUNB1vRodwpzS6D", "aDpv8N7ZQVqGj6oD"]}' --login_with_auth "Bearer foo"
challenge-admin-get-active-challenges 'LjWjkY1aXlFcDtgO' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'jchIua5tWEIC32og' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 100, "assignmentRule": "FIXED", "description": "Xp38zsCTCrbCbPOy", "endAfter": 82, "endDate": "1993-12-08T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "kT7NvyE3cwyALczN", "randomizedPerRotation": false, "repeatAfter": 11, "resetConfig": {"resetDate": 4, "resetDay": 67, "resetTime": "m7agSrjJW2OQNOs1"}, "rotation": "WEEKLY", "startDate": "1996-02-27T00:00:00Z", "tags": ["QVKNCWP75TB0i7pK", "xR8dl0zRVW4EZG9m", "0XcgGVbMqSszE8GH"]}' 'avj7AorKsxwkosAV' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'erXpc1C8XfwHuKeb' --login_with_auth "Bearer foo"
challenge-admin-get-goals '9l3rGN9A3sNm84hd' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "dSpHt0P7MIIR7Cky", "description": "F6C7duuyZ0GhDogq", "isActive": true, "name": "LzFQN05MYzYiKWe5", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "NRljv7IPrDQQRgat", "parameterType": "STATISTIC", "statCycleId": "SevkLGMS0lyuI9a2", "targetValue": 0.5586451007459506}, {"matcher": "GREATER_THAN", "parameterName": "u6Vpbsx5w8hqUI06", "parameterType": "STATISTIC", "statCycleId": "uB0y5WUlrMdI4sNv", "targetValue": 0.0793889042280268}, {"matcher": "EQUAL", "parameterName": "R8sKgnuRkgghGoYu", "parameterType": "ENTITLEMENT", "statCycleId": "ljvjKoyD6SCwGrnc", "targetValue": 0.2701608402093786}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "sfCaTmt1d67FXGk2", "parameterType": "STATISTIC", "statCycleId": "isV6zwPuo3td6TC6", "targetValue": 0.5617001388349081}, {"matcher": "EQUAL", "parameterName": "lMjGSWN2laRlxfcj", "parameterType": "USERACCOUNT", "statCycleId": "xPz6MbwL6IY69z1U", "targetValue": 0.004336979040178157}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "slpJSqGAXQ0yYoNR", "parameterType": "USERACCOUNT", "statCycleId": "cBZufQxGiHPllG4c", "targetValue": 0.8200266386097704}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "zfTD1ZBm3MqHcUmL", "parameterType": "USERACCOUNT", "statCycleId": "ZbSqb8RwNmn9HrNQ", "targetValue": 0.3881113892935165}, {"matcher": "GREATER_THAN", "parameterName": "uZAAiE0mit9RGCCH", "parameterType": "ENTITLEMENT", "statCycleId": "zUOcEdscKHPEqgA8", "targetValue": 0.3957330798014782}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "o7TTr1DmrhZv15T7", "parameterType": "STATISTIC", "statCycleId": "s4fYcTVU6RBt0zYo", "targetValue": 0.6200093333003253}]}], "rewards": [{"itemId": "cHyCUEXlAvxJMdal", "itemName": "wSyliWMNW5NyLu0M", "qty": 0.8897044393307694, "type": "ENTITLEMENT"}, {"itemId": "h2EI8JlDbPWbQ6Q9", "itemName": "lNmqRBaAkLnvxkT1", "qty": 0.7933119181487022, "type": "STATISTIC"}, {"itemId": "cmDc3fxU8MyKrQpM", "itemName": "4hkkK6KKXNB3Gv0I", "qty": 0.26030716352931993, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1985-09-13T00:00:00Z", "order": 27, "startTime": "1971-11-11T00:00:00Z"}, "tags": ["TkhjYnaq6foWvXa3", "bMrXsDr6kILsSSyD", "dmykmoPYgc2L4jk4"]}' 'Lo0LSP0pf4IxjUkl' --login_with_auth "Bearer foo"
challenge-admin-get-goal '535X3ateEKDpADz1' 'x3poD3Qgb3boLQQ1' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "MzH7Qm8bwbmXgdAP", "isActive": false, "name": "VJf6c2Z0QZxfgPub", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "cxvONZm3EeERmDny", "parameterType": "ACHIEVEMENT", "statCycleId": "TlmVr9XuoJbRFQSK", "targetValue": 0.7719025975634342}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "b3g7mSQUhAEtrmjq", "parameterType": "STATISTIC_CYCLE", "statCycleId": "6YE3p4lSck0ZHn5G", "targetValue": 0.54840393791272}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "9YBHqaTHeKtW18iG", "parameterType": "ACHIEVEMENT", "statCycleId": "eVHQipcCx9Zw5D2L", "targetValue": 0.9545564481008475}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "GqVvUfHQvsHXNUNe", "parameterType": "ENTITLEMENT", "statCycleId": "BddN8S48l9lyNApf", "targetValue": 0.1864684982252216}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "fZrQvGgbLdLsFzHk", "parameterType": "STATISTIC_CYCLE", "statCycleId": "YDDxHSZjtqXyJ58f", "targetValue": 0.9661143363909342}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "jX9fDmIbeZxzfTcy", "parameterType": "ENTITLEMENT", "statCycleId": "26yUZNmTBcvrbYCw", "targetValue": 0.836738720337986}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "xFHyPLtI8ilbyDPU", "parameterType": "USERACCOUNT", "statCycleId": "GLXpUL4pp2ncYAHd", "targetValue": 0.6409530795111873}, {"matcher": "LESS_THAN", "parameterName": "Iovmv9gsR5cJcHm3", "parameterType": "USERACCOUNT", "statCycleId": "2k6YmJFfRByjlBiu", "targetValue": 0.5125396592251268}, {"matcher": "LESS_THAN", "parameterName": "3FIoVk8T3GpAnkCm", "parameterType": "STATISTIC_CYCLE", "statCycleId": "PxB1UskYs4Yw20DO", "targetValue": 0.2686637172033929}]}], "rewards": [{"itemId": "OBSC2DKHRuPMMWH8", "itemName": "Yb33T5UBJCjfcnLR", "qty": 0.09078987770354718, "type": "STATISTIC"}, {"itemId": "BnhhqElIaDml48wd", "itemName": "NFLTm5T50x9WT0Gf", "qty": 0.5395236990698311, "type": "STATISTIC"}, {"itemId": "rtOa4EXsXzOXQAk4", "itemName": "mqrxzTtuLl4XlbGL", "qty": 0.9792003747256434, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1992-08-26T00:00:00Z", "order": 47, "startTime": "1971-06-12T00:00:00Z"}, "tags": ["ndpGT2t24aOMh5eC", "3IHeHSKLCa3xreND", "UWehwH3q31A806DJ"]}' 'gas4b6z3LNUj7fdg' 'LA84Z8YYk6QEgJjB' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'bEDoNf3n0hEoRCAc' 'f80zfFyabWAgIUXi' --login_with_auth "Bearer foo"
challenge-admin-list-schedules-by-goal 'I07A68eaqC2J9jyE' 'W6GLbc0NaKDUL3sa' --login_with_auth "Bearer foo"
challenge-admin-get-periods '13lk1dQBHO86IlBh' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'netU4RwTqUXlTDBz' --login_with_auth "Bearer foo"
challenge-admin-list-schedules 'OuYsaZA2yyd4mbqo' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'OfADMMAXFaY9eKa6' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "STOP", "endDate": "1981-01-14T00:00:00Z"}' 'dfZgrbHDIDm4hMzF' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "4TxodenSrUTvfqU0", "extendType": "APP", "grpcServerAddress": "8OudOfjnCuHZ3c46"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "IjGa23YvYmmDg7VY", "extendType": "APP", "grpcServerAddress": "XIuvUYTZBRujIUE1"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["Tq5jyAZvkRCMNFIu", "rjh2imdb4rbkXj0Z", "wsVC0gL97ZVJSPqJ"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["iwv1qlYB1RSKs6gQ", "xC3Gb7S0o4zGYY7K", "QI1AeFgPqaOkvo1a"], "userId": "olB4lkKB4EYOkQ1j"}, {"rewardIds": ["MD3cym8xIfkOVW2g", "rREOLx0KOww3HICQ", "Lfl7MUBG7qtPu64y"], "userId": "AtURKLRkb738HGS6"}, {"rewardIds": ["rDgMdIIlhS1fSiM9", "331m7Ta1PsKc50Kv", "6ecnEevcAx2K2zkR"], "userId": "enmPZnGBt4P7Wnbd"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "SJtjX7ZshZyZl5x4"}' 'bRXBHUTrDzZSKscf' 'OcYu3dpCROYqUiGK' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression 'XVFCmpo6sPwVOEDS' 'JsEK5QpNhlI2iS5E' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'pGhhvXYck0upMzUY' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["nb76tFkEORV3bu1b", "NCtX7W40V6Do5sYa", "dCCFrHHC3DpZxkrQ"]}' 'DXuNFviMarv8mnfH' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'K8CCmE2lPnsbD3SG' --login_with_auth "Bearer foo"
challenge-public-list-schedules-by-goal 'EdlwuUccE536ugBp' '3HBvepnDCjgyJlXe' --login_with_auth "Bearer foo"
challenge-public-list-schedules '36mgWjLfFmteue9n' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "zJ6fH24T805tVg8J"}' 'qU0jZpjvsugAOS7u' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression '8RiWyerCSa8SRgws' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'Aj1ik1jglaDXTvKC' '100' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["RRulpqpymDkQhtrH", "WwRVnwVBOqOHi8pW", "Gd1juYhiqjRJOqB5"]}' --login_with_auth "Bearer foo"
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
    '{"activeGoalsPerRotation": 64, "assignmentRule": "CUSTOM", "code": "3zFQbJndUDpdONne", "description": "AczbBdHb2slt71B1", "endAfter": 92, "endDate": "1987-04-07T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "Zp2JZp50CnPb71OR", "randomizedPerRotation": false, "repeatAfter": 73, "resetConfig": {"resetDate": 25, "resetDay": 19, "resetTime": "QbTU5JX8ccLjMXJR"}, "rotation": "MONTHLY", "startDate": "1989-02-02T00:00:00Z", "tags": ["EFnmDbxIxi4YKlON", "k2Q5Y4Jvaizwiila", "tuUjjt9lIMGql5El"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'Ea9EIIlGcHB3CfR3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetActiveChallenges' test.out

#- 5 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'ncDlwi3v3MFFJ1Ke' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetChallenge' test.out

#- 6 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 38, "assignmentRule": "CUSTOM", "description": "KoELCpobBEG8X645", "endAfter": 47, "endDate": "1986-05-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "dXpai0rYaT5hOPja", "randomizedPerRotation": false, "repeatAfter": 43, "resetConfig": {"resetDate": 10, "resetDay": 69, "resetTime": "s1Hhhkg1yLVbLFzH"}, "rotation": "WEEKLY", "startDate": "1985-12-03T00:00:00Z", "tags": ["fAKSiPW3VgsZXiR1", "DJ7HVWqMkNSawQUW", "DFJvJBWic7UkBeIX"]}' \
    'uqDuAXI66bQ71w0d' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminUpdateChallenge' test.out

#- 7 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'eoV9Lx5RDA1l2Xcr' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminDeleteChallenge' test.out

#- 8 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'ciYNEzvSZIPkhSgO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminGetGoals' test.out

#- 9 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "Rcz5S5BvmgBLxh4i", "description": "jFnE3Tam69qSZ7PC", "isActive": false, "name": "f6QkmZXElW9YfRSs", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "AAz3S4czz0QKFlAV", "parameterType": "ENTITLEMENT", "statCycleId": "G6XqP6oo7G73zdxT", "targetValue": 0.10820650406275201}, {"matcher": "GREATER_THAN", "parameterName": "fnwIdlNa29fDLh74", "parameterType": "STATISTIC", "statCycleId": "IslKHzGlLKWUtDQs", "targetValue": 0.9417139932964892}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "OQAoxyyQpRWCiiPD", "parameterType": "USERACCOUNT", "statCycleId": "BFpX8lNtFEJ7tnkY", "targetValue": 0.9441648528477075}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Qls1ozhLVA3kE8jK", "parameterType": "STATISTIC", "statCycleId": "m4udE0OXudXgNne8", "targetValue": 0.1634554017234996}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "mpu1VCarzBsV6xnZ", "parameterType": "USERACCOUNT", "statCycleId": "jeZQ7hfxnhLd3Kna", "targetValue": 0.1686075388328272}, {"matcher": "GREATER_THAN", "parameterName": "P3glU6muswVJnNnN", "parameterType": "ENTITLEMENT", "statCycleId": "iTrjyEgarAdNJOIG", "targetValue": 0.8926909101129905}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "Go7dwV9DBqFKHQkE", "parameterType": "USERACCOUNT", "statCycleId": "JyTlUrwDTnoujQD4", "targetValue": 0.5545607225257151}, {"matcher": "LESS_THAN", "parameterName": "xnFIna3yddcbsPhe", "parameterType": "STATISTIC_CYCLE", "statCycleId": "H26IUJNvYuGRUvpZ", "targetValue": 0.010544701389554323}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "A3PrIfapq5AAeMe4", "parameterType": "USERACCOUNT", "statCycleId": "mtgWgU4pCAKxeE70", "targetValue": 0.45508650169254006}]}], "rewards": [{"itemId": "aunQNxot371W9G4A", "itemName": "vQkqsGnmyo5JJTUV", "qty": 0.2006017100355122, "type": "ENTITLEMENT"}, {"itemId": "MkawaGpAyrIwMif3", "itemName": "BOdkocVTd4BxqGWV", "qty": 0.9355806974429676, "type": "ENTITLEMENT"}, {"itemId": "BNXzAFdO0Khqf6ki", "itemName": "TdSGv2LFjAKY7Cbg", "qty": 0.2956419623163442, "type": "STATISTIC"}], "schedule": {"endTime": "1979-09-16T00:00:00Z", "order": 20, "startTime": "1996-10-13T00:00:00Z"}, "tags": ["ZX7kPBom8F9GLLTG", "8phc3n4iLoIllKlp", "O2pqiXJF3WGRaoQo"]}' \
    'mSJC4DdrKF7SUQPL' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminCreateGoal' test.out

#- 10 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'G59e0k5ZtX6wK7Pp' \
    'UlcIW32iK7MGt1ix' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminGetGoal' test.out

#- 11 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "Y5rA1WoVeJIePF8Z", "isActive": true, "name": "eDyF97lGdMiHKxbW", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "Yzo8yO2KTK9tmmOn", "parameterType": "STATISTIC_CYCLE", "statCycleId": "nOpas6ghP1y4Zi7s", "targetValue": 0.9563387971122524}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Blk44Z44B1GZgKg4", "parameterType": "STATISTIC", "statCycleId": "3Ddb60ufPpzwj1QG", "targetValue": 0.5495954887299042}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "CfHkIySok5DiXZtL", "parameterType": "ACHIEVEMENT", "statCycleId": "87rGysryod3dNQrm", "targetValue": 0.2999417360048149}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "pRA6HX3RwrKt2eco", "parameterType": "STATISTIC_CYCLE", "statCycleId": "38nEhoXmM2W7l6jH", "targetValue": 0.6254354678993388}, {"matcher": "LESS_THAN", "parameterName": "6M4lNa4JUMSHNgqR", "parameterType": "STATISTIC", "statCycleId": "1nryEJ0NqoTow0qi", "targetValue": 0.6472371301577801}, {"matcher": "GREATER_THAN", "parameterName": "o95HgXqKhTPkwfLM", "parameterType": "STATISTIC", "statCycleId": "uSybRzWek2gZvRrv", "targetValue": 0.28462644901643785}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "9d9lvccKMLhrTrcB", "parameterType": "STATISTIC_CYCLE", "statCycleId": "OmvrAejcq2LgkQua", "targetValue": 0.7133813307542322}, {"matcher": "LESS_THAN", "parameterName": "RBx3vim02jBOxrZD", "parameterType": "STATISTIC_CYCLE", "statCycleId": "V1qx8CzPML52faXU", "targetValue": 0.28227728781437667}, {"matcher": "GREATER_THAN", "parameterName": "Sk4lq2faBcAXXKlh", "parameterType": "STATISTIC", "statCycleId": "OUn18G5MlfDTk8aG", "targetValue": 0.9081239827493028}]}], "rewards": [{"itemId": "0NlncceIZSwgAIkg", "itemName": "zh4pTU0Am4DZhl0b", "qty": 0.6831631070770859, "type": "STATISTIC"}, {"itemId": "2jnHGKXphn50c9tN", "itemName": "LDljhZ2jxLRX3z46", "qty": 0.660693380566181, "type": "STATISTIC"}, {"itemId": "5BUXvjcu2s6w3Vif", "itemName": "nKqmTSoGH1XEfY6Q", "qty": 0.42903998698029, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1979-12-20T00:00:00Z", "order": 88, "startTime": "1985-07-22T00:00:00Z"}, "tags": ["UBEU1QAOHfZiGhxO", "dcuDXSxSc3aZPV87", "pna08gxefTYKhuxa"]}' \
    'Ec7M4P7UckSC6ePe' \
    'N8i4GrFES9z7xueH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminUpdateGoals' test.out

#- 12 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'pATHccee9GXhKcjm' \
    'SEwdrkEnnqKzFsLf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminDeleteGoal' test.out

#- 13 AdminListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-admin-list-schedules-by-goal' \
    'YalUlfwEQKjU7eHG' \
    'ebSVu0LQ40kepEaC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminListSchedulesByGoal' test.out

#- 14 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    '4dfiOMZfEhHr39py' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminGetPeriods' test.out

#- 15 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'sFO3Zvc1BZG99Lyv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminRandomizeChallenge' test.out

#- 16 AdminListSchedules
$PYTHON -m $MODULE 'challenge-admin-list-schedules' \
    'fvHEsJKQQewVLMUo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminListSchedules' test.out

#- 17 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'AnaRcYp7FUjfIGaf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminDeleteTiedChallenge' test.out

#- 18 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "ACCELERATE", "endDate": "1992-04-29T00:00:00Z"}' \
    'R7wZNiVsF6xG2mXE' \
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
    '{"appName": "QdbzIVy8alncV7vW", "extendType": "APP", "grpcServerAddress": "G4vZFTYnPkmSu4PW"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminUpdateAssignmentPlugin' test.out

#- 21 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "am1jxR7SETWjteoc", "extendType": "CUSTOM", "grpcServerAddress": "fgvZDDhoO05oKqym"}' \
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
    '{"userIds": ["xLD1Lcvw6T6mZEiw", "xxElpMYSWIeVzm7z", "9noowmlTIKVowi0R"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminEvaluateProgress' test.out

#- 24 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["Y2VN4ZONJREdUQ3z", "9F1BxNNgnke4aknc", "w7wu9TmXfJWBPrx9"], "userId": "Ns8eLzYEvwSWTaLQ"}, {"rewardIds": ["jctvrK2jhsYpKPlX", "n77AtYoFzLAATPY8", "P8P3cfoivvQxevec"], "userId": "Ww7Rry0KK5rgAGO0"}, {"rewardIds": ["dW8rX2MVUGKSZ4Gc", "Lkt4pK32sJxlZcCT", "pTdRtCHvuk6B6XTm"], "userId": "SLyn50sigBVZxiKd"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminClaimUsersRewards' test.out

#- 25 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "V57GvRyd9UuL02Le"}' \
    '8HSCslsDd4M1F5qR' \
    'IblS7Nz81GRazPAA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUserRewardsByGoalCode' test.out

#- 26 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'NjfBoldFOyqA2clJ' \
    '5gEOaCgM6Yn6Rugb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminGetUserProgression' test.out

#- 27 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'NEIpGBFUjOn5mM7k' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserRewards' test.out

#- 28 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["8nbLzvtCIW5ynMKq", "uUicAeIVXtoWAXhM", "lW4tLqX7OICf5oD1"]}' \
    'e6oI9FmYel0kOw72' \
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
    'o8Zkgk0jS6rDWUwf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'PublicGetScheduledGoals' test.out

#- 31 PublicListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-public-list-schedules-by-goal' \
    'hKvrf2AaH4yCWrHS' \
    'ppnIZkNnTn3rzH5N' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicListSchedulesByGoal' test.out

#- 32 PublicListSchedules
$PYTHON -m $MODULE 'challenge-public-list-schedules' \
    'vAtcvNedgS1fUfKm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedules' test.out

#- 33 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "ihDbmu8ePWlQMVDX"}' \
    'EHeiGTnwyEw6hIWD' \
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
    'ZrpP7rz3ISW510kH' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicGetUserProgression' test.out

#- 36 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    'r4isTKWjmv67nuHC' \
    '35' \
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
    '{"rewardIDs": ["WfwnwGioVwVzmmBV", "VFfpqx1AeLtzcPJ3", "jtDYBo4FUTH7CGfK"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
