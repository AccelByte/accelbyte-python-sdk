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

Example: '{"currency": {"currencyCode": "X4Zh3FFu3jSKEj0x", "namespace": "K0nJ5eG7NSwecrTz"}, "image": {"as": "T33cBVnkCLHbsH2f", "caption": "hn60KV7P4M6h0aM1", "height": 64, "imageUrl": "lQ6ZAC5geWWBEUaJ", "smallImageUrl": "cFU9EGmiVswpf6GK", "width": 88}, "itemId": "RSMLNlvRmGs1OpGu", "nullFields": ["uBgOwa9aJ1NW8LFI", "JUUQn97Yi3Oxedmf", "BwDtVCgR5Pc0z1HQ"], "quantity": 89, "type": "ITEM"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
