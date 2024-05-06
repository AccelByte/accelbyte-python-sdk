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

Example: '{"requiredExp": 7, "rewards": {"RELaLJ11LCm96xzU": ["iTXdrzG1GfRrouQB", "O5lLrGhedARFUilp", "RO6QymgIzCToOWw2"], "kq22RTJIe4uU8nMD": ["bOWHCFZeMOuRhGpH", "QHTKSGVpbX10cRDz", "LqJCC507h2vqRYlb"], "sTmb9iak8i6lWmme": ["99HF3gbLLjs3ywYf", "5J5ZOqgxZxMbmCZx", "iK5eMueBpUnaJlXP"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
