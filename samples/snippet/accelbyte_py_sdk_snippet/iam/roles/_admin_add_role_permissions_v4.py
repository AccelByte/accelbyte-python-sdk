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

Example: '{"permissions": [{"action": 60, "resource": "IQp6QgqrDsYysyqe", "schedAction": 87, "schedCron": "fo6dMEyTQN7FNEKT", "schedRange": ["9sJYSq8ggEUHRPmd", "F2N2JWAQWthbnqQY", "cfi9I6ZOOZd0jnRA"]}, {"action": 20, "resource": "SLHxUtf5CEkzMKRB", "schedAction": 45, "schedCron": "quiimveX4IwoPxaJ", "schedRange": ["yOpbYSJ93q8IKOIW", "wCpHjPbg7WrUw5Ar", "tpTdyoeggp1UkiIO"]}, {"action": 32, "resource": "439wdAMttkXOv8fW", "schedAction": 84, "schedCron": "p1uUF1ZGx2iuTH21", "schedRange": ["niLZradMWedz1ZFE", "bDhhV9keJMyJot5B", "Dtx1EC6BiOlnTHeK"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
