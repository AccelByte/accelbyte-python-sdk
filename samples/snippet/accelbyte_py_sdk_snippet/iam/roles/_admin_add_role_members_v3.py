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

Example: '{"members": [{"displayName": "QYgtvaHccuYRgU9j", "namespace": "6TF1ytKF0ZOOlq2q", "userId": "aNDjqNJeNgQWX0p1"}, {"displayName": "t5dAciTMSYFqoQjI", "namespace": "Y3GDBYeoB8zW1WlO", "userId": "0TFHebzmniANGkKN"}, {"displayName": "jNuZttpPzHMXL2Pj", "namespace": "Nura4xA9xIevkoMk", "userId": "oUiAv5yQiHN2BHsM"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
