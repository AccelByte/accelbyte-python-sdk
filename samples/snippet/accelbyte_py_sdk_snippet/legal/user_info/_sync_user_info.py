import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.legal import sync_user_info

result, error = sync_user_info(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
