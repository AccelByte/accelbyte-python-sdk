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

Example: '{"members": [{"displayName": "cduE0aQKoe5WccaA", "namespace": "GGGRgHSTBxgQzi0S", "userId": "wkf6sEPpf0oevxlW"}, {"displayName": "ll9BhfhoFnqFo21p", "namespace": "KE5uNgGMeOHPaSJB", "userId": "Jy397OW1whiMejVt"}, {"displayName": "8cXFl46MhnD6V9Zl", "namespace": "LSgx6S76AJPZVdGb", "userId": "kkl3ayZYiNA8722a"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
