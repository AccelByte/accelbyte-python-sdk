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

Example: '{"autoEnroll": true, "code": "32qjrS3IDD80icqg", "displayOrder": 31, "images": [{"as": "XMjwJ5iLS1JSsZ1i", "caption": "XN5ILNTzK7LM8hJO", "height": 49, "imageUrl": "AK4miGDAueVA2kli", "smallImageUrl": "cFbUsLbeUCeIXH5G", "width": 71}, {"as": "3hf5hue18pICfAnJ", "caption": "tvkR6QSakhstXVcV", "height": 71, "imageUrl": "m0Fwit8aAs17hmhB", "smallImageUrl": "ujAJRvUfDlhLpI5Y", "width": 86}, {"as": "evbviTchW0JFwpjA", "caption": "8VZmDSxyxmz1vx7S", "height": 70, "imageUrl": "hBc1QoS7ECbWed7k", "smallImageUrl": "sC55u6UXcCSqA79Y", "width": 77}], "localizations": {"PhJvKawZYrI0VnzL": {"description": "A3QJzpFmP2XkoHay", "title": "9QlqlAeZvwmvqWpv"}, "VWN8CXWq5yVSJzBf": {"description": "KR9cMS0nv7phYWLW", "title": "M99poAWeWywISm1c"}, "jYerz7UYfSpfaoKi": {"description": "G8qu5I9BjmcnPrWc", "title": "Jmya3BF4emHijOXm"}}, "passItemId": "Cd6IMw0TvQ7pfyq1"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
