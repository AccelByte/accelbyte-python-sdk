import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_profanity_group
from accelbyte_py_sdk.api.chat.models import ModelsDictionaryGroup
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_profanity_group(
    limit=limit,
    offset=offset,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
