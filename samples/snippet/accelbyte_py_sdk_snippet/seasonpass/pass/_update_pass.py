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

Example: '{"autoEnroll": false, "displayOrder": 36, "images": [{"as": "bbSMqtv2SMG8nwDn", "caption": "oLjfPnUGyKI4QHhz", "height": 97, "imageUrl": "YSE1UyojbkR3JbRu", "smallImageUrl": "fvxTeLAGWweUyNqz", "width": 70}, {"as": "oo5DemKjOoAwGOAv", "caption": "bTqczDTP8DUnldJC", "height": 16, "imageUrl": "VG9pCNkZr96d3FpX", "smallImageUrl": "PXUUrapWLVWGatqK", "width": 8}, {"as": "zkETQbIdXk8ncviE", "caption": "pCAbmODij2BKE6FZ", "height": 16, "imageUrl": "lYbHwngFMAzhw3zu", "smallImageUrl": "neXBQvdzuTIzIwgR", "width": 62}], "localizations": {"85wJJIKFETKRPlR8": {"description": "SR3wew4BExjwEgLb", "title": "CGBmQut5n7SH6P3v"}, "Pe1gZKV1gcFSOqv6": {"description": "9qjWkVw7XmFOc9YO", "title": "kWBUATAhXLfxYJ2B"}, "GHGtbVOs8B5suvvP": {"description": "LUEi8IJYC7AOQCyx", "title": "EaMamL4qPdoWXbew"}}, "passItemId": "Xp17qjiDvT7yOuoE"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
