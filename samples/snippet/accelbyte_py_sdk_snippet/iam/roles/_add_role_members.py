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

Example: '{"Members": [{"DisplayName": "t56Y8hD8EZeFlc6t", "Namespace": "W0yKxj28aZfkgEhh", "UserId": "UEr0V5nVhXqRsVrL"}, {"DisplayName": "BByZw83J6277TA8D", "Namespace": "1caSgOedL8nogrOn", "UserId": "xL7QcdXWANkUzxOz"}, {"DisplayName": "C4tYPEPbIHxWE56C", "Namespace": "lc4ViGiSYTgMSGYr", "UserId": "R8i4WkmlGFz9cQ2I"}]}'
"""

result, error = add_role_members(
    body=body,
    role_id=role_id,
    x_additional_headers=x_additional_headers,
)
