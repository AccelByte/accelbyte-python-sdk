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

Example: '{"description": "3KGlegOyMNJcj1yA", "isDefaultOpted": false, "isMandatory": true, "policyName": "WwsaLyhwuDDp39Nd", "readableId": "BouqPqJsVQLxHLST", "shouldNotifyOnUpdate": true}'
"""

result, error = update_policy(
    policy_id=policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
