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

Example: '[{"isLogin": true, "platformId": "jz0yFGVGfsQK0cF5", "platformToken": "T3fUi1wYNc1Bov7R", "psnEnv": "dcIJRskxevZm7LWf"}, {"isLogin": true, "platformId": "ekczr9PyUAxkSt8j", "platformToken": "jkG8P8ndhuMbjwVT", "psnEnv": "KqqA3dG8ZStuq6V2"}, {"isLogin": true, "platformId": "sjSiNvx3e0M0X6zR", "platformToken": "XU4JSVo7O9fxBGvV", "psnEnv": "RFmyN7FuI2tfbdru"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
