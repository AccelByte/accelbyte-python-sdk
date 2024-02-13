import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_loot_box_plugin_config

result, error = delete_loot_box_plugin_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
