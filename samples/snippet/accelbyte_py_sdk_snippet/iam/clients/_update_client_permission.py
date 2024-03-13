import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import update_client_permission
from accelbyte_py_sdk.api.iam.models import AccountcommonClientPermissions
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonClientPermissions
permissions: List[AccountcommonClientPermission]
Definition: List[AccountcommonClientPermission]
    action: int
    resource: str

Example: '{"Permissions": [{"Action": 59, "Resource": "20MkcdRnhZbI7FJH"}, {"Action": 11, "Resource": "v2LIyJr4eIPzzTIq"}, {"Action": 41, "Resource": "xWcMbnmox28Iotsa"}]}'
"""

result, error = update_client_permission(
    body=body,
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)
