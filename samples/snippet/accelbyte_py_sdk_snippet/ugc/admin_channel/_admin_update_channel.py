import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_update_channel
from accelbyte_py_sdk.api.ugc.models import ModelsChannelResponse
from accelbyte_py_sdk.api.ugc.models import ModelsUpdateChannelRequest
from accelbyte_py_sdk.api.ugc.models import ResponseError

"""
body:
Definition: ModelsUpdateChannelRequest
name: str

Example: '{"name": "AAt7kEMmrNTrt7KG"}'
"""

result, error = admin_update_channel(
    body=body,
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
