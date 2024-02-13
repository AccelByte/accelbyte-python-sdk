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

Example: '{"code": "R4rGMTRtFrm6HLkw", "currency": {"currencyCode": "jfX6HI1j29Rm8hP1", "namespace": "FcWzS5yFVDanDL68"}, "image": {"as": "QycFGJuZCm7T5IEA", "caption": "sCqmSxZOzGhbTbqf", "height": 14, "imageUrl": "pLKwEOxnGUhWLanb", "smallImageUrl": "iglrmBzMQEoPhSme", "width": 41}, "itemId": "zy7j9mcVnqgAbCdE", "quantity": 26, "type": "ITEM"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
