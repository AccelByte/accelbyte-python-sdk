import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_user_permissions_v3
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

Example: '{"Permissions": [{"Action": 4, "Resource": "3AdAvz0FQGybuzVu", "SchedAction": 78, "SchedCron": "KO0lalTEaAeTPmQc", "SchedRange": ["YhYewcCcdI6APS3x", "s8KungEif2mqoWlN", "UxqnZ0TqRSHFiVQe"]}, {"Action": 63, "Resource": "JG5MIZuL1AU4qGjV", "SchedAction": 29, "SchedCron": "qkj4d49Re51eao4d", "SchedRange": ["xkajwwLHdCfoqZve", "DWrfVEqP8HFPvHOM", "ew5elxiuzHU2hEr9"]}, {"Action": 14, "Resource": "YeaMpYWuG4VOUMui", "SchedAction": 48, "SchedCron": "I9d4FbN2nwII3fTQ", "SchedRange": ["z0GofQaU8MCkzklE", "HBAP4xR4Bxo0bOLZ", "iwTlC8rykMEMdW4X"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
