import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import sync_native_blocked_user
from accelbyte_py_sdk.api.lobby.models import ModelNativeUserBlockRequest
from accelbyte_py_sdk.api.lobby.models import ModelNativeUserBlockResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: List[ModelNativeUserBlockRequest]
platform_id: str
psn_env: str

Example: '[{"platformId": "lbpFeZCLBkksswic", "psnEnv": "6DG9n07x2m7By9KR"}, {"platformId": "2a8MjVwWan92Zznc", "psnEnv": "n16cH5oI1UqNUPMJ"}, {"platformId": "x7iQqyoUbNnQbiqy", "psnEnv": "niinvb7mgxDicYmE"}]'
"""

result, error = sync_native_blocked_user(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
