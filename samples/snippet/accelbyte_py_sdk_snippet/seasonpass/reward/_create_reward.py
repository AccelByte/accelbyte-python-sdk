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

Example: '{"code": "2JUpCn3Ay3Eb9fYR", "currency": {"currencyCode": "9OV4TWzMLPDqGrGS", "namespace": "yuxvNNmXSvpZaluW"}, "image": {"as": "qh7i9TdStd1eK4B6", "caption": "wRX2TDcv8W3Qfq5h", "height": 75, "imageUrl": "MpvcopthhpoK3J4f", "smallImageUrl": "wzDcjVivto4YeVqw", "width": 82}, "itemId": "8VsnaSQQ64QarHMy", "quantity": 28, "type": "ITEM"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
