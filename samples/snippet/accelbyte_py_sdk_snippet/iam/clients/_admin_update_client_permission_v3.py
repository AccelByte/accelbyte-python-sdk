import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_client_permission_v3
from accelbyte_py_sdk.api.iam.models import AccountcommonClientPermissionsV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: AccountcommonClientPermissionsV3
permissions: List[AccountcommonClientPermissionV3]
Definition: List[AccountcommonClientPermissionV3]
    action: int
    resource: str

Example: '{"permissions": [{"action": 44, "resource": "AiPMgAJfnsBP3mQO"}, {"action": 19, "resource": "1KVMHyKSgTgDwBJe"}, {"action": 65, "resource": "JrQDfvf7HNBhcjtA"}]}'
"""

result, error = admin_update_client_permission_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
