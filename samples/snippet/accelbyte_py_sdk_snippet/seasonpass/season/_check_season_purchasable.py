import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import check_season_purchasable
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import UserPurchasable

"""
body:
Definition: UserPurchasable
pass_item_id: str
tier_item_count: int
tier_item_id: str

Example: '{"passItemId": "NE74zMeHIEOFpNLR", "tierItemCount": 54, "tierItemId": "byvAWhhHmTS9iE5K"}'
"""

result, error = check_season_purchasable(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
