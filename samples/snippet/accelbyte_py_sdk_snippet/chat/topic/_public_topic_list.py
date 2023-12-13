import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_topic_list
from accelbyte_py_sdk.api.chat.models import ModelsChatMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = public_topic_list(
    limit=limit,
    offset=offset,
    topic_type=topic_type,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
