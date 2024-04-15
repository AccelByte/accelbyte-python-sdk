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

Example: '{"currency": {"currencyCode": "gUQPqicfDPtahGGI", "namespace": "407gr3QxdIqQz0mK"}, "image": {"as": "w4jsoke9WnvxwNGN", "caption": "B4wRneazBQ6Na7Hj", "height": 68, "imageUrl": "G4MiMzdmP17eMusX", "smallImageUrl": "RETG69Qdbl7aaQT6", "width": 99}, "itemId": "SYByyaVSlyPrMiB2", "nullFields": ["tMfQL0JbA3tDrBf9", "4HFZffP3Og6ZfiWG", "edck3pbK0pKA1wN2"], "quantity": 78, "type": "ITEM"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
