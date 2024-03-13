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

Example: '{"currency": {"currencyCode": "cV5qjHfJLNYn7wZg", "namespace": "qav4lqfD1jePDKXG"}, "image": {"as": "1vSYvirAze7LDcRs", "caption": "uqep0oVu2TADxky9", "height": 37, "imageUrl": "PD7vE74o1JJ0xR18", "smallImageUrl": "AMsCvxfXBd8mCqxB", "width": 81}, "itemId": "JrbYZI3ccsyzmfOu", "nullFields": ["8We365xkJRzrhM8R", "bdnLHF6pDXEYRj0h", "DcNQjJ2IXApYN89S"], "quantity": 45, "type": "CURRENCY"}'
"""

result, error = update_reward(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
