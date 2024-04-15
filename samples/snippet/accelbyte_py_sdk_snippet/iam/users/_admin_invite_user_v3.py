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

Example: '{"emailAddresses": ["iyhghnyfcrYKBlCM", "LrHgXClKNa0AStDZ", "XNm8IYfxrhmqdiTX"], "isAdmin": false, "namespace": "n3601XykId2sVK65", "roles": ["erV0iSAtPbmT7nf9", "42aPm7e4dJoNRBOh", "mIfWywwQfbCqMykQ"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
