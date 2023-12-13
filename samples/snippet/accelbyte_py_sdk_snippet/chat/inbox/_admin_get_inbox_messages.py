import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_inbox_messages
from accelbyte_py_sdk.api.chat.models import ModelsGetInboxMessagesResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_inbox_messages(
    active_only=active_only,
    end_created_at=end_created_at,
    limit=limit,
    message_id=message_id,
    offset=offset,
    order=order,
    scope=scope,
    start_created_at=start_created_at,
    status=status,
    transient=transient,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
