import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import partial_update_policy_1
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyRequestV2
from accelbyte_py_sdk.api.legal.models import UpdateBasePolicyResponse

"""
body:
Definition: UpdateBasePolicyRequestV2
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
tags: List[str]

Example: '{"affectedClientIds": ["VeXtkIiHKGKmQETL", "uKUW1EFqfhs4ycUJ", "IY1qHIDXelajmNdS"], "affectedCountries": ["LB0OspTpTGs4XMwJ", "KE6lne3bM0rjNfpA", "qtO6tRyKsuH2gUol"], "basePolicyName": "ZCNi1sqXkLXrRDpq", "description": "FKcbF2RNDdUHFMZt", "tags": ["1QVeyk96BoZIVJvy", "jzKqJM24iYcpVLBK", "Qi0PCGm39tolpvSk"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
