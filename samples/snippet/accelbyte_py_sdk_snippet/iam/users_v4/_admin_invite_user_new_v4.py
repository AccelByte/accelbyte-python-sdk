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

Example: '{"assignedNamespaces": ["CLmXeylUMULajuT1", "AEwWnKZRn1gYrOf7", "Qfd77XAPVrH8DSjU"], "emailAddresses": ["6E1yDGCpDICBlhRZ", "Fu5pzK8vv3gEjKY8", "EH9O3kpQEF0i33bR"], "isAdmin": true, "isNewStudio": true, "namespace": "adgZ7Ul63XEkByZD", "roleId": "Q6o7KH52QMWbaiqO"}'
"""

result, error = admin_invite_user_new_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
