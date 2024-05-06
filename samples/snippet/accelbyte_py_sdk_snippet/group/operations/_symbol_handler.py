import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import symbol_handler

result, error = symbol_handler(
    x_additional_headers=x_additional_headers,
)
