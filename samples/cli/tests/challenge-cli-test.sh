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
challenge-admin-update-challenge '{"activeGoalsPerRotation": 28, "assignmentRule": "UNSCHEDULED", "description": "gUNB1vRodwpzS6Da", "endAfter": 60, "endDate": "1980-05-03T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "1Jub74CUkNmKJfh5", "randomizedPerRotation": false, "repeatAfter": 21, "resetConfig": {"resetDate": 95, "resetDay": 21, "resetTime": "1aXlFcDtgOjchIua"}, "rotation": "NONE", "startDate": "1972-04-21T00:00:00Z"}' 'EIC32ogW7olvbTgr' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'hRTcPiSuL0Sly6XM' --login_with_auth "Bearer foo"
challenge-admin-get-goals '4OI18mAQLnzjMf8G' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "Z2WBZqxYG3aREAu2", "description": "D6QVKNCWP75TB0i7", "isActive": false, "name": "x4c8OumKtPDKJDXn", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "68su8XfqlqNiTvB6", "parameterType": "ACHIEVEMENT", "statCycleId": "AorKsxwkosAVerXp", "targetValue": 0.044827790074906226}, {"matcher": "LESS_THAN", "parameterName": "r6QEa1ysLEzth6mX", "parameterType": "ENTITLEMENT", "statCycleId": "A3sNm84hddSpHt0P", "targetValue": 0.9573950533618901}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "m4eu6d5tA5jUmiTq", "parameterType": "ENTITLEMENT", "statCycleId": "GhDogqrhBRd8lDR6", "targetValue": 0.2614624114028117}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "PRZYdFLIAjGGJddV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Rgat0SevkLGMS0ly", "targetValue": 0.3296200435831247}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "aO35llzQRaT5kPxU", "parameterType": "ACHIEVEMENT", "statCycleId": "qUI06UpOXGSLmCVu", "targetValue": 0.5432320240791549}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "PlLlkvR8sKgnuRkg", "parameterType": "ACHIEVEMENT", "statCycleId": "53HGCiljvjKoyD6S", "targetValue": 0.4630900639157074}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN", "parameterName": "GrncqmLtjQHAf8Tg", "parameterType": "ENTITLEMENT", "statCycleId": "7FXGk2s9Q0mPVo3t", "targetValue": 0.36968420675412095}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "d6TC6I3lMjGSWN2l", "parameterType": "ACHIEVEMENT", "statCycleId": "a7qxNeIxPz6MbwL6", "targetValue": 0.5498505917979803}, {"matcher": "LESS_THAN", "parameterName": "69z1UaLqYSYWytLP", "parameterType": "STATISTIC_CYCLE", "statCycleId": "0yYoNRKd3IL5TAQ6", "targetValue": 0.140088987889472}]}], "rewards": [{"itemId": "iPlSC2uE4o5Vwdo3", "itemName": "fePqIJA8IHtrkmu0", "qty": 0.1180749210271913, "type": "STATISTIC"}, {"itemId": "mn9HrNQy4uZAAiE0", "itemName": "mit9RGCCHYzUOcEd", "qty": 0.2985504998682327, "type": "ENTITLEMENT"}, {"itemId": "i9gwQYv7t1o7TTr1", "itemName": "DmrhZv15T7quIOvB", "qty": 0.627304395825015, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1994-01-02T00:00:00Z", "order": 90, "startTime": "1977-08-15T00:00:00Z"}, "tags": ["vCkGZ5dAgqxpBFma", "Loxozr6wfNPX2bOI", "tRMvqtlB2jJCSQT2"]}' '79ZZPYGu0rdlgdWy' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'OtXi3choQrpOsDBU' '5SepjChB3V0v52Dl' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "ym6puQ23xoJ8aeCn", "isActive": false, "name": "1TkhjYnaq6foWvXa", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "MrXsDr6kILsSSyDd", "parameterType": "ENTITLEMENT", "statCycleId": "vjj7il35MXbN9oCM", "targetValue": 0.6426563176887718}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "LSP0pf4IxjUkl535", "parameterType": "USERACCOUNT", "statCycleId": "ateEKDpADz1x3poD", "targetValue": 0.9024476287590735}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "gb3boLQQ1MzH7Qm8", "parameterType": "ACHIEVEMENT", "statCycleId": "Bdte9NDUPVJf6c2Z", "targetValue": 0.8395216845227446}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "xfgPubTDIHrvqATh", "parameterType": "STATISTIC", "statCycleId": "eERmDnyeFoF7VSZ6", "targetValue": 0.2504161639501601}, {"matcher": "EQUAL", "parameterName": "bRFQSKVPHbn4Xxtu", "parameterType": "ACHIEVEMENT", "statCycleId": "LQRENjEEztx1WsYS", "targetValue": 0.13302522177831455}, {"matcher": "GREATER_THAN", "parameterName": "qan0nSBJroav91GX", "parameterType": "ENTITLEMENT", "statCycleId": "eKtW18iGeUlc9d9s", "targetValue": 0.23761844917164}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "w5D2L7vIYhGGSyEW", "parameterType": "STATISTIC", "statCycleId": "ZJJ42d3PBddN8S48", "targetValue": 0.18641370678755087}, {"matcher": "GREATER_THAN", "parameterName": "AiYnNjkfZrQvGgbL", "parameterType": "ACHIEVEMENT", "statCycleId": "3QXcKMDYDDxHSZjt", "targetValue": 0.26854986325450836}, {"matcher": "LESS_THAN", "parameterName": "rUEirnjX9fDmIbeZ", "parameterType": "STATISTIC", "statCycleId": "dwYWQG26yUZNmTBc", "targetValue": 0.3432922624655086}]}], "rewards": [{"itemId": "rbYCwZtxFHyPLtI8", "itemName": "ilbyDPUIj88cekdq", "qty": 0.4619540116281702, "type": "STATISTIC"}, {"itemId": "ncYAHdNzDmeIP6rO", "itemName": "vDz9KOsb392k6YmJ", "qty": 0.5081712926708803, "type": "ENTITLEMENT"}, {"itemId": "uySj29a9LJE8HoRS", "itemName": "1X2PFAAMwzHPxB1U", "qty": 0.3039074127269502, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1977-05-17T00:00:00Z", "order": 38, "startTime": "1977-06-08T00:00:00Z"}, "tags": ["Yw20DOqOBSC2DKHR", "uPMMWH8Yb33T5UBJ", "CjfcnLRfxeCSz9WE"]}' 'i8KlloeH0JT1ydua' 't2vQR3biBfsu4jms' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'RE2w1yEkLgh3tIYt' '4SqYUTLDx9gIiDan' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'dpGT2t24aOMh5eC3' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'IHeHSKLCa3xreNDU' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'WehwH3q31A806DJg' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "as4b6z3LNUj7fdgL", "extendType": "CUSTOM", "grpcServerAddress": "FQCYoDPICpnduEEQ"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "lULdJz4mnRBkMNxv", "extendType": "CUSTOM", "grpcServerAddress": "0zfFyabWAgIUXiI0"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["7A68eaqC2J9jyEW6", "GLbc0NaKDUL3sa13", "lk1dQBHO86IlBhne"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["tU4RwTqUXlTDBzOu", "YsaZA2yyd4mbqoOf", "ADMMAXFaY9eKa699"], "userId": "bRVhyaKwwrAP2aMl"}, {"rewardIds": ["u7WtjCtoYetOO847", "g8OudOfjnCuHZ3c4", "6IjGa23YvYmmDg7V"], "userId": "YPXIuvUYTZBRujIU"}, {"rewardIds": ["E1Tq5jyAZvkRCMNF", "Iurjh2imdb4rbkXj", "0ZwsVC0gL97ZVJSP"], "userId": "qJiwv1qlYB1RSKs6"}]' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'gQxC3Gb7S0o4zGYY' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["7KQI1AeFgPqaOkvo", "1aolB4lkKB4EYOkQ", "1jMD3cym8xIfkOVW"]}' '2grREOLx0KOww3HI' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'CQLfl7MUBG7qtPu6' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression '4yAtURKLRkb738HG' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'S6rDgMdIIlhS1fSi' '79' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["XjvyGJPN4eXbJE5V", "s2GcyomQoIXimBJe", "hyxlNsjUgxBkF6wF"]}' --login_with_auth "Bearer foo"
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
echo "1..29"

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
    '{"activeGoalsPerRotation": 86, "assignmentRule": "CUSTOM", "code": "oJeQediogEhhM2rI", "description": "izGdKvOPdq5xrgxS", "endAfter": 25, "endDate": "1991-07-20T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "1DN9LFkYW5DQyj4b", "randomizedPerRotation": false, "repeatAfter": 64, "resetConfig": {"resetDate": 58, "resetDay": 89, "resetTime": "mpo6sPwVOEDSJsEK"}, "rotation": "DAILY", "startDate": "1992-05-06T00:00:00Z"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    '5UXmy0Zp6iIaTIKU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetChallenge' test.out

