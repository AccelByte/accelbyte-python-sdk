import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_my_private_custom_attributes_info
from accelbyte_py_sdk.api.basic.models import ErrorEntity

result, error = get_my_private_custom_attributes_info(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
