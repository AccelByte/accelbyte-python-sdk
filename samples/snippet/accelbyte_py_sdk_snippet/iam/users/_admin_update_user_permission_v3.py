import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_permission_v3
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

Example: '{"Permissions": [{"Action": 84, "Resource": "OAvz9FwA83RIK4g3", "SchedAction": 49, "SchedCron": "zKQELqINBJRNjeR1", "SchedRange": ["gHp9bdK1zINmqFMp", "kTK3KsR8yAyJgsu8", "Zx17IZSF8fyOj9mV"]}, {"Action": 66, "Resource": "QFwJtJmYuafamze8", "SchedAction": 46, "SchedCron": "ZQaM4SEXujb3uo41", "SchedRange": ["jSWpk9KHsRt5Qvfs", "7JtVhUYHCriALXsE", "d8zfPNYsIckid6hl"]}, {"Action": 29, "Resource": "CiVuidR6srX9DuuO", "SchedAction": 20, "SchedCron": "elgATKh5CdwaPcGD", "SchedRange": ["oOkRYDQhU4yGJ9zb", "C22TOr7hHPqcxBmw", "hMfyjwhu8V1L6XjL"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
