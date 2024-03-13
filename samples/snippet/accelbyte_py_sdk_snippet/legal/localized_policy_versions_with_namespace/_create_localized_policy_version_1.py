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

Example: '{"contentType": "T5SvvsqUIWJrrfzS", "description": "nKkLc8iPC7bt4n3A", "localeCode": "s9EuLvDP9uG9Go2v"}'
"""

result, error = create_localized_policy_version_1(
    policy_version_id=policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
