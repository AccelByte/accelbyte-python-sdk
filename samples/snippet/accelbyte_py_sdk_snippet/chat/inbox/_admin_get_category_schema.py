import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_category_schema
from accelbyte_py_sdk.api.chat.models import ModelsJSONSchemaType
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_category_schema(
    category=category,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
