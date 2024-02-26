import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_unsend_inbox_message
from accelbyte_py_sdk.api.chat.models import ModelsUnsendInboxMessageRequest
from accelbyte_py_sdk.api.chat.models import ModelsUnsendInboxMessageResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

"""
body:
Definition: ModelsUnsendInboxMessageRequest
user_ids: List[str]

Example: '{"userIds": ["tlofj8BlOP3sGfPj", "ByI7OsMlEAnyeapN", "nUiAo9GwPn4vCYli"]}'
"""

result, error = admin_unsend_inbox_message(
    body=body,
    inbox=inbox,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
