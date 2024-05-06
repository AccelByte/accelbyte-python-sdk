import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import update_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import SeasonInfo
from accelbyte_py_sdk.api.seasonpass.models import SeasonUpdate
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: SeasonUpdate
auto_claim: bool
default_language: str
default_required_exp: int
draft_store_id: str
end: str
excess_strategy: ExcessStrategy
Definition: ExcessStrategy
    currency: str
    method: str
    percent_per_exp: int
images: List[Image]
Definition: List[Image]
    as_: str
    caption: str
    height: int
    image_url: str
    small_image_url: str
    width: int
localizations: Dict[str, Localization]
name: str
start: str
tier_item_id: str

Example: '{"autoClaim": true, "defaultLanguage": "aCUx3CzQiNFkZolO", "defaultRequiredExp": 76, "draftStoreId": "1ELKF4IsQNjxp8yz", "end": "1991-09-29T00:00:00Z", "excessStrategy": {"currency": "kXbHJ670qkVQSghE", "method": "NONE", "percentPerExp": 54}, "images": [{"as": "smrCMSjKbZBBcnbI", "caption": "pPMm68BtS4chnbk6", "height": 97, "imageUrl": "E64OIU8jHFXFhndl", "smallImageUrl": "fngcTuI5O8sAkLbV", "width": 73}, {"as": "yagGcYqkrpT9XESy", "caption": "Uq17pdtBBir7K1vP", "height": 30, "imageUrl": "AHIMWo73JurfYUZE", "smallImageUrl": "eZRClMcEIKc2AzIu", "width": 16}, {"as": "bsDIerWzJztdOkuX", "caption": "wuh9BV2MHGLb4eiE", "height": 1, "imageUrl": "gRYX3b4iGSAow8SJ", "smallImageUrl": "ILeGPeyluHJOCWp0", "width": 26}], "localizations": {"CcKqaf85HDWzs6aX": {"description": "tANYhTot2bbulHFR", "title": "JLVWneNc5LgGKuu4"}, "F0BeXlFdw3QlNqIy": {"description": "CBwv6VBsBN5W1VDN", "title": "36LzZSceODGKDKPd"}, "GDGjkTCBXRQyFlZN": {"description": "YIWgp1Ms3sC7Alrg", "title": "TpOlhB1HAE5tRa2b"}}, "name": "nX63ua5hAx5C0JOw", "start": "1972-09-11T00:00:00Z", "tierItemId": "TP33iBQJPa6WuDDa"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
