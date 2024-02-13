import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_update_user_role_v4
from accelbyte_py_sdk.api.iam.models import ModelAddUserRoleV4Request
from accelbyte_py_sdk.api.iam.models import ModelListUserRolesV4Response
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelAddUserRoleV4Request
assigned_namespaces: List[str]
role_id: str

Example: '{"assignedNamespaces": ["UK9KBWHnCz0EKLgl", "7jVhroujCVfbaBux", "FflFIW20POPcaWlf"], "roleId": "VtY03u2FD2myKsPO"}'
"""

result, error = admin_update_user_role_v4(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
