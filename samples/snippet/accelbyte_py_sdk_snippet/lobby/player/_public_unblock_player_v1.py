import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import public_unblock_player_v1
from accelbyte_py_sdk.api.lobby.models import ModelsUnblockPlayerRequest
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsUnblockPlayerRequest
user_id: str

Example: '{"userId": "VwTP7OCDZx14pDW4"}'
"""

result, error = public_unblock_player_v1(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
