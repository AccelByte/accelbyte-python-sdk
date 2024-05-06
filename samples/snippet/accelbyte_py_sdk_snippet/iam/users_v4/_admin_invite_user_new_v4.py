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

Example: '{"assignedNamespaces": ["mLDrHVgVjNTP2DfM", "N3Ngc9tmtTehIhSj", "Hz6Hi8GbkDUmoDHT"], "emailAddresses": ["YzxWlcbPi19ZtbpG", "BazWxxvMWrwlPDpB", "QNDQHzqXXuR5YAzg"], "isAdmin": false, "isNewStudio": false, "namespace": "kdzkIhRnbxzY3pgv", "roleId": "bR0DOnnKaogAjDXE"}'
"""

result, error = admin_invite_user_new_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
