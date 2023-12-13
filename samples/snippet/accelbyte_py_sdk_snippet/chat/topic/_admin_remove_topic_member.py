import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_remove_topic_member
from accelbyte_py_sdk.api.chat.models import MessageActionAddUserToTopicResult

result, error = admin_remove_topic_member(
    topic=topic,
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
