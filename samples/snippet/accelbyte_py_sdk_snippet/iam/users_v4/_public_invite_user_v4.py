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

Example: '{"additionalData": "S3ztrFvErCcrxlKU", "emailAddress": "OO2fvBA29LtnhYZI", "namespace": "KA45HCCYX3QUQXKY", "namespaceDisplayName": "OSWlqSM2qoxHyX4c"}'
"""

result, error = public_invite_user_v4(
    body=body,
    x_additional_headers=x_additional_headers,
)
