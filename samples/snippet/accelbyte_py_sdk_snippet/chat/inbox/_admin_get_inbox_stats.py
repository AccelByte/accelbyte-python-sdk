import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_inbox_stats
from accelbyte_py_sdk.api.chat.models import ModelsGetInboxStatsResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_inbox_stats(
    message_id=message_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
