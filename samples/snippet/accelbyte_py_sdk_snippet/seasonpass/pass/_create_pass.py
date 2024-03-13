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

Example: '{"autoEnroll": false, "code": "MNdqoOJDLajsl3Z8", "displayOrder": 3, "images": [{"as": "jBduMoMLAzs2fGjA", "caption": "kWNdD8VsGjJvuo6O", "height": 79, "imageUrl": "fZDid0iMsjLJ1JaR", "smallImageUrl": "2pHVHLBp3g7TkV8G", "width": 74}, {"as": "d8naewNjiROrla6w", "caption": "mY5lUP2jaBwqyCxE", "height": 18, "imageUrl": "8AlsEWMMEASHJi5k", "smallImageUrl": "AiYMqs9zdx3vjTTB", "width": 33}, {"as": "z8kpQbw2D5ysF0Nb", "caption": "u5PqmjBFg6Vez7yh", "height": 91, "imageUrl": "DkUypz9w6VrZKGbt", "smallImageUrl": "0JzLUnTCaIkL4elf", "width": 1}], "localizations": {"lBanQDXkt19lQ4MT": {"description": "EiEwKZFKjQPCbf9f", "title": "xIxWDAk3OUsh8NEQ"}, "qvngWjHJcd6WS2Jy": {"description": "pXFwDYQ2lNwATXrs", "title": "KDpSQqG1Cd7sVADD"}, "fi6FfRV17tz70zkP": {"description": "p712oNpZSr55J2k8", "title": "2x32Y63FBzwhvS2u"}}, "passItemId": "kCBEsK0hv81y5PAH"}'
"""

result, error = create_pass(
    season_id=season_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
