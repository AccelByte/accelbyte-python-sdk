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

Example: '{"Permissions": [{"Action": 90, "Resource": "7FzVYdLkBUyqmfIB", "SchedAction": 77, "SchedCron": "Wo3G9dAdrmoXdD8P", "SchedRange": ["ntNuodZmps4nhMGQ", "Jsm1W7njmQLPIhtP", "6F6W4fHJ4zoy4jro"]}, {"Action": 0, "Resource": "QPffYPBsSxQoXU2n", "SchedAction": 4, "SchedCron": "o7LfkO2gVsZidDvB", "SchedRange": ["BSQ1mvcpzXGxcJAr", "nPZSBcLpuYqpfVoE", "Lb2BMc8If0bU9pOG"]}, {"Action": 75, "Resource": "FOa3CrCbB7kxTxhM", "SchedAction": 71, "SchedCron": "klrnsRdGqu1IIue6", "SchedRange": ["CZUdkbZtFecgaCZC", "fF7Wx43nznk9xP8r", "uUMVN16QAP5fBqfj"]}]}'
"""

result, error = admin_add_user_permissions_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
