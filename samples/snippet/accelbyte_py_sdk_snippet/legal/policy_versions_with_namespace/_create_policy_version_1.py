import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy_version_1
from accelbyte_py_sdk.api.legal.models import CreatePolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import CreatePolicyVersionResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity

"""
body:
Definition: CreatePolicyVersionRequest
description: str
display_version: str
is_committed: bool

Example: '{"description": "o6luIW94FJdAom8d", "displayVersion": "ja1Hbx3vg4jjsrED", "isCommitted": false}'
"""

result, error = create_policy_version_1(
    policy_id=policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
