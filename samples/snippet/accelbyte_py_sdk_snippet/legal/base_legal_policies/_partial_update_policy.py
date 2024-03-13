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

Example: '{"affectedClientIds": ["Vz9oDhwAtR418TAB", "Hh0RzzV07nGl9HVF", "35RcScLGFJgmbHKj"], "affectedCountries": ["SxJ5B5gSPtfErhkX", "BmhGfhdNEu3xZy6N", "ja0U25CxvLbr0rDz"], "basePolicyName": "YGOOECmLEWkZAbxH", "description": "PwIQSvJcTAOYo0CE", "namespace": "avsfM4uytDDGfhfx", "tags": ["z5whfAZNNS2BcDv5", "HYH8WaCXuAxfuO9z", "VsuVdfewVCbFGavz"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
