import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_config
from accelbyte_py_sdk.api.basic.models import Equ8Config
from accelbyte_py_sdk.api.basic.models import ErrorEntity

result, error = get_config(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
