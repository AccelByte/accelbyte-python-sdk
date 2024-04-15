import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_mute_user
from accelbyte_py_sdk.api.chat.models import ApiMuteUserRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ApiMuteUserRequest
duration: int
user_id: str

Example: '{"duration": 36, "userId": "baMMdqpXyu4KL8tI"}'
"""

result, error = public_mute_user(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
