import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import get_all_channels_handler
from accelbyte_py_sdk.api.matchmaking.models import ModelsGetChannelsResponse
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = get_all_channels_handler(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