#- 5 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 20, "assignmentRule": "CUSTOM", "description": "mkk9QM0NBMA9ORxp", "endAfter": 51, "endDate": "1991-06-29T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "AK6eXUGPJsw1fiP8", "randomizedPerRotation": true, "repeatAfter": 67, "resetConfig": {"resetDate": 0, "resetDay": 86, "resetTime": "dCCFrHHC3DpZxkrQ"}, "rotation": "WEEKLY", "startDate": "1986-03-05T00:00:00Z"}' \
    'uNFviMarv8mnfHK8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminUpdateChallenge' test.out

#- 6 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'CCmE2lPnsbD3SGEd' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminDeleteChallenge' test.out

#- 7 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'lwuUccE536ugBp3H' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminGetGoals' test.out

#- 8 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "BvepnDCjgyJlXe36", "description": "mgWjLfFmteue9nzJ", "isActive": true, "name": "fH24T805tVg8JqU0", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "ZpjvsugAOS7u8RiW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "5LL4bTxBmZjdrrIx", "targetValue": 0.30290366603835583}, {"matcher": "LESS_THAN", "parameterName": "jglaDXTvKCWwNTAh", "parameterType": "ACHIEVEMENT", "statCycleId": "pymDkQhtrHWwRVnw", "targetValue": 0.7735089207693435}, {"matcher": "LESS_THAN", "parameterName": "BLy8wbhMssAHjapI", "parameterType": "ENTITLEMENT", "statCycleId": "qjRJOqB5F93zFQbJ", "targetValue": 0.21232898398037525}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "UDpdONneAczbBdHb", "parameterType": "ENTITLEMENT", "statCycleId": "slt71B1SmZp2JZp5", "targetValue": 0.8517753424555412}, {"matcher": "LESS_THAN", "parameterName": "TTS1j02o7JjTXAQN", "parameterType": "STATISTIC", "statCycleId": "8ccLjMXJRk0eaKQD", "targetValue": 0.6463301332684692}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "xIxi4YKlONk2Q5Y4", "parameterType": "USERACCOUNT", "statCycleId": "02aCNYIWekp18lOC", "targetValue": 0.8983793347380894}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "NqF7Bl0LcghVHfPE", "parameterType": "STATISTIC", "statCycleId": "HB3CfR3ncDlwi3v3", "targetValue": 0.6252758738078451}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "owLqc3ecjXJbZDKK", "parameterType": "ENTITLEMENT", "statCycleId": "G8X645xpdXpai0rY", "targetValue": 0.01007011464461971}, {"matcher": "LESS_THAN", "parameterName": "5hOPjaf3H0tYighU", "parameterType": "STATISTIC_CYCLE", "statCycleId": "VUfcYHJbBfAKSiPW", "targetValue": 0.9000402113751781}]}], "rewards": [{"itemId": "VgsZXiR1DJ7HVWqM", "itemName": "kNSawQUWDFJvJBWi", "qty": 0.03424309237260048, "type": "ENTITLEMENT"}, {"itemId": "hJPUAc0RVwXgAgnt", "itemName": "LMCuaXBWQi6BqPg4", "qty": 0.380715123369083, "type": "STATISTIC"}, {"itemId": "XcrciYNEzvSZIPkh", "itemName": "SgORcz5S5BvmgBLx", "qty": 0.11720105501232325, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1991-03-15T00:00:00Z", "order": 41, "startTime": "1987-07-22T00:00:00Z"}, "tags": ["nE3Tam69qSZ7PC6f", "6QkmZXElW9YfRSse", "6AAz3S4czz0QKFlA"]}' \
    'VmVLu4AOec0z8eBe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminCreateGoal' test.out

