## Python Extend SDK CLI Sample App Operation Index for Reporting service.

### Operation `admin_find_action_list`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-find-action-list' \
    > result.txt
```

### Operation `admin_create_mod_action`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-create-mod-action' \
    '{"actionId": "string", "actionName": "string", "eventName": "string"}' \
    > result.txt
```

### Operation `admin_find_extension_category_list`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-find-extension-category-list' \
    --order 'asc' \
    --sort_by 'extensionCategory' \
    > result.txt
```

### Operation `admin_create_extension_category`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-create-extension-category' \
    '{"extensionCategory": "string", "extensionCategoryName": "string", "serviceSource": "string"}' \
    > result.txt
```

### Operation `get`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get' \
    'string' \
    --category 'all' \
    > result.txt
```

### Operation `upsert`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-upsert' \
    '{"categoryLimits": [{}], "timeInterval": 1, "userMaxReportPerTimeInterval": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_list_reason_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-list-reason-groups' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_reason_group`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-create-reason-group' \
    '{"reasonIds": ["string"], "title": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_reason_group`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get-reason-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_reason_group`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-delete-reason-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_reason_group`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-update-reason-group' \
    '{"reasonIds": ["string"], "title": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_reasons`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-get-reasons' \
    'string' \
    --group 'string' \
    --limit 1 \
    --offset 1 \
    --title 'string' \
    > result.txt
```

### Operation `create_reason`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-create-reason' \
    '{"description": "string", "groupIds": ["string"], "title": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_all_reasons`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-get-all-reasons' \
    'string' \
    > result.txt
```

### Operation `admin_get_unused_reasons`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-get-unused-reasons' \
    'string' \
    'string' \
    --extension_category 'string' \
    > result.txt
```

### Operation `admin_get_reason`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-get-reason' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_reason`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-delete-reason' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_reason`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-update-reason' \
    '{"description": "string", "groupIds": ["string"], "title": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_reports`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-list-reports' \
    'string' \
    --category 'string' \
    --limit 1 \
    --offset 1 \
    --reported_user_id 'string' \
    --sort_by 'string' \
    > result.txt
```

### Operation `admin_submit_report`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-admin-submit-report' \
    '{"additionalInfo": {"string": {}}, "category": "CHAT", "comment": "string", "extensionCategory": "string", "objectId": "string", "objectType": "string", "reason": "string", "userId": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_moderation_rule`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-create-moderation-rule' \
    '{"action": "HideContent", "actions": {}, "active": false, "category": "CHAT", "extensionCategory": "string", "reason": "string", "threshold": 1}' \
    'string' \
    > result.txt
```

### Operation `update_moderation_rule`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-update-moderation-rule' \
    '{"action": "HideContent", "actions": {}, "active": false, "category": "CHAT", "extensionCategory": "string", "reason": "string", "threshold": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_moderation_rule`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-delete-moderation-rule' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_moderation_rule_status`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-update-moderation-rule-status' \
    '{"active": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_moderation_rules`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get-moderation-rules' \
    'string' \
    --category 'string' \
    --extension_category 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_moderation_rule_details`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get-moderation-rule-details' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_tickets`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-list-tickets' \
    'string' \
    --category 'string' \
    --extension_category 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --reported_user_id 'string' \
    --sort_by 'string' \
    --status 'string' \
    > result.txt
```

### Operation `ticket_statistic`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-ticket-statistic' \
    'string' \
    'string' \
    --extension_category 'string' \
    > result.txt
```

### Operation `get_ticket_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get-ticket-detail' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-delete-ticket' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_reports_by_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-get-reports-by-ticket' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `update_ticket_resolutions`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-update-ticket-resolutions' \
    '{"notes": "string", "status": "AUTO_MODERATED"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_reason_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-public-list-reason-groups' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_get_reasons`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-public-get-reasons' \
    'string' \
    --group 'string' \
    --limit 1 \
    --offset 1 \
    --title 'string' \
    > result.txt
```

### Operation `submit_report`
```sh
$ python -m accelbyte_py_sdk_cli 'reporting-submit-report' \
    '{"additionalInfo": {"string": {}}, "category": "CHAT", "comment": "string", "extensionCategory": "string", "objectId": "string", "objectType": "string", "reason": "string", "userId": "string"}' \
    'string' \
    > result.txt
```

