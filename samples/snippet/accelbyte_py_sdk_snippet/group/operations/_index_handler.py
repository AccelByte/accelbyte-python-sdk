import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import index_handler

result, error = index_handler(
    x_additional_headers=x_additional_headers,
)
