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

Example: '{"emailAddresses": ["HtclrJYWekfAlTeX", "2EnULR0EXw0n0lKG", "L987APxXXLSPyqM9"], "isAdmin": true, "namespace": "1l9twib4Nqs1m7lu", "roles": ["4iZWLiEO8JZUA5SY", "u3ztRo94YJ4zYgAl", "5SoamSNHM7UM4NFU"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
