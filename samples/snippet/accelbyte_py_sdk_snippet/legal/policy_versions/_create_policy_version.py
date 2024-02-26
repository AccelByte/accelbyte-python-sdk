import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy_version
from accelbyte_py_sdk.api.legal.models import CreatePolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import CreatePolicyVersionResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: CreatePolicyVersionRequest
description: str
display_version: str
is_committed: bool

Example: '{"description": "fPTif9INzlHYQJOz", "displayVersion": "1LfdQXZnOrBxu7TT", "isCommitted": true}'
"""

result, error = create_policy_version(
    policy_id=policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
