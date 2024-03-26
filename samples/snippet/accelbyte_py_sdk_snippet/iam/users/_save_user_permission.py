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

Example: '{"Permissions": [{"Action": 30, "Resource": "Wtbg4gOxU9uqt2MZ", "SchedAction": 97, "SchedCron": "JQCmdMm0jg5trQZJ", "SchedRange": ["4OrXkC866HEfVqR6", "f20hWl2oWVala0Wj", "fkwn2BICRFsMoRym"]}, {"Action": 62, "Resource": "xESi10uV9h23WnwA", "SchedAction": 2, "SchedCron": "tABMYf6tT8t8SLVz", "SchedRange": ["HT8anJuSgwmxYc0X", "67flyAkmQ8QgOIlV", "xRhXqfYUjnzbF5k6"]}, {"Action": 2, "Resource": "PG66GzHDz0f6aCCd", "SchedAction": 47, "SchedCron": "nU0OtA3rIqZqi95F", "SchedRange": ["qEcijF1syW7nJY7E", "sLfUo5ZVFMx17zTf", "o3LBV1ZNqbAMCwFW"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
