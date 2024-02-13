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

Example: '{"affectedClientIds": ["4Pnd5ClFI7EcyN3J", "xYWWssVJML6jWtwG", "PHv3rJHFOIid9dlP"], "affectedCountries": ["kLQ0r2E5f6I5m5Br", "m75qcXjA3AL9TTzt", "su1UndZG7JlpZ6Sk"], "basePolicyName": "M8W35MIan6cjfRYL", "description": "SU9QXOVeUihWbh85", "namespace": "Drp1XQTAjMirF4Hx", "tags": ["lun5BlVjLfzDUSV5", "MBETyaYYdtUXDNXp", "nx9Y1YEhEJOLHtZm"]}'
"""

result, error = partial_update_policy(
    base_policy_id=base_policy_id,
    body=body,
    x_additional_headers=x_additional_headers,
)
