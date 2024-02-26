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

Example: '{"requiredExp": 35, "rewards": {"R9n6qswXeiQ6oGZh": ["XHjj1ZYt4AGEZS9d", "IrGA11hCO2BneRDe", "sAr8bRcPD1HcVQLo"], "x9d3QEcVJ4da4YmC": ["wvc3DFrNmWKtZXDM", "dTFzD6QK8SKZV5LB", "xR2Jbb6m8GNi6Yvu"], "roGadca3sHBhTs1k": ["o7djo53ENaGdyO2M", "vJ4UPkngerddsMH3", "Qu9kFQaL7QYjnqVu"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
