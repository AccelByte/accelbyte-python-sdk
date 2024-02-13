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

Example: '{"Members": [{"DisplayName": "x3TVAn2q6y2r54kV", "Namespace": "pevewU8TPsyNp5Ri", "UserId": "rdUF93hxrXmW7PeW"}, {"DisplayName": "k5y6NztIRWKwZRZU", "Namespace": "Z4ZUshgQ4b8vYwF4", "UserId": "6p7iQbkIGVaAtRye"}, {"DisplayName": "LicrxiAdQnc9m3el", "Namespace": "YGgPU22avaJmFbrs", "UserId": "UH0JSFkrcmfb5AS7"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
