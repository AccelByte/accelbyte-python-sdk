import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.platform import export_rewards

result, error = export_rewards(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
