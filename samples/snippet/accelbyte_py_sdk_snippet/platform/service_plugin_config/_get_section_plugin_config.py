import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_section_plugin_config
from accelbyte_py_sdk.api.platform.models import SectionPluginConfigInfo

result, error = get_section_plugin_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
