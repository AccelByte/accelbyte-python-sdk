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

Example: '{"affectedClientIds": ["dxpPOgtmsySC4jTq", "zBFpvJwaWrXf43Sh", "Poa9AubIif1vk6eh"], "affectedCountries": ["MxnNoIa56jjCEpl8", "5z1JRV5irlg6m5jz", "66pIZ9awPsF9kx77"], "basePolicyName": "BTM7BbZo9wVbdO8M", "description": "Q26sywBouTXADCpZ", "tags": ["km2g6GV2pQQafBpf", "riOjWrwJfYVyBnHX", "pfsqFVydreXVlZjF"], "typeId": "dyPyEEtQnYlP20zF"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
