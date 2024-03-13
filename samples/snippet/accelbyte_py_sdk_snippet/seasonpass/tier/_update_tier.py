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

Example: '{"requiredExp": 72, "rewards": {"mJtOHQaN2f1WFx7z": ["3xslinG1snMRNG5r", "5PZ23cw2Asz9xN1P", "jofRQkMehySfKFSa"], "XS47rgsMbLkoUa37": ["dNm4MK5xUvyXfTOi", "Gl3IdXnt6WumDHWS", "vgdonEWVpO8ckxPz"], "ny2RdWSNgDdSJDAe": ["ttej7f557clJhFfx", "6yjHcjnTGkOethbe", "e08LFUixdkPqLfUW"]}}'
"""

result, error = update_tier(
    id_=id_,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
