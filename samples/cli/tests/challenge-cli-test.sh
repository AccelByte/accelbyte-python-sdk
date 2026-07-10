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
challenge-admin-move-goal-to-slot '{"slotIndex": 39}' '5UDrT6QXCs5SPBbR' 'PZTF6oQAXVG7tnsZ' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'g5QgXjvyGJPN4eXb' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'JE5Vs2GcyomQoIXi' --login_with_auth "Bearer foo"
challenge-admin-list-schedules 'mBJehyxlNsjUgxBk' --login_with_auth "Bearer foo"
challenge-admin-get-challenge-slots 'F6wFPoJeQediogEh' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge 'hM2rIizGdKvOPdq5' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "STOP", "endDate": "1993-05-17T00:00:00Z"}' 'KscfOcYu3dpCROYq' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "UiGKXVFCmpo6sPwV", "extendType": "CUSTOM", "grpcServerAddress": "EDSJsEK5QpNhlI2i"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "S5EpGhhvXYck0upM", "extendType": "CUSTOM", "grpcServerAddress": "0NBMA9ORxpzwLR2A"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["K6eXUGPJsw1fiP80", "G9Pclxcft2ulIJzP", "yrVEiOG4UcqsuGKH"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["hMRWLVd3DlhLuIpo", "mM8sm1MiaI1mX2tJ", "oARtdbBe7udsMrok"], "userId": "0WvGYYnx4V709xbn"}, {"rewardIds": ["GezKsDwG2omOR2nv", "YI9TVqJdvzcWbfUp", "aXp5JMl5LL4bTxBm"], "userId": "ZjdrrIxsB0NRsB1f"}, {"rewardIds": ["PqqRRulpqpymDkQh", "trHWwRVnwVBOqOHi", "8pWGd1juYhiqjRJO"], "userId": "qB5F93zFQbJndUDp"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "dONneAczbBdHb2sl"}' 't71B1SmZp2JZp50C' 'nPb71ORYcmQbTU5J' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression 'X8ccLjMXJRk0eaKQ' 'DOJvrTefglSs6g4i' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'Y9u02aCNYIWekp18' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["lOC3mNqF7Bl0Lcgh", "VHfPEspxwhRON0bc", "1eMbEIjowLqc3ecj"]}' 'XJbZDKKoxLE1Y3Dy' --login_with_auth "Bearer foo"
challenge-public-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'mtj3giPg4x4yiPX6' --login_with_auth "Bearer foo"
challenge-public-list-schedules-by-goal 'ues1Hhhkg1yLVbLF' 'zHEP8cM4NTwr0KHa' --login_with_auth "Bearer foo"
challenge-public-list-schedules 'AsmTej52WKi6tArA' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "URt9plCSVq8PdH6h"}' 'JPUAc0RVwXgAgntL' --login_with_auth "Bearer foo"
challenge-public-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'MCuaXBWQi6BqPg4x' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'r0lCancUZGCHsZYo' '76' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["SgORcz5S5BvmgBLx", "h4ijFnE3Tam69qSZ", "7PC6f6QkmZXElW9Y"]}' --login_with_auth "Bearer foo"
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
echo "1..41"

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
    '{"activeGoalsPerRotation": 11, "assignmentRule": "RANDOMIZED", "code": "RSse6AAz3S4czz0Q", "description": "KFlAVmVLu4AOec0z", "endAfter": 8, "endDate": "1984-08-16T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "eeoip68J1nsv4W2O", "randomizedPerRotation": false, "repeatAfter": 15, "resetConfig": {"resetDate": 40, "resetDay": 0, "resetTime": "41IslKHzGlLKWUtD"}, "rotation": "MONTHLY", "startDate": "1980-11-05T00:00:00Z", "tags": ["1OQAoxyyQpRWCiiP", "DGQhNPEwiJCf2XJV", "rlzqQls1ozhLVA3k"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
