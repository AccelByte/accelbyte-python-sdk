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

Example: '{"permissions": [{"action": 80, "resource": "jQxItuKa0A9CsNyS", "schedAction": 96, "schedCron": "uhZ7xCh7miedRbpM", "schedRange": ["DsvWkrEzg8UfuyUz", "t7BX4dkCENZWYqRB", "VuU4f4iT6GswWJDY"]}, {"action": 1, "resource": "a8A7cLDEokMIO5KO", "schedAction": 56, "schedCron": "ogUf1wY2I2Y3e0Si", "schedRange": ["gETUzFofFsyVvUCb", "H2RPJ0fudyScyQMW", "t4b4bUCUPWS9Zr4d"]}, {"action": 43, "resource": "OoLoEYnkaAxFazfm", "schedAction": 28, "schedCron": "hG0rKEApguXtMQ4X", "schedRange": ["iKwheNr2i813wnu8", "qvdiLGpLDT0P3K5a", "NQn46q0eBqbPLOf7"]}]}'
"""

result, error = admin_add_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
