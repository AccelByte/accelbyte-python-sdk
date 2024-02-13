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

Example: '{"currency": {"currencyCode": "i28wfLhSylLhDBeX", "namespace": "IWCgxcRsimHsadrb"}, "image": {"as": "JmiU8NPVqUgAcK5f", "caption": "NHuYcfAx9ANteeOa", "height": 2, "imageUrl": "YzEYQIbTHiJH5fM3", "smallImageUrl": "cEOrHiQSpe00A1CG", "width": 31}, "itemId": "PC86WK2v3l8kstTY", "nullFields": ["mksADGd5QZT3pGsH", "LCKQf2gWiIO4ewRL", "NWpJLTNujptb4oxF"], "quantity": 40, "type": "CURRENCY"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
