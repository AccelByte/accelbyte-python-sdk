import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import uplod_loot_box_plugin_config_cert
from accelbyte_py_sdk.api.platform.models import LootBoxPluginConfigInfo
from accelbyte_py_sdk.api.platform.models import ValidationErrorEntity

result, error = uplod_loot_box_plugin_config_cert(
    file=file,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
