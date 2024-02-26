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

Example: '{"Permissions": [{"Action": 39, "Resource": "FUKrcR8RR9Z3pNj9", "SchedAction": 46, "SchedCron": "19iF7zM4uqjYO6IP", "SchedRange": ["SjOMRqgGFNnanq6D", "FHnDq8UR3sGmCdzO", "MqXTzDyZK9ATOMCt"]}, {"Action": 46, "Resource": "ENC9UGxcJBJUS7Js", "SchedAction": 31, "SchedCron": "eouQ7MWF2oDpWV7a", "SchedRange": ["hBsUl7VS46MR1MMH", "JhNM58lRSuctSUE0", "LucS8Bql0RcZFE7a"]}, {"Action": 55, "Resource": "oRlIZjQNrkXERGzG", "SchedAction": 55, "SchedCron": "vRFh4uLw9rkXLzdP", "SchedRange": ["fmhXYcIRp7EKXXjr", "dmpVSdk7iOkFR0kF", "M5xilHlRUpmaaY9O"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
