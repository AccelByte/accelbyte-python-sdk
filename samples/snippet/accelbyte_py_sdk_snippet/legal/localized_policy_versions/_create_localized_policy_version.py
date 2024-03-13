import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_localized_policy_version
from accelbyte_py_sdk.api.legal.models import CreateLocalizedPolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import CreateLocalizedPolicyVersionResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: CreateLocalizedPolicyVersionRequest
content_type: str
description: str
locale_code: str

Example: '{"contentType": "AKq5AvoIXqVOXI0B", "description": "6jDYBHoXZ7T21SIu", "localeCode": "J8bCCqj6r79uELoZ"}'
"""

result, error = create_localized_policy_version(
    policy_version_id=policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
