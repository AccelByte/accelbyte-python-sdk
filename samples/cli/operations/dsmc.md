## Python Extend SDK CLI Sample App Operation Index for Dsmc service.

### Operation `list_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-config' \
    > result.txt
```

### Operation `update_image`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-image' \
    '{"artifactPath": "string", "coreDumpEnabled": false, "image": "string", "imageReplicationsMap": {"string": {}}, "namespace": "string", "patchVersion": "string", "persistent": false, "ulimitFileSize": 1, "version": "string"}' \
    > result.txt
```

### Operation `create_image`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-image' \
    '{"artifactPath": "string", "coreDumpEnabled": false, "dockerPath": "string", "image": "string", "imageSize": 1, "namespace": "string", "persistent": false, "ulimitFileSize": 1, "version": "string"}' \
    > result.txt
```

### Operation `create_image_patch`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-image-patch' \
    '{"artifactPath": "string", "coreDumpEnabled": false, "dockerPath": "string", "image": "string", "imageSize": 1, "namespace": "string", "patchVersion": "string", "persistent": false, "ulimitFileSize": 1, "uploaderFlag": "string", "version": "string"}' \
    > result.txt
```

### Operation `get_lowest_instance_spec`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-lowest-instance-spec' \
    > result.txt
```

### Operation `get_worker_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-worker-config' \
    'string' \
    > result.txt
```

### Operation `update_worker_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-worker-config' \
    '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    'string' \
    > result.txt
```

### Operation `create_worker_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-worker-config' \
    '{"auto_deletion": false, "ghost_worker": false, "manual_buffer_override": false, "zombie_worker": false}' \
    'string' \
    > result.txt
```

### Operation `get_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-config' \
    'string' \
    > result.txt
```

### Operation `create_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-config' \
    '{"claim_timeout": 1, "creation_timeout": 1, "default_version": "string", "port": 1, "ports": {"string": 1}, "protocol": "string", "providers": ["string"], "session_timeout": 1, "unreachable_timeout": 1}' \
    'string' \
    > result.txt
```

### Operation `delete_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-config' \
    'string' \
    > result.txt
```

### Operation `update_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-config' \
    '{"claim_timeout": 1, "creation_timeout": 1, "default_version": "string", "port": 1, "protocol": "string", "providers": ["string"], "session_timeout": 1, "unreachable_timeout": 1}' \
    'string' \
    > result.txt
```

### Operation `clear_cache`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-clear-cache' \
    'string' \
    > result.txt
```

### Operation `get_all_deployment`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-all-deployment' \
    'string' \
    1 \
    1 \
    --name 'string' \
    > result.txt
```

### Operation `get_deployment`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-deployment' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_deployment`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-deployment' \
    '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "overrides": {"string": {}}, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_deployment`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-deployment' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_deployment`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-deployment' \
    '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_root_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-root-region-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_root_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-root-region-override' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_root_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-root-region-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_deployment_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-deployment-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_deployment_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-deployment-override' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_deployment_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-deployment-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "game_version": "string", "max_count": 1, "min_count": 1, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_override_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-override-region-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_override_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-override-region-override' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_override_region_override`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-override-region-override' \
    '{"buffer_count": 1, "buffer_percent": 1, "max_count": 1, "min_count": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_creating_server_count_queue`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-creating-server-count-queue' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_pod_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-all-pod-config' \
    'string' \
    1 \
    1 \
    > result.txt
