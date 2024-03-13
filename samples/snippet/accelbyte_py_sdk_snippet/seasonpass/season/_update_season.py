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

Example: '{"autoClaim": false, "defaultLanguage": "tBNmzPEY6VD239YC", "defaultRequiredExp": 82, "draftStoreId": "POxT3d6wFw48YWm1", "end": "1992-10-20T00:00:00Z", "excessStrategy": {"currency": "YHYYPaa9SAE85LFv", "method": "CURRENCY", "percentPerExp": 53}, "images": [{"as": "3KO0oEoRe4H5jYMc", "caption": "GFcwCZkJcEPnKR2Y", "height": 2, "imageUrl": "nPcoqofHYDJym8Nl", "smallImageUrl": "JpIVyVqyC60S7JRq", "width": 20}, {"as": "5dmXAHEZjdCnltFk", "caption": "qvTq4DwbOUBBGg4U", "height": 26, "imageUrl": "ORpk7mKQ4xU5a0RN", "smallImageUrl": "LGKpkVhRt5Bvt1ud", "width": 81}, {"as": "yZuCLQOqZsfuzCsW", "caption": "1zW5Zx5IJf0hWPQd", "height": 43, "imageUrl": "9g4yn8awEhFkaGdN", "smallImageUrl": "I5dyN6FUmDqMvq0K", "width": 68}], "localizations": {"7FsWGjsaagnxSj8J": {"description": "7cDKOq7wnCDpXoo3", "title": "ZZ7LGzRzArQFZi7X"}, "3IYlR9Sc3qkrQ2sN": {"description": "3AlCYn13m5y67F7w", "title": "KO3EGUxb1jsdxPkR"}, "TJurU8clNrIiCCS9": {"description": "fIALgkukOSuurHzF", "title": "5pwzTM4oOlGj7BUT"}}, "name": "E2cNuxOHUPfkijRd", "start": "1976-03-31T00:00:00Z", "tierItemId": "MswKmGBywIM3gBKh"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
