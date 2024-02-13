import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import get_channels
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetChannelResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = get_channels(
    user_id=user_id,
    limit=limit,
    name=name,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
