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

Example: '{"exp": 71, "source": "PAID_FOR", "tags": ["8Y2X1dZ3ZxfwhsWU", "CahuiflrwDM0s3lo", "d279rSIZioHSrjw2"]}'
"""

result, error = grant_user_exp(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
