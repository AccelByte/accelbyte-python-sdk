import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import export_config_v1
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = export_config_v1(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
