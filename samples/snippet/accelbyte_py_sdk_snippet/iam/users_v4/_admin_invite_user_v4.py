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

Example: '{"assignedNamespaces": ["joLggT5LZNowBbHl", "nYoIXRkt6g3KAHay", "wadGlhXL0SnWveX1"], "emailAddresses": ["PURwTCya80hGoeFn", "O5acXm2sOj87E5ml", "eXEaKWJeUIYKZBOb"], "isAdmin": true, "isNewStudio": false, "namespace": "srzHo45nVWilIBQd", "roleId": "ZkStYLam4X6Rle8v"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
