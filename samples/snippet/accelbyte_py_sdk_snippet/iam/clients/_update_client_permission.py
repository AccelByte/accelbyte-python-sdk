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

Example: '{"Permissions": [{"Action": 97, "Resource": "yACHI4Mx2VXNDOmQ"}, {"Action": 70, "Resource": "Tl47Au5N7UffNruc"}, {"Action": 12, "Resource": "0LOJa4Qw9hPibcux"}]}'
"""

result, error = update_client_permission(
    body=body,
    client_id=client_id,
    x_additional_headers=x_additional_headers,
)
