import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import update_policy_1
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

Example: '{"description": "OPwluGpASMHKwqOY", "isDefaultOpted": true, "isMandatory": false, "policyName": "Clc0U2hqj3nq5XKZ", "readableId": "UPzRBF0VMgllnLLt", "shouldNotifyOnUpdate": false}'
"""

result, error = update_policy_1(
    policy_id=policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
