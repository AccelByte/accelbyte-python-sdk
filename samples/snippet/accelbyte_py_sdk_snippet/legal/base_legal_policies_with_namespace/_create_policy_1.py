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

Example: '{"affectedClientIds": ["EtKBkDm4ZdNcroiR", "R1EbdoJQ9q7I5B27", "T3kPZfcoOgM03oeH"], "affectedCountries": ["aH2GdfnHL9BEgwqy", "YZuxpk62kcj9p3Yj", "u8hhmzqp4uByEWYi"], "basePolicyName": "Tb3vM5NCwvBu3wsA", "description": "EXBGrPS4f1xr1h46", "tags": ["gKzKqsQfxpBcyamh", "E1Glb4lzjRnSG90a", "XoJGbbJjkYXFZmpw"], "typeId": "QLUwUPT5E6BvXCYu"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
