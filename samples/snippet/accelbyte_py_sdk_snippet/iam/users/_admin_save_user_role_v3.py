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

Example: '[{"namespace": "25xJv1rUvunIgGRj", "roleId": "gzbZxP3Fhno6eGLY"}, {"namespace": "OcA7U8mzTJc3mszW", "roleId": "REutRwAhRopZxAJY"}, {"namespace": "jdDl58oVFOx7dbpw", "roleId": "VI6jvCezgPPp78M7"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
