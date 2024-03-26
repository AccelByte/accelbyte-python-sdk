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

Example: '{"crossplayEnabled": true, "currentPlatform": "L9DR6dAfqzg2PljC", "data": {"RGeiEq0KGomPcacX": {}, "2CeOLWeINSqnF5Wm": {}, "HfYHbrpCKvJvH9fc": {}}, "platforms": [{"name": "YExwY8kiZlvcIj3S", "userID": "AbDShcgosPq7LX76"}, {"name": "M3YGz2uybvU9XjXA", "userID": "zJxKUbqqe2DBVIK5"}, {"name": "laca2kPE1OiuwMtt", "userID": "VQc3KI8FqcXUzHqp"}], "roles": ["558jwL5KBKTxUEPB", "7pI6x7TsSC6nN4PX", "WNx6QGJagqrHEhHD"], "simultaneousPlatform": "2CRuLcL6ADrE36UT"}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
