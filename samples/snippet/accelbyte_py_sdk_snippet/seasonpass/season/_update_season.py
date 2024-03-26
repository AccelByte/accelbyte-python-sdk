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

Example: '{"autoClaim": false, "defaultLanguage": "p1rvmuZWqlwBlLJ6", "defaultRequiredExp": 10, "draftStoreId": "LVxb6evPlXV3PylG", "end": "1988-06-07T00:00:00Z", "excessStrategy": {"currency": "dluD6dEPDfPBz5wx", "method": "NONE", "percentPerExp": 36}, "images": [{"as": "UCIQ8KxiVys8hJcq", "caption": "QDrM7dqqzhDqciw7", "height": 9, "imageUrl": "H0wmjyLoElJL1CSy", "smallImageUrl": "khw3o3waMRQSavva", "width": 13}, {"as": "6enPgiNSjWPRtIE6", "caption": "J9Ro260eBPSO5Y2m", "height": 17, "imageUrl": "Mu88DapN2E9vX5d0", "smallImageUrl": "i50OMqfTDU9jHwqD", "width": 7}, {"as": "xgxGEqMkmxXsU8Jd", "caption": "rbQLt7pj3Yj7HPNw", "height": 68, "imageUrl": "G9gp2Jc0IAgrOBuF", "smallImageUrl": "fpXioI0D1JOXcFJ1", "width": 3}], "localizations": {"J2L1mBhurhoJUQRN": {"description": "E3mwbTMb9D63H4rD", "title": "qWHCqiFANXhF57u8"}, "Tr9cYk1Vt6lAmaPY": {"description": "fs1lv512t3uFfJih", "title": "PJ07w8U4qXAt2tGo"}, "6Z1IppDv4LJa0PaO": {"description": "pKdptoynP30UltEf", "title": "zW5KDSyClF9aofLL"}}, "name": "4EuGkrC0un7m5J6B", "start": "1975-03-09T00:00:00Z", "tierItemId": "3aGm63MlcrMmWu4d"}'
"""

result, error = update_season(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
