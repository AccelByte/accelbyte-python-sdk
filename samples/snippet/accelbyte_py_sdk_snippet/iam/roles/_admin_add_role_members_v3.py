import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_add_role_members_v3
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

Example: '{"members": [{"displayName": "HnJccBMVpDRBcD6G", "namespace": "yOXxGWTYM2dQqflW", "userId": "ZRJmYrzhgjp2q42C"}, {"displayName": "4chJCVdhTGagTiuU", "namespace": "uJjhFGBt3rp8LoFB", "userId": "H9LeJgvBLHwjz6Iv"}, {"displayName": "7fmjPFk3YHXFm8dq", "namespace": "Csoybpn3nc6DNUae", "userId": "QnpizB9YA4paq728"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
