## Python Extend SDK CLI Sample App Operation Index for Loginqueue service.

### Operation `admin_get_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'loginqueue-admin-get-configuration' \
    'string' \
    > result.txt
```

### Operation `admin_update_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'loginqueue-admin-update-configuration' \
    '{"enabled": false, "maxConcurrency": 1, "maxLoginRate": 1, "minActivationPeriodInSecond": 1, "playerPollingTimeInSecond": 1, "playerReconnectGracePeriodInSecond": 1, "queueReconnectGracePeriodInSecond": 1, "safetyMarginPercentage": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_get_status`
```sh
$ python -m accelbyte_py_sdk_cli 'loginqueue-admin-get-status' \
    'string' \
    > result.txt
```

### Operation `refresh_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'loginqueue-refresh-ticket' \
    'string' \
    > result.txt
```

### Operation `cancel_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'loginqueue-cancel-ticket' \
    'string' \
    > result.txt
```

