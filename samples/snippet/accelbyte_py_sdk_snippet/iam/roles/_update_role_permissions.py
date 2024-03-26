import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_role_permissions
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

Example: '{"Permissions": [{"Action": 80, "Resource": "5PnxVskUs5P536kK", "SchedAction": 84, "SchedCron": "bhzUY9rlHXe5NVEr", "SchedRange": ["caLLJjiSKTfYfQES", "HVh7esI1V0h91PT1", "RZkfLuqTUpBfjsQ3"]}, {"Action": 27, "Resource": "12n70KlWv21bFtFH", "SchedAction": 65, "SchedCron": "N6dnwNEsu3mBPuBK", "SchedRange": ["DSG3Ub1yiSfd0s8P", "ATMuPTfXvbcYxdWS", "0aHfGsahoZOLdNcW"]}, {"Action": 89, "Resource": "NwtIae25jMqohZuD", "SchedAction": 98, "SchedCron": "RsIcta9PUKJNllWx", "SchedRange": ["Fnc3qkdKZk82EPFN", "NqO65L2KXM0aoU4L", "dYA95Idntdy7EMLb"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
