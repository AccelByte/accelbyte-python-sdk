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
simultaneous_platform: str

Example: '{"crossplayEnabled": true, "currentPlatform": "v2eTjxW4zHkT5jr5", "data": {"tGDtCo74e1wkdyc3": {}, "2etR33i3BFtfTSBl": {}, "gawO9ztr3aVmzAvV": {}}, "platforms": [{"name": "gKjYMD5x3HHP6KjL", "userID": "FoOU9QfSNsSA6o7y"}, {"name": "cS4p9TCKAueGeVRH", "userID": "tNWosCJkOsdxypxc"}, {"name": "4tDV7Yk5RySLTmwe", "userID": "QnZq7IeCyYbx9QJp"}], "roles": ["jO76fovN2t9XPXDp", "woCZayKej7CWzZfl", "q4yBicqz9UhxXR7l"], "simultaneousPlatform": "JzZiGrUCwaxsWKJv"}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
