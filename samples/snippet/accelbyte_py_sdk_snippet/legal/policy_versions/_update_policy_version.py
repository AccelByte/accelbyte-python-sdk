import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_policy_version
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdatePolicyVersionRequest
from accelbyte_py_sdk.api.legal.models import UpdatePolicyVersionResponse

"""
body:
Definition: UpdatePolicyVersionRequest
description: str
display_version: str
is_committed: bool

Example: '{"description": "wEVCokjgkrDZqqc4", "displayVersion": "3ju1hph02XmjWPD0", "isCommitted": false}'
"""

result, error = update_policy_version(
    policy_version_id=policy_version_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
