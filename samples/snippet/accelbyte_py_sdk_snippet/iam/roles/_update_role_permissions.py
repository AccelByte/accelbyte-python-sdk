import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_role_permissions
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

Example: '{"Permissions": [{"Action": 20, "Resource": "8FhSnT1SzQuRNHJf", "SchedAction": 87, "SchedCron": "cizApZ7h6jYcxaZY", "SchedRange": ["BSjn2ek1yxpKPCfI", "fO2huk0eA7zq1lsg", "ElJZyfmN39LwIEfa"]}, {"Action": 40, "Resource": "KJhAhWsfUCoCat0H", "SchedAction": 66, "SchedCron": "9aQP7M2uSiVKsUNc", "SchedRange": ["kC5CBMuOFMEo5H4S", "RqfylTmpK2EzLrWB", "U8raYJZhdjDD9VOP"]}, {"Action": 15, "Resource": "5sJImkNrUYGMOi6a", "SchedAction": 19, "SchedCron": "g1G5NTGSlvLhu29Y", "SchedRange": ["IfM7gYqYBNhDjfvS", "lYYwU3h9eIQmubVS", "2fGcUVPnU4XKK2Tf"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
