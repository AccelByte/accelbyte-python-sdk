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

Example: '{"requiredExp": 73, "rewards": {"PhOh2A7TyRiDkR4x": ["iu24JppvtDBug5Dv", "gHXDHq0T34MCtevB", "lwTq4DgTAqqLKqru"], "CiZ1mKSVZ9GNo9d7": ["ArRpkF0mcDQHAGky", "44n9tVFWprleFZwe", "rhlr2TWztJ5PcfXR"], "f9io6dx6VNVpPNYM": ["ja3sgUsx8QESLmBV", "8wna7dyJRl0wVms8", "2ZP86inoaKMkNtOS"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
