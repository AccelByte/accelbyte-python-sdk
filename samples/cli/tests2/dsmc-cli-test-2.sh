#!/usr/bin/env bash

# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# Meta:
# - random seed: 256
# - template file: python-cli-unit-test-2.j2

# Instructions:
# - Run the Justice SDK Mock Server first before running this script.

export AB_BASE_URL="http://127.0.0.1:8080"
export AB_CLIENT_ID="admin"
export AB_CLIENT_SECRET="admin"
export AB_NAMESPACE="test"

EXIT_CODE=0

PYTHON='python3'
MODULE='accelbyte_py_sdk_cli'
MODULE_PATH='samples/cli'

touch "tmp.dat"

export PYTHONPATH=$MODULE_PATH:$PYTHONPATH

$PYTHON -m $MODULE 'start-interactive-session' --continue_on_error '--writer=tap' << END
dsmc-list-config --login_with_auth "Bearer foo"
dsmc-update-image '{"artifactPath": "FtBxyZcD", "image": "XBpGlsQu", "namespace": "Ju8vMf0I", "persistent": true, "version": "JkTrd8ID"}' --login_with_auth "Bearer foo"
dsmc-create-image '{"artifactPath": "cV2zXnTK", "dockerPath": "jXY1bPqa", "image": "miBxx9Cs", "namespace": "18EY84ek", "persistent": true, "version": "qRzHU1oh"}' --login_with_auth "Bearer foo"
dsmc-import-images 'tmp.dat' --login_with_auth "Bearer foo"
dsmc-create-image-patch '{"artifactPath": "570KQBVa", "dockerPath": "ewc72krS", "image": "ha68n3Yn", "namespace": "ozp1C2Km", "patchVersion": "IQTuBdNE", "persistent": true, "version": "xFb8CJ17"}' --login_with_auth "Bearer foo"
dsmc-get-config --login_with_auth "Bearer foo"
dsmc-create-config '{"claim_timeout": 76, "creation_timeout": 59, "default_version": "JZaMSxEC", "port": 2, "ports": {"Zbygyoar": 81}, "protocol": "RoeNHSb8", "providers": ["Rh3kgs9q"], "session_timeout": 33, "unreachable_timeout": 71}' --login_with_auth "Bearer foo"
dsmc-delete-config --login_with_auth "Bearer foo"
dsmc-update-config '{"claim_timeout": 2, "creation_timeout": 27, "default_version": "QsoBgiVp", "port": 82, "protocol": "8Cm3yvAS", "providers": ["UoxdxxFq"], "session_timeout": 24, "unreachable_timeout": 52}' --login_with_auth "Bearer foo"
dsmc-clear-cache --login_with_auth "Bearer foo"
dsmc-get-all-deployment --login_with_auth "Bearer foo"
dsmc-get-deployment 'GTJ8IEda' --login_with_auth "Bearer foo"
dsmc-create-deployment '{"allow_version_override": false, "buffer_count": 60, "buffer_percent": 38, "configuration": "p4w29KOu", "enable_region_overrides": false, "game_version": "19R6XDqW", "max_count": 67, "min_count": 20, "overrides": {"kP8npLEK": {"buffer_count": 76, "buffer_percent": 11, "configuration": "jiX7jpkV", "enable_region_overrides": false, "game_version": "3IaQYEmq", "max_count": 64, "min_count": 29, "name": "dOEGt9gP", "region_overrides": {"Oj0c6i0J": {"buffer_count": 21, "buffer_percent": 42, "max_count": 69, "min_count": 0, "name": "s73ucYnF", "use_buffer_percent": true}}, "regions": ["J3DK5T4E"], "use_buffer_percent": false}}, "region_overrides": {"gg0Y39Uo": {"buffer_count": 23, "buffer_percent": 31, "max_count": 43, "min_count": 3, "name": "VAgtsDhU", "use_buffer_percent": true}}, "regions": ["UscbQDjb"], "use_buffer_percent": true}' 'PMz2PTRl' --login_with_auth "Bearer foo"
dsmc-delete-deployment 'kyU89ZPO' --login_with_auth "Bearer foo"
dsmc-update-deployment '{"allow_version_override": true, "buffer_count": 50, "buffer_percent": 83, "configuration": "FJ42cwmz", "enable_region_overrides": true, "game_version": "BSMNcoAA", "max_count": 81, "min_count": 19, "regions": ["KNjfcYHm"], "use_buffer_percent": false}' 'YgBU1sqj' --login_with_auth "Bearer foo"
dsmc-create-root-region-override '{"buffer_count": 49, "buffer_percent": 72, "max_count": 99, "min_count": 66, "use_buffer_percent": false}' 'RSOFQBtu' '23REZ8hR' --login_with_auth "Bearer foo"
dsmc-delete-root-region-override 'VX7LGOvD' 'dYiQS9i7' --login_with_auth "Bearer foo"
dsmc-update-root-region-override '{"buffer_count": 24, "buffer_percent": 94, "max_count": 57, "min_count": 30, "use_buffer_percent": false}' 'G9gpxL6y' 'cTQdvln2' --login_with_auth "Bearer foo"
dsmc-create-deployment-override '{"buffer_count": 74, "buffer_percent": 52, "configuration": "uSQWEXL6", "enable_region_overrides": true, "game_version": "E1YHo9m1", "max_count": 96, "min_count": 4, "region_overrides": {"8hHtWvbN": {"buffer_count": 33, "buffer_percent": 12, "max_count": 92, "min_count": 33, "name": "slArFPiH", "use_buffer_percent": true}}, "regions": ["aCv8kU9d"], "use_buffer_percent": true}' 'BpdsJLhs' 'VyExrkxo' --login_with_auth "Bearer foo"
dsmc-delete-deployment-override 'ot0B7WOf' 'ercZdpMc' --login_with_auth "Bearer foo"
dsmc-update-deployment-override '{"buffer_count": 17, "buffer_percent": 58, "configuration": "s7YSfExa", "enable_region_overrides": true, "game_version": "zLteMbFA", "max_count": 23, "min_count": 39, "regions": ["4hr7HmOY"], "use_buffer_percent": false}' 'BA5ltAOX' 'mlG6eh1d' --login_with_auth "Bearer foo"
dsmc-create-override-region-override '{"buffer_count": 90, "buffer_percent": 6, "max_count": 29, "min_count": 91, "use_buffer_percent": true}' 'pBIcuC1d' 'QY93OJnJ' '6Te9vD8l' --login_with_auth "Bearer foo"
dsmc-delete-override-region-override 'dz7Hu8AD' '79kdWunv' 'izU0q1pH' --login_with_auth "Bearer foo"
dsmc-update-override-region-override '{"buffer_count": 49, "buffer_percent": 15, "max_count": 15, "min_count": 61, "use_buffer_percent": false}' 'GgdrysMi' 'zBGSRdP2' 'l7DNSZ8A' --login_with_auth "Bearer foo"
dsmc-get-all-pod-config --login_with_auth "Bearer foo"
dsmc-get-pod-config 'q0XiPLQX' --login_with_auth "Bearer foo"
dsmc-create-pod-config '{"cpu_limit": 89, "mem_limit": 9, "params": "07ZddOGT"}' 'MlJjBwj9' --login_with_auth "Bearer foo"
dsmc-delete-pod-config 'HJHQKseE' --login_with_auth "Bearer foo"
dsmc-update-pod-config '{"cpu_limit": 6, "mem_limit": 88, "name": "XRDSvgua", "params": "uw1xT7eM"}' 'wSl9MLH0' --login_with_auth "Bearer foo"
dsmc-add-port '{"port": 79}' 'nTJ2ulNz' --login_with_auth "Bearer foo"
dsmc-delete-port 'BvwJaQa5' --login_with_auth "Bearer foo"
dsmc-update-port '{"name": "47JllvA8", "port": 86}' 'WSpabUt7' --login_with_auth "Bearer foo"
dsmc-list-images --login_with_auth "Bearer foo"
dsmc-delete-image 'xk6QxyWh' 'fqoWfJw2' --login_with_auth "Bearer foo"
dsmc-export-images --login_with_auth "Bearer foo"
dsmc-get-image-limit --login_with_auth "Bearer foo"
dsmc-delete-image-patch 'o8oWUqvP' 'CZ2HzT7N' 'XmWDlXsu' --login_with_auth "Bearer foo"
dsmc-get-image-detail 'NIdQJR5l' --login_with_auth "Bearer foo"
dsmc-get-image-patches 'sNOlvkfw' --login_with_auth "Bearer foo"
dsmc-get-image-patch-detail 'aSbnsuLC' 'gToxuVTe' --login_with_auth "Bearer foo"
dsmc-list-server --login_with_auth "Bearer foo"
dsmc-count-server --login_with_auth "Bearer foo"
dsmc-count-server-detailed --login_with_auth "Bearer foo"
dsmc-list-local-server --login_with_auth "Bearer foo"
dsmc-delete-local-server 'kJgvg6h5' --login_with_auth "Bearer foo"
dsmc-get-server 'HIpH0Dvi' --login_with_auth "Bearer foo"
dsmc-delete-server 'plEk4vj3' --login_with_auth "Bearer foo"
dsmc-get-server-logs 'LDp4yqDt' --login_with_auth "Bearer foo"
dsmc-list-session --login_with_auth "Bearer foo"
dsmc-count-session --login_with_auth "Bearer foo"
dsmc-delete-session '8QUZDpxl' --login_with_auth "Bearer foo"
dsmc-export-config-v1 --login_with_auth "Bearer foo"
dsmc-import-config-v1 --login_with_auth "Bearer foo"
dsmc-image-detail-client 'HasinGcj' --login_with_auth "Bearer foo"
dsmc-deregister-local-server '{"name": "rkmRMttg"}' --login_with_auth "Bearer foo"
dsmc-register-local-server '{"custom_attribute": "jDSaIVBm", "ip": "ft3Udg7p", "name": "9PGmY2H5", "port": 20}' --login_with_auth "Bearer foo"
dsmc-register-server '{"custom_attribute": "X4MsisSX", "pod_name": "28nARxWR"}' --login_with_auth "Bearer foo"
dsmc-shutdown-server '{"kill_me": false, "pod_name": "v5ou5xtv"}' --login_with_auth "Bearer foo"
dsmc-get-server-session 'd28OUfCt' --login_with_auth "Bearer foo"
dsmc-create-session '{"client_version": "8UJC5flN", "configuration": "yj6HsTtX", "deployment": "8P3llnaa", "game_mode": "S9lqyygP", "matching_allies": [{"matching_parties": [{"party_attributes": {"cfkJIxfQ": {}}, "party_id": "Zza8kNVb", "party_members": [{"user_id": "DxVMq7HJ"}]}]}], "namespace": "k0F89xAc", "notification_payload": {}, "pod_name": "3YVfaENt", "region": "rl0pTKZT", "session_id": "XqzHuBMY"}' --login_with_auth "Bearer foo"
dsmc-claim-server '{"session_id": "QSA2jz1Z"}' --login_with_auth "Bearer foo"
dsmc-get-session 'OpdOjSyM' --login_with_auth "Bearer foo"
dsmc-get-default-provider --login_with_auth "Bearer foo"
dsmc-list-providers --login_with_auth "Bearer foo"
dsmc-list-providers-by-region 'ddB41JuM' --login_with_auth "Bearer foo"
dsmc-public-get-messages --login_with_auth "Bearer foo"
exit()
END

rm -f "tmp.dat"

EXIT_CODE=$?

exit $EXIT_CODE