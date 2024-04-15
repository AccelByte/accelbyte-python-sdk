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

Example: '{"memberRolePermissions": [{"action": 41, "resourceName": "TN3MH8R5RwgEBORS"}, {"action": 38, "resourceName": "nvz2MPBdI8YPksWt"}, {"action": 22, "resourceName": "Qsy543iLySkJAbd6"}]}'
"""

result, error = update_member_role_permission_admin_v1(
    body=body,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
