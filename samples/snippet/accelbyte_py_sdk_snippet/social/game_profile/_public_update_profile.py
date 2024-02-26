import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import public_update_profile
from accelbyte_py_sdk.api.social.models import ErrorEntity
from accelbyte_py_sdk.api.social.models import GameProfileInfo
from accelbyte_py_sdk.api.social.models import GameProfileRequest
from accelbyte_py_sdk.api.social.models import ValidationErrorEntity

"""
body:
Definition: GameProfileRequest
achievements: List[str]
attributes: Dict[str, str]
avatar_url: str
inventories: List[str]
label: str
profile_name: str
statistics: List[str]
tags: List[str]

Example: '{"achievements": ["XFSgRY4MqcE34rYU", "QRu6KS6DSlHFupfR", "GzWze6YmN9phOUQ8"], "attributes": {"VqeyjiwtSQiccVwk": "AOgYTVRCIc1s5aAU", "dmQ1CTQeNh5YfIpt": "uAKiXL7GgumPWZjl", "niC4GYIlefIh9DgT": "pXmByN4wJDQg8FoI"}, "avatarUrl": "pUSBXGgdDssy57L0", "inventories": ["nPCVxBLgBdaQubtI", "iuhQTIUVGpzueGsu", "OBKC47DNO42BERxP"], "label": "OphsazDF3mQHKlfi", "profileName": "2UMYoR7oTQSTkYex", "statistics": ["0rZFR0p9DsORXVL6", "Gw3c7OzsjRfW6yRu", "EaOgCgBLjLr97LUx"], "tags": ["1GENdwX8ZZl7O0Ct", "AJFBojcOirVLYunk", "tZm855MYIqKqLz0a"]}'
"""

result, error = public_update_profile(
    profile_id=profile_id,
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
