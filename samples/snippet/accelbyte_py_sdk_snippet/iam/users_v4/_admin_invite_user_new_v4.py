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

Example: '{"assignedNamespaces": ["XUuFcNvUlrCWxAb5", "KMGswfCHHfbCvJBB", "oEcvo0HTsSiLLa8f"], "emailAddresses": ["GjktH7fW7K0V2ffA", "JuGkPBKe0Lx5YAfJ", "YyNT18dxzc6plGN2"], "isAdmin": true, "isNewStudio": false, "namespace": "JlibjqBKQYM72Q2Z", "roleId": "qRY5wbjb1gwR1W3r"}'
"""

result, error = admin_invite_user_new_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
