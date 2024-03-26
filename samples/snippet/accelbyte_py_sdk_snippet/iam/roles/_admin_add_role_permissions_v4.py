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

Example: '{"permissions": [{"action": 81, "resource": "LSH7B4gODP8LIWGZ", "schedAction": 61, "schedCron": "gkxr9mUdUAZBMAlI", "schedRange": ["WZRX7f1dy85Y4ngc", "tlii2BSFSs7629mw", "IJEqR30LqT7PClkM"]}, {"action": 52, "resource": "eLCNEFMEIiEUkpbi", "schedAction": 88, "schedCron": "eBvkkABL4zWukeya", "schedRange": ["wq28N8KR0RBocXR2", "BgyIlaybXc4EsXD7", "p2j4YSqt2flf0KNB"]}, {"action": 30, "resource": "B0DQC1492qmgFHH8", "schedAction": 96, "schedCron": "LYk9qxzzUmgIEwDO", "schedRange": ["U3OwNhhvYuaTToKP", "ouOFeB7ogC2VBVLA", "bVV8gMxEGixs1WKk"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
