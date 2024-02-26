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

Example: '{"permissions": [{"action": 47, "resource": "q9iOdG7m7M0Vjt75", "schedAction": 60, "schedCron": "NKMfaeCTX6tQtYdZ", "schedRange": ["HQLqvHKb812are5M", "LS5rpCUrRyEzal0i", "i2lxjgYpYMAcly00"]}, {"action": 76, "resource": "zmvCKwqx0k0OTmwQ", "schedAction": 47, "schedCron": "FPkHA1neRFFExHYY", "schedRange": ["0Jcs8Z0MlxPajE8w", "mhOZlfUay9zdcdgO", "tTZr2JzwZFsUCVgJ"]}, {"action": 56, "resource": "xjeLiHZrBUQrS3ai", "schedAction": 27, "schedCron": "ciUT4q3FALA8bgCA", "schedRange": ["TjwMzAaCyHDsfBgb", "PvalbIX1LIE1qpW1", "wGZoxJU0TPvF1qh4"]}]}'
"""

result, error = admin_update_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
