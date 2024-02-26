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

Example: '{"affectedClientIds": ["ka3VMoQeNyccRuEd", "u1LMvOXloh20yFew", "ajZsMsl4jjZB8wMr"], "affectedCountries": ["0QogQFwPW8FVuHy7", "nlBqUUYDGGKxvPaA", "mpYjHmpXzS0qoaAS"], "basePolicyName": "iYclWMy5hmgFmpV1", "description": "Y6n6rLrsWpYTjrWc", "tags": ["bVic9CCKMAM08xPF", "Kq5FmolZY9SZT5uM", "FGQM3BWnnvLrdJp6"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
