import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_policy
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdatePolicyRequest

"""
body:
Definition: UpdatePolicyRequest
description: str
is_default_opted: bool
is_mandatory: bool
policy_name: str
readable_id: str
should_notify_on_update: bool

Example: '{"description": "A3kGRpWmJGVwFNWr", "isDefaultOpted": false, "isMandatory": true, "policyName": "NxLnOyPTwZKuP0NZ", "readableId": "GlY84U7KcmdgKLh2", "shouldNotifyOnUpdate": true}'
"""

result, error = update_policy(
    policy_id=policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
