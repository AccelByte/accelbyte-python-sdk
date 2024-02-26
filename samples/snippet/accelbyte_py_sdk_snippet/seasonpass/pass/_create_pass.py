import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import create_pass
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import PassCreate
from accelbyte_py_sdk.api.seasonpass.models import PassInfo
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: PassCreate
auto_enroll: bool
code: str
display_order: int
images: List[Image]
Definition: List[Image]
    as_: str
    caption: str
    height: int
    image_url: str
    small_image_url: str
    width: int
localizations: Dict[str, Localization]
pass_item_id: str

Example: '{"autoEnroll": false, "code": "undqvM48CiR7fxei", "displayOrder": 38, "images": [{"as": "U4mNcg57LFSECEVv", "caption": "sxDiNxokfTz8TKCI", "height": 19, "imageUrl": "UGGtax117xgQTwQg", "smallImageUrl": "BXVwsQw6Cs4Jty6h", "width": 94}, {"as": "lH3VIVJdujl3hE9r", "caption": "OogjsF1JkHgwNUjB", "height": 83, "imageUrl": "ZZ4LskY8JBETdgwb", "smallImageUrl": "tK8JnxMKp4leGFtW", "width": 75}, {"as": "ni17t8hb6LXtThvR", "caption": "sPge3gtaApfUUmRH", "height": 81, "imageUrl": "HNezEnntRototnTE", "smallImageUrl": "el0b1j2d47X3VrLB", "width": 35}], "localizations": {"HUggEefkPt5d8Kfn": {"description": "CKCOb0yEElV31q8z", "title": "9wnzL5OK9cCz1MfB"}, "dsff9HTMZhXn579v": {"description": "1AAQFRZvbjM2qq23", "title": "TynMAWsUFkDSNNS7"}, "zpwvnTYEFwlgiXio": {"description": "MsCXfE9uBxXpafuF", "title": "Khnic3BwEIGzFIPg"}}, "passItemId": "JlTrVXIuwKWNlmFz"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
