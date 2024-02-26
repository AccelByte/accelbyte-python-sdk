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

Example: '{"autoClaim": false, "defaultLanguage": "y5Yrw6lfSSKYh6ao", "defaultRequiredExp": 87, "draftStoreId": "niRWXqkgun2BsIiz", "end": "1971-08-23T00:00:00Z", "excessStrategy": {"currency": "rOPnNovYXiEYHOaz", "method": "CURRENCY", "percentPerExp": 76}, "images": [{"as": "wcaHWqEb1jyaGv7L", "caption": "U7jP0Bxh6iHTLAdz", "height": 32, "imageUrl": "cqYyoZriW0Bhji5Z", "smallImageUrl": "Kh9BMvfPyQ4NtLqt", "width": 45}, {"as": "d5PKIhIT5XTx27hs", "caption": "04AF5Srl9TlXrgvE", "height": 20, "imageUrl": "1z09mtMrYgD5vmS1", "smallImageUrl": "tu7GDjBS47LOoWwi", "width": 99}, {"as": "16rWTFID0RZZxLJq", "caption": "qop3yNdBvx6CN1pI", "height": 78, "imageUrl": "OeGjm96mWF61r4dl", "smallImageUrl": "NRUZWOwYDU2QdHfk", "width": 89}], "localizations": {"Q5CSUPmMTEctia3C": {"description": "IJnSMyXpS1KdPrnV", "title": "PDGOPuH0c0ng69Bd"}, "DMO4KU0MmV6qvKTG": {"description": "hYUfOKmCXCfUMdvW", "title": "BBCVCcygm4ricjR8"}, "PpMmGkzPSQyQHsQ1": {"description": "mLLpfyt0sLNhc9GQ", "title": "2hEtyWnzYZ9jU7iM"}}, "name": "pKgXl07owm0reyCk", "start": "1976-05-28T00:00:00Z", "tierItemId": "DgC4CBGsyfjBuD74"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
