import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_service_plugin_config
from accelbyte_py_sdk.api.platform.models import ServicePluginConfigInfo

result, error = get_service_plugin_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
