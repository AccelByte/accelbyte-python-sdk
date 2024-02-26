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

Example: '{"Permissions": [{"Action": 35, "Resource": "kU1JEJQ1unu4XMeJ", "SchedAction": 42, "SchedCron": "yCV4iGGBVk0ndX83", "SchedRange": ["5RgX4KcPME6zZx4d", "MxApw3WmZbtSQ4eY", "xbqrWRxgRnYVU65a"]}, {"Action": 52, "Resource": "iCF767j0pkzuYfTt", "SchedAction": 52, "SchedCron": "w5rj1B31bjEsMDYx", "SchedRange": ["2xeCh1tsd1xW1nCA", "zTBPJR2Rjuw0fKwt", "GjcGJ156VDHGE51z"]}, {"Action": 50, "Resource": "f2jumTLbkbcbN9L6", "SchedAction": 39, "SchedCron": "zhcXf2oaukRPG3Tc", "SchedRange": ["pPaGVo2zqXeaZaSL", "8Yfp0fWY1qXmhKMG", "W45b9ukQZYDUabwb"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
