import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v4
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

Example: '{"permissions": [{"action": 91, "resource": "zQjEYKTB5vuoO8Xo", "schedAction": 63, "schedCron": "ie6HRY0PrVkDMIw9", "schedRange": ["oMPn8HzeHu3z6ce2", "GfI6Ug5IQL6ovw0o", "I0MqDLfKVMq8T8Xc"]}, {"action": 15, "resource": "CXKmE1b3jPyJVddV", "schedAction": 89, "schedCron": "j17IlSC5Vp6eWt4s", "schedRange": ["hJ0fgQthzrid1rSh", "nAhTzg0f3mpsfLT8", "GjM9s3aLPUUj6QEw"]}, {"action": 5, "resource": "GcPfWHyxZevUQKRs", "schedAction": 55, "schedCron": "GlkaMFfDQg7kJNhC", "schedRange": ["BwUbC8vfDOOopNQv", "K7bqUp0xlldpHAYa", "IO4qBaWEJAQKHePD"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
