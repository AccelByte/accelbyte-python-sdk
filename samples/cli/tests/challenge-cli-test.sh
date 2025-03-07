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
challenge-admin-create-goal '{"code": "kyF6C7duuyZ0GhDo", "description": "gqrhBRd8lDR6qVNP", "isActive": false, "name": "ZYdFLIAjGGJddVCv", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "9vx5KQ7KYnIuMBva", "parameterType": "ACHIEVEMENT", "statCycleId": "35llzQRaT5kPxUfo", "targetValue": 0.0845317882302753}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "06UpOXGSLmCVuHOP", "parameterType": "ENTITLEMENT", "statCycleId": "sNveabntBSxTeIv5", "targetValue": 0.8980021888784229}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "oYupD391C2qtPYok", "parameterType": "ACHIEVEMENT", "statCycleId": "rncqmLtjQHAf8Tgo", "targetValue": 0.6449758225128756}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "3VLisV6zwPuo3td6", "parameterType": "ACHIEVEMENT", "statCycleId": "C6I3lMjGSWN2laRl", "targetValue": 0.37861209644089067}, {"matcher": "EQUAL", "parameterName": "NeIxPz6MbwL6IY69", "parameterType": "STATISTIC_CYCLE", "statCycleId": "cWfDslpJSqGAXQ0y", "targetValue": 0.8124041157036569}, {"matcher": "GREATER_THAN", "parameterName": "djxcBZufQxGiHPll", "parameterType": "USERACCOUNT", "statCycleId": "SC2uE4o5Vwdo3feP", "targetValue": 0.2653606611144602}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "LZZbSqb8RwNmn9Hr", "parameterType": "ENTITLEMENT", "statCycleId": "Qy4uZAAiE0mit9RG", "targetValue": 0.4657805342226383}, {"matcher": "LESS_THAN", "parameterName": "jsoqwGyzzWi9gwQY", "parameterType": "STATISTIC", "statCycleId": "A8yu7Vk6Jt4Ymos9", "targetValue": 0.5788925955705603}, {"matcher": "EQUAL", "parameterName": "T7quIOvBMcaYmvCk", "parameterType": "USERACCOUNT", "statCycleId": "YoMcHyCUEXlAvxJM", "targetValue": 0.05782474141294325}]}], "rewards": [{"itemId": "alwSyliWMNW5NyLu", "itemName": "0M3VHh2EI8JlDbPW", "qty": 0.02778086672628388, "type": "STATISTIC"}, {"itemId": "Q9lNmqRBaAkLnvxk", "itemName": "T1X68cmDc3fxU8My", "qty": 0.5871334142748746, "type": "STATISTIC"}, {"itemId": "V0v52Dlym6puQ23x", "itemName": "oJ8aeCnaLpUKp44Y", "qty": 0.7558541889546444, "type": "STATISTIC"}], "schedule": {"endTime": "1973-03-22T00:00:00Z", "order": 30, "startTime": "1971-06-03T00:00:00Z"}, "tags": ["vXa3bMrXsDr6kILs", "SSyDdmykmoPYgc2L", "4jk4Lo0LSP0pf4Ix"]}' 'jUkl535X3ateEKDp' --login_with_auth "Bearer foo"
challenge-admin-get-goal 'ADz1x3poD3Qgb3bo' 'LQQ1MzH7Qm8bwbmX' --login_with_auth "Bearer foo"
challenge-admin-update-goals '{"description": "gdAPh1EThG96gAFK", "isActive": false, "name": "2WDgCcxvONZm3EeE", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "DnyeFoF7VSZ6pf3v", "parameterType": "ENTITLEMENT", "statCycleId": "QSKVPHbn4Xxtu7LQ", "targetValue": 0.7062441953341027}, {"matcher": "LESS_THAN", "parameterName": "rmjqU6YE3p4lSck0", "parameterType": "ENTITLEMENT", "statCycleId": "Hn5GI39YBHqaTHeK", "targetValue": 0.319706332135565}, {"matcher": "EQUAL", "parameterName": "8iGeUlc9d9sogWa2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "CKNS0GqVvUfHQvsH", "targetValue": 0.8001837550145668}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "3PBddN8S48l9lyNA", "parameterType": "ENTITLEMENT", "statCycleId": "NjkfZrQvGgbLdLsF", "targetValue": 0.40432701694279505}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "MDYDDxHSZjtqXyJ5", "parameterType": "ENTITLEMENT", "statCycleId": "f7Gc26SaiGVkydwY", "targetValue": 0.7743228230381474}, {"matcher": "LESS_THAN", "parameterName": "G26yUZNmTBcvrbYC", "parameterType": "STATISTIC", "statCycleId": "G8aMVGLiBNrDjqox", "targetValue": 0.045902130522347595}]}, {"operator": "AND", "predicates": [{"matcher": "EQUAL", "parameterName": "Ij88cekdqCt81P1k", "parameterType": "STATISTIC", "statCycleId": "NzDmeIP6rOvDz9KO", "targetValue": 0.2932471699956113}, {"matcher": "EQUAL", "parameterName": "SZLxoRDFuuuySj29", "parameterType": "ACHIEVEMENT", "statCycleId": "iuFM3FIoVk8T3GpA", "targetValue": 0.21098186542820196}, {"matcher": "GREATER_THAN", "parameterName": "wzHPxB1UskYs4Yw2", "parameterType": "STATISTIC_CYCLE", "statCycleId": "aZSWMiVi10sG6vxk", "targetValue": 0.0828471522484081}]}], "rewards": [{"itemId": "UcmqRRbceJ5i0EeD", "itemName": "xOgBnhhqElIaDml4", "qty": 0.9786064555763411, "type": "STATISTIC"}, {"itemId": "H0JT1yduat2vQR3b", "itemName": "iBfsu4jmsRE2w1yE", "qty": 0.1617488669951066, "type": "ENTITLEMENT"}, {"itemId": "gh3tIYt4SqYUTLDx", "itemName": "9gIiDandpGT2t24a", "qty": 0.6540157225480149, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1975-02-05T00:00:00Z", "order": 50, "startTime": "1985-10-13T00:00:00Z"}, "tags": ["3IHeHSKLCa3xreND", "UWehwH3q31A806DJ", "gas4b6z3LNUj7fdg"]}' 'LA84Z8YYk6QEgJjB' 'bEDoNf3n0hEoRCAc' --login_with_auth "Bearer foo"
challenge-admin-delete-goal 'f80zfFyabWAgIUXi' 'I07A68eaqC2J9jyE' --login_with_auth "Bearer foo"
challenge-admin-list-schedules-by-goal 'W6GLbc0NaKDUL3sa' '13lk1dQBHO86IlBh' --login_with_auth "Bearer foo"
challenge-admin-get-periods 'netU4RwTqUXlTDBz' --login_with_auth "Bearer foo"
challenge-admin-randomize-challenge 'OuYsaZA2yyd4mbqo' --login_with_auth "Bearer foo"
challenge-admin-list-schedules 'OfADMMAXFaY9eKa6' --login_with_auth "Bearer foo"
challenge-admin-delete-tied-challenge '99bRVhyaKwwrAP2a' --login_with_auth "Bearer foo"
challenge-admin-update-tied-challenge-schedule '{"action": "STOP", "endDate": "1976-09-13T00:00:00Z"}' 'u7WtjCtoYetOO847' --login_with_auth "Bearer foo"
challenge-admin-get-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-update-assignment-plugin '{"appName": "g8OudOfjnCuHZ3c4", "extendType": "APP", "grpcServerAddress": "RcQWsmqPNs92epxk"}' --login_with_auth "Bearer foo"
challenge-admin-create-assignment-plugin '{"appName": "0i8VxsZNereSvf96", "extendType": "CUSTOM", "grpcServerAddress": "9mCEHThUJkETAsSp"}' --login_with_auth "Bearer foo"
challenge-admin-delete-assignment-plugin --login_with_auth "Bearer foo"
challenge-admin-evaluate-progress '{"userIds": ["7gh4TeUTkOkAYfJB", "8AT9t4Tv207Y2QD3", "oD5fLCr3OOlXVv8Z"]}' --login_with_auth "Bearer foo"
challenge-admin-claim-users-rewards '[{"rewardIds": ["GF7uYnGzpipNDigN", "Jma1MbqqZtfNWql4", "nmwAft4gqkNNlWkD"], "userId": "9eOziYRFOn0jJLHC"}, {"rewardIds": ["9LxhvNXTwGBCtohL", "tl9Zuhytm5UDrT6Q", "XCs5SPBbRPZTF6oQ"], "userId": "AXVG7tnsZg5QgXjv"}, {"rewardIds": ["yGJPN4eXbJE5Vs2G", "cyomQoIXimBJehyx", "lNsjUgxBkF6wFPoJ"], "userId": "eQediogEhhM2rIiz"}]' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards-by-goal-code '{"goalCode": "GdKvOPdq5xrgxSmy"}' '1DN9LFkYW5DQyj4b' 'j5Ro2ogaKt2ujQSa' --login_with_auth "Bearer foo"
challenge-admin-get-user-progression '3Zdb65UXmy0Zp6iI' 'aTIKUkmkk9QM0NBM' --login_with_auth "Bearer foo"
challenge-admin-get-user-rewards 'A9ORxpzwLR2AK6eX' --login_with_auth "Bearer foo"
challenge-admin-claim-user-rewards '{"rewardIDs": ["UGPJsw1fiP80G9Pc", "lxcft2ulIJzPyrVE", "iOG4UcqsuGKHhMRW"]}' 'LVd3DlhLuIpomM8s' --login_with_auth "Bearer foo"
challenge-get-challenges --login_with_auth "Bearer foo"
challenge-public-get-scheduled-goals 'm1MiaI1mX2tJoARt' --login_with_auth "Bearer foo"
challenge-public-list-schedules-by-goal 'dbBe7udsMrok0WvG' 'YYnx4V709xbnGezK' --login_with_auth "Bearer foo"
challenge-public-list-schedules 'sDwG2omOR2nvYI9T' --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards-by-goal-code '{"goalCode": "VqJdvzcWbfUpaXp5"}' 'JMl5LL4bTxBmZjdr' --login_with_auth "Bearer foo"
challenge-evaluate-my-progress --login_with_auth "Bearer foo"
challenge-public-get-user-progression 'rIxsB0NRsB1fPqqR' --login_with_auth "Bearer foo"
challenge-public-get-past-user-progression 'RulpqpymDkQhtrHW' '46' --login_with_auth "Bearer foo"
challenge-public-get-user-rewards --login_with_auth "Bearer foo"
challenge-public-claim-user-rewards '{"rewardIDs": ["inpng5BLy8wbhMss", "AHjapIkY9Rf4wP57", "dBZNR88YbCtmKy8M"]}' --login_with_auth "Bearer foo"
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
    '{"activeGoalsPerRotation": 54, "assignmentRule": "UNSCHEDULED", "code": "czbBdHb2slt71B1S", "description": "mZp2JZp50CnPb71O", "endAfter": 89, "endDate": "1978-01-22T00:00:00Z", "goalsVisibility": "PERIODONLY", "name": "jTXAQN0qdskdQV0T", "randomizedPerRotation": true, "repeatAfter": 21, "resetConfig": {"resetDate": 72, "resetDay": 9, "resetTime": "EFnmDbxIxi4YKlON"}, "rotation": "MONTHLY", "startDate": "1974-12-21T00:00:00Z", "tags": ["iY9u02aCNYIWekp1", "8lOC3mNqF7Bl0Lcg", "hVHfPEspxwhRON0b"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 3 'AdminCreateChallenge' test.out

