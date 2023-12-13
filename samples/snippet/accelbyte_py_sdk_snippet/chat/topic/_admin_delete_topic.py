import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_delete_topic
from accelbyte_py_sdk.api.chat.models import MessageActionDeleteTopicResult

result, error = admin_delete_topic(
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
