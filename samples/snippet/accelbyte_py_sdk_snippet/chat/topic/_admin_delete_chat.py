import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_delete_chat
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_delete_chat(
    chat_id=chat_id,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
