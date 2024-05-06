import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_filter_chat_message
from accelbyte_py_sdk.api.chat.models import ModelsMessageRequest
from accelbyte_py_sdk.api.chat.models import ModelsMessageResultWithAttributes
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsMessageRequest
message: str
timestamp: int
topic_id: str
topic_type: str
user_id: str

Example: '{"message": "KcuNJAaavxCGFZ5J", "timestamp": 100, "topicId": "D3uyusIYOx9PBKys", "topicType": "PERSONAL", "userId": "1hciGxbqns43IVcM"}'
"""

result, error = admin_filter_chat_message(
    body=body,
    detail=detail,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
