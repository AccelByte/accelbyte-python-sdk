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

Example: '{"autoClaim": false, "defaultLanguage": "vcqQhV78WQGj2zsa", "defaultRequiredExp": 41, "draftStoreId": "3RUiAu67zxn70egT", "end": "1994-07-01T00:00:00Z", "excessStrategy": {"currency": "P1LkEn1ChUScNDJm", "method": "NONE", "percentPerExp": 32}, "images": [{"as": "bPvXmIJDq2jTZ9Je", "caption": "UJR8FEBlaqlZlIfl", "height": 57, "imageUrl": "iw6e4cFBfcxVbrZ1", "smallImageUrl": "6HsHpglavq0Wr5VR", "width": 65}, {"as": "2tvVz0M2WWgVtLCe", "caption": "kS1ykccc17Lk1Gub", "height": 90, "imageUrl": "R20gPXlpDds9VswG", "smallImageUrl": "0r2WZhfezlAvzBEv", "width": 52}, {"as": "YKIO4Yit15oFpSJB", "caption": "oagbpraueQpUKSq3", "height": 56, "imageUrl": "eDiBJ5JcP5q2pdlS", "smallImageUrl": "XAJuQZfK9Kv7FkBv", "width": 48}], "localizations": {"WT83i1JVTgXCf0PL": {"description": "RNFQ3dQjnel7jpuU", "title": "1CAmxLerTULGEOMt"}, "hxLO7a6SZOAaQrBK": {"description": "dN9sQZBsgDWBCtx7", "title": "pRDjGtRESOkr4ZFe"}, "PP9PCejdsamcP3sN": {"description": "iz8ZhyfhFZ5sT0WW", "title": "VaLAPLpZmLIyD3cT"}}, "name": "ocM1CPMlAWW3SE6T", "start": "1980-04-04T00:00:00Z", "tierItemId": "Uhjn6C0rcYYUrGEK"}'
"""

result, error = create_season(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
