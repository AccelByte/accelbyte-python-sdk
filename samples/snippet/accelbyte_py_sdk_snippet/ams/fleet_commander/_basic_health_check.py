import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import basic_health_check

result, error = basic_health_check(
    x_additional_headers=x_additional_headers,
)
