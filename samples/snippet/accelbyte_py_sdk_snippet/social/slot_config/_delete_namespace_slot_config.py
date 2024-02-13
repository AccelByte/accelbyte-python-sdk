import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.social import delete_namespace_slot_config

result, error = delete_namespace_slot_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
