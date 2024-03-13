import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"tpnYjkGnh6OoHeSv": {}, "kryyS9fZkU13xtOL": {}, "WTrhPPqQstWhML3C": {}}'
"""

result, error = update_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
