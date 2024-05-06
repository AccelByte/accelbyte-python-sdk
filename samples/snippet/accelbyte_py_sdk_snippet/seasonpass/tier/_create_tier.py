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

Example: '{"index": 50, "quantity": 26, "tier": {"requiredExp": 47, "rewards": {"csJALGsp0dI1uSqn": ["QWRO3rm9LfAlVR3e", "fso9TFEaE68e9B4H", "uffTFHLzgAZ3uQaG"], "mc7CmJtSAczuyW0T": ["B0mzLOCvuhM5nnUj", "VDpHjkIV2JtQ7I5h", "m0Knr1tG5RbHFiFR"], "nGBgRdsLdEMpAMpa": ["mYfCUvQbOMSrWTbb", "tmbaaoWsmSaHCPOL", "n7vzDLjTvzalAxlW"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
