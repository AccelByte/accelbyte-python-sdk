import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_client_permissions_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonClientPermissionsV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonClientPermissionsV3
permissions: List[AccountcommonClientPermissionV3]
Definition: List[AccountcommonClientPermissionV3]
    action: int
    resource: str

Example: '{"permissions": [{"action": 17, "resource": "koXanH5ktj78lYSp"}, {"action": 34, "resource": "0bf1yZMuzDr3msvJ"}, {"action": 50, "resource": "71O6bekxdZGV8ZgP"}]}'
"""

result, error = admin_add_client_permissions_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
