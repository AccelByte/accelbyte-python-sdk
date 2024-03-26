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

Example: '{"currency": {"currencyCode": "EToieFA5R932UqU0", "namespace": "OkHmGYTfRcNfFTQi"}, "image": {"as": "byZz0jUz9e5O1wWo", "caption": "2zuJMjXgh0W7x1uV", "height": 0, "imageUrl": "lKkHOBpKRbjE4FM5", "smallImageUrl": "pHjcMULWFS946gwt", "width": 70}, "itemId": "F3xRt6SfQAAWJCOv", "nullFields": ["6vrLeiHco2KZ4EHX", "Q3Y6B4rPC0tnoIOj", "8ckwUIEnMDewZCo3"], "quantity": 28, "type": "CURRENCY"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
