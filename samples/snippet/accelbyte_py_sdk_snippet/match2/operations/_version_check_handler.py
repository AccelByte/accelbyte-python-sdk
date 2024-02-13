import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.match2 import version_check_handler

result, error = version_check_handler(
    x_additional_headers=x_additional_headers,
)
