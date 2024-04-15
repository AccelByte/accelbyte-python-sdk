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

Example: '{"Members": [{"DisplayName": "HEKs92LURcdlQrX1", "Namespace": "6OkDm1Rjs5OYb5TY", "UserId": "jZsIUCr7eyrREGAm"}, {"DisplayName": "mhVxIeK2eALcUAqa", "Namespace": "8t0dfWTQNI4fSZbD", "UserId": "dLTc5YyByISosj6K"}, {"DisplayName": "DANV1aJEKWlXp6jM", "Namespace": "21MSYfsPZwMTHgrW", "UserId": "HbCjKEpxkCsz3yM9"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
