## Python Extend SDK CLI Sample App Operation Index for Qosm service.

### Operation `update_server_config`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-update-server-config' \
    '{"status": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_server`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-delete-server' \
    'string' \
    > result.txt
```

### Operation `set_server_alias`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-set-server-alias' \
    '{"alias": "string"}' \
    'string' \
    > result.txt
```

### Operation `list_server_per_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-list-server-per-namespace' \
    'string' \
    --status 'string' \
    > result.txt
```

### Operation `list_server`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-list-server' \
    > result.txt
```

### Operation `heartbeat`
```sh
$ python -m accelbyte_py_sdk_cli 'qosm-heartbeat' \
    '{"ip": "string", "port": 1, "region": "string"}' \
    > result.txt
```

