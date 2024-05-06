import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import grant_user_exp
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserExpGrant
from accelbyte_py_sdk.api.seasonpass.models import UserSeasonSummary

"""
body:
Definition: UserExpGrant
exp: int
source: str
tags: List[str]

Example: '{"exp": 82, "source": "PAID_FOR", "tags": ["Go59YFqMAaAugPnk", "9Npz016fSbbXzUbw", "eXy4qiwz32waoB3o"]}'
"""

result, error = grant_user_exp(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
