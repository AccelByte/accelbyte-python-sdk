import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import create_policy
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyRequest
from accelbyte_py_sdk.api.legal.models import CreateBasePolicyResponse
from accelbyte_py_sdk.api.legal.models import ErrorEntity
from accelbyte_py_sdk.api.legal.models import ValidationErrorEntity

"""
body:
Definition: CreateBasePolicyRequest
affected_client_ids: List[str]
affected_countries: List[str]
base_policy_name: str
description: str
namespace: str
tags: List[str]
type_id: str

Example: '{"affectedClientIds": ["FlTcgkPraM831vwJ", "7XeS3WcadH2F9u2H", "cjKoQ4gKypmBGR2D"], "affectedCountries": ["ZrFZP2Lp1aFahJ0n", "9alSE6LLHHUtChRx", "uv975cmqEmvgy3io"], "basePolicyName": "IPWvTEWrkg8vCxNz", "description": "0oIZO64vCQJcbro4", "namespace": "zCW7JIDi31I29poI", "tags": ["V1GGxP1OzSXku7uZ", "cQPj6dlTODJ6VO4q", "J49QKSiU2HVxIoeN"], "typeId": "QPhy8ZqzljvnBx3j"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
