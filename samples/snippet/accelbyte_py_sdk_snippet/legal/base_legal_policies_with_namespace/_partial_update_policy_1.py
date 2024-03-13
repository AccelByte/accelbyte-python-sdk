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

Example: '{"affectedClientIds": ["B0lFJQJLWlDz0aD4", "cJ4V85NxdXuDs77q", "Bx2ZMB25IeBUYecm"], "affectedCountries": ["Cfw4gZO2DGd9rMsa", "8yQvf5MF6qxbRRrl", "3ssdnChZ4lzPhv8N"], "basePolicyName": "kGmBis3zTU6GeiIC", "description": "IskkyqVWx2y7irhp", "tags": ["A8LyOewZ3DFayzkS", "CAyRblANAyjcrJ4V", "w9oPbSVoNHJ47vIV"]}'
"""

result, error = partial_update_policy_1(
    base_policy_id=base_policy_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
