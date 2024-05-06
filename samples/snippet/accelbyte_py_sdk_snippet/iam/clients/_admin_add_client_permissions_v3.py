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

Example: '{"permissions": [{"action": 60, "resource": "OkDjoDmqW6qLtknE"}, {"action": 93, "resource": "BBi7TSR1jFSPFmdw"}, {"action": 65, "resource": "2n2rypf9ju75EZbp"}]}'
"""

result, error = admin_add_client_permissions_v3(
    body=body,
    client_id=client_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
