import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy_1
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyRequestV2
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import ValidationErrorEntity

"""
body:
Definition: CreateBasePolicyRequestV2
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
tags: List[str]
type_id: str

Example: '{"affectedClientIds": ["cP2eViMVhtij9hG6", "MvlHcly1RyA0P8TB", "7Ozd7Ng8j3b52c99"], "affectedCountries": ["puM0TTxY5tk7JIv5", "0L9mc1PudHwPS1bZ", "tEjsntqE2rCE8Cvd"], "basePolicyName": "x7d07ck9hr57K1K4", "description": "p1WQMajzgp1BbJ7Y", "tags": ["myRRLsLFD6ly5hhj", "fjY7Ku2B4xtEwuAx", "lDQpSIu7n1TNx7AS"], "typeId": "rvlUNcAD3VhGLHxb"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
