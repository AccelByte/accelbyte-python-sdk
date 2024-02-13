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

Example: '{"permissions": [{"action": 73, "resource": "wVNoiWt3e3lwfHhK", "schedAction": 70, "schedCron": "WfcvmbDIkGNamVAP", "schedRange": ["eskxqTUPwHI6B47w", "wREGwJnEh7F6m6GD", "DAgW0DPumuzdu6cD"]}, {"action": 94, "resource": "EGA6mwGErC4JH5mo", "schedAction": 24, "schedCron": "1aEjxfEBBrOW31xg", "schedRange": ["WuRgSQfGCLIUo60n", "IgOnNBLSVEcaSBe7", "HpcQuKO8EJyhT4nA"]}, {"action": 37, "resource": "MKNqsuSvtvLxELgM", "schedAction": 67, "schedCron": "9B0UVsh5l8hjeBtc", "schedRange": ["iwNNTl0ckLKLwfGI", "QWtTtrFwEBXXbVXP", "LhLEqgh0P9OZskUz"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
