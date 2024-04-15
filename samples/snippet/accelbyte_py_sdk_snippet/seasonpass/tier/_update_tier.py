import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import update_tier
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import Tier
from accelbyte_py_sdk.api.seasonpass.models import TierInput
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: TierInput
required_exp: int
rewards: Dict[str, List[str]]

Example: '{"requiredExp": 45, "rewards": {"Wb5hX4VN7WkRTac8": ["g81hNwsZllrdcgBo", "dKRLhhCFqWypv1eI", "yrjay8woQjVyXSGV"], "bv59hf82EBGjeRL8": ["WHJHB1EiySdlQkFB", "Ef462WMWM19shMz2", "RKQ44K2lQNFpIGJf"], "LOQv9ESNqf2s7dmR": ["pcMN7egHjP6p4AHP", "5ZM4Wk52IcZkNFeI", "hYxU8vPCLjYHSxBc"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
