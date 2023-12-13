import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_import
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryImportResult
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_profanity_import(
    file=file,
    action=action,
    show_result=show_result,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
