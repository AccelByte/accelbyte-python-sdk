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

Example: '{"affectedClientIds": ["avna7qDe0v7RSZcA", "ZsFgyplZTGB90EMY", "ihRUvfkssqm5DpAb"], "affectedCountries": ["AFpym8rNQBJf3aDq", "FFdWV6hyfsV8dXee", "nlfUw0Os5b9XYXjQ"], "basePolicyName": "reQdcCjVHhMzWWdz", "description": "OEWZ5JIhueC5NTf4", "namespace": "M20QMHrLVUr14IiB", "tags": ["NuHl5zG5i5UQ8ZiD", "KbcjEeAGsbewmZ1Z", "B2BNmzD2ZxN3t4bf"], "typeId": "PDtczzN8TYcl0knH"}'
"""

result, error = create_policy(
    body=body,
    x_additional_headers=x_additional_headers,
)
