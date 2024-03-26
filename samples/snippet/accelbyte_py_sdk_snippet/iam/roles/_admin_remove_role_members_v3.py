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

Example: '{"members": [{"displayName": "E5l1hinltTZg5lH9", "namespace": "uy0ArJoWDtkBe5cD", "userId": "ceJt5UEi136tqrSE"}, {"displayName": "LNDXQ7t8uZITMfUm", "namespace": "Uh1GH7Ml2JJiGfCO", "userId": "MMC3pL6IRVFPlXI9"}, {"displayName": "YqluUdzlvIr1Br42", "namespace": "3hxExZ8oh1dMT6BY", "userId": "GqznwjlMb4etTgD6"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
