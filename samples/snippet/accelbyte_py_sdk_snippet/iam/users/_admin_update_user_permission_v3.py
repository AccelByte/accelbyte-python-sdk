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

Example: '{"Permissions": [{"Action": 98, "Resource": "xQCmIjCErSGPbOyl", "SchedAction": 85, "SchedCron": "UisRY5XUUK3ZyKKL", "SchedRange": ["Lm7PnpgIUKYigJcZ", "SkV6EyrZ7RYwSdEJ", "d1487EPwSP3h242u"]}, {"Action": 15, "Resource": "9nTBpLDIFNNSAmhj", "SchedAction": 82, "SchedCron": "pVsGV4634bvHVbmK", "SchedRange": ["Ph5zdv491mTcoL7Q", "SRJKjMub4xMHI26u", "e1mHgNcPoUiZJF9O"]}, {"Action": 20, "Resource": "S0B5fLZpaluXeOnG", "SchedAction": 40, "SchedCron": "MqhevvFwFTNdz9T9", "SchedRange": ["4dnFlUCGc4aGkOQo", "y6pQgOz2oR71xddU", "MEYw0QzDokp7eSXp"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
