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

Example: '{"permissions": [{"action": 55, "resource": "p0J0JOJqBzsCnk61", "schedAction": 7, "schedCron": "MyvbB1f0maRkLp4g", "schedRange": ["8Pn5u5RjvRNKdAse", "0hbDqJ3xzZ2fytDL", "zIPBRFmjMY6RCtGF"]}, {"action": 33, "resource": "4OPgoVooSSmZf1eQ", "schedAction": 63, "schedCron": "Fmpbc19siRp3q6Tv", "schedRange": ["BfSHcNAzaFplWeU2", "nGKp54S3P3744Y8v", "zRBK84RKwE64GmnH"]}, {"action": 7, "resource": "DuK1HI9ZvXiUaZLm", "schedAction": 94, "schedCron": "UzRVe0FQjbjj7Esu", "schedRange": ["DFKGBGyKrxMY9STd", "57mDTRXiUwC6hGBa", "v0olGYu1uAYfaHbZ"]}]}'
"""

result, error = admin_update_role_permissions_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
