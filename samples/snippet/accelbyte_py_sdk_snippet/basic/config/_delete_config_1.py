import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import delete_config_1
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = delete_config_1(
    config_key=config_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