$PYTHON -m $MODULE 'challenge-admin-get-item-references' \
    'E8jKvgatOEBM70Td' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'lNBJYOmpu1VCarzB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'sV6xnZ5Jrzzjrcau' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 14, "assignmentRule": "FIXED", "description": "6CWVG8SWP3glU6mu", "endAfter": 39, "endDate": "1992-06-30T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "VJnNnN7kAa7j0riF", "randomizedPerRotation": false, "repeatAfter": 54, "resetConfig": {"resetDate": 7, "resetDay": 68, "resetTime": "NJOIG36I6tRbRcrE"}, "rotation": "NONE", "startDate": "1979-02-03T00:00:00Z", "tags": ["FKHQkETJyTlUrwDT", "noujQD4IEiH9Z5qX", "n3aoRtlqOECohViH"]}' \
    'A5CzgFSy8X1A3PrI' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    'fapq5AAeMe4L3mDW' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'ORBVXTIIJM9XsYII' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "ZxiXNMR9BgaWcFX3", "description": "SUBhyoTsMWPAxUMk", "isActive": false, "name": "EXFTlEMEsFzYqwgK", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "Np5nodqpLm7FhJBN", "matcher": "LESS_THAN", "parameterName": "sQs6XNbjvqhnUVLW", "parameterType": "STATISTIC", "statCycleId": "v2LFjAKY7CbgsWqF", "targetValue": 0.7891271082268984}, {"id": "ZX7kPBom8F9GLLTG", "matcher": "GREATER_THAN_EQUAL", "parameterName": "CjtuzFMbAG9YI89h", "parameterType": "ENTITLEMENT", "statCycleId": "pqiXJF3WGRaoQomS", "targetValue": 0.5676877008021848}, {"id": "C4DdrKF7SUQPLG59", "matcher": "EQUAL", "parameterName": "G0rH0zcswwVeMK6M", "parameterType": "ACHIEVEMENT", "statCycleId": "W32iK7MGt1ixY5rA", "targetValue": 0.8587808889604617}]}, {"operator": "AND", "predicates": [{"id": "oVeJIePF8ZrQzP4z", "matcher": "GREATER_THAN_EQUAL", "parameterName": "lGdMiHKxbWCYzo8y", "parameterType": "ENTITLEMENT", "statCycleId": "2KTK9tmmOnYnOpas", "targetValue": 0.9384547985844873}, {"id": "ghP1y4Zi7s7QBlk4", "matcher": "EQUAL", "parameterName": "Z44B1GZgKg4uKxaC", "parameterType": "ACHIEVEMENT", "statCycleId": "0ufPpzwj1QGIFmlV", "targetValue": 0.09582807533599702}, {"id": "4jvapseE9LN9bvhO", "matcher": "GREATER_THAN_EQUAL", "parameterName": "ysryod3dNQrmsApR", "parameterType": "STATISTIC_CYCLE", "statCycleId": "4mTIpUA9gxo8SV38", "targetValue": 0.2226085195883034}]}, {"operator": "AND", "predicates": [{"id": "Og54vCE48L5oLF6M", "matcher": "LESS_THAN_EQUAL", "parameterName": "lNa4JUMSHNgqRqCV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "usamANkZlOX9Sfo9", "targetValue": 0.9244437601547867}, {"id": "HgXqKhTPkwfLM9uS", "matcher": "LESS_THAN", "parameterName": "Z5njN86Hl8kUXzt6", "parameterType": "ACHIEVEMENT", "statCycleId": "9d9lvccKMLhrTrcB", "targetValue": 0.4873209197156929}, {"id": "2ItBS3KtKZWe8aoF", "matcher": "LESS_THAN", "parameterName": "7RBx3vim02jBOxrZ", "parameterType": "STATISTIC_CYCLE", "statCycleId": "WV1qx8CzPML52faX", "targetValue": 0.7545145936266626}]}], "rewards": [{"itemId": "r9Sk4lq2faBcAXXK", "itemName": "lhvyH8paOJtxqMPp", "qty": 0.036524489547565264, "type": "ENTITLEMENT"}, {"itemId": "40NlncceIZSwgAIk", "itemName": "gzh4pTU0Am4DZhl0", "qty": 0.023882720214862485, "type": "ENTITLEMENT"}, {"itemId": "xFJ3sWCqQpQ2FbKP", "itemName": "FMycMSQ4qfAacR0L", "qty": 0.09943776324907971, "type": "STATISTIC"}], "schedule": {"endTime": "1985-01-03T00:00:00Z", "order": 55, "startTime": "1987-08-15T00:00:00Z"}, "tags": ["Xvjcu2s6w3VifnKq", "mTSoGH1XEfY6QAYn", "6WQ5UBEU1QAOHfZi"]}' \
    'GhxOdcuDXSxSc3aZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'PV87pna08gxefTYK' \
    'huxaEc7M4P7UckSC' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "6ePeN8i4GrFES9z7", "isActive": true, "name": "3BAHZ7c53q7akMpc", "requirementGroups": [{"operator": "AND", "predicates": [{"id": "cjmSEwdrkEnnqKzF", "matcher": "GREATER_THAN_EQUAL", "parameterName": "3h65hbN15zfQSfQr", "parameterType": "STATISTIC", "statCycleId": "HGebSVu0LQ40kepE", "targetValue": 0.015387351952848238}, {"id": "C4dfiOMZfEhHr39p", "matcher": "LESS_THAN", "parameterName": "TyU8OhgfY9JQYGF4", "parameterType": "ACHIEVEMENT", "statCycleId": "fvHEsJKQQewVLMUo", "targetValue": 0.4285454892256142}, {"id": "naRcYp7FUjfIGaff", "matcher": "GREATER_THAN", "parameterName": "R7wZNiVsF6xG2mXE", "parameterType": "ENTITLEMENT", "statCycleId": "dbzIVy8alncV7vWg", "targetValue": 0.7126738049981328}]}, {"operator": "AND", "predicates": [{"id": "dfo07UctPErqxyMy", "matcher": "GREATER_THAN", "parameterName": "K06MqQBErxgjVByc", "parameterType": "STATISTIC", "statCycleId": "ZDDhoO05oKqymxLD", "targetValue": 0.8631353712720077}, {"id": "Lcvw6T6mZEiwxxEl", "matcher": "GREATER_THAN_EQUAL", "parameterName": "ZprZ60zMjhTHeh94", "parameterType": "ENTITLEMENT", "statCycleId": "SenE5hCFkIf5weqZ", "targetValue": 0.8641947779995548}, {"id": "8MH57l2Zsrh90ETt", "matcher": "EQUAL", "parameterName": "mGukz3MnlrjcHp6B", "parameterType": "ACHIEVEMENT", "statCycleId": "Vj7rXFgDnDkdZ9bp", "targetValue": 0.1475761410886285}]}, {"operator": "AND", "predicates": [{"id": "SWTaLQjctvrK2jhs", "matcher": "EQUAL", "parameterName": "pKPlXn77AtYoFzLA", "parameterType": "STATISTIC_CYCLE", "statCycleId": "r2QEPx3zTxBGtEJI", "targetValue": 0.8122243066848257}, {"id": "ppuUSsKoHw2hyd12", "matcher": "GREATER_THAN_EQUAL", "parameterName": "GO0dW8rX2MVUGKSZ", "parameterType": "USERACCOUNT", "statCycleId": "cg4W1IS3Uv1BpWoJ", "targetValue": 0.439545674168327}, {"id": "aqdg2FHcunsS1lna", "matcher": "LESS_THAN_EQUAL", "parameterName": "m9vqjhbeK2qN8g6x", "parameterType": "USERACCOUNT", "statCycleId": "yYDo5R3hLiD5sf5y", "targetValue": 0.861062096751811}]}], "rewards": [{"itemId": "JsxJNGmyt0SQDUDo", "itemName": "WBZVGLlkUetzCAWc", "qty": 0.9935579834891282, "type": "STATISTIC"}, {"itemId": "dFOyqA2clJ5gEOaC", "itemName": "gM6Yn6RugbNEIpGB", "qty": 0.5012673088037805, "type": "ENTITLEMENT"}, {"itemId": "zqmSKxOEQlVcx6Gq", "itemName": "sBq8vdhWVnuYLgpZ", "qty": 0.07205485790148947, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-10-24T00:00:00Z", "order": 99, "startTime": "1997-08-01T00:00:00Z"}, "tags": ["G2nmyuViB9kRTcSQ", "dTnNYGeAfYFG3wSk", "HKufBdS3ZOokZB4c"]}' \
    'XnAXyuGz6LlxHv8S' \
    'wyagYvDJ3w3UNgIG' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'j2jZtEYT8sIPSE1X' \
    'XPzySa0sZoFS6xCO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-admin-list-schedules-by-goal' \
    'WMpyh9pMsQgb64EL' \
    'bzDMwyo4nIRysQdb' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminMoveGoalToSlot
$PYTHON -m $MODULE 'challenge-admin-move-goal-to-slot' \
    '{"slotIndex": 42}' \
    '0kHr4isTKWjmv67n' \
    'uHCXWfwnwGioVwVz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminMoveGoalToSlot' test.out

#- 16 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'mmBVVFfpqx1AeLtz' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminGetPeriods' test.out

#- 17 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'cPJ3jtDYBo4FUTH7' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminRandomizeChallenge' test.out

#- 18 AdminListSchedules
$PYTHON -m $MODULE 'challenge-admin-list-schedules' \
    'CGfKSyxgRR1DiCqS' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminListSchedules' test.out

#- 19 AdminGetChallengeSlots
$PYTHON -m $MODULE 'challenge-admin-get-challenge-slots' \
    'MzpqIFGLkDs7ACC1' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 19 'AdminGetChallengeSlots' test.out

#- 20 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'RgBfoNrHlFi2qJLg' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 20 'AdminDeleteTiedChallenge' test.out

#- 21 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "ACCELERATE", "endDate": "1981-08-12T00:00:00Z"}' \
    'GsZaSHevO0TQNEI3' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateTiedChallengeSchedule' test.out

#- 22 AdminGetAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-get-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 22 'AdminGetAssignmentPlugin' test.out

#- 23 AdminUpdateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-update-assignment-plugin' \
    '{"appName": "kfabxJWWSI1ECUo1", "extendType": "APP", "grpcServerAddress": "peFhUztXDgB7n4C9"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 23 'AdminUpdateAssignmentPlugin' test.out

#- 24 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "7uAPP8PATLpUpxeJ", "extendType": "APP", "grpcServerAddress": "WFbr3RSP0W9nBhvh"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminCreateAssignmentPlugin' test.out

#- 25 AdminDeleteAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-delete-assignment-plugin' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminDeleteAssignmentPlugin' test.out

#- 26 AdminEvaluateProgress
$PYTHON -m $MODULE 'challenge-admin-evaluate-progress' \
    '{"userIds": ["f8Q0DtJMcYQdN66b", "swAgt65X4N1LQZmB", "61JMdtwCVUrYQue8"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminEvaluateProgress' test.out

#- 27 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["4dwmbwFEnAZaWsQJ", "tRYoagRJK5PX9UcO", "vhPyE11TRT2SKseo"], "userId": "e8VLie0LBa36KNzj"}, {"rewardIds": ["f005CXNGehQ2aTjT", "DfKFDXC7eGL5YhJD", "Wh9YWqc0qgV6d9yO"], "userId": "fIMLds2DbPcaoMdt"}, {"rewardIds": ["RLTmSvTkQQgB7exY", "vmHMxr5hPCJJztJB", "g0tTJg46IewOXE2A"], "userId": "kCh3QIZsUf8lGFXc"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminClaimUsersRewards' test.out

#- 28 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "mwTERHclOdxIwqej"}' \
    'xe18rNdb8Otq6j1m' \
    'qUav7k05HAQltnSo' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminClaimUserRewardsByGoalCode' test.out

#- 29 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'jV4jT65yclX2FtAz' \
    '0vJjFIYWOaNdsimm' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 29 'AdminGetUserProgression' test.out

#- 30 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'kW2miH3xRHAKy4Qx' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 30 'AdminGetUserRewards' test.out

#- 31 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["ZkaXZ7vmiEd0JPxV", "yQpshaDwNqTbbFMX", "AMfVXe0GZeMgsRsm"]}' \
    'H1EQrYmkPKTPOlhT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'AdminClaimUserRewards' test.out

#- 32 PublicGetChallenges
$PYTHON -m $MODULE 'challenge-public-get-challenges' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicGetChallenges' test.out

#- 33 PublicGetScheduledGoals
$PYTHON -m $MODULE 'challenge-public-get-scheduled-goals' \
    'tSiZNCxuogFteTHJ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicGetScheduledGoals' test.out

#- 34 PublicListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-public-list-schedules-by-goal' \
    'e4BhSSQkQD6WmOt6' \
    'D7ufFVTOhvQpfbBk' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 34 'PublicListSchedulesByGoal' test.out

#- 35 PublicListSchedules
$PYTHON -m $MODULE 'challenge-public-list-schedules' \
    'e8aEdd36xj6wySol' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 35 'PublicListSchedules' test.out

#- 36 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "tDxsbzxrlaKEfkoY"}' \
    'jY2o6ouRW9UtNquw' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicClaimUserRewardsByGoalCode' test.out

#- 37 PublicEvaluateMyProgress
$PYTHON -m $MODULE 'challenge-public-evaluate-my-progress' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 37 'PublicEvaluateMyProgress' test.out

#- 38 PublicGetUserProgression
$PYTHON -m $MODULE 'challenge-public-get-user-progression' \
    'C3WgumrIz4NhGztZ' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 38 'PublicGetUserProgression' test.out

#- 39 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    'pr4U4fwQIiLXgmRa' \
    '37' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicGetPastUserProgression' test.out

#- 40 PublicGetUserRewards
$PYTHON -m $MODULE 'challenge-public-get-user-rewards' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 40 'PublicGetUserRewards' test.out

#- 41 PublicClaimUserRewards
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["2xaOBdPF0JmX8qwU", "1cTuHHPB5S3DvPRC", "zBrVUxmDOj3cvRFa"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 41 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
