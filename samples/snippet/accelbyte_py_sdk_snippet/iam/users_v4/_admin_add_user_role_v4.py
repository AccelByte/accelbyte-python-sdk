import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_user_role_v4
from accelbyte_py_sdk.api.iam.models import ModelAddUserRoleV4Request
from accelbyte_py_sdk.api.iam.models import ModelListUserRolesV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAddUserRoleV4Request
assigned_namespaces: List[str]
role_id: str

Example: '{"assignedNamespaces": ["N9qW78XcSwTj3sIP", "RTl9NXIBcW6rIGyu", "1cHprSpusLV38qa2"], "roleId": "ZYzZTD1mzd26JCT4"}'
"""

result, error = admin_add_user_role_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
