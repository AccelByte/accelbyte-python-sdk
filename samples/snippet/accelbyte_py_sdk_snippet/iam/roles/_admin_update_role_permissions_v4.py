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

Example: '{"permissions": [{"action": 9, "resource": "g0QjYCM6RbnKNS0r", "schedAction": 83, "schedCron": "GzatVb8nNBf5Mmt4", "schedRange": ["CwqjBk8N2MnlYXX4", "ABOF3otnpwTAEeOE", "lp9Tov51Ec6Z42Lo"]}, {"action": 63, "resource": "mpvIpy8C0IOpzpUE", "schedAction": 5, "schedCron": "mZt4nShyozFZMPid", "schedRange": ["ABNCcf3iqp0jgmaK", "M6AasiBIm3v6FSfG", "oNZ8YF6afM6bxzTb"]}, {"action": 8, "resource": "ZIU5iTiywfHU6pzi", "schedAction": 79, "schedCron": "rVXOdrKqLUdhpdqA", "schedRange": ["KIXJonuSP4xlxyYB", "eRW1WbMu6TwojMNp", "woYmJqERHjFw7Ba2"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
