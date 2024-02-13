import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import public_get_all_matchmaking_channel
from accelbyte_py_sdk.api.matchmaking.models import ModelsChannelV1
from accelbyte_py_sdk.api.matchmaking.models import ResponseError

result, error = public_get_all_matchmaking_channel(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
