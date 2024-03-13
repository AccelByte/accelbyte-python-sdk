import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import sync_native_friends
from accelbyte_py_sdk.api.lobby.models import ModelNativeFriendRequest
from accelbyte_py_sdk.api.lobby.models import ModelNativeFriendSyncResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: List[ModelNativeFriendRequest]
is_login: bool
platform_id: str
platform_token: str
psn_env: str

Example: '[{"isLogin": false, "platformId": "DyjPke1L9IkuZbaM", "platformToken": "RKWMewtdNQx2moJn", "psnEnv": "9l3TqhmzP3ONGhHV"}, {"isLogin": true, "platformId": "C8V5kJCe0LvW386D", "platformToken": "LUlRIkICnDLyTBxd", "psnEnv": "VTh7AVJTtEx0QlLe"}, {"isLogin": true, "platformId": "Ao7HIRbtR6bXYpSu", "platformToken": "hjY2iM4t8vMiqb7m", "psnEnv": "PZv3jfPg9P6w10vg"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
