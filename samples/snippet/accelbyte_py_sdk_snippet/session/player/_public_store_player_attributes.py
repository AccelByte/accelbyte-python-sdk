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

Example: '{"crossplayEnabled": true, "currentPlatform": "tyc6UAloEsjILHxp", "data": {"2mzeW45J5bsCMvmW": {}, "MH8ZXZPgm5doDALJ": {}, "Qr7ipnIS6gcJLHa3": {}}, "platforms": [{"name": "SZOTu5hO6e0UwHUs", "userID": "kVkrkdvB0vlivcNt"}, {"name": "MkeZiSDjc7W4XF0i", "userID": "NG6troGBqVL497tc"}, {"name": "PpIGA3cniWaDP5sg", "userID": "tt77Q2n7JthXRy0H"}], "roles": ["CHUHK4Up7J2yl12E", "v4RXdMoaokiLR99K", "CXH2V7J9BrtqWTvj"]}'
"""

result, error = public_store_player_attributes(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
