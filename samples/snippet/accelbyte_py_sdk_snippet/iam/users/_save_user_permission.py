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

Example: '{"Permissions": [{"Action": 30, "Resource": "dOxK8QlzBWr51DLG", "SchedAction": 1, "SchedCron": "72LtkqZvYCu33gEz", "SchedRange": ["nNekOGeD4eaifWEE", "sjmsZWw64LRPDT7p", "YtqJoauo7TXWSi0g"]}, {"Action": 31, "Resource": "smMlCMf8Tve8IlXR", "SchedAction": 22, "SchedCron": "fnhSnf7fVtZxzhW2", "SchedRange": ["ZmgovddRfZftDoOX", "FC5o6QqumI6HGHHw", "d21D1MhcZgYZMAAw"]}, {"Action": 100, "Resource": "BQns0hyVIolmzMdG", "SchedAction": 63, "SchedCron": "iW4mcIOdmQRbSY3m", "SchedRange": ["VSDgYUHL7nOwGMyF", "MCmwzrWC9t28F7Fp", "IW69sjcmSWf2GSPK"]}]}'
"""

result, error = save_user_permission(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
