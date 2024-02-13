import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import delete_pod_config
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = delete_pod_config(
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
