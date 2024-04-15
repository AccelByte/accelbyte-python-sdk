import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.basic import update_custom_attributes_partially
from accelbyte_py_sdk.api.basic.models import ErrorEntity
from accelbyte_py_sdk.api.basic.models import ValidationErrorEntity

"""
body:
Definition: Dict[str, Any]

Example: '{"r0xw26pA0hETJ5rh": {}, "UoTDDnoVrQEie8UY": {}, "Xuq7Xw7JBNRk1K4y": {}}'
"""

result, error = update_custom_attributes_partially(
    user_id=user_id,
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
