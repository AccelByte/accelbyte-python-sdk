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

Example: '{"count": 79, "source": "PAID_FOR", "tags": ["POma6uZ8HUgV8bCF", "xqpjtBWCngN63KwR", "AzEzxiQG6hhznIG0"]}'
"""

result, error = grant_user_tier(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
