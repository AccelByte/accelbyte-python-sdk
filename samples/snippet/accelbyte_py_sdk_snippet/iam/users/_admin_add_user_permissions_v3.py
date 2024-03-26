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

Example: '{"Permissions": [{"Action": 58, "Resource": "rOXCaAlqZMzaVcYz", "SchedAction": 71, "SchedCron": "MXajiMdoExxrNLzz", "SchedRange": ["3LTSxHQldCT3ifR1", "KlXwdRnTxXvMBdSN", "wqIqfUDpPunkZXve"]}, {"Action": 16, "Resource": "ucrapkEchEkn8vNM", "SchedAction": 76, "SchedCron": "ZRVRJGuVcDftU4RE", "SchedRange": ["953lI8TWck4yOEIr", "llGherEPJjx8Q878", "xuCym80Vdu2SUjcr"]}, {"Action": 71, "Resource": "ef9LmbUAYkuodO3Y", "SchedAction": 100, "SchedCron": "ELaWNGsZSwtpVueE", "SchedRange": ["GpIO1JzoHbEQ0dZV", "GpeBaFOP9bEPZpAD", "GYxUG1m4nUnP5brB"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
