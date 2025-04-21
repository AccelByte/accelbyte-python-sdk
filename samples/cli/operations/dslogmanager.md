## Python Extend SDK CLI Sample App Operation Index for Dslogmanager service.

### Operation `get_server_logs`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-get-server-logs' \
    'string' \
    'string' \
    --log_type 'string' \
    --offset 1 \
    --origin 'string' \
    > result.txt
```

### Operation `list_terminated_servers`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-list-terminated-servers' \
    'string' \
    --deployment 'string' \
    --end_date 'string' \
    --game_mode 'string' \
    --limit 1 \
    --next 'string' \
    --party_id 'string' \
    --pod_name 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --session_id 'string' \
    --source 'string' \
    --start_date 'string' \
    --status 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `download_server_logs`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-download-server-logs' \
    'string' \
    'string' \
    > result.txt
```

### Operation `check_server_logs`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-check-server-logs' \
    'string' \
    'string' \
    > result.txt
```

### Operation `batch_download_server_logs`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-batch-download-server-logs' \
    '{"Downloads": [{}]}' \
    > result.txt
```

### Operation `list_metadata_servers`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-list-metadata-servers' \
    '{"pod_names": ["string"]}' \
    > result.txt
```

### Operation `list_all_terminated_servers`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-list-all-terminated-servers' \
    --deployment 'string' \
    --end_date 'string' \
    --game_mode 'string' \
    --limit 1 \
    --namespace 'string' \
    --next 'string' \
    --party_id 'string' \
    --pod_name 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --session_id 'string' \
    --start_date 'string' \
    --status 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'dslogmanager-public-get-messages' \
    > result.txt
```

