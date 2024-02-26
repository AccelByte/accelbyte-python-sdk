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

Example: '{"index": 89, "quantity": 80, "tier": {"requiredExp": 41, "rewards": {"kNnmGrmg2HFgCiCt": ["2BJWJ8cLiaLDUFrE", "BEtATRRIyx0BOQFm", "Nom8dOZasC9c3SHm"], "nYS3a5nqizNrG4Yd": ["ljwR6oDiIHqYGTMB", "djGvlWW0kqu6mg8L", "BKlTgmGvC64mdYic"], "P4z2LA4KLb04uHAi": ["gBWgzP3fAbEx90xH", "FqJUkbUvXzhSlCob", "69HQhcB83Fi8YAxX"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
