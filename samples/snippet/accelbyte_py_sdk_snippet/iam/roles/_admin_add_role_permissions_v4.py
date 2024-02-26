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

Example: '{"permissions": [{"action": 38, "resource": "XpAGRKO899ypOUID", "schedAction": 4, "schedCron": "APzwOwdhyxNlKO27", "schedRange": ["mkOKp60vEJJaiA3z", "PdeyjFwZICwKJqkE", "RHimlC75nM4z8nYi"]}, {"action": 94, "resource": "gguXIqrfVwaSMTHS", "schedAction": 96, "schedCron": "x279lh9whCylCDX7", "schedRange": ["f2JeEPZd9ZUQa3OF", "kJq7fg6tAWCF9yy3", "RWUTmYNqYzBUjDwp"]}, {"action": 20, "resource": "x21JbPnlGOHBLVFY", "schedAction": 49, "schedCron": "L12lfo8ZwX9RW1Fk", "schedRange": ["lY9GOUifx4JJOeMt", "X96r9OrhcH3AZToI", "n5wlg0ynWHdQWPyX"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
