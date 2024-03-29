import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_service_plugin_config
from accelbyte_py_sdk.api.platform.models import ServicePluginConfigInfo
from accelbyte_py_sdk.api.platform.models import ServicePluginConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: ServicePluginConfigUpdate
grpc_server_address: str

Example: '{"grpcServerAddress": "OgGzU7auw3W1Rcoh"}'
"""

result, error = update_service_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
