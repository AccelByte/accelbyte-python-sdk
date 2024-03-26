import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import create_tier
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import Tier
from accelbyte_py_sdk.api.seasonpass.models import TierCreate
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: TierCreate
index: int
quantity: int
tier: TierInput
Definition: TierInput
    required_exp: int
    rewards: Dict[str, List[str]]

Example: '{"index": 64, "quantity": 10, "tier": {"requiredExp": 22, "rewards": {"8sXedM5iXdlryGi9": ["n7inlAv9QnyE3gkK", "puUqYk3iXMMEEvUH", "ajbaWZdD7V3e7mGa"], "ddrtqKGMbJ49CC4a": ["EYH9VTeCMwpW346k", "dL3oxltbmtc0Qlkq", "sHhvMIdUBpZH9dBD"], "iq50xKePFHXZBHM6": ["CXbByWW8KlAEQEvo", "YBlqY67BrmfgFuPg", "RIUu7CQj7gViL91D"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
