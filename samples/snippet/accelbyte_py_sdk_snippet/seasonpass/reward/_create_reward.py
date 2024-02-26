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

Example: '{"code": "69zggJ7BMZvyyR9k", "currency": {"currencyCode": "85AeJXeK8a6oi433", "namespace": "5T05laU511FCO6eL"}, "image": {"as": "xTJEEiykAn9VAcTv", "caption": "vgYirwCBWE3nImdB", "height": 86, "imageUrl": "iHRgdmTylGLSkuah", "smallImageUrl": "qZtw9g2TCMNV4KrU", "width": 63}, "itemId": "73yL1aTvaaI1EQL3", "quantity": 44, "type": "CURRENCY"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
