import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import delete_playstation_iap_config

result, error = delete_playstation_iap_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
