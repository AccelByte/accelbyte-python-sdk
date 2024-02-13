import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import get_custom_attributes_info
from accelbyte_py_sdk.api.basic.models import ErrorEntity

result, error = get_custom_attributes_info(
    user_id=user_id,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
