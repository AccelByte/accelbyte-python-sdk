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

Example: '{"code": "5MjHDukkuMv861iT", "currency": {"currencyCode": "TkLQdg2vb9Xmmnqk", "namespace": "tZ3W6riNEX9IpguU"}, "image": {"as": "PxkKKHl84r1Y6exT", "caption": "4zNNqqdDYuTAYi0V", "height": 31, "imageUrl": "vSDe9eZhwx8636jF", "smallImageUrl": "pLp27CQRQUFCaATG", "width": 84}, "itemId": "kQDSuDcXgOJSHYoC", "quantity": 18, "type": "CURRENCY"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
