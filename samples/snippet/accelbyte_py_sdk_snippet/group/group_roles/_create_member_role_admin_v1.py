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

Example: '{"memberRoleName": "t6eBOtgxOvVCN2xn", "memberRolePermissions": [{"action": 84, "resourceName": "Z3QbCqogSceIV455"}, {"action": 47, "resourceName": "kFnDuZpPxv01weCi"}, {"action": 10, "resourceName": "zQClWBe0SrobXegM"}]}'
"""

result, error = create_member_role_admin_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
