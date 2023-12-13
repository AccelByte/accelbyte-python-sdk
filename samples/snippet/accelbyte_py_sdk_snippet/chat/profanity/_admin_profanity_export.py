import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_export
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryExport
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_profanity_export(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
