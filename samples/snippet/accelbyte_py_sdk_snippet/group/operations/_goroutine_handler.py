import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import goroutine_handler

result, error = goroutine_handler(
    x_additional_headers=x_additional_headers,
)
