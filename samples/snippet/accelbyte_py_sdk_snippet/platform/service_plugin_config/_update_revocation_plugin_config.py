import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import update_revocation_plugin_config
from accelbyte_py_sdk.api.platform.models import RevocationPluginConfigInfo
from accelbyte_py_sdk.api.platform.models import RevocationPluginConfigUpdate
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

"""
body:
Definition: RevocationPluginConfigUpdate
app_config: AppConfig
Definition: AppConfig
    app_name: str
custom_config: BaseCustomConfig
Definition: BaseCustomConfig
    connection_type: str
    grpc_server_address: str
extend_type: str

Example: '{"appConfig": {"appName": "Rik9CMbDVqrvr57O"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "Q9qzpOeNRoBPRmw9"}, "extendType": "APP"}'
"""

result, error = update_revocation_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
