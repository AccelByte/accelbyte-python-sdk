import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"JhHNj3LBdG9Zc8oI": {}, "d7P6YRmlNDysKktc": {}, "MIZ5s9TqLshlq6mu": {}}'
"""

result, error = update_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
