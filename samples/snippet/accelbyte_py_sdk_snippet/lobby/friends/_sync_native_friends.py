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

Example: '[{"isLogin": true, "platformId": "TY2ETNzRGM1lwPYl", "platformToken": "x5qsvyfz0Q1R1Cx2", "psnEnv": "fJQMvyEyOKtITXrz"}, {"isLogin": true, "platformId": "2IvIzANWD5tfY5oe", "platformToken": "U0wlimbP54AlXHYE", "psnEnv": "PBjOJYmYTHmffo55"}, {"isLogin": true, "platformId": "b1BkJIr7MVMKTMRV", "platformToken": "2CmliMkKOwzoK9DF", "psnEnv": "yvR7Ax1TBQnpRvlW"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
