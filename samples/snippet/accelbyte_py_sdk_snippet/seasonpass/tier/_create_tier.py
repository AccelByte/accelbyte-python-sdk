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

Example: '{"index": 30, "quantity": 72, "tier": {"requiredExp": 94, "rewards": {"yr4RbOAfaQggwbM9": ["zZS9vg15REelQ10K", "B6KTd4pCKIIyGKGW", "RtvSqJDfZLLqaX8T"], "AdmBkbhaRCx2BySw": ["qFs6pTPwO63Q7ZM9", "4x9eCwP32Lh2sLzp", "7mzTdJLRRFDWNT3J"], "GLZtK7ANeGEBZ91c": ["uRKSYwmU5bRT4oRp", "iUJqrQN4AVMFXqci", "cVbTHBpU1rUN1ShZ"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
