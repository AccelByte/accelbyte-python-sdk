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

Example: '[{"isLogin": true, "platformId": "iqeIvq2WCW8N2phX", "platformToken": "WW7vmcjxu0y8NPjK", "psnEnv": "ShNHaK4j9LntJbhT"}, {"isLogin": false, "platformId": "WxpcG2seWuBKO02F", "platformToken": "5btE26098mLcYfat", "psnEnv": "2TD0yD9XcDsADcIQ"}, {"isLogin": false, "platformId": "yDibu4lz9qs82Lv2", "platformToken": "xkyCrwJein1mxUAl", "psnEnv": "zrygjo9qP9kvyoUv"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
