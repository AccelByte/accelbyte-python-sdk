## Python Extend SDK CLI Sample App Operation Index for Achievement service.

### Operation `admin_list_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-achievements' \
    'string' \
    --global false \
    --limit 1 \
    --offset 1 \
    --sort_by 'listOrder' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_create_new_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-create-new-achievement' \
    '{"achievementCode": "string", "customAttributes": {"string": {}}, "defaultLanguage": "string", "description": {"string": "string"}, "global": false, "goalValue": 3.14, "hidden": false, "incremental": false, "lockedIcons": [{}], "name": {"string": "string"}, "statCode": "string", "tags": ["string"], "unlockedIcons": [{}]}' \
    'string' \
    > result.txt
```

### Operation `export_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-export-achievements' \
    'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `import_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-import-achievements' \
    'string' \
    --file 'tmp.dat' \
    --strategy 'string' \
    > result.txt
```

### Operation `admin_get_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-get-achievement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-update-achievement' \
    '{"customAttributes": {"string": {}}, "defaultLanguage": "string", "description": {"string": "string"}, "global": false, "goalValue": 3.14, "hidden": false, "incremental": false, "lockedIcons": [{}], "name": {"string": "string"}, "statCode": "string", "tags": ["string"], "unlockedIcons": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-delete-achievement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_achievement_list_order`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-update-achievement-list-order' \
    '{"targetOrder": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_global_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-global-achievements' \
    'string' \
    --achievement_codes 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'achievedAt' \
    --status 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_list_global_achievement_contributors`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-global-achievement-contributors' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'contributedValue' \
    > result.txt
```

### Operation `reset_global_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-reset-global-achievement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_create_psn_event`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-bulk-create-psn-event' \
    '{"data": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_list_tags`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-tags' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `admin_list_user_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-user-achievements' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --prefer_unlocked false \
    --sort_by 'achievedAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_reset_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-reset-achievement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_unlock_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-unlock-achievement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_anonymize_user_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-anonymize-user-achievement' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_user_contributions`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-admin-list-user-contributions' \
    'string' \
    'string' \
    --achievement_codes 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'contributedValue' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-list-achievements' \
    'string' \
    'string' \
    --global false \
    --limit 1 \
    --offset 1 \
    --sort_by 'listOrder' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_get_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-get-achievement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_global_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-list-global-achievements' \
    'string' \
    --achievement_codes 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'achievedAt' \
    --status 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `list_global_achievement_contributors`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-list-global-achievement-contributors' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'contributedValue' \
    > result.txt
```

### Operation `public_list_tags`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-list-tags' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `public_list_user_achievements`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-list-user-achievements' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --prefer_unlocked false \
    --sort_by 'achievedAt' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_unlock_achievement`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-public-unlock-achievement' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_user_contributions`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-list-user-contributions' \
    'string' \
    'string' \
    --achievement_codes 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'contributedValue' \
    --tags '["string"]' \
    > result.txt
```

### Operation `claim_global_achievement_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'achievement-claim-global-achievement-reward' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

