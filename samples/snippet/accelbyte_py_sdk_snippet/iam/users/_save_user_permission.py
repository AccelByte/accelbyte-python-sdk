import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import save_user_permission
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

Example: '{"Permissions": [{"Action": 2, "Resource": "uw28ul2nHKP6wmvA", "SchedAction": 5, "SchedCron": "uZkFk21nihPmGETH", "SchedRange": ["w6SOL6fmx9yJTFrv", "dTK00xdeaWyxEslc", "0ca17VSHLfc6rgUm"]}, {"Action": 59, "Resource": "U3jXUwWO6EmxeSFe", "SchedAction": 21, "SchedCron": "hLUFsepc3hwD5mBK", "SchedRange": ["jbHjlPgoTdJ53mOz", "kutEdphHlwygiqgw", "bqGpMBa0M9Gp0aGZ"]}, {"Action": 74, "Resource": "Dtyg7b6mO6loK6RE", "SchedAction": 22, "SchedCron": "Kqt1cg5D6OyybvXN", "SchedRange": ["VZyb4zDaWAlRM9pv", "S9JMeTNHUMpMTOMx", "JtKUUd7GTkDC2Ju8"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
