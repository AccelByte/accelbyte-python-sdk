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

Example: '{"emailAddresses": ["6Fc8q3ZpOdEECJR7", "ELtEJL6WG3sCFrwG", "JEtFmtgsH7ZNvO3E"], "isAdmin": true, "namespace": "j5BYWWk7yzvLUmcs", "roles": ["3gCFJbhn6lOO6pIa", "J4stYj0LDQ960nf7", "iUGjAdNQRTMjfzmq"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
