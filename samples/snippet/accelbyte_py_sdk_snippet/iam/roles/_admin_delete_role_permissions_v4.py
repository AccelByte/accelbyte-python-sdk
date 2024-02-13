import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["vwEEgtpJtkNc5aKC", "5Upcq860KhflleTd", "nChEjKvGPLyaI4Pm"]'
"""

result, error = admin_delete_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
