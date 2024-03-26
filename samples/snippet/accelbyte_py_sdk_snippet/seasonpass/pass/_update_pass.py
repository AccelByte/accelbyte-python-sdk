import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.seasonpass import update_pass
from accelbyte_py_sdk.api.seasonpass.models import ErrorEntity
from accelbyte_py_sdk.api.seasonpass.models import PassInfo
from accelbyte_py_sdk.api.seasonpass.models import PassUpdate
from accelbyte_py_sdk.api.seasonpass.models import ValidationErrorEntity

"""
body:
Definition: PassUpdate
auto_enroll: bool
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

Example: '{"autoEnroll": true, "displayOrder": 6, "images": [{"as": "YhZMaawyUTfvECqh", "caption": "qgPpMyFEWMD4WG46", "height": 6, "imageUrl": "0AI5A3j8BG9y2ZG6", "smallImageUrl": "WieeDAREDBuigzN3", "width": 0}, {"as": "bW2sGhQP9FoGgN4K", "caption": "VipQGLlbxEYCMPrh", "height": 39, "imageUrl": "yaK4ePSNVgWtY9v3", "smallImageUrl": "KMbrb7U81ud6Cu2H", "width": 70}, {"as": "agxQ8ZHd2Wzovh69", "caption": "EzxdoggijgXOixPC", "height": 2, "imageUrl": "XGEoMOZM6IiloNFi", "smallImageUrl": "n7X0tmg9Ejh9rxu7", "width": 71}], "localizations": {"kyeZOKKV4RhVhOBU": {"description": "FFmoP6N6yuGWos8Q", "title": "kVufsNXWO84YHQJU"}, "2ieRCUkfnKSOSAv3": {"description": "gSY8xiGJIWkPLlUF", "title": "fJplf213zucB9F8q"}, "QmvQoBNkJ1biDy2Q": {"description": "BAdoZUTAkTGCkw8i", "title": "3w8kux35fUQ8GHe4"}}, "passItemId": "urlyZ0gjuJbJghmk"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
