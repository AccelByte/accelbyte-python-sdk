import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_member_role_permission_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsMemberRoleResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateMemberRolePermissionsRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateMemberRolePermissionsRequestV1
member_role_permissions: List[ModelsRolePermission]
Definition: List[ModelsRolePermission]
    action: int
    resource_name: str

Example: '{"memberRolePermissions": [{"action": 31, "resourceName": "JUoQ3AdP52674SEl"}, {"action": 57, "resourceName": "4naSs87sNdsM9I05"}, {"action": 62, "resourceName": "sTJBzsLpLbE70DRY"}]}'
"""

result, error = update_member_role_permission_admin_v1(
    body=body,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
