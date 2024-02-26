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

Example: '{"autoClaim": true, "defaultLanguage": "7hp4f7lWi5ckcUTc", "defaultRequiredExp": 48, "draftStoreId": "Jahw18nm1IVt1omW", "end": "1975-03-20T00:00:00Z", "excessStrategy": {"currency": "ayFs1pUQJ1skConq", "method": "CURRENCY", "percentPerExp": 27}, "images": [{"as": "fYARELO2IkojlyXj", "caption": "nx2VZGGGQamjfbLZ", "height": 9, "imageUrl": "CbS0hibShyydqEkc", "smallImageUrl": "zkvQu2j2fGYuAZBx", "width": 51}, {"as": "mZRcEzNOsUahcTeJ", "caption": "foovok5XpiGsCbvg", "height": 61, "imageUrl": "mBVsUooz6EvaRNK7", "smallImageUrl": "Aw5qBi98OqNL8pnL", "width": 72}, {"as": "18uqv0zxzrxYC7QZ", "caption": "sBYaZX8xJHRSWTfd", "height": 78, "imageUrl": "JXzN5hp9BrWO9X7l", "smallImageUrl": "Fi1nXYu7gWk0afKa", "width": 70}], "localizations": {"HDiumdpsNz3htH2G": {"description": "fkkoxZVnmTCNq0ju", "title": "F7s6lHo3W5CTTRrE"}, "cbmnOMejRdMe85Bi": {"description": "AHGjJ8kMlM8wu40D", "title": "YkqwDWvPcBTjI9Im"}, "Le8uEGl9wZMVWOER": {"description": "sh45dFjWKijNFLr6", "title": "EtrOz0gSDXFswzrB"}}, "name": "jwS2ygJNYeszhhXw", "start": "1991-10-30T00:00:00Z", "tierItemId": "98SyNbTxC4mADsRG"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
