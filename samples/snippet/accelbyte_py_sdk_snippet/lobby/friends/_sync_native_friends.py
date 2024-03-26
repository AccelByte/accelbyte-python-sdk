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

Example: '[{"isLogin": false, "platformId": "Bu7xERDHO0Kotqd1", "platformToken": "eJEW0CSg2EYc1EqA", "psnEnv": "IS2U7YX1jydho6wu"}, {"isLogin": false, "platformId": "0Yxfy4UJgksAwFlK", "platformToken": "dyy2fJrO24HWddZd", "psnEnv": "8Dc2NfTNVk8gFx9E"}, {"isLogin": true, "platformId": "BAYS3xYKy7NsbdLd", "platformToken": "wMiH5Y10HTTBbR8J", "psnEnv": "ajkEwrjfOb5LzgcO"}]'
"""

result, error = sync_native_friends(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
