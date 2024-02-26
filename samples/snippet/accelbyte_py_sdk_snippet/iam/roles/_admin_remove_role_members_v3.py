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

Example: '{"members": [{"displayName": "AgJBZ8LG2Kzp07tz", "namespace": "esfW5dALBZjBuLLb", "userId": "VHgaiLqKdRUPltaM"}, {"displayName": "J6tkZ0oM185WKaWg", "namespace": "TtSCQBH3p6RxmnFA", "userId": "djw0f1ozHBceDocK"}, {"displayName": "8WU1YNyem4S24c7j", "namespace": "TBwgHfrdmBvVCOth", "userId": "TQUrtiD5W1Oqj2zf"}]}'
"""

result, error = admin_remove_role_members_v3(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
