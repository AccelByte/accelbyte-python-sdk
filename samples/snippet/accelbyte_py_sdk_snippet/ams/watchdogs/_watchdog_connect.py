import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.ams import watchdog_connect

result, error = watchdog_connect(
    watchdog_id=watchdog_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
