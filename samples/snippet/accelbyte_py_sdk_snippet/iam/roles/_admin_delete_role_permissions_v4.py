import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["qpJEhEmtzuBJ3W1E", "HGv5FMJUzTOyDN57", "pchYXfHZM6W1e4z8"]'
"""

result, error = admin_delete_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
