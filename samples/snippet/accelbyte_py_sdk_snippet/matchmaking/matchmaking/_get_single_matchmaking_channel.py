import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_single_matchmaking_channel
from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelV1
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = get_single_matchmaking_channel(
    channel_name=channel_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
