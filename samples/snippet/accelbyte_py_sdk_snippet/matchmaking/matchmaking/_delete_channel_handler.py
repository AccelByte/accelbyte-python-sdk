import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import delete_channel_handler
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = delete_channel_handler(
    channel=channel,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
