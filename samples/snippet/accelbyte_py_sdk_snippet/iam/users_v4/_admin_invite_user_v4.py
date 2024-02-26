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

Example: '{"assignedNamespaces": ["V7BMBnakPMCL3cNO", "ROYX12nppHeGAUNw", "Y7nMBuC0cAsl4Rs7"], "emailAddresses": ["qqMcQ4RHkrUTfl8w", "J3AIpvOt1hxLwc9Z", "1KeGcxK1bxdDE5bN"], "isAdmin": false, "isNewStudio": false, "namespace": "u7EZcauHYWQtHTKe", "roleId": "bd9CmQRfCrRewNjj"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
