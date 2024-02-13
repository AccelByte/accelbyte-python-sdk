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

Example: '{"autoClaim": true, "defaultLanguage": "0WCJ8bSeTcnuVTo2", "defaultRequiredExp": 82, "draftStoreId": "jct1cllqk4Xzqifr", "end": "1993-02-26T00:00:00Z", "excessStrategy": {"currency": "JurfkCebj0lMNfEI", "method": "NONE", "percentPerExp": 50}, "images": [{"as": "ilcXeh2zisTHjaTz", "caption": "wUiHYoNBWlgH6wgC", "height": 34, "imageUrl": "jYDsgG68BREu4jt9", "smallImageUrl": "nGxamlr9OE67K6Yb", "width": 64}, {"as": "Uw0cyCnbvG2b1pHc", "caption": "dziC4nR4WFxL2YQL", "height": 18, "imageUrl": "MSULWkiuzlPMNhfx", "smallImageUrl": "XRPTUpgeU49Dizyo", "width": 25}, {"as": "qPEwwAij3k9hG97z", "caption": "ODuCqGJmoFQQIx7Y", "height": 4, "imageUrl": "icIYmT27wKKne5mF", "smallImageUrl": "8WOFPBqlvvzyc5ZN", "width": 24}], "localizations": {"7tRGWiprHuR4JSPH": {"description": "SYl3XN5BBoXDpdAc", "title": "boNkZxg7FcvVMNEC"}, "bftoLYV6R3Aa39wz": {"description": "GclyruK30bPA5uMv", "title": "jVOmlna4hX1TDnkn"}, "g5w0aCUOa8vCsKi9": {"description": "g0SGztwfHVEav0Gz", "title": "qivu0GaEqJTXIPnP"}}, "name": "zqcudoa5n9Vmzqkz", "start": "1992-05-30T00:00:00Z", "tierItemId": "IIrAMirQhJHr5114"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