#- 9 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'eoip68J1nsv4W2OJ' \
    'htafxMSJlHeb34sZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoal' test.out

#- 10 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "KHcl5LLLOexL4fZv", "isActive": true, "name": "CiiPDGQhNPEwiJCf", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "nkY6Mca5afj12K2I", "parameterType": "STATISTIC_CYCLE", "statCycleId": "kE8jKvgatOEBM70T", "targetValue": 0.05459859299479697}, {"matcher": "GREATER_THAN", "parameterName": "Nne8kJATwlc6esUp", "parameterType": "STATISTIC", "statCycleId": "xnZ5Jrzzjrcaug6C", "targetValue": 0.7836751184539907}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "G8SWP3glU6muswVJ", "parameterType": "ENTITLEMENT", "statCycleId": "hCUr6iTrjyEgarAd", "targetValue": 0.6403624247088936}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "I6tRbRcrEveMdAdi", "parameterType": "USERACCOUNT", "statCycleId": "JyTlUrwDTnoujQD4", "targetValue": 0.5545607225257151}, {"matcher": "LESS_THAN", "parameterName": "xnFIna3yddcbsPhe", "parameterType": "STATISTIC_CYCLE", "statCycleId": "H26IUJNvYuGRUvpZ", "targetValue": 0.010544701389554323}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "A3PrIfapq5AAeMe4", "parameterType": "USERACCOUNT", "statCycleId": "mtgWgU4pCAKxeE70", "targetValue": 0.45508650169254006}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "IIZxiXNMR9BgaWcF", "parameterType": "ENTITLEMENT", "statCycleId": "3SUBhyoTsMWPAxUM", "targetValue": 0.17417028189606076}, {"matcher": "EQUAL", "parameterName": "EXFTlEMEsFzYqwgK", "parameterType": "ENTITLEMENT", "statCycleId": "Np5nodqpLm7FhJBN", "targetValue": 0.7960938725429499}, {"matcher": "LESS_THAN", "parameterName": "sQs6XNbjvqhnUVLW", "parameterType": "STATISTIC", "statCycleId": "v2LFjAKY7CbgsWqF", "targetValue": 0.7891271082268984}]}], "rewards": [{"itemId": "ZX7kPBom8F9GLLTG", "itemName": "8phc3n4iLoIllKlp", "qty": 0.6562097305584481, "type": "ENTITLEMENT"}, {"itemId": "pqiXJF3WGRaoQomS", "itemName": "JC4DdrKF7SUQPLG5", "qty": 0.9882186224643692, "type": "ENTITLEMENT"}, {"itemId": "G0rH0zcswwVeMK6M", "itemName": "bGIVIu8vvwLc7KY3", "qty": 0.32711914076492843, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-10-23T00:00:00Z", "order": 97, "startTime": "1996-02-02T00:00:00Z"}, "tags": ["TIMtpgkieDyF97lG", "dMiHKxbWCYzo8yO2", "KTK9tmmOnYnOpas6"]}' \
    'ghP1y4Zi7s7QBlk4' \
    '4Z44B1GZgKg4uKxa' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminUpdateGoals' test.out

