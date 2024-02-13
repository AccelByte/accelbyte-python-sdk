import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_invite_user_v4
from accelbyte_py_sdk.api.iam.models import ModelInviteUserRequestV4
from accelbyte_py_sdk.api.iam.models import ModelInviteUserResponseV3
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelInviteUserRequestV4
assigned_namespaces: List[str]
email_addresses: List[str]
is_admin: bool
is_new_studio: bool
namespace: str
role_id: str

Example: '{"assignedNamespaces": ["zszSf1w3gm5wwAxU", "XIqycM4cxbhVLi7t", "EWQGgg3mwCCa00jd"], "emailAddresses": ["po5a4swfRbmNGTRE", "VEgkGp9Q8fNEo73O", "dDPWItRFjhlng9RQ"], "isAdmin": false, "isNewStudio": false, "namespace": "fpZUwMERAxgDfqEW", "roleId": "nCHjIe6P9OJufOmR"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
