import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import block_handler

result, error = block_handler(
    x_additional_headers=x_additional_headers,
)
