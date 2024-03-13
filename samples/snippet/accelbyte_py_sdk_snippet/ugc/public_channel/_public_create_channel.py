import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import public_create_channel
from accelbyte_py_sdk.api.ugc.models import ModelsChannelResponse
from accelbyte_py_sdk.api.ugc.models import ModelsPublicChannelRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsPublicChannelRequest
name: str

Example: '{"name": "vOJ6VNfzP9zvTj5U"}'
"""

result, error = public_create_channel(
    body=body,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
