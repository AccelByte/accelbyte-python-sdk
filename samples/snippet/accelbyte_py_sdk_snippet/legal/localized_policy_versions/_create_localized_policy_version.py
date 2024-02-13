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

Example: '{"contentType": "tpB60PVXicbfoFlb", "description": "Dpx435MX5LDiS3m3", "localeCode": "5exojCJ9bL92w4ZY"}'
"""

result, error = create_localized_policy_version(
    policy_version_id=policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
