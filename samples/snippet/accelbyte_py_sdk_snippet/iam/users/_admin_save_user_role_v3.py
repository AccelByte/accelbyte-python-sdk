import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_save_user_role_v3
from accelbyte_py_sdk.api.iam.models import ModelNamespaceRoleRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: List[ModelNamespaceRoleRequest]
namespace: str
role_id: str

Example: '[{"namespace": "kaGlg2oRYJvBd9jt", "roleId": "qzLCqXx6G8MOcMbD"}, {"namespace": "E9hBxooo8Hwzw4oR", "roleId": "h1oCv19KFjjxGWmv"}, {"namespace": "xjzcAz2PgI2ZA4bn", "roleId": "CjUkby2C17xjUZUW"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
