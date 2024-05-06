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

Example: '{"autoEnroll": true, "code": "8kpwaPFHfUit3EaR", "displayOrder": 49, "images": [{"as": "ivDqOjJkUVtq0jEm", "caption": "6g6rBMbub6LcMbxO", "height": 13, "imageUrl": "9gk4EnERVk1xatwl", "smallImageUrl": "6LwdMytJoYfjMMd3", "width": 8}, {"as": "JxBjld1o74HlkW15", "caption": "orYyY8twJ66NpZRp", "height": 54, "imageUrl": "xwmmG62zkYNLFo7E", "smallImageUrl": "NqKPclt8uuVMBrjO", "width": 47}, {"as": "dWJk8k7ob1rR3eHW", "caption": "6XZl3u0XnDGqCNgt", "height": 18, "imageUrl": "dkB0KhxGqBJdmasq", "smallImageUrl": "x0MMq7RC2NhFeGUL", "width": 64}], "localizations": {"QnIL5mCpxihKEJKD": {"description": "qiGmmtKEltFlV6bq", "title": "1MGdDawXANi5BpDt"}, "AdmOXR7U5Ti7Iznx": {"description": "ZtraS4KYh4imuxmL", "title": "mnvID5sw3qxDCpIV"}, "geIH0CqmBTQpXhe7": {"description": "C14d1XdNXV4dgj86", "title": "pjhxsL2Y8AJaqhhO"}}, "passItemId": "ZKvwB029o7r8R2sV"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
