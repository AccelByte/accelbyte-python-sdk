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

Example: '{"Permissions": [{"Action": 4, "Resource": "IPu3sbqYrDjyv50x", "SchedAction": 38, "SchedCron": "rs6th3QsywlnCp4J", "SchedRange": ["RLUhfY8VBGLJVnRs", "rooJmkOSTM91ERUz", "KcRN1BvE6yrkCcdK"]}, {"Action": 41, "Resource": "G7iQdTkiUrzT79q6", "SchedAction": 22, "SchedCron": "F3rGyjX7QdDEVUiG", "SchedRange": ["Xivf1EDNdnM0Yizi", "M9Smr39Lj8tvvmLC", "Ulcmx3i7lOWNxFKH"]}, {"Action": 32, "Resource": "GMdNTgKp1BVGR1dR", "SchedAction": 24, "SchedCron": "QMxjEQt582tqhlFd", "SchedRange": ["B7b01aMaYcQFVEqC", "Pb0vXObwSdSzdhw2", "bq0kkgy80kKW3FEV"]}]}'
"""

result, error = admin_update_user_permission_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