#- 11 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'CgcGLuC3brWdTYCf' \
    'HkIySok5DiXZtLW8' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminDeleteGoal' test.out

#- 12 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    '7rGysryod3dNQrms' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminGetPeriods' test.out

#- 13 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'ApRA6HX3RwrKt2ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminRandomizeChallenge' test.out

#- 14 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'ozL0TOg54vCE48L5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminDeleteTiedChallenge' test.out

#- 15 AdminGetAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-get-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetAssignmentPlugin' test.out

#- 16 AdminUpdateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-update-assignment-plugin' \
    '{"appName": "oLF6M4lNa4JUMSHN", "extendType": "APP", "grpcServerAddress": "lu01nryEJ0NqoTow"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminUpdateAssignmentPlugin' test.out

#- 17 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "0qiOiC4j0iktm0ZP", "extendType": "CUSTOM", "grpcServerAddress": "kLOsp0LZ5njN86Hl"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminCreateAssignmentPlugin' test.out

#- 18 AdminDeleteAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-delete-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteAssignmentPlugin' test.out

#- 19 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["8kUXzt6bSc6bWvgp", "VyW9dD1kOmvrAejc", "q2LgkQuaS7RBx3vi"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminEvaluateProgress' test.out

#- 20 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["m02jBOxrZDyvpcLY", "OWA8NjxOnaEok4nO", "OCzfsflhjbngJOUn"], "userId": "18G5MlfDTk8aG40N"}, {"rewardIds": ["lncceIZSwgAIkgzh", "4pTU0Am4DZhl0bQx", "FJ3sWCqQpQ2FbKPF"], "userId": "MycMSQ4qfAacR0Lg"}, {"rewardIds": ["B5BUXvjcu2s6w3Vi", "fnKqmTSoGH1XEfY6", "QAYn6WQ5UBEU1QAO"], "userId": "HfZiGhxOdcuDXSxS"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminClaimUsersRewards' test.out

#- 21 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'c3aZPV87pna08gxe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminGetUserRewards' test.out

#- 22 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["fTYKhuxaEc7M4P7U", "ckSC6ePeN8i4GrFE", "S9z7xueHpATHccee"]}' \
    '9GXhKcjmSEwdrkEn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminClaimUserRewards' test.out

#- 23 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'GetChallenges' test.out

#- 24 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'nqKzFsLfYalUlfwE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'PublicGetScheduledGoals' test.out

#- 25 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'EvaluateMyProgress' test.out

#- 26 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'QKjU7eHGebSVu0LQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'PublicGetUserProgression' test.out

#- 27 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    '40kepEaC4dfiOMZf' \
    '62' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'PublicGetPastUserProgression' test.out

#- 28 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'PublicGetUserRewards' test.out

#- 29 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["5mPYhrLTyU8OhgfY", "9JQYGF4bYXEcENx9", "xZlAchob44lONDDw"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
