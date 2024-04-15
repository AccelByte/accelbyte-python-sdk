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

Example: '[{"namespace": "tJWw0qxn6VOpgHAP", "roleId": "BczZsmJTWcWx3UXG"}, {"namespace": "RgPXTFchefkETB75", "roleId": "5lm3FQIxL9bp5BVI"}, {"namespace": "8GqLNJ7WwjNbvyYJ", "roleId": "C5Yklv63HuQetY00"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
