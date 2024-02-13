import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.session import get_healthcheck_info

result, error = get_healthcheck_info(
    x_additional_headers=x_additional_headers,
)
