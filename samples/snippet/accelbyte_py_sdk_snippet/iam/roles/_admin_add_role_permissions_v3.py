import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonPermissionsV3
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

Example: '{"permissions": [{"action": 74, "resource": "PiRE1zoQQWj8W6k8", "schedAction": 94, "schedCron": "XKiRVykaVYYrc3u0", "schedRange": ["xt2OfIWPDxfcQpaj", "rFZNgmwQ8eAVKiZm", "MPPDlpIZdaMNsSND"]}, {"action": 91, "resource": "xnGRveXBOlBP99qv", "schedAction": 17, "schedCron": "TmhvYZwzVAlQwWyw", "schedRange": ["B4d5SGEA6bRIAzCl", "2kDgagDWYeseppaD", "4zI2zb2FlOnAAnGP"]}, {"action": 71, "resource": "BjdVjlzRYcjMGx7e", "schedAction": 97, "schedCron": "P5aqQ4gsLCrM0S4z", "schedRange": ["PpjaRG7U2vO0Ss4s", "7hfygaezBcj4HnkO", "0cGtdjYYjzAqlfOZ"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
