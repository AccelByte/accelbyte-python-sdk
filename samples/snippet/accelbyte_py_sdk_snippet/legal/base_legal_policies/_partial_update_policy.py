import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import partial_update_policy
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyRequest
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyResponse

"""
body:
Definition: UpdateBasePolicyRequest
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
namespace: str
tags: List[str]

Example: '{"affectedClientIds": ["uxSflMGySOaYBsUS", "VftRc1RtzeG15cBZ", "KQ3HWAYzgknYtgwE"], "affectedCountries": ["PwoxM5hWKP8dY4zN", "R9q0AeBajfivqkID", "1F9WMr4DLcYZm3md"], "basePolicyName": "wxTKUPYczGwAwMo5", "description": "svNRWGj1p4hBkzZc", "namespace": "L09xppvBEFcrMJoM", "tags": ["6vYVRk1XdNQDdu4W", "pw2KsFQKJjIe6pdF", "XvF4ULqXeDe5uw2K"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
