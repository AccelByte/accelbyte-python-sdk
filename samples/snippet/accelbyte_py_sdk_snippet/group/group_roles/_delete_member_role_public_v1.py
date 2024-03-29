import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import delete_member_role_public_v1
from accelbyte_py_sdk.api.group.models import ModelsRemoveRoleFromMemberRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsRemoveRoleFromMemberRequestV1
user_id: str

Example: '{"userId": "pepxfDlIxMpL5gqv"}'
"""

result, error = delete_member_role_public_v1(
    body=body,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
