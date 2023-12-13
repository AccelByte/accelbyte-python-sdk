import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_get_chat_snapshot
from accelbyte_py_sdk.api.chat.models import ModelsChatSnapshots
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = public_get_chat_snapshot(
    chat_id=chat_id,
    topic=topic,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
