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

Example: '{"index": 17, "quantity": 42, "tier": {"requiredExp": 69, "rewards": {"S96NBLAXONoGknzr": ["xdtjTHcbha8RFy47", "4CQKn4Ifr4QFVqqf", "xbSVmcOwbBWKszWy"], "X1TKniQum9jmTwHh": ["913FyG5VOvmCLMQf", "jtxDqKvK4BqvQXVN", "7u93LX2OhufhEmAs"], "v4wBV3yWQ8Yj1NTe": ["u9Ab98I1NDUTojGC", "kjboYTMZ88bqi3XO", "2RdLlGrjaVlI3wVM"]}}}'
"""

result, error = create_tier(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
