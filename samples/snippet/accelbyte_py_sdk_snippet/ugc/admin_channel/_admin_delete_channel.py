import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ugc import admin_delete_channel
from accelbyte_py_sdk.api.ugc.models import ResponseError

result, error = admin_delete_channel(
    channel_id=channel_id,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
