import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import update_member_role_admin_v1
from accelbyte_py_sdk.api.group.models import ModelsMemberRoleResponseV1
from accelbyte_py_sdk.api.group.models import ModelsUpdateMemberRoleRequestV1
from accelbyte_py_sdk.api.group.models import ResponseErrorResponse

"""
body:
Definition: ModelsUpdateMemberRoleRequestV1
member_role_name: str

Example: '{"memberRoleName": "2lC8XBCDyxihxyU4"}'
"""

result, error = update_member_role_admin_v1(
    body=body,
    member_role_id=member_role_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
