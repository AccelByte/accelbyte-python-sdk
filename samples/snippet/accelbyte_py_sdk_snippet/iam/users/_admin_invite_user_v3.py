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

Example: '{"emailAddresses": ["Jx7vzvB61UDJKnJP", "o9iNCkMmzkoMBiLk", "kPxJ9w0nemgNOMjV"], "isAdmin": true, "namespace": "lKABR1j7WUwanBdl", "roles": ["lpqQU7eiGfU2yqlP", "iLtVEdsZP6droXv9", "uhz1QzRlS5wObPfS"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
