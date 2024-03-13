import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import add_role_members
from accelbyte_py_sdk.api.iam.models import ModelRoleMembersRequest
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelRoleMembersRequest
members: List[AccountcommonRoleMember]
Definition: List[AccountcommonRoleMember]
    display_name: str
    namespace: str
    user_id: str

Example: '{"Members": [{"DisplayName": "1E7ENUNpye2y1tI6", "Namespace": "UzclcvrtUbrmzpNo", "UserId": "95VdSV5LdC7uTw3g"}, {"DisplayName": "XkQ1YRsfrtxhH2Ee", "Namespace": "kzosbReZUA8VLJpl", "UserId": "PjUL7FjJNcpzfpxJ"}, {"DisplayName": "YYtcaGqoUi9HGXIT", "Namespace": "QMUaSwjxqipBLg76", "UserId": "NczXrEFgUZl2maD3"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
