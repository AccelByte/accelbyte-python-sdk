import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_localized_policy_version_1
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

Example: '{"attachmentChecksum": "YcNfCFNSRRMLy5Ig", "attachmentLocation": "mhbh4t9BqDX6f4Hk", "attachmentVersionIdentifier": "KvucNU3P7AcwK1B3", "contentType": "2FA702YYb1dWqvmM", "description": "OXFo1F5wQAlOU29C"}'
"""

result, error = update_localized_policy_version_1(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
