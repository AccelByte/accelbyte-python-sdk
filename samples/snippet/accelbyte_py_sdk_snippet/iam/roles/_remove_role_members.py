import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import remove_role_members
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

Example: '{"Members": [{"DisplayName": "st2vNvy0tRMGp31j", "Namespace": "QLmoO1oVJnwqnZCj", "UserId": "xmuyu9KwFWsjOp8J"}, {"DisplayName": "tLpkO1B0y2aasQVw", "Namespace": "asrojDAYgdnZzzDL", "UserId": "U0ztoR1vPDUT3CGo"}, {"DisplayName": "s67wvH8osqhXkhjl", "Namespace": "o35g3qpZylswibFS", "UserId": "L2NRJ5CdwLaP9oOu"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
