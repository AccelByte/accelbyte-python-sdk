import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_remove_role_members_v3
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersRequestV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleMembersRequestV3
members: List[AccountcommonRoleMemberV3]
Definition: List[AccountcommonRoleMemberV3]
    display_name: str
    namespace: str
    user_id: str

Example: '{"members": [{"displayName": "5pi1grkKQQrF6Peb", "namespace": "tfHAgkW2YyERyjjQ", "userId": "y8kulgeQxfM5r7Sl"}, {"displayName": "FWN9YRS86aP3t1eX", "namespace": "CcNmj10OvTcQBq01", "userId": "mx5PPqgDUYMmlnMA"}, {"displayName": "1i2cHbdeYDgRNqP8", "namespace": "pGq0zmLYZ81n3YhZ", "userId": "QBG02bP14uXvrEYE"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
