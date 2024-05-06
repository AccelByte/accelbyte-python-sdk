import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_loot_box_plugin_config
from accelbyte_py_sdk.api.platform.models import LootBoxPluginConfigInfo
from accelbyte_py_sdk.api.platform.models import LootBoxPluginConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: LootBoxPluginConfigUpdate
app_config: AppConfig
Definition: AppConfig
    app_name: str
custom_config: BaseCustomConfig
Definition: BaseCustomConfig
    connection_type: str
    grpc_server_address: str
extend_type: str

Example: '{"appConfig": {"appName": "eaUvJrR7MhrrqVDY"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "jR7gykJaMC7sq9vM"}, "extendType": "APP"}'
"""

result, error = update_loot_box_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
