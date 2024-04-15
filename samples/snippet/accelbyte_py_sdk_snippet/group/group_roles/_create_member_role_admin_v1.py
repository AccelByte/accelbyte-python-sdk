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

Example: '{"memberRoleName": "DMs3TuVKJOR7h7uE", "memberRolePermissions": [{"action": 33, "resourceName": "7esowwXlU5cXJw9T"}, {"action": 51, "resourceName": "B6gtAWIqqBFyXZBp"}, {"action": 3, "resourceName": "IxEhBXfmJhNnOIzE"}]}'
"""

result, error = create_member_role_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
