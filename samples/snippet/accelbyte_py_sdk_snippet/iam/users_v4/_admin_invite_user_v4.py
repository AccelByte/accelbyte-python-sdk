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

Example: '{"assignedNamespaces": ["wCjjtcaFXYbqMzaV", "CVGxIMy0v6YG42yt", "rt1ziwQrqi9Zmmqw"], "emailAddresses": ["bASsDjL9k94JAnjx", "bI1ZF3lLQ9q3Lvgd", "art0UPl6TmS9x8WY"], "isAdmin": true, "isNewStudio": false, "namespace": "XJqYR8wsY5KO32wD", "roleId": "nfciCLk8vcaCyvJD"}'
"""

result, error = admin_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
