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

Example: '{"autoEnroll": false, "code": "Re3VKcZjtlpoQxAE", "displayOrder": 21, "images": [{"as": "FP4vzaTUGACjHb92", "caption": "kAeng8PGIW0awwE6", "height": 26, "imageUrl": "CubzaCE2tkqKOADh", "smallImageUrl": "xPHIjPhk1b8UeabV", "width": 51}, {"as": "H0UZeNOs1FMVczTX", "caption": "609zHg2hU3XnOrXK", "height": 2, "imageUrl": "mY13EDLPZkfSZO13", "smallImageUrl": "LcZfbdqcByIqUyQc", "width": 36}, {"as": "pudQJtbCXcYGKkuT", "caption": "pClvoP1peWwzc9Of", "height": 13, "imageUrl": "RYb0xkwLGxMzCZzj", "smallImageUrl": "TN0eFpFGjKI1CP4v", "width": 34}], "localizations": {"KLT6sM7KpUnssxTN": {"description": "JvNfEETLCaHUkY4f", "title": "lSZSFnZC7NNmQFcN"}, "2PF6811XuTWHcIPh": {"description": "SkjcsozgQnqcklcL", "title": "V957up5S8ZcBNJM0"}, "9isREtv7leHSjvOG": {"description": "QhRus2oSeKjUd8Mg", "title": "rHF334Ou6SY0yS1x"}}, "passItemId": "xNW7d7ruPEbteUOw"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
