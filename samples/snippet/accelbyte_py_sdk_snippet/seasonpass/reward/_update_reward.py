import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import update_reward
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import RewardInfo
from accelbyte_py_sdk.api.seasonpass.models import RewardUpdate
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: RewardUpdate
currency: RewardCurrency
Definition: RewardCurrency
    currency_code: str
    namespace: str
image: Image
Definition: Image
    as_: str
    caption: str
    height: int
    image_url: str
    small_image_url: str
    width: int
item_id: str
null_fields: List[str]
quantity: int
type_: str

Example: '{"currency": {"currencyCode": "fbVh3eXJo2WgdKZl", "namespace": "lY0uE6b9ocewYaAn"}, "image": {"as": "tLiQDlOOPa7Ih0DJ", "caption": "MdJ4y3kIEtsmGYIY", "height": 51, "imageUrl": "aV6muMclGgJdkL2v", "smallImageUrl": "0Y0qd7NWKb83kTMd", "width": 94}, "itemId": "dDFlozbuxXjVdtD3", "nullFields": ["Kbrb8BAjyfyBgEoT", "t76ly0axTl1FamxW", "e0zu6wMSjXLHpcSr"], "quantity": 60, "type": "ITEM"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
