import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_channel_topic_list
from accelbyte_py_sdk.api.chat.models import ModelsChannelTopicWithPaginationResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_channel_topic_list(
    limit=limit,
    offset=offset,
    topic_name=topic_name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
