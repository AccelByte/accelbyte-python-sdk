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

Example: '{"appConfig": {"appName": "ZTSzwovFEPwGuxf5"}, "customConfig": {"connectionType": "TLS", "grpcServerAddress": "rbQswVPL33qFfbET"}, "extendType": "APP"}'
"""

result, error = update_section_plugin_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
