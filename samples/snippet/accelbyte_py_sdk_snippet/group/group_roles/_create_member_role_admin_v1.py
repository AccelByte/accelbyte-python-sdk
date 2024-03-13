import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import create_member_role_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsCreateMemberRoleRequestV1
from accelbyte_py_sdk.api.group.models import ModelsMemberRoleResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsCreateMemberRoleRequestV1
member_role_name: str
member_role_permissions: List[ModelsRolePermission]
Definition: List[ModelsRolePermission]
    action: int
    resource_name: str

Example: '{"memberRoleName": "2otHFAvk2oHsrqgc", "memberRolePermissions": [{"action": 58, "resourceName": "4l63HZLrOKGjrk0w"}, {"action": 57, "resourceName": "PZj3ganEiEYrBns6"}, {"action": 28, "resourceName": "hpasCn8fvfvkTipp"}]}'
"""

result, error = create_member_role_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
