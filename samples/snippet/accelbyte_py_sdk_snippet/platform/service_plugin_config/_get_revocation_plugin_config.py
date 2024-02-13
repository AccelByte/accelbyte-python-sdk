import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import get_revocation_plugin_config
from accelbyte_py_sdk.api.platform.models import RevocationPluginConfigInfo

result, error = get_revocation_plugin_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
