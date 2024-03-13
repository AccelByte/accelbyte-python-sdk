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

Example: '{"autoClaim": false, "defaultLanguage": "3Dv29By1v5C4Afbl", "defaultRequiredExp": 19, "draftStoreId": "Spn44izkDC7JDTFf", "end": "1974-10-26T00:00:00Z", "excessStrategy": {"currency": "gqOrMYkxNxtVNyb0", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "buRLtOoXaP321Y7r", "caption": "DJc1UuQhTkt9Uce5", "height": 21, "imageUrl": "a0aunqvZ4q0k1yFL", "smallImageUrl": "Nu2JhLnbwIGSKnWw", "width": 50}, {"as": "GcEFqHDdLqcnOrSy", "caption": "YSO42Gnf2Qbd5i9U", "height": 76, "imageUrl": "2b3rMNuh71naYUwg", "smallImageUrl": "HSEkpK4Y8D1mbLEk", "width": 42}, {"as": "4HN6oQcCpXI7qwS1", "caption": "btS17TtS4swYdtBk", "height": 25, "imageUrl": "DYCSegl2klmQdFhW", "smallImageUrl": "iGpqldlwDdZCNesf", "width": 29}], "localizations": {"4Kz4XLRTzvByJHIv": {"description": "cztxqIDSECCGGPkI", "title": "r0hGf2XVpET5POCu"}, "VriB00hm5ktKkBbJ": {"description": "PyBjC6N3wcmD176O", "title": "nJLzLKOdNgTM6bx0"}, "TXRKghiT5lPUFeEl": {"description": "gNu8HsGjwlZBjaDs", "title": "3SjVLQMunWSXPxZB"}}, "name": "49Ku6xDof86MQiWw", "start": "1987-03-06T00:00:00Z", "tierItemId": "Nm0F17LSIj8bw65d"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
