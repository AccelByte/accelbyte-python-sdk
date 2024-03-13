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

Example: '{"Permissions": [{"Action": 46, "Resource": "2WWXdtnXHL5Kj45E", "SchedAction": 14, "SchedCron": "1W4FtNbTVsTBrMZp", "SchedRange": ["RQj1tu1IXGSbi3JX", "Zl6FyVE1vMKZFJmA", "l5I5OFy6GxlFCckJ"]}, {"Action": 4, "Resource": "NcFpe8bh81gxaY3z", "SchedAction": 11, "SchedCron": "JNw84xgBtzh6c50h", "SchedRange": ["V65DBL2Y1UU5elb3", "qZOxNsWHlRqygEXV", "sssNcFWhXdTufyJY"]}, {"Action": 73, "Resource": "Xw0Vmg8LPkjgLobI", "SchedAction": 16, "SchedCron": "ZLGCLYfOTtU1SkNo", "SchedRange": ["QsEJJG34nGHjnf0W", "iBLfgBjOdzRwVzJa", "NcPLr7uzVp8MjKUU"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
