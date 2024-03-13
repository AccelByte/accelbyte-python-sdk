import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_remove_user_role_v4
from accelbyte_py_sdk.api.iam.models import ModelRemoveUserRoleV4Request
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRemoveUserRoleV4Request
assigned_namespaces: List[str]
role_id: str

Example: '{"assignedNamespaces": ["op3HRyk6Y9fnXYgU", "qd1f4uzphjoXnnBU", "5AoKnN3WXbUTk2a2"], "roleId": "PsEcxFhCVzNrFj63"}'
"""

result, error = admin_remove_user_role_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