```

### Operation `get_pod_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-pod-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_pod_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-pod-config' \
    '{"cpu_limit": 1, "mem_limit": 1, "params": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_pod_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-pod-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_pod_config`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-pod-config' \
    '{"cpu_limit": 1, "mem_limit": 1, "name": "string", "params": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `add_port`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-add-port' \
    '{"port": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_port`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-port' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_port`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-update-port' \
    '{"name": "string", "port": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_images`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-images' \
    'string' \
    1 \
    1 \
    --q 'string' \
    --sort_by 'createdAt' \
    --sort_direction 'asc' \
    > result.txt
```

### Operation `delete_image`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-image' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_image_limit`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-image-limit' \
    'string' \
    > result.txt
```

### Operation `delete_image_patch`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-image-patch' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_image_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-image-detail' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_image_patches`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-image-patches' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_image_patch_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-image-patch-detail' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `add_buffer`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-add-buffer' \
    '{"AllocCount": 1, "DeploymentName": "string", "JobCount": 1, "JobPriority": 1, "OverrideVersion": "string", "Region": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_repository`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-repository' \
    'string' \
    > result.txt
```

### Operation `list_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-server' \
    'string' \
    1 \
    1 \
    --region 'string' \
    > result.txt
```

### Operation `count_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-count-server' \
    'string' \
    > result.txt
```

### Operation `count_server_detailed`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-count-server-detailed' \
    'string' \
    --region 'string' \
    > result.txt
```

### Operation `list_local_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-local-server' \
    'string' \
    > result.txt
```

### Operation `delete_local_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-local-server' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-server' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-server' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-session' \
    'string' \
    1 \
    1 \
    --region 'string' \
    --with_server false \
    > result.txt
```

### Operation `count_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-count-session' \
    'string' \
    --region 'string' \
    > result.txt
```

### Operation `delete_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `run_ghost_cleaner_request_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-run-ghost-cleaner-request-handler' \
    'string' \
    > result.txt
```

### Operation `run_zombie_cleaner_request_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-run-zombie-cleaner-request-handler' \
    '{"JobCount": 1, "Region": "string", "TimeoutSecond": 1, "ZombieCount": 1}' \
    'string' \
    > result.txt
```

### Operation `create_repository`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-repository' \
    '{"namespace": "string", "repository": "string"}' \
    > result.txt
```

### Operation `export_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-export-config-v1' \
    'string' \
    > result.txt
```

### Operation `import_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-import-config-v1' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_all_deployment_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-all-deployment-client' \
    'string' \
    1 \
    1 \
    --name 'string' \
    > result.txt
```

### Operation `get_deployment_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-deployment-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_deployment_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-deployment-client' \
    '{"allow_version_override": false, "buffer_count": 1, "buffer_percent": 1, "configuration": "string", "enable_region_overrides": false, "extendable_session": false, "game_version": "string", "max_count": 1, "min_count": 1, "overrides": {"string": {}}, "region_overrides": {"string": {}}, "regions": ["string"], "session_timeout": 1, "unlimited": false, "use_buffer_percent": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_deployment_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-deployment-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_pod_config_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-all-pod-config-client' \
    'string' \
    1 \
    1 \
    > result.txt
```

### Operation `create_pod_config_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-pod-config-client' \
    '{"cpu_limit": 1, "mem_limit": 1, "params": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_pod_config_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-delete-pod-config-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_images_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-images-client' \
    'string' \
    --count 1 \
    --offset 1 \
    --q 'string' \
    --sort_by 'createdAt' \
    --sort_direction 'asc' \
    > result.txt
```

### Operation `image_limit_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-image-limit-client' \
    'string' \
    > result.txt
```

### Operation `image_detail_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-image-detail-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_server_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-server-client' \
    'string' \
    1 \
    1 \
    --region 'string' \
    > result.txt
```

### Operation `count_server_detailed_client`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-count-server-detailed-client' \
    'string' \
    --region 'string' \
    > result.txt
```

### Operation `server_heartbeat`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-server-heartbeat' \
    '{"podName": "string"}' \
    'string' \
    > result.txt
```

### Operation `deregister_local_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-deregister-local-server' \
    '{"name": "string"}' \
    'string' \
    > result.txt
```

### Operation `register_local_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-register-local-server' \
    '{"custom_attribute": "string", "ip": "string", "name": "string", "port": 1}' \
    'string' \
    > result.txt
```

### Operation `register_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-register-server' \
    '{"custom_attribute": "string", "pod_name": "string"}' \
    'string' \
    > result.txt
```

### Operation `shutdown_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-shutdown-server' \
    '{"kill_me": false, "pod_name": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_server_session_timeout`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-server-session-timeout' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_server_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-server-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-create-session' \
    '{"client_version": "string", "configuration": "string", "deployment": "string", "game_mode": "string", "matching_allies": [{}], "namespace": "string", "notification_payload": {}, "pod_name": "string", "region": "string", "session_id": "string"}' \
    'string' \
    > result.txt
```

### Operation `claim_server`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-claim-server' \
    '{"game_mode": "string", "matching_allies": [{}], "namespace": "string", "notification_payload": {}, "session_id": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `cancel_session`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-cancel-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_default_provider`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-get-default-provider' \
    > result.txt
```

### Operation `list_providers`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-providers' \
    > result.txt
```

### Operation `list_providers_by_region`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-list-providers-by-region' \
    'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'dsmc-public-get-messages' \
    > result.txt
```

