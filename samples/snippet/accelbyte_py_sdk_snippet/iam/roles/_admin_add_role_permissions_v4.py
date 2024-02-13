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

Example: '{"permissions": [{"action": 22, "resource": "unZMAnp1fPkdPqaQ", "schedAction": 65, "schedCron": "w8GM7kUV3sBMLNV9", "schedRange": ["v3hnkCCpIwrDRz5u", "7dqjkmXWcYXewSeF", "CmaY4pbhdYUA6l7O"]}, {"action": 86, "resource": "KV4JwThP36LqKrLr", "schedAction": 95, "schedCron": "GNNNRDs6b0SqKqWf", "schedRange": ["F82Lc2hgTQ4jIPsH", "YOLxIJXmi2xEThr4", "Nhbg054wdTgPexCc"]}, {"action": 93, "resource": "7WPVoXUtItaVAR0M", "schedAction": 20, "schedCron": "rDMmdCt5UqIiuQg6", "schedRange": ["CLhrv04TaeTiAOkk", "pfdV7rnxAlmdw3oe", "4fooIzs7Awqzap9Q"]}]}'
"""

result, error = admin_add_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
