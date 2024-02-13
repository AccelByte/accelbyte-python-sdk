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

Example: '{"autoEnroll": true, "displayOrder": 6, "images": [{"as": "4cugO9AhjN6MmzHo", "caption": "Wb2x2esrJuhtXXCt", "height": 80, "imageUrl": "NSdPpPXbRgAGZ3H7", "smallImageUrl": "pIxIVXMNTRBhuxmP", "width": 86}, {"as": "SBqdfr9ZDQ2V5UlC", "caption": "qUOOxtTghfSkBlQ8", "height": 14, "imageUrl": "a6nklOqWiQa6V2sP", "smallImageUrl": "IyuEcmH36Y6xlqCw", "width": 68}, {"as": "1a9C08iN8dIVs26k", "caption": "5E0LkGRccfJ9kThw", "height": 83, "imageUrl": "DeZyCnsZVg3LZ7yn", "smallImageUrl": "raJBgmutelYQNceo", "width": 40}], "localizations": {"8hbVXEUZJkJHKYok": {"description": "CqLitpqE7TfWJAUi", "title": "tNYNwuAhtuR21ToW"}, "DsMEnsu3aQGFvLP8": {"description": "faLFYZSk96RDnR2Z", "title": "CSp5CZEIPqEex3BE"}, "O4Wn7k1xQCdcYYaT": {"description": "Aad903ID9RLrI2UP", "title": "WNFHx6ysVZZiIZFn"}}, "passItemId": "6kRzu91TQWSmqctu"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
