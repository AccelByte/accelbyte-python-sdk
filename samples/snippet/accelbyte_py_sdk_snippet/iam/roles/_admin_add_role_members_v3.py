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

Example: '{"members": [{"displayName": "GqSiPkl5JOvQDK92", "namespace": "iYDzOdZoZ5feZZeP", "userId": "SdHPOBJbqtnbVRON"}, {"displayName": "lr5vQ0Zr1xh2htPj", "namespace": "2SDgVUwj317sTeEP", "userId": "lQ0tlcoAVrR3h9xy"}, {"displayName": "iTdlDWXTokqtuOyq", "namespace": "wjLELXQKUMxRLBw0", "userId": "Dt95ddOfF83rIinD"}]}'
"""

result, error = admin_add_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
