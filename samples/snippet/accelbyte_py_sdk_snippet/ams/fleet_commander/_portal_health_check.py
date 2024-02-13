import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import portal_health_check

result, error = portal_health_check(
    x_additional_headers=x_additional_headers,
)
