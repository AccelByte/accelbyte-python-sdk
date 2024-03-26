import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.iam import public_invite_user_v4
from accelbyte_py_sdk.api.iam.models import ModelInviteUserResponseV3
from accelbyte_py_sdk.api.iam.models import ModelPublicInviteUserRequestV4
from accelbyte_py_sdk.api.iam.models import RestErrorResponse

"""
body:
Definition: ModelPublicInviteUserRequestV4
additional_data: str
email_address: str
namespace: str
namespace_display_name: str

Example: '{"additionalData": "7OxmBvr6SLFWCrUP", "emailAddress": "bH00jSRV7gRqeQ9P", "namespace": "fRqC40QRSx3Q3hW3", "namespaceDisplayName": "2E2EnwiaP9Y63qiF"}'
"""

result, error = public_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
