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

Example: '{"assignedNamespaces": ["4rMoerxcPPSttYwa", "4bBG6TkP4QQTyQa7", "Nw6Fxh1ulljdeFkq"], "roleId": "KV269XwvcK2dl7Bv"}'
"""

result, error = admin_remove_user_role_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
