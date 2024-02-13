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

Example: '{"permissions": [{"action": 91, "resource": "iWAfqp7475qbAVNh", "schedAction": 84, "schedCron": "kWJTKnKBkFlDFGLR", "schedRange": ["YToaOR1e6xcrQgQL", "SrRL8HZAqi9gEqye", "Z8TauM4kDEM8c2yj"]}, {"action": 71, "resource": "pBqEPXAou5vdbavt", "schedAction": 86, "schedCron": "VVm5uoBoHASFmS86", "schedRange": ["Ihg4gvfcFMsDSpd0", "QB4Wh7CG61qoWvJw", "94xrzzq1FgUXbbpt"]}, {"action": 46, "resource": "CErnkr0DvTap7abe", "schedAction": 36, "schedCron": "tzPeJSTSL4tF3Qzx", "schedRange": ["Wlhzc74GjtzrUL53", "sHldNJzRHUNJwtSq", "A76wVhqldIQHaR1O"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
