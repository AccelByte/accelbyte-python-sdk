import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_inbox_categories
from accelbyte_py_sdk.api.chat.models import ModelsGetInboxCategoriesResponseItem
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_inbox_categories(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
