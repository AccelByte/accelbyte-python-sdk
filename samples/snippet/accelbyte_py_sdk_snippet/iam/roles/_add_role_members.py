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

Example: '{"Members": [{"DisplayName": "oV583inS9JbUdT8L", "Namespace": "ppU0MKU4IsLucPlM", "UserId": "b5mmg3atD6cNj6zJ"}, {"DisplayName": "tZL1p9KUqmLTa43j", "Namespace": "kqXI7u4m1o3k7SpF", "UserId": "NwuXQHZVPi8NRMD0"}, {"DisplayName": "Rl632NkBNSdbuskS", "Namespace": "MiBwHO7VyJvLnUxn", "UserId": "T4L6rEYUBGUZlIuO"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
