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

Example: '{"Permissions": [{"Action": 91, "Resource": "gu5qy8XZgeot6Ivw", "SchedAction": 30, "SchedCron": "oEgOcctVXuEWvqSH", "SchedRange": ["HfcCDYn8DJL2pBAh", "fTup7HRHYxac6I3F", "v6U9EVU4jKupinKL"]}, {"Action": 47, "Resource": "FEwgCC5rIqLLZoDz", "SchedAction": 5, "SchedCron": "P3X4TVrCg0YPEaNP", "SchedRange": ["pUVuQSCd9138dgsr", "veQ5unZBr6ui8lbO", "T778b7ekMWHHWUvC"]}, {"Action": 97, "Resource": "X56nCzhbUcw098E5", "SchedAction": 36, "SchedCron": "a2GCYMo6ERAFET20", "SchedRange": ["EITqm44R2gDjTJ9e", "QPG11lI85jWWjPjO", "YKZL3kMqsPEbogte"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
