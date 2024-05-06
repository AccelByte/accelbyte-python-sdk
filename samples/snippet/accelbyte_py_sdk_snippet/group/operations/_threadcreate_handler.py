import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import threadcreate_handler

result, error = threadcreate_handler(
    x_additional_headers=x_additional_headers,
)
