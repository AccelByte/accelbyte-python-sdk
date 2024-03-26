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

Example: '{"appConfig": {"appName": "DtBjApm3L5P0xjyl"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "rBysOt3VZuzCRZ3r"}, "extendType": "CUSTOM"}'
"""

result, error = update_loot_box_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
