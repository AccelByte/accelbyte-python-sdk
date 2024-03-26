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

Example: '{"affectedClientIds": ["gGt2mEtcPAGnjilK", "KYeea5ke5Pw6uRDc", "ZOazJNJpwkTuXAk0"], "affectedCountries": ["A0c7WcKEYBqVGeDj", "m7Lmsu1HU4o9YrwO", "5o2ruvcMLHOFSPiR"], "basePolicyName": "07T0XcyN6rWxyBcS", "description": "aNmHwrRztpg7bfTg", "namespace": "Al3UXLMhI4a0EuH5", "tags": ["i46S40imlLKJ5PgF", "qBwjsErCxHfkqzTM", "78MeMkspLx518PgC"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
