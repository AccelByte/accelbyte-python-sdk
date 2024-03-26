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

Example: '{"memberRoleName": "ZelHQEkOzimqIjLu", "memberRolePermissions": [{"action": 76, "resourceName": "TNHpo8jAtfcoigGA"}, {"action": 48, "resourceName": "YLSokNlbw9sCIRlW"}, {"action": 18, "resourceName": "j9qun5ciXvUvjaKj"}]}'
"""

result, error = create_member_role_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
