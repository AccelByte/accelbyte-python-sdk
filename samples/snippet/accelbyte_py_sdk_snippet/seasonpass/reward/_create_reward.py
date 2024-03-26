import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import create_reward
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import RewardCreate
from accelbyte_py_sdk.api.seasonpass.models import RewardInfo
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: RewardCreate
code: str
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
quantity: int
type_: str

Example: '{"code": "UwUcmeNacXlUHKXY", "currency": {"currencyCode": "OG8KPhvk7M5aCnJG", "namespace": "hx7G2FkjZbdfCw6i"}, "image": {"as": "pm0k6Kkynd4WgAXE", "caption": "kRCTl4dytJv0CzxX", "height": 27, "imageUrl": "nsGI4s9pPmfUOXAi", "smallImageUrl": "fBvU17pIl6kwI7Yd", "width": 3}, "itemId": "OtSwu95NVu6oll07", "quantity": 22, "type": "CURRENCY"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
