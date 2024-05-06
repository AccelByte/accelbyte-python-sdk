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

Example: '{"autoEnroll": false, "displayOrder": 79, "images": [{"as": "UugVovmZVcYMU1RV", "caption": "OT7uGfzIvblTdohr", "height": 49, "imageUrl": "JyIZSXdqWG4kFsZo", "smallImageUrl": "K0R9OFo8GamqLpAT", "width": 23}, {"as": "acaHJyuo3YhxnouM", "caption": "pwy1VZO9AeZ6Lge7", "height": 83, "imageUrl": "zuBkj4ZjG5B5RnVR", "smallImageUrl": "H998QliRnrRjtBpB", "width": 15}, {"as": "u4YFR5WayCCyqHTq", "caption": "zZglntR9Enb5r72p", "height": 39, "imageUrl": "3DToUmdHL4HpVzXi", "smallImageUrl": "GCKVlcFfBgnyIQr2", "width": 67}], "localizations": {"dtvqWzhQKhyVVrcB": {"description": "40gfJxIgq7SSr8kO", "title": "Cr8a9Ws0UdveeuVd"}, "75TymrhWyROgmGvb": {"description": "wFyBuFIlcdpllpu2", "title": "HEPe5j6KZHC8aqBZ"}, "v5TF7Ff0yYaEbd69": {"description": "UYqe6Rz3WleRRX3t", "title": "jL1OGoOjpp0ZhAIo"}}, "passItemId": "LQiRjRAvsCYmPYKp"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
