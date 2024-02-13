import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_publisher_config
from accelbyte_py_sdk.api.basic.models import ConfigInfo
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_publisher_config(
    config_key=config_key,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
