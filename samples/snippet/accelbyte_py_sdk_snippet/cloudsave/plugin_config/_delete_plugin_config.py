import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.cloudsave import delete_plugin_config
from accelbyte_py_sdk.api.cloudsave.models import ModelsResponseError

result, error = delete_plugin_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
