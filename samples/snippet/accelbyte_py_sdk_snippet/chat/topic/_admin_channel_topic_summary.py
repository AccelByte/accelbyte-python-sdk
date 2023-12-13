import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_channel_topic_summary
from accelbyte_py_sdk.api.chat.models import ModelsChannelTopicSummaryResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_channel_topic_summary(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
