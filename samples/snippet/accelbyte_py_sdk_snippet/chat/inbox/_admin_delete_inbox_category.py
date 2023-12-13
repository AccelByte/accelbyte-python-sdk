import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_delete_inbox_category
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_delete_inbox_category(
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
