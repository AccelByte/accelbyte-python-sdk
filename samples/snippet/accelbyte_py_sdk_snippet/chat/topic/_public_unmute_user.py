import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_unmute_user
from accelbyte_py_sdk.api.chat.models import ApiUnmuteUserRequest
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ApiUnmuteUserRequest
user_id: str

Example: '{"userId": "P16xTxhnYY1y8Tko"}'
"""

result, error = public_unmute_user(
    body=body,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
