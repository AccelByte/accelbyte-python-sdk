## Python Extend SDK CLI Sample App Operation Index for Dsartifact service.

### Operation `list_nodes_ip_address`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-nodes-ip-address' \
    --limit 1 \
    --next 'string' \
    --node_ip 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `delete_node_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-delete-node-by-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-queue' \
    'string' \
    --limit 1 \
    --next 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `get_active_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-get-active-queue' \
    'string' \
    > result.txt
```

### Operation `set_active_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-set-active-queue' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_active_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-delete-active-queue' \
    'string' \
    > result.txt
```

### Operation `report_failed_upload`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-report-failed-upload' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-delete-queue' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_all_active_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-all-active-queue' \
    'string' \
    --limit 1 \
    --next 'string' \
    --node_ip 'string' \
    --pod_name 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `list_all_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-all-queue' \
    'string' \
    --exclude_uploading false \
    --limit 1 \
    --next 'string' \
    --node_ip 'string' \
    --order 'string' \
    --pod_name 'string' \
    --previous 'string' \
    > result.txt
```

### Operation `list_terminated_servers_with_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-terminated-servers-with-namespace' \
    'string' \
    --deployment 'string' \
    --game_mode 'string' \
    --limit 1 \
    --next 'string' \
    --party_id 'string' \
    --pod_name 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --session_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `download_server_artifacts`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-download-server-artifacts' \
    'string' \
    'string' \
    > result.txt
```

### Operation `check_server_artifact`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-check-server-artifact' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_terminated_servers`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-list-terminated-servers' \
    --deployment 'string' \
    --game_mode 'string' \
    --limit 1 \
    --next 'string' \
    --party_id 'string' \
    --pod_name 'string' \
    --previous 'string' \
    --provider 'string' \
    --region 'string' \
    --session_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'dsartifact-public-get-messages' \
    > result.txt
```

