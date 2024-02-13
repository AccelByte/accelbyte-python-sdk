import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_localized_policy_version_1
from accelbyte_py_sdk.api.legal.models import CreateLocalizedPolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import CreateLocalizedPolicyVersionResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: CreateLocalizedPolicyVersionRequest
content_type: str
description: str
locale_code: str

Example: '{"contentType": "WXRpLUyqXT2k5cwa", "description": "XjOUj6nhZ2GARFIE", "localeCode": "auFx1UDIYowP5iOB"}'
"""

result, error = create_localized_policy_version_1(
    policy_version_id=policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