#- 4 AdminGetItemReferences
$PYTHON -m $MODULE 'challenge-admin-get-item-references' \
    'c1eMbEIjowLqc3ec' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 4 'AdminGetItemReferences' test.out

#- 5 AdminGetActiveChallenges
$PYTHON -m $MODULE 'challenge-admin-get-active-challenges' \
    'jXJbZDKKoxLE1Y3D' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 5 'AdminGetActiveChallenges' test.out

#- 6 AdminGetChallenge
$PYTHON -m $MODULE 'challenge-admin-get-challenge' \
    'ymtj3giPg4x4yiPX' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 6 'AdminGetChallenge' test.out

#- 7 AdminUpdateChallenge
$PYTHON -m $MODULE 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 11, "assignmentRule": "RANDOMIZED", "description": "3H0tYighU0VUfcYH", "endAfter": 74, "endDate": "1988-01-07T00:00:00Z", "goalsVisibility": "SHOWALL", "name": "BfAKSiPW3VgsZXiR", "randomizedPerRotation": true, "repeatAfter": 9, "resetConfig": {"resetDate": 72, "resetDay": 19, "resetTime": "7HVWqMkNSawQUWDF"}, "rotation": "WEEKLY", "startDate": "1982-10-15T00:00:00Z", "tags": ["Vq8PdH6hJPUAc0RV", "wXgAgntLMCuaXBWQ", "i6BqPg4xr0lCancU"]}' \
    'ZGCHsZYoLfR1KtOv' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 7 'AdminUpdateChallenge' test.out

