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

Example: '{"autoClaim": false, "defaultLanguage": "jNEAPFIpQ3tQrTnu", "defaultRequiredExp": 76, "draftStoreId": "kYdb8S0RQlOesirc", "end": "1982-08-30T00:00:00Z", "excessStrategy": {"currency": "rdlIvh8OhPwMamgx", "method": "NONE", "percentPerExp": 76}, "images": [{"as": "gntQ2wMvwwbP8VXc", "caption": "5p8TCZ6uk7tjJBHT", "height": 40, "imageUrl": "nWuOaWwkpZv9eCGP", "smallImageUrl": "ibnbyCsbJ5FQUEkr", "width": 31}, {"as": "Qk9UqBZgloqcyFbL", "caption": "gTtsQK4jhzQpSvrd", "height": 63, "imageUrl": "pqRS0C9JrFtNYO0f", "smallImageUrl": "QXX3lK2u1A5vIBxr", "width": 95}, {"as": "ZRRafbvu9Y7NBQVT", "caption": "kSCRfpmFFCs6rruM", "height": 39, "imageUrl": "eJ9n6576EC8N5xxQ", "smallImageUrl": "8FHmrWrl0DsU1wW2", "width": 38}], "localizations": {"g2aAv2tpBIIeXbAZ": {"description": "jDBB5uMClbnyhpk8", "title": "VDND76gurLWoFHxg"}, "bjxupxcypQw5JL2A": {"description": "OY54CZ60wUHIlZUA", "title": "kakc1idvUfnxIZPL"}, "Xufo7bPhDennb9KU": {"description": "Y61igfsD1C8Y9VyZ", "title": "G850taOdkpOw20bm"}}, "name": "f2mt0BElNYstnjpT", "start": "1984-12-05T00:00:00Z", "tierItemId": "GACtMKCe1KSSI23g"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
