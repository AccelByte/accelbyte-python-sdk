import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import grant_user_tier
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserSeasonSummary
from accelbyte_py_sdk.api.seasonpass.models import UserTierGrant

"""
body:
Definition: UserTierGrant
count: int
source: str
tags: List[str]

Example: '{"count": 86, "source": "SWEAT", "tags": ["xDPHKWtf7wYWfYsJ", "wPNGtrtUmUJa24Ma", "DMc72LoHcHzywj0P"]}'
"""

result, error = grant_user_tier(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
