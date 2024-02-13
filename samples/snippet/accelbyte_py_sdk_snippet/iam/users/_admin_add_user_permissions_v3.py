import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_user_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissions
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonPermissions
permissions: List[AccountcommonPermission]
Definition: List[AccountcommonPermission]
    action: int
    resource: str
    sched_action: int
    sched_cron: str
    sched_range: List[str]

Example: '{"Permissions": [{"Action": 36, "Resource": "lUizcjiy0bUMJmGI", "SchedAction": 81, "SchedCron": "1knO86E7NG62oKNG", "SchedRange": ["wKIJGDHHCadqzPyj", "vhkWOiBb5kVCWLZC", "A4vgJZsGgXNyZvIg"]}, {"Action": 0, "Resource": "eQlYurB0JjLItZzD", "SchedAction": 14, "SchedCron": "Xtf5oYcjaTZj1rHT", "SchedRange": ["MUo2gSVxAOLf5PG7", "NVPicddXshTnilAL", "AdIKIHv19bKHk6P3"]}, {"Action": 37, "Resource": "MNPgKjk4flKSy4tT", "SchedAction": 66, "SchedCron": "y3hSRqsxrFvYJ9zA", "SchedRange": ["KLfY4KsMBZ11KWOH", "0itviR2HNmBMtVxn", "2OIsX1NhBnchUlve"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
