import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import create_season
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import SeasonCreate
from accelbyte_py_sdk.api.seasonpass.models import SeasonInfo
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: SeasonCreate
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

Example: '{"autoClaim": false, "defaultLanguage": "oF7zx3Mgf3ot0TUc", "defaultRequiredExp": 25, "draftStoreId": "D0TmadRd1bzM0TPn", "end": "1986-07-15T00:00:00Z", "excessStrategy": {"currency": "BiqDkyGGOw1BCNHY", "method": "CURRENCY", "percentPerExp": 78}, "images": [{"as": "B7xJcr75hM4LcNNY", "caption": "XpmbRvhYcJJDUBHr", "height": 79, "imageUrl": "dTmxmRtPdW4OcfZk", "smallImageUrl": "uhU13fAsTyLnrFE6", "width": 20}, {"as": "X5OPOXvKQE8qY0EL", "caption": "4sSgc6wJ6WXRVlzZ", "height": 31, "imageUrl": "n6urEkPqkCF1rUNu", "smallImageUrl": "UwMtEk0R4YpkSzz6", "width": 22}, {"as": "KYDJxKg7WXPUT1Mp", "caption": "GID9uFniXmv9VLJj", "height": 39, "imageUrl": "lYVEFbviAxom4BH3", "smallImageUrl": "m6asGkCrsLefYLie", "width": 86}], "localizations": {"vUI7WrImRYC4u7K7": {"description": "Yz1sg7XJBGkxOKMU", "title": "LMnPNGkrFVKRkzUl"}, "ELy0GnuccqA5JQwK": {"description": "KBTyLWS2BtDCF2Ya", "title": "fEYaGHQJV7Vyw4tN"}, "Tz5hn8QEIaFIHa2o": {"description": "NslI3LieINYuXqgE", "title": "GqvOVj81ZHjoAHBV"}}, "name": "JuHCYMCpzAjb4NOO", "start": "1974-10-19T00:00:00Z", "tierItemId": "HUqJHmGRYEqIjFVQ"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
