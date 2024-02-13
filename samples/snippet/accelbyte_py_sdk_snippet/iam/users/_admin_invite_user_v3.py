import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_invite_user_v3
from accelbyte_py_sdk.api.iam.models import ModelInviteUserRequestV3
from accelbyte_py_sdk.api.iam.models import ModelInviteUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelInviteUserRequestV3
email_addresses: List[str]
is_admin: bool
namespace: str
roles: List[str]

Example: '{"emailAddresses": ["cViFIIhLg9ZuMjy3", "G4KgnoqQQLjKR5XJ", "TuU6SuOj5EYOhMDt"], "isAdmin": true, "namespace": "iuuQqZ1Fm4D424li", "roles": ["yP9rX2ou2lyLflQN", "actraMBrhCPTkxUO", "nAtlAOiJWWSrGF5e"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
