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

Example: '{"Members": [{"DisplayName": "YHpmuaM6gN49Q8Di", "Namespace": "4ZaweOLQGSmo52e8", "UserId": "dvN0MhUJ9WuqNiZa"}, {"DisplayName": "foYEHUXsAIrtmMWW", "Namespace": "dthMrMAGgayoG3Er", "UserId": "dY5ZwIznFHKA5s0v"}, {"DisplayName": "9fh5NbILjBbAbF2v", "Namespace": "iOdztD2hg3iXNIBe", "UserId": "FEGamxY3t5qz9m5L"}]}'
"""

result, error = remove_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
