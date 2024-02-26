import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import admin_invite_user_new_v4
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

Example: '{"assignedNamespaces": ["1P4qJnf1PKwXcmF5", "EK40s2tqqBJrO8ul", "Psi3pgHzioKq0fWe"], "emailAddresses": ["o3ydwr6RWhVVau6u", "YJtwfGu6FQelIJ6c", "CGMtn61RDNl1g26I"], "isAdmin": true, "isNewStudio": false, "namespace": "bbV5zslxbEsru3A6", "roleId": "ek8MgQ47RkTqkPIl"}'
"""

result, error = admin_invite_user_new_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
