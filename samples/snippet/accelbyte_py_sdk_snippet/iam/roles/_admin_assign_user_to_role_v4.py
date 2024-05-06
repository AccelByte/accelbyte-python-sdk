import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_assign_user_to_role_v4
from accelbyte_py_sdk.api.iam.models import ModelAssignUserV4Request
from accelbyte_py_sdk.api.iam.models import ModelAssignedUserV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAssignUserV4Request
assigned_namespaces: List[str]
namespace: str
user_id: str

Example: '{"assignedNamespaces": ["FFB5sDBsYPziqvhw", "2rn1UlS5YHpL5NEb", "qYQqEYk4kpfSKRqi"], "namespace": "959ya3b3eDumsl1v", "userId": "N0jYBwPBq5xJ49h9"}'
"""

result, error = admin_assign_user_to_role_v4(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
