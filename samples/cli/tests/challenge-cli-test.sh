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
challenge-admin-get-item-references 'LjWjkY1aXlFcDtgO' --login_with_auth "Bearer foo"
challenge-admin-get-active-challenges 'jchIua5tWEIC32og' --login_with_auth "Bearer foo"
challenge-admin-get-challenge 'W7olvbTgrhRTcPiS' --login_with_auth "Bearer foo"
challenge-admin-update-challenge '{"activeGoalsPerRotation": 41, "assignmentRule": "UNSCHEDULED", "description": "0Sly6XM4OI18mAQL", "endAfter": 28, "endDate": "1984-07-28T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "IicXm7agSrjJW2OQ", "randomizedPerRotation": true, "repeatAfter": 84, "resetConfig": {"resetDate": 55, "resetDay": 38, "resetTime": "u2D6QVKNCWP75TB0"}, "rotation": "MONTHLY", "startDate": "1987-02-20T00:00:00Z", "tags": ["pKxR8dl0zRVW4EZG", "9m0XcgGVbMqSszE8", "GHavj7AorKsxwkos"]}' 'AVerXpc1C8XfwHuK' --login_with_auth "Bearer foo"
challenge-admin-delete-challenge 'eb9l3rGN9A3sNm84' --login_with_auth "Bearer foo"
challenge-admin-get-goals 'hddSpHt0P7MIIR7C' --login_with_auth "Bearer foo"
challenge-admin-create-goal '{"code": "kyF6C7duuyZ0GhDo", "description": "gqrhBRd8lDR6qVNP", "isActive": false, "name": "ZYdFLIAjGGJddVCv", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "at0SevkLGMS0lyuI", "matcher": "EQUAL", "parameterName": "35llzQRaT5kPxUfo", "parameterType": "ACHIEVEMENT", "statCycleId": "I06UpOXGSLmCVuHO", "targetValue": 0.6751155250161673}, {"id": "lLlkvR8sKgnuRkgg", "matcher": "EQUAL", "parameterName": "3HGCiljvjKoyD6SC", "parameterType": "STATISTIC", "statCycleId": "kahFjkQsfCaTmt1d", "targetValue": 0.9370076301719789}, {"id": "7FXGk2s9Q0mPVo3t", "matcher": "GREATER_THAN_EQUAL", "parameterName": "td6TC6I3lMjGSWN2", "parameterType": "ENTITLEMENT", "statCycleId": "na7qxNeIxPz6MbwL", "targetValue": 0.9370297381712973}]}, {"operator": "AND", "predicates": [{"id": "Y69z1UaLqYSYWytL", "matcher": "LESS_THAN", "parameterName": "0yYoNRKd3IL5TAQ6", "parameterType": "ENTITLEMENT", "statCycleId": "PllG4cYEzfTD1ZBm", "targetValue": 0.8955390162339444}, {"id": "MqHcUmLZZbSqb8Rw", "matcher": "GREATER_THAN_EQUAL", "parameterName": "mn9HrNQy4uZAAiE0", "parameterType": "ENTITLEMENT", "statCycleId": "S5S5XUdjsoqwGyzz", "targetValue": 0.7855784970960913}, {"id": "i9gwQYv7t1o7TTr1", "matcher": "LESS_THAN", "parameterName": "4Ymos9Jcdos4fYcT", "parameterType": "ACHIEVEMENT", "statCycleId": "U6RBt0zYoMcHyCUE", "targetValue": 0.7947398685971272}]}, {"operator": "AND", "predicates": [{"id": "maLoxozr6wfNPX2b", "matcher": "LESS_THAN_EQUAL", "parameterName": "5NyLu0M3VHh2EI8J", "parameterType": "ENTITLEMENT", "statCycleId": "79ZZPYGu0rdlgdWy", "targetValue": 0.6481873648712644}, {"id": "tXi3choQrpOsDBU5", "matcher": "EQUAL", "parameterName": "epjChB3V0v52Dlym", "parameterType": "USERACCOUNT", "statCycleId": "puQ23xoJ8aeCnaLp", "targetValue": 0.7570432731987359}, {"id": "Kp44YUDjasWIPUvm", "matcher": "LESS_THAN", "parameterName": "XsDr6kILsSSyDdmy", "parameterType": "ENTITLEMENT", "statCycleId": "j7il35MXbN9oCMNq", "targetValue": 0.2659340479437836}]}], "rewards": [{"itemId": "98SjTvhZNkSQ70D0", "itemName": "H6BXksUC9b6i5lZC", "qty": 0.9879202611926766, "type": "STATISTIC"}, {"itemId": "Qgb3boLQQ1MzH7Qm", "itemName": "8bwbmXgdAPh1EThG", "qty": 0.998241438171518, "type": "ENTITLEMENT"}, {"itemId": "QZxfgPubTDIHrvqA", "itemName": "ThuwjRHpKKTlmVr9", "qty": 0.7983875410785994, "type": "STATISTIC"}], "schedule": {"endTime": "1978-05-08T00:00:00Z", "order": 74, "startTime": "1973-01-17T00:00:00Z"}, "tags": ["3vneSD2Tb3g7mSQU", "hAEtrmjqU6YE3p4l", "Sck0ZHn5GI39YBHq"]}' 'aTHeKtW18iGeUlc9' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'd9sogWa24CKNS0Gq' 'VvUfHQvsHXNUNe4m' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "hgo5QB65lSAiYnNj", "isActive": false, "name": "xqMrj3oZk03QXcKM", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "BMr1yrOMlNFSrUEi", "matcher": "GREATER_THAN_EQUAL", "parameterName": "7Gc26SaiGVkydwYW", "parameterType": "STATISTIC_CYCLE", "statCycleId": "G26yUZNmTBcvrbYC", "targetValue": 0.36316707375806334}, {"id": "ZtxFHyPLtI8ilbyD", "matcher": "GREATER_THAN_EQUAL", "parameterName": "UIj88cekdqCt81P1", "parameterType": "ENTITLEMENT", "statCycleId": "dNzDmeIP6rOvDz9K", "targetValue": 0.653549076605851}, {"id": "sb392k6YmJFfRByj", "matcher": "GREATER_THAN", "parameterName": "9a9LJE8HoRS1X2PF", "parameterType": "STATISTIC_CYCLE", "statCycleId": "AnkCmBUqg2SCnqnt", "targetValue": 0.7944169444538417}]}, {"operator": "AND", "predicates": [{"id": "0DOqOBSC2DKHRuPM", "matcher": "GREATER_THAN", "parameterName": "WH8Yb33T5UBJCjfc", "parameterType": "ENTITLEMENT", "statCycleId": "DxOgBnhhqElIaDml", "targetValue": 0.9120364876988746}, {"id": "8wdNFLTm5T50x9WT", "matcher": "EQUAL", "parameterName": "GfH2rtOa4EXsXzOX", "parameterType": "ENTITLEMENT", "statCycleId": "Ak4mqrxzTtuLl4Xl", "targetValue": 0.02296110519730865}, {"id": "GL8QOxtjzm8y2wNh", "matcher": "GREATER_THAN", "parameterName": "OMh5eC3IHeHSKLCa", "parameterType": "STATISTIC_CYCLE", "statCycleId": "xreNDUWehwH3q31A", "targetValue": 0.9826819836723484}]}, {"operator": "AND", "predicates": [{"id": "DJgas4b6z3LNUj7f", "matcher": "EQUAL", "parameterName": "eIaFQCYoDPICpndu", "parameterType": "STATISTIC_CYCLE", "statCycleId": "BbEDoNf3n0hEoRCA", "targetValue": 0.03858691737877895}, {"id": "f80zfFyabWAgIUXi", "matcher": "LESS_THAN_EQUAL", "parameterName": "loqxM3gpwxcfMy9X", "parameterType": "STATISTIC_CYCLE", "statCycleId": "6GLbc0NaKDUL3sa1", "targetValue": 0.8895426234905489}, {"id": "lk1dQBHO86IlBhne", "matcher": "GREATER_THAN_EQUAL", "parameterName": "39PXDNxtXgeO3Fgk", "parameterType": "STATISTIC", "statCycleId": "hjDzaQY3snn2ZkP7", "targetValue": 0.035047237739051496}]}], "rewards": [{"itemId": "FdP43e5dC9XIBudf", "itemName": "ZgrbHDIDm4hMzF4T", "qty": 0.3805924975570333, "type": "ENTITLEMENT"}, {"itemId": "jCtoYetOO847g8Ou", "itemName": "dOfjnCuHZ3c46IjG", "qty": 0.007738781574168296, "type": "STATISTIC"}, {"itemId": "YvYmmDg7VYPXIuvU", "itemName": "YTZBRujIUE1Tq5jy", "qty": 0.4223422745905151, "type": "STATISTIC"}], "schedule": {"endTime": "1974-03-26T00:00:00Z", "order": 95, "startTime": "1993-10-18T00:00:00Z"}, "tags": ["CMNFIurjh2imdb4r", "bkXj0ZwsVC0gL97Z", "VJSPqJiwv1qlYB1R"]}' 'SKs6gQxC3Gb7S0o4' 'zGYY7KQI1AeFgPqa' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'Okvo1aolB4lkKB4E' 'YOkQ1jMD3cym8xIf' --login_with_auth "Bearer foo"
challenge-admin-list-schedules-by-goal 'kOVW2grREOLx0KOw' 'w3HICQLfl7MUBG7q' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'tPu64yAtURKLRkb7' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge '38HGS6rDgMdIIlhS' --login_with_auth "Bearer foo"
challenge-admin-list-schedules '1fSiM9331m7Ta1Ps' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'Kc50Kv6ecnEevcAx' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "ACCELERATE", "endDate": "1989-08-11T00:00:00Z"}' '2zkRenmPZnGBt4P7' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "WnbdSJtjX7ZshZyZ", "extendType": "APP", "grpcServerAddress": "2rIizGdKvOPdq5xr"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "gxSmy1DN9LFkYW5D", "extendType": "APP", "grpcServerAddress": "yj4bj5Ro2ogaKt2u"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["jQSa3Zdb65UXmy0Z", "p6iIaTIKUkmkk9QM", "0NBMA9ORxpzwLR2A"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["K6eXUGPJsw1fiP80", "G9Pclxcft2ulIJzP", "yrVEiOG4UcqsuGKH"], "userId": "hMRWLVd3DlhLuIpo"}, {"rewardIds": ["mM8sm1MiaI1mX2tJ", "oARtdbBe7udsMrok", "0WvGYYnx4V709xbn"], "userId": "GezKsDwG2omOR2nv"}, {"rewardIds": ["YI9TVqJdvzcWbfUp", "aXp5JMl5LL4bTxBm", "ZjdrrIxsB0NRsB1f"], "userId": "PqqRRulpqpymDkQh"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "trHWwRVnwVBOqOHi"}' '8pWGd1juYhiqjRJO' 'qB5F93zFQbJndUDp' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression 'dONneAczbBdHb2sl' 't71B1SmZp2JZp50C' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'nPb71ORYcmQbTU5J' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["X8ccLjMXJRk0eaKQ", "DOJvrTefglSs6g4i", "Y9u02aCNYIWekp18"]}' 'lOC3mNqF7Bl0Lcgh' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'VHfPEspxwhRON0bc' --login_with_auth "Bearer foo"
challenge-public-list-schedules-by-goal '1eMbEIjowLqc3ecj' 'XJbZDKKoxLE1Y3Dy' --login_with_auth "Bearer foo"
challenge-public-list-schedules 'mtj3giPg4x4yiPX6' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "ues1Hhhkg1yLVbLF"}' 'zHEP8cM4NTwr0KHa' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'AsmTej52WKi6tArA' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'URt9plCSVq8PdH6h' '73' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["eIXuqDuAXI66bQ71", "w0deoV9Lx5RDA1l2", "XcrciYNEzvSZIPkh"]}' --login_with_auth "Bearer foo"
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
echo "1..39"

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
    '{"activeGoalsPerRotation": 91, "assignmentRule": "CUSTOM", "code": "gORcz5S5BvmgBLxh", "description": "4ijFnE3Tam69qSZ7", "endAfter": 86, "endDate": "1971-08-23T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "6f6QkmZXElW9YfRS", "randomizedPerRotation": true, "repeatAfter": 41, "resetConfig": {"resetDate": 8, "resetDay": 32, "resetTime": "AAz3S4czz0QKFlAV"}, "rotation": "MONTHLY", "startDate": "1987-11-02T00:00:00Z", "tags": ["XqP6oo7G73zdxTgO", "fnwIdlNa29fDLh74", "1IslKHzGlLKWUtDQ"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
