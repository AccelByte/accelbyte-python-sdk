import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_member_role_public_v1
from accelbyte_py_sdk.api.group.models import ModelsAssignRoleToMemberRequestV1
from accelbyte_py_sdk.api.group.models import ModelsGetUserGroupInformationResponseV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsAssignRoleToMemberRequestV1
user_id: str

Example: '{"userId": "KnXggE90RkTgzk7s"}'
"""

result, error = update_member_role_public_v1(
    body=body,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
