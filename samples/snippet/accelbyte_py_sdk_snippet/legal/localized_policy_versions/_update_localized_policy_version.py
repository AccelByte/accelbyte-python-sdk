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

Example: '{"attachmentChecksum": "3CauoAt36siH6wdl", "attachmentLocation": "FRpZL1lG1DzUSNAe", "attachmentVersionIdentifier": "YCBBhoGT2lmdqGih", "contentType": "rkPNoWc4pFFV1FOj", "description": "WUiAA8DQTgxxrgxu"}'
"""

result, error = update_localized_policy_version(
    localized_policy_version_id=localized_policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
