import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import func1

result, error = func1(
    x_additional_headers=x_additional_headers,
)
