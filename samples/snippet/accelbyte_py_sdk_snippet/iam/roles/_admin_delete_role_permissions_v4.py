import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_delete_role_permissions_v4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[str]

Example: '["WBIm0lX9DKcDh2Oz", "6I0zf8CB7bDa9sKC", "Y18T7iFBMFZqyC8H"]'
"""

result, error = admin_delete_role_permissions_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
