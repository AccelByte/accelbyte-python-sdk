import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_create_channel
from accelbyte_py_sdk.api.ugc.models import ModelsChannelRequest
from accelbyte_py_sdk.api.ugc.models import ModelsChannelResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsChannelRequest
id_: str
name: str

Example: '{"id": "wTT0XFJNjJqGfunW", "name": "fVWX1dFJeKLZBrTK"}'
"""

result, error = admin_create_channel(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
