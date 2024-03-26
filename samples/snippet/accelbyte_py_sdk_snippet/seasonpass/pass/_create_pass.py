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

Example: '{"autoEnroll": true, "code": "mTfvMHshSRwHksAb", "displayOrder": 33, "images": [{"as": "3bw1dnb064P0EgzJ", "caption": "55xl1jHBDVUxy972", "height": 90, "imageUrl": "wU2RkN0rwrNxIPl8", "smallImageUrl": "HB1Axd8S7oY5NVYw", "width": 23}, {"as": "c07owl2NIPY7csw5", "caption": "94KtVgdymUoWKarx", "height": 18, "imageUrl": "aAJph1ooiY7lwFDE", "smallImageUrl": "80jiL6D69AX9s5gX", "width": 58}, {"as": "il2jrikTfxZ171R5", "caption": "QWXOQ27rxF15fZZW", "height": 15, "imageUrl": "cJgukH030SyjRJQS", "smallImageUrl": "ebBuu5Q5xpjEpUqf", "width": 3}], "localizations": {"uDecljo4zB0xE4JB": {"description": "OFdw1DNV1UgRjiHg", "title": "Iy7W8FhqJ46B9Yzv"}, "X6nKyIOKNP3lEMGS": {"description": "Oj2HDXwTd0rPxGYV", "title": "mImc7i0uoo4Q9H3E"}, "8tkIzDTwpgKIXQEK": {"description": "Pq710K3YgnXtF5JE", "title": "XwBKBtmHXCGvDR2r"}}, "passItemId": "H2O116hynNXzz2bF"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
