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

Example: '{"affectedClientIds": ["2XzKliUVnlIq4xbr", "k9cJFECpxWeeUEdv", "UZM7XT8xyIUpGfNk"], "affectedCountries": ["nJyBPZWd4zaDt8G1", "CMAcWA5bhyZR9a0f", "qfatmlhECsIthim1"], "basePolicyName": "F3B5l6cmJaCjJw3i", "description": "YzsVVbMhoA6obI8F", "namespace": "k7f2Ydpp1PFOWp7j", "tags": ["2Tl70fIiVpPIyFyI", "v04OlJeIF7ulM5oI", "7qr1Glm3YSlGHjK1"], "typeId": "6aiujsKbYJOzws1L"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
