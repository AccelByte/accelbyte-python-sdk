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

Example: '{"assignedNamespaces": ["2KrON5eDm9TdE5kx", "s3MCgKGQjMkLd9oL", "QYtZyA4mhuCckJJa"], "emailAddresses": ["zbYIc9s2RD3K9H9q", "ZO1HlQ4bJnzRJKWc", "KTAxkSMFSqCbgC5e"], "isAdmin": true, "isNewStudio": false, "namespace": "vYkXxb3wUlgnvtrA", "roleId": "TD0iQlKUlBPjRaws"}'
"""

result, error = admin_invite_user_new_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
