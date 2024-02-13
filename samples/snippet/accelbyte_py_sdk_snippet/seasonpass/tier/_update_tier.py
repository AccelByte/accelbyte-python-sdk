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

Example: '{"requiredExp": 27, "rewards": {"Muz244qEsuWJbNq9": ["TSQedNu1zV7Mtaew", "QtEYrjCotp5ryITY", "MQtiVvjD0gm34lbk"], "lxpGSWW1dXj6j8CK": ["HZrXdelysctN6ILT", "YnfYeFbwSdaGFcog", "scIQUGxPFgbOzA14"], "A9ujHFZgGLbKlB4g": ["Ny4f790i3qhugiKX", "KEhPPKLJHZtaR3Kg", "AXNBFX11xzpIjEI1"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
