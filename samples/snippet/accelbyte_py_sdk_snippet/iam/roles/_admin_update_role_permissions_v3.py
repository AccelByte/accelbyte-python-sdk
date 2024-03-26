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

Example: '{"permissions": [{"action": 98, "resource": "OZWI1gypLK9PZJGl", "schedAction": 59, "schedCron": "0uqjAw3ZEmHjvYOO", "schedRange": ["wIZeo83RRPySabZm", "vRZclYSBbhEqfxKb", "BGvGIrLYFgzJi8fJ"]}, {"action": 90, "resource": "OuzaC9lwIFU9OQ9m", "schedAction": 42, "schedCron": "dIgDMea6IpSHEEul", "schedRange": ["iBfunvwaNCeDhSVf", "ephzxTgd1MCV7tPR", "WWshnCnCUH61L4XI"]}, {"action": 3, "resource": "HqMKzj4CsorFLIRn", "schedAction": 55, "schedCron": "noaYwZfdBY5qMLM7", "schedRange": ["oyzx00jJIgdNxsty", "WYm8VYO3oNxtWtfe", "yroM80wfs4Ag36Qp"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
