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

Example: '{"userIds": ["auCE9Mkui1XXYg5Y", "uAZScjGAGP9AUeMH", "S2JKv9YvTrwghXoX"]}'
"""

result, error = admin_unsend_inbox_message(
    body=body,
    inbox=inbox,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
