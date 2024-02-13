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

Example: '[{"namespace": "jQ2scJXJ6lWHLFfA", "roleId": "LaFX1CMDIXDRhAv8"}, {"namespace": "9qx4HS6JIz2nOq41", "roleId": "ZtCCiUpya1ClLikR"}, {"namespace": "lsk9LfwFgPFJevp7", "roleId": "6S20cp98loPMlW3b"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
