import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.dsmc import get_config
from accelbyte_py_sdk.api.dsmc.models import ModelsDSMConfigRecord
from accelbyte_py_sdk.api.dsmc.models import ResponseError

result, error = get_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
