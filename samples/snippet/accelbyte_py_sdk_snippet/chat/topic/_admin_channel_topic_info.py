import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_channel_topic_info
from accelbyte_py_sdk.api.chat.models import ModelsChannelTopicResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_channel_topic_info(
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
