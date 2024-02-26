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

Example: '{"autoEnroll": false, "displayOrder": 100, "images": [{"as": "xz4emC9G4aHhdWAI", "caption": "atRjwkyTR7FTm3Hz", "height": 33, "imageUrl": "OlK52VT1DHCL6nDt", "smallImageUrl": "io14bZ0vXEKzUj7O", "width": 17}, {"as": "g8ziHZNPMuMa6iiN", "caption": "ocsV8nHihqsEypko", "height": 1, "imageUrl": "rqQwUMrSWLelMoSL", "smallImageUrl": "H5px3PXZ6sKyoTlP", "width": 72}, {"as": "cpd9sJvjSTYpfNMG", "caption": "NWBOkS5BiQ42c7EX", "height": 92, "imageUrl": "adhAY51e1tMFvTfa", "smallImageUrl": "lwHLHBYbDbMyv8ZW", "width": 53}], "localizations": {"uXiTPZVfn1TskGEm": {"description": "D70loYJ8kQ7y5k5V", "title": "ODUzXeg4u8gKg7Zn"}, "3kLDOUBmiALZxS1G": {"description": "SZgJ6axyGEgxPY1N", "title": "UCjlzxGGmNAU0Dwj"}, "SLNeEZMFPoniqyEo": {"description": "XCSWQxqK2sIDGcPt", "title": "EnfzjNoJGmgDpQ8M"}}, "passItemId": "ZwzklmMrJSUlmhoM"}'
"""

result, error = update_pass(
    code=code,
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