#- 8 AdminDeleteChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-challenge' \
    '7Zy0b65uvuKNuy0y' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 8 'AdminDeleteChallenge' test.out

#- 9 AdminGetGoals
$PYTHON -m $MODULE 'challenge-admin-get-goals' \
    'tZQ7M6Nzy1adnSKO' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 9 'AdminGetGoals' test.out

#- 10 AdminCreateGoal
$PYTHON -m $MODULE 'challenge-admin-create-goal' \
    '{"code": "LFKx1dX4LuWJu3pD", "description": "MUAeeZ97SBROPYuG", "isActive": true, "name": "qP6oo7G73zdxTgOf", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "J1nsv4W2OJhtafxM", "parameterType": "ENTITLEMENT", "statCycleId": "JlHeb34sZKHcl5LL", "targetValue": 0.600520027273756}, {"matcher": "LESS_THAN", "parameterName": "exL4fZvWtND2tcBF", "parameterType": "ENTITLEMENT", "statCycleId": "NPEwiJCf2XJVrlzq", "targetValue": 0.6815933884009528}, {"matcher": "GREATER_THAN", "parameterName": "5afj12K2IzrBvvWm", "parameterType": "ACHIEVEMENT", "statCycleId": "udE0OXudXgNne8kJ", "targetValue": 0.4349031839985046}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "1VCarzBsV6xnZ5Jr", "parameterType": "STATISTIC_CYCLE", "statCycleId": "ZQ7hfxnhLd3Knakn", "targetValue": 0.23826456736875168}, {"matcher": "EQUAL", "parameterName": "glU6muswVJnNnN7k", "parameterType": "STATISTIC_CYCLE", "statCycleId": "TrjyEgarAdNJOIG3", "targetValue": 0.9444092981765404}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "Go7dwV9DBqFKHQkE", "parameterType": "USERACCOUNT", "statCycleId": "JyTlUrwDTnoujQD4", "targetValue": 0.5545607225257151}]}, {"operator": "AND", "predicates": [{"matcher": "GREATER_THAN_EQUAL", "parameterName": "iH9Z5qXn3aoRtlqO", "parameterType": "STATISTIC_CYCLE", "statCycleId": "H26IUJNvYuGRUvpZ", "targetValue": 0.010544701389554323}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "A3PrIfapq5AAeMe4", "parameterType": "USERACCOUNT", "statCycleId": "mtgWgU4pCAKxeE70", "targetValue": 0.45508650169254006}, {"matcher": "EQUAL", "parameterName": "YIIZxiXNMR9BgaWc", "parameterType": "USERACCOUNT", "statCycleId": "QkqsGnmyo5JJTUVm", "targetValue": 0.03142632264243672}]}], "rewards": [{"itemId": "8GEXFTlEMEsFzYqw", "itemName": "gK1Np5nodqpLm7Fh", "qty": 0.5714505255701021, "type": "STATISTIC"}, {"itemId": "TJ0sQs6XNbjvqhnU", "itemName": "VLWu8olKdxL6ozRm", "qty": 0.48356135026775515, "type": "STATISTIC"}, {"itemId": "qFWZX7kPBom8F9GL", "itemName": "LTG8phc3n4iLoIll", "qty": 0.5877660703834918, "type": "ENTITLEMENT"}], "schedule": {"endTime": "1978-12-01T00:00:00Z", "order": 16, "startTime": "1999-04-07T00:00:00Z"}, "tags": ["pqiXJF3WGRaoQomS", "JC4DdrKF7SUQPLG5", "9e0k5ZtX6wK7PpUl"]}' \
    'cIW32iK7MGt1ixY5' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 10 'AdminCreateGoal' test.out

