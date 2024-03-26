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

Example: '{"assignedNamespaces": ["AEBaRLBfD3DJYn4G", "ABIxhatpHChbnbMQ", "9HbOIKwz4kVk220P"], "emailAddresses": ["8QBRCFfVKFWROqk7", "qYUQeYa4MX63dtKW", "UKiE4sOMjY17lAnL"], "isAdmin": true, "isNewStudio": false, "namespace": "KABPnCyzDvaqQ6K3", "roleId": "pDrn8Fuhq77srcMN"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
