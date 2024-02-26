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

Example: '{"emailAddresses": ["3ffzrHi1XwgtcRCy", "JejmmowqVzxrhCEt", "AvuODkam1N57unVW"], "isAdmin": false, "namespace": "NdGUVYv2ThDmu0B7", "roles": ["uoJWghS8t87L3M1z", "Z6sV2W73HbW1pfE2", "gjf2vSAXzBVX2BTM"]}'
"""

result, error = admin_invite_user_v3(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