#- 11 AdminGetGoal
$PYTHON -m $MODULE 'challenge-admin-get-goal' \
    'rA1WoVeJIePF8ZrQ' \
    'zP4zvtdxdbZUpd6F' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 11 'AdminGetGoal' test.out

#- 12 AdminUpdateGoals
$PYTHON -m $MODULE 'challenge-admin-update-goals' \
    '{"description": "JtHJ1pyVwyKQLY6F", "isActive": true, "name": "nOpas6ghP1y4Zi7s", "requirementGroups": [{"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "ffnrfsGlfPaZKBwa", "parameterType": "USERACCOUNT", "statCycleId": "Ddb60ufPpzwj1QGI", "targetValue": 0.5135365385710132}, {"matcher": "GREATER_THAN", "parameterName": "fHkIySok5DiXZtLW", "parameterType": "STATISTIC", "statCycleId": "7rGysryod3dNQrms", "targetValue": 0.431327732731557}, {"matcher": "GREATER_THAN_EQUAL", "parameterName": "Ek4mTIpUA9gxo8SV", "parameterType": "USERACCOUNT", "statCycleId": "8nEhoXmM2W7l6jHM", "targetValue": 0.43075624068551355}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN_EQUAL", "parameterName": "lNa4JUMSHNgqRqCV", "parameterType": "STATISTIC_CYCLE", "statCycleId": "usamANkZlOX9Sfo9", "targetValue": 0.9244437601547867}, {"matcher": "LESS_THAN_EQUAL", "parameterName": "0iktm0ZPLkLOsp0L", "parameterType": "ACHIEVEMENT", "statCycleId": "5njN86Hl8kUXzt6b", "targetValue": 0.7246596221221085}, {"matcher": "EQUAL", "parameterName": "9lvccKMLhrTrcBE2", "parameterType": "USERACCOUNT", "statCycleId": "vrAejcq2LgkQuaS7", "targetValue": 0.7093057288788248}]}, {"operator": "AND", "predicates": [{"matcher": "LESS_THAN", "parameterName": "x3vim02jBOxrZDyv", "parameterType": "STATISTIC", "statCycleId": "qx8CzPML52faXUr9", "targetValue": 0.7236804061027042}, {"matcher": "GREATER_THAN", "parameterName": "nOOCzfsflhjbngJO", "parameterType": "USERACCOUNT", "statCycleId": "n18G5MlfDTk8aG40", "targetValue": 0.6363885077309284}, {"matcher": "GREATER_THAN", "parameterName": "j547fH0XrKEDpEY8", "parameterType": "ENTITLEMENT", "statCycleId": "nocGAjci0V3tBf2j", "targetValue": 0.21123411426743854}]}], "rewards": [{"itemId": "HGKXphn50c9tNLDl", "itemName": "jhZ2jxLRX3z46OCa", "qty": 0.5240253787600553, "type": "STATISTIC"}, {"itemId": "Xvjcu2s6w3VifnKq", "itemName": "mTSoGH1XEfY6QAYn", "qty": 0.9477700735798584, "type": "STATISTIC"}, {"itemId": "5UBEU1QAOHfZiGhx", "itemName": "OdcuDXSxSc3aZPV8", "qty": 0.9567044551591447, "type": "STATISTIC"}], "schedule": {"endTime": "1977-10-31T00:00:00Z", "order": 0, "startTime": "1998-08-02T00:00:00Z"}, "tags": ["8gxefTYKhuxaEc7M", "4P7UckSC6ePeN8i4", "GrFES9z7xueHpATH"]}' \
    'ccee9GXhKcjmSEwd' \
    'rkEnnqKzFsLfYalU' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 12 'AdminUpdateGoals' test.out

