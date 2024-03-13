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

Example: '{"crossplayEnabled": false, "currentPlatform": "iS3XZef4zz5Yl5nj", "data": {"vsLDlMXOMzlZV64e": {}, "wMiez8RFjaRQRapr": {}, "cimODqX5QiYpKA1U": {}}, "platforms": [{"name": "dUmKONIZTvRQkqGL", "userID": "q982A8d5a0MJWAPQ"}, {"name": "I3HYFOamPPyTnUlu", "userID": "orRfmrLt7ExMDG0D"}, {"name": "GESKwZoqqFMCEbcK", "userID": "dMqijGghPHYvoyJ2"}], "roles": ["nElplE3SyFOBEics", "Pn6UsBJixDghkEy9", "wMVYljdNlBHZxXR6"]}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
