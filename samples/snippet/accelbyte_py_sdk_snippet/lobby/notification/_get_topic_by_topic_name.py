import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_topic_by_topic_name
from accelbyte_py_sdk.api.lobby.models import ModelNotificationTopicResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_topic_by_topic_name(
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
