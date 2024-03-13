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

Example: '{"attachmentChecksum": "MNhM3zmuh7y1rLdb", "attachmentLocation": "JzsqaGNe3Mj3D0HN", "attachmentVersionIdentifier": "X5PRCNVb7ronOC5z", "contentType": "fUhgAMq6Lr6O9lUr", "description": "gKR2kzMJOt86xv2P"}'
"""

result, error = update_localized_policy_version_1(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
