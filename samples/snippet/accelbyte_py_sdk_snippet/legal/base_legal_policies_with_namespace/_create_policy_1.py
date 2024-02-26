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

Example: '{"affectedClientIds": ["K9qOUZEQSGUYSoly", "6iWQ0r8b9GetlwLn", "7cyIwveiW9COUiDC"], "affectedCountries": ["FQZoxzDZCT1Zhgbo", "qfQWl6P2Kn8yO55y", "MLx9VgOIascY5gmA"], "basePolicyName": "4FdnzQYeoMUeRcJK", "description": "ZM6YSdsp3MguyC0Y", "tags": ["PEMS8rCGIqvFVnUm", "xTPZPXEu2UV4hv7e", "xomNWGiv6Drt4J0F"], "typeId": "aFwr4ClUjGOJZ2Se"}'
"""

result, error = create_policy_1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
