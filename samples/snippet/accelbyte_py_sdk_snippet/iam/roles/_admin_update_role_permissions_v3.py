import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_role_permissions_v3
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

Example: '{"permissions": [{"action": 25, "resource": "CtJDFKVIkpcg5O40", "schedAction": 95, "schedCron": "47Rjzlh0d5jFzrMv", "schedRange": ["NafWNJIE9qgDzDga", "h57Iz5xdDft1nPt3", "pEvhkgclAA4i67RK"]}, {"action": 89, "resource": "acnTLfSnVTWEFWwN", "schedAction": 28, "schedCron": "mtMEFEjZqZHkZj2e", "schedRange": ["tCSCOAKIom5NsMmO", "LuqnpqYUysYvDhcc", "ONfgEJ2BpSNtmjVQ"]}, {"action": 72, "resource": "0UYUWluBcQT0tn9e", "schedAction": 3, "schedCron": "e3guL4lQukZcvOKy", "schedRange": ["1hvDn9i68Q7uSNr6", "SPsElHUJmGum21cW", "0rHn4pMFEpFbuVsf"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
