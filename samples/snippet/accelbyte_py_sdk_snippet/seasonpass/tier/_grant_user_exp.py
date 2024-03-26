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

Example: '{"exp": 2, "source": "PAID_FOR", "tags": ["EgTbYJoPao42V0q4", "coOPiNNNDDiB0cTe", "DqwI6HjgASL9HpdN"]}'
"""

result, error = grant_user_exp(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
