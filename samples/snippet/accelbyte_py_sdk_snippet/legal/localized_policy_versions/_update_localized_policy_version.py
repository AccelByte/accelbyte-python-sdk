import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_localized_policy_version
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdateLocalizedPolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import UpdateLocalizedPolicyVersionResponse

"""
body:
Definition: UpdateLocalizedPolicyVersionRequest
attachment_checksum: str
attachment_location: str
attachment_version_identifier: str
content_type: str
description: str

Example: '{"attachmentChecksum": "cw8EhWZv1Au6Ndzv", "attachmentLocation": "JdGamz27imUoNFVZ", "attachmentVersionIdentifier": "0nECgKlLXn7wKf8Y", "contentType": "xUQCooSRMpz9fi6f", "description": "HwZpSqXuiZ1RgpTz"}'
"""

result, error = update_localized_policy_version(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
