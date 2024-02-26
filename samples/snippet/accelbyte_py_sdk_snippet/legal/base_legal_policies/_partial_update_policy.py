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

Example: '{"affectedClientIds": ["pALdMFMmhU5zkBoR", "hVNJX5EMD9BRa1Sm", "RBvUwNZRtE6L481a"], "affectedCountries": ["dZd7KaxC4vI92ljd", "Shy5c2dd6Hua1Qca", "VD4fZLYjvv1jPi4t"], "basePolicyName": "ia5eY1GzQmWN7zCd", "description": "iQU5CdXbZOWNtAtJ", "namespace": "a0VpzQZaJKpw1w3H", "tags": ["Ad8B8lNQGopOmk7U", "F3la5dOAsffl1GH6", "RTsJmZ8ObUtZBjTB"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