$PYTHON -m $MODULE 'challenge-admin-get-item-references' \
    's61OQAoxyyQpRWCi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'iPDGQhNPEwiJCf2X' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'JVrlzqQls1ozhLVA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 51, "assignmentRule": "FIXED", "description": "rBvvWm4udE0OXudX", "endAfter": 13, "endDate": "1976-11-21T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "BJYOmpu1VCarzBsV", "randomizedPerRotation": true, "repeatAfter": 48, "resetConfig": {"resetDate": 26, "resetDay": 71, "resetTime": "Z5Jrzzjrcaug6CWV"}, "rotation": "MONTHLY", "startDate": "1971-03-29T00:00:00Z", "tags": ["WP3glU6muswVJnNn", "N7kAa7j0riFc5HTH", "QIoVsGo7dwV9DBqF"]}' \
    'KHQkETJyTlUrwDTn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'oujQD4IEiH9Z5qXn' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    '3aoRtlqOECohViHA' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "5CzgFSy8X1A3PrIf", "description": "apq5AAeMe4L3mDWO", "isActive": true, "name": "pCAKxeE70CaunQNx", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "XNMR9BgaWcFX3SUB", "matcher": "EQUAL", "parameterName": "myo5JJTUVmb8GEXF", "parameterType": "ENTITLEMENT", "statCycleId": "lEMEsFzYqwgK1Np5", "targetValue": 0.22102126283047963}, {"id": "odqpLm7FhJBNXzAF", "matcher": "EQUAL", "parameterName": "6XNbjvqhnUVLWu8o", "parameterType": "ENTITLEMENT", "statCycleId": "FjAKY7CbgsWqFWZX", "targetValue": 0.9590023166899789}, {"id": "kPBom8F9GLLTG8ph", "matcher": "EQUAL", "parameterName": "tuzFMbAG9YI89hmg", "parameterType": "STATISTIC", "statCycleId": "iXJF3WGRaoQomSJC", "targetValue": 0.910863927106541}]}, {"operator": "AND", "predicates": [{"id": "kEpstyVTBcrM8rG0", "matcher": "GREATER_THAN_EQUAL", "parameterName": "5ZtX6wK7PpUlcIW3", "parameterType": "ENTITLEMENT", "statCycleId": "Iu8vvwLc7KY3uVoJ", "targetValue": 0.8051588168267209}, {"id": "TIMtpgkieDyF97lG", "matcher": "EQUAL", "parameterName": "xdbZUpd6FJtHJ1py", "parameterType": "STATISTIC", "statCycleId": "K9tmmOnYnOpas6gh", "targetValue": 0.6727553565725602}, {"id": "1y4Zi7s7QBlk44Z4", "matcher": "GREATER_THAN", "parameterName": "B1GZgKg4uKxaCgcG", "parameterType": "USERACCOUNT", "statCycleId": "Ppzwj1QGIFmlVf4j", "targetValue": 0.3489557447219268}]}, {"operator": "AND", "predicates": [{"id": "k5DiXZtLW87rGysr", "matcher": "LESS_THAN", "parameterName": "IOd6X3viLvtEk4mT", "parameterType": "USERACCOUNT", "statCycleId": "3RwrKt2ecozL0TOg", "targetValue": 0.9271120861021633}, {"id": "4vCE48L5oLF6M4lN", "matcher": "EQUAL", "parameterName": "akopAywelu01nryE", "parameterType": "USERACCOUNT", "statCycleId": "amANkZlOX9Sfo95H", "targetValue": 0.11060047250726579}, {"id": "XqKhTPkwfLM9uSyb", "matcher": "GREATER_THAN", "parameterName": "zWek2gZvRrvr0n9d", "parameterType": "ENTITLEMENT", "statCycleId": "bWvgpVyW9dD1kOmv", "targetValue": 0.2822160977983481}]}], "rewards": [{"itemId": "Aejcq2LgkQuaS7RB", "itemName": "x3vim02jBOxrZDyv", "qty": 0.25595763528576976, "type": "ENTITLEMENT"}, {"itemId": "x8CzPML52faXUr9S", "itemName": "k4lq2faBcAXXKlhv", "qty": 0.3901074956895183, "type": "ENTITLEMENT"}, {"itemId": "8paOJtxqMPpcVfRw", "itemName": "Nj547fH0XrKEDpEY", "qty": 0.9776123382715242, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-05-02T00:00:00Z", "order": 95, "startTime": "1972-09-26T00:00:00Z"}, "tags": ["Am4DZhl0bQxFJ3sW", "CqQpQ2FbKPFMycMS", "Q4qfAacR0LgB5BUX"]}' \
    'vjcu2s6w3VifnKqm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'TSoGH1XEfY6QAYn6' \
    'WQ5UBEU1QAOHfZiG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "hxOdcuDXSxSc3aZP", "isActive": true, "name": "87pna08gxefTYKhu", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "hesNWy2NvZ85DDKD", "matcher": "LESS_THAN", "parameterName": "eN8i4GrFES9z7xue", "parameterType": "USERACCOUNT", "statCycleId": "HZ7c53q7akMpcmnn", "targetValue": 0.38629133792240844}, {"id": "6RVBrop9v7aZK3h6", "matcher": "EQUAL", "parameterName": "hbN15zfQSfQrtfF3", "parameterType": "STATISTIC", "statCycleId": "0OcNDLr36vzohZyj", "targetValue": 0.6199632258559308}, {"id": "QAg5mPYhrLTyU8Oh", "matcher": "EQUAL", "parameterName": "c1BZG99LyvfvHEsJ", "parameterType": "USERACCOUNT", "statCycleId": "x9xZlAchob44lOND", "targetValue": 0.47768758948999346}]}, {"operator": "AND", "predicates": [{"id": "FUjfIGaffoflEIBy", "matcher": "GREATER_THAN_EQUAL", "parameterName": "qeKN0meGelYF5wWa", "parameterType": "STATISTIC_CYCLE", "statCycleId": "alncV7vWgSHdfo07", "targetValue": 0.7464782496736422}, {"id": "ctPErqxyMyOK06Mq", "matcher": "LESS_THAN", "parameterName": "Wjteoc8fgvZDDhoO", "parameterType": "STATISTIC_CYCLE", "statCycleId": "5oKqymxLD1Lcvw6T", "targetValue": 0.9484611938383366}, {"id": "mZEiwxxElpMYSWIe", "matcher": "LESS_THAN", "parameterName": "jhTHeh94TSenE5hC", "parameterType": "USERACCOUNT", "statCycleId": "i0RY2VN4ZONJREdU", "targetValue": 0.6803211408004651}]}, {"operator": "AND", "predicates": [{"id": "z9F1BxNNgnke4akn", "matcher": "EQUAL", "parameterName": "lrjcHp6B8Vj7rXFg", "parameterType": "STATISTIC_CYCLE", "statCycleId": "Ns8eLzYEvwSWTaLQ", "targetValue": 0.14820526633410014}, {"id": "ctvrK2jhsYpKPlXn", "matcher": "LESS_THAN", "parameterName": "MKtezapPr2QEPx3z", "parameterType": "ACHIEVEMENT", "statCycleId": "xBGtEJIYppuUSsKo", "targetValue": 0.5422675638588322}, {"id": "w2hyd12uSE7BEv3a", "matcher": "EQUAL", "parameterName": "MVUGKSZ4GcLkt4pK", "parameterType": "STATISTIC", "statCycleId": "sJxlZcCTpTdRtCHv", "targetValue": 0.3235788362063715}]}], "rewards": [{"itemId": "k6B6XTmSLyn50sig", "itemName": "BVZxiKdV57GvRyd9", "qty": 0.7436798431087576, "type": "STATISTIC"}, {"itemId": "hLiD5sf5y1JsxJNG", "itemName": "myt0SQDUDoWBZVGL", "qty": 0.18478237842984913, "type": "ENTITLEMENT"}, {"itemId": "zPAANjfBoldFOyqA", "itemName": "2clJ5gEOaCgM6Yn6", "qty": 0.703636594585443, "type": "STATISTIC"}], "schedule": {"endTime": "1988-02-19T00:00:00Z", "order": 37, "startTime": "1971-11-26T00:00:00Z"}, "tags": ["xf4czdt7zqmSKxOE", "QlVcx6GqsBq8vdhW", "VnuYLgpZehK0G2nm"]}' \
    'yuViB9kRTcSQdTnN' \
    'YGeAfYFG3wSkHKuf' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'BdS3ZOokZB4cXnAX' \
    'yuGz6LlxHv8Swyag' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-admin-list-schedules-by-goal' \
    'YvDJ3w3UNgIGj2jZ' \
    'tEYT8sIPSE1XXPzy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'Sa0sZoFS6xCOWMpy' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'h9pMsQgb64ELbzDM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
