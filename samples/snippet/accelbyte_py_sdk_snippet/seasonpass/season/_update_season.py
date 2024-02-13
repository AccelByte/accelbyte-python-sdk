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

Example: '{"autoClaim": true, "defaultLanguage": "dRkf9bew7b5eZ2DF", "defaultRequiredExp": 54, "draftStoreId": "9OBgRURPZUkWcMBm", "end": "1972-04-03T00:00:00Z", "excessStrategy": {"currency": "Y0lax4LUrdXCkhhU", "method": "CURRENCY", "percentPerExp": 40}, "images": [{"as": "Lr2Rrx39IQkeb6bx", "caption": "bJPF7SEauWGuy43N", "height": 68, "imageUrl": "V43wWNaOfopKahJY", "smallImageUrl": "tf2hRTh9N7zj2rDu", "width": 5}, {"as": "nWMA5MXimdx2EtE2", "caption": "FgNu5LBL5EyHn333", "height": 96, "imageUrl": "SuC37NWNPLZs1JI5", "smallImageUrl": "jIYatkmXDYRH98qo", "width": 3}, {"as": "9jL24NojF7mYqw3n", "caption": "5Tsv3Sdf9pm6jy8w", "height": 45, "imageUrl": "NwgZZq4IwR7xIV7F", "smallImageUrl": "sYPycNpvZa1q3o9R", "width": 62}], "localizations": {"N2M1fDX9vlk0FpMh": {"description": "jbeeluQzL95f8Zti", "title": "XDm7rYTdL7NhyTrm"}, "tEFxgJ80bby2FmFz": {"description": "wHNI1AiMaZXHvbfX", "title": "6xP0drJGWKrzPrLz"}, "zvjRq9Hifc0TbfIo": {"description": "4LYsL9uskwzzMjK4", "title": "WyVm99h1eaKUTbCd"}}, "name": "U5Up1Khz3uYzdKGw", "start": "1978-07-25T00:00:00Z", "tierItemId": "ztUa2NelH9JLM552"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
