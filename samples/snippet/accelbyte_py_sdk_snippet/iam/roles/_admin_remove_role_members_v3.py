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

Example: '{"members": [{"displayName": "G9Q1Pk6yULYptOhn", "namespace": "gdJboX7N1suI2xl7", "userId": "YS54THP89bDOgVfB"}, {"displayName": "J5PbTqTSgdkqoM9B", "namespace": "1YcHrWG6pofI3N4j", "userId": "cejUR5rTY4irYunK"}, {"displayName": "BGahmCONmogZoTDY", "namespace": "6qDxM7IaYNj1skcE", "userId": "giixkQ8vmep02Kq2"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
