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

Example: '[{"isLogin": false, "platformId": "Csh0E5Yz7Q5domhb", "platformToken": "GK3fZBOopRLi2WZP", "psnEnv": "d3DZtn0W3jMQVUjp"}, {"isLogin": false, "platformId": "gyR9d0v8DH3S06PT", "platformToken": "l9i2eRYaDcC2rrQr", "psnEnv": "VkAvCjbMOydxa3Hp"}, {"isLogin": true, "platformId": "qeT3Ur2PB5TjSt88", "platformToken": "5BQlMVCtKdKzq1dU", "psnEnv": "RSgtVhwDi0BeI7hW"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
