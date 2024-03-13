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

Example: '{"members": [{"displayName": "a8y9cdLIgMdRI5ur", "namespace": "gvFtLhy1hWbCXrgK", "userId": "zX0Q0xaDRtOHrPHC"}, {"displayName": "yg4wvF0FyMJS4Eyt", "namespace": "GCSqme3qIkuiY4Eb", "userId": "3xTUQC6Xmj2BRmkB"}, {"displayName": "FGNBRcDPWo990kyu", "namespace": "8FyQH2fJlVJbvEye", "userId": "b2oBlFHgPZGrOPCC"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
