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

Example: '{"attachmentChecksum": "b0UeObJARu93s0Iz", "attachmentLocation": "2O8y4VLbEk9vTIq2", "attachmentVersionIdentifier": "um0RNDXAYJdmWvt0", "contentType": "qvIGxum53eAwYVGl", "description": "Vcc0bTYuYQb02Sv9"}'
"""

result, error = update_localized_policy_version(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
