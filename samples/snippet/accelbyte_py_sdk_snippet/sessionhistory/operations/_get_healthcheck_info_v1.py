import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.sessionhistory import get_healthcheck_info_v1

result, error = get_healthcheck_info_v1(
    x_additional_headers=x_additional_headers,
)