#- 13 AdminDeleteGoal
$PYTHON -m $MODULE 'challenge-admin-delete-goal' \
    'lfwEQKjU7eHGebSV' \
    'u0LQ40kepEaC4dfi' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 13 'AdminDeleteGoal' test.out

#- 14 AdminListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-admin-list-schedules-by-goal' \
    'OMZfEhHr39pysFO3' \
    'Zvc1BZG99LyvfvHE' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 14 'AdminListSchedulesByGoal' test.out

#- 15 AdminGetPeriods
$PYTHON -m $MODULE 'challenge-admin-get-periods' \
    'sJKQQewVLMUoAnaR' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 15 'AdminGetPeriods' test.out

#- 16 AdminRandomizeChallenge
$PYTHON -m $MODULE 'challenge-admin-randomize-challenge' \
    'cYp7FUjfIGaffofl' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 16 'AdminRandomizeChallenge' test.out

#- 17 AdminListSchedules
$PYTHON -m $MODULE 'challenge-admin-list-schedules' \
    'EIByYqeKN0meGelY' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 17 'AdminListSchedules' test.out

#- 18 AdminDeleteTiedChallenge
$PYTHON -m $MODULE 'challenge-admin-delete-tied-challenge' \
    'F5wWaDhukU4khGG4' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 18 'AdminDeleteTiedChallenge' test.out

