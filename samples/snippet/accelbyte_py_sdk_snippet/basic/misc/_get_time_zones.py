import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_time_zones
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

result, error = get_time_zones(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
