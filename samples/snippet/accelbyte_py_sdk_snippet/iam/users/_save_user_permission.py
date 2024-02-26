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

Example: '{"Permissions": [{"Action": 78, "Resource": "fuQklKdyQTQGgBfW", "SchedAction": 93, "SchedCron": "W78UzV0Z4V8LHIPb", "SchedRange": ["qubIJi57jXWXRsz8", "TPaoBrVT8ShBFiG9", "n5AtGK3Obk3Habqc"]}, {"Action": 50, "Resource": "xYeNKHSqLu0iCv3b", "SchedAction": 51, "SchedCron": "hcUmLxGndg8cQIA9", "SchedRange": ["UzLoduGFIVbFoKTs", "ASc5b9IjQGK7z7Mm", "Irkf3IIWo01wLg78"]}, {"Action": 33, "Resource": "1z1NJqMqxtpNAnib", "SchedAction": 58, "SchedCron": "srueJWkvoixvZwxc", "SchedRange": ["eWkwXWAQubFq3irs", "Ko1aEw28EtE6XiVn", "8jb3QRqnKm9wt5eX"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
