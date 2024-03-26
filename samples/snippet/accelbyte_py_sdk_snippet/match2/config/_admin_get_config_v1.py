import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import admin_get_config_v1
from accelbyte_py_sdk.api.match2.models import ConfigmodelsNamespaceConfig
from accelbyte_py_sdk.api.match2.models import ResponseError

result, error = admin_get_config_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