$PYTHON -m $MODULE 'challenge-admin-list-schedules' \
    'wyo4nIRysQdbufXj' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'YnSoIFeouC2m38kX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "STOP", "endDate": "1996-08-26T00:00:00Z"}' \
    'fwnwGioVwVzmmBVV' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminUpdateTiedChallengeSchedule' test.out

#- 20 AdminGetAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-get-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminGetAssignmentPlugin' test.out

#- 21 AdminUpdateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-update-assignment-plugin' \
    '{"appName": "Ffpqx1AeLtzcPJ3j", "extendType": "CUSTOM", "grpcServerAddress": "GwaPSDMZz95OYKiq"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "aZD63xe5rruJVfLG", "extendType": "APP", "grpcServerAddress": "GLkDs7ACC1RgBfoN"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminCreateAssignmentPlugin' test.out

#- 23 AdminDeleteAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-delete-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminDeleteAssignmentPlugin' test.out

#- 24 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["rHlFi2qJLgmBLE35", "YhyiDV90SeI5yppB", "HoytVznCgNyx9fbT"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["63ShEh8PbGikLjgj", "cj34uulU6FYBZsWF", "br3RSP0W9nBhvhf8"], "userId": "Q0DtJMcYQdN66bsw"}, {"rewardIds": ["Agt65X4N1LQZmB61", "JMdtwCVUrYQue84d", "wmbwFEnAZaWsQJtR"], "userId": "YoagRJK5PX9UcOvh"}, {"rewardIds": ["PyE11TRT2SKseoe8", "VLie0LBa36KNzjf0", "05CXNGehQ2aTjTDf"], "userId": "KFDXC7eGL5YhJDWh"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "9YWqc0qgV6d9yOfI"}' \
    'MLds2DbPcaoMdtRL' \
    'TmSvTkQQgB7exYvm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'HMxr5hPCJJztJBg0' \
    'tTJg46IewOXE2AkC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'h3QIZsUf8lGFXcmw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["TERHclOdxIwqejxe", "18rNdb8Otq6j1mqU", "av7k05HAQltnSojV"]}' \
    '4jT65yclX2FtAz0v' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminClaimUserRewards' test.out

#- 30 GetChallenges
$PYTHON -m $MODULE 'challenge-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'GetChallenges' test.out

#- 31 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'JjFIYWOaNdsimmkW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-public-list-schedules-by-goal' \
    '2miH3xRHAKy4QxZk' \
    'aXZ7vmiEd0JPxVyQ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
$PYTHON -m $MODULE 'challenge-public-list-schedules' \
    'pshaDwNqTbbFMXAM' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "fVXe0GZeMgsRsmH1"}' \
    'EQrYmkPKTPOlhTtS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicClaimUserRewardsByGoalCode' test.out

#- 35 EvaluateMyProgress
$PYTHON -m $MODULE 'challenge-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'EvaluateMyProgress' test.out

#- 36 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'iZNCxuogFteTHJe4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    'BhSSQkQD6WmOt6D7' \
    '41' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicGetPastUserProgression' test.out

#- 38 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserRewards' test.out

#- 39 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["eKTmBNvGYxEQdf3e", "woGGoY7xmFNAmjDD", "Cvs78mcMdiS76YAp"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
