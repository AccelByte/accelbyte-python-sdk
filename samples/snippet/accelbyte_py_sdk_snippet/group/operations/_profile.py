import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.group import profile

result, error = profile(
    x_additional_headers=x_additional_headers,
)
