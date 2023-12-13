import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_config_v1
from accelbyte_py_sdk.api.chat.models import ModelsConfigResponse
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_config_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
