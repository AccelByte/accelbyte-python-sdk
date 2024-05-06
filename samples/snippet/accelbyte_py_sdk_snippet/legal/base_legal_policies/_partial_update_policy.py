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

Example: '{"affectedClientIds": ["bQADvT0hZl7HfK97", "VUG78P5I14XG9Irg", "7J5Vjre5Oc1kNX6i"], "affectedCountries": ["66t8G7txzmHmr3wt", "Cqmj0i7EWEfqgUvL", "fSAKxO0rNWmpn2Aq"], "basePolicyName": "1FPFvlxrxhCzIc6D", "description": "PgUJd7Xfmh9JgDij", "namespace": "bYuyF2uh0mxXj0te", "tags": ["bosGV4TuXWh9C8Qa", "4hC8udGhW3TyK298", "wrgcyOEBY2k8y3bW"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
