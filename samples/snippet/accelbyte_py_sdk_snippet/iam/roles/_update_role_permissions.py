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

Example: '{"Permissions": [{"Action": 59, "Resource": "NYz8eq7KyxqHX0mJ", "SchedAction": 93, "SchedCron": "C17Wcjb6oQDndeYh", "SchedRange": ["dbRylV3YQvbJVb3T", "MVetQAwwYLnmLYR7", "Kg50QFSr5n796Ap8"]}, {"Action": 52, "Resource": "Nhks3jtQZfCXDCzw", "SchedAction": 52, "SchedCron": "6w5ulEFpKnivokIM", "SchedRange": ["eDA9UDPBiXPyU69Z", "NMPeQdAe2Wf5VDb3", "lwPxfNDlrY3QolfT"]}, {"Action": 51, "Resource": "bONioDMAYQOEHhAV", "SchedAction": 43, "SchedCron": "AcS5M22A0lKY1jdz", "SchedRange": ["5Y7DcgBlCUp4mVfX", "XDwBfE7nUp4P7OlT", "YoJErqjuf2yyDxuH"]}]}'
"""

result, error = update_role_permissions(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
