## Python Extend SDK CLI Sample App Operation Index for Seasonpass service.

### Operation `export_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-export-season' \
    'string' \
    > result.txt
```

### Operation `query_seasons`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-seasons' \
    'string' \
    --limit 1 \
    --offset 1 \
    --status '["DRAFT"]' \
    > result.txt
```

### Operation `create_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-create-season' \
    'string' \
    --body '{"autoClaim": false, "defaultLanguage": "string", "defaultRequiredExp": 1, "draftStoreId": "string", "end": "2000-01-01T12:34:56Z", "excessStrategy": {}, "images": [{}], "localizations": {"string": {}}, "name": "string", "start": "2000-01-01T12:34:56Z", "tierItemId": "string"}' \
    > result.txt
```

### Operation `get_current_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-current-season' \
    'string' \
    > result.txt
```

### Operation `bulk_get_user_season_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-bulk-get-user-season-progression' \
    'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `get_item_references`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-item-references' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-delete-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-update-season' \
    'string' \
    'string' \
    --body '{"autoClaim": false, "defaultLanguage": "string", "defaultRequiredExp": 1, "draftStoreId": "string", "end": "2000-01-01T12:34:56Z", "excessStrategy": {}, "images": [{}], "localizations": {"string": {}}, "name": "string", "start": "2000-01-01T12:34:56Z", "tierItemId": "string"}' \
    > result.txt
```

### Operation `clone_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-clone-season' \
    'string' \
    'string' \
    --body '{"end": "2000-01-01T12:34:56Z", "name": "string", "start": "2000-01-01T12:34:56Z"}' \
    > result.txt
```

### Operation `get_full_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-full-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_passes`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-passes' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_pass`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-create-pass' \
    'string' \
    'string' \
    --body '{"autoEnroll": false, "code": "string", "displayOrder": 1, "images": [{}], "localizations": {"string": {}}, "passItemId": "string"}' \
    > result.txt
```

### Operation `get_pass`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-pass' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_pass`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-delete-pass' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_pass`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-update-pass' \
    'string' \
    'string' \
    'string' \
    --body '{"autoEnroll": false, "displayOrder": 1, "images": [{}], "localizations": {"string": {}}, "passItemId": "string"}' \
    > result.txt
```

### Operation `publish_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-publish-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retire_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-retire-season' \
    'string' \
    'string' \
    --force false \
    > result.txt
```

### Operation `query_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-rewards' \
    'string' \
    'string' \
    --q 'string' \
    > result.txt
```

### Operation `create_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-create-reward' \
    'string' \
    'string' \
    --body '{"code": "string", "currency": {}, "image": {}, "itemId": "string", "quantity": 1, "type": "CURRENCY"}' \
    > result.txt
```

### Operation `get_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-reward' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-delete-reward' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-update-reward' \
    'string' \
    'string' \
    'string' \
    --body '{"currency": {}, "image": {}, "itemId": "string", "nullFields": ["string"], "quantity": 1, "type": "CURRENCY"}' \
    > result.txt
```

### Operation `query_tiers`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-tiers' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_tier`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-create-tier' \
    'string' \
    'string' \
    --body '{"index": 1, "quantity": 1, "tier": {}}' \
    > result.txt
```

### Operation `update_tier`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-update-tier' \
    'string' \
    'string' \
    'string' \
    --body '{"requiredExp": 1, "rewards": {"string": []}}' \
    > result.txt
```

### Operation `delete_tier`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-delete-tier' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reorder_tier`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-reorder-tier' \
    'string' \
    'string' \
    'string' \
    --body '{"newIndex": 1}' \
    > result.txt
```

### Operation `unpublish_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-unpublish-season' \
    'string' \
    'string' \
    --force false \
    > result.txt
```

### Operation `get_user_participated_seasons`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-user-participated-seasons' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `grant_user_exp`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-grant-user-exp' \
    'string' \
    'string' \
    --body '{"exp": 1, "source": "PAID_FOR", "tags": ["string"]}' \
    > result.txt
```

### Operation `grant_user_pass`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-grant-user-pass' \
    'string' \
    'string' \
    --body '{"passCode": "string", "passItemId": "string"}' \
    > result.txt
```

### Operation `exists_any_pass_by_pass_codes`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-exists-any-pass-by-pass-codes' \
    'string' \
    'string' \
    --pass_codes '["string"]' \
    > result.txt
```

### Operation `get_current_user_season_progression`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-current-user-season-progression' \
    'string' \
    'string' \
    > result.txt
```

### Operation `check_season_purchasable`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-check-season-purchasable' \
    'string' \
    'string' \
    --body '{"passItemId": "string", "tierItemCount": 1, "tierItemId": "string"}' \
    > result.txt
```

### Operation `reset_user_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-reset-user-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `grant_user_tier`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-grant-user-tier' \
    'string' \
    'string' \
    --body '{"count": 1, "source": "PAID_FOR", "tags": ["string"]}' \
    > result.txt
```

### Operation `query_user_exp_grant_history`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-user-exp-grant-history' \
    'string' \
    'string' \
    --from 'string' \
    --limit 1 \
    --offset 1 \
    --season_id 'string' \
    --source 'PAID_FOR' \
    --tags '["string"]' \
    --to 'string' \
    > result.txt
```

### Operation `query_user_exp_grant_history_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-query-user-exp-grant-history-tag' \
    'string' \
    'string' \
    --season_id 'string' \
    > result.txt
```

### Operation `get_user_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-get-user-season' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_current_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-public-get-current-season' \
    'string' \
    --language 'string' \
    > result.txt
```

### Operation `public_get_current_user_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-public-get-current-user-season' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_claim_user_reward`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-public-claim-user-reward' \
    'string' \
    'string' \
    --body '{"passCode": "string", "rewardCode": "string", "tierIndex": 1}' \
    > result.txt
```

### Operation `public_bulk_claim_user_rewards`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-public-bulk-claim-user-rewards' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_season`
```sh
$ python -m accelbyte_py_sdk_cli 'seasonpass-public-get-user-season' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

