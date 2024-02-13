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

Example: '{"memberRoleName": "na9eiQnEH9vOzlgZ", "memberRolePermissions": [{"action": 77, "resourceName": "HmOZ6B0SdPjWpihu"}, {"action": 62, "resourceName": "XC5ySqD0ZRsMW9Gv"}, {"action": 99, "resourceName": "bJq8nehin7xP6yq4"}]}'
"""

result, error = create_member_role_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
