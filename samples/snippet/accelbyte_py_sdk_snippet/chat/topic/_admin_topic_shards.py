import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_topic_shards
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_topic_shards(
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
