import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import delete_member_role_public_v2
from accelbyte_py_sdk.api.group.models import ModelsRemoveRoleFromMemberRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsRemoveRoleFromMemberRequestV1
user_id: str

Example: '{"userId": "ED08Ix6nq00xRWEP"}'
"""

result, error = delete_member_role_public_v2(
    body=body,
    group_id=group_id,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
