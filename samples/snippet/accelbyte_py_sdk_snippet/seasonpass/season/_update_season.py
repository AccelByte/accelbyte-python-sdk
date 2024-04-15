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

Example: '{"autoClaim": true, "defaultLanguage": "LUXOdzr8wImMZ5Qc", "defaultRequiredExp": 52, "draftStoreId": "HfkkBWQVB4JsNRIP", "end": "1985-12-03T00:00:00Z", "excessStrategy": {"currency": "aOMJ8XiXwU28sNQv", "method": "NONE", "percentPerExp": 28}, "images": [{"as": "Qa1aBaeP43J1LnmB", "caption": "qvLlbYsKod5m8XUV", "height": 31, "imageUrl": "czv1krgYLto6rIUq", "smallImageUrl": "QdCu1mQcZ2MaN2Bi", "width": 98}, {"as": "j3EMzlcnuvxoTomv", "caption": "tpQSsvkklFrmRPBE", "height": 39, "imageUrl": "pVunAnVWckfNeSf3", "smallImageUrl": "8wAx4bQvEvQj89Nf", "width": 48}, {"as": "rPpeL9mPuT1qkhxX", "caption": "cEp4DfVHsfBix6N8", "height": 39, "imageUrl": "40zJRzKeU4TfBguo", "smallImageUrl": "4oNmqu8vy3o1F9dA", "width": 93}], "localizations": {"yo1EdJHkruPMESit": {"description": "YDx32ONUoQF8lxxT", "title": "k8OCDSKlkMbnNodN"}, "PyH5pxULkRmBhB6c": {"description": "yJqgZo36kGxqHpz4", "title": "QyJnVT1AXpp6jcDX"}, "bWtcXBi6iXkJYdQf": {"description": "owedH0OftAPAZuVp", "title": "ZI97zNfONOPaIS2B"}}, "name": "n8ccFhfedH31kmte", "start": "1986-01-31T00:00:00Z", "tierItemId": "1pCe4nFHXfHc2IKv"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
