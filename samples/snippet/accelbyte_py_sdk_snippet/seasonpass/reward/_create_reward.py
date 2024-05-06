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

Example: '{"code": "XgYxBrhkkw1FpedO", "currency": {"currencyCode": "q4M2EAXoqIdbLiaC", "namespace": "Zc7Uw56wzurZXMGx"}, "image": {"as": "BRPVLKjjisRGm3VP", "caption": "C5t0BiauJ1OfLs3d", "height": 98, "imageUrl": "BlE7yu9GqCt8r2hz", "smallImageUrl": "wL8VPCJPOa4szphE", "width": 49}, "itemId": "WnCuwzWuyoTqJpAW", "quantity": 99, "type": "ITEM"}'
"""

result, error = create_reward(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
