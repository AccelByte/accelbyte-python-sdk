import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
from accelbyte_py_sdk.api.iam.models import ModelRoleV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissionsV3
permissions: List[AccountcommonPermissionV3]
Definition: List[AccountcommonPermissionV3]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"permissions": [{"action": 11, "resource": "75AKg1qDdkTTpXWu", "schedAction": 23, "schedCron": "cRUqRBLJ8wu4GjgH", "schedRange": ["f5ziCv4bLcdmwnHG", "wWbrxYqJnNu26Yi6", "JPaxBuufl6ttWnLJ"]}, {"action": 2, "resource": "c6VKvQEuvXMcAPuH", "schedAction": 86, "schedCron": "X93nsOvQ4kUwqIu0", "schedRange": ["qbOs9iOvAytuxVIp", "gztzeuKkPagEfvy1", "PAt7sP7ztPknbAb4"]}, {"action": 51, "resource": "Pm97r1uXPn4SSSOB", "schedAction": 8, "schedCron": "BJO09FDwp0gNaKr9", "schedRange": ["YtRwMiDvsFYMUWL3", "DW0hkqebUvdSyyhc", "glLmTOf6PxX8DQgm"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
