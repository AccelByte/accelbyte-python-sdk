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

Example: '{"Permissions": [{"Action": 24, "Resource": "uQcpds4MitYTT76v", "SchedAction": 70, "SchedCron": "V3LlbUdMDZOeMgzr", "SchedRange": ["YUB32Ov8edFjj9mF", "pDR6PUBulK6UUf82", "9L9emhjKz7ItUvut"]}, {"Action": 50, "Resource": "4AITTErmUrN3uRWu", "SchedAction": 66, "SchedCron": "Z7ebAaL692VgURSO", "SchedRange": ["PjQUKVkLO8peQou0", "hY1MTcIW6BJngSZ3", "GNjRxgoxlgsUIhu3"]}, {"Action": 97, "Resource": "B9VxrFbaXIe3unbO", "SchedAction": 94, "SchedCron": "JhrdCPys19L5DOtE", "SchedRange": ["sfFTRrQWbMNLeI6o", "kK6eOx543AKfaWFq", "NmEOKHGSqObVW7nk"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
