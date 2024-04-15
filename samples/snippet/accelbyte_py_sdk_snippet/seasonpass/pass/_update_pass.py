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

Example: '{"autoEnroll": false, "displayOrder": 7, "images": [{"as": "jNPRjMvtdQiHYECo", "caption": "DYTa2nTlMVbjQ5dn", "height": 43, "imageUrl": "erKAa0RbHD9H5Rhe", "smallImageUrl": "ImPIj51fXp2pdLJa", "width": 8}, {"as": "0UYzs8KBbKXS8tV6", "caption": "ItBc1HjZNAMYGFlz", "height": 44, "imageUrl": "DkZYmrPQsVUGfI71", "smallImageUrl": "LJBuWcO4BYcskq1S", "width": 91}, {"as": "RBcBozQpTCLFgnXr", "caption": "QZfWsNfN4ESIkq87", "height": 85, "imageUrl": "zeGV8smNCwCXI08k", "smallImageUrl": "Sk7us0EAU5C6YouJ", "width": 19}], "localizations": {"PzXSoLDwv3aIrk03": {"description": "R8kxd0gMityr2VtD", "title": "nQPRUpOAPfpMQWPe"}, "LyfOUw31CZ7jzt4f": {"description": "Cvo9zQKcxwluhJme", "title": "vMA7VUFUgvrFxeq4"}, "3514Tzigx8c8zThJ": {"description": "X6A5pyzed7Unnh1S", "title": "gknBDtEtLxqog5yN"}}, "passItemId": "GU5f11myYChzz0SC"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
