import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import delete_session_in_channel
from accelbyte_py_sdk.api.matchmaking.models import ResponseError
from accelbyte_py_sdk.api.matchmaking.models import ResponseErrorV1

result, error = delete_session_in_channel(
    channel_name=channel_name,
    match_id=match_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
