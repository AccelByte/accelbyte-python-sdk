import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_policy_version_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdatePolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import UpdatePolicyVersionResponse

"""
body:
Definition: UpdatePolicyVersionRequest
description: str
display_version: str
is_committed: bool

Example: '{"description": "6KYfwjAB2hFs2qPv", "displayVersion": "IY51LfX7yyIE67bY", "isCommitted": true}'
"""

result, error = update_policy_version_1(
    policy_version_id=policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
