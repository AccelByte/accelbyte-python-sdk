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

Example: '[{"namespace": "ivPcqWuUQLbl76Xu", "roleId": "A3y4cMayV6AlPqIX"}, {"namespace": "HUeO1drJfWnIEdUR", "roleId": "PCzjfw7ruxAZVchd"}, {"namespace": "o8291JSBWOxT3sC4", "roleId": "1qa3alPyuFj0lDrP"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
