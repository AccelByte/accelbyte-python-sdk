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

Example: '{"Permissions": [{"Action": 52, "Resource": "WgKWL2RZuPxh12zp"}, {"Action": 36, "Resource": "FaOlSNkdbJC2E8gN"}, {"Action": 28, "Resource": "9gwh1T3Ot6s5aBSk"}]}'
"""

result, error = update_client_permission(
    body=body,
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)
