import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import public_store_player_attributes
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesRequestBody
from accelbyte_py_sdk.api.session.models import ApimodelsPlayerAttributesResponseBody
from accelbyte_py_sdk.api.session.models import ResponseError

"""
body:
Definition: ApimodelsPlayerAttributesRequestBody
crossplay_enabled: bool
current_platform: str
data: Dict[str, Any]
platforms: List[ModelsUserPlatformInfo]
Definition: List[ModelsUserPlatformInfo]
    name: str
    user_id: str
roles: List[str]

Example: '{"crossplayEnabled": false, "currentPlatform": "hhatsAiKs2tEDaeQ", "data": {"3RLRukqjVXYqi1cu": {}, "gLnEIsfkL5xF48ru": {}, "EwvXRAPw4Y0bNRhz": {}}, "platforms": [{"name": "pZPbBI2Yjg7BkwZo", "userID": "JGFyZqEk3dlpcTiL"}, {"name": "0zizBPV4goLTFQfS", "userID": "xBoLHcyUlUYASKYK"}, {"name": "beT0EI1sZy72q4jA", "userID": "3RNJjM8fssVP5mY6"}], "roles": ["0sUimFsCI65sWQwS", "Pa0rkKIkXyVtXMkF", "5rHeCumGUflaQX4Z"]}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
