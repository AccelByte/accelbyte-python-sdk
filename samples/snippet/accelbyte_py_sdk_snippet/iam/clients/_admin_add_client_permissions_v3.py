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

Example: '{"permissions": [{"action": 84, "resource": "jWtG1VPxstRK0JY4"}, {"action": 20, "resource": "TxGdgXSJzTS6ZYGl"}, {"action": 47, "resource": "eSeZkrzd5pPRgW6D"}]}'
"""

result, error = admin_add_client_permissions_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
