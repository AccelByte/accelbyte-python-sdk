import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.chat import admin_get_all_config_v1
from accelbyte_py_sdk.api.chat.models import ModelsConfigList
from accelbyte_py_sdk.api.chat.models import RestapiErrorResponseBody

result, error = admin_get_all_config_v1(
    x_additional_headers=x_additional_headers,
)
