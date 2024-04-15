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

Example: '{"index": 23, "quantity": 49, "tier": {"requiredExp": 76, "rewards": {"Sn6Eg1RccPwqYdGM": ["SbocnGkXju36DQqS", "lUp7ll5ev8C4n6pt", "V3fOCbEiMPRhOutO"], "FDJkUUnfCXJbhAx8": ["iTTtmZerX7RcSMuT", "TS8auXJumaSA0Q2m", "QEiK1SbmLuQE9kEY"], "2P50gwUiHhNO9OFq": ["KkiqfF214BjVCjNu", "qqI2aWYoDYtmQFDG", "MkkmUPySPfn2lU4Z"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