#- 19 AdminUpdateTiedChallengeSchedule
$PYTHON -m $MODULE 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "STOP", "endDate": "1972-02-14T00:00:00Z"}' \
    'FTYnPkmSu4PWam1j' \
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
    '{"appName": "xR7SETWjteoc8fgv", "extendType": "CUSTOM", "grpcServerAddress": "4PbmRDcrg0DjQjBE"}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 21 'AdminUpdateAssignmentPlugin' test.out

#- 22 AdminCreateAssignmentPlugin
$PYTHON -m $MODULE 'challenge-admin-create-assignment-plugin' \
    '{"appName": "CXvea7H1m2lJFRZ3", "extendType": "APP", "grpcServerAddress": "YSWIeVzm7z9noowm"}' \
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
    '{"userIds": ["lTIKVowi0RY2VN4Z", "ONJREdUQ3z9F1BxN", "Ngnke4akncw7wu9T"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 24 'AdminEvaluateProgress' test.out

#- 25 AdminClaimUsersRewards
$PYTHON -m $MODULE 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["mXfJWBPrx9Ns8eLz", "YEvwSWTaLQjctvrK", "2jhsYpKPlXn77AtY"], "userId": "oFzLAATPY8P8P3cf"}, {"rewardIds": ["oivvQxevecWw7Rry", "0KK5rgAGO0dW8rX2", "MVUGKSZ4GcLkt4pK"], "userId": "32sJxlZcCTpTdRtC"}, {"rewardIds": ["Hvuk6B6XTmSLyn50", "sigBVZxiKdV57GvR", "yd9UuL02Le8HSCsl"], "userId": "sDd4M1F5qRIblS7N"}]' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 25 'AdminClaimUsersRewards' test.out

#- 26 AdminClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "z81GRazPAANjfBol"}' \
    'dFOyqA2clJ5gEOaC' \
    'gM6Yn6RugbNEIpGB' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 26 'AdminClaimUserRewardsByGoalCode' test.out

#- 27 AdminGetUserProgression
$PYTHON -m $MODULE 'challenge-admin-get-user-progression' \
    'FUjOn5mM7k8nbLzv' \
    'tCIW5ynMKquUicAe' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 27 'AdminGetUserProgression' test.out

#- 28 AdminGetUserRewards
$PYTHON -m $MODULE 'challenge-admin-get-user-rewards' \
    'IVXtoWAXhMlW4tLq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 28 'AdminGetUserRewards' test.out

#- 29 AdminClaimUserRewards
$PYTHON -m $MODULE 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["X7OICf5oD1e6oI9F", "mYel0kOw72o8Zkgk", "0jS6rDWUwfhKvrf2"]}' \
    'AaH4yCWrHSppnIZk' \
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
    'NnTn3rzH5NvAtcvN' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 31 'PublicGetScheduledGoals' test.out

#- 32 PublicListSchedulesByGoal
$PYTHON -m $MODULE 'challenge-public-list-schedules-by-goal' \
    'edgS1fUfKmihDbmu' \
    '8ePWlQMVDXEHeiGT' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 32 'PublicListSchedulesByGoal' test.out

#- 33 PublicListSchedules
$PYTHON -m $MODULE 'challenge-public-list-schedules' \
    'nwyEw6hIWDZrpP7r' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 33 'PublicListSchedules' test.out

#- 34 PublicClaimUserRewardsByGoalCode
$PYTHON -m $MODULE 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "z3ISW510kHr4isTK"}' \
    'Wjmv67nuHCXWfwnw' \
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
    'GioVwVzmmBVVFfpq' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 36 'PublicGetUserProgression' test.out

#- 37 PublicGetPastUserProgression
$PYTHON -m $MODULE 'challenge-public-get-past-user-progression' \
    'x1AeLtzcPJ3jtDYB' \
    '30' \
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
    '{"rewardIDs": ["SDMZz95OYKiqaZD6", "3xe5rruJVfLGea0Z", "tlzUcuHAXz0UV31M"]}' \
    --login_with_auth "Bearer foo" \
    > test.out 2>&1
eval_tap $? 39 'PublicClaimUserRewards' test.out


fi

rm -f "tmp.dat"

exit $EXIT_CODE
