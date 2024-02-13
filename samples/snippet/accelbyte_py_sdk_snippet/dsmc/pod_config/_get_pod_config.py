import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_pod_config
from accelbyte_py_sdk.api.dsmc.models import ModelsPodConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_pod_config(
    name=name,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
