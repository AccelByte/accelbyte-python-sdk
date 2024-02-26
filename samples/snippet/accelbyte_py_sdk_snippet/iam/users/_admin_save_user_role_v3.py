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

Example: '[{"namespace": "s2v1QwtB4nD39kku", "roleId": "BdsJ62SekFbrKKKh"}, {"namespace": "PRR6oY6P4ffOcOTF", "roleId": "h2DWfCfD6YAteRk8"}, {"namespace": "SGwBzYLPz4SF4pap", "roleId": "D3nMFt5mGrjSO0U6"}]'
"""

result, error = admin_save_user_role_v3(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
