## Python Extend SDK CLI Sample App Operation Index for Challenge service.

### Operation `admin_get_challenges`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-challenges' \
    'string' \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --status 'INIT' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-create-challenge' \
    '{"activeGoalsPerRotation": 1, "assignmentRule": "CUSTOM", "code": "string", "description": "string", "endAfter": 1, "endDate": "2000-01-01T12:34:56Z", "goalsVisibility": "PERIODONLY", "name": "string", "randomizedPerRotation": false, "repeatAfter": 1, "resetConfig": {}, "rotation": "DAILY", "startDate": "2000-01-01T12:34:56Z", "tags": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_item_references`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-item-references' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_active_challenges`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-active-challenges' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_get_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-challenge' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-update-challenge' \
    '{"activeGoalsPerRotation": 1, "assignmentRule": "CUSTOM", "description": "string", "endAfter": 1, "endDate": "2000-01-01T12:34:56Z", "goalsVisibility": "PERIODONLY", "name": "string", "randomizedPerRotation": false, "repeatAfter": 1, "resetConfig": {}, "rotation": "DAILY", "startDate": "2000-01-01T12:34:56Z", "tags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-delete-challenge' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_goals`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-goals' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_goal`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-create-goal' \
    '{"code": "string", "description": "string", "isActive": false, "name": "string", "requirementGroups": [{}], "rewards": [{}], "schedule": {}, "tags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_goal`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-goal' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_goals`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-update-goals' \
    '{"description": "string", "isActive": false, "name": "string", "requirementGroups": [{}], "rewards": [{}], "schedule": {}, "tags": ["string"]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_goal`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-delete-goal' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_schedules_by_goal`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-list-schedules-by-goal' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_periods`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-periods' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_randomize_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-randomize-challenge' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_schedules`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-list-schedules' \
    'string' \
    'string' \
    --date_time '2000-01-01T12:34:56Z' \
    --limit 1 \
    --offset 1 \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_delete_tied_challenge`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-delete-tied-challenge' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_tied_challenge_schedule`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-update-tied-challenge-schedule' \
    '{"action": "ACCELERATE", "endDate": "2000-01-01T12:34:56Z"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_assignment_plugin`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-assignment-plugin' \
    'string' \
    > result.txt
```

### Operation `admin_update_assignment_plugin`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-update-assignment-plugin' \
    '{"appName": "string", "extendType": "APP", "grpcServerAddress": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_create_assignment_plugin`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-create-assignment-plugin' \
    '{"appName": "string", "extendType": "APP", "grpcServerAddress": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_assignment_plugin`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-delete-assignment-plugin' \
    'string' \
    > result.txt
```

### Operation `admin_evaluate_progress`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-evaluate-progress' \
    '{"userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_claim_users_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-claim-users-rewards' \
    '[{"rewardIds": ["string"], "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `admin_claim_user_rewards_by_goal_code`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-claim-user-rewards-by-goal-code' \
    '{"goalCode": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-user-progression' \
    'string' \
    'string' \
    'string' \
    --date_time '2000-01-01T12:34:56Z' \
    --goal_code 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_get_user_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-get-user-rewards' \
    'string' \
    'string' \
    --challenge_code 'string' \
    --goal_progression_id 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --status 'CLAIMED' \
    > result.txt
```

### Operation `admin_claim_user_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-admin-claim-user-rewards' \
    '{"rewardIDs": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_challenges`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-get-challenges' \
    'string' \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --status 'INIT' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_scheduled_goals`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-get-scheduled-goals' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_schedules_by_goal`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-list-schedules-by-goal' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_list_schedules`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-list-schedules' \
    'string' \
    'string' \
    --date_time '2000-01-01T12:34:56Z' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_claim_user_rewards_by_goal_code`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-claim-user-rewards-by-goal-code' \
    '{"goalCode": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `evaluate_my_progress`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-evaluate-my-progress' \
    'string' \
    > result.txt
```

### Operation `public_get_user_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-get-user-progression' \
    'string' \
    'string' \
    --date_time '2000-01-01T12:34:56Z' \
    --goal_code 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_past_user_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-get-past-user-progression' \
    'string' \
    1 \
    'string' \
    --goal_code 'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_user_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-get-user-rewards' \
    'string' \
    --challenge_code 'string' \
    --goal_progression_id 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --status 'CLAIMED' \
    > result.txt
```

### Operation `public_claim_user_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'challenge-public-claim-user-rewards' \
    '{"rewardIDs": ["string"]}' \
    'string' \
    > result.txt
```

