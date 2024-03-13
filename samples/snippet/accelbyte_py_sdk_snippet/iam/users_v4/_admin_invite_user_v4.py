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

Example: '{"assignedNamespaces": ["9A9F4vysTpAjY02d", "CbTZ9FT0BcWoL9K1", "b5qqvvBeEKttHQEU"], "emailAddresses": ["dIoFNQpPRgM7h14H", "mEwnEwgSHYbansOz", "68ogJhHYKvdZ8NpU"], "isAdmin": true, "isNewStudio": true, "namespace": "OkVepfX6sYdbsEKD", "roleId": "3bUZy9zODerXBvQX"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
