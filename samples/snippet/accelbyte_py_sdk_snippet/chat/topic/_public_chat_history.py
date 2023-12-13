import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import public_chat_history
from accelbyte_py_sdk.api.chat.models import ModelsChatMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = public_chat_history(
    topic=topic,
    limit=limit,
    order=order,
    start_created_at=start_created_at,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
