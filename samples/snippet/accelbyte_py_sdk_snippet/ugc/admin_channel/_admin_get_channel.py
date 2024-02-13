import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_get_channel
from accelbyte_py_sdk.api.ugc.models import ModelsPaginatedGetChannelResponse
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_get_channel(
    user_id=user_id,
    limit=limit,
    name=name,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
