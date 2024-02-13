import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.matchmaking import handler_v3_healthz

result, error = handler_v3_healthz(
    x_additional_headers=x_additional_headers,
)
