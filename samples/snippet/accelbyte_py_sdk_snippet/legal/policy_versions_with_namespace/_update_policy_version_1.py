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

Example: '{"description": "OIFB2mpd3h7XBHQ9", "displayVersion": "i6JO4Vi3pp73XwZn", "isCommitted": true}'
"""

result, error = update_policy_version_1(
    policy_version_id=policy_version_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
