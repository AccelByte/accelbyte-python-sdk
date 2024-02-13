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

Example: '{"affectedClientIds": ["bbBnjoHonUQoF9KR", "STLD5kXRhnlRiZqa", "O6juy1iYSTsnPHys"], "affectedCountries": ["HOdxK15tigkpIkqH", "Goml7w8bhry4XE1j", "9qX4uCoMSiJEfNOR"], "basePolicyName": "9kbLBWRqzSjWllaz", "description": "TgIbc0GdAoN6UZsR", "namespace": "b9a6K99spwnf8lEj", "tags": ["JgShhjof7uFQ7PUk", "JoI31toczvNsEPka", "YtVLJ1IoapUUUvb6"], "typeId": "xCDSiX1tnxbsXVIG"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
