import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_section_plugin_config
from accelbyte_py_sdk.api.platform.models import SectionPluginConfigInfo
from accelbyte_py_sdk.api.platform.models import SectionPluginConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: SectionPluginConfigUpdate
app_config: AppConfig
Definition: AppConfig
    app_name: str
custom_config: BaseCustomConfig
Definition: BaseCustomConfig
    connection_type: str
    grpc_server_address: str
extend_type: str

Example: '{"appConfig": {"appName": "TQget0CTceVKiWUz"}, "customConfig": {"connectionType": "INSECURE", "grpcServerAddress": "nsT2SnZVZ6AYqhtc"}, "extendType": "CUSTOM"}'
"""

result, error = update_section_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
