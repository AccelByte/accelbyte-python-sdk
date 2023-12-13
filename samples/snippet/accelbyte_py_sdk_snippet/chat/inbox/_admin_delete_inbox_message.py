import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_delete_inbox_message
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_delete_inbox_message(
    message_id=message_id,
    force=force,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
