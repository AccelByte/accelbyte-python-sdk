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

Example: '{"Permissions": [{"Action": 92, "Resource": "4thOMhDSdWDgy3Jp", "SchedAction": 21, "SchedCron": "56AMsXm4wlaJ4aZS", "SchedRange": ["kVXMxrq7OVCMIL6Y", "70WQASlJ4kJn5nJN", "bzYsgVxgfbCO0p1R"]}, {"Action": 49, "Resource": "MZF9GChIev7d8BCT", "SchedAction": 34, "SchedCron": "OArynH5LUxj83ReY", "SchedRange": ["biZ1k46Y1mmkliRS", "LgWFcCMB9qUjguIr", "aikWuJ9UaZbUYOai"]}, {"Action": 58, "Resource": "64n2tvr1CbHoa3gs", "SchedAction": 80, "SchedCron": "gE3h8LgEadNsTgn2", "SchedRange": ["r6rNDM7BebusoeTm", "PA3EKjYACyGjHCom", "hcUSdqLGz3shOLlQ"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
